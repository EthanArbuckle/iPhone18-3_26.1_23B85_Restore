@interface AMSCloudDataFetchResult
- (AMSCloudDataFetchResult)initWithResults:(id)a3 failures:(id)a4;
- (NSString)hashedDescription;
@end

@implementation AMSCloudDataFetchResult

- (AMSCloudDataFetchResult)initWithResults:(id)a3 failures:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSCloudDataFetchResult;
  v9 = [(AMSCloudDataFetchResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_failures, a4);
    objc_storeStrong(&v10->_results, a3);
  }

  return v10;
}

- (NSString)hashedDescription
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p> {", objc_opt_class(), self];
  v4 = [(AMSCloudDataFetchResult *)self results];
  v5 = AMSHashIfNeeded();
  [v3 appendFormat:@"  results = %@, \n", v5];

  v6 = [(AMSCloudDataFetchResult *)self failures];
  v7 = AMSHashIfNeeded();
  [v3 appendFormat:@"  failures = %@, \n", v7];

  [v3 appendString:@"}"];

  return v3;
}

@end