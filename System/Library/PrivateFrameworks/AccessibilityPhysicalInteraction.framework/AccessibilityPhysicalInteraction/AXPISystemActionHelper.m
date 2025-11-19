@interface AXPISystemActionHelper
+ (id)sharedInstance;
- (AXPISystemActionHelper)init;
- (BOOL)_hasScreenSwitch;
- (int64_t)currentOrientation;
- (void)_activateSpeakScreen;
- (void)_cameraAction:(BOOL)a3;
- (void)_handleHomeButtonDispatch:(BOOL)a3;
- (void)_launchAccessibilityReaderHelper;
- (void)_openCamera:(BOOL)a3;
- (void)_sendButtonEvent:(unsigned int)a3 postHIDEventDirectly:(BOOL)a4;
- (void)_sendDeviceOrientationChange:(int64_t)a3;
- (void)_sendShakeEvent:(unint64_t)a3;
- (void)_showAlertForReboot;
- (void)_toggleAssistiveTouch;
- (void)_toggleClassicInvertColors;
- (void)_toggleColorFilters;
- (void)_toggleSmartInvert;
- (void)_toggleSwitchControl;
- (void)_toggleVoiceOver;
- (void)_toggleZoom;
- (void)_toggleZoomController;
- (void)activateDetectionMode;
- (void)activateHomeButton;
- (void)activateMagnifierAskQuestion;
- (void)activateMagnifierFromStaccato;
- (void)activateSOSMode;
- (void)activateSiriFromClient:(id)a3;
- (void)activateTripleClick;
- (void)activateTypeToSiri;
- (void)activateVoiceControl;
- (void)adjustSystemZoom:(int64_t)a3;
- (void)armApplePay;
- (void)hideSpotlight;
- (void)launchAccessibilityReader;
- (void)launchMagnifierWithURL:(id)a3;
- (void)lightPressCameraButton;
- (void)openVisualIntelligence;
- (void)performActionForSystemAction:(id)a3 fromClient:(id)a4;
- (void)performSysdiagnoseWithStatusUpdateHandler:(id)a3;
- (void)pressCameraButton;
- (void)pressStaccato;
- (void)rebootDevice;
- (void)revealSpotlight;
- (void)shake;
- (void)startMagnifier;
- (void)takeScreenshot;
- (void)toggleAppLibrary;
- (void)toggleAppSwitcher;
- (void)toggleBackgroundSounds;
- (void)toggleCommandAndControl;
- (void)toggleControlCenter;
- (void)toggleDock;
- (void)toggleLiveCaptions;
- (void)toggleMute;
- (void)toggleNotificationCenter;
- (void)toggleQuickNote;
- (void)toggleReachability;
- (void)toggleRingerSwitch:(BOOL)a3;
- (void)toggleSpotlight;
- (void)toggleTorch;
- (void)toggleWatchRemoteScreen;
- (void)turnDigitalCrown:(int64_t)a3;
- (void)turnDigitalCrownFullRevolution:(BOOL)a3;
- (void)warm;
@end

@implementation AXPISystemActionHelper

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[AXPISystemActionHelper sharedInstance];
  }

  v3 = sharedInstance__shared_0;

  return v3;
}

uint64_t __40__AXPISystemActionHelper_sharedInstance__block_invoke()
{
  sharedInstance__shared_0 = objc_alloc_init(AXPISystemActionHelper);

  return MEMORY[0x2821F96F8]();
}

- (AXPISystemActionHelper)init
{
  v7.receiver = self;
  v7.super_class = AXPISystemActionHelper;
  v2 = [(AXPISystemActionHelper *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("AXPISystemActionHelperSysdiagnoseCancelCountQueue", 0);
    sysdiagnoseCancelCountQueue = v2->_sysdiagnoseCancelCountQueue;
    v2->_sysdiagnoseCancelCountQueue = v3;

    lastStaccatoPress = v2->_lastStaccatoPress;
    v2->_lastStaccatoPress = 0;
  }

  return v2;
}

- (void)activateSiriFromClient:(id)a3
{
  v3 = a3;
  v6 = objc_alloc_init(getSiriSimpleActivationSourceClass());
  v4 = [v3 isEqualToString:@"AXPISystemActionHelperClientBackTap"];

  if (v4)
  {
    v5 = 34;
  }

  else
  {
    v5 = 28;
  }

  [v6 activateFromSource:v5];
}

- (void)activateTypeToSiri
{
  v2 = [MEMORY[0x277CE7E48] server];
  [v2 openTypeToSiri];
}

- (void)activateVoiceControl
{
  v2 = [MEMORY[0x277CE7E48] server];
  [v2 openVoiceControl];
}

- (void)activateHomeButton
{
  if ([MEMORY[0x277CE7D48] isAvailable])
  {
    v3 = [MEMORY[0x277CE7D48] server];
    [v3 goHome];
  }

  else
  {
    [(AXPISystemActionHelper *)self pressHomeButtonDown];
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)toggleReachability
{
  v2 = [MEMORY[0x277CE7E48] server];
  [v2 toggleReachability];
}

- (void)toggleCommandAndControl
{
  v2 = _AXSCommandAndControlEnabled() == 0;

  MEMORY[0x2821EFF28](v2);
}

- (void)armApplePay
{
  v2 = [MEMORY[0x277CE7E48] server];
  [v2 armApplePay];
}

- (void)toggleDock
{
  v2 = [MEMORY[0x277CE7E48] server];
  [v2 toggleDock];
}

- (void)toggleAppSwitcher
{
  v2 = [MEMORY[0x277CE7E48] server];
  v3 = [v2 isAppSwitcherVisible];

  v4 = [MEMORY[0x277CE7E48] server];
  v5 = v4;
  if (v3)
  {
    [v4 dismissAppSwitcher];
  }

  else
  {
    [v4 openAppSwitcher];
  }
}

- (void)toggleAppLibrary
{
  v2 = [MEMORY[0x277CE7E48] server];
  [v2 toggleAppLibrary];
}

- (void)toggleQuickNote
{
  v2 = [MEMORY[0x277CE7E48] server];
  [v2 toggleQuickNote];
}

- (void)toggleRingerSwitch:(BOOL)a3
{
  if (a3)
  {
    v3 = 1013;
  }

  else
  {
    v3 = 1012;
  }

  [(AXPISystemActionHelper *)self _sendButtonEvent:v3];
}

- (void)pressStaccato
{
  if (self->_lastStaccatoPress && ([MEMORY[0x277CBEAA8] now], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "timeIntervalSinceDate:", self->_lastStaccatoPress), v5 = v4, v3, v5 <= 0.5))
  {
    v9 = AXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23D742000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring Action Button press, still performing one", buf, 2u);
    }
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    lastStaccatoPress = self->_lastStaccatoPress;
    self->_lastStaccatoPress = v6;

    [(AXPISystemActionHelper *)self _sendButtonEvent:1043];
    v8 = AXLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23D742000, v8, OS_LOG_TYPE_DEFAULT, "Sent Action Button down", buf, 2u);
    }

    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void __39__AXPISystemActionHelper_pressStaccato__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _sendButtonEvent:1042];
  v1 = AXLogCommon();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_23D742000, v1, OS_LOG_TYPE_DEFAULT, "Sent Action Button up", v2, 2u);
  }
}

