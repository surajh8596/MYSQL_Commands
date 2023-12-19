-- SEE AVAILABLE DATABASES
SHOW DATABASES;

-- create database
CREATE DATABASE sslc_student_markshit;

-- using created database
USE sslc_student_markshit;

USE HR;

SELECT * FROM COUNTRIES;

SELECT COUNTRY_ID, COUNTRY_NAME FROM COUNTRIES;

SELECT DISTINCT JOB_ID FROM EMPLOYEES;

USE SSLC_STUDENT_MARKSHIT;

CREATE TABLE STUDENT_INFO (
NAME VARCHAR(30),
AGE INT,
CLASS INT
);

SELECT * FROM STUDENT_INFO;

INSERT INTO  STUDENT_INFO (NAME, AGE, CLASS)
VALUES ('SURAJ', 28, 12);

SELECT * FROM STUDENT_INFO;

INSERT INTO STUDENT_INFO
VALUES ('SIYA', 12, 5), ('MIYA', 43, 16), ('JIYA', 32, 4);

SELECT * FROM STUDENT_INFO;

USE SSLC_STUDENT_MARKSHIT;
ALTER TABLE STUDENT_INFO DROP CLASS;
SELECT * FROM STUDENT_INFO;

ALTER TABLE STUDENT_INFO ADD INDEX(AGE(4));
SELECT * FROM STUDENT_INFO;
DESCRIBE STUDENT_INFO;

DELETE FROM STUDENT_INFO WHERE NAME='SURAJ';

CREATE TABLE SCHOOL_INFO (
SCHOOL_NAME VARCHAR(50),
SCHOOL_ID INT,
YEAR_INSTABLISHED DATE
);
SELECT * FROM SCHOOL_INFO;
INSERT INTO  SCHOOL_INFO
VALUES ('MLPS', 1, '1995-04-01'), ('HPMBS', 2, '1994-09-01'), ('SVS', 3, '1975-01-01');

DESCRIBE SCHOOL_INFO;

ALTER TABLE SCHOOL_INFO ADD PRIMARY KEY(SCHOOL_ID);




USE HR;

SELECT * FROM EMPLOYEES;

SELECT EMPLOYEE_ID, FIRST_NAME, HIRE_DATE, MANAGER_ID FROM EMPLOYEES WHERE MANAGER_ID IS NULL;

SELECT * FROM EMPLOYEES;

USE SSLC_STUDENT_MARKSHIT;

SELECT * FROM STUDENT_INFO;
SELECT * FROM SCHOOL_INFO;

USE HR;

SELECT FIRST_Name AS "SELECT",
LAST_Name AS "FROM"
FROM Employees
ORDER BY
Last_Name DESC;


USE HR;
SELECT EMPLOYEE_ID, FIRST_NAME FROM EMPLOYEES
JOIN
JOBS
ON EMPLOYEES.JOB_ID=JOBS.JOB_ID
WHERE JOBS.JOB_ID='AC_ACCOUNT' AND JOBS.MAX_SALARY>5000
OR JOBS.JOB_ID='FEMAD_ASSTALE' AND JOBS.MAX_SALARY>6000;

SELECT EMPLOYEE_ID, FIRST_NAME FROM EMPLOYEES
JOIN
JOBS
ON EMPLOYEES.JOB_ID=JOBS.JOB_ID
WHERE JOBS.JOB_ID='AC_ACCOUNT' AND JOBS.MAX_SALARY>5000
;

use ring;
select * from employees;