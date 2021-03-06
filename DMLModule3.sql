-- DML

--MODULE 4 PROBLEMS
 
-- 1
SELECT CUSTNO,CUSTNAME,PHONE,CITY
	FROM CUSTOMER;

--2
SELECT CUSTNO, CUSTNAME, PHONE, CITY
	FROM CUSTOMER
	WHERE STATE = 'CO';

--3
SELECT * FROM EVENTREQUEST
	WHERE ESTCOST > 4000
	GROUP BY ESTCOST
	ORDER BY DATEHELD;

--4
SELECT EVENTNO, DATEHELD, ESTAUDIENCE
	FROM EVENTREQUEST
	WHERE (ESTAUDIENCE > 9000 AND STATUS = 'Approved' )
	 	    OR
	 	  (ESTAUDIENCE > 7000 AND STATUS = 'Pending');

--5
SELECT EVENTNO, DATEHELD, CUSTOMER.CUSTNO, CUSTNAME
	FROM CUSTOMER, EVENTREQUEST
	WHERE CITY = 'Boulder' AND
		DATEHELD BETWEEN '2013-12-01' AND '2013-12-31'
		AND CUSTOMER.CUSTNO = EVENTREQUEST.CUSTNO;

--6
SELECT PLANNO, AVG(NUMBERFLD) AS NEWAVGRESOURE
	FROM EVENTPLANLINE
	WHERE LOCNO = 'L100'
	GROUP BY PLANNO;

--7
SELECT PLANNO, AVG(NUMBERFLD) AS NEWAVGRESOURE, COUNT(*) AS NEWEVENTLINES
	FROM EVENTPLANLINE
	WHERE LOCNO = 'L100'
	GROUP BY PLANNO
	HAVING COUNT(*) > 1;





