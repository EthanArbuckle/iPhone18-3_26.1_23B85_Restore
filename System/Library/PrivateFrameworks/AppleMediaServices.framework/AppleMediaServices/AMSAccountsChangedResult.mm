@interface AMSAccountsChangedResult
- (AMSAccountsChangedResult)initWithAccount:(id)a3;
- (NSString)hashedDescription;
@end

@implementation AMSAccountsChangedResult

- (AMSAccountsChangedResult)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSAccountsChangedResult;
  v6 = [(AMSAccountsChangedResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

- (NSString)hashedDescription
{
  v2 = [(AMSAccountsChangedResult *)self account];
  v3 = [v2 hashedDescription];

  return v3;
}

@end