@interface AXBAccessibilityManager
+ (id)sharedManager;
+ (void)initializeAccessibilityMonitor;
+ (void)updateAccessibilitySettings;
- (AXBAccessibilityManager)init;
- (BOOL)_accessibilityDisplayRequiresRotateForPoints:(id)points;
- (BOOL)_accessibilityEventTapCallback:(id)callback;
- (BOOL)_accessibilityIsInternalInstall;
- (BOOL)_iosAccessibilityPerformAction:(int)action withValue:(id)value fencePort:(unsigned int)port;
- (BOOL)_screenReaderCapture:(id)capture;
- (BOOL)_showingBootUI;
- (double)_processPassiveEventQueue;
- (id)_accessibilityAssistiveTouchApplication;
- (id)_accessibilityCarPlayApp;
- (id)_accessibilityCarPlayApplicationPid;
- (id)_accessibilityHitTest:(CGPoint)test;
- (id)_accessibilityInputUIApplication;
- (id)_accessibilityLiveCaptionsApplication;
- (id)_accessibilityNativeFocusedApplication;
- (id)_accessibilitySpringBoardApplication;
- (id)_accessibilitySystemApp;
- (id)_accessibilitySystemAppApplicationBundleId;
- (id)_accessibilitySystemAppApplicationPid;
- (id)_accessibilityUIServerApplication;
- (id)_deliveryManager;
- (id)_iosAccessibilityAttributeValue:(int64_t)value element:(id)element;
- (id)_iosAccessibilityAttributeValue:(int64_t)value forParameter:(id)parameter;
- (id)allJobLabels;
- (int)_handlePidForSpecialCases:(unsigned int)cases;
- (void)_accessibilityRepostEvent:(id)event;
- (void)_accessibilitySystemAppApplicationPid;
- (void)_iosAccessibilitySetValue:(id)value forAttribute:(int64_t)attribute;
- (void)_releasePendingEvents:(double)events;
- (void)_sendEventRep:(id)rep;
- (void)_startPassiveResendThread;
- (void)_undoContextShiftedPoints:(id)points;
- (void)_updateVoiceOverIgnoresTrackpad;
- (void)initializeAccessibility;
- (void)observerClientDied;
@end

@implementation AXBAccessibilityManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[AXBAccessibilityManager sharedManager];
  }

  v3 = sharedManager_SharedManager;

  return v3;
}

+ (void)updateAccessibilitySettings
{
  if (_AXSApplicationAccessibilityEnabled() || _AXSAccessibilityNeedsMiniServer())
  {
    v2 = +[AXBAccessibilityManager sharedManager];
    [v2 initializeAccessibility];
  }

  else
  {
    v2 = +[AXBAccessibilityManager sharedManager];
    [v2 disableAccessibility];
  }
}

+ (void)initializeAccessibilityMonitor
{
  [self updateAccessibilitySettings];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  v4 = *MEMORY[0x29EDC83D8];
  mainQueue = [MEMORY[0x29EDBA088] mainQueue];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __57__AXBAccessibilityManager_initializeAccessibilityMonitor__block_invoke;
  v9[3] = &__block_descriptor_40_e24_v16__0__NSNotification_8l;
  v9[4] = self;
  v6 = [defaultCenter addObserverForName:v4 object:0 queue:mainQueue usingBlock:v9];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v8 = objc_opt_class();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, updateGizmoAccessibilitySettings, @"NanoAccessibilityDefaultsChanged", 0, 0);
}

uint64_t __40__AXBAccessibilityManager_sharedManager__block_invoke()
{
  sharedManager_SharedManager = objc_alloc_init(AXBAccessibilityManager);

  return MEMORY[0x2A1C71028]();
}

- (AXBAccessibilityManager)init
{
  v10.receiver = self;
  v10.super_class = AXBAccessibilityManager;
  v2 = [(AXBAccessibilityManager *)&v10 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_resetAssistiveTouchHitPort name:*MEMORY[0x29EDC83E0] object:0];

    mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __31__AXBAccessibilityManager_init__block_invoke;
    v8[3] = &unk_29F2A4B10;
    v5 = v2;
    v9 = v5;
    [mEMORY[0x29EDBDFA0] registerUpdateBlock:v8 forRetrieveSelector:sel_voiceOverIgnoreTrackpad withListener:v5];

    [(AXBAccessibilityManager *)v5 _updateVoiceOverIgnoresTrackpad];
    v6 = v5;
  }

  return v2;
}

- (void)_updateVoiceOverIgnoresTrackpad
{
  mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
  self->_voiceOverIgnoresTrackpad = [mEMORY[0x29EDBDFA0] voiceOverIgnoreTrackpad];
}

- (void)initializeAccessibility
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __50__AXBAccessibilityManager_initializeAccessibility__block_invoke;
  block[3] = &unk_29F2A4B10;
  block[4] = self;
  if (initializeAccessibility_onceToken != -1)
  {
    dispatch_once(&initializeAccessibility_onceToken, block);
  }
}

void __50__AXBAccessibilityManager_initializeAccessibility__block_invoke(uint64_t a1)
{
  _AXBValidateMethods();
  v2 = [MEMORY[0x29EDBD810] sharedManager];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(*(a1 + 32) + 8) setSystemWideServer:1];
  objc_initWeak(&location, *(a1 + 32));
  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 3221225472;
  v21[2] = __50__AXBAccessibilityManager_initializeAccessibility__block_invoke_2;
  v21[3] = &unk_29F2A4B38;
  objc_copyWeak(&v22, &location);
  [*(*(a1 + 32) + 8) setAttributeCallback:v21];
  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 3221225472;
  v19[2] = __50__AXBAccessibilityManager_initializeAccessibility__block_invoke_3;
  v19[3] = &unk_29F2A4B60;
  objc_copyWeak(&v20, &location);
  [*(*(a1 + 32) + 8) setParameterizedAttributeCallback:v19];
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = __50__AXBAccessibilityManager_initializeAccessibility__block_invoke_4;
  v17[3] = &unk_29F2A4B88;
  objc_copyWeak(&v18, &location);
  [*(*(a1 + 32) + 8) setSetAttributeCallback:v17];
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __50__AXBAccessibilityManager_initializeAccessibility__block_invoke_5;
  v15[3] = &unk_29F2A4BB0;
  objc_copyWeak(&v16, &location);
  [*(*(a1 + 32) + 8) setPerformActionCallback:v15];
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __50__AXBAccessibilityManager_initializeAccessibility__block_invoke_6;
  v13[3] = &unk_29F2A4BD8;
  objc_copyWeak(&v14, &location);
  [*(*(a1 + 32) + 8) setClientObserverCallback:v13];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __50__AXBAccessibilityManager_initializeAccessibility__block_invoke_7;
  v11[3] = &unk_29F2A4C00;
  objc_copyWeak(&v12, &location);
  [*(*(a1 + 32) + 8) setApplicationElementCallback:v11];
  v6 = MEMORY[0x29EDCA5F8];
  v7 = 3221225472;
  v8 = __50__AXBAccessibilityManager_initializeAccessibility__block_invoke_8;
  v9 = &unk_29F2A4C28;
  objc_copyWeak(&v10, &location);
  [*(*(a1 + 32) + 8) setHitTestCallback:&v6];
  v5 = *(a1 + 32);
  _AXUIElementRegisterSystemWideServerBroadcastRelayerCallback();
  [*(*(a1 + 32) + 8) start];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

