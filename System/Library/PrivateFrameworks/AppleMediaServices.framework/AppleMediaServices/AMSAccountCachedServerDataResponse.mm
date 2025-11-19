@interface AMSAccountCachedServerDataResponse
- (AMSAccountCachedServerDataResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSAccountCachedServerDataResponse

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSAccountCachedServerDataResponse *)self allAccountResults];
  [v4 encodeObject:v5 forKey:@"kAllAccountData"];
}

- (AMSAccountCachedServerDataResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AMSAccountCachedServerDataResponse;
  v5 = [(AMSAccountCachedServerDataResponse *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"kAllAccountData"];
    allAccountResults = v5->_allAccountResults;
    v5->_allAccountResults = v7;
  }

  return v5;
}

@end