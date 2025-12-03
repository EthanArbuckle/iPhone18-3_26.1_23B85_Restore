@interface AMSAccountsChangedResult
- (AMSAccountsChangedResult)initWithAccount:(id)account;
- (NSString)hashedDescription;
@end

@implementation AMSAccountsChangedResult

- (AMSAccountsChangedResult)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = AMSAccountsChangedResult;
  v6 = [(AMSAccountsChangedResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (NSString)hashedDescription
{
  account = [(AMSAccountsChangedResult *)self account];
  hashedDescription = [account hashedDescription];

  return hashedDescription;
}

@end