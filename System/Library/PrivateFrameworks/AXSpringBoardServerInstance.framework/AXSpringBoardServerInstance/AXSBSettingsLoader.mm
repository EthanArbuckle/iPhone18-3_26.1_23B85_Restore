@interface AXSBSettingsLoader
+ (BOOL)_alreadyRebootedGracefullyOnce;
+ (void)_checkAccessibilityOptionsSetByiTunes;
+ (void)_checkAssistiveTouchSetByiTunes;
+ (void)_checkClosedCaptioningSetByiTunes;
+ (void)_checkContrastSetting;
+ (void)_checkForDataResetFile;
+ (void)_checkInvertColorsSetByiTunes;
+ (void)_checkMonoAudioSetByiTunes;
+ (void)_checkSpeakAutofillSetByiTunes;
+ (void)_checkVoiceOverTouchSetByiTunes;
+ (void)_checkZoomTouchSetByiTunes;
+ (void)_findNoteFromLoginSessionWithCompletion:(id)completion;
+ (void)_gracefulRebootForBrokenHomeButton;
+ (void)_handleLiveListenEventIsListening:(BOOL)listening audioLevel:(double)level;
+ (void)_initializeDelayedSpringBoardSettings;
+ (void)_performValidations;
+ (void)_processStartupSoundEnabled;
+ (void)_registerForHomeButtonBreakage;
+ (void)_registerForHomeButtonBreakageNotification;
+ (void)_registerForNotifications;
+ (void)_setRebootedGracefullyOnce;
+ (void)_setVoiceOverTouchSettings:(unsigned __int8)settings;
+ (void)_startAssistiveTouchForBrokenHomeButton;
+ (void)_updateSpringBoardHelper;
+ (void)bootstrapGuidedAccessIfNeeded;
+ (void)checkAccessibilityOptions;
+ (void)checkScreenContrast;
+ (void)initialize;
- (AXSBSettingsLoader)init;
- (void)_bootstrapSoundDetection;
- (void)_ensureUltronAppVisibility:(BOOL)visibility;
- (void)_handleGuidedAccessManagedConfigurationDidChange:(id)change;
- (void)_hideVoiceOverEnabler;
- (void)_initializeRemoteSettingsListener;
- (void)_makeVoiceOverVibrateWindow;
- (void)_playVOActivationSoundEnded;
- (void)_playVOActivationSoundStarted;
- (void)_reachabilityChanged:(id)changed;
- (void)_registerReachability;
- (void)_showSwipeDetectionEnablerView;
- (void)_showVibrationVoiceOverEnablerView;
- (void)_updateAXSettings;
- (void)_voiceOverEnabled:(id)enabled;
- (void)dealloc;
- (void)swipeDetectorDetectedSwipe;
@end

@implementation AXSBSettingsLoader

+ (void)_updateSpringBoardHelper
{
  if ((_updateSpringBoardHelper_isInitialized & 1) == 0)
  {
    if (AXIsInternalInstall())
    {
      v2 = _AXSTripleClickCopyOptions();
      v3 = _AXSAccessibilityEnabled();
      NSLog(&cfstr_AxUpdateSbServ.isa, v3, [v2 count]);
    }

    +[AXSpringBoardServerHelper initialize];
    _updateSpringBoardHelper_isInitialized = 1;
  }
}

- (void)_updateAXSettings
{
  v2 = objc_opt_class();

  [v2 _updateAXSettings];
}

+ (void)_setVoiceOverTouchSettings:(unsigned __int8)settings
{
  if (settings || _AXSCanDisableApplicationAccessibility())
  {
    _AXSApplicationAccessibilitySetEnabled();
  }

  _AXSVoiceOverTouchSetUsageConfirmed();

  _AXSVoiceOverTouchSetEnabled();
}

+ (void)_checkVoiceOverTouchSetByiTunes
{
  v3 = _AXSVoiceOverTouchEnabled();
  v8 = 0;
  v4 = MEMORY[0x223D72B20](*MEMORY[0x277D81E78], &v8);
  if (v8)
  {
    if (v4)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v7 = 1;
      goto LABEL_12;
    }

    if (v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = v3 == 0;
    }

    if (!v6)
    {
      v7 = 0;
LABEL_12:
      [self _setVoiceOverTouchSettings:v7];
    }
  }
}

+ (void)_checkZoomTouchSetByiTunes
{
  v2 = _AXSZoomTouchEnabled();
  v6 = 0;
  v3 = MEMORY[0x223D72B20](*MEMORY[0x277D81ED8], &v6);
  if (v6)
  {
    v4 = v3 && v2 == 0;
    if (v4 || (!v3 ? (v5 = v2 == 0) : (v5 = 1), !v5))
    {
      _AXSZoomTouchSetEnabled();
    }
  }
}

+ (void)_checkInvertColorsSetByiTunes
{
  v7 = 0;
  v2 = MEMORY[0x223D72B20](*MEMORY[0x277D81DA0], &v7);
  if (v7)
  {
    v3 = v2;
    v4 = _AXSInvertColorsEnabled();
    v5 = v3 && v4 == 0;
    if (v5 || (!v3 ? (v6 = v4 == 0) : (v6 = 1), !v6))
    {
      _AXSInvertColorsSetEnabled();
    }
  }
}

+ (void)_checkAssistiveTouchSetByiTunes
{
  v7 = 0;
  v2 = MEMORY[0x223D72B20](*MEMORY[0x277D81C40], &v7);
  if (v7)
  {
    v3 = v2;
    v4 = _AXSAssistiveTouchEnabled();
    if (v3)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      _AXSAssistiveTouchSetEnabled();
      _AXSAssistiveTouchSetUIEnabled();
    }

    else
    {
      if (v3)
      {
        v6 = 1;
      }

      else
      {
        v6 = v4 == 0;
      }

      if (!v6)
      {
        _AXSAssistiveTouchSetEnabled();
      }
    }
  }
}

