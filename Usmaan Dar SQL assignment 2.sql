

# considering what information lies in all the tables

select *
from city;

select *
from country;

select *
from countrylanguage;

# Task 1: using the count function to identify total cities in the USA = 274

select count(name), CountryCode
from city
where CountryCode="USA";

# Task 2: population and life expectancy for people in Argentina

select Name, Population, LifeExpectancy
from country
where Name="Argentina";

#task 3: Which country has the highest life expectancy? using order by and limit functions 

select Name, Population, LifeExpectancy, GNP
from country
where LifeExpectancy is not null
order by LifeExpectancy desc
limit 5;

#task 4: 25 cities around the world that start with the letter 'F'

select Name, CountryCode
from city
where Name like "F%"
order by Name
limit 25;

#task 5: to display columns Id, Name, Population from the city table and limit results to first 10 rows only.

select Id, Name, Population
from city
limit 10;

#task 6: cities from city table whose population is larger than 2000000

select Name, CountryCode, Population
from city
where population >= 2000000
order by Population desc;

#task 7: city names from city table whose name begins with “Be” prefix.

select Name, CountryCode
from city
where Name like "Be%";

#task 8: cities from city table whose population is between 500000-1000000

select Name, CountryCode, Population
from city
where Population between 500000 and 1000000;

#task 9: city with the lowest population in the city table

select min(Population) as "smallest population"
from city;

#task 10: Capital of Spain

select city.Name as Capital, country.Name as Country, country.Capital as Code, country. Region, country.Continent
from country
inner join city on country.Capital=city.ID
where country.Name="Spain";

# task 11: list all the languages spoken in the Caribbean region

select countrylanguage.Language, countrylanguage.Percentage, country.Name, country.Region
from countrylanguage
inner join country on country.Code=countrylanguage.CountryCode
where Region="Caribbean";

#task 12: all cities from the Europe continent

select city.Name as City, country.Name as Country, country.Continent
from country
inner join city on country.code=city.CountryCode
where Continent="Europe";