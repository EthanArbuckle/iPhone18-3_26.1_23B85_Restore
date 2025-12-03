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
  cloudContext = [(FRFeldsparContext *)self cloudContext];
  subscriptionController = [cloudContext subscriptionController];

  return subscriptionController;
}

- (FCSubscriptionList)subscriptionList
{
  cloudContext = [(FRFeldsparContext *)self cloudContext];
  subscriptionList = [cloudContext subscriptionList];

  return subscriptionList;
}

- (FCPrivateChannelMembershipController)privateChannelMembershipController
{
  cloudContext = [(FRFeldsparContext *)self cloudContext];
  privateChannelMembershipController = [cloudContext privateChannelMembershipController];

  return privateChannelMembershipController;
}

- (FCNotificationsConfiguration)notificationsConfiguration
{
  cloudContext = [(FRFeldsparContext *)self cloudContext];
  appConfigurationManager = [cloudContext appConfigurationManager];
  possiblyUnfetchedAppConfiguration = [appConfigurationManager possiblyUnfetchedAppConfiguration];
  notificationsConfig = [possiblyUnfetchedAppConfiguration notificationsConfig];

  return notificationsConfig;
}

- (FCBundleSubscriptionManagerType)bundleSubscriptionManager
{
  cloudContext = [(FRFeldsparContext *)self cloudContext];
  bundleSubscriptionManager = [cloudContext bundleSubscriptionManager];

  return bundleSubscriptionManager;
}

@end