+ (void)_checkMonoAudioSetByiTunes
{
  v2 = _AXSMonoAudioEnabled();
  v6 = 0;
  v3 = MEMORY[0x223D72B20](*MEMORY[0x277D81DC0], &v6);
  if (v6)
  {
    v4 = v3 && v2 == 0;
    if (v4 || (!v3 ? (v5 = v2 == 0) : (v5 = 1), !v5))
    {
      _AXSMonoAudioSetEnabled();
    }
  }
}

+ (void)_checkClosedCaptioningSetByiTunes
{
  v2 = 0;
  MEMORY[0x223D72B20](*MEMORY[0x277D81C80], &v2);
  if (v2)
  {
    _AXSClosedCaptionsSetEnabled();
  }
}

+ (void)_checkSpeakAutofillSetByiTunes
{
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  speakCorrectionsEnabled = [mEMORY[0x277CE7E20] speakCorrectionsEnabled];

  v8 = 0;
  v4 = MEMORY[0x223D72B20](*MEMORY[0x277D81E38], &v8);
  if (v8)
  {
    if ((((v4 == 0) ^ speakCorrectionsEnabled) & 1) == 0)
    {
      v5 = v4 != 0;
      v6 = speakCorrectionsEnabled ^ 1;
      mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
      [mEMORY[0x277CE7E20]2 setSpeakCorrectionsEnabled:v5 & v6];
    }
  }
}

+ (void)_checkContrastSetting
{
  _AXSScreenContrast();
  if (v2 > 0.0)
  {
    v3 = v2;
    serverIfRunning = [MEMORY[0x277CDA018] serverIfRunning];
    displays = [serverIfRunning displays];
    if ([displays count])
    {
      v6 = [displays objectAtIndex:0];
    }

    else
    {
      v6 = 0;
    }

    *&v5 = v3;
    [v6 setContrast:v5];
    NSLog(&cfstr_SettingScreenC.isa, (v3 * 100.0), v6);
  }
}

+ (void)checkScreenContrast
{
  v3 = objc_autoreleasePoolPush();
  [MEMORY[0x277CCACC8] detachNewThreadSelector:sel__checkContrastSetting toTarget:self withObject:0];

  objc_autoreleasePoolPop(v3);
}

+ (void)checkAccessibilityOptions
{
  if (checkAccessibilityOptions_onceToken != -1)
  {
    +[AXSBSettingsLoader checkAccessibilityOptions];
  }

  [CheckOptionsTimer cancel];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__AXSBSettingsLoader_checkAccessibilityOptions__block_invoke_2;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = self;
  [CheckOptionsTimer afterDelay:v3 processBlock:0.25];
}

uint64_t __47__AXSBSettingsLoader_checkAccessibilityOptions__block_invoke()
{
  CheckOptionsTimer = objc_alloc_init(MEMORY[0x277CE6950]);

  return MEMORY[0x2821F96F8]();
}

+ (void)_checkAccessibilityOptionsSetByiTunes
{
  [self _checkVoiceOverTouchSetByiTunes];
  [self _checkZoomTouchSetByiTunes];
  [self _checkInvertColorsSetByiTunes];
  [self _checkMonoAudioSetByiTunes];
  [self _checkSpeakAutofillSetByiTunes];
  [self _checkClosedCaptioningSetByiTunes];
  [self _checkAssistiveTouchSetByiTunes];

  [self _checkContrastSetting];
}

+ (void)_registerForNotifications
{
  if ((ListeningForNotifications & 1) == 0)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _accessibilityiTunesSettings, *MEMORY[0x277D81F00], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v4, self, _accessibilityCheckContrast, *MEMORY[0x277D81E08], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, self, _accessibilityVisualAlertChanged, *MEMORY[0x277D81E70], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v6, self, _accessibilitySpeakTypingChanged, *MEMORY[0x277D81EC8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v7, self, _accessibilitySpeakTypingChanged, *MEMORY[0x277D81DB0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v8, self, _accessibilitySpeakTypingChanged, *MEMORY[0x277D81DD8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v9 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v9, self, _accessibilitySpeakTypingChanged, *MEMORY[0x277D81DE8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v10, self, _accessibilityEnhanceTextLegibilityChanged, *MEMORY[0x277D81CC0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__AXSBSettingsLoader__registerForNotifications__block_invoke;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = self;
    v11 = _Block_copy(aBlock);
    mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
    [mEMORY[0x277CE7E20] registerUpdateBlock:v11 forRetrieveSelector:sel_startupSoundEnabled withListener:self];

    v11[2](v11);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v14 = *MEMORY[0x277D765F0];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __47__AXSBSettingsLoader__registerForNotifications__block_invoke_2;
    v18[3] = &unk_27842C938;
    v19 = v11;
    v16 = v11;
    v17 = [defaultCenter addObserverForName:v14 object:0 queue:mainQueue usingBlock:v18];

    ListeningForNotifications = 1;
  }
}

+ (void)_processStartupSoundEnabled
{
  v2 = AXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_21FE6B000, v2, OS_LOG_TYPE_INFO, "Processing change for startup sound", v6, 2u);
  }

  if (AXAssetAndDataClient_onceToken != -1)
  {
    +[AXSBSettingsLoader _processStartupSoundEnabled];
  }

  v3 = MEMORY[0x277CE6948];
  v4 = AXAssetAndDataClient_Client;
  mainAccessQueue = [v3 mainAccessQueue];
  [v4 sendAsynchronousMessage:MEMORY[0x277CBEC10] withIdentifier:13 targetAccessQueue:mainAccessQueue completion:0];
}

+ (void)_findNoteFromLoginSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  if ((AXCurrentProcessExistsInLoginSessionSBOnly() & 1) == 0)
  {
    mEMORY[0x277CE66B8] = [MEMORY[0x277CE66B8] sharedManager];
    v5 = *MEMORY[0x277CE7C30];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__AXSBSettingsLoader__findNoteFromLoginSessionWithCompletion___block_invoke;
    v6[3] = &unk_27842C960;
    v7 = completionCopy;
    [mEMORY[0x277CE66B8] readDataForFileAtAccessibilityContainerPath:v5 completion:v6];
  }
}

void __62__AXSBSettingsLoader__findNoteFromLoginSessionWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v12 = 0;
    v6 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:&v12];
    v7 = v12;

    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277CE7C38]];
      v9 = [v8 BOOLValue];

      v10 = [v6 objectForKeyedSubscript:*MEMORY[0x277CE7C40]];
      v11 = [v10 BOOLValue];

      (*(*(a1 + 32) + 16))(*(a1 + 32), v9, v11);
    }

    else
    {
      _AXLogWithFacility();
      (*(*(a1 + 32) + 16))(*(a1 + 32), 0, 0);
    }
  }

  else
  {
    _AXLogWithFacility();
    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, 0);
    v7 = v5;
  }
}

