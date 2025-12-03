@interface AMSSyncAccountFlagsResult
- (AMSSyncAccountFlagsResult)initWithAccountFlags:(id)flags;
@end

@implementation AMSSyncAccountFlagsResult

- (AMSSyncAccountFlagsResult)initWithAccountFlags:(id)flags
{
  flagsCopy = flags;
  v9.receiver = self;
  v9.super_class = AMSSyncAccountFlagsResult;
  v6 = [(AMSSyncAccountFlagsResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountFlags, flags);
  }

  return v7;
}

@end