@interface UserNotificationMonitor
- (void)userNotificationCenter:(id)center openSettingsForNotification:(id)notification;
@end

@implementation UserNotificationMonitor

- (void)userNotificationCenter:(id)center openSettingsForNotification:(id)notification
{
  centerCopy = center;
  notificationCopy = notification;
  selfCopy = self;
  UserNotificationMonitor.userNotificationCenter(_:openSettingsFor:)(selfCopy, v10);
}

@end