+ (void)initialize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__AXSBSettingsLoader_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initialize_onceToken_0 != -1)
  {
    dispatch_once(&initialize_onceToken_0, block);
  }
}

uint64_t __32__AXSBSettingsLoader_initialize__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(AXSBSettingsLoader);
  v3 = _AXSettingsLoaderDelegate;
  _AXSettingsLoaderDelegate = v2;

  v5 = *(a1 + 32);
  return AXPerformBlockOnMainThreadAfterDelay();
}

+ (void)_checkForDataResetFile
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_21FE6B000, a2, a3, "Could not remove data settings file: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_initializeDelayedSpringBoardSettings
{
  [self _updateSpringBoardHelper];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __59__AXSBSettingsLoader__initializeDelayedSpringBoardSettings__block_invoke;
  v18 = &__block_descriptor_40_e5_v8__0l;
  selfCopy = self;
  AXPerformBlockOnMainThreadAfterDelay();
  [self _registerForNotifications];
  if (_AXSVisualAlertEnabled() && _accessibilityHasCameraFlash())
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }

  AXPerformBlockOnMainThreadAfterDelay();
  _accessibilityInitializeSpeakTypingServer();
  if (AXIsBuddyCompleted())
  {
    v3 = _AXSTripleClickCopyOptions();
    if (_AXSTripleClickContainsOption())
    {
      v4 = AXLogCommon();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21FE6B000, v4, OS_LOG_TYPE_DEFAULT, "Triple click buddy still in settings, need to remove", buf, 2u);
      }

      _AXSTripleClickRemoveOption();
    }
  }

  if (AXIsInternalInstall())
  {
    NSLog(&cfstr_AxRegisteringF.isa);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:_AXSettingsLoaderDelegate selector:sel__updateAXSettings name:@"AccessibilitySettingsLoaderDidUpdateSettings" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:_AXSettingsLoaderDelegate selector:sel__updateAXSettings name:*MEMORY[0x277D81C10] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:_AXSettingsLoaderDelegate selector:sel__handleGuidedAccessManagedConfigurationDidChange_ name:*MEMORY[0x277D26148] object:0];

  AXPerformBlockOnMainThreadAfterDelay();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, _AXSettingsLoaderDelegate, _accessibilityTripleHomeEnabled, *MEMORY[0x277D81E60], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  mEMORY[0x277CE7CF8] = [MEMORY[0x277CE7CF8] sharedInstance];
  [mEMORY[0x277CE7CF8] start];

  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  [mEMORY[0x277CE7E20] setAccessibilityReaderIsActive:0];

  [_AXSettingsLoaderDelegate _bootstrapSoundDetection];
  [self _registerForHomeButtonBreakage];
  [self _performValidations];
  mEMORY[0x277D12E38] = [MEMORY[0x277D12E38] sharedUtilities];
  [mEMORY[0x277D12E38] updateHearingFeatureUsage];

  if (AXDeviceHasJindo())
  {
    mEMORY[0x277D12DE8] = [MEMORY[0x277D12DE8] sharedInstance];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__AXSBSettingsLoader__initializeDelayedSpringBoardSettings__block_invoke_2_359;
    v13[3] = &__block_descriptor_40_e11_v20__0d8B16l;
    v13[4] = self;
    [mEMORY[0x277D12DE8] registerListener:self forLiveListenLevelsHandler:v13];
  }
}

uint64_t __59__AXSBSettingsLoader__initializeDelayedSpringBoardSettings__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _checkForDataResetFile];
  if (_AXSVoiceOverTouchEnabled())
  {
    _AXSVoiceOverTouchSetEnabled();
  }

  if (_AXSAssistiveTouchEnabled())
  {
    _AXSAssistiveTouchSetEnabled();
  }

  if (_AXSAssistiveTouchScannerEnabled())
  {
    _AXSAssistiveTouchScannerSetEnabled();
  }

  if (_AXSCommandAndControlEnabled())
  {
    _AXSCommandAndControlSetEnabled();
  }

  if (_AXSCommandAndControlCarPlayEnabled())
  {
    _AXSCommandAndControlCarPlaySetEnabled();
  }

  if (_AXSFullKeyboardAccessEnabled())
  {
    _AXSFullKeyboardAccessSetEnabled();
  }

  if (_AXSSpeakThisEnabled())
  {
    _AXSSetSpeakThisEnabled();
  }

  if (_AXSWordFeedbackEnabled())
  {
    _AXSSetWordFeedbackEnabled();
  }

  if (_AXSLetterFeedbackEnabled())
  {
    _AXSSetLetterFeedbackEnabled();
  }

  if (_AXSPhoneticFeedbackEnabled())
  {
    _AXSSetPhoneticFeedbackEnabled();
  }

  if (_AXSInvertColorsEnabled())
  {
    _AXSInvertColorsSetEnabled();
  }

  _AXSHomeButtonRestingUnlock();
  _AXSPearlRestingUnlock();
  if (!_AXSHomeButtonRestingUnlockEverSet() && _AXSAssistiveTouchEnabled())
  {
    _AXSHomeButtonSetRestingUnlock();
    _AXLogWithFacility();
  }

  result = AXDeviceIsMultiUser();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _findNoteFromLoginSessionWithCompletion:&__block_literal_global_338];
  }

  return result;
}

