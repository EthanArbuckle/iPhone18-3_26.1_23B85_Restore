@interface HUCCLockStateHandler
- (BOOL)_isAccessAllowedForCurrentLockState;
- (BOOL)isDeviceUnlocked;
- (HUCCLockStateHandler)initWithDelegate:(id)delegate;
- (HUCCLockStateHandlerDelegate)delegate;
- (void)_registerKeybagLockStatusNotifications;
- (void)_unregisterKeybagLockStatusNotifications;
- (void)_updateAccessAllowedForLockState;
- (void)dealloc;
@end

@implementation HUCCLockStateHandler

- (HUCCLockStateHandler)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = HUCCLockStateHandler;
  v5 = [(HUCCLockStateHandler *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v6->_keybagLockStatusNotifyToken = -1;
    objc_msgSend__registerKeybagLockStatusNotifications(v6, v7, v8);
  }

  return v6;
}

- (void)dealloc
{
  objc_msgSend__unregisterKeybagLockStatusNotifications(self, a2, v2);
  v4.receiver = self;
  v4.super_class = HUCCLockStateHandler;
  [(HUCCLockStateHandler *)&v4 dealloc];
}

- (BOOL)isDeviceUnlocked
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_29C992000, v2, OS_LOG_TYPE_DEFAULT, "Checking if device is unlocked", v8, 2u);
  }

  v3 = MKBGetDeviceLockState();
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&dword_29C992000, v4, OS_LOG_TYPE_DEFAULT, "Lock state is %d", v8, 8u);
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
    _os_log_impl(&dword_29C992000, v3, OS_LOG_TYPE_DEFAULT, "Checking if access is allowed for current lock state", buf, 2u);
  }

  v6 = objc_msgSend_sharedDispatcher(MEMORY[0x29EDC5390], v4, v5);
  v9 = objc_msgSend_homeManager(v6, v7, v8);
  isAccessAllowedWhenLocked = objc_msgSend_isAccessAllowedWhenLocked(v9, v10, v11);

  v13 = HFLogForCategory();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (isAccessAllowedWhenLocked)
  {
    if (v14)
    {
      *v19 = 0;
      _os_log_impl(&dword_29C992000, v13, OS_LOG_TYPE_DEFAULT, "Home manager doesn't care about lock state, returning YES", v19, 2u);
    }

    return 1;
  }

  else
  {
    if (v14)
    {
      *v18 = 0;
      _os_log_impl(&dword_29C992000, v13, OS_LOG_TYPE_DEFAULT, "Home manager does care, checking lock state", v18, 2u);
    }

    return objc_msgSend_isDeviceUnlocked(self, v16, v17);
  }
}

- (void)_registerKeybagLockStatusNotifications
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_29C992000, v3, OS_LOG_TYPE_DEFAULT, "Registering for lock state notifications", buf, 2u);
  }

  if (objc_msgSend_keybagLockStatusNotifyToken(self, v4, v5) == -1)
  {
    objc_initWeak(buf, self);
    v6 = *MEMORY[0x29EDC5D48];
    v7 = MEMORY[0x29EDCA578];
    v8 = MEMORY[0x29EDCA578];
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 3221225472;
    handler[2] = sub_29C99B4A4;
    handler[3] = &unk_29F33AAF0;
    objc_copyWeak(&v10, buf);
    notify_register_dispatch(v6, &self->_keybagLockStatusNotifyToken, v7, handler);

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

- (void)_unregisterKeybagLockStatusNotifications
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_29C992000, v3, OS_LOG_TYPE_DEFAULT, "Unregistering lock state notifications", v10, 2u);
  }

  if (objc_msgSend_keybagLockStatusNotifyToken(self, v4, v5) != -1)
  {
    v8 = objc_msgSend_keybagLockStatusNotifyToken(self, v6, v7);
    notify_cancel(v8);
    objc_msgSend_setKeybagLockStatusNotifyToken_(self, v9, 0xFFFFFFFFLL);
  }
}

- (void)_updateAccessAllowedForLockState
{
  v12 = *MEMORY[0x29EDCA608];
  isAccessAllowedForCurrentLockState = objc_msgSend__isAccessAllowedForCurrentLockState(self, a2, v2);
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = isAccessAllowedForCurrentLockState;
    _os_log_impl(&dword_29C992000, v5, OS_LOG_TYPE_DEFAULT, "Access allowed for current lock state is %d, updating delegate", v11, 8u);
  }

  v8 = objc_msgSend_delegate(self, v6, v7);
  objc_msgSend_lockStateWasUpdated_(v8, v9, isAccessAllowedForCurrentLockState);

  v10 = *MEMORY[0x29EDCA608];
}

- (HUCCLockStateHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end