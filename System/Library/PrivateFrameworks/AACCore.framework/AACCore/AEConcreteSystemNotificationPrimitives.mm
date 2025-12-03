@interface AEConcreteSystemNotificationPrimitives
- (void)postSystemNotificationWithName:(id)name;
@end

@implementation AEConcreteSystemNotificationPrimitives

- (void)postSystemNotificationWithName:(id)name
{
  name = name;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
}

@end