@interface AMSPurchaseQueueConfiguration
- (AMSPurchaseQueueConfiguration)initWithBag:(id)bag;
@end

@implementation AMSPurchaseQueueConfiguration

- (AMSPurchaseQueueConfiguration)initWithBag:(id)bag
{
  bagCopy = bag;
  v11.receiver = self;
  v11.super_class = AMSPurchaseQueueConfiguration;
  v6 = [(AMSPurchaseQueueConfiguration *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bag, bag);
    v8 = objc_opt_class();
    purchaseTaskClass = v7->_purchaseTaskClass;
    v7->_purchaseTaskClass = v8;
  }

  return v7;
}

@end