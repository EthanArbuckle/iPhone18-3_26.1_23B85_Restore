@interface AXSBLockScreenManager
- (void)_authenticationStateChanged:(id)a3;
@end

@implementation AXSBLockScreenManager

- (void)_authenticationStateChanged:(id)a3
{
  v4.receiver = self;
  v4.super_class = AXSBLockScreenManager;
  [(AXSBLockScreenManager *)&v4 _authenticationStateChanged:a3];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277D81C60], 0, 0, 1u);
}

@end