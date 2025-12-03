@interface AXBackBoardGlue
+ (CGPoint)displayConvertFromCAScreen:(CGPoint)screen withDisplayIntegerId:(unsigned int)id;
+ (CGPoint)displayConvertToCAScreen:(CGPoint)screen withDisplayIntegerId:(unsigned int)id;
+ (int)inputUIPid;
+ (void)_applyExtendedHitTestInformationForCAScreenCoordinates:(CGPoint)coordinates displayUUID:(id)d toPathAttributes:(id)attributes secureName:(unsigned int)name excludeContextIDs:(id)ds;
+ (void)_repeatAggregateStatistics;
+ (void)initialize;
+ (void)kickoffAggregateStatistics;
+ (void)sendUserEventOccurred;
+ (void)setLockScreenDimTimerEnabled:(BOOL)enabled;
- (unsigned)contextIdForDisplayPoint:(CGPoint)point;
- (void)setAccessibilityUIServerPid:(int)pid;
- (void)setAssistiveTouchPid:(int)pid;
- (void)setFullKeyboardAccessDaemonPID:(int)d;
- (void)setIsSpeakScreenHighlightVisible:(BOOL)visible;
- (void)userEventOccurred;
- (void)zoomListenerRegistered;
@end

@implementation AXBackBoardGlue

+ (void)initialize
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __29__AXBackBoardGlue_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, block);
  }
}

void __29__AXBackBoardGlue_initialize__block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v3 = dispatch_queue_create("BBAXLoadingQueue", v2);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __29__AXBackBoardGlue_initialize__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  dispatch_sync(v3, block);
}

