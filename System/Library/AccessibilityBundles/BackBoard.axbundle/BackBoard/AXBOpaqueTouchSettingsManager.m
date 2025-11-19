@interface AXBOpaqueTouchSettingsManager
+ (id)sharedInstance;
- (id)initSharedInstance;
- (void)_applyPreferencesToDeviceService:(__IOHIDServiceClient *)a3;
- (void)_resendPreferencesToServices;
- (void)dealloc;
- (void)deviceServiceAppeared:(__IOHIDServiceClient *)a3;
- (void)deviceServiceDisappeared:(__IOHIDServiceClient *)a3;
- (void)start;
@end

@implementation AXBOpaqueTouchSettingsManager

- (id)initSharedInstance
{
  v11.receiver = self;
  v11.super_class = AXBOpaqueTouchSettingsManager;
  v2 = [(AXBOpaqueTouchSettingsManager *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    trackedServices = v2->_trackedServices;
    v2->_trackedServices = v3;

    v5 = *MEMORY[0x29EDB8ED8];
    v2->_systemFilterClient = IOHIDEventSystemClientCreate();
    v6 = [MEMORY[0x29EDB8DE8] array];
    [v6 addObject:&unk_2A21219F0];
    [v6 addObject:&unk_2A2121A18];
    systemFilterClient = v2->_systemFilterClient;
    IOHIDEventSystemClientSetMatchingMultiple();
    v8 = v2->_systemFilterClient;
    CFRunLoopGetMain();
    v9 = *MEMORY[0x29EDB8FC0];
    IOHIDEventSystemClientScheduleWithRunLoop();
  }

  return v2;
}

- (void)dealloc
{
  if (self->_systemFilterClient)
  {
    CFRunLoopGetMain();
    v3 = *MEMORY[0x29EDB8FC0];
    IOHIDEventSystemClientUnscheduleWithRunLoop();
    CFRelease(self->_systemFilterClient);
    self->_systemFilterClient = 0;
  }

  v4.receiver = self;
  v4.super_class = AXBOpaqueTouchSettingsManager;
  [(AXBOpaqueTouchSettingsManager *)&v4 dealloc];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[AXBOpaqueTouchSettingsManager sharedInstance];
  }

  v3 = sharedInstance_shared;

  return v3;
}

uint64_t __47__AXBOpaqueTouchSettingsManager_sharedInstance__block_invoke()
{
  sharedInstance_shared = [[AXBOpaqueTouchSettingsManager alloc] initSharedInstance];

  return MEMORY[0x2A1C71028]();
}

- (void)_applyPreferencesToDeviceService:(__IOHIDServiceClient *)a3
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = AXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29BBBD000, v4, OS_LOG_TYPE_DEFAULT, "Applying preferences to service", buf, 2u);
  }

  if (IOHIDServiceClientConformsTo(a3, 0xFF60u, 0x1000u))
  {
    _AXSOpaqueTouchTapSpeed();
    valuePtr = (v5 * 1000.0);
    v6 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt64Type, &valuePtr);
    IOHIDServiceClientSetProperty(a3, @"DoubleTapDeltaMs", v6);
    CFRelease(v6);
    v7 = _AXSAllowOpaqueTouchGestures();
    v8 = MEMORY[0x29EDB8EF8];
    if (!v7)
    {
      v8 = MEMORY[0x29EDB8F00];
    }

    IOHIDServiceClientSetProperty(a3, @"GesturesDisabled", *v8);
    v9 = AXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_29BBBD000, v9, OS_LOG_TYPE_DEFAULT, "Applying double-tap delay %@", buf, 0xCu);
    }

LABEL_11:

    goto LABEL_12;
  }

  if (IOHIDServiceClientConformsTo(a3, 0xDu, 0xCu))
  {
    v10 = MEMORY[0x29EDBA070];
    v11 = [MEMORY[0x29EDBDFA0] sharedInstance];
    IOHIDServiceClientSetProperty(a3, @"TrackpadExternallyDisabled", [v10 numberWithBool:{objc_msgSend(v11, "ignoreTrackpad")}]);

    v9 = AXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = MEMORY[0x29EDBA070];
      v13 = [MEMORY[0x29EDBDFA0] sharedInstance];
      v14 = [v12 numberWithBool:{objc_msgSend(v13, "ignoreTrackpad")}];
      *buf = 138412290;
      v18 = v14;
      _os_log_impl(&dword_29BBBD000, v9, OS_LOG_TYPE_DEFAULT, "Applying ignore trackpad from service discovery %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

LABEL_12:
  v15 = *MEMORY[0x29EDCA608];
}

- (void)deviceServiceAppeared:(__IOHIDServiceClient *)a3
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = AXLogAccessories();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = a3;
    _os_log_impl(&dword_29BBBD000, v5, OS_LOG_TYPE_DEFAULT, "Accessibility noticed opaque touch service appearing: %@", &v8, 0xCu);
  }

  IOHIDServiceClientRegisterRemovalCallback();
  v6 = a3;
  if (([(NSMutableArray *)self->_trackedServices containsObject:v6]& 1) == 0)
  {
    [(NSMutableArray *)self->_trackedServices addObject:v6];
    [(AXBOpaqueTouchSettingsManager *)self _applyPreferencesToDeviceService:v6];
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)deviceServiceDisappeared:(__IOHIDServiceClient *)a3
{
  v9 = *MEMORY[0x29EDCA608];
  v5 = AXLogAccessories();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = a3;
    _os_log_impl(&dword_29BBBD000, v5, OS_LOG_TYPE_DEFAULT, "Accessibility noticed opaque touch service disappearing: %@", &v7, 0xCu);
  }

  [(NSMutableArray *)self->_trackedServices removeObject:a3];
  v6 = *MEMORY[0x29EDCA608];
}

- (void)start
{
  v22 = *MEMORY[0x29EDCA608];
  if (!self->_running || (v14 = "[AXBOpaqueTouchSettingsManager start]", _AXAssert(), !self->_running))
  {
    self->_running = 1;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _prefChangedCallback, *MEMORY[0x29EDC83C8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v4, 0, _prefChangedCallback, *MEMORY[0x29EDC84B8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    systemFilterClient = self->_systemFilterClient;
    IOHIDEventSystemClientRegisterDeviceMatchingCallback();
    v6 = IOHIDEventSystemClientCopyServices(self->_systemFilterClient);
    v7 = AXLogAccessories();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v21 = [(__CFArray *)v6 count];
      _os_log_impl(&dword_29BBBD000, v7, OS_LOG_TYPE_DEFAULT, "Accessibility is starting opaque touch settings manager. There are %ld matching devices at startup.", buf, 0xCu);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v6;
    v9 = [(__CFArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(AXBOpaqueTouchSettingsManager *)self deviceServiceAppeared:*(*(&v15 + 1) + 8 * v12++), v14];
        }

        while (v10 != v12);
        v10 = [(__CFArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

- (void)_resendPreferencesToServices
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = AXLogAccessories();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSMutableArray *)self->_trackedServices count];
    *buf = 134217984;
    v17 = v4;
    _os_log_impl(&dword_29BBBD000, v3, OS_LOG_TYPE_DEFAULT, "Accessibility is resending opaque touch preferences to tracked device services. there are %ld such services.", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_trackedServices;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AXBOpaqueTouchSettingsManager *)self _applyPreferencesToDeviceService:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x29EDCA608];
}

@end