id __50__AXBAccessibilityManager_initializeAccessibility__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained _axElementForUID:{a2, a3}];

  v10 = objc_loadWeakRetained((a1 + 32));
  v11 = [v10 _iosAccessibilityAttributeValue:a4 element:v9];

  return v11;
}

id __50__AXBAccessibilityManager_initializeAccessibility__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained _iosAccessibilityAttributeValue:a4 forParameter:v7];

  return v9;
}

void __50__AXBAccessibilityManager_initializeAccessibility__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _iosAccessibilitySetValue:v7 forAttribute:a4];
}

uint64_t __50__AXBAccessibilityManager_initializeAccessibility__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained _iosAccessibilityPerformAction:a4 withValue:v9 fencePort:a6];

  return v11;
}

void __50__AXBAccessibilityManager_initializeAccessibility__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained observerClientDied];
}

id __50__AXBAccessibilityManager_initializeAccessibility__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  return WeakRetained;
}

id __50__AXBAccessibilityManager_initializeAccessibility__block_invoke_8(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained _accessibilityHitTest:{a2, a3}];

  return v6;
}

- (BOOL)_showingBootUI
{
  v2 = [NSClassFromString(&cfstr_Bkbootuipresen.isa) safeValueForKey:@"sharedInstance"];
  v3 = [v2 safeBoolForKey:@"isShowingBootUI"];

  return v3;
}

- (id)_accessibilityHitTest:(CGPoint)test
{
  if ([(AXBAccessibilityManager *)self _showingBootUI:test.x])
  {
    v3 = [NSClassFromString(&cfstr_Bkbootuipresen.isa) safeValueForKey:@"sharedInstance"];
    v4 = [v3 safeValueForKey:@"_overlay"];
    NSClassFromString(&cfstr_Bkdisplayrende.isa);
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 safeValueForKey:@"_puiProgressWindow"];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)observerClientDied
{
  v3 = [MEMORY[0x29EDBA070] numberWithFloat:0.0];
  [(AXBAccessibilityManager *)self _iosAccessibilitySetValue:v3 forAttribute:1003];

  [(AXBAccessibilityManager *)self setAccelerometerDisabled:0];
  if ((_SBAXCaptureMode & 1) != 0 && !_AXSVoiceOverTouchEnabled())
  {
    unsetCaptureMode(1);
    [(AXBAccessibilityManager *)self _setDeviceOrientationCapability:1];
  }

  if ((_SBAXCaptureMode & 2) != 0 && !_AXSAssistiveTouchEnabled())
  {
    unsetCaptureMode(2);
  }

  if ((_SBAXCaptureMode & 8) != 0 && !_AXSGuidedAccessEnabled())
  {
    unsetCaptureMode(8);
  }

  if ((_SBAXCaptureMode & 0x10) != 0)
  {

    unsetCaptureMode(16);
  }
}

- (void)_accessibilityRepostEvent:(id)event
{
  if (event)
  {
    AXBSendEventRepresentationUntapped(event);
  }
}

uint64_t __65__AXBAccessibilityManager__accessibilityApplicationForContextId___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) copyClientForTaskPort:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)_handlePidForSpecialCases:(unsigned int)cases
{
  if (!_AXSAssistiveTouchEnabled())
  {
    goto LABEL_9;
  }

  v5 = AssistiveTouchPort;
  if (!AssistiveTouchPort)
  {
    bootstrap_look_up(*MEMORY[0x29EDCA6A0], "com.apple.assistivetouchd", &AssistiveTouchPort);
    v5 = AssistiveTouchPort;
  }

  if (v5 != cases || (result = +[AXBackBoardGlue assistiveTouchPid]) == 0)
  {
    if (!+[AXBackBoardGlue accessibilityUIServerPid])
    {
      goto LABEL_13;
    }

LABEL_9:
    v7 = AccessibilityUITouchPort;
    if (!AccessibilityUITouchPort)
    {
      bootstrap_look_up(*MEMORY[0x29EDCA6A0], "com.apple.accessibility.AccessibilityUIServer.gsEvents", &AccessibilityUITouchPort);
      v7 = AccessibilityUITouchPort;
    }

    if (v7 == cases)
    {

      return +[AXBackBoardGlue accessibilityUIServerPid];
    }

    else
    {
LABEL_13:
      if ([(AXBAccessibilityManager *)self _showingBootUI])
      {
        return 0;
      }

      else
      {
        _accessibilitySystemAppApplicationPid = [(AXBAccessibilityManager *)self _accessibilitySystemAppApplicationPid];
        intValue = [_accessibilitySystemAppApplicationPid intValue];

        return intValue;
      }
    }
  }

  return result;
}

- (BOOL)_accessibilityIsInternalInstall
{
  if (_accessibilityIsInternalInstall_onceToken != -1)
  {
    [AXBAccessibilityManager _accessibilityIsInternalInstall];
  }

  return _accessibilityIsInternalInstall_IsInternal;
}

uint64_t __58__AXBAccessibilityManager__accessibilityIsInternalInstall__block_invoke()
{
  result = AXIsInternalInstall();
  _accessibilityIsInternalInstall_IsInternal = result;
  return result;
}

- (id)allJobLabels
{
  v2 = MEMORY[0x29C2CC0A0]("GetJobs", a2);
  v3 = launch_msg(v2);
  MEMORY[0x29C2CC080](v2);
  if (v3)
  {
    if (launch_data_get_type(v3) == LAUNCH_DATA_DICTIONARY)
    {
      array = [MEMORY[0x29EDB8DE8] array];
      launch_data_dict_iterate(v3, copyKeysToArray, array);
    }

    else
    {
      array = 0;
    }

    MEMORY[0x29C2CC080](v3);
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)_accessibilitySystemApp
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = [NSClassFromString(&cfstr_Bksystemshells.isa) safeValueForKey:@"sharedInstance"];
  v3 = [v2 safeArrayForKey:@"systemApplications"];
  v4 = [v3 ax_filteredArrayUsingBlock:&__block_literal_global_355];

  if ([v4 count] < 2)
  {
    if ([v4 count])
    {
      goto LABEL_9;
    }

    v6 = AXLogSystemApp();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(AXBAccessibilityManager *)v6 _accessibilitySystemApp];
    }

    v7 = MEMORY[0x29EDB8D80];
    v5 = [NSClassFromString(&cfstr_Bksystemshells.isa) safeValueForKey:@"sharedInstance"];
    v8 = [v5 safeValueForKey:@"primarySystemShell"];
    v9 = [v7 axArrayByIgnoringNilElementsWithCount:{1, v8}];

    v4 = v9;
  }

  else
  {
    v5 = AXLogSystemApp();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&dword_29BBBD000, v5, OS_LOG_TYPE_DEFAULT, "Found more than one non-CarPlay system app, returning first object: %@", buf, 0xCu);
    }
  }

