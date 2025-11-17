-- create view calendar----
-----------------------
create view gold.calendar
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awsyogidatalake.dfs.core.windows.net/silver/AdventureWorks_calendar/',
    FORMAT = 'PARQUET'
) AS query2;

create view gold.Territories
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awsyogidatalake.dfs.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
) AS query2;


create view gold.customers
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awsyogidatalake.dfs.core.windows.net/silver/AdventureWorks_customers/',
    FORMAT = 'PARQUET'
) AS query2;


create view gold.returns
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awsyogidatalake.dfs.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
) AS query2;



create view gold.sales
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awsyogidatalake.dfs.core.windows.net/silver/AdventureWorks_Sales_2015/',
    FORMAT = 'PARQUET'
) AS query2;

create view gold.SubCategories
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awsyogidatalake.dfs.core.windows.net/silver/AdventureWorks_SubCategories/',
    FORMAT = 'PARQUET'
) AS query2;

create view gold.Products
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awsyogidatalake.dfs.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
) AS query2;