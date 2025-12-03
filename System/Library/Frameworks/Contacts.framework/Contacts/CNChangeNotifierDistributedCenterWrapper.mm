@interface CNChangeNotifierDistributedCenterWrapper
- (void)addObserver:(id)observer notification:(id)notification;
- (void)postNotification:(id)notification;
- (void)removeObserver:(id)observer notification:(id)notification;
@end

@implementation CNChangeNotifierDistributedCenterWrapper

- (void)addObserver:(id)observer notification:(id)notification
{
  notificationCopy = notification;
  observer = observer;
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterAddObserver(DistributedCenter, observer, CNChangesNotifierCFNotificationCenterCallback, notificationCopy, 0, CFNotificationSuspensionBehaviorCoalesce);
}

- (void)removeObserver:(id)observer notification:(id)notification
{
  notificationCopy = notification;
  observer = observer;
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterRemoveObserver(DistributedCenter, observer, notificationCopy, 0);
}

- (void)postNotification:(id)notification
{
  name = notification;
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterPostNotification(DistributedCenter, name, 0, 0, 0);
}

@end