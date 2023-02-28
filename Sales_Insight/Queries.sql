# Show transaction in 2020
-- SELECT transactions.*, sales.date.* 
-- FROM sales.transactions 
-- INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
-- where sales.date.year=2020;

# Total Revenue in 2020
SELECT SUM(transactions.sales_amount), sales.transactions.currency
FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
where sales.date.year=2020 and sales.transactions.currency="INR" or sales.transactions.currency="USD"
GROUP BY sales.transactions.currency;

