@interface _ATXAppLaunchLocationGuardedData
- (void)dealloc;
@end

@implementation _ATXAppLaunchLocationGuardedData

- (void)dealloc
{
  if (self->waitForUnlockNotificationToken)
  {
    [MEMORY[0x277D42598] unregisterForLockStateChangeNotifications:?];
  }

  v3.receiver = self;
  v3.super_class = _ATXAppLaunchLocationGuardedData;
  [(_ATXAppLaunchLocationGuardedData *)&v3 dealloc];
}

@end