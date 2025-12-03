@interface AXUISoftwareKeyboardManager
+ (id)sharedInstance;
- (AXUISoftwareKeyboardManager)init;
- (AXUISoftwareKeyboardManagerDelegate)delegate;
- (void)_updateHardwareKeyboardState;
- (void)_wst_setIsHardwareKeyboardAttached:(id)attached;
- (void)addReasonToDisableSoftwareKeyboard:(id)keyboard;
- (void)addReasonToEnableSoftwareKeyboard:(id)keyboard;
- (void)dealloc;
- (void)removeReasonToDisableSoftwareKeyboard:(id)keyboard;
- (void)removeReasonToEnableSoftwareKeyboard:(id)keyboard;
- (void)setDelegate:(id)delegate;
- (void)updateKeyboardHardwareState;
@end

@implementation AXUISoftwareKeyboardManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[AXUISoftwareKeyboardManager sharedInstance];
  }

  v3 = sharedInstance_SoftwareKeyboardManager;

  return v3;
}

uint64_t __45__AXUISoftwareKeyboardManager_sharedInstance__block_invoke()
{
  sharedInstance_SoftwareKeyboardManager = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (AXUISoftwareKeyboardManager)init
{
  v6.receiver = self;
  v6.super_class = AXUISoftwareKeyboardManager;
  v2 = [(AXUISoftwareKeyboardManager *)&v6 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69A28E0]];
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, HardwareKeyboardAvailabilityChanged, v4, 0, 0);

    [(AXUISoftwareKeyboardManager *)v2 updateKeyboardHardwareState];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = AXUISoftwareKeyboardManager;
  [(AXUISoftwareKeyboardManager *)&v4 dealloc];
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);

  [(AXUISoftwareKeyboardManager *)self updateKeyboardHardwareState];
}

- (void)updateKeyboardHardwareState
{
  delegate = [(AXUISoftwareKeyboardManager *)self delegate];
  [delegate softwareKeyboardManagerWillUpdateKeyboardState:self];
}

- (void)_wst_setIsHardwareKeyboardAttached:(id)attached
{
  v14 = *MEMORY[0x1E69E9840];
  attachedCopy = attached;
  v5 = VOTLogKeyboard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 67109376;
    bOOLValue = [attachedCopy BOOLValue];
    v12 = 1024;
    IsHardwareKeyboardAttached = GSEventIsHardwareKeyboardAttached();
    _os_log_impl(&dword_1C0DFB000, v5, OS_LOG_TYPE_INFO, "setting hardware keyboard attached state: %d [existing %d]", &v10, 0xEu);
  }

  bOOLValue2 = [attachedCopy BOOLValue];
  delegate = [(AXUISoftwareKeyboardManager *)self delegate];
  [delegate softwareKeyboardManager:self didSetHardwareKeyboardAttached:bOOLValue2];

  if (GSEventIsHardwareKeyboardAttached() != bOOLValue2)
  {
    delegate2 = [(AXUISoftwareKeyboardManager *)self delegate];
    [delegate2 softwareKeyboardManagerDidChangeHardwareKeyboardAttached:self];

    GSEventSetHardwareKeyboardAttached();
    v9 = VOTLogKeyboard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109120;
      bOOLValue = bOOLValue2;
      _os_log_impl(&dword_1C0DFB000, v9, OS_LOG_TYPE_DEFAULT, "Set hardware keyboard attached state: %d", &v10, 8u);
    }
  }
}

void __62__AXUISoftwareKeyboardManager__setIsHardwareKeyboardAttached___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  [v1 _wst_setIsHardwareKeyboardAttached:v2];
}

- (void)_updateHardwareKeyboardState
{
  if ([(NSMutableSet *)self->_reasonsToDisableSoftwareKeyboard count])
  {
    selfCopy2 = self;
    v4 = 1;
LABEL_5:

    [(AXUISoftwareKeyboardManager *)selfCopy2 _setIsHardwareKeyboardAttached:v4];
    return;
  }

  if ([(NSMutableSet *)self->_reasonsToEnableSoftwareKeyboard count])
  {
    selfCopy2 = self;
    v4 = 0;
    goto LABEL_5;
  }

  v7 = 0;
  delegate = [(AXUISoftwareKeyboardManager *)self delegate];
  v6 = [delegate softwareKeyboardManagerShouldSetHardwareKeyboardAttached:self hardwareKeyboardIsCurrentlyAttached:GSEventIsHardwareKeyboardAttached() != 0 newHardwareKeyboardAttachedValue:&v7];

  if (v6)
  {
    [(AXUISoftwareKeyboardManager *)self _setIsHardwareKeyboardAttached:v7];
  }
}

