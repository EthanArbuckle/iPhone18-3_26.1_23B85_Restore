@interface SHLCloudBackedSubscription
- (SHLCloudBackedSubscription)initWithSubscription:(id)subscription;
@end

@implementation SHLCloudBackedSubscription

- (SHLCloudBackedSubscription)initWithSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v9.receiver = self;
  v9.super_class = SHLCloudBackedSubscription;
  v6 = [(SHLCloudBackedSubscription *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscription, subscription);
  }

  return v7;
}

@end