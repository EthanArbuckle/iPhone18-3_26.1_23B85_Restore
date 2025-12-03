@interface AXBHardwareManager
+ (void)initializeMonitor;
- (AXBHardwareManager)init;
- (id)_stickyKeysClient;
- (void)_notifyServerStickyKeysDisabled;
- (void)_notifyServerStickyKeysToggledViaShift;
- (void)_stickyKeysEnabledChanged;
- (void)_updateCameraButtonSensitivity;
- (void)_updateEventTap;
- (void)_updateIgnoreTrackpadSettings;
- (void)_updateKeyboardService:(__IOHIDServiceClient *)service;
- (void)_updateStateForKeyboardEvent:(id)event;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client;
- (void)dealloc;
@end

@implementation AXBHardwareManager

+ (void)initializeMonitor
{
  if (initializeMonitor_onceToken_5 != -1)
  {
    +[AXBHardwareManager initializeMonitor];
  }
}

uint64_t __39__AXBHardwareManager_initializeMonitor__block_invoke()
{
  _SharedManager_2 = objc_alloc_init(AXBHardwareManager);

  return MEMORY[0x2A1C71028]();
}

- (AXBHardwareManager)init
{
  v7.receiver = self;
  v7.super_class = AXBHardwareManager;
  v2 = [(AXBHardwareManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __26__AXBHardwareManager_init__block_invoke;
    block[3] = &unk_29F2A4B10;
    v6 = v2;
    dispatch_async(MEMORY[0x29EDCA578], block);
  }

  return v3;
}

void __26__AXBHardwareManager_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateEventTap];
  [*(a1 + 32) _updateIgnoreTrackpadSettings];
  objc_initWeak(&location, *(a1 + 32));
  v2 = [MEMORY[0x29EDBDFA0] sharedInstance];
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __26__AXBHardwareManager_init__block_invoke_2;
  v13[3] = &unk_29F2A4D08;
  objc_copyWeak(&v14, &location);
  [v2 registerUpdateBlock:v13 forRetrieveSelector:sel_stickyKeysEnabled withListener:*(a1 + 32)];

  objc_destroyWeak(&v14);
  v3 = [MEMORY[0x29EDBDFA0] sharedInstance];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __26__AXBHardwareManager_init__block_invoke_3;
  v11[3] = &unk_29F2A4D08;
  objc_copyWeak(&v12, &location);
  [v3 registerUpdateBlock:v11 forRetrieveSelector:sel_stickyKeysShiftToggleEnabled withListener:*(a1 + 32)];

  objc_destroyWeak(&v12);
  v4 = [MEMORY[0x29EDBDFA0] sharedInstance];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __26__AXBHardwareManager_init__block_invoke_4;
  v9[3] = &unk_29F2A4D08;
  objc_copyWeak(&v10, &location);
  [v4 registerUpdateBlock:v9 forRetrieveSelector:sel_ignoreTrackpad withListener:*(a1 + 32)];

  objc_destroyWeak(&v10);
  if (AXDeviceSupportsCameraButton())
  {
    v5 = [MEMORY[0x29EDBDFA0] sharedInstance];
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __26__AXBHardwareManager_init__block_invoke_5;
    v7[3] = &unk_29F2A4D08;
    objc_copyWeak(&v8, &location);
    [v5 registerUpdateBlock:v7 forRetrieveSelector:sel_cameraButtonSensitivity withListener:*(a1 + 32)];

    objc_destroyWeak(&v8);
  }

  v6 = [MEMORY[0x29EDBA068] defaultCenter];
  [v6 addObserver:*(a1 + 32) selector:sel__slowKeysEnabledChanged name:*MEMORY[0x29EDC84F8] object:0];
  [v6 addObserver:*(a1 + 32) selector:sel__slowKeysAcceptanceDelayChanged name:*MEMORY[0x29EDC84F0] object:0];

  objc_destroyWeak(&location);
}

void __26__AXBHardwareManager_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stickyKeysEnabledChanged];
}

void __26__AXBHardwareManager_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stickyKeysShiftToggleChanged];
}

void __26__AXBHardwareManager_init__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateIgnoreTrackpadSettings];
}