- (void)addReasonToEnableSoftwareKeyboard:(id)keyboard
{
  v19 = *MEMORY[0x1E69E9840];
  keyboardCopy = keyboard;
  reasonsToEnableSoftwareKeyboard = self->_reasonsToEnableSoftwareKeyboard;
  if (!reasonsToEnableSoftwareKeyboard)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_reasonsToEnableSoftwareKeyboard;
    self->_reasonsToEnableSoftwareKeyboard = v6;

    reasonsToEnableSoftwareKeyboard = self->_reasonsToEnableSoftwareKeyboard;
  }

  [(NSMutableSet *)reasonsToEnableSoftwareKeyboard addObject:keyboardCopy];
  mEMORY[0x1E69887B8] = [MEMORY[0x1E69887B8] sharedInstance];
  ignoreLogging = [mEMORY[0x1E69887B8] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x1E69887B8] identifier];
    v11 = AXLoggerForFacility();

    v12 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = AXColorizeFormatLog();
      v15 = keyboardCopy;
      v16 = [(NSMutableSet *)self->_reasonsToEnableSoftwareKeyboard count];
      v14 = _AXStringForArgs();
      if (os_log_type_enabled(v11, v12))
      {
        *buf = 138543362;
        v18 = v14;
        _os_log_impl(&dword_1C0DFB000, v11, v12, "%{public}@", buf, 0xCu);
      }
    }
  }

  [(AXUISoftwareKeyboardManager *)self _updateHardwareKeyboardState:v15];
}

- (void)removeReasonToEnableSoftwareKeyboard:(id)keyboard
{
  v16 = *MEMORY[0x1E69E9840];
  keyboardCopy = keyboard;
  [(NSMutableSet *)self->_reasonsToEnableSoftwareKeyboard removeObject:keyboardCopy];
  mEMORY[0x1E69887B8] = [MEMORY[0x1E69887B8] sharedInstance];
  ignoreLogging = [mEMORY[0x1E69887B8] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x1E69887B8] identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v12 = keyboardCopy;
      v13 = [(NSMutableSet *)self->_reasonsToEnableSoftwareKeyboard count];
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v15 = v11;
        _os_log_impl(&dword_1C0DFB000, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  [(AXUISoftwareKeyboardManager *)self _updateHardwareKeyboardState:v12];
}

- (void)addReasonToDisableSoftwareKeyboard:(id)keyboard
{
  v19 = *MEMORY[0x1E69E9840];
  keyboardCopy = keyboard;
  reasonsToDisableSoftwareKeyboard = self->_reasonsToDisableSoftwareKeyboard;
  if (!reasonsToDisableSoftwareKeyboard)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_reasonsToDisableSoftwareKeyboard;
    self->_reasonsToDisableSoftwareKeyboard = v6;

    reasonsToDisableSoftwareKeyboard = self->_reasonsToDisableSoftwareKeyboard;
  }

  [(NSMutableSet *)reasonsToDisableSoftwareKeyboard addObject:keyboardCopy];
  mEMORY[0x1E69887B8] = [MEMORY[0x1E69887B8] sharedInstance];
  ignoreLogging = [mEMORY[0x1E69887B8] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x1E69887B8] identifier];
    v11 = AXLoggerForFacility();

    v12 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = AXColorizeFormatLog();
      v15 = keyboardCopy;
      v16 = [(NSMutableSet *)self->_reasonsToDisableSoftwareKeyboard count];
      v14 = _AXStringForArgs();
      if (os_log_type_enabled(v11, v12))
      {
        *buf = 138543362;
        v18 = v14;
        _os_log_impl(&dword_1C0DFB000, v11, v12, "%{public}@", buf, 0xCu);
      }
    }
  }

  [(AXUISoftwareKeyboardManager *)self _updateHardwareKeyboardState:v15];
}

- (void)removeReasonToDisableSoftwareKeyboard:(id)keyboard
{
  v16 = *MEMORY[0x1E69E9840];
  keyboardCopy = keyboard;
  [(NSMutableSet *)self->_reasonsToDisableSoftwareKeyboard removeObject:keyboardCopy];
  mEMORY[0x1E69887B8] = [MEMORY[0x1E69887B8] sharedInstance];
  ignoreLogging = [mEMORY[0x1E69887B8] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x1E69887B8] identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v12 = keyboardCopy;
      v13 = [(NSMutableSet *)self->_reasonsToDisableSoftwareKeyboard count];
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v15 = v11;
        _os_log_impl(&dword_1C0DFB000, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  [(AXUISoftwareKeyboardManager *)self _updateHardwareKeyboardState:v12];
}

- (AXUISoftwareKeyboardManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end