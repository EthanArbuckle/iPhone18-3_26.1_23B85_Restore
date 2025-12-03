@interface NSURLSessionTaskTransactionMetrics
+ (id)_dateIntervalFrom:(id)from to:(id)to;
- (NSDateInterval)lib_connectInterval;
- (NSDateInterval)lib_domainLookupInterval;
- (NSDateInterval)lib_requestInterval;
- (NSDateInterval)lib_responseInterval;
- (NSDateInterval)lib_secureConnectionInterval;
@end

@implementation NSURLSessionTaskTransactionMetrics

- (NSDateInterval)lib_connectInterval
{
  connectStartDate = [(NSURLSessionTaskTransactionMetrics *)self connectStartDate];
  connectEndDate = [(NSURLSessionTaskTransactionMetrics *)self connectEndDate];
  v5 = [NSURLSessionTaskTransactionMetrics _dateIntervalFrom:connectStartDate to:connectEndDate];

  return v5;
}

- (NSDateInterval)lib_domainLookupInterval
{
  domainLookupStartDate = [(NSURLSessionTaskTransactionMetrics *)self domainLookupStartDate];
  domainLookupEndDate = [(NSURLSessionTaskTransactionMetrics *)self domainLookupEndDate];
  v5 = [NSURLSessionTaskTransactionMetrics _dateIntervalFrom:domainLookupStartDate to:domainLookupEndDate];

  return v5;
}

- (NSDateInterval)lib_requestInterval
{
  requestStartDate = [(NSURLSessionTaskTransactionMetrics *)self requestStartDate];
  requestEndDate = [(NSURLSessionTaskTransactionMetrics *)self requestEndDate];
  v5 = [NSURLSessionTaskTransactionMetrics _dateIntervalFrom:requestStartDate to:requestEndDate];

  return v5;
}

- (NSDateInterval)lib_responseInterval
{
  responseStartDate = [(NSURLSessionTaskTransactionMetrics *)self responseStartDate];
  responseEndDate = [(NSURLSessionTaskTransactionMetrics *)self responseEndDate];
  v5 = [NSURLSessionTaskTransactionMetrics _dateIntervalFrom:responseStartDate to:responseEndDate];

  return v5;
}

- (NSDateInterval)lib_secureConnectionInterval
{
  secureConnectionStartDate = [(NSURLSessionTaskTransactionMetrics *)self secureConnectionStartDate];
  secureConnectionEndDate = [(NSURLSessionTaskTransactionMetrics *)self secureConnectionEndDate];
  v5 = [NSURLSessionTaskTransactionMetrics _dateIntervalFrom:secureConnectionStartDate to:secureConnectionEndDate];

  return v5;
}

+ (id)_dateIntervalFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v7 = toCopy;
  v8 = 0;
  if (fromCopy && toCopy)
  {
    [toCopy timeIntervalSinceDate:fromCopy];
    if (v9 >= 2.22044605e-16)
    {
      v8 = [[NSDateInterval alloc] initWithStartDate:fromCopy duration:v9];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end