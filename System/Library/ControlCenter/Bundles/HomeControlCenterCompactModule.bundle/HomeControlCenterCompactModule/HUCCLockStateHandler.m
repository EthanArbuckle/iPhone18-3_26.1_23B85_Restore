@interface HUCCLockStateHandler
- (BOOL)_isAccessAllowedForCurrentLockState;
- (BOOL)isDeviceUnlocked;
- (HUCCLockStateHandler)initWithDelegate:(id)a3;
- (HUCCLockStateHandlerDelegate)delegate;
- (void)_registerKeybagLockStatusNotifications;
- (void)_unregisterKeybagLockStatusNotifications;
- (void)_updateAccessAllowedForLockState;
- (void)dealloc;
@end

@implementation HUCCLockStateHandler

- (HUCCLockStateHandler)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HUCCLockStateHandler;
  v5 = [(HUCCLockStateHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v6->_keybagLockStatusNotifyToken = -1;
    [(HUCCLockStateHandler *)v6 _registerKeybagLockStatusNotifications];
  }

  return v6;
}

- (void)dealloc
{
  [(HUCCLockStateHandler *)self _unregisterKeybagLockStatusNotifications];
  v3.receiver = self;
  v3.super_class = HUCCLockStateHandler;
  [(HUCCLockStateHandler *)&v3 dealloc];
}

- (BOOL)isDeviceUnlocked
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_29C988000, v2, OS_LOG_TYPE_DEFAULT, "Checking if device is unlocked", v8, 2u);
  }

  v3 = MKBGetDeviceLockState();
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&dword_29C988000, v4, OS_LOG_TYPE_DEFAULT, "Lock state is %d", v8, 8u);
  }

  if (v3)
  {
    v5 = v3 == 3;
  }

  else
  {
    v5 = 1;
  }

  result = v5;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (BOOL)_isAccessAllowedForCurrentLockState
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C988000, v3, OS_LOG_TYPE_DEFAULT, "Checking if access is allowed for current lock state", buf, 2u);
  }

  v4 = [MEMORY[0x29EDC5390] sharedDispatcher];
  v5 = [v4 homeManager];
  v6 = [v5 isAccessAllowedWhenLocked];

  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *v11 = 0;
      _os_log_impl(&dword_29C988000, v7, OS_LOG_TYPE_DEFAULT, "Home manager doesn't care about lock state, returning YES", v11, 2u);
    }

    return 1;
  }

  else
  {
    if (v8)
    {
      *v10 = 0;
      _os_log_impl(&dword_29C988000, v7, OS_LOG_TYPE_DEFAULT, "Home manager does care, checking lock state", v10, 2u);
    }

    return [(HUCCLockStateHandler *)self isDeviceUnlocked];
  }
}

- (void)_registerKeybagLockStatusNotifications
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_29C988000, v3, OS_LOG_TYPE_DEFAULT, "Registering for lock state notifications", buf, 2u);
  }

  if ([(HUCCLockStateHandler *)self keybagLockStatusNotifyToken]== -1)
  {
    objc_initWeak(buf, self);
    v4 = *MEMORY[0x29EDC5D48];
    v5 = MEMORY[0x29EDCA578];
    v6 = MEMORY[0x29EDCA578];
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 3221225472;
    handler[2] = sub_29C98B5D8;
    handler[3] = &unk_29F339B98;
    objc_copyWeak(&v8, buf);
    notify_register_dispatch(v4, &self->_keybagLockStatusNotifyToken, v5, handler);

    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

- (void)_unregisterKeybagLockStatusNotifications
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_29C988000, v3, OS_LOG_TYPE_DEFAULT, "Unregistering lock state notifications", v4, 2u);
  }

  if ([(HUCCLockStateHandler *)self keybagLockStatusNotifyToken]!= -1)
  {
    notify_cancel([(HUCCLockStateHandler *)self keybagLockStatusNotifyToken]);
    [(HUCCLockStateHandler *)self setKeybagLockStatusNotifyToken:0xFFFFFFFFLL];
  }
}

- (void)_updateAccessAllowedForLockState
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = [(HUCCLockStateHandler *)self _isAccessAllowedForCurrentLockState];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_29C988000, v4, OS_LOG_TYPE_DEFAULT, "Access allowed for current lock state is %d, updating delegate", v7, 8u);
  }

  v5 = [(HUCCLockStateHandler *)self delegate];
  [v5 lockStateWasUpdated:v3];

  v6 = *MEMORY[0x29EDCA608];
}

- (HUCCLockStateHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end