uint64_t __59__AXSBSettingsLoader__initializeDelayedSpringBoardSettings__block_invoke_2(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    result = _AXSVoiceOverTouchSetEnabled();
  }

  if (a3)
  {

    return _AXSZoomTouchSetEnabled();
  }

  return result;
}

+ (void)_handleLiveListenEventIsListening:(BOOL)listening audioLevel:(double)level
{
  listeningCopy = listening;
  if (AXDeviceHasJindo())
  {
    if (listeningCopy)
    {
      if ((_handleLiveListenEventIsListening_audioLevel___IsLiveListenRunning & 1) == 0)
      {
        v5 = _handleLiveListenEventIsListening_audioLevel___ActivityProxy;
        if (!_handleLiveListenEventIsListening_audioLevel___ActivityProxy)
        {
          v6 = objc_alloc_init(_TtC27AXSpringBoardServerInstance20HearingActivityProxy);
          v7 = _handleLiveListenEventIsListening_audioLevel___ActivityProxy;
          _handleLiveListenEventIsListening_audioLevel___ActivityProxy = v6;

          v5 = _handleLiveListenEventIsListening_audioLevel___ActivityProxy;
        }

        [v5 startWithCompletionHandler:&__block_literal_global_366];
      }
    }

    else if (_handleLiveListenEventIsListening_audioLevel___IsLiveListenRunning)
    {
      [_handleLiveListenEventIsListening_audioLevel___ActivityProxy finishWithCompletionHandler:&__block_literal_global_368];
    }

    _handleLiveListenEventIsListening_audioLevel___IsLiveListenRunning = listeningCopy;
  }
}

- (void)_ensureUltronAppVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  v7 = *MEMORY[0x277D85DE8];
  CFPreferencesSetAppValue(@"SBIconVisibility", [MEMORY[0x277CCABB0] numberWithBool:?], @"com.apple.imgaudio.UltronApp");
  CFPreferencesSynchronize(@"com.apple.imgaudio.UltronApp", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  notify_post("com.apple.springboard.appIconVisibilityPreferencesChanged");
  v4 = AXLogUltron();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = visibilityCopy;
    _os_log_impl(&dword_21FE6B000, v4, OS_LOG_TYPE_DEFAULT, "Writing visiblity for ultron app: %d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_bootstrapSoundDetection
{
  objc_initWeak(&location, self);
  mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__AXSBSettingsLoader__bootstrapSoundDetection__block_invoke;
  v4[3] = &unk_27842C9E8;
  objc_copyWeak(&v5, &location);
  [mEMORY[0x277CE6F98] registerUpdateBlock:v4 forRetrieveSelector:sel_ultronSupportEnabled withListener:self];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __46__AXSBSettingsLoader__bootstrapSoundDetection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x277CE6F98] sharedInstance];
  [WeakRetained _ensureUltronAppVisibility:{objc_msgSend(v1, "ultronSupportEnabled")}];
}

+ (void)_performValidations
{
  mEMORY[0x277CE69B0] = [MEMORY[0x277CE69B0] sharedInstance];
  [mEMORY[0x277CE69B0] performValidations:&__block_literal_global_382 withPreValidationHandler:&__block_literal_global_399 postValidationHandler:0];
}

uint64_t __41__AXSBSettingsLoader__performValidations__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"SpringBoard" hasInstanceVariable:@"_restartManager" withType:"SBRestartManager"];
  [v2 validateClass:@"SBRestartManager" hasInstanceMethod:@"rebootForReason:" withFullSignature:{"v", "@", 0}];

  return 1;
}

uint64_t __41__AXSBSettingsLoader__performValidations__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AXSBSettingsLoader"];
  [v2 setOverrideProcessName:@"AXSBSettingsLoader"];
  [v2 setDebugBuild:0];

  return MEMORY[0x282138D58]();
}

+ (void)_registerForHomeButtonBreakageNotification
{
  v25 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6978] = [MEMORY[0x277CE6978] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6978] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6978] identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      v8 = _AXStringForArgs();
      if (os_log_type_enabled(v5, v6))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v8;
        _os_log_impl(&dword_21FE6B000, v5, v6, "%{public}@", &buf, 0xCu);
      }
    }
  }

  notification = 0;
  v23[0] = @"DeviceUsagePage";
  v23[1] = @"DeviceUsage";
  *&buf = &unk_2833B1708;
  *(&buf + 1) = &unk_2833B1720;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:v23 count:2];
  v17 = deviceUsagePairs(v9, v10, v11, v12, v13, v14, v15, v16, 0);
  v23[0] = @"DeviceUsagePairs";
  *&buf = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:v23 count:1];
  v19 = [v18 mutableCopy];

  [v19 setObject:@"AppleSPUHIDDevice" forKey:@"IOProviderClass"];
  LODWORD(v18) = *MEMORY[0x277CD2898];
  LODWORD(v19) = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v19);
  v20 = IONotificationPortCreate(v18);
  IOServiceAddInterestNotification(v20, v19, "IOGeneralInterest", _homeButtonBreakageMessageHandler, 0, &notification);
  IONotificationPortSetDispatchQueue(v20, MEMORY[0x277D85CD0]);

  v21 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_alreadyRebootedGracefullyOnce
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"AXBrokenHomeButtonAlreadyRebootedOnce"];

  return v3;
}

+ (void)_setRebootedGracefullyOnce
{
  v14 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6978] = [MEMORY[0x277CE6978] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6978] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6978] identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      v8 = _AXStringForArgs();
      if (os_log_type_enabled(v5, v6))
      {
        v12 = 138543362;
        v13 = v8;
        _os_log_impl(&dword_21FE6B000, v5, v6, "%{public}@", &v12, 0xCu);
      }
    }
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setBool:1 forKey:@"AXBrokenHomeButtonAlreadyRebootedOnce"];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults2 synchronize];

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)_gracefulRebootForBrokenHomeButton
{
  [self _setRebootedGracefullyOnce];
  AnalyticsSendEventLazy();

  AXPerformBlockOnMainThreadAfterDelay();
}