LABEL_9:
  firstObject = [v4 firstObject];
  v11 = AXLogSystemApp();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = firstObject;
    _os_log_impl(&dword_29BBBD000, v11, OS_LOG_TYPE_INFO, "Determined system app: %@", buf, 0xCu);
  }

  v12 = *MEMORY[0x29EDCA608];

  return firstObject;
}

uint64_t __50__AXBAccessibilityManager__accessibilitySystemApp__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 safeStringForKey:@"bundleIdentifier"];
  v3 = [v2 isEqualToString:*MEMORY[0x29EDBD638]];

  return v3 ^ 1u;
}

- (id)_accessibilityCarPlayApp
{
  v2 = [NSClassFromString(&cfstr_Bksystemshells.isa) safeValueForKey:@"sharedInstance"];
  v3 = [v2 safeArrayForKey:@"systemApplications"];
  v4 = [v3 ax_filteredArrayUsingBlock:&__block_literal_global_364];
  firstObject = [v4 firstObject];

  return firstObject;
}

uint64_t __51__AXBAccessibilityManager__accessibilityCarPlayApp__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 safeStringForKey:@"bundleIdentifier"];
  v3 = [v2 isEqualToString:*MEMORY[0x29EDBD638]];

  return v3;
}

- (id)_accessibilitySystemAppApplicationBundleId
{
  _accessibilitySystemApp = [(AXBAccessibilityManager *)self _accessibilitySystemApp];
  v3 = [_accessibilitySystemApp safeValueForKey:@"bundleIdentifier"];

  return v3;
}

- (id)_accessibilityCarPlayApplicationPid
{
  _accessibilityCarPlayApp = [(AXBAccessibilityManager *)self _accessibilityCarPlayApp];
  v3 = [_accessibilityCarPlayApp safeValueForKey:@"pid"];
  unsignedIntValue = [v3 unsignedIntValue];

  if (unsignedIntValue < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x29EDBA070] numberWithInt:unsignedIntValue];
  }

  return v5;
}

- (id)_accessibilitySystemAppApplicationPid
{
  _accessibilitySystemApp = [(AXBAccessibilityManager *)self _accessibilitySystemApp];
  v3 = [_accessibilitySystemApp safeValueForKey:@"pid"];
  unsignedIntValue = [v3 unsignedIntValue];

  if (unsignedIntValue <= 0)
  {
    v6 = AXLogSystemApp();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(AXBAccessibilityManager *)_accessibilitySystemApp _accessibilitySystemAppApplicationPid];
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x29EDBA070] numberWithInt:unsignedIntValue];
  }

  return v5;
}

- (id)_accessibilityUIServerApplication
{
  v2 = MEMORY[0x29EDBA070];
  v3 = +[AXBackBoardGlue accessibilityUIServerPid];

  return [v2 numberWithInt:v3];
}

- (id)_accessibilityAssistiveTouchApplication
{
  v2 = MEMORY[0x29EDBA070];
  v3 = +[AXBackBoardGlue assistiveTouchPid];

  return [v2 numberWithInt:v3];
}

- (id)_accessibilityLiveCaptionsApplication
{
  v2 = MEMORY[0x29EDBA070];
  v3 = +[AXBackBoardGlue liveCaptionsPid];

  return [v2 numberWithInt:v3];
}

- (id)_accessibilityInputUIApplication
{
  v2 = MEMORY[0x29EDBA070];
  v3 = +[AXBackBoardGlue inputUIPid];

  return [v2 numberWithInt:v3];
}

- (id)_deliveryManager
{
  v2 = [NSClassFromString(&cfstr_Bkhidsystemint.isa) safeValueForKey:@"sharedInstance"];
  v3 = [v2 safeValueForKey:@"deliveryManager"];

  return v3;
}

- (id)_accessibilityNativeFocusedApplication
{
  if (_AXSAutomationEnabled() || AXRequestingClient() == 11)
  {
    v3 = MEMORY[0x29EDBA070];
    server = [MEMORY[0x29EDBDFA8] server];
    v5 = [v3 numberWithInt:{objc_msgSend(server, "nativeFocusedApplication")}];
  }

  else
  {
    _deliveryManager = [(AXBAccessibilityManager *)self _deliveryManager];
    if (_accessibilityNativeFocusedApplication_onceToken != -1)
    {
      [AXBAccessibilityManager _accessibilityNativeFocusedApplication];
    }

    v8 = objc_opt_new();
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy_;
    v18 = __Block_byref_object_dispose_;
    v19 = 0;
    v12 = _deliveryManager;
    v13 = v8;
    AXPerformSafeBlock();
    v9 = v15[5];

    _Block_object_dispose(&v14, 8);
    anyObject = [v9 anyObject];

    v11 = [anyObject safeUnsignedIntForKey:@"pid"];
    v5 = [MEMORY[0x29EDBA070] numberWithInt:v11];
  }

  return v5;
}

void __65__AXBAccessibilityManager__accessibilityNativeFocusedApplication__block_invoke()
{
  v1 = [MEMORY[0x29EDBDF58] keyRepresentationWithType:10];
  v0 = [v1 keyInfo];
  [v0 setKeyCode:4];

  _accessibilityNativeFocusedApplication_DummyKeyboardEventRef = [v1 newHIDEventRef];
}