void __29__AXBackBoardGlue_initialize__block_invoke_2(uint64_t a1)
{
  v2 = AXLogBackboardServer();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29BBBD000, v2, OS_LOG_TYPE_DEFAULT, "Loading AXBackBoardGlue", buf, 2u);
  }

  v3 = objc_alloc_init(AXBackBoardGlue);
  v4 = SharedInstance;
  SharedInstance = v3;

  _AXSSetWriteableClient();
  v5 = SharedInstance;
  v6 = +[AXBackBoardServerInstance backBoardServerInstance];
  [v6 setDelegate:v5];

  BKAccessibilityClass = NSClassFromString(&cfstr_Bkaccessibilit.isa);
  v7 = [MEMORY[0x29EDBDF60] sharedManager];
  [v7 setInstallationGSCallback:&__block_literal_global_7];

  v8 = [MEMORY[0x29EDBDF60] sharedManager];
  [v8 setInstallationHIDCallback:&__block_literal_global_299];

  v9 = [MEMORY[0x29EDBDF60] sharedManager];
  [v9 setInstallationEventRepPost:&__block_literal_global_302_0];

  v10 = +[_TtC9BackBoard16AXBMedinaManager shared];
  v11 = +[AXBLocalizationCaptionController controller];
  [v11 initializeMonitor];

  if (AXIsLookingGlassAvailable())
  {
    +[AXBLookingGlassManager initializeMonitor];
  }

  +[AXBSpeakThisManager initializeMonitor];
  +[AXBHomeClickController initializeMonitor];
  +[AXBZoomTouchManager initializeZoomMonitor];
  +[AXBHoverTextManager initializeMonitor];
  +[AXBMotionCuesManager initializeMonitor];
  if (AXDeviceSupportsHapticMusic())
  {
    +[AXBHapticMusicManager initializeMonitor];
  }

  else
  {
    v12 = AXLogHapticMusic();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_29BBBD000, v12, OS_LOG_TYPE_INFO, "Device doesn't support Haptic Music", buf, 2u);
    }
  }

  if (AXDeviceSupportsLiveSpeech())
  {
    +[AXBLiveSpeechManager initializeMonitor];
  }

  if (AXDeviceSupportsLiveCaptions())
  {
    +[AXBLiveCaptionsManager initializeMonitor];
  }

  +[AXBGuidedAccessManager initializeMonitor];
  if (AXDeviceSupportsAssistiveTouch())
  {
    +[AXBAssistiveTouchManager initializeMonitor];
  }

  else if (_AXSAssistiveTouchEnabled())
  {
    _AXSAssistiveTouchSetEnabled();
  }

  +[AXBTouchAccommodationsController initializeMonitor];
  +[AXBHardwareManager initializeMonitor];
  v13 = +[AXBBlueLightManager sharedManager];
  v14 = +[AXBOpaqueTouchSettingsManager sharedInstance];
  [v14 start];

  IsPhone = AXDeviceIsPhone();
  v16 = AXLogBackTap();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (IsPhone)
  {
    if (v17)
    {
      *buf = 0;
      _os_log_impl(&dword_29BBBD000, v16, OS_LOG_TYPE_DEFAULT, "Device is phone; initializing back tap monitor", buf, 2u);
    }

    +[AXBBackTapMonitor initializeMonitor];
  }

  else
  {
    if (v17)
    {
      *buf = 0;
      _os_log_impl(&dword_29BBBD000, v16, OS_LOG_TYPE_DEFAULT, "Device is not phone; not initializing back tap monitor", buf, 2u);
    }
  }

  +[AXBSoundDetectionManager initializeManager];
  +[AXBAVSDetectionManager initializeManager];
  v18 = +[_TtC9BackBoard25AXBNameRecognitionManager shared];
  [v18 initializeMonitoring];

  +[AXBDisplayWakeManager initializeManager];
  if (AXIsInternalInstall())
  {
    +[AXBInternalBundleLoaderManager initializeMonitor];
  }

  if (_AXSTwiceRemoteScreenEnabled())
  {
    v19 = AXLogTwiceRemoteScreen();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __29__AXBackBoardGlue_initialize__block_invoke_2_cold_1(v19);
    }

    _AXSTwiceRemoteScreenSetEnabled();
  }

  +[AXBTwiceRemoteScreenManager initializeMonitor];
  v20 = dispatch_time(0, 900000000000);
  v21 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __29__AXBackBoardGlue_initialize__block_invoke_328;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  dispatch_after(v20, v21, block);

  +[AXBDisplayFilterManager initializeMonitor];
  if (AXDeviceSupportsGuestPass())
  {
    v22 = AXGuestPassManager();
    [v22 initializeMonitor];
  }

  +[AXBAccessibilityManager initializeAccessibilityMonitor];
  v23 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v23 performValidations:&__block_literal_global_335 withPreValidationHandler:&__block_literal_global_348 postValidationHandler:&__block_literal_global_358 safeCategoryInstallationHandler:&__block_literal_global_362];

  AXBeginListeningToUserDefaultsChanges();
}

uint64_t __29__AXBackBoardGlue_initialize__block_invoke_2_294(uint64_t a1)
{
  v2 = NSClassFromString(&cfstr_Bkaccessibilit.isa);
  v3 = *(a1 + 32);

  return [(objc_class *)v2 _accessibilitySetEventTapCallback:v3];
}

uint64_t __29__AXBackBoardGlue_initialize__block_invoke_4(uint64_t a1)
{
  v2 = NSClassFromString(&cfstr_Bkaccessibilit.isa);
  v3 = *(a1 + 32);

  return [(objc_class *)v2 _accessibilitySetHIDEventTapCallback:v3];
}

void __29__AXBackBoardGlue_initialize__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[AXBEventManager sharedManager];
  [v3 dispatchEventRepresentationToClient:v2];
}

uint64_t __29__AXBackBoardGlue_initialize__block_invoke_2_332(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"CMDeviceOrientationManager"];
  [v2 validateClass:@"BKUserEventTimer"];
  [v2 validateClass:@"BKUserEventTimer" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];

  return 1;
}