void __26__AXBHardwareManager_init__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCameraButtonSensitivity];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x29EDC84F8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x29EDC84F0] object:0];
  [(AXUIClient *)self->_stickyKeysClient setDelegate:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);

  v5.receiver = self;
  v5.super_class = AXBHardwareManager;
  [(AXBHardwareManager *)&v5 dealloc];
}

- (void)_updateCameraButtonSensitivity
{
  v15 = *MEMORY[0x29EDCA608];
  mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
  [mEMORY[0x29EDBDFA0] cameraButtonSensitivity];
  v4 = v3;

  v5 = [MEMORY[0x29EDBFBB8] build:&__block_literal_global_300];
  v6 = AXLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x29EDBA070] numberWithDouble:v4];
    *buf = 138412290;
    v14 = v7;
    _os_log_impl(&dword_29BBBD000, v6, OS_LOG_TYPE_DEFAULT, "CameraButton: Setting sensitivty: %@", buf, 0xCu);
  }

  v8 = [MEMORY[0x29EDBA070] numberWithDouble:{v4, @"HalfPressThresholdModifier"}];
  v12 = v8;
  v9 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  BKSHIDServicesSetPersistentServiceProperties();

  v10 = *MEMORY[0x29EDCA608];
}

- (void)_updateIgnoreTrackpadSettings
{
  v28[2] = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDB8ED8];
  v3 = IOHIDEventSystemClientCreate();
  if (v3)
  {
    v4 = v3;
    v27[0] = @"PrimaryUsagePage";
    v27[1] = @"PrimaryUsage";
    v28[0] = &unk_2A21217F8;
    v28[1] = &unk_2A2121810;
    v18 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    IOHIDEventSystemClientSetMatching();
    cf = v4;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = IOHIDEventSystemClientCopyServices(v4);
    v6 = [(__CFArray *)v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          v11 = MEMORY[0x29EDBA070];
          mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
          IOHIDServiceClientSetProperty(v10, @"TrackpadExternallyDisabled", [v11 numberWithBool:{objc_msgSend(mEMORY[0x29EDBDFA0], "ignoreTrackpad")}]);

          v13 = AXLogCommon();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = MEMORY[0x29EDBA070];
            mEMORY[0x29EDBDFA0]2 = [MEMORY[0x29EDBDFA0] sharedInstance];
            v16 = [v14 numberWithBool:{objc_msgSend(mEMORY[0x29EDBDFA0]2, "ignoreTrackpad")}];
            *buf = 138412290;
            v25 = v16;
            _os_log_impl(&dword_29BBBD000, v13, OS_LOG_TYPE_DEFAULT, "Applying ignore trackpad from pref change %@", buf, 0xCu);
          }
        }

        v7 = [(__CFArray *)v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v7);
    }

    CFRelease(cf);
  }

  v17 = *MEMORY[0x29EDCA608];
}

- (void)_updateStateForKeyboardEvent:(id)event
{
  eventCopy = event;
  mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
  flags = [eventCopy flags];
  if ((flags & 0xE0000) != 0)
  {
    keyInfo = [eventCopy keyInfo];
    keyCode = [keyInfo keyCode];
    keyInfo2 = [eventCopy keyInfo];
    -[AXBHardwareManager _notifyServerStickyKeyUpdatedForKeycode:usagePage:down:up:locked:](self, "_notifyServerStickyKeyUpdatedForKeycode:usagePage:down:up:locked:", keyCode, [keyInfo2 usagePage], (flags >> 17) & 1, (flags >> 19) & 1, (flags >> 18) & 1);
  }

  if ((flags & 0x200000) != 0 && ([mEMORY[0x29EDBDFA0] stickyKeysEnabled] & 1) == 0)
  {
    [(AXBHardwareManager *)self setShouldNotUpdateHIDClientForNextStickyKeysEnabledChange:1];
    [mEMORY[0x29EDBDFA0] setStickyKeysEnabled:1];
    [(AXBHardwareManager *)self _notifyServerStickyKeysToggledViaShift];
  }

  else if ((flags & 0x400000) != 0 && [mEMORY[0x29EDBDFA0] stickyKeysEnabled])
  {
    [(AXBHardwareManager *)self setShouldNotUpdateHIDClientForNextStickyKeysEnabledChange:1];
    [mEMORY[0x29EDBDFA0] setStickyKeysEnabled:0];
    [(AXBHardwareManager *)self _notifyServerStickyKeysToggledViaShift];
    [(AXBHardwareManager *)self _notifyServerStickyKeysDisabled];
  }
}

