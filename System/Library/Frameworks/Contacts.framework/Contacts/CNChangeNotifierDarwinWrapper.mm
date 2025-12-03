@interface CNChangeNotifierDarwinWrapper
- (void)addObserver:(id)observer notification:(id)notification;
- (void)postNotification:(id)notification;
- (void)removeObserver:(id)observer notification:(id)notification;
@end

@implementation CNChangeNotifierDarwinWrapper

- (void)addObserver:(id)observer notification:(id)notification
{
  notificationCopy = notification;
  observer = observer;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, observer, CNChangesNotifierCFNotificationCenterCallback, notificationCopy, 0, CFNotificationSuspensionBehaviorCoalesce);
}

- (void)removeObserver:(id)observer notification:(id)notification
{
  notificationCopy = notification;
  observer = observer;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, observer, notificationCopy, 0);
}

- (void)postNotification:(id)notification
{
  name = notification;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 0);
}

@end