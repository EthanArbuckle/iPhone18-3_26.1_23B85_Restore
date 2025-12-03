@interface AXSBLockScreenManager
- (void)_authenticationStateChanged:(id)changed;
@end

@implementation AXSBLockScreenManager

- (void)_authenticationStateChanged:(id)changed
{
  v4.receiver = self;
  v4.super_class = AXSBLockScreenManager;
  [(AXSBLockScreenManager *)&v4 _authenticationStateChanged:changed];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277D81C60], 0, 0, 1u);
}

@end