@interface FRFeldsparContext
- (FCBundleSubscriptionManagerType)bundleSubscriptionManager;
- (FCNotificationsConfiguration)notificationsConfiguration;
- (FCPrivateChannelMembershipController)privateChannelMembershipController;
- (FCSubscriptionController)subscriptionController;
- (FCSubscriptionList)subscriptionList;
@end

@implementation FRFeldsparContext

- (FCSubscriptionController)subscriptionController
{
  v2 = [(FRFeldsparContext *)self cloudContext];
  v3 = [v2 subscriptionController];

  return v3;
}

- (FCSubscriptionList)subscriptionList
{
  v2 = [(FRFeldsparContext *)self cloudContext];
  v3 = [v2 subscriptionList];

  return v3;
}

- (FCPrivateChannelMembershipController)privateChannelMembershipController
{
  v2 = [(FRFeldsparContext *)self cloudContext];
  v3 = [v2 privateChannelMembershipController];

  return v3;
}

- (FCNotificationsConfiguration)notificationsConfiguration
{
  v2 = [(FRFeldsparContext *)self cloudContext];
  v3 = [v2 appConfigurationManager];
  v4 = [v3 possiblyUnfetchedAppConfiguration];
  v5 = [v4 notificationsConfig];

  return v5;
}

- (FCBundleSubscriptionManagerType)bundleSubscriptionManager
{
  v2 = [(FRFeldsparContext *)self cloudContext];
  v3 = [v2 bundleSubscriptionManager];

  return v3;
}

@end