uint64_t __29__AXBackBoardGlue_initialize__block_invoke_3_346(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AX Backboard"];
  [v2 setOverrideProcessName:@"Backboard"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __29__AXBackBoardGlue_initialize__block_invoke_5_359(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"BKAccelerometerInterfaceAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BKUserEventTimerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUIProgressWindowAccessibility" canInteractWithTargetClass:1];
}

+ (void)_repeatAggregateStatistics
{
  v3 = dispatch_time(0, 86400000000000);
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __45__AXBackBoardGlue__repeatAggregateStatistics__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_after(v3, v4, block);
}

void __45__AXBackBoardGlue__repeatAggregateStatistics__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  [MEMORY[0x29EDBD5F0] updateStatistics];
  [*(a1 + 32) _repeatAggregateStatistics];
  v2 = [MEMORY[0x29EDBD6A8] sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x29EDBD6A8] identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      v8 = _AXStringForArgs();
      if (os_log_type_enabled(v5, v6))
      {
        v10 = 138543362;
        v11 = v8;
        _os_log_impl(&dword_29BBBD000, v5, v6, "%{public}@", &v10, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x29EDCA608];
}

+ (void)kickoffAggregateStatistics
{
  v13 = *MEMORY[0x29EDCA608];
  mEMORY[0x29EDBD6A8] = [MEMORY[0x29EDBD6A8] sharedInstance];
  ignoreLogging = [mEMORY[0x29EDBD6A8] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x29EDBD6A8] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v11 = 138543362;
        v12 = v9;
        _os_log_impl(&dword_29BBBD000, v6, v7, "%{public}@", &v11, 0xCu);
      }
    }
  }

  [MEMORY[0x29EDBD5F0] updateStatistics];
  [self _repeatAggregateStatistics];
  v10 = *MEMORY[0x29EDCA608];
}

+ (void)sendUserEventOccurred
{
  if (sendUserEventOccurred_onceToken != -1)
  {
    +[AXBackBoardGlue sendUserEventOccurred];
  }

  v2 = [sendUserEventOccurred_BKUserEventTimerClass safeValueForKey:@"sharedInstance"];
  v3 = [v2 safeValueForKey:@"_currentMode"];
  intValue = [v3 intValue];

  if (intValue == 1)
  {
    v8 = v2;
    AXPerformSafeBlock();
    v5 = [v8 safeValueForKey:@"notifyOnNextUserEvent"];
  }

  v7 = v2;
  v6 = v2;
  AXPerformSafeBlock();
}

Class __40__AXBackBoardGlue_sendUserEventOccurred__block_invoke()
{
  result = NSClassFromString(&cfstr_Bkusereventtim.isa);
  sendUserEventOccurred_BKUserEventTimerClass = result;
  return result;
}

+ (CGPoint)displayConvertFromCAScreen:(CGPoint)screen withDisplayIntegerId:(unsigned int)id
{
  if (!id)
  {
    server = [MEMORY[0x29EDBBAE0] server];
    displays = [server displays];
    firstObject = [displays firstObject];
    [firstObject displayId];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3010000000;
  v15 = 0;
  v16 = 0;
  v14 = "";
  AXPerformSafeBlock();
  v7 = v12[4];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);
  v9 = v7;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

uint64_t __67__AXBackBoardGlue_displayConvertFromCAScreen_withDisplayIntegerId___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    result = [BKAccessibilityClass _displayConvertFromCAScreen:*(a1 + 56) withDisplayIntegerId:{*(a1 + 40), *(a1 + 48)}];
  }

  else
  {
    result = [BKAccessibilityClass _displayConvertFromCAScreen:{*(a1 + 40), *(a1 + 48)}];
  }

  v5 = *(*(a1 + 32) + 8);
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  return result;
}

