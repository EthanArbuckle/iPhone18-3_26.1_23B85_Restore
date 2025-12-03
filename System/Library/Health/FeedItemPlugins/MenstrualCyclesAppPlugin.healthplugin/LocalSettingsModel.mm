@interface LocalSettingsModel
- (void)settingsManagerDidUpdateNotificationSettings:(id)settings;
@end

@implementation LocalSettingsModel

- (void)settingsManagerDidUpdateNotificationSettings:(id)settings
{
  swift_getObjectType();
  sub_29E08C81C();
  selfCopy = self;
  sub_29E2C1084();
  sub_29E2C1124();
}

@end