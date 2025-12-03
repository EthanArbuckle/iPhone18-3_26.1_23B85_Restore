@interface SubscriptionCenter
- (void)effectiveSettingsChangedForGroups:(id)groups;
@end

@implementation SubscriptionCenter

- (void)effectiveSettingsChangedForGroups:(id)groups
{
  groupsCopy = groups;

  sub_20E4669DC();
}

@end