uint64_t __56__AXSBSettingsLoader__gracefulRebootForBrokenHomeButton__block_invoke_2()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CE6978] sharedInstance];
  v1 = [v0 ignoreLogging];

  if ((v1 & 1) == 0)
  {
    v2 = [MEMORY[0x277CE6978] identifier];
    v3 = AXLoggerForFacility();

    v4 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = AXColorizeFormatLog();
      v6 = _AXStringForArgs();
      if (os_log_type_enabled(v3, v4))
      {
        v9 = 138543362;
        v10 = v6;
        _os_log_impl(&dword_21FE6B000, v3, v4, "%{public}@", &v9, 0xCu);
      }
    }
  }

  result = AXPerformSafeBlock();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __56__AXSBSettingsLoader__gracefulRebootForBrokenHomeButton__block_invoke_439()
{
  v0 = [*MEMORY[0x277D76620] safeValueForKey:@"_restartManager"];
  [v0 rebootForReason:{@"MESA FAILURE: Home button broke, rebooting"}];
}

+ (void)_startAssistiveTouchForBrokenHomeButton
{
  v19 = *MEMORY[0x277D85DE8];
  if (_AXSAssistiveTouchEnabled())
  {
    mEMORY[0x277CE6978] = [MEMORY[0x277CE6978] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6978] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6978] identifier];
      v5 = AXLoggerForFacility();

      v6 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = AXColorizeFormatLog();
        v8 = _AXStringForArgs();
        if (os_log_type_enabled(v5, v6))
        {
          v17 = 138543362;
          v18 = v8;
LABEL_15:
          _os_log_impl(&dword_21FE6B000, v5, v6, "%{public}@", &v17, 0xCu);
          goto LABEL_16;
        }

        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  else if (UIAccessibilityIsSwitchControlRunning())
  {
    v9 = +[AXSpringBoardServerHelper sharedServerHelper];
    [v9 handleBrokenHomeButtonAlert];

    mEMORY[0x277CE6978]2 = [MEMORY[0x277CE6978] sharedInstance];
    ignoreLogging2 = [mEMORY[0x277CE6978]2 ignoreLogging];

    if ((ignoreLogging2 & 1) == 0)
    {
      identifier2 = [MEMORY[0x277CE6978] identifier];
      v5 = AXLoggerForFacility();

      v6 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = AXColorizeFormatLog();
        v8 = _AXStringForArgs();
        if (os_log_type_enabled(v5, v6))
        {
          v17 = 138543362;
          v18 = v8;
          goto LABEL_15;
        }

LABEL_16:
      }

LABEL_17:
    }
  }

  else
  {
    _AXSAssistiveTouchSetRepairIncarnationModeEnabled();
    mEMORY[0x277CE6978]3 = [MEMORY[0x277CE6978] sharedInstance];
    ignoreLogging3 = [mEMORY[0x277CE6978]3 ignoreLogging];

    if ((ignoreLogging3 & 1) == 0)
    {
      identifier3 = [MEMORY[0x277CE6978] identifier];
      v5 = AXLoggerForFacility();

      v6 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = AXColorizeFormatLog();
        v8 = _AXStringForArgs();
        if (os_log_type_enabled(v5, v6))
        {
          v17 = 138543362;
          v18 = v8;
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __50__AXSBSettingsLoader__checkForHomeButtonBreakage___block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CE7E20] sharedInstance];
  v1 = [v0 brokenHomeButtonCount] + 1;

  v2 = [MEMORY[0x277CE7E20] sharedInstance];
  [v2 setBrokenHomeButtonCount:v1];

  v3 = [MEMORY[0x277CE6978] sharedInstance];
  v4 = [v3 ignoreLogging];

  if ((v4 & 1) == 0)
  {
    v5 = [MEMORY[0x277CE6978] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138543362;
        v13 = v9;
        _os_log_impl(&dword_21FE6B000, v6, v7, "%{public}@", buf, 0xCu);
      }
    }
  }

  result = AnalyticsSendEventLazy();
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

id __50__AXSBSettingsLoader__checkForHomeButtonBreakage___block_invoke_472()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"resetCount";
  v0 = MEMORY[0x277CCABB0];
  v1 = [MEMORY[0x277CE7E20] sharedInstance];
  v2 = [v0 numberWithInteger:{objc_msgSend(v1, "brokenHomeButtonCount")}];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (void)_registerForHomeButtonBreakage
{
  if (MGGetBoolAnswer())
  {
    [self _registerForHomeButtonBreakageNotification];

    [self _checkForHomeButtonBreakage:1];
  }
}

- (void)_handleGuidedAccessManagedConfigurationDidChange:(id)change
{
  changeCopy = change;
  v3 = changeCopy;
  AXPerformBlockOnMainThread();
}

void __71__AXSBSettingsLoader__handleGuidedAccessManagedConfigurationDidChange___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = objc_alloc(MEMORY[0x277CE6950]);
    v4 = [v3 initWithTargetSerialQueue:MEMORY[0x277D85CD0]];
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = v4;

    v2 = *(*(a1 + 32) + 24);
  }

  [v2 cancel];
  v7 = *(*(a1 + 32) + 24);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__AXSBSettingsLoader__handleGuidedAccessManagedConfigurationDidChange___block_invoke_2;
  v8[3] = &unk_27842BB18;
  v9 = *(a1 + 40);
  [v7 afterDelay:v8 processBlock:0.5];
}

uint64_t __71__AXSBSettingsLoader__handleGuidedAccessManagedConfigurationDidChange___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  _AXLogWithFacility();

  return +[AXSBSettingsLoader bootstrapGuidedAccessIfNeeded];
}

