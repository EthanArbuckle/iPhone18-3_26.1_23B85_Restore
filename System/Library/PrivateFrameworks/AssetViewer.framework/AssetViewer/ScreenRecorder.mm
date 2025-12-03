@interface ScreenRecorder
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
@end

@implementation ScreenRecorder

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = v8[2];
  centerCopy = center;
  notificationCopy = notification;
  selfCopy = self;
  v9(v8, 7);
  _Block_release(v8);
}

@end