- (void)_updateKeyboardService:(__IOHIDServiceClient *)service
{
  mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
  v4 = IOHIDServiceClientCopyProperty(service, *MEMORY[0x29EDBDE60]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    v5 = 1;
  }

  if (([mEMORY[0x29EDBDFA0] stickyKeysEnabled] & 1) != 0 || objc_msgSend(mEMORY[0x29EDBDFA0], "stickyKeysShiftToggleEnabled"))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  stickyKeysEnabled = [mEMORY[0x29EDBDFA0] stickyKeysEnabled];
  stickyKeysShiftToggleEnabled = [mEMORY[0x29EDBDFA0] stickyKeysShiftToggleEnabled];
  v9 = _AXSSlowKeysEnabled() == 0;
  v10 = *MEMORY[0x29EDB8EF8];
  v11 = *MEMORY[0x29EDB8F00];
  if (v6)
  {
    v12 = *MEMORY[0x29EDB8EF8];
  }

  else
  {
    v12 = *MEMORY[0x29EDB8F00];
  }

  IOHIDServiceClientSetProperty(service, @"HIDStickyKeysDisabled", v12);
  if ((v5 & stickyKeysEnabled) != 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  IOHIDServiceClientSetProperty(service, @"HIDStickyKeysOn", v13);
  if ((v5 & stickyKeysShiftToggleEnabled) != 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  IOHIDServiceClientSetProperty(service, @"HIDStickyKeysShiftToggles", v14);
  if (v9 || (v5 & 1) == 0)
  {
    v16 = 0;
  }

  else
  {
    _AXSSlowKeysAcceptanceDelay();
    v16 = (v15 * 1000.0);
  }

  IOHIDServiceClientSetProperty(service, @"HIDSlowKeysDelay", [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v16]);
}

- (void)_updateEventTap
{
  mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
  if (_AXSSlowKeysEnabled() || ([mEMORY[0x29EDBDFA0] stickyKeysEnabled] & 1) != 0 || objc_msgSend(mEMORY[0x29EDBDFA0], "stickyKeysShiftToggleEnabled"))
  {
    eventTapIdentifier = [(AXBHardwareManager *)self eventTapIdentifier];

    mEMORY[0x29EDBDF60] = [MEMORY[0x29EDBDF60] sharedManager];
    mEMORY[0x29EDBDF60]2 = mEMORY[0x29EDBDF60];
    if (eventTapIdentifier)
    {
      eventTapIdentifier2 = [(AXBHardwareManager *)self eventTapIdentifier];
      [mEMORY[0x29EDBDF60]2 runMatchingServiceHandlerForEventTap:eventTapIdentifier2];
    }

    else
    {
      v15[0] = MEMORY[0x29EDCA5F8];
      v15[1] = 3221225472;
      v15[2] = __37__AXBHardwareManager__updateEventTap__block_invoke;
      v15[3] = &unk_29F2A5048;
      v15[4] = self;
      v14[0] = MEMORY[0x29EDCA5F8];
      v14[1] = 3221225472;
      v14[2] = __37__AXBHardwareManager__updateEventTap__block_invoke_2;
      v14[3] = &unk_29F2A5070;
      v14[4] = self;
      v8 = [mEMORY[0x29EDBDF60] installKeyboardEventTap:v15 identifier:0 matchingServiceHandler:v14];
      [(AXBHardwareManager *)self setEventTapIdentifier:v8];

      mEMORY[0x29EDBDF60]2 = [MEMORY[0x29EDBDF60] sharedManager];
      eventTapIdentifier2 = [(AXBHardwareManager *)self eventTapIdentifier];
      [mEMORY[0x29EDBDF60]2 setEventTapPriority:eventTapIdentifier2 priority:22];
    }
  }

  else
  {
    eventTapIdentifier3 = [(AXBHardwareManager *)self eventTapIdentifier];

    if (eventTapIdentifier3)
    {
      mEMORY[0x29EDBDF60]3 = [MEMORY[0x29EDBDF60] sharedManager];
      eventTapIdentifier4 = [(AXBHardwareManager *)self eventTapIdentifier];
      [mEMORY[0x29EDBDF60]3 runMatchingServiceHandlerForEventTap:eventTapIdentifier4];

      mEMORY[0x29EDBDF60]4 = [MEMORY[0x29EDBDF60] sharedManager];
      eventTapIdentifier5 = [(AXBHardwareManager *)self eventTapIdentifier];
      [mEMORY[0x29EDBDF60]4 removeEventTap:eventTapIdentifier5];

      [(AXBHardwareManager *)self setEventTapIdentifier:0];
    }
  }
}

uint64_t __37__AXBHardwareManager__updateEventTap__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 senderID] != 0x8000000817319378)
  {
    [*(a1 + 32) _updateStateForKeyboardEvent:v3];
  }

  return 0;
}