+ (void)bootstrapGuidedAccessIfNeeded
{
  v13 = *MEMORY[0x277D85DE8];
  if (!_AXSGuidedAccessEnabledByManagedConfiguration())
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    effectiveWhitelistedAppsAndOptions = [mEMORY[0x277D262A0] effectiveWhitelistedAppsAndOptions];

    mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
    autonomousSingleAppModePermittedBundleIDs = [mEMORY[0x277D262A0]2 autonomousSingleAppModePermittedBundleIDs];

    if ([effectiveWhitelistedAppsAndOptions count] || objc_msgSend(autonomousSingleAppModePermittedBundleIDs, "count"))
    {
      v6 = GAXLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = 138543618;
        v10 = effectiveWhitelistedAppsAndOptions;
        v11 = 2114;
        v12 = autonomousSingleAppModePermittedBundleIDs;
        _os_log_impl(&dword_21FE6B000, v6, OS_LOG_TYPE_INFO, "allowedApps (%{public}@) or appSelfLockIDs (%{public}@) exist. WIll enable GAX (Single App Mode) now", &v9, 0x16u);
      }

      _AXSGuidedAccessSetEnabledByManagedConfiguration();
    }

    else
    {
      v8 = GAXLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_21FE6B000, v8, OS_LOG_TYPE_INFO, "allowedApps and appSelfLockIDs both nil.  No need to enable GAX (Single App Mode)", &v9, 2u);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (AXSBSettingsLoader)init
{
  v10.receiver = self;
  v10.super_class = AXSBSettingsLoader;
  v2 = [(AXSBSettingsLoader *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CE6678]);
    assetsService = v2->_assetsService;
    v2->_assetsService = v3;

    v9 = v2;
    AXPerformBlockOnMainThreadAfterDelay();
    v8 = v9;
    AXPerformBlockOnMainThreadAfterDelay();
    v7 = v8;
    AXPerformBlockOnMainThreadAfterDelay();
    v5 = v7;
  }

  return v2;
}

void __26__AXSBSettingsLoader_init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  if ([v2 physicalMemory] <= 0x773593FF)
  {
    goto LABEL_4;
  }

  v3 = AXRuntimeCheck_HasANE();

  if (v3)
  {
    v4 = *(*(a1 + 32) + 32);
    v2 = [MEMORY[0x277CE6698] policy];
    [v4 updateAssetForPolicy:v2];
LABEL_4:
  }

  v5 = [MEMORY[0x277CCAC38] processInfo];
  if ([v5 physicalMemory] > 0x773593FF && AXRuntimeCheck_HasANE())
  {
  }

  else
  {
    v6 = [MEMORY[0x277CCAC38] processInfo];
    if ([v6 physicalMemory] <= 0x773593FF)
    {

      goto LABEL_12;
    }

    v7 = AXRuntimeCheck_HasANE();

    if (!v7)
    {
      goto LABEL_13;
    }
  }

  v8 = *(*(a1 + 32) + 32);
  v5 = [MEMORY[0x277CE6688] policy];
  [v8 updateAssetForPolicy:v5];
LABEL_12:

LABEL_13:
  v9 = *(*(a1 + 32) + 32);
  v10 = [MEMORY[0x277CE6690] policy];
  [v9 updateAssetForPolicy:v10];
}

void __26__AXSBSettingsLoader_init__block_invoke_499(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2 = [MEMORY[0x277CE66A0] policy];
  [v1 updateAssetForPolicy:v2];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  managedConfigurationNotificationCoalesceTimer = self->_managedConfigurationNotificationCoalesceTimer;
  self->_managedConfigurationNotificationCoalesceTimer = 0;

  v6.receiver = self;
  v6.super_class = AXSBSettingsLoader;
  [(AXSBSettingsLoader *)&v6 dealloc];
}

- (void)_initializeRemoteSettingsListener
{
  if ([(AXSBSettingsLoader *)self _isDeviceAffectedByVOActivationWorkaround])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _voiceOverVibrateEnable, *MEMORY[0x277CE7CB8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v4, self, _voiceOverSwipeEnable, *MEMORY[0x277CE7CC0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__remoteAccessibilitySettingsChanged_ name:*MEMORY[0x277CEC600] object:0];

    mEMORY[0x277CEC5C8] = [MEMORY[0x277CEC5C8] sharedInstance];
    [mEMORY[0x277CEC5C8] registerNetworkDefaultsForAppID:@"com.apple.accessibility.remote"];

    _AXLogWithFacility();
  }

  [(AXSBSettingsLoader *)self _updateRemoteAccessibilitySettings];
}

- (void)_voiceOverEnabled:(id)enabled
{
  if (_AXSVoiceOverTouchEnabled())
  {

    [(AXSBSettingsLoader *)self _hideVoiceOverEnabler];
  }
}

- (void)_hideVoiceOverEnabler
{
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  LOBYTE(v4) = 1;
  _AXLogWithFacility();

  [(AXAccessQueueTimer *)self->_voiceOverActivationCanceler cancel:v4];
  if (!_AXSVoiceOverTouchEnabled())
  {
    [(AXSBSettingsLoader *)self _playVOActivationSoundEnded];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__AXSBSettingsLoader__hideVoiceOverEnabler__block_invoke;
  v7[3] = &unk_27842BB18;
  v7[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__AXSBSettingsLoader__hideVoiceOverEnabler__block_invoke_2;
  v6[3] = &unk_27842C4F8;
  v6[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v7 animations:v6 completion:0.25];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D81E80] object:0];
}

void __43__AXSBSettingsLoader__hideVoiceOverEnabler__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CE7E20] sharedInstance];
  v3 = [v2 voiceOverActivationWorkaround];

  if (v3 == 2)
  {
    v17 = *(*(a1 + 32) + 8);

    [v17 setAlpha:0.0];
  }

  else if (v3 == 1)
  {
    v4 = objc_getAssociatedObject(*(*(a1 + 32) + 8), &AXActivationRotationKey);
    v5 = [v4 intValue];

    [*(*(a1 + 32) + 8) frame];
    v9 = v8;
    v11 = v10;
    v12 = -v8;
    if (v5 == 4)
    {
      v13 = v9;
    }

    else
    {
      v13 = v6;
    }

    if (v5 != 3)
    {
      v12 = v13;
    }

    v14 = -v11;
    if (v5 != 2)
    {
      v14 = v7;
    }

    if (v5 == 1)
    {
      v14 = v11;
    }

    if (v5 <= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = v7;
    }

    if (v5 <= 2)
    {
      v16 = v6;
    }

    else
    {
      v16 = v12;
    }

    [*(*(a1 + 32) + 8) setFrame:{v16, v15, v9, v11}];
    v20.origin.x = v16;
    v20.origin.y = v15;
    v20.size.width = v9;
    v20.size.height = v11;
    v18 = NSStringFromCGRect(v20);
    _AXLogWithFacility();
  }
}

