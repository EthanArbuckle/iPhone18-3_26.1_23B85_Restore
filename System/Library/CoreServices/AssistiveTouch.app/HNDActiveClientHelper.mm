@interface HNDActiveClientHelper
- (HNDActiveClientHelper)init;
@end

@implementation HNDActiveClientHelper

- (HNDActiveClientHelper)init
{
  v9.receiver = self;
  v9.super_class = HNDActiveClientHelper;
  v2 = [(HNDActiveClientHelper *)&v9 init];
  if (v2)
  {
    v3 = [AXAssertionCoordinator alloc];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 initWithIdentifier:v5 delegate:v2];
    assertionCoordinator = v2->_assertionCoordinator;
    v2->_assertionCoordinator = v6;

    v2->_hasActiveClients = 0;
  }

  return v2;
}

@end