- (id)_stickyKeysClient
{
  stickyKeysClient = self->_stickyKeysClient;
  if (!stickyKeysClient)
  {
    v4 = [objc_alloc(MEMORY[0x29EDBDDD0]) initWithIdentifier:@"AXBHardwareManager" serviceBundleName:@"StickyKeys"];
    v5 = self->_stickyKeysClient;
    self->_stickyKeysClient = v4;

    [(AXUIClient *)self->_stickyKeysClient setDelegate:self];
    stickyKeysClient = self->_stickyKeysClient;
  }

  return stickyKeysClient;
}

- (void)_stickyKeysEnabledChanged
{
  mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
  stickyKeysEnabled = [mEMORY[0x29EDBDFA0] stickyKeysEnabled];

  if ((stickyKeysEnabled & 1) == 0)
  {
    [(AXBHardwareManager *)self _notifyServerStickyKeysDisabled];
  }

  if ([(AXBHardwareManager *)self shouldNotUpdateHIDClientForNextStickyKeysEnabledChange])
  {

    [(AXBHardwareManager *)self setShouldNotUpdateHIDClientForNextStickyKeysEnabledChange:0];
  }

  else
  {

    [(AXBHardwareManager *)self _updateEventTap];
  }
}

- (void)_notifyServerStickyKeysToggledViaShift
{
  _stickyKeysClient = [(AXBHardwareManager *)self _stickyKeysClient];
  mainAccessQueue = [MEMORY[0x29EDBD688] mainAccessQueue];
  [_stickyKeysClient sendAsynchronousMessage:0 withIdentifier:10000 targetAccessQueue:mainAccessQueue completion:&__block_literal_global_343];
}

uint64_t __60__AXBHardwareManager__notifyServerStickyKeysToggledViaShift__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return _AXLogWithFacility();
  }

  return result;
}

- (void)_notifyServerStickyKeysDisabled
{
  _stickyKeysClient = [(AXBHardwareManager *)self _stickyKeysClient];
  mainAccessQueue = [MEMORY[0x29EDBD688] mainAccessQueue];
  [_stickyKeysClient sendAsynchronousMessage:0 withIdentifier:10001 targetAccessQueue:mainAccessQueue completion:&__block_literal_global_348_0];
}

uint64_t __53__AXBHardwareManager__notifyServerStickyKeysDisabled__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return _AXLogWithFacility();
  }

  return result;
}

uint64_t __87__AXBHardwareManager__notifyServerStickyKeyUpdatedForKeycode_usagePage_down_up_locked___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return _AXLogWithFacility();
  }

  return result;
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __80__AXBHardwareManager_connectionWithServiceWasInterruptedForUserInterfaceClient___block_invoke;
  block[3] = &unk_29F2A4B10;
  block[4] = self;
  dispatch_async(MEMORY[0x29EDCA578], block);
}

void __80__AXBHardwareManager_connectionWithServiceWasInterruptedForUserInterfaceClient___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setDelegate:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

@end