uint64_t __65__AXBAccessibilityManager__accessibilityNativeFocusedApplication__block_invoke_376(uint64_t a1)
{
  v2 = [*(a1 + 32) destinationsForEvent:_accessibilityNativeFocusedApplication_DummyKeyboardEventRef sender:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (id)_accessibilitySpringBoardApplication
{
  if (_AXSClarityBoardEnabled())
  {
    goto LABEL_2;
  }

  v3 = +[AXBEventManager sharedManager];
  systemAppPid = [v3 systemAppPid];

  if (systemAppPid <= 0)
  {
    NSLog(&cfstr_AccessibilityS.isa);
LABEL_2:
    v2 = 0;
    goto LABEL_5;
  }

  v2 = [MEMORY[0x29EDBA070] numberWithInt:systemAppPid];
LABEL_5:

  return v2;
}

- (void)_iosAccessibilitySetValue:(id)value forAttribute:(int64_t)attribute
{
  valueCopy = value;
  switch(attribute)
  {
    case 1002:
      v8 = valueCopy;
      if ([valueCopy BOOLValue])
      {
        setCaptureMode(32);
      }

      else
      {
        unsetCaptureMode(32);
      }

      break;
    case 1003:
      v9 = valueCopy;
      [valueCopy floatValue];
      valueCopy = v9;
      *&_SBAXPassiveListenDelay = v7;
      goto LABEL_10;
    case 1004:
      v8 = valueCopy;
      -[AXBAccessibilityManager setAccelerometerDisabled:](self, "setAccelerometerDisabled:", [valueCopy BOOLValue]);
      break;
    default:
      goto LABEL_10;
  }

  valueCopy = v8;
LABEL_10:
}

- (void)_sendEventRep:(id)rep
{
  repCopy = rep;
  if (_sendEventRep__registerOnce != -1)
  {
    [AXBAccessibilityManager _sendEventRep:];
  }

  v4 = _sendEventRep__DifferentQueue;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __41__AXBAccessibilityManager__sendEventRep___block_invoke_2;
  block[3] = &unk_29F2A4B10;
  v7 = repCopy;
  v5 = repCopy;
  dispatch_async(v4, block);
}

uint64_t __41__AXBAccessibilityManager__sendEventRep___block_invoke()
{
  _sendEventRep__DifferentQueue = dispatch_queue_create("ax-send-event-queue", 0);

  return MEMORY[0x2A1C71028]();
}

- (id)_iosAccessibilityAttributeValue:(int64_t)value element:(id)element
{
  elementCopy = element;
  v7 = 0;
  if (value <= 1006)
  {
    if (value > 1002)
    {
      switch(value)
      {
        case 1003:
          HIDWORD(v9) = HIDWORD(_SBAXPassiveListenDelay);
          *&v9 = *&_SBAXPassiveListenDelay;
          _accessibilityUIServerApplication = [MEMORY[0x29EDBA070] numberWithFloat:v9];
          break;
        case 1005:
          _accessibilityUIServerApplication = [(AXBAccessibilityManager *)self _accessibilityUIServerApplication];
          break;
        case 1006:
          _accessibilityUIServerApplication = [(AXBAccessibilityManager *)self _accessibilityAssistiveTouchApplication];
          break;
        default:
          goto LABEL_35;
      }
    }

    else
    {
      switch(value)
      {
        case 1000:
          _accessibilityUIServerApplication = [(AXBAccessibilityManager *)self _accessibilitySpringBoardApplication];
          break;
        case 1001:
          _accessibilityUIServerApplication = [(AXBAccessibilityManager *)self _accessibilitySystemAppApplicationPid];
          break;
        case 1002:
          _accessibilityUIServerApplication = [MEMORY[0x29EDBA070] numberWithBool:(_SBAXCaptureMode >> 5) & 1];
          break;
        default:
          goto LABEL_35;
      }
    }

    goto LABEL_34;
  }

  if (value <= 1010)
  {
    switch(value)
    {
      case 1007:
        _accessibilityUIServerApplication = [(AXBAccessibilityManager *)self _accessibilityNativeFocusedApplication];
        break;
      case 1009:
        _accessibilityUIServerApplication = [(AXBAccessibilityManager *)self _accessibilityCarPlayApplicationPid];
        break;
      case 1010:
        _accessibilityUIServerApplication = [(AXBAccessibilityManager *)self _accessibilityLiveCaptionsApplication];
        break;
      default:
        goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (value > 2003)
  {
    if (value == 2004)
    {
      goto LABEL_25;
    }

    if (value != 2006)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (value == 1011)
    {
      _accessibilityUIServerApplication = [(AXBAccessibilityManager *)self _accessibilityInputUIApplication];
      goto LABEL_34;
    }

    if (value != 2001)
    {
      goto LABEL_35;
    }

    if (objc_opt_respondsToSelector())
    {
      _accessibilityUIServerApplication = [elementCopy accessibilityLabel];
LABEL_34:
      v7 = _accessibilityUIServerApplication;
      goto LABEL_35;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    _accessibilityUIServerApplication = [elementCopy accessibilityValue];
    goto LABEL_34;
  }

LABEL_25:
  if (objc_opt_respondsToSelector())
  {
    _accessibilityUIServerApplication = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(elementCopy, "accessibilityTraits")}];
    goto LABEL_34;
  }

  v7 = 0;
LABEL_35:

  return v7;
}

- (BOOL)_iosAccessibilityPerformAction:(int)action withValue:(id)value fencePort:(unsigned int)port
{
  v141 = *MEMORY[0x29EDCA608];
  valueCopy = value;
  v8 = valueCopy;
  v9 = 0;
  if (action <= 5099)
  {
    switch(action)
    {
      case 5001:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 doubleValue];
          [(AXBAccessibilityManager *)self _releasePendingEvents:?];
          goto LABEL_59;
        }

        v9 = 0;
        goto LABEL_60;
      case 5002:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v9 = 1;
          _AXLogWithFacility();
          goto LABEL_60;
        }

        v78 = [MEMORY[0x29EDBDF58] representationWithData:v8];
        [(AXBAccessibilityManager *)self _accessibilityRepostEvent:v78];
LABEL_48:

        break;
      case 5003:
        setCaptureMode([valueCopy intValue]);
        goto LABEL_59;
      case 5004:
        buf[0] = 0;
        objc_opt_class();
        v92 = __UIAccessibilityCastAsClass();
        v93 = [v92 count];

        if (v93 != 3)
        {
          goto LABEL_59;
        }

        v94 = [v8 objectAtIndex:0];
        [v94 pointValue];
        v96 = v95;
        v98 = v97;

        v9 = 1;
        v99 = [v8 objectAtIndex:1];
        [v99 floatValue];
        v101 = v100;

        v102 = [v8 objectAtIndex:2];
        unsignedIntValue = [v102 unsignedIntValue];

        [(AXBAccessibilityManager *)self _sendFingerEvent:1 location:0 force:unsignedIntValue flags:v96 contextId:v98, v101];
        goto LABEL_60;
      case 5005:
        buf[0] = 0;
        objc_opt_class();
        v53 = __UIAccessibilityCastAsClass();
        v54 = [v53 count];

        if (v54 != 3)
        {
          goto LABEL_59;
        }

        v55 = [v8 objectAtIndex:0];
        [v55 pointValue];
        v57 = v56;
        v59 = v58;

        v60 = [v8 objectAtIndex:1];
        [v60 floatValue];
        v62 = v61;

        v63 = [v8 objectAtIndex:2];
        unsignedIntValue2 = [v63 unsignedIntValue];

        selfCopy2 = self;
        v66 = 2;
        v67 = v57;
        v68 = v59;
        v69 = v62;
        goto LABEL_31;
      case 5006:
        buf[0] = 0;
        objc_opt_class();
        v70 = __UIAccessibilityCastAsClass();
        v71 = [v70 count];

        if (v71 != 2)
        {
          goto LABEL_59;
        }

        v72 = [v8 objectAtIndex:0];
        [v72 pointValue];
        v74 = v73;
        v76 = v75;

        v77 = [v8 objectAtIndex:1];
        unsignedIntValue2 = [v77 unsignedIntValue];

        v69 = 0.0;
        selfCopy2 = self;
        v66 = 6;
        v67 = v74;
        v68 = v76;
LABEL_31:
        [(AXBAccessibilityManager *)selfCopy2 _sendFingerEvent:v66 location:0 force:unsignedIntValue2 flags:v67 contextId:v68, v69];
        goto LABEL_38;
      case 5007:
        [(AXBAccessibilityManager *)self _sendCancelTouchEvent];
        goto LABEL_59;
      case 5008:
        buf[0] = 0;
        objc_opt_class();
        v78 = __UIAccessibilityCastAsClass();
        v104 = [v78 objectForKey:*MEMORY[0x29EDBDBB0]];
        [v104 pointValue];
        v106 = v105;
        v108 = v107;

        v109 = [v78 objectForKey:*MEMORY[0x29EDBDBA8]];
        v110 = [v78 objectForKey:*MEMORY[0x29EDBDBC0]];
        v111 = [v78 objectForKey:*MEMORY[0x29EDBDB98]];
        v112 = [v78 objectForKey:*MEMORY[0x29EDBDBB8]];
        v113 = [v78 objectForKey:*MEMORY[0x29EDBDBA0]];
        v114 = v113;
        v115 = &unk_2A21217E0;
        if (v113)
        {
          v115 = v113;
        }

        v116 = v115;

        v117 = AXLogCommon();
        if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v140 = v8;
          _os_log_impl(&dword_29BBBD000, v117, OS_LOG_TYPE_INFO, "Simulating press: %@", buf, 0xCu);
        }

        unsignedIntValue3 = [v110 unsignedIntValue];
        [v111 floatValue];
        v120 = v119;
        [v109 floatValue];
        v122 = v121;
        unsignedIntValue4 = [v112 unsignedIntValue];
        unsignedIntValue5 = [v116 unsignedIntValue];
        v125 = v116;
        v126 = v109;
        v127 = unsignedIntValue5;

        LODWORD(v128) = v120;
        [(AXBAccessibilityManager *)self simulatePressAtPoint:unsignedIntValue3 withContextId:unsignedIntValue4 withDelay:v127 withForce:v106 withSecureName:v108 fingerIndex:v128, v122];

        goto LABEL_48;
      case 5009:
        -[AXBAccessibilityManager _setDeviceOrientationCapability:](self, "_setDeviceOrientationCapability:", [valueCopy BOOLValue]);
        goto LABEL_59;
      case 5010:
        mEMORY[0x29EDBDFC0] = [MEMORY[0x29EDBDFC0] sharedInstance];
        [mEMORY[0x29EDBDFC0] userEventOccurred];
        goto LABEL_58;
      case 5017:
        buf[0] = 0;
        objc_opt_class();
        v35 = __UIAccessibilityCastAsClass();
        v36 = [v35 count];

        if (v36 != 5)
        {
          goto LABEL_59;
        }

        v37 = v8;
        v38 = [v37 objectAtIndexedSubscript:0];
        [v38 pointValue];
        v40 = v39;
        v42 = v41;

        v43 = [v37 objectAtIndexedSubscript:1];
        [v43 floatValue];
        v45 = v44;

        v46 = [v37 objectAtIndexedSubscript:2];
        [v46 floatValue];
        v48 = v47;

        v49 = [v37 objectAtIndexedSubscript:3];
        [v49 floatValue];
        v51 = v50;

        v52 = [v37 objectAtIndexedSubscript:4];

        unsignedIntValue6 = [v52 unsignedIntValue];
        selfCopy5 = self;
        v32 = 1;
        goto LABEL_36;
      case 5018:
        buf[0] = 0;
        objc_opt_class();
        v79 = __UIAccessibilityCastAsClass();
        v80 = [v79 count];

        if (v80 != 5)
        {
          goto LABEL_59;
        }

        v81 = v8;
        v82 = [v81 objectAtIndexedSubscript:0];
        [v82 pointValue];
        v40 = v83;
        v42 = v84;

        v85 = [v81 objectAtIndexedSubscript:1];
        [v85 floatValue];
        v45 = v86;

        v87 = [v81 objectAtIndexedSubscript:2];
        [v87 floatValue];
        v48 = v88;

        v89 = [v81 objectAtIndexedSubscript:3];
        [v89 floatValue];
        v51 = v90;

        v91 = [v81 objectAtIndexedSubscript:4];

        unsignedIntValue6 = [v91 unsignedIntValue];
        selfCopy5 = self;
        v32 = 2;
LABEL_36:
        v33 = v40;
        v34 = v42;
        v28 = v45;
        v29 = v48;
        v30 = v51;
        goto LABEL_37;
      case 5019:
        buf[0] = 0;
        objc_opt_class();
        v18 = __UIAccessibilityCastAsClass();
        v19 = [v18 count];

        if (v19 != 2)
        {
          goto LABEL_59;
        }

        v20 = v8;
        v21 = [v20 objectAtIndexedSubscript:0];
        [v21 pointValue];
        v23 = v22;
        v25 = v24;

        v26 = [v20 objectAtIndexedSubscript:1];

        unsignedIntValue6 = [v26 unsignedIntValue];
        v28 = 0.0;
        v29 = 0.0;
        v30 = 0.0;
        selfCopy5 = self;
        v32 = 6;
        v33 = v23;
        v34 = v25;
LABEL_37:
        [(AXBAccessibilityManager *)selfCopy5 _sendStylusEvent:v32 location:0 force:unsignedIntValue6 altitude:v33 azimuth:v34 flags:v28 contextId:v29, v30];
LABEL_38:
        v9 = 1;
        goto LABEL_60;
      case 5022:
        unsetCaptureMode([valueCopy intValue]);
        goto LABEL_59;
      default:
        goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (action <= 5104)
  {
    if (action <= 5101)
    {
      if (action == 5100)
      {
        mEMORY[0x29EDBDFC0] = [MEMORY[0x29EDBDF58] buttonRepresentationWithType:1218];
        v11 = MEMORY[0x29EDBDF58];
        v12 = 1219;
      }

      else
      {
        mEMORY[0x29EDBDFC0] = [MEMORY[0x29EDBDF58] buttonRepresentationWithType:1032];
        v11 = MEMORY[0x29EDBDF58];
        v12 = 1033;
      }
    }

    else if (action == 5102)
    {
      mEMORY[0x29EDBDFC0] = [MEMORY[0x29EDBDF58] buttonRepresentationWithType:1200];
      v11 = MEMORY[0x29EDBDF58];
      v12 = 1201;
    }

    else if (action == 5103)
    {
      mEMORY[0x29EDBDFC0] = [MEMORY[0x29EDBDF58] buttonRepresentationWithType:1202];
      v11 = MEMORY[0x29EDBDF58];
      v12 = 1203;
    }

    else
    {
      mEMORY[0x29EDBDFC0] = [MEMORY[0x29EDBDF58] buttonRepresentationWithType:1204];
      v11 = MEMORY[0x29EDBDF58];
      v12 = 1205;
    }

    goto LABEL_57;
  }

  if (action <= 5107)
  {
    if (action == 5105)
    {
      mEMORY[0x29EDBDFC0] = [MEMORY[0x29EDBDF58] buttonRepresentationWithType:1206];
      v11 = MEMORY[0x29EDBDF58];
      v12 = 1207;
    }

    else if (action == 5106)
    {
      mEMORY[0x29EDBDFC0] = [MEMORY[0x29EDBDF58] buttonRepresentationWithType:1216];
      v11 = MEMORY[0x29EDBDF58];
      v12 = 1217;
    }

    else
    {
      mEMORY[0x29EDBDFC0] = [MEMORY[0x29EDBDF58] buttonRepresentationWithType:1222];
      v11 = MEMORY[0x29EDBDF58];
      v12 = 1223;
    }

    goto LABEL_57;
  }

  switch(action)
  {
    case 5108:
      mEMORY[0x29EDBDFC0] = [MEMORY[0x29EDBDF58] buttonRepresentationWithType:1224];
      v11 = MEMORY[0x29EDBDF58];
      v12 = 1224;
LABEL_57:
      v131 = [v11 buttonRepresentationWithType:v12];
      mEMORY[0x29EDBDF60] = [MEMORY[0x29EDBDF60] sharedManager];
      [mEMORY[0x29EDBDF60] sendHIDSystemEvent:mEMORY[0x29EDBDFC0] repostCreatorHIDEvent:0 senderID:0x8000000817319375];
      [mEMORY[0x29EDBDF60] sendHIDSystemEvent:v131 repostCreatorHIDEvent:0 senderID:0x8000000817319375];

      goto LABEL_58;
    case 5109:
      mEMORY[0x29EDBDFC0] = [MEMORY[0x29EDBDF58] buttonRepresentationWithType:1216];
      v129 = [MEMORY[0x29EDBDF58] buttonRepresentationWithType:1217];
      mEMORY[0x29EDBDF60]2 = [MEMORY[0x29EDBDF60] sharedManager];
      [mEMORY[0x29EDBDF60]2 sendHIDSystemEvent:mEMORY[0x29EDBDFC0] repostCreatorHIDEvent:0 senderID:0x8000000817319375];
      v137 = mEMORY[0x29EDBDF60]2;
      v138 = v129;
      v15 = v129;
      v16 = mEMORY[0x29EDBDF60]2;
      AXPerformBlockOnMainThreadAfterDelay();

      v17 = v137;
      goto LABEL_54;
    case 5110:
      mEMORY[0x29EDBDFC0] = [MEMORY[0x29EDBDF58] buttonRepresentationWithType:1222];
      v13 = [MEMORY[0x29EDBDF58] buttonRepresentationWithType:1223];
      mEMORY[0x29EDBDF60]3 = [MEMORY[0x29EDBDF60] sharedManager];
      [mEMORY[0x29EDBDF60]3 sendHIDSystemEvent:mEMORY[0x29EDBDFC0] repostCreatorHIDEvent:0 senderID:0x8000000817319375];
      v135 = mEMORY[0x29EDBDF60]3;
      v136 = v13;
      v15 = v13;
      v16 = mEMORY[0x29EDBDF60]3;
      AXPerformBlockOnMainThreadAfterDelay();

      v17 = v135;
LABEL_54:

LABEL_58:
LABEL_59:
      v9 = 1;
      break;
  }

LABEL_60:

  v133 = *MEMORY[0x29EDCA608];
  return v9;
}

- (id)_iosAccessibilityAttributeValue:(int64_t)value forParameter:(id)parameter
{
  parameterCopy = parameter;
  v7 = parameterCopy;
  v8 = 0;
  if (value > 91504)
  {
    if (value <= 91506)
    {
      if (value == 91505)
      {
        objc_opt_class();
        v70 = __UIAccessibilityCastAsClass();
        v71 = [v70 count];

        if (v71 >= 2)
        {
          v11 = v7;
          v72 = [v11 objectAtIndexedSubscript:0];
          [v72 rectValue];
          v74 = v73;
          v76 = v75;
          v78 = v77;
          v80 = v79;

          v81 = [v11 objectAtIndexedSubscript:1];
          unsignedIntValue = [v81 unsignedIntValue];

          if ([v11 count] < 3)
          {
            unsignedIntValue2 = 0;
          }

          else
          {
            v83 = [v11 objectAtIndexedSubscript:2];
            unsignedIntValue2 = [v83 unsignedIntValue];
          }

          v89 = MEMORY[0x29EDBA168];
          [(AXBAccessibilityManager *)self accessibilityConvertHostedViewFrame:unsignedIntValue fromContextId:unsignedIntValue2 displayId:v74, v76, v78, v80];
          goto LABEL_48;
        }

LABEL_39:
        v8 = 0;
        goto LABEL_54;
      }

      [parameterCopy pointValue];
      v34 = v33;
      v36 = v35;
      if ([(AXBAccessibilityManager *)self _accessibilityDisplayRequiresRotateForPoints:0])
      {
        v34 = AXRotateToScreen();
        v36 = v37;
      }

      v38 = +[AXBEventManager sharedManager];
      windowServer = [v38 windowServer];
      v40 = [windowServer contextIdAtPosition:{v34, v36}];

      v26 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v40];
    }

    else
    {
      if (value == 91507)
      {
        objc_opt_class();
        v61 = __UIAccessibilityCastAsClass();
        v62 = [v61 count];

        if (v62)
        {
          v11 = v7;
          v63 = [v11 objectAtIndexedSubscript:0];
          [v63 pointValue];
          v65 = v64;
          v67 = v66;

          if ([v11 count] == 2)
          {
            v68 = [v11 objectAtIndexedSubscript:1];
            unsignedIntValue3 = [v68 unsignedIntValue];
          }

          else
          {
            unsignedIntValue3 = 0;
          }

          v87 = [(AXBAccessibilityManager *)self windowServerDisplayForDisplayId:unsignedIntValue3];
          if ([(AXBAccessibilityManager *)self _accessibilityDisplayRequiresRotateForPoints:v87])
          {
            v65 = AXRotateToScreen();
            v67 = v88;
          }

          v8 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{objc_msgSend(v87, "contextIdAtPosition:", v65, v67)}];

          goto LABEL_53;
        }

        goto LABEL_39;
      }

      if (value != 91508)
      {
        if (value != 91511)
        {
          goto LABEL_54;
        }

        objc_opt_class();
        v9 = __UIAccessibilityCastAsClass();
        v10 = [v9 count];

        if (v10 >= 2)
        {
          v11 = v7;
          v12 = [v11 objectAtIndexedSubscript:0];
          [v12 rectValue];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;

          v21 = [v11 objectAtIndexedSubscript:1];
          unsignedIntValue4 = [v21 unsignedIntValue];

          if ([v11 count] < 3)
          {
            unsignedIntValue5 = 0;
          }

          else
          {
            v23 = [v11 objectAtIndexedSubscript:2];
            unsignedIntValue5 = [v23 unsignedIntValue];
          }

          v89 = MEMORY[0x29EDBA168];
          [(AXBAccessibilityManager *)self accessibilityConvertHostedViewFrame:unsignedIntValue4 toContextId:unsignedIntValue5 displayId:v14, v16, v18, v20];
LABEL_48:
          v90 = [v89 valueWithRect:?];
LABEL_49:
          v8 = v90;
          goto LABEL_53;
        }

        goto LABEL_39;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_39;
      }

      v85 = [v7 objectForKey:@"contextId"];
      unsignedIntValue6 = [v85 unsignedIntValue];

      v26 = [MEMORY[0x29EDBA070] numberWithInt:{-[AXBAccessibilityManager _accessibilityApplicationForContextId:](self, "_accessibilityApplicationForContextId:", unsignedIntValue6)}];
    }

LABEL_38:
    v8 = v26;
    goto LABEL_54;
  }

  if (value > 91502)
  {
    if (value == 91503)
    {
      objc_opt_class();
      v48 = __UIAccessibilityCastAsClass();
      v49 = [v48 count];

      if (v49 < 2)
      {
        goto LABEL_39;
      }

      v11 = v7;
      v29 = [v11 objectAtIndexedSubscript:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v50 = [v11 objectAtIndexedSubscript:1];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v52 = [v11 objectAtIndexedSubscript:0];
          [v52 pointValue];
          v54 = v53;
          v56 = v55;

          v57 = [v11 objectAtIndexedSubscript:1];
          unsignedIntValue7 = [v57 unsignedIntValue];

          if ([v11 count] < 3)
          {
            unsignedIntValue8 = 0;
          }

          else
          {
            v59 = [v11 objectAtIndexedSubscript:2];
            unsignedIntValue8 = [v59 unsignedIntValue];
          }

          v101 = MEMORY[0x29EDBA168];
          [(AXBAccessibilityManager *)self _accessibilityConvertHostedViewPoint:unsignedIntValue7 fromContextId:unsignedIntValue8 displayId:v54, v56];
          goto LABEL_64;
        }

        goto LABEL_52;
      }
    }

    else
    {
      objc_opt_class();
      v27 = __UIAccessibilityCastAsClass();
      v28 = [v27 count];

      if (v28 < 2)
      {
        goto LABEL_39;
      }

      v11 = v7;
      v29 = [v11 objectAtIndexedSubscript:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = [v11 objectAtIndexedSubscript:1];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v11 count] < 3)
          {

LABEL_58:
            v92 = [v11 objectAtIndexedSubscript:0];
            [v92 pointValue];
            v94 = v93;
            v96 = v95;

            v97 = [v11 objectAtIndexedSubscript:1];
            unsignedIntValue9 = [v97 unsignedIntValue];

            if ([v11 count] < 3)
            {
              unsignedIntValue10 = 0;
            }

            else
            {
              v99 = [v11 objectAtIndexedSubscript:2];
              unsignedIntValue10 = [v99 unsignedIntValue];
            }

            v101 = MEMORY[0x29EDBA168];
            [(AXBAccessibilityManager *)self accessibilityConvertHostedViewPoint:unsignedIntValue9 toContextId:unsignedIntValue10 displayId:v94, v96];
LABEL_64:
            v90 = [v101 valueWithPoint:?];
            goto LABEL_49;
          }

          v31 = [v11 objectAtIndexedSubscript:2];
          objc_opt_class();
          v32 = objc_opt_isKindOfClass();

          if (v32)
          {
            goto LABEL_58;
          }

