@interface AEConcreteSystemNotificationPrimitives
- (void)postSystemNotificationWithName:(id)a3;
@end

@implementation AEConcreteSystemNotificationPrimitives

- (void)postSystemNotificationWithName:(id)a3
{
  name = a3;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
}

@end