uint64_t __43__AXSBSettingsLoader__hideVoiceOverEnabler__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;

  return _AXLogWithFacility();
}

- (void)_makeVoiceOverVibrateWindow
{
  v3 = objc_allocWithZone(MEMORY[0x277D75DA0]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = [v3 initWithContentRect:?];

  [(UIWindow *)v5 setWindowLevel:10000013.0];
  [(UIWindow *)v5 setOpaque:0];
  [(UIWindow *)v5 setAlpha:1.0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UIWindow *)v5 setBackgroundColor:clearColor];

  v7 = objc_allocWithZone(MEMORY[0x277D75D18]);
  [(UIWindow *)v5 bounds];
  v10 = [v7 initWithFrame:?];
  clearColor2 = [MEMORY[0x277D75348] clearColor];
  [v10 setBackgroundColor:clearColor2];

  [v10 setAlpha:1.0];
  [v10 setUserInteractionEnabled:0];
  [v10 setOpaque:0];
  [(UIWindow *)v5 setContentView:v10];
  voiceOverVibrateWindow = self->_voiceOverVibrateWindow;
  self->_voiceOverVibrateWindow = v5;
}

- (void)_playVOActivationSoundEnded
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (_playVOActivationSoundEnded_onceToken != -1)
  {
    [AXSBSettingsLoader _playVOActivationSoundEnded];
  }

  v3 = *MEMORY[0x277CBA638];
  v4[0] = &unk_2833B1738;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  AudioServicesPlaySystemSoundWithOptions();
  v2 = *MEMORY[0x277D85DE8];
}

void __49__AXSBSettingsLoader__playVOActivationSoundEnded__block_invoke()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBC0]);
  v1 = MEMORY[0x277CCACA8];
  v2 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/CoreServices/VoiceOverTouch.app"];
  v3 = [v2 resourcePath];
  v4 = [v1 stringWithFormat:@"%@/%@", v3, @"Sounds/FolderClosed.aiff"];
  inFileURL = [v0 initFileURLWithPath:v4 isDirectory:0];

  AudioServicesCreateSystemSoundID(inFileURL, &_playVOActivationSoundEnded_SoundID);
}

- (void)_playVOActivationSoundStarted
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (_playVOActivationSoundStarted_onceToken != -1)
  {
    [AXSBSettingsLoader _playVOActivationSoundStarted];
  }

  v3 = *MEMORY[0x277CBA638];
  v4[0] = &unk_2833B1738;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  AudioServicesPlaySystemSoundWithOptions();
  v2 = *MEMORY[0x277D85DE8];
}

void __51__AXSBSettingsLoader__playVOActivationSoundStarted__block_invoke()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBC0]);
  v1 = MEMORY[0x277CCACA8];
  v2 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/CoreServices/VoiceOverTouch.app"];
  v3 = [v2 resourcePath];
  v4 = [v1 stringWithFormat:@"%@/%@", v3, @"Sounds/FolderOpened.aiff"];
  inFileURL = [v0 initFileURLWithPath:v4 isDirectory:0];

  AudioServicesCreateSystemSoundID(inFileURL, &_playVOActivationSoundStarted_SoundID);
}

- (void)swipeDetectorDetectedSwipe
{
  if (!_AXSApplicationAccessibilityEnabled())
  {
    _AXSApplicationAccessibilitySetEnabled();
  }

  _AXSVoiceOverTouchSetEnabled();

  [(AXSBSettingsLoader *)self _hideVoiceOverEnabler];
}

