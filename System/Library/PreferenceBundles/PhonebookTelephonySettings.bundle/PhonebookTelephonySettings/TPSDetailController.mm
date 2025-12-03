@interface TPSDetailController
- (CTXPCServiceSubscriptionContext)subscriptionContext;
@end

@implementation TPSDetailController

- (CTXPCServiceSubscriptionContext)subscriptionContext
{
  specifier = [(TPSDetailController *)self specifier];
  tps_subscriptionContext = [specifier tps_subscriptionContext];

  return tps_subscriptionContext;
}

@end