+ (CGPoint)displayConvertToCAScreen:(CGPoint)screen withDisplayIntegerId:(unsigned int)id
{
  if (!id)
  {
    server = [MEMORY[0x29EDBBAE0] server];
    displays = [server displays];
    firstObject = [displays firstObject];
    [firstObject displayId];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3010000000;
  v15 = 0;
  v16 = 0;
  v14 = "";
  AXPerformSafeBlock();
  v7 = v12[4];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);
  v9 = v7;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

uint64_t __65__AXBackBoardGlue_displayConvertToCAScreen_withDisplayIntegerId___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    result = [BKAccessibilityClass _displayConvertToCAScreen:*(a1 + 56) withDisplayIntegerId:{*(a1 + 40), *(a1 + 48)}];
  }

  else
  {
    result = [BKAccessibilityClass _displayConvertToCAScreen:{*(a1 + 40), *(a1 + 48)}];
  }

  v5 = *(*(a1 + 32) + 8);
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  return result;
}

+ (void)_applyExtendedHitTestInformationForCAScreenCoordinates:(CGPoint)coordinates displayUUID:(id)d toPathAttributes:(id)attributes secureName:(unsigned int)name excludeContextIDs:(id)ds
{
  dCopy = d;
  attributesCopy = attributes;
  dsCopy = ds;
  v10 = dsCopy;
  v11 = attributesCopy;
  v12 = dCopy;
  AXPerformSafeBlock();
}

- (void)setAssistiveTouchPid:(int)pid
{
  AssistiveTouchPID = pid;
  v3 = +[AXBAccessibilityManager sharedManager];
  [v3 resetAssistiveTouchHitPort];
}

- (void)setFullKeyboardAccessDaemonPID:(int)d
{
  v7 = *MEMORY[0x29EDCA608];
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = d;
    _os_log_impl(&dword_29BBBD000, v4, OS_LOG_TYPE_INFO, "FKA pid: %d", v6, 8u);
  }

  FullKeyboardAccessDaemonPID = d;
  v5 = *MEMORY[0x29EDCA608];
}

- (void)setAccessibilityUIServerPid:(int)pid
{
  AccessibilityUIServerPID = pid;
  v3 = +[AXBAccessibilityManager sharedManager];
  [v3 resetAccessibilityUIHitPort];

  +[AXBSpeakThisManager didUpdateAccessibilityUIServerPID];
}

+ (void)setLockScreenDimTimerEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = [NSClassFromString(&cfstr_Bkusereventtim.isa) safeValueForKey:@"sharedInstance"];
  [v4 _axSetTimerDisabled:!enabledCopy];
}

+ (int)inputUIPid
{
  v2 = [MEMORY[0x29EDC6520] predicateMatchingBundleIdentifier:@"com.apple.InputUI"];
  v3 = [MEMORY[0x29EDC6518] handleForPredicate:v2 error:0];
  v4 = [v3 pid];

  return v4;
}

- (void)zoomListenerRegistered
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter postNotificationName:@"ZoomListenerRegistered" object:0];
}

- (unsigned)contextIdForDisplayPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v5 = +[AXBEventManager sharedManager];
  v6 = [v5 contextIdForPosition:0 displayId:{x, y}];

  return v6;
}

- (void)userEventOccurred
{
  v2 = objc_opt_class();

  [v2 sendUserEventOccurred];
}

- (void)setIsSpeakScreenHighlightVisible:(BOOL)visible
{
  visibleCopy = visible;
  v10 = *MEMORY[0x29EDCA608];
  accessibilityUIServerPid = [(AXBackBoardGlue *)self accessibilityUIServerPid];
  v5 = AXLogSpeakScreen();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (accessibilityUIServerPid)
  {
    if (v6)
    {
      v8 = 67109120;
      v9 = visibleCopy;
      _os_log_impl(&dword_29BBBD000, v5, OS_LOG_TYPE_DEFAULT, "Setting highlight state to visible: %i.", &v8, 8u);
    }
  }

  else if (v6)
  {
    v8 = 67109120;
    v9 = visibleCopy;
    _os_log_impl(&dword_29BBBD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set highlight state to visible %i, but AXUIServer PID wasn't registered. Clearing highlight state.", &v8, 8u);
  }

  _AXSSpeakThisSetHighlightVisible();
  v7 = *MEMORY[0x29EDCA608];
}

@end