- (void)_showSwipeDetectionEnablerView
{
  if (!self->_voiceOverVibrateWindow)
  {
    v36 = v7;
    v37 = v6;
    v38 = v5;
    v39 = v4;
    v40 = v2;
    v41 = v3;
    [(AXSBSettingsLoader *)self _playVOActivationSoundStarted];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__voiceOverEnabled_ name:*MEMORY[0x277D81E80] object:0];

    [(AXSBSettingsLoader *)self _makeVoiceOverVibrateWindow];
    v10 = [*MEMORY[0x277D76620] safeIntegerForKey:@"activeInterfaceOrientation"];
    voiceOverVibrateWindow = self->_voiceOverVibrateWindow;
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
    objc_setAssociatedObject(voiceOverVibrateWindow, &AXActivationRotationKey, v12, 1);

    subviews = [(UIWindow *)self->_voiceOverVibrateWindow subviews];
    lastObject = [subviews lastObject];

    [lastObject setUserInteractionEnabled:1];
    v15 = [AXSBVoiceOverSwipeDetectorView alloc];
    [lastObject bounds];
    v16 = [(AXSBVoiceOverSwipeDetectorView *)v15 initWithFrame:?];
    [lastObject addSubview:v16];
    [(AXSBVoiceOverSwipeDetectorView *)v16 setDelegate:self];
    [(UIWindow *)self->_voiceOverVibrateWindow frame];
    v20 = v19;
    v22 = v21;
    v23 = v18;
    v24 = 0.0;
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        [(AXSBVoiceOverSwipeDetectorView *)v16 bounds];
        [(AXSBVoiceOverSwipeDetectorView *)v16 setBounds:?];
        [(AXSBVoiceOverSwipeDetectorView *)v16 setCenter:1.0, 0.0];
        v17 = -v22;
        v24 = 282.743339;
      }

      else if (v10 == 4)
      {
        [(AXSBVoiceOverSwipeDetectorView *)v16 frame];
        [(AXSBVoiceOverSwipeDetectorView *)v16 setFrame:?];
        v24 = -282.743339;
        v17 = v22;
      }
    }

    else if (v10 == 1)
    {
      v20 = v18;
    }

    else if (v10 == 2)
    {
      v20 = -v18;
      v24 = 565.486678;
    }

    [(UIWindow *)self->_voiceOverVibrateWindow setFrame:v17, v20, v22, v23];
    v25 = *MEMORY[0x277CBF2C0];
    v26 = *(MEMORY[0x277CBF2C0] + 32);
    *&v35.c = *(MEMORY[0x277CBF2C0] + 16);
    *&v35.tx = v26;
    *&v34.a = v25;
    *&v34.c = *&v35.c;
    *&v34.tx = v26;
    *&v35.a = v25;
    [(AXSBVoiceOverSwipeDetectorView *)v16 setTransform:&v34];
    CGAffineTransformMakeRotation(&v35, v24 / 180.0);
    v33 = v35;
    UIIntegralTransform();
    v35 = v34;
    [(AXSBVoiceOverSwipeDetectorView *)v16 setTransform:&v34];
    [(AXSBVoiceOverSwipeDetectorView *)v16 frame];
    if ((v10 - 2) < 3)
    {
      v27 = 0.0;
      v28 = 0.0;
    }

    [(AXSBVoiceOverSwipeDetectorView *)v16 setFrame:v27, v28];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __52__AXSBSettingsLoader__showSwipeDetectionEnablerView__block_invoke;
    v32[3] = &unk_27842BBD0;
    v32[4] = self;
    v32[5] = v10;
    [MEMORY[0x277D75D18] animateWithDuration:v32 animations:0.25];
    voiceOverActivationCanceler = self->_voiceOverActivationCanceler;
    v30 = *MEMORY[0x277CE7CF0];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __52__AXSBSettingsLoader__showSwipeDetectionEnablerView__block_invoke_2;
    v31[3] = &unk_27842BB18;
    v31[4] = self;
    [(AXAccessQueueTimer *)voiceOverActivationCanceler afterDelay:v31 processBlock:v30];
  }
}

void __52__AXSBSettingsLoader__showSwipeDetectionEnablerView__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) frame];
  v5 = v4;
  v7 = v6;
  v8 = 0.0;
  v9 = *(a1 + 40);
  if (v9 == 4)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v2;
  }

  if (v9 == 3)
  {
    v10 = 0.0;
  }

  if (v9 == 2)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v3;
  }

  if (v9 != 1)
  {
    v8 = v11;
  }

  if (v9 <= 2)
  {
    v12 = v8;
  }

  else
  {
    v12 = v3;
  }

  if (v9 <= 2)
  {
    v13 = v2;
  }

  else
  {
    v13 = v10;
  }

  [*(*(a1 + 32) + 8) setFrame:{v13, v12, v5, v7}];
  v16.origin.x = v13;
  v16.origin.y = v12;
  v16.size.width = v5;
  v16.size.height = v7;
  v14 = NSStringFromCGRect(v16);
  _AXLogWithFacility();
}

- (void)_showVibrationVoiceOverEnablerView
{
  if (!self->_voiceOverVibrateWindow)
  {
    v19 = v5;
    v20 = v4;
    v21 = v2;
    v22 = v3;
    [(AXSBSettingsLoader *)self _playVOActivationSoundStarted];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__voiceOverEnabled_ name:*MEMORY[0x277D81E80] object:0];

    [(AXSBSettingsLoader *)self _makeVoiceOverVibrateWindow];
    subviews = [(UIWindow *)self->_voiceOverVibrateWindow subviews];
    lastObject = [subviews lastObject];

    v10 = [AXSBVoiceOverShakeMessage alloc];
    v11 = [(AXSBVoiceOverShakeMessage *)v10 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(AXSBVoiceOverShakeMessage *)v11 setAlpha:0.0];
    [lastObject addSubview:v11];
    v12 = MEMORY[0x277D75D18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__AXSBSettingsLoader__showVibrationVoiceOverEnablerView__block_invoke;
    v17[3] = &unk_27842BB18;
    v18 = v11;
    v13 = v11;
    [v12 animateWithDuration:v17 animations:0.25];
    voiceOverActivationCanceler = self->_voiceOverActivationCanceler;
    v15 = *MEMORY[0x277CE7CF0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__AXSBSettingsLoader__showVibrationVoiceOverEnablerView__block_invoke_2;
    v16[3] = &unk_27842BB18;
    v16[4] = self;
    [(AXAccessQueueTimer *)voiceOverActivationCanceler afterDelay:v16 processBlock:v15];
  }
}

- (void)_reachabilityChanged:(id)changed
{
  userInfo = [changed userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x277CEC510]];
  bOOLValue = [v4 BOOLValue];

  _AXLogWithFacility();
  if (bOOLValue)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void __43__AXSBSettingsLoader__reachabilityChanged___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CEC5C8] sharedInstance];
  v3 = [v2 registerNetworkDefaultsForAppIDs:&unk_2833B1798 forceUpdate:1];

  LOBYTE(v4) = 1;
  _AXLogWithFacility();
  v5 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [v5 removeObserver:*(a1 + 32) forHostname:@"configuration.apple.com"];
}

- (void)_registerReachability
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__AXSBSettingsLoader__registerReachability__block_invoke;
  block[3] = &unk_27842BB18;
  block[4] = self;
  if (_registerReachability_onceToken[0] != -1)
  {
    dispatch_once(_registerReachability_onceToken, block);
  }
}

void __43__AXSBSettingsLoader__registerReachability__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCACC8] callStackSymbols];
  LOBYTE(v2) = 1;
  _AXLogWithFacility();

  v4 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [v4 addObserver:*(a1 + 32) selector:sel__reachabilityChanged_ forHostname:@"configuration.apple.com"];
}

@end