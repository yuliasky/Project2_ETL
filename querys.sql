drop table peru_death_cholera;
drop table peru_infant_death_rate;
drop table peru_under5_mortality_female;
drop table peru_under5_mortality_male;
drop table peru_under5_mortality_both;
drop table peru_life_years_female;
drop table peru_life_years_male;
drop table peru_life_years_both;
drop table peru_population;
drop table peru_growth_pob;
drop table peru_mort_female;
drop table peru_mort_male;
drop table peru_gni;
drop table peru_inflation;
drop table peru_urban_pop;


-- Create Tables
CREATE TABLE peru_death_cholera (
  id INT PRIMARY KEY,
  Code TEXT,
  Description TEXT,
  Year INT,
  Country_Code TEXT,
  Value Float
);

CREATE TABLE peru_infant_death_rate (
  id INT PRIMARY KEY,
  Sexo TEXT,
  Code TEXT,
  Description TEXT,
  Year INT,
  Country_Code TEXT,
  Value Float
);

CREATE TABLE peru_under5_mortality_female (
  id INT PRIMARY KEY,
  Sexo TEXT,
  Code TEXT,
  Description TEXT,
  Year INT,
  Country_Code TEXT,
  Value Float
);

CREATE TABLE peru_under5_mortality_male (
  id INT PRIMARY KEY,
  Sexo TEXT,
  Code TEXT,
  Description TEXT,
  Year INT,
  Country_Code TEXT,
  Value Float
);

CREATE TABLE peru_under5_mortality_both (
  id INT PRIMARY KEY,
  Sexo TEXT,
  Code TEXT,
  Description TEXT,
  Year INT,
  Country_Code TEXT,
  Value Float
);

CREATE TABLE peru_life_years_female (
  id INT PRIMARY KEY,
  Sexo TEXT,
  Code TEXT,
  Description TEXT,
  Year INT,
  Country_Code TEXT,
  Value Float
);

CREATE TABLE peru_life_years_male (
  id INT PRIMARY KEY,
  Sexo TEXT,
  Code TEXT,
  Description TEXT,
  Year INT,
  Country_Code TEXT,
  Value Float
);

CREATE TABLE peru_life_years_both (
  id INT PRIMARY KEY,
  Sexo TEXT,
  Code TEXT,
  Description TEXT,
  Year INT,
  Country_Code TEXT,
  Value Float
);

CREATE TABLE peru_population (
  id INT PRIMARY KEY,
  Country_name TEXT,
  Country_Code TEXT,
  Description TEXT,
  Year INT,
  Code TEXT,
  Value Float
);

CREATE TABLE peru_growth_pob (
  id INT PRIMARY KEY,
  Country_name TEXT,
  Country_Code TEXT,
  Description TEXT,
  Year INT,
  Code TEXT,
  Value Float
);

CREATE TABLE peru_mort_female (
  id INT PRIMARY KEY,
  Country_name TEXT,
  Country_Code TEXT,
  Description TEXT,
  Year INT,
  Code TEXT,
  Value Float
);

CREATE TABLE peru_mort_male (
  id INT PRIMARY KEY,
  Country_name TEXT,
  Country_Code TEXT,
  Description TEXT,
  Year INT,
  Code TEXT,
  Value Float
);

CREATE TABLE peru_gni (
  id INT PRIMARY KEY,
  Country_name TEXT,
  Country_Code TEXT,
  Description TEXT,
  Year INT,
  Code TEXT,
  Value Float
);

CREATE TABLE peru_inflation (
  id INT PRIMARY KEY,
  Country_name TEXT,
  Country_Code TEXT,
  Description TEXT,
  Year INT,
  Code TEXT,
  Value Float
);

CREATE TABLE peru_urban_pop (
  id INT PRIMARY KEY,
  Country_name TEXT,
  Country_Code TEXT,
  Description TEXT,
  Year INT,
  Code TEXT,
  Value Float
);


-- Join tables Peru Infant Death Rate and Population
SELECT peru_infant_death_rate.year, peru_infant_death_rate.value as Infant_death_rate, peru_population.value as Population
FROM peru_infant_death_rate
INNER JOIN peru_population
ON peru_infant_death_rate.Year = peru_population.Year;

-- Join tables death_cholera and Peru Infant Death Rate
SELECT peru_death_cholera.year, peru_death_cholera.value as Cholera, peru_infant_death_rate.value as Infanth_Date_Rate
FROM peru_death_cholera
INNER JOIN peru_infant_death_rate
ON peru_death_cholera.Year = peru_infant_death_rate.Year;

-- Join tables Peru Inflation and GNI
SELECT peru_gni.year, peru_gni .value as GNI, peru_inflation.value as Inflation
FROM peru_gni
INNER JOIN peru_inflation
ON peru_gni.Year = peru_inflation.Year;