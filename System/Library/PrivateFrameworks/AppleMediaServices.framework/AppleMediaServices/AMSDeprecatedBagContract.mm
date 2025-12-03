@interface AMSDeprecatedBagContract
- (AMSDeprecatedBagContract)initWithBag:(id)bag;
@end

@implementation AMSDeprecatedBagContract

- (AMSDeprecatedBagContract)initWithBag:(id)bag
{
  bagCopy = bag;
  v9.receiver = self;
  v9.super_class = AMSDeprecatedBagContract;
  v6 = [(AMSDeprecatedBagContract *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bag, bag);
  }

  return v7;
}

@end