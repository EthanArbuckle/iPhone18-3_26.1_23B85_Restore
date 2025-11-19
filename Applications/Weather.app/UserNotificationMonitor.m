@interface UserNotificationMonitor
- (void)userNotificationCenter:(id)a3 openSettingsForNotification:(id)a4;
@end

@implementation UserNotificationMonitor

- (void)userNotificationCenter:(id)a3 openSettingsForNotification:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  UserNotificationMonitor.userNotificationCenter(_:openSettingsFor:)(v8, v10);
}

@end