@interface AMSAccountCachedServerDataResponse
- (AMSAccountCachedServerDataResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSAccountCachedServerDataResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  allAccountResults = [(AMSAccountCachedServerDataResponse *)self allAccountResults];
  [coderCopy encodeObject:allAccountResults forKey:@"kAllAccountData"];
}

- (AMSAccountCachedServerDataResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = AMSAccountCachedServerDataResponse;
  v5 = [(AMSAccountCachedServerDataResponse *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"kAllAccountData"];
    allAccountResults = v5->_allAccountResults;
    v5->_allAccountResults = v7;
  }

  return v5;
}

@end