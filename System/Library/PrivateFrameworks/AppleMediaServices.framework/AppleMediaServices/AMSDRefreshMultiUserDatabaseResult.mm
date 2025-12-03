@interface AMSDRefreshMultiUserDatabaseResult
- (AMSDRefreshMultiUserDatabaseResult)initWithErrors:(id)errors;
@end

@implementation AMSDRefreshMultiUserDatabaseResult

- (AMSDRefreshMultiUserDatabaseResult)initWithErrors:(id)errors
{
  errorsCopy = errors;
  v9.receiver = self;
  v9.super_class = AMSDRefreshMultiUserDatabaseResult;
  v6 = [(AMSDRefreshMultiUserDatabaseResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_errors, errors);
  }

  return v7;
}

@end