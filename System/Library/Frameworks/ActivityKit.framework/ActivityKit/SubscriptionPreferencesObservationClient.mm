@interface SubscriptionPreferencesObservationClient
- (void)subscriptionPreferencesDidChange:(id)change;
@end

@implementation SubscriptionPreferencesObservationClient

- (void)subscriptionPreferencesDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v5 = sub_1A2D07F44();
  v7 = v6;

  SubscriptionPreferencesObservationClient.subscriptionPreferencesDidChange(_:)();
  sub_1A2C55840(v5, v7);
}

@end