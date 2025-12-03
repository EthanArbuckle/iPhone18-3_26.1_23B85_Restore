@interface ACDAccountChange
- (ACDAccountChange)initWithChangeType:(int)type account:(id)account oldAccount:(id)oldAccount;
@end

@implementation ACDAccountChange

- (ACDAccountChange)initWithChangeType:(int)type account:(id)account oldAccount:(id)oldAccount
{
  accountCopy = account;
  oldAccountCopy = oldAccount;
  v14.receiver = self;
  v14.super_class = ACDAccountChange;
  v11 = [(ACDAccountChange *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_changeType = type;
    objc_storeStrong(&v11->_account, account);
    objc_storeStrong(&v12->_oldAccount, oldAccount);
  }

  return v12;
}

@end