LABEL_52:
          v8 = 0;
          goto LABEL_53;
        }
      }
    }

    goto LABEL_52;
  }

  if (value != 91500)
  {
    if (value != 91501)
    {
      goto LABEL_54;
    }

    [parameterCopy pointValue];
    v25 = MEMORY[0x29EDBA168];
    [(AXBAccessibilityManager *)self accessibilityConvertHostedViewPoint:0 toContextId:0 displayId:?];
    v26 = [v25 valueWithPoint:?];
    goto LABEL_38;
  }

  v8 = [objc_allocWithZone(MEMORY[0x29EDB8E00]) init];
  v41 = [v7 objectForKey:@"point"];
  [v41 pointValue];

  v42 = [v7 objectForKey:@"displayId"];
  unsignedIntValue11 = [v42 unsignedIntValue];

  v11 = [(AXBAccessibilityManager *)self windowServerDisplayForDisplayId:unsignedIntValue11];
  v44 = [v11 contextIdAtPosition:AXRotateToScreen()];
  v45 = [(AXBAccessibilityManager *)self _accessibilityApplicationForContextId:v44];
  v46 = [MEMORY[0x29EDBA070] numberWithInt:v45];
  [v8 setObject:v46 forKey:@"pid"];

  v47 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v44];
  [v8 setObject:v47 forKey:@"contextId"];

