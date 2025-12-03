@interface AMSCloudDataFetchResult
- (AMSCloudDataFetchResult)initWithResults:(id)results failures:(id)failures;
- (NSString)hashedDescription;
@end

@implementation AMSCloudDataFetchResult

- (AMSCloudDataFetchResult)initWithResults:(id)results failures:(id)failures
{
  resultsCopy = results;
  failuresCopy = failures;
  v12.receiver = self;
  v12.super_class = AMSCloudDataFetchResult;
  v9 = [(AMSCloudDataFetchResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_failures, failures);
    objc_storeStrong(&v10->_results, results);
  }

  return v10;
}

- (NSString)hashedDescription
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p> {", objc_opt_class(), self];
  results = [(AMSCloudDataFetchResult *)self results];
  v5 = AMSHashIfNeeded();
  [v3 appendFormat:@"  results = %@, \n", v5];

  failures = [(AMSCloudDataFetchResult *)self failures];
  v7 = AMSHashIfNeeded();
  [v3 appendFormat:@"  failures = %@, \n", v7];

  [v3 appendString:@"}"];

  return v3;
}

@end