@interface NSURLSessionTaskTransactionMetrics
+ (id)_dateIntervalFrom:(id)a3 to:(id)a4;
- (NSDateInterval)lib_connectInterval;
- (NSDateInterval)lib_domainLookupInterval;
- (NSDateInterval)lib_requestInterval;
- (NSDateInterval)lib_responseInterval;
- (NSDateInterval)lib_secureConnectionInterval;
@end

@implementation NSURLSessionTaskTransactionMetrics

- (NSDateInterval)lib_connectInterval
{
  v3 = [(NSURLSessionTaskTransactionMetrics *)self connectStartDate];
  v4 = [(NSURLSessionTaskTransactionMetrics *)self connectEndDate];
  v5 = [NSURLSessionTaskTransactionMetrics _dateIntervalFrom:v3 to:v4];

  return v5;
}

- (NSDateInterval)lib_domainLookupInterval
{
  v3 = [(NSURLSessionTaskTransactionMetrics *)self domainLookupStartDate];
  v4 = [(NSURLSessionTaskTransactionMetrics *)self domainLookupEndDate];
  v5 = [NSURLSessionTaskTransactionMetrics _dateIntervalFrom:v3 to:v4];

  return v5;
}

- (NSDateInterval)lib_requestInterval
{
  v3 = [(NSURLSessionTaskTransactionMetrics *)self requestStartDate];
  v4 = [(NSURLSessionTaskTransactionMetrics *)self requestEndDate];
  v5 = [NSURLSessionTaskTransactionMetrics _dateIntervalFrom:v3 to:v4];

  return v5;
}

- (NSDateInterval)lib_responseInterval
{
  v3 = [(NSURLSessionTaskTransactionMetrics *)self responseStartDate];
  v4 = [(NSURLSessionTaskTransactionMetrics *)self responseEndDate];
  v5 = [NSURLSessionTaskTransactionMetrics _dateIntervalFrom:v3 to:v4];

  return v5;
}

- (NSDateInterval)lib_secureConnectionInterval
{
  v3 = [(NSURLSessionTaskTransactionMetrics *)self secureConnectionStartDate];
  v4 = [(NSURLSessionTaskTransactionMetrics *)self secureConnectionEndDate];
  v5 = [NSURLSessionTaskTransactionMetrics _dateIntervalFrom:v3 to:v4];

  return v5;
}

+ (id)_dateIntervalFrom:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    [v6 timeIntervalSinceDate:v5];
    if (v9 >= 2.22044605e-16)
    {
      v8 = [[NSDateInterval alloc] initWithStartDate:v5 duration:v9];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end