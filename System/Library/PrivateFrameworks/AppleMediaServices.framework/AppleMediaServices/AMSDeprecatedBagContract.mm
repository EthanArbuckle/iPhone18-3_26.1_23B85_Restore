@interface AMSDeprecatedBagContract
- (AMSDeprecatedBagContract)initWithBag:(id)a3;
@end

@implementation AMSDeprecatedBagContract

- (AMSDeprecatedBagContract)initWithBag:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSDeprecatedBagContract;
  v6 = [(AMSDeprecatedBagContract *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bag, a3);
  }

  return v7;
}

@end