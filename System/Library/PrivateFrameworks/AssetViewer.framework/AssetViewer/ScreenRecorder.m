@interface ScreenRecorder
- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation ScreenRecorder

- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = v8[2];
  v10 = a3;
  v11 = a4;
  v12 = self;
  v9(v8, 7);
  _Block_release(v8);
}

@end