LABEL_53:
LABEL_54:

  return v8;
}

- (BOOL)_accessibilityDisplayRequiresRotateForPoints:(id)points
{
  name = [points name];
  v6 = [name isEqualToString:@"TVOut"];
  if (v6)
  {
    tVOutDisplay = [MEMORY[0x29EDBBA88] TVOutDisplay];
    if ([tVOutDisplay isExternal])
    {
      LOBYTE(v7) = 0;
LABEL_9:

      goto LABEL_10;
    }

    if (points)
    {
      LOBYTE(v7) = 1;
      goto LABEL_9;
    }
  }

  else if (points)
  {
    LOBYTE(v7) = 1;
    goto LABEL_10;
  }

  mainDisplay = [MEMORY[0x29EDBBA88] mainDisplay];
  v7 = [mainDisplay isExternal] ^ 1;

  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v7;
}

- (double)_processPassiveEventQueue
{
  [_PassiveEventLock lock];
  if ([_SBAXPassiveEventQueue count])
  {
    distantFuture = [_SBAXPassiveEventQueue objectAtIndex:0];
    Current = CFAbsoluteTimeGetCurrent();
    [distantFuture fireTime];
    if (Current >= v5)
    {
      [_SBAXPassiveEventQueue removeObjectAtIndex:0];
      [_PassiveEventLock unlock];
      value = [distantFuture value];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = +[AXBEventManager sharedManager];
        [v10 dispatchEventRepresentationToClient:value];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = malloc_type_calloc(1uLL, [value length], 0x98479643uLL);
          [value getBytes:v11 length:{objc_msgSend(value, "length")}];
          v12 = +[AXBEventManager sharedManager];
          [v12 machPortForPoint:{v11[1], v11[2]}];

          GSSendEvent();
          free(v11);
        }
      }

      [(AXBAccessibilityManager *)self _processPassiveEventQueue];
      v7 = v13;
    }

    else
    {
      [_PassiveEventLock unlock];
      [distantFuture fireTime];
      v7 = v6 - CFAbsoluteTimeGetCurrent();
    }
  }

  else
  {
    [_PassiveEventLock unlock];
    distantFuture = [MEMORY[0x29EDB8DB0] distantFuture];
    [distantFuture timeIntervalSinceNow];
    v7 = v8;
  }

  return v7;
}

