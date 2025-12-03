@interface AMSUIPurchaseQueueConfiguration
- (AMSUIPurchaseQueueConfiguration)initWithBag:(id)bag;
@end

@implementation AMSUIPurchaseQueueConfiguration

- (AMSUIPurchaseQueueConfiguration)initWithBag:(id)bag
{
  v5.receiver = self;
  v5.super_class = AMSUIPurchaseQueueConfiguration;
  v3 = [(AMSPurchaseQueueConfiguration *)&v5 initWithBag:bag];
  if (v3)
  {
    [(AMSPurchaseQueueConfiguration *)v3 setPurchaseTaskClass:objc_opt_class()];
  }

  return v3;
}

@end