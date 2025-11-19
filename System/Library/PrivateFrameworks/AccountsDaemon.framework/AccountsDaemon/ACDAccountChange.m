@interface ACDAccountChange
- (ACDAccountChange)initWithChangeType:(int)a3 account:(id)a4 oldAccount:(id)a5;
@end

@implementation ACDAccountChange

- (ACDAccountChange)initWithChangeType:(int)a3 account:(id)a4 oldAccount:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ACDAccountChange;
  v11 = [(ACDAccountChange *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_changeType = a3;
    objc_storeStrong(&v11->_account, a4);
    objc_storeStrong(&v12->_oldAccount, a5);
  }

  return v12;
}

@end