- (void)_releasePendingEvents:(double)events
{
  v18 = *MEMORY[0x29EDCA608];
  [_PassiveEventLock lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = _SBAXPassiveEventQueue;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [v9 fireTime];
        if (v10 <= events)
        {
          [v9 fireTime];
          [v9 setFireTime:v11 - *&_SBAXPassiveListenDelay];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  if (_SBAXPassiveRunLoopRef)
  {
    CFRunLoopStop(_SBAXPassiveRunLoopRef);
  }

  [_PassiveEventLock unlock];
  v12 = *MEMORY[0x29EDCA608];
}

- (void)_startPassiveResendThread
{
  currentThread = [MEMORY[0x29EDBA108] currentThread];
  [currentThread setName:@"AXPassiveResentThread"];

  [_PassiveEventLock lock];
  _SBAXPassiveSourceRef = CFRunLoopSourceCreate(0, 0, &v7);
  _SBAXPassiveRunLoopRef = CFRunLoopGetCurrent();
  v4 = *MEMORY[0x29EDB8FC0];
  CFRunLoopAddSource(_SBAXPassiveRunLoopRef, _SBAXPassiveSourceRef, *MEMORY[0x29EDB8FC0]);
  CFRunLoopSourceSignal(_SBAXPassiveSourceRef);
  [_PassiveEventLock unlock];
  while (1)
  {
    v5 = objc_autoreleasePoolPush();
    [(AXBAccessibilityManager *)self _processPassiveEventQueue];
    CFRunLoopRunInMode(v4, v6, 1u);
    objc_autoreleasePoolPop(v5);
  }
}

- (BOOL)_screenReaderCapture:(id)capture
{
  captureCopy = capture;
  v5 = captureCopy;
  if (captureCopy)
  {
    originalType = [captureCopy originalType];
    if ([(AXBAccessibilityManager *)self _handleItemChooserVisible:originalType])
    {
      [v5 setAdditionalFlags:{objc_msgSend(v5, "additionalFlags") | 0x2000000}];
      BKPostAXEvent(v5, 0);
LABEL_7:
      voiceOverIgnoresTrackpad = 1;
      goto LABEL_8;
    }

    if (originalType == 50 && (_SBAXDeviceOrientationCapabilityEnabled & 1) == 0)
    {
      goto LABEL_7;
    }

    if ((originalType - 1000) >= 2)
    {
      if (originalType == 3200)
      {
        voiceOverIgnoresTrackpad = self->_voiceOverIgnoresTrackpad;
        goto LABEL_8;
      }

      IsKeyboardKey = AXEventTypeIsKeyboardKey();
      v9 = 0;
      LOBYTE(v10) = 1;
      if (originalType != 3001 && (IsKeyboardKey & 1) == 0)
      {
        if ((originalType - 10) >= 3)
        {
          if ((originalType - 1025) <= 3)
          {
            v10 = 4u >> ((originalType - 1) & 0xF);
          }
        }

        else
        {
          LOBYTE(v10) = 0;
        }

        v9 = 1;
      }
    }

    else
    {
      v9 = 1;
      LOBYTE(v10) = 1;
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (originalType == 3001 && Current - *&_screenReaderCapture__LastUserEventSent > 4.0)
    {
      [(AXBAccessibilityManager *)self _userEventOccurred];
      _screenReaderCapture__LastUserEventSent = CFAbsoluteTimeGetCurrent();
    }

    if (v9)
    {
      [v5 setAdditionalFlags:{objc_msgSend(v5, "additionalFlags") | 0x2000000}];
      BKPostAXEvent(v5, v10 & 1);
    }

    voiceOverIgnoresTrackpad = v10 ^ 1;
  }

  else
  {
    voiceOverIgnoresTrackpad = 0;
  }

LABEL_8:

  return voiceOverIgnoresTrackpad & 1;
}

- (void)_undoContextShiftedPoints:(id)points
{
  v19 = *MEMORY[0x29EDCA608];
  pointsCopy = points;
  if ([pointsCopy type] == 3001)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    handInfo = [pointsCopy handInfo];
    paths = [handInfo paths];

    v7 = [paths countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(paths);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          pathWindowContextID = [v11 pathWindowContextID];
          [v11 pathLocation];
          [(AXBAccessibilityManager *)self _accessibilityConvertHostedViewPoint:pathWindowContextID fromContextId:0 displayId:?];
          [v11 setPathLocation:?];
        }

        v8 = [paths countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    else
    {
      pathWindowContextID = 0;
    }

    [pointsCopy location];
    [(AXBAccessibilityManager *)self _accessibilityConvertHostedViewPoint:pathWindowContextID fromContextId:0 displayId:?];
    [pointsCopy setLocation:?];
    [pointsCopy windowLocation];
    [(AXBAccessibilityManager *)self _accessibilityConvertHostedViewPoint:pathWindowContextID fromContextId:0 displayId:?];
    [pointsCopy setWindowLocation:?];
  }

  v13 = *MEMORY[0x29EDCA608];
}

- (BOOL)_accessibilityEventTapCallback:(id)callback
{
  callbackCopy = callback;
  v5 = [callbackCopy copy];
  [(AXBAccessibilityManager *)self _undoContextShiftedPoints:v5];
  if ((_SBAXCaptureMode & 0x20) != 0 && ([v5 dataRepresentation], AXPushNotificationToSystemForBroadcast(), *&_SBAXPassiveListenDelay != 0.0) && objc_msgSend(v5, "type", *&_SBAXPassiveListenDelay) == 3001)
  {
    if (!_SBAXPassiveEventQueue)
    {
      v6 = [objc_allocWithZone(MEMORY[0x29EDBA020]) init];
      v7 = _PassiveEventLock;
      _PassiveEventLock = v6;

      v8 = [objc_allocWithZone(MEMORY[0x29EDB8DE8]) init];
      v9 = _SBAXPassiveEventQueue;
      _SBAXPassiveEventQueue = v8;

      [MEMORY[0x29EDBA108] detachNewThreadSelector:sel__startPassiveResendThread toTarget:self withObject:0];
    }

    v10 = objc_opt_new();
    [v10 setValue:callbackCopy];
    [v10 setFireTime:CFAbsoluteTimeGetCurrent() + *&_SBAXPassiveListenDelay];
    [_PassiveEventLock lock];
    [_SBAXPassiveEventQueue addObject:v10];
    if (_SBAXPassiveRunLoopRef)
    {
      CFRunLoopStop(_SBAXPassiveRunLoopRef);
    }

    [_PassiveEventLock unlock];

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = _SBAXCaptureMode;
  if ((_SBAXCaptureMode & 8) != 0)
  {
    v11 = [(AXBAccessibilityManager *)self _gaxCapture:v5];
    v12 = _SBAXCaptureMode;
  }

  if ((v12 & 4) != 0 && !v11)
  {
    v11 = [(AXBAccessibilityManager *)self _inspectorCapture:v5];
    v12 = _SBAXCaptureMode;
  }

  if ((v12 & 2) != 0 && !v11)
  {
    v11 = [(AXBAccessibilityManager *)self _assistiveTouchCapture:v5];
    v12 = _SBAXCaptureMode;
  }

  if ((v12 & 1) != 0 && !v11)
  {
    v11 = [(AXBAccessibilityManager *)self _screenReaderCapture:v5];
    v12 = _SBAXCaptureMode;
  }

  if ((v12 & 0x10) != 0 && !v11)
  {
    v11 = [(AXBAccessibilityManager *)self _axMenuCapture:v5];
  }

  return v11;
}

- (void)_accessibilitySystemAppApplicationPid
{
  v11 = *MEMORY[0x29EDCA608];
  v5 = [MEMORY[0x29EDBA070] numberWithInt:a2];
  v7 = 138412546;
  selfCopy = self;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_29BBBD000, a3, OS_LOG_TYPE_ERROR, "Pid from system app was not valid: %@ %@", &v7, 0x16u);

  v6 = *MEMORY[0x29EDCA608];
}

@end