- (void)toggleMute
{
  [(AXPISystemActionHelper *)self _sendButtonEvent:1025];
  v3 = AXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23D742000, v3, OS_LOG_TYPE_DEFAULT, "Sent Ringer down", buf, 2u);
  }

  [(AXPISystemActionHelper *)self _sendButtonEvent:1026];
  v4 = AXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23D742000, v4, OS_LOG_TYPE_DEFAULT, "Sent Ringer up", v5, 2u);
  }
}

- (void)toggleSpotlight
{
  v2 = [MEMORY[0x277CE7E48] server];
  [v2 toggleSpotlight];
}

- (void)hideSpotlight
{
  v2 = [MEMORY[0x277CE7E48] server];
  v3 = [v2 isSpotlightVisible];

  if (v3)
  {
    v4 = [MEMORY[0x277CE7E48] server];
    [v4 toggleSpotlight];
  }
}

- (void)revealSpotlight
{
  v2 = [MEMORY[0x277CE7E48] server];
  [v2 revealSpotlight];
}

- (void)toggleBackgroundSounds
{
  v2 = [MEMORY[0x277CE7E58] server];
  [v2 toggleBackgroundSounds];
}

- (void)toggleLiveCaptions
{
  _AXSLiveTranscriptionEnabled();
  v2 = [MEMORY[0x277CE7E48] server];
  [v2 toggleLiveTranscription];

  AnalyticsSendEventLazy();
}

id __44__AXPISystemActionHelper_toggleLiveCaptions__block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CE7C28];
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)toggleTorch
{
  v2 = [MEMORY[0x277CE7E48] server];
  [v2 toggleTorch];
}

- (void)_toggleClassicInvertColors
{
  v4 = [MEMORY[0x277CE7E18] sharedInstance];
  v2 = [v4 classicInvertColors];
  v3 = [MEMORY[0x277CE7E18] sharedInstance];
  [v3 setClassicInvertColors:v2 ^ 1u];
}

- (void)_toggleVoiceOver
{
  if (!_AXSVoiceOverTouchUsageConfirmed())
  {
    _AXSVoiceOverTouchSetUsageConfirmed();
  }

  v2 = _AXSVoiceOverTouchEnabled();
  if (!v2 && _AXSCanDisableApplicationAccessibility())
  {
    _AXSApplicationAccessibilitySetEnabled();
  }

  _AXSVoiceOverTouchSetEnabled();

  MEMORY[0x2821F0358](v2 == 0);
}

- (void)_toggleSmartInvert
{
  v2 = _AXSInvertColorsEnabled();
  v3 = [MEMORY[0x277CE7E18] sharedInstance];
  v4 = [v3 classicInvertColors];

  if (v4)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = [MEMORY[0x277CE7E18] sharedInstance];
    [v6 setClassicInvertColors:0];

    _AXSInvertColorsSetEnabled();
  }

  else
  {
    _AXSInvertColorsSetEnabled();
    if (v2)
    {
      return;
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  v8 = [MEMORY[0x277CE7E18] sharedInstance];
  [v8 setLastSmartInvertColorsEnablement:Current];
}

- (void)_toggleZoom
{
  v2 = _AXSZoomTouchEnabled() == 0;

  MEMORY[0x2821F03C8](v2);
}

- (void)_toggleZoomController
{
  v4 = [MEMORY[0x277CE7E18] sharedInstance];
  v2 = [v4 zoomShouldShowSlug];
  v3 = [MEMORY[0x277CE7E18] sharedInstance];
  [v3 setZoomShouldShowSlug:v2 ^ 1u];
}

- (void)startMagnifier
{
  v2 = [MEMORY[0x277D7EA30] sharedInstance];
  [v2 startMagnifierChangeTripleClickMenu:0];
}

- (BOOL)_hasScreenSwitch
{
  v2 = [MEMORY[0x277CE7E18] sharedInstance];
  v3 = [v2 assistiveTouchSwitches];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__AXPISystemActionHelper__hasScreenSwitch__block_invoke;
  v6[3] = &unk_278BE63A8;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __42__AXPISystemActionHelper__hasScreenSwitch__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 source];
  v4 = [v3 isEqual:*MEMORY[0x277CE7E98]];

  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (void)_toggleSwitchControl
{
  v3 = _AXSAssistiveTouchScannerEnabled();
  v4 = v3 != 0;
  if (v3)
  {
    if (![(AXPISystemActionHelper *)self _hasScreenSwitch]&& !_AXSClarityBoardEnabled())
    {
      v6 = [MEMORY[0x277CE7E48] server];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __46__AXPISystemActionHelper__toggleSwitchControl__block_invoke;
      v7[3] = &__block_descriptor_33_e8_v16__0q8l;
      v8 = v4;
      [v6 showAlert:9 withHandler:v7];

      return;
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  MEMORY[0x2821EFE48](v5);
}

uint64_t __46__AXPISystemActionHelper__toggleSwitchControl__block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x2821EFE48]((*(result + 32) & 1) == 0);
  }

  return result;
}

- (void)_toggleAssistiveTouch
{
  v2 = _AXSAssistiveTouchEnabled();
  _AXSAssistiveTouchSetEnabled();
  if (!v2)
  {

    MEMORY[0x2821EFE68](1);
  }
}

