@interface AMSSyncAccountFlagsResult
- (AMSSyncAccountFlagsResult)initWithAccountFlags:(id)a3;
@end

@implementation AMSSyncAccountFlagsResult

- (AMSSyncAccountFlagsResult)initWithAccountFlags:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSSyncAccountFlagsResult;
  v6 = [(AMSSyncAccountFlagsResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountFlags, a3);
  }

  return v7;
}

@end