- (void)activateDetectionMode
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"apple-magnifier://detectionMode"];
  [(AXPISystemActionHelper *)self launchMagnifierWithURL:v3];
}

- (void)activateMagnifierAskQuestion
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"apple-magnifier://askQuestion"];
  [(AXPISystemActionHelper *)self launchMagnifierWithURL:v3];
}

- (void)launchMagnifierWithURL:(id)a3
{
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 mainBundle];
  v6 = [v5 bundleIdentifier];

  if (![(__CFString *)v6 length])
  {

    v6 = @"com.apple.voiceovertouch";
  }

  v7 = MEMORY[0x277D0AD60];
  v8 = *MEMORY[0x277D0AC70];
  v21[0] = *MEMORY[0x277D0AC40];
  v21[1] = v8;
  v22[0] = v4;
  v22[1] = MEMORY[0x277CBEC38];
  v9 = *MEMORY[0x277D0AC58];
  v22[2] = MEMORY[0x277CBEC38];
  v10 = *MEMORY[0x277D0AC38];
  v21[2] = v9;
  v21[3] = v10;
  v19 = *MEMORY[0x277D76690];
  v20 = v6;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v22[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v13 = [v7 optionsWithDictionary:v12];

  v14 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v15 = *MEMORY[0x277D81C00];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __49__AXPISystemActionHelper_launchMagnifierWithURL___block_invoke;
  v17[3] = &unk_278BE63F0;
  v18 = v13;
  v16 = v13;
  [v14 openApplication:v15 withOptions:v16 completion:v17];
}

void __49__AXPISystemActionHelper_launchMagnifierWithURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = AXLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 localizedDescription];
    v9 = *(a1 + 32);
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_23D742000, v7, OS_LOG_TYPE_DEFAULT, "DetectionMode gesture launched process: %@, launch error: %@ (options: %@)", &v10, 0x20u);
  }
}

- (void)activateMagnifierFromStaccato
{
  v20[5] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if (![(__CFString *)v3 length])
  {

    v3 = @"com.apple.voiceovertouch";
  }

  v4 = MEMORY[0x277D0AD60];
  v19[0] = *MEMORY[0x277D0AC40];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:@"apple-magnifier://staccato"];
  v6 = *MEMORY[0x277D0AC70];
  v20[0] = v5;
  v20[1] = MEMORY[0x277CBEC38];
  v7 = *MEMORY[0x277D0AC58];
  v19[1] = v6;
  v19[2] = v7;
  v20[2] = MEMORY[0x277CBEC38];
  v19[3] = *MEMORY[0x277D0AC38];
  v17 = *MEMORY[0x277D76690];
  v18 = v3;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v19[4] = *MEMORY[0x277D0AC28];
  v9 = *MEMORY[0x277D67060];
  v20[3] = v8;
  v20[4] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
  v11 = [v4 optionsWithDictionary:v10];

  v12 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v13 = *MEMORY[0x277D81C00];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__AXPISystemActionHelper_activateMagnifierFromStaccato__block_invoke;
  v15[3] = &unk_278BE63F0;
  v16 = v11;
  v14 = v11;
  [v12 openApplication:v13 withOptions:v14 completion:v15];
}

void __55__AXPISystemActionHelper_activateMagnifierFromStaccato__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = AXLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 localizedDescription];
    v9 = *(a1 + 32);
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_23D742000, v7, OS_LOG_TYPE_DEFAULT, "Magnifier Staccato gesture launched process: %@, launch error: %@ (options: %@)", &v10, 0x20u);
  }
}

- (void)_openCamera:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D0AC70]];
  v6 = @"back";
  if (v3)
  {
    v6 = @"front";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"camera://configuration?capturemode=photo&capturedevice=%@", v6];
  v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x277D0AC40]];
  v9 = [MEMORY[0x277D0AD60] optionsWithDictionary:v5];
  [v4 openApplication:*MEMORY[0x277CE68D8] withOptions:v9 completion:0];
}

- (void)_cameraAction:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CE7E48] server];
  v6 = [v5 focusedApps];
  v7 = [v6 firstObject];
  v8 = [v7 bundleIdentifier];
  v9 = [v8 isEqualToString:*MEMORY[0x277CE68D8]];

  if (v9)
  {

    [(AXPISystemActionHelper *)self increaseVolume];
  }

  else
  {
    [(AXPISystemActionHelper *)self _openCamera:v3];
    v10 = [MEMORY[0x277CE7E18] sharedInstance];
    v11 = [v10 assistiveTouchMouseOnDeviceEyeTrackingEnabled];

    v12 = [MEMORY[0x277CE7E18] sharedInstance];
    v13 = [v12 assistiveTouchHeadTrackingEnabled];

    if ((v11 & 1) != 0 || v13)
    {
      AXPerformBlockOnMainThreadAfterDelay();
    }
  }
}

- (void)_toggleColorFilters
{
  v2 = MADisplayFilterPrefGetCategoryEnabled() == 0;

  MEMORY[0x2821238F8](1, v2);
}

- (void)turnDigitalCrown:(int64_t)a3
{
  if (turnDigitalCrown__onceToken != -1)
  {
    [AXPISystemActionHelper turnDigitalCrown:];
  }

  if (a3 >= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = -a3;
  }

  if (a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0.0;
    do
    {
      v7 = v7 + 0.01;
      v8 = v4 - v5;
      if (v8 >= 10)
      {
        v8 = 10;
      }

      if (a3 >= 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = -v8;
      }

      v10 = dispatch_time(0, (v7 * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __43__AXPISystemActionHelper_turnDigitalCrown___block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v9;
      dispatch_after(v10, turnDigitalCrown__digitalCrownHIDQueue, block);
      v6 += v9;
      if (v6 >= 0)
      {
        v5 = v6;
      }

      else
      {
        v5 = -v6;
      }
    }

    while (v5 < v4);
  }
}

void __43__AXPISystemActionHelper_turnDigitalCrown___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.axpi.digital.crown.scroll.queue", v2);
  v1 = turnDigitalCrown__digitalCrownHIDQueue;
  turnDigitalCrown__digitalCrownHIDQueue = v0;
}

void __43__AXPISystemActionHelper_turnDigitalCrown___block_invoke_2()
{
  mach_absolute_time();
  ScrollEvent = IOHIDEventCreateScrollEvent();
  v1 = +[AXPIEventSender sharedInstance];
  [v1 sendIOHIDEventRef:ScrollEvent];

  if (ScrollEvent)
  {

    CFRelease(ScrollEvent);
  }
}

- (void)turnDigitalCrownFullRevolution:(BOOL)a3
{
  if (a3)
  {
    v3 = -200;
  }

  else
  {
    v3 = 200;
  }

  [(AXPISystemActionHelper *)self turnDigitalCrown:v3];
}

- (void)_activateSpeakScreen
{
  if (!_AXSSpeakThisEnabled())
  {
    _AXSSetSpeakThisEnabled();
    CFRunLoopRunInMode(*MEMORY[0x277CBF058], 0.5, 0);
  }

  v2 = [MEMORY[0x277D65368] sharedInstance];
  [v2 speakThisWithOptions:12 errorHandler:&__block_literal_global_389];
}

uint64_t __46__AXPISystemActionHelper__activateSpeakScreen__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return _AXLogWithFacility();
  }

  return result;
}

- (void)activateTripleClick
{
  v3 = [MEMORY[0x277CFA5E8] sharedSystemShellSwitcher];
  v4 = [v3 isClarityBoardEnabled];

  if (v4)
  {
    if (AXDeviceHasHomeButton())
    {
      [(AXPISystemActionHelper *)self activateHomeButton];
    }

    else
    {
      [(AXPISystemActionHelper *)self activateLockButton];
    }

    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {

    MEMORY[0x2821EFFF0]();
  }
}

- (void)shake
{
  if (_AXSShakeToUndoDisabled())
  {
    _AXSSetShakeToUndoDisabled();
  }

  AXPerformBlockOnMainThreadAfterDelay();
}

uint64_t __31__AXPISystemActionHelper_shake__block_invoke_2(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    return _AXSSetShakeToUndoDisabled();
  }

  return result;
}

- (void)_sendShakeEvent:(unint64_t)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CE7D50]);
  v5 = (&unk_23D75AD24 + 4 * a3);
  LODWORD(v6) = *v5;
  [v4 setX:v6];
  LODWORD(v7) = v5[1];
  [v4 setY:v7];
  LODWORD(v8) = v5[2];
  [v4 setZ:v8];
  [v4 setType:1];
  v9 = [MEMORY[0x277CE7D80] accelerometerRepresentation:v4];
  [v9 setPostHIDEventDirectly:1];
  v10 = +[AXPIEventSender sharedInstance];
  [v10 sendEventRepresentation:v9];

  if (a3 + 3 <= 0x20)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)takeScreenshot
{
  v2 = [MEMORY[0x277CE7D28] server];
  v3 = [v2 isGuidedAccessActive];

  if ((v3 & 1) == 0)
  {
    if (_AXSCommandAndControlEnabled())
    {
      ct_green_tea_logger_create();
      v4 = getCTGreenTeaOsLogHandle();
      v5 = v4;
      if (!v4 || !os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }

      v13 = 0;
      v6 = "Voice Control took screenshot";
      v7 = &v13;
    }

    else
    {
      v8 = _AXSAssistiveTouchEnabled();
      ct_green_tea_logger_create();
      v9 = getCTGreenTeaOsLogHandle();
      v5 = v9;
      if (v8)
      {
        if (!v9 || !os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          goto LABEL_14;
        }

        v12 = 0;
        v6 = "AssistiveTouch took screenshot";
        v7 = &v12;
      }

      else
      {
        if (!v9 || !os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          goto LABEL_14;
        }

        v11 = 0;
        v6 = "Switch Control took screenshot";
        v7 = &v11;
      }
    }

    _os_log_impl(&dword_23D742000, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
LABEL_14:

    ct_green_tea_logger_destroy();
    v10 = [MEMORY[0x277CE7E48] server];
    [v10 takeScreenshot];
  }
}

- (void)toggleControlCenter
{
  v2 = [MEMORY[0x277CE7E58] server];
  v3 = [v2 isControlCenterVisible];

  v4 = [MEMORY[0x277CE7E58] server];
  [v4 showControlCenter:v3 ^ 1u];
}

- (void)toggleWatchRemoteScreen
{
  if (AXDeviceSupportsWatchRemoteScreen())
  {
    v2 = _AXSTwiceRemoteScreenEnabled() == 0;
    _AXSTwiceRemoteScreenSetPlatform();

    MEMORY[0x2821F02D8](v2);
  }

  else
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [AXPISystemActionHelper toggleWatchRemoteScreen];
    }
  }
}

- (void)toggleNotificationCenter
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE7E48] server];
  v3 = [v2 isNotificationCenterVisible];

  v4 = AXLogPhysicalInteraction();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_23D742000, v4, OS_LOG_TYPE_INFO, "NC is visible: %d", v6, 8u);
  }

  if (v3)
  {
    v5 = [MEMORY[0x277CE7E48] server];
    [v5 showNotificationCenter:0];
  }

  AXPerformBlockOnMainThreadAfterDelay();
}

void __50__AXPISystemActionHelper_toggleNotificationCenter__block_invoke()
{
  v0 = [MEMORY[0x277CE7E48] server];
  [v0 toggleNotificationCenter];
}

- (void)adjustSystemZoom:(int64_t)a3
{
  v4 = [MEMORY[0x277CE7D28] server];
  v6 = v4;
  if (a3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [v4 adjustSystemZoom:v5];
}

- (int64_t)currentOrientation
{
  if ([MEMORY[0x277CE7D48] isAvailable])
  {
    v2 = [MEMORY[0x277CE7D48] server];
    v3 = [v2 activeInterfaceOrientation];
  }

  else
  {
    v2 = [MEMORY[0x277CE7E48] server];
    v3 = [v2 activeApplicationOrientation];
  }

  v4 = v3;

  return v4;
}

- (void)activateSOSMode
{
  v2 = [MEMORY[0x277CE7E48] server];
  [v2 activateSOSMode];
}

- (void)rebootDevice
{
  v2 = [MEMORY[0x277CE7E58] server];
  [v2 rebootDevice];
}

- (void)performSysdiagnoseWithStatusUpdateHandler:(id)a3
{
  v4 = a3;
  v5 = AXLogPhysicalInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23D742000, v5, OS_LOG_TYPE_DEFAULT, "Generating sysdiagnose.", buf, 2u);
  }

  v6 = dispatch_get_global_queue(9, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__AXPISystemActionHelper_performSysdiagnoseWithStatusUpdateHandler___block_invoke;
  v8[3] = &unk_278BE6540;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __68__AXPISystemActionHelper_performSysdiagnoseWithStatusUpdateHandler___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v2 = [MEMORY[0x277D82CB0] isSysdiagnoseInProgressWithError:&v46];
  v3 = v46;
  v4 = v3;
  if (v2)
  {
    v45 = v3;
    v5 = [MEMORY[0x277D82CB0] cancelActiveSysdiagnoseWithError:&v45];
    v6 = v45;

    v7 = AXLogPhysicalInteraction();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23D742000, v8, OS_LOG_TYPE_DEFAULT, "Interrupting current sysdiagnose before generating.", buf, 2u);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__AXPISystemActionHelper_performSysdiagnoseWithStatusUpdateHandler___block_invoke_402;
      block[3] = &unk_278BE64C8;
      v9 = &v44;
      v44 = *(a1 + 40);
      dispatch_async(MEMORY[0x277D85CD0], block);
      v10 = *(a1 + 32);
      v11 = *(v10 + 24);
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __68__AXPISystemActionHelper_performSysdiagnoseWithStatusUpdateHandler___block_invoke_2;
      v42[3] = &unk_278BE62B8;
      v42[4] = v10;
      dispatch_sync(v11, v42);
      goto LABEL_14;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __68__AXPISystemActionHelper_performSysdiagnoseWithStatusUpdateHandler___block_invoke_cold_2();
    }

    v13 = *(a1 + 32);
    v14 = *(v13 + 24);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __68__AXPISystemActionHelper_performSysdiagnoseWithStatusUpdateHandler___block_invoke_409;
    v41[3] = &unk_278BE62B8;
    v41[4] = v13;
    dispatch_sync(v14, v41);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __68__AXPISystemActionHelper_performSysdiagnoseWithStatusUpdateHandler___block_invoke_2_410;
    v39[3] = &unk_278BE64C8;
    v40 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v39);
  }

  else
  {
    if (!v3)
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __68__AXPISystemActionHelper_performSysdiagnoseWithStatusUpdateHandler___block_invoke_2_418;
      v35[3] = &unk_278BE64C8;
      v9 = &v36;
      v36 = *(a1 + 40);
      dispatch_async(MEMORY[0x277D85CD0], v35);
      v6 = 0;
LABEL_14:

      v34 = v6;
      v15 = [MEMORY[0x277D82CB0] sysdiagnoseWithMetadata:&unk_284FC7898 withError:&v34];
      v16 = v34;

      *buf = 0;
      v29 = buf;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__0;
      v32 = __Block_byref_object_dispose__0;
      v33 = 0;
      if (v15)
      {
        v17 = AXLogPhysicalInteraction();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v47 = 138543362;
          v48 = v15;
          _os_log_impl(&dword_23D742000, v17, OS_LOG_TYPE_DEFAULT, "Sysdiagnose completed. File path: %{public}@", v47, 0xCu);
        }

        v18 = AXPILocalizedString(@"SYSDIAGNOSE_COMPLETED");
        v19 = *(v29 + 5);
        *(v29 + 5) = v18;
      }

      else
      {
        v20 = *(a1 + 32);
        v21 = *(v20 + 24);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __68__AXPISystemActionHelper_performSysdiagnoseWithStatusUpdateHandler___block_invoke_429;
        v25[3] = &unk_278BE64F0;
        v25[4] = v20;
        v26 = v16;
        v27 = buf;
        dispatch_sync(v21, v25);
      }

      if (*(v29 + 5))
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __68__AXPISystemActionHelper_performSysdiagnoseWithStatusUpdateHandler___block_invoke_430;
        v22[3] = &unk_278BE6518;
        v23 = *(a1 + 40);
        v24 = buf;
        dispatch_async(MEMORY[0x277D85CD0], v22);
      }

      _Block_object_dispose(buf, 8);

      v6 = v16;
      goto LABEL_22;
    }

    v12 = AXLogPhysicalInteraction();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __68__AXPISystemActionHelper_performSysdiagnoseWithStatusUpdateHandler___block_invoke_cold_1();
    }

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __68__AXPISystemActionHelper_performSysdiagnoseWithStatusUpdateHandler___block_invoke_414;
    v37[3] = &unk_278BE64C8;
    v38 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v37);

    v6 = v4;
  }

LABEL_22:
}

void __68__AXPISystemActionHelper_performSysdiagnoseWithStatusUpdateHandler___block_invoke_402(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = AXPILocalizedString(@"SYSDIAGNOSE_BEGAN_AFTER_CANCEL");
  (*(v1 + 16))(v1, v2);
}

uint64_t __68__AXPISystemActionHelper_performSysdiagnoseWithStatusUpdateHandler___block_invoke_409(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    *(v1 + 16) = v2 - 1;
  }

  return result;
}

void __68__AXPISystemActionHelper_performSysdiagnoseWithStatusUpdateHandler___block_invoke_2_410(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = AXPILocalizedString(@"SYSDIAGNOSE_IN_PROGRESS");
  (*(v1 + 16))(v1, v2);
}

void __68__AXPISystemActionHelper_performSysdiagnoseWithStatusUpdateHandler___block_invoke_414(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = AXPILocalizedString(@"SYSDIAGNOSE_FAILED");
  (*(v1 + 16))(v1, v2);
}

void __68__AXPISystemActionHelper_performSysdiagnoseWithStatusUpdateHandler___block_invoke_2_418(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = AXPILocalizedString(@"SYSDIAGNOSE_BEGAN");
  (*(v1 + 16))(v1, v2);
}

void __68__AXPISystemActionHelper_performSysdiagnoseWithStatusUpdateHandler___block_invoke_429(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = AXLogPhysicalInteraction();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (v2)
  {
    if (v4)
    {
      __68__AXPISystemActionHelper_performSysdiagnoseWithStatusUpdateHandler___block_invoke_429_cold_1();
    }

    --*(*(a1 + 32) + 16);
  }

  else
  {
    if (v4)
    {
      __68__AXPISystemActionHelper_performSysdiagnoseWithStatusUpdateHandler___block_invoke_429_cold_2();
    }

    if ([*(a1 + 40) code] == -56)
    {
      v5 = @"SYSDIAGNOSE_IN_PROGRESS";
    }

    else
    {
      v5 = @"SYSDIAGNOSE_FAILED";
    }

    v6 = AXPILocalizedString(v5);
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v6);
  }
}

- (void)_showAlertForReboot
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277CBF188];
  v2 = AXPILocalizedString(@"REBOOT_ALERT_MESSAGE_TV");
  v16[0] = v2;
  v15[1] = *MEMORY[0x277CBF1E8];
  v3 = AXPILocalizedString(@"REBOOT_ALERT_CONFIRM");
  v16[1] = v3;
  v15[2] = *MEMORY[0x277CBF1C0];
  v4 = AXPILocalizedString(@"ALERT_CANCEL");
  v16[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  error = 0;
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 3uLL, &error, v5);
  if (v7)
  {
    v8 = v7;
    RunLoopSource = CFUserNotificationCreateRunLoopSource(v6, v7, rebootAlertCallBack, 0);
    if (RunLoopSource)
    {
      v10 = RunLoopSource;
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, v10, *MEMORY[0x277CBF048]);
      v12 = v10;
    }

    else
    {
      v12 = v8;
    }

    CFRelease(v12);
  }

  else
  {
    v13 = AXLogPhysicalInteraction();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AXPISystemActionHelper _showAlertForReboot];
    }
  }
}

- (void)pressCameraButton
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CE6930]];
  v5 = [v4 objectForKey:@"SBCaptureButtonClickCount"];
  v6 = [v5 intValue];

  [(AXPISystemActionHelper *)self _sendButtonEvent:1044];
  if (v6 > 1)
  {
    AXPerformBlockOnMainThreadAfterDelay();
    AXPerformBlockOnMainThreadAfterDelay();
  }

  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)lightPressCameraButton
{
  [(AXPISystemActionHelper *)self _sendButtonEvent:1046];
  [(AXPISystemActionHelper *)self _sendButtonEvent:1047];
  [(AXPISystemActionHelper *)self _sendButtonEvent:1048];
  AXPerformBlockOnMainThreadAfterDelay();
}

uint64_t __48__AXPISystemActionHelper_lightPressCameraButton__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _sendButtonEvent:1051];
  [*(a1 + 32) _sendButtonEvent:1050];
  v2 = *(a1 + 32);

  return [v2 _sendButtonEvent:1049];
}

- (void)openVisualIntelligence
{
  v2 = objc_alloc_init(getSiriSimpleActivationSourceClass());
  [v2 activateFromSource:54];
  [v2 invalidate];
}

- (void)launchAccessibilityReader
{
  v3 = [MEMORY[0x277CE7E18] sharedInstance];
  v4 = [v3 accessibilityReaderEnabled];

  if (v4)
  {

    [(AXPISystemActionHelper *)self _launchAccessibilityReaderHelper];
  }

  else
  {
    v5 = [MEMORY[0x277CE7E18] sharedInstance];
    [v5 setAccessibilityReaderEnabled:1];

    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)_launchAccessibilityReaderHelper
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = AXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23D742000, v2, OS_LOG_TYPE_DEFAULT, "Before opening URL : apple-axreader://", buf, 2u);
  }

  v3 = [MEMORY[0x277CE7E48] server];
  v4 = [v3 focusedApps];
  v5 = [v4 firstObject];
  v6 = [v5 bundleIdentifier];

  if ([v6 isEqual:@"com.apple.accessibility.AccessibilityReader"])
  {
    v7 = AXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23D742000, v7, OS_LOG_TYPE_DEFAULT, "Tried to open AX Reader from AX Reader - No op", buf, 2u);
    }
  }

  else
  {
    v8 = [MEMORY[0x277CBEBC0] URLWithString:@"apple-axreader://"];
    if (v6)
    {
      v9 = objc_opt_new();
      [v9 setScheme:@"apple-axreader"];
      [v9 setHost:@"new"];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@", v6];
      [v9 setQuery:v10];

      v11 = [v9 URL];

      v8 = v11;
    }

    v12 = AXLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&dword_23D742000, v12, OS_LOG_TYPE_DEFAULT, "Parameterized URL : %@", buf, 0xCu);
    }

    v13 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__AXPISystemActionHelper__launchAccessibilityReaderHelper__block_invoke;
    block[3] = &unk_278BE62B8;
    v16 = v8;
    v7 = v8;
    dispatch_async(v13, block);

    v14 = AXLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23D742000, v14, OS_LOG_TYPE_DEFAULT, "After opening URL : apple-axreader://", buf, 2u);
    }
  }
}

void __58__AXPISystemActionHelper__launchAccessibilityReaderHelper__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v2 openSensitiveURL:*(a1 + 32) withOptions:0];
}

- (void)warm
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_homeButtonUserDevice)
  {
    *bytes = xmmword_23D75ADA8;
    *&bytes[9] = *(&xmmword_23D75ADA8 + 9);
    v3 = *MEMORY[0x277CBECE8];
    v4 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 25);
    v5 = [MEMORY[0x277CBEB38] dictionary];
    CFDictionarySetValue(v5, @"ReportDescriptor", v4);
    CFRelease(v4);
    CFDictionarySetValue(v5, @"PressCountTrackingEnabled", *MEMORY[0x277CBED28]);
    _AXSHomeClickSpeed();
    valuePtr = (v6 * 1000000.0);
    v7 = CFNumberCreate(v3, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(v5, @"PressCountDoublePressTimeout", v7);
    CFDictionarySetValue(v5, @"PressCountTriplePressTimeout", v7);
    CFRelease(v7);
    v11 = 500000;
    v8 = CFNumberCreate(v3, kCFNumberIntType, &v11);
    CFDictionarySetValue(v5, @"LongPressTimeout", v8);
    CFRelease(v8);
    v9 = IOHIDUserDeviceCreate();
    self->_homeButtonUserDevice = v9;
    if (v9)
    {
      AXPerformBlockSynchronouslyOnMainThread();
    }

    else
    {
      v10 = AXLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [AXPISystemActionHelper warm];
      }
    }
  }
}

uint64_t __30__AXPISystemActionHelper_warm__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  Main = CFRunLoopGetMain();
  v3 = *MEMORY[0x277CBF058];

  return MEMORY[0x282121FF0](v1, Main, v3);
}

- (void)_handleHomeButtonDispatch:(BOOL)a3
{
  if (self->_homeButtonUserDevice)
  {
    goto LABEL_5;
  }

  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [AXPISystemActionHelper _handleHomeButtonDispatch:v5];
  }

  if (self->_homeButtonUserDevice)
  {
LABEL_5:
    v6 = *MEMORY[0x277CBECE8];
    Current = CFAbsoluteTimeGetCurrent();
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__AXPISystemActionHelper__handleHomeButtonDispatch___block_invoke;
    v10[3] = &unk_278BE6568;
    v11 = a3;
    v10[4] = self;
    v8 = CFRunLoopTimerCreateWithHandler(v6, Current, 0.0, 0, 0, v10);
    Main = CFRunLoopGetMain();
    CFRunLoopAddTimer(Main, v8, *MEMORY[0x277CBF058]);
    CFRelease(v8);
  }
}

uint64_t __52__AXPISystemActionHelper__handleHomeButtonDispatch___block_invoke(uint64_t a1)
{
  v2 = AXLogPhysicalInteraction();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __52__AXPISystemActionHelper__handleHomeButtonDispatch___block_invoke_cold_1(a1, v2);
  }

  return IOHIDUserDeviceHandleReport();
}

- (void)_sendButtonEvent:(unsigned int)a3 postHIDEventDirectly:(BOOL)a4
{
  v4 = a4;
  v6 = [MEMORY[0x277CE7D80] buttonRepresentationWithType:*&a3];
  [v6 setAdditionalFlags:{objc_msgSend(v6, "additionalFlags") | 0x4000}];
  [v6 setPostHIDEventDirectly:v4];
  v5 = +[AXPIEventSender sharedInstance];
  [v5 sendEventRepresentation:v6];
}

- (void)_sendDeviceOrientationChange:(int64_t)a3
{
  v4 = 0x277CE7D48;
  if (([MEMORY[0x277CE7D48] isAvailable] & 1) != 0 || (v4 = 0x277CE7E48, objc_msgSend(MEMORY[0x277CE7E48], "server"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isControlCenterVisible"), v5, (v6 & 1) == 0))
  {
    v7 = [*v4 server];
    [v7 setOrientation:a3];
  }
}

- (void)performActionForSystemAction:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 isEqualToString:*MEMORY[0x277CE7B60]])
  {
    if ([v6 isEqualToString:*MEMORY[0x277CE7A08]])
    {
      [(AXPISystemActionHelper *)self toggleAppSwitcher];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7A70]])
    {
      [(AXPISystemActionHelper *)self toggleControlCenter];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7AA0]])
    {
      [(AXPISystemActionHelper *)self activateHomeButton];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7AC0]])
    {
      [(AXPISystemActionHelper *)self activateLockButton];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7AD8]])
    {
      [(AXPISystemActionHelper *)self toggleRingerSwitch:[(AXPISystemActionHelper *)self isRingerSwitchOn]^ 1];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7AE8]])
    {
      [(AXPISystemActionHelper *)self toggleNotificationCenter];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7B00]])
    {
      [(AXPISystemActionHelper *)self toggleReachability];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7B10]])
    {
      [(AXPISystemActionHelper *)self takeScreenshot];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7B28]])
    {
      [(AXPISystemActionHelper *)self shake];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7B30]])
    {
      [(AXPISystemActionHelper *)self activateSiriFromClient:v7];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7B68]])
    {
      [(AXPISystemActionHelper *)self activateTypeToSiri];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7B08]])
    {
      [(AXPISystemActionHelper *)self activateSOSMode];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7B48]])
    {
      [(AXPISystemActionHelper *)self toggleSpotlight];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7A60]])
    {
      [(AXPISystemActionHelper *)self toggleCommandAndControl];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7B88]])
    {
      [(AXPISystemActionHelper *)self increaseVolume];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7B80]])
    {
      [(AXPISystemActionHelper *)self decreaseVolume];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7A10]])
    {
      [(AXPISystemActionHelper *)self armApplePay];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7AA8]])
    {
      [(AXPISystemActionHelper *)self _toggleHoverTextTyping];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7A68]])
    {
      [(AXPISystemActionHelper *)self confirmApplePay];
      goto LABEL_48;
    }

    v8 = *MEMORY[0x277CE79A8];
    if ([v6 hasPrefix:*MEMORY[0x277CE79A8]])
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-", v8];
      v10 = [v6 rangeOfString:v9];
      v12 = [v6 substringFromIndex:v10 + v11];

      v13 = [MEMORY[0x277CE7E30] sharedManager];
      v14 = [v13 shortcutForIdentifier:v12];

      v15 = [MEMORY[0x277CE7E30] sharedManager];
      [v15 performShortcut:v14];

      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7B20]])
    {
      v16 = self;
      v17 = 0;
LABEL_47:
      [(AXPISystemActionHelper *)v16 _performScrollAction:v17];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7B18]])
    {
      v16 = self;
      v17 = 1;
      goto LABEL_47;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7A20]])
    {
      [(AXPISystemActionHelper *)self _toggleAssistiveTouch];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7B78]])
    {
      [(AXPISystemActionHelper *)self _toggleVoiceOver];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7A50]])
    {
      [(AXPISystemActionHelper *)self _toggleClassicInvertColors];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7A58]])
    {
      [(AXPISystemActionHelper *)self _toggleColorFilters];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7B38]])
    {
      [(AXPISystemActionHelper *)self _toggleSmartInvert];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7B98]])
    {
      [(AXPISystemActionHelper *)self _toggleZoom];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7BA0]])
    {
      [(AXPISystemActionHelper *)self _toggleZoomController];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7AC8]])
    {
      [(AXPISystemActionHelper *)self startMagnifier];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7B50]])
    {
      [(AXPISystemActionHelper *)self _toggleSwitchControl];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7A90]])
    {
      [(AXPISystemActionHelper *)self _toggleFullKeyboardAccess];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7B40]])
    {
      [(AXPISystemActionHelper *)self _activateSpeakScreen];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7B58]])
    {
      [(AXPISystemActionHelper *)self toggleTorch];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7A28]])
    {
      [(AXPISystemActionHelper *)self toggleBackgroundSounds];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7AB0]])
    {
      [(AXPISystemActionHelper *)self toggleLiveCaptions];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7AB8]])
    {
      [(AXPISystemActionHelper *)self toggleLiveSpeech];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7A80]])
    {
      v18 = MEMORY[0x277CE7E68];
      v19 = 35;
LABEL_85:
      [v18 toggleTripleClickOption:v19];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7AD0]])
    {
      v18 = MEMORY[0x277CE7E68];
      v19 = 36;
      goto LABEL_85;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7A98]])
    {
      v18 = MEMORY[0x277CE7E68];
      v19 = 38;
      goto LABEL_85;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7AE0]])
    {
      [(AXPISystemActionHelper *)self toggleNearbyDeviceControlPicker];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7A78]])
    {
      if (!_AXSVoiceOverTouchEnabled())
      {
        [(AXPISystemActionHelper *)self activateDetectionMode];
        goto LABEL_48;
      }

      v20 = [MEMORY[0x277CE7E18] sharedInstance];
      v21 = [v20 liveRecognitionActive];

      v22 = [MEMORY[0x277CE7E88] server];
      v23 = v22;
      if (v21)
      {
        v24 = 51;
      }

      else
      {
        v24 = 50;
      }

      [v22 triggerCommand:v24];
LABEL_102:

      goto LABEL_48;
    }

    if (AXDeviceSupportsWatchRemoteScreen() && [v6 isEqualToString:*MEMORY[0x277CE7B90]])
    {
      [(AXPISystemActionHelper *)self toggleWatchRemoteScreen];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7A18]])
    {
      [(AXPISystemActionHelper *)self toggleAssistiveAccess];
      goto LABEL_48;
    }

    if ([v6 isEqualToString:*MEMORY[0x277CE7A30]])
    {
      v25 = self;
      v26 = 0;
    }

    else
    {
      if (![v6 isEqualToString:*MEMORY[0x277CE7A88]])
      {
        if ([v6 isEqualToString:*MEMORY[0x277CE7AF8]])
        {
          v23 = [MEMORY[0x277CE7E48] server];
          [v23 setOrientationLocked:[v23 isOrientationLocked]^ 1];
        }

        else
        {
          if ([v6 isEqualToString:*MEMORY[0x277CE7A38]])
          {
            [(AXPISystemActionHelper *)self pressCameraButton];
            goto LABEL_48;
          }

          if ([v6 isEqualToString:*MEMORY[0x277CE7A48]])
          {
            [(AXPISystemActionHelper *)self lightPressCameraButton];
            goto LABEL_48;
          }

          if ([v6 isEqualToString:*MEMORY[0x277CE7A40]])
          {
            [(AXPISystemActionHelper *)self doubleLightPressCameraButton];
            goto LABEL_48;
          }

          if ([v6 isEqualToString:*MEMORY[0x277CE7B70]])
          {
            [(AXPISystemActionHelper *)self openVisualIntelligence];
            goto LABEL_48;
          }

          if ([v6 isEqualToString:*MEMORY[0x277CE79F8]])
          {
            [(AXPISystemActionHelper *)self launchAccessibilityReader];
            goto LABEL_48;
          }

          if (AXDeviceHasStaccato() && [v6 isEqualToString:*MEMORY[0x277CE7A00]])
          {
            v23 = +[AXPISystemActionHelper sharedInstance];
            [v23 pressStaccato];
          }

          else if ([v6 isEqualToString:*MEMORY[0x277CE7AF0]])
          {
            v23 = [MEMORY[0x277CE7E18] sharedInstance];
            v27 = [v23 assistiveTouchMouseOnDeviceEyeTrackingEnabled];
            v28 = [MEMORY[0x277CE7E18] sharedInstance];
            [v28 setAssistiveTouchMouseOnDeviceEyeTrackingEnabled:v27 ^ 1u];
          }

          else
          {
            if (!v6)
            {
              goto LABEL_48;
            }

            v23 = AXLogPhysicalInteraction();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [AXPISystemActionHelper performActionForSystemAction:fromClient:];
            }
          }
        }

        goto LABEL_102;
      }

      v25 = self;
      v26 = 1;
    }

    [(AXPISystemActionHelper *)v25 _cameraAction:v26];
    goto LABEL_48;
  }

  [(AXPISystemActionHelper *)self activateTripleClick];
LABEL_48:
}

void __47__AXPISystemActionHelper__performScrollAction___block_invoke(uint64_t a1)
{
  v32[2] = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 32) + 32))
  {
    v2 = objc_alloc_init(AXPIFingerController);
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = v2;
  }

  v5 = [MEMORY[0x277CE7E48] server];
  v6 = [v5 activeApplicationOrientation];

  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  AX_CGRectGetCenter();
  if (v6)
  {
    v18 = v16;
    v19 = v17;
    if (v6 > 2)
    {
      if (v6 - 3 <= 1)
      {
        v24 = *(a1 + 40);
        v36.origin.x = v9;
        v36.origin.y = v11;
        v36.size.width = v13;
        v36.size.height = v15;
        Width = CGRectGetWidth(v36);
        if (v24)
        {
          Width = -Width;
        }

        v26 = Width / 3.0;
        if (v6 != 4)
        {
          v26 = -v26;
        }

        v18 = v18 + v26;
      }
    }

    else
    {
      v20 = *(a1 + 40);
      v35.origin.x = v9;
      v35.origin.y = v11;
      v35.size.width = v13;
      v35.size.height = v15;
      Height = CGRectGetHeight(v35);
      if (v20)
      {
        Height = -Height;
      }

      v22 = Height * 0.25;
      v23 = -(Height * 0.25);
      if (v6 == 1)
      {
        v23 = v22;
      }

      v19 = v19 + v23;
    }

    v27 = MEMORY[0x277CE7DD8];
    AX_CGRectGetCenter();
    v28 = NSStringFromCGPoint(v33);
    v32[0] = v28;
    v34.x = v18;
    v34.y = v19;
    v29 = NSStringFromCGPoint(v34);
    v32[1] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v31 = [v27 lineGestureBetweenPoints:v30 duration:0.25];

    [*(*(a1 + 32) + 32) performGesture:v31];
  }
}

void __52__AXPISystemActionHelper__handleHomeButtonDispatch___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_23D742000, a2, OS_LOG_TYPE_DEBUG, "send home button state down: %d", v3, 8u);
}

@end