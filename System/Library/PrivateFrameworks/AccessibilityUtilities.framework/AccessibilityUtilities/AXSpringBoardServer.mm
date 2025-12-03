@interface AXSpringBoardServer
+ (BOOL)isAvailable;
+ (id)server;
- (AXSpringBoardServer)init;
- (BOOL)_isSystemAppFrontmostExcludingSiri:(BOOL)siri;
- (BOOL)_shouldDispatchLocally;
- (BOOL)areSystemGesturesDisabledByAccessibility;
- (BOOL)areSystemGesturesDisabledNatively;
- (BOOL)bluetoothPowerEnabled;
- (BOOL)canLaunchAsFloatingApplicationForIconView:(id)view;
- (BOOL)canLaunchAsPinnedApplicationForIconView:(id)view;
- (BOOL)canSetDockIconActivationMode;
- (BOOL)connectedDevicesRequireAssistiveTouch;
- (BOOL)currentDevicesHaveAssistiveTouchCustomActions;
- (BOOL)dismissBuddyIfNecessary;
- (BOOL)dismissSiri;
- (BOOL)hasActiveCall;
- (BOOL)hasActiveEndpointCall;
- (BOOL)hasActiveOrPendingCall;
- (BOOL)hasActiveOrPendingCallOrFaceTime;
- (BOOL)isAppSwitcherVisible;
- (BOOL)isAppleWatchRemoteScreenActive;
- (BOOL)isBannerVisible;
- (BOOL)isChamoisOrFlexibleWindowingEnabled;
- (BOOL)isContinuitySessionActive;
- (BOOL)isControlCenterVisible;
- (BOOL)isDarkModeActive;
- (BOOL)isDockVisible;
- (BOOL)isGuidedAccessActive;
- (BOOL)isInspectorMinimized;
- (BOOL)isLockScreenVisible;
- (BOOL)isMagnifierVisible;
- (BOOL)isMakingEmergencyCall;
- (BOOL)isMenuBarModal;
- (BOOL)isMenuBarVisible;
- (BOOL)isNonExclusiveSystemUIFocusableIncludingPIPWindow:(BOOL)window includingNonDismissableElements:(BOOL)elements;
- (BOOL)isNotificationCenterVisible;
- (BOOL)isNotificationVisible;
- (BOOL)isOrientationLocked;
- (BOOL)isPIPWindowVisible;
- (BOOL)isPasscodeLockVisible;
- (BOOL)isPurpleBuddyAppFrontmost;
- (BOOL)isRemoteAlertVisible;
- (BOOL)isRingerMuted;
- (BOOL)isScreenLockedWithPasscode:(BOOL *)passcode;
- (BOOL)isScreenshotWindowVisible;
- (BOOL)isSettingsAppFrontmost;
- (BOOL)isShelfSwitcherVisible;
- (BOOL)isShowingAXAlert;
- (BOOL)isShowingHomescreen;
- (BOOL)isShowingLongLookNotification;
- (BOOL)isShowingNonSystemApp;
- (BOOL)isShowingRemoteView:(int64_t)view;
- (BOOL)isSideSwitchUsedForOrientation;
- (BOOL)isSiriVisible;
- (BOOL)isSpeakThisTemporarilyDisabled;
- (BOOL)isSpotlightVisible;
- (BOOL)isStageManagerSwitcherVisible;
- (BOOL)isStatusBarNativeFocusableIncludingNonDismissableElements:(BOOL)elements;
- (BOOL)isSyncingRestoringResettingOrUpdating;
- (BOOL)isSystemAppShowingAnAlert;
- (BOOL)isSystemSleeping;
- (BOOL)isTypeToSiriVisible;
- (BOOL)isVoiceControlRunning;
- (BOOL)loadGAXBundleForUnmanagedASAM;
- (BOOL)performMedusaGesture:(unint64_t)gesture;
- (BOOL)showControlCenter:(BOOL)center;
- (BOOL)showNotificationCenter:(BOOL)center;
- (BOOL)toggleDarkMode;
- (BOOL)toggleIncomingCall;
- (BOOL)voiceOverEnabled;
- (BOOL)zoomEnabled;
- (double)reachabilityOffset;
- (double)volumeLevel;
- (id)_axSpringBoardServerInstance;
- (id)_axSpringBoardServerInstanceDelegate;
- (id)_axSpringBoardServerInstanceIfExists;
- (id)_handleMediaPlayingResult:(id)result;
- (id)_handleReachabilityResult:(id)result;
- (id)_handleReplyResult:(id)result;
- (id)_payloadForRemoteViewType:(int64_t)type data:(id)data;
- (id)allowedMedusaGestures;
- (id)appNameFromPid:(int)pid;
- (id)applicationWithIdentifier:(id)identifier;
- (id)displayIdentifierForSceneIdentifier:(id)identifier;
- (id)focusedAppPID;
- (id)focusedAppProcess;
- (id)focusedApps;
- (id)focusedOccludedAppScenes;
- (id)installedApps;
- (id)internalApps;
- (id)jindoAppBundleIndentifiers;
- (id)medusaApps;
- (id)runningAppPIDs;
- (id)runningAppProcesses;
- (id)splashImageForAppWithBundleIdentifier:(id)identifier;
- (id)visibleTripleClickItems;
- (int)nativeFocusedApplication;
- (int)pid;
- (int)purpleBuddyPID;
- (int)topEventPidOverride;
- (int64_t)activeApplicationOrientation;
- (int64_t)activeInterfaceOrientation;
- (void)_didConnectToClient;
- (void)_didConnectToServer;
- (void)_isSystemAppFrontmostExcludingSiri:(BOOL)siri completion:(id)completion;
- (void)_sendRemoteViewIPCMessage:(int)message withRemoteViewType:(int64_t)type withData:(id)data;
- (void)_wasDisconnectedFromClient;
- (void)_willClearServer;
- (void)acquireAssertionWithType:(id)type identifier:(id)identifier;
- (void)activateSOSMode;
- (void)activeInterfaceOrientation:(id)orientation;
- (void)armApplePay;
- (void)cancelReachabilityDetection;
- (void)cancelSiriDismissalForAssistiveTouch;
- (void)cleanupAlertHandler;
- (void)copyStringToPasteboard:(id)pasteboard;
- (void)didPotentiallyDismissNonExclusiveSystemUI;
- (void)dismissAppSwitcher;
- (void)dismissShelfSwitcher;
- (void)freezeClarityUILoadingScreenWithCompletion:(id)completion;
- (void)hideAlert;
- (void)hideNotificationCenter;
- (void)installGuestPassAcceptDialogGesture;
- (void)installGuestPassPINGesture;
- (void)isMagnifierVisibleWithCompletion:(id)completion;
- (void)isMediaPlayingForApp:(id)app completionHandler:(id)handler;
- (void)isSystemSleeping:(id)sleeping;
- (void)launchAccessibilityReader;
- (void)launchApplication:(id)application;
- (void)launchFloatingApplication:(id)application;
- (void)launchMagnifierApp;
- (void)launchOnboardingViewService:(id)service;
- (void)launchPinnedApplication:(id)application onLeadingSide:(BOOL)side;
- (void)launchVoiceOverImageExplorerViewServiceForResult:(id)result withData:(id)data;
- (void)launchVoiceOverQuickSettingsViewService:(id)service;
- (void)openAppSwitcher;
- (void)openAssistiveTouchCustomGestureCreation;
- (void)openCommandAndControlCommands;
- (void)openCommandAndControlSettings;
- (void)openCommandAndControlVocabulary;
- (void)openSCATCustomGestureCreation;
- (void)openTypeToSiri;
- (void)openVoiceControl;
- (void)pauseMediaForApp:(id)app;
- (void)pid:(id)pid;
- (void)presentNearbyDeviceControlPicker;
- (void)purpleBuddyPID:(id)d;
- (void)reactivateInCallService;
- (void)rebootDevice;
- (void)registerReachabilityHandler:(id)handler withIdentifierCallback:(id)callback;
- (void)relinquishAssertionWithType:(id)type identifier:(id)identifier;
- (void)removeGuestPassAcceptDialogGesture;
- (void)removeReachabilityHandler:(id)handler;
- (void)requestDismissJindo;
- (void)resetDimTimer;
- (void)resumeMediaForApp:(id)app;
- (void)revealSpotlight;
- (void)screenLockStatus:(id)status passcodeStatusRequired:(BOOL)required;
- (void)setBluetoothPowerEnabled:(BOOL)enabled;
- (void)setCancelGestureActivation:(unint64_t)activation cancelEnabled:(BOOL)enabled;
- (void)setCaptionPanelContextId:(unsigned int)id;
- (void)setDockIconActivationMode:(unint64_t)mode;
- (void)setHearingAidControlVisible:(BOOL)visible;
- (void)setMenuBarVisible:(BOOL)visible;
- (void)setOrientation:(int64_t)orientation;
- (void)setOrientationLocked:(BOOL)locked;
- (void)setReachabilityActive:(BOOL)active;
- (void)setReachabilityEnabled:(BOOL)enabled;
- (void)setShouldFocusNonExclusiveSystemUI:(BOOL)i;
- (void)setShowSpeechPlaybackControls:(BOOL)controls;
- (void)setVoiceOverEnabled:(BOOL)enabled;
- (void)setZoomEnabled:(BOOL)enabled;
- (void)showAlert:(int)alert withHandler:(id)handler withData:(id)data;
- (void)showNotificationCenter;
- (void)simulateEdgePressHaptics;
- (void)startHearingAidServer;
- (void)systemAppInfoWithQuery:(unint64_t)query completion:(id)completion;
- (void)takeScreenshot;
- (void)toggleAppLibrary;
- (void)toggleBackgroundSounds;
- (void)toggleConversationBoost;
- (void)toggleDetectionMode;
- (void)toggleDock;
- (void)toggleLiveTranscription;
- (void)toggleNotificationCenter;
- (void)toggleQuickNote;
- (void)toggleReachability;
- (void)toggleSpotlight;
- (void)toggleTorch;
- (void)unlockDevice;
- (void)wakeUpDeviceIfNecessary;
@end

@implementation AXSpringBoardServer

+ (id)server
{
  mEMORY[0x1E6994660] = [MEMORY[0x1E6994660] sharedSystemShellSwitcher];
  isClarityBoardEnabled = [mEMORY[0x1E6994660] isClarityBoardEnabled];

  if (isClarityBoardEnabled && server_onceToken_0 != -1)
  {
    +[AXSpringBoardServer server];
  }

  if ([self isAvailable])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__AXSpringBoardServer_server__block_invoke_434;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (server_onceToken_433 != -1)
    {
      dispatch_once(&server_onceToken_433, block);
    }

    v5 = server_Server_0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isAvailable
{
  if (AXProcessIsSpringBoard() & 1) == 0 && ((AXInPreboardScenario() & 1) != 0 || (AXInCheckerBoardScenario()) || _AXSMossdeepEnabled() || _AXSIsNonUIBuild())
  {
    return 0;
  }

  mEMORY[0x1E6994660] = [MEMORY[0x1E6994660] sharedSystemShellSwitcher];
  isClarityBoardEnabled = [mEMORY[0x1E6994660] isClarityBoardEnabled];

  return isClarityBoardEnabled ^ 1;
}

- (void)didPotentiallyDismissNonExclusiveSystemUI
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (BOOL)_shouldDispatchLocally
{
  if (_shouldDispatchLocally_onceToken != -1)
  {
    [AXSpringBoardServer(AXSpringBoardServer_Private) _shouldDispatchLocally];
  }

  return _shouldDispatchLocally_result;
}

- (int)purpleBuddyPID
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    integerValue = [_axSpringBoardServerInstanceDelegate purpleBuddyPIDWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    v6 = [[AXIPCMessage alloc] initWithKey:4507 payload:0];
    _axSpringBoardServerInstanceDelegate = [(AXServer *)self sendMessage:v6];

    _axSpringBoardServerInstance = [_axSpringBoardServerInstanceDelegate payload];
    v7 = [_axSpringBoardServerInstance objectForKey:@"result"];
    integerValue = [v7 integerValue];
  }

  return integerValue;
}

- (id)_axSpringBoardServerInstanceDelegate
{
  v3 = _axSpringBoardServerInstanceDelegate_delegate;
  if (!_axSpringBoardServerInstanceDelegate_delegate)
  {
    [NSClassFromString(&cfstr_Axspringboards_7.isa) initialize];
    _axSpringBoardServerInstanceIfExists = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceIfExists];
    v5 = [_axSpringBoardServerInstanceIfExists safeValueForKey:@"delegate"];
    v6 = _axSpringBoardServerInstanceDelegate_delegate;
    _axSpringBoardServerInstanceDelegate_delegate = v5;

    v3 = _axSpringBoardServerInstanceDelegate_delegate;
  }

  return v3;
}

- (id)_axSpringBoardServerInstance
{
  v3 = _axSpringBoardServerInstance_AXSBServerInstance;
  if (!_axSpringBoardServerInstance_AXSBServerInstance)
  {
    _axSpringBoardServerInstanceIfExists = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceIfExists];
    v5 = _axSpringBoardServerInstance_AXSBServerInstance;
    _axSpringBoardServerInstance_AXSBServerInstance = _axSpringBoardServerInstanceIfExists;

    v3 = _axSpringBoardServerInstance_AXSBServerInstance;
    if (!_axSpringBoardServerInstance_AXSBServerInstance)
    {
      _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
      _axSpringBoardServerInstanceIfExists2 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceIfExists];
      v8 = _axSpringBoardServerInstance_AXSBServerInstance;
      _axSpringBoardServerInstance_AXSBServerInstance = _axSpringBoardServerInstanceIfExists2;

      v3 = _axSpringBoardServerInstance_AXSBServerInstance;
    }
  }

  return v3;
}

void __29__AXSpringBoardServer_server__block_invoke()
{
  v0 = CLFLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __29__AXSpringBoardServer_server__block_invoke_cold_1();
  }
}

uint64_t __29__AXSpringBoardServer_server__block_invoke_434(uint64_t a1)
{
  server_Server_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (AXSpringBoardServer)init
{
  v7.receiver = self;
  v7.super_class = AXSpringBoardServer;
  v2 = [(AXServer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(AXServer *)v2 setShouldRegisterClientCallbackSourceOnMainRunloop:1];
    v4 = [objc_alloc(MEMORY[0x1E6988748]) initWithParentClass:objc_opt_class() description:@"SpringBoardServerAccessQueue" appendUUIDToLabel:0];
    [(AXSpringBoardServer *)v3 setAccessQueue:v4];
    v5 = objc_opt_new();
    [(AXSpringBoardServer *)v3 setActionHandlers:v5];
  }

  return v3;
}

- (id)_handleReplyResult:(id)result
{
  resultCopy = result;
  payload = [resultCopy payload];
  v6 = [payload objectForKey:@"result"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v6 integerValue];
    *buf = 0;
    v16 = buf;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__2;
    v19 = __Block_byref_object_dispose__2;
    v20 = 0;
    accessQueue = [(AXSpringBoardServer *)self accessQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __42__AXSpringBoardServer__handleReplyResult___block_invoke;
    v14[3] = &unk_1E71EA1D8;
    v14[4] = self;
    v14[5] = buf;
    [accessQueue performSynchronousWritingBlock:v14];

    v9 = *(v16 + 5);
    if (v9)
    {
      (*(v9 + 16))(v9, integerValue);
    }

    else
    {
      v11 = AXLogSpringboardServer();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_18B15E000, v11, OS_LOG_TYPE_DEFAULT, "No handler exists to handle alert reply", v13, 2u);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = AXLogSpringboardServer();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B15E000, v10, OS_LOG_TYPE_DEFAULT, "alert reply result was not a number", buf, 2u);
    }
  }

  return 0;
}

uint64_t __42__AXSpringBoardServer__handleReplyResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentAlertHandler];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return [v6 setCurrentAlertHandler:0];
}

- (id)_handleMediaPlayingResult:(id)result
{
  v26 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  payload = [resultCopy payload];
  v5 = AXLogSpringboardServer();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = payload;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_INFO, "Received is playing result: %@", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(AXSpringBoardServer *)self mediaPlayingHandlers];
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        mediaPlayingHandlers = [(AXSpringBoardServer *)self mediaPlayingHandlers];
        v12 = [mediaPlayingHandlers objectForKeyedSubscript:v10];

        buf[0] = 0;
        objc_opt_class();
        v13 = [payload objectForKeyedSubscript:@"result"];
        v14 = __UIAccessibilityCastAsClass();

        if (buf[0] == 1)
        {
          abort();
        }

        v12[2](v12, [v14 BOOLValue]);
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  mediaPlayingHandlers2 = [(AXSpringBoardServer *)self mediaPlayingHandlers];
  [mediaPlayingHandlers2 removeAllObjects];

  return 0;
}

- (id)_handleReachabilityResult:(id)result
{
  v19 = *MEMORY[0x1E69E9840];
  payload = [result payload];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  reachabilityHandlers = [(AXSpringBoardServer *)self reachabilityHandlers];
  v6 = [reachabilityHandlers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(reachabilityHandlers);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        reachabilityHandlers2 = [(AXSpringBoardServer *)self reachabilityHandlers];
        v12 = [reachabilityHandlers2 objectForKeyedSubscript:v10];

        (v12)[2](v12, payload);
        ++v9;
      }

      while (v7 != v9);
      v7 = [reachabilityHandlers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return 0;
}

- (void)_didConnectToServer
{
  v5.receiver = self;
  v5.super_class = AXSpringBoardServer;
  [(AXServer *)&v5 _didConnectToServer];
  server = [(AXServer *)self server];
  [server setHandlerWithTarget:self selector:sel__handleReplyResult_ forKey:5000];
  [server setHandlerWithTarget:self selector:sel__handleReachabilityResult_ forKey:5003];
  [server setHandlerWithTarget:self selector:sel__handleMediaPlayingResult_ forKey:5004];
  if ([(AXSpringBoardServer *)self _shouldValidateEntitlements])
  {
    LOBYTE(v4) = 1;
    _AXLogWithFacility();
    [server addPossibleRequiredEntitlement:@"com.apple.accessibility.SpringBoard" forMessageWithKey:{5000, v4, @"Validating SB reply messages"}];
    [server addPossibleRequiredEntitlement:@"com.apple.accessibility.SpringBoard" forMessageWithKey:5002];
    [server addPossibleRequiredEntitlement:@"com.apple.accessibility.SpringBoard" forMessageWithKey:5003];
    [server addPossibleRequiredEntitlement:@"com.apple.accessibility.SpringBoard" forMessageWithKey:5004];
  }
}

- (void)_willClearServer
{
  v4.receiver = self;
  v4.super_class = AXSpringBoardServer;
  [(AXServer *)&v4 _willClearServer];
  server = [(AXServer *)self server];
  [server removeAllHandlersForTarget:self];
}

- (void)_wasDisconnectedFromClient
{
  v7.receiver = self;
  v7.super_class = AXSpringBoardServer;
  [(AXServer *)&v7 _wasDisconnectedFromClient];
  LOBYTE(v5) = 1;
  _AXLogWithFacility();
  SpringBoardPid = -1;
  v3 = [(AXSpringBoardServer *)self accessQueue:v5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__AXSpringBoardServer__wasDisconnectedFromClient__block_invoke;
  v6[3] = &unk_1E71E9B98;
  v6[4] = self;
  [v3 performSynchronousWritingBlock:v6];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"AXSystemAppServerDiedNotification" object:0];
}

- (void)_didConnectToClient
{
  v2.receiver = self;
  v2.super_class = AXSpringBoardServer;
  [(AXServer *)&v2 _didConnectToClient];
  SpringBoardPid = -1;
}

- (void)takeScreenshot
{
  v3 = [[AXIPCMessage alloc] initWithKey:4009 payload:0];
  [(AXServer *)self sendSimpleMessage:v3];
}

- (void)openAssistiveTouchCustomGestureCreation
{
  v3 = [[AXIPCMessage alloc] initWithKey:4021 payload:0];
  [(AXServer *)self sendSimpleMessage:v3];
}

- (void)openSCATCustomGestureCreation
{
  v3 = [[AXIPCMessage alloc] initWithKey:4022 payload:0];
  [(AXServer *)self sendSimpleMessage:v3];
}

- (void)openCommandAndControlSettings
{
  v3 = [[AXIPCMessage alloc] initWithKey:4097 payload:0];
  [(AXServer *)self sendSimpleMessage:v3];
}

- (void)openCommandAndControlCommands
{
  v3 = [[AXIPCMessage alloc] initWithKey:4087 payload:0];
  [(AXServer *)self sendSimpleMessage:v3];
}

- (void)openCommandAndControlVocabulary
{
  v3 = [[AXIPCMessage alloc] initWithKey:4088 payload:0];
  [(AXServer *)self sendSimpleMessage:v3];
}

- (void)setCaptionPanelContextId:(unsigned int)id
{
  v3 = *&id;
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"contextId";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:4096 payload:v7];

  client = [(AXServer *)self client];
  [client sendSimpleMessage:v8];
}

- (void)setHearingAidControlVisible:(BOOL)visible
{
  visibleCopy = visible;
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"visible";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:visibleCopy];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:4023 payload:v7];

  client = [(AXServer *)self client];
  [client sendSimpleMessage:v8];
}

- (void)startHearingAidServer
{
  [(AXServer *)self _connectIfNecessary];
  v4 = [[AXIPCMessage alloc] initWithKey:4035 payload:0];
  client = [(AXServer *)self client];
  [client sendSimpleMessage:v4];
}

- (int)topEventPidOverride
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:4006 payload:0];
  client = [(AXServer *)self client];
  v5 = [client sendMessage:v3 withError:0];

  payload = [v5 payload];
  v7 = [payload objectForKey:@"pid"];
  intValue = [v7 intValue];

  return intValue;
}

- (BOOL)isOrientationLocked
{
  v3 = [[AXIPCMessage alloc] initWithKey:4018 payload:0];
  LOBYTE(self) = [(AXServer *)self sendSimpleMessageWithResult:v3];

  return self;
}

- (void)setOrientation:(int64_t)orientation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"orientation";
  v4 = [MEMORY[0x1E696AD98] numberWithLong:orientation];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v6 = [[AXIPCMessage alloc] initWithKey:4107 payload:v5];
  [(AXServer *)self sendSimpleMessage:v6];
}

- (void)setOrientationLocked:(BOOL)locked
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"locked";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:locked];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v6 = [[AXIPCMessage alloc] initWithKey:4059 payload:v5];
  [(AXServer *)self sendSimpleMessage:v6];
}

- (void)resetDimTimer
{
  v3 = [[AXIPCMessage alloc] initWithKey:4026 payload:0];
  [(AXServer *)self sendSimpleMessage:v3];
}

- (BOOL)isSideSwitchUsedForOrientation
{
  v3 = [[AXIPCMessage alloc] initWithKey:4019 payload:0];
  LOBYTE(self) = [(AXServer *)self sendSimpleMessageWithResult:v3];

  return self;
}

- (BOOL)isRingerMuted
{
  v3 = [[AXIPCMessage alloc] initWithKey:4020 payload:0];
  LOBYTE(self) = [(AXServer *)self sendSimpleMessageWithResult:v3];

  return self;
}

- (double)reachabilityOffset
{
  v3 = [[AXIPCMessage alloc] initWithKey:4055 payload:0];
  v4 = [(AXServer *)self sendSimpleMessageWithObjectResult:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)volumeLevel
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:4017 payload:0];
  client = [(AXServer *)self client];
  v5 = [client sendMessage:v3 withError:0];

  payload = [v5 payload];
  v7 = [payload objectForKey:@"result"];
  [v7 floatValue];
  v9 = v8;

  return v9;
}

- (void)cleanupAlertHandler
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  accessQueue = [(AXSpringBoardServer *)self accessQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AXSpringBoardServer_cleanupAlertHandler__block_invoke;
  v5[3] = &unk_1E71EA1D8;
  v5[4] = self;
  v5[5] = &v6;
  [accessQueue performSynchronousWritingBlock:v5];

  v4 = v7[5];
  if (v4)
  {
    (*(v4 + 16))(v4, 0x7FFFFFFFFFFFFFFFLL);
  }

  _Block_object_dispose(&v6, 8);
}

uint64_t __42__AXSpringBoardServer_cleanupAlertHandler__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentAlertHandler];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return [v6 setCurrentAlertHandler:0];
}

- (void)hideAlert
{
  v3 = [[AXIPCMessage alloc] initWithKey:4003 payload:0];
  [(AXServer *)self sendSimpleMessage:v3];

  AXPerformBlockOnMainThreadAfterDelay();
}

void __32__AXSpringBoardServer_hideAlert__block_invoke(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [*(a1 + 32) accessQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__AXSpringBoardServer_hideAlert__block_invoke_2;
  v5[3] = &unk_1E71EA1D8;
  v5[4] = *(a1 + 32);
  v5[5] = &v6;
  [v2 performSynchronousReadingBlock:v5];

  if (*(v7 + 24) == 1)
  {
    v3 = AXLogSpringboardServer();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_DEFAULT, "didn't get a call back from asking to hide the alert", v4, 2u);
    }

    [*(a1 + 32) cleanupAlertHandler];
  }

  _Block_object_dispose(&v6, 8);
}

void __32__AXSpringBoardServer_hideAlert__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) currentAlertHandler];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (BOOL)isShowingAXAlert
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = [(AXSpringBoardServer *)self accessQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__AXSpringBoardServer_isShowingAXAlert__block_invoke;
  v5[3] = &unk_1E71EA1D8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [accessQueue performSynchronousReadingBlock:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __39__AXSpringBoardServer_isShowingAXAlert__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentAlertHandler];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (void)showAlert:(int)alert withHandler:(id)handler withData:(id)data
{
  v6 = *&alert;
  handlerCopy = handler;
  dataCopy = data;
  if ([(AXSpringBoardServer *)self isShowingAXAlert])
  {
    v10 = AXLogSpringboardServer();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B15E000, v10, OS_LOG_TYPE_DEFAULT, "Another alert is showing already!", buf, 2u);
    }
  }

  else
  {
    if ([(AXServer *)self _connectIfNecessary])
    {
      [(AXServer *)self _connectServerIfNecessary];
      accessQueue = [(AXSpringBoardServer *)self accessQueue];
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __54__AXSpringBoardServer_showAlert_withHandler_withData___block_invoke_2;
      v21 = &unk_1E71EA228;
      selfCopy = self;
      v23 = handlerCopy;
      [accessQueue performSynchronousWritingBlock:&v18];

      v12 = MEMORY[0x1E695DF90];
      v13 = [MEMORY[0x1E696AD98] numberWithInt:{v6, v18, v19, v20, v21, selfCopy}];
      v14 = [v12 dictionaryWithObject:v13 forKey:@"alertType"];

      if (dataCopy)
      {
        [v14 setObject:dataCopy forKey:@"data"];
      }

      v15 = [[AXIPCMessage alloc] initWithKey:4002 payload:v14];
      client = [(AXServer *)self client];
      [client sendSimpleMessage:v15];

      v17 = v23;
    }

    else
    {
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __54__AXSpringBoardServer_showAlert_withHandler_withData___block_invoke;
      v27 = &unk_1E71EA200;
      selfCopy2 = self;
      v31 = v6;
      v30 = handlerCopy;
      v29 = dataCopy;
      AXPerformBlockOnMainThreadAfterDelay();

      v17 = v30;
    }
  }
}

- (BOOL)isShowingRemoteView:(int64_t)view
{
  v5 = [AXIPCMessage alloc];
  v6 = [(AXSpringBoardServer *)self _payloadForRemoteViewType:view data:0];
  v7 = [(AXIPCMessage *)v5 initWithKey:4095 payload:v6];
  LOBYTE(self) = [(AXServer *)self sendSimpleMessageWithResult:v7];

  return self;
}

- (id)_payloadForRemoteViewType:(int64_t)type data:(id)data
{
  dataCopy = data;
  v6 = MEMORY[0x1E695DF90];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v8 = [v6 dictionaryWithObject:v7 forKey:@"remoteViewType"];

  if (dataCopy)
  {
    [v8 setObject:dataCopy forKey:@"data"];
  }

  return v8;
}

- (void)_sendRemoteViewIPCMessage:(int)message withRemoteViewType:(int64_t)type withData:(id)data
{
  v6 = *&message;
  dataCopy = data;
  if ([(AXServer *)self _connectIfNecessary])
  {
    [(AXServer *)self _connectServerIfNecessary];
    v9 = [AXIPCMessage alloc];
    v10 = [(AXSpringBoardServer *)self _payloadForRemoteViewType:type data:dataCopy];
    v11 = [(AXIPCMessage *)v9 initWithKey:v6 payload:v10];

    client = [(AXServer *)self client];
    [client sendSimpleMessage:v11];
  }

  else
  {
    v13 = dataCopy;
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)setShowSpeechPlaybackControls:(BOOL)controls
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"show";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:controls];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = [[AXIPCMessage alloc] initWithKey:4040 payload:v5];
  client = [(AXServer *)self client];
  [client sendSimpleMessage:v6];
}

- (void)setCancelGestureActivation:(unint64_t)activation cancelEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(AXServer *)self _connectIfNecessary])
  {
    v7 = MEMORY[0x1E695DF20];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:activation];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
    v12 = [v7 dictionaryWithObjectsAndKeys:{v8, @"type", v9, @"cancelEnabled", 0}];

    v10 = [[AXIPCMessage alloc] initWithKey:4008 payload:v12];
    client = [(AXServer *)self client];
    [client sendSimpleMessage:v10];
  }

  else
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)cancelReachabilityDetection
{
  [(AXServer *)self _connectIfNecessary];
  v4 = [[AXIPCMessage alloc] initWithKey:4058 payload:&unk_1EFE97330];
  client = [(AXServer *)self client];
  [client sendSimpleMessage:v4];
}

- (void)registerReachabilityHandler:(id)handler withIdentifierCallback:(id)callback
{
  handlerCopy = handler;
  callbackCopy = callback;
  if ([(AXServer *)self _connectIfNecessary])
  {
    [(AXServer *)self _connectServerIfNecessary];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    reachabilityHandlers = [(AXSpringBoardServer *)self reachabilityHandlers];

    if (!reachabilityHandlers)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(AXSpringBoardServer *)self setReachabilityHandlers:dictionary];
    }

    v12 = [[AXIPCMessage alloc] initWithKey:4056 payload:&unk_1EFE97358];
    client = [(AXServer *)self client];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __74__AXSpringBoardServer_registerReachabilityHandler_withIdentifierCallback___block_invoke_2;
    v17[3] = &unk_1E71EA2C8;
    v17[4] = self;
    v18 = uUIDString;
    v19 = handlerCopy;
    v20 = callbackCopy;
    v14 = callbackCopy;
    v15 = handlerCopy;
    v16 = uUIDString;
    [client sendAsyncMessage:v12 withReplyHandler:v17];
  }

  else
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __74__AXSpringBoardServer_registerReachabilityHandler_withIdentifierCallback___block_invoke;
    v24 = &unk_1E71EA2A0;
    selfCopy = self;
    v26 = handlerCopy;
    v27 = callbackCopy;
    v16 = callbackCopy;
    v12 = handlerCopy;
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void __74__AXSpringBoardServer_registerReachabilityHandler_withIdentifierCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  v4 = [v3 objectForKey:@"result"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v8 = [*(a1 + 48) copy];
    v6 = _Block_copy(v8);
    v7 = [*(a1 + 32) reachabilityHandlers];
    [v7 setObject:v6 forKeyedSubscript:*(a1 + 40)];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (BOOL)toggleIncomingCall
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [AXIPCMessage alloc];
  v4 = [(AXIPCMessage *)v3 initWithKey:4061 payload:MEMORY[0x1E695E0F8]];
  client = [(AXServer *)self client];
  v6 = [client sendMessage:v4 withError:0];

  payload = [v6 payload];
  v8 = [payload objectForKeyedSubscript:@"result"];
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (void)toggleReachability
{
  [(AXSpringBoardServer *)self reachabilityOffset];

  [(AXSpringBoardServer *)self setReachabilityActive:v3 == 0.0];
}

- (void)setReachabilityActive:(BOOL)active
{
  activeCopy = active;
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"active";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:activeCopy];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:4060 payload:v7];

  client = [(AXServer *)self client];
  [client sendSimpleMessage:v8];
}

- (void)setReachabilityEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13[1] = *MEMORY[0x1E69E9840];
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_axSpringBoardServerInstanceDelegate serverInstance:_axSpringBoardServerInstance setReachabilityEnabled:enabledCopy];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v6 = [AXIPCMessage alloc];
    v12 = @"enabled";
    v7 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
    v13[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [(AXIPCMessage *)v6 initWithKey:4083 payload:v8];

    client = [(AXServer *)self client];
    [client sendSimpleMessage:v9];
  }
}

- (void)removeReachabilityHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    [(AXServer *)self _connectIfNecessary];
    reachabilityHandlers = [(AXSpringBoardServer *)self reachabilityHandlers];
    v5 = [reachabilityHandlers count];

    if (v5)
    {
      reachabilityHandlers2 = [(AXSpringBoardServer *)self reachabilityHandlers];
      [reachabilityHandlers2 removeObjectForKey:handlerCopy];

      reachabilityHandlers3 = [(AXSpringBoardServer *)self reachabilityHandlers];
      v8 = [reachabilityHandlers3 count];

      if (!v8)
      {
        v9 = [[AXIPCMessage alloc] initWithKey:4056 payload:&unk_1EFE97380];
        client = [(AXServer *)self client];
        [client sendSimpleMessage:v9];
      }
    }
  }

  else
  {
    _AXAssert();
  }
}

- (BOOL)isInspectorMinimized
{
  _connectIfNecessary = [(AXServer *)self _connectIfNecessary];
  if (_connectIfNecessary)
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4052 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v4];

    LOBYTE(_connectIfNecessary) = v5;
  }

  return _connectIfNecessary;
}

- (int)pid
{
  if (![(AXServer *)self _connectIfNecessary])
  {
    return -1;
  }

  result = SpringBoardPid;
  if (SpringBoardPid == -1)
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4001 payload:0];
    client = [(AXServer *)self client];
    v6 = [client sendMessage:v4 withError:0];

    if (v6)
    {
      payload = [v6 payload];
      v8 = [payload objectForKey:@"pid"];
      SpringBoardPid = [v8 intValue];

      if (!SpringBoardPid)
      {
        SpringBoardPid = -1;
      }
    }

    return SpringBoardPid;
  }

  return result;
}

- (void)pid:(id)pid
{
  pidCopy = pid;
  if ([(AXServer *)self _connectIfNecessary])
  {
    v5 = SpringBoardPid;
    if (SpringBoardPid == -1)
    {
      v6 = [[AXIPCMessage alloc] initWithKey:4001 payload:0];
      client = [(AXServer *)self client];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __27__AXSpringBoardServer_pid___block_invoke_3;
      v8[3] = &unk_1E71EA340;
      v9 = pidCopy;
      [client sendAsyncMessage:v6 replyOnQueue:MEMORY[0x1E69E96A0] replyHandler:v8];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __27__AXSpringBoardServer_pid___block_invoke_2;
      block[3] = &unk_1E71EA318;
      v11 = pidCopy;
      v12 = v5;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v6 = v11;
    }
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __27__AXSpringBoardServer_pid___block_invoke;
    v13[3] = &unk_1E71EA2F0;
    v14 = pidCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v13);
    v6 = v14;
  }
}

uint64_t __27__AXSpringBoardServer_pid___block_invoke_3(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 payload];
    v4 = [v3 objectForKey:@"pid"];
    v5 = [v4 intValue];

    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = -1;
    }
  }

  else
  {
    v6 = -1;
  }

  SpringBoardPid = v6;
  v7 = *(*(a1 + 32) + 16);

  return v7();
}

- (int64_t)activeApplicationOrientation
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:4000 payload:0];
  client = [(AXServer *)self client];
  v5 = [client sendMessage:v3 withError:0];

  payload = [v5 payload];
  v7 = [payload objectForKey:@"orientation"];
  intValue = [v7 intValue];

  return intValue;
}

- (int64_t)activeInterfaceOrientation
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:4030 payload:0];
  client = [(AXServer *)self client];
  v5 = [client sendMessage:v3 withError:0];

  payload = [v5 payload];
  v7 = [payload objectForKey:@"orientation"];
  integerValue = [v7 integerValue];

  return integerValue;
}

- (void)activeInterfaceOrientation:(id)orientation
{
  orientationCopy = orientation;
  v5 = [[AXIPCMessage alloc] initWithKey:4030 payload:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AXSpringBoardServer_activeInterfaceOrientation___block_invoke;
  v7[3] = &unk_1E71EA340;
  v8 = orientationCopy;
  v6 = orientationCopy;
  [(AXServer *)self sendAsynchronousMessage:v5 replyOnQueue:MEMORY[0x1E69E96A0] handler:v7];
}

void __50__AXSpringBoardServer_activeInterfaceOrientation___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 payload];
  v3 = [v4 objectForKey:@"orientation"];
  (*(v2 + 16))(v2, [v3 integerValue]);
}

- (void)copyStringToPasteboard:(id)pasteboard
{
  v10[1] = *MEMORY[0x1E69E9840];
  pasteboardCopy = pasteboard;
  if ([pasteboardCopy length])
  {
    [(AXServer *)self _connectIfNecessary];
    v5 = [AXIPCMessage alloc];
    v9 = @"string";
    v10[0] = pasteboardCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [(AXIPCMessage *)v5 initWithKey:4036 payload:v6];

    v8 = [(AXServer *)self sendMessage:v7];
  }
}

- (void)activateSOSMode
{
  v3 = [[AXIPCMessage alloc] initWithKey:4074 payload:0];
  [(AXServer *)self sendSimpleMessage:v3];
}

- (id)splashImageForAppWithBundleIdentifier:(id)identifier
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    identifierCopy = identifier;
    [(AXServer *)self _connectIfNecessary];
    v5 = [AXIPCMessage alloc];
    v13 = @"bundleIdentifier";
    v14[0] = identifierCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

    v7 = [(AXIPCMessage *)v5 initWithKey:4089 payload:v6];
    client = [(AXServer *)self client];
    v9 = [client sendMessage:v7 withError:0];

    payload = [v9 payload];
    v11 = [payload objectForKey:@"splashData"];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)connectedDevicesRequireAssistiveTouch
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [AXIPCMessage alloc];
  v4 = [(AXIPCMessage *)v3 initWithKey:4101 payload:MEMORY[0x1E695E0F8]];
  client = [(AXServer *)self client];
  v6 = [client sendMessage:v4 withError:0];

  payload = [v6 payload];
  v8 = [payload objectForKeyedSubscript:@"result"];
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)currentDevicesHaveAssistiveTouchCustomActions
{
  v3 = +[AXSettings sharedInstance];
  laserEnabled = [v3 laserEnabled];

  if (!laserEnabled)
  {
    return 0;
  }

  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v6 = [(AXIPCMessage *)v5 initWithKey:4109 payload:MEMORY[0x1E695E0F8]];
  client = [(AXServer *)self client];
  v8 = [client sendMessage:v6 withError:0];

  payload = [v8 payload];
  v10 = [payload objectForKeyedSubscript:@"result"];
  bOOLValue = [v10 BOOLValue];

  return bOOLValue;
}

- (void)cancelSiriDismissalForAssistiveTouch
{
  v3 = [[AXIPCMessage alloc] initWithKey:4103 payload:0];
  [(AXServer *)self sendSimpleMessage:v3];
}

- (void)toggleTorch
{
  v3 = [[AXIPCMessage alloc] initWithKey:4106 payload:0];
  [(AXServer *)self sendSimpleMessage:v3];
}

- (BOOL)isScreenLockedWithPasscode:(BOOL *)passcode
{
  isUILocked = _isUILocked();
  if (passcode)
  {
    *passcode = _isDeviceLockedWithPasscode();
  }

  return isUILocked;
}

- (void)screenLockStatus:(id)status passcodeStatusRequired:(BOOL)required
{
  statusCopy = status;
  _isUILocked();
  _isDeviceLockedWithPasscode();
  v6 = statusCopy;
  v5 = statusCopy;
  AXPerformBlockAsynchronouslyOnMainThread();
}

- (BOOL)isSystemSleeping
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isSystemSleepingWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4016 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (void)isSystemSleeping:(id)sleeping
{
  if (sleeping)
  {
    sleepingCopy = sleeping;
    v5 = [[AXIPCMessage alloc] initWithKey:4016 payload:0];
    [(AXServer *)self sendAsynchronousMessage:v5 replyOnQueue:MEMORY[0x1E69E96A0] BOOLResultHandler:sleepingCopy];
  }
}

- (BOOL)isSyncingRestoringResettingOrUpdating
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isSyncingRestoringResettingOrUpdatingWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4039 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)areSystemGesturesDisabledNatively
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate areSystemGesturesDisabledNativelyWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4043 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)areSystemGesturesDisabledByAccessibility
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate areSystemGesturesDisabledByAccessibilityWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4044 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (id)installedApps
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_axSpringBoardServerInstanceDelegate installedAppsWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    v5 = [[AXIPCMessage alloc] initWithKey:4046 payload:0];
    _axSpringBoardServerInstanceDelegate = [(AXServer *)self sendMessage:v5];

    _axSpringBoardServerInstance = [_axSpringBoardServerInstanceDelegate payload];
    [_axSpringBoardServerInstance objectForKey:@"result"];
  }
  v6 = ;

  return v6;
}

- (id)internalApps
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_axSpringBoardServerInstanceDelegate internalAppsWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    v5 = [[AXIPCMessage alloc] initWithKey:4093 payload:0];
    _axSpringBoardServerInstanceDelegate = [(AXServer *)self sendMessage:v5];

    _axSpringBoardServerInstance = [_axSpringBoardServerInstanceDelegate payload];
    [_axSpringBoardServerInstance objectForKey:@"result"];
  }
  v6 = ;

  return v6;
}

- (void)wakeUpDeviceIfNecessary
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate wakeUpDeviceIfNecessaryWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4068 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)unlockDevice
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate unlockDeviceWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4048 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)rebootDevice
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate rebootDeviceWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4075 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)isMediaPlayingForApp:(id)app completionHandler:(id)handler
{
  v22[2] = *MEMORY[0x1E69E9840];
  appCopy = app;
  handlerCopy = handler;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_axSpringBoardServerInstanceDelegate isMediaPlayingWithServerInstance:_axSpringBoardServerInstance forBundleId:appCopy completion:handlerCopy];
  }

  else
  {
    mediaPlayingHandlers = [(AXSpringBoardServer *)self mediaPlayingHandlers];

    if (!mediaPlayingHandlers)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(AXSpringBoardServer *)self setMediaPlayingHandlers:dictionary];
    }

    [(AXServer *)self _connectIfNecessary];
    [(AXServer *)self _connectServerIfNecessary];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    _axSpringBoardServerInstanceDelegate = [uUID UUIDString];

    mediaPlayingHandlers2 = [(AXSpringBoardServer *)self mediaPlayingHandlers];
    v14 = _Block_copy(handlerCopy);

    [mediaPlayingHandlers2 setObject:v14 forKey:_axSpringBoardServerInstanceDelegate];
    v15 = &stru_1EFE6D570;
    if (appCopy)
    {
      v15 = appCopy;
    }

    v21[0] = @"bundleId";
    v21[1] = @"uuidString";
    v22[0] = v15;
    v22[1] = _axSpringBoardServerInstanceDelegate;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v17 = AXLogSpringboardServer();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v16;
      _os_log_impl(&dword_18B15E000, v17, OS_LOG_TYPE_INFO, "Asking for media playing status: %@", &v19, 0xCu);
    }

    v18 = [[AXIPCMessage alloc] initWithKey:4025 payload:v16];
    [(AXServer *)self sendSimpleMessage:v18];
  }
}

- (void)pauseMediaForApp:(id)app
{
  v9[1] = *MEMORY[0x1E69E9840];
  appCopy = app;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_axSpringBoardServerInstanceDelegate serverInstance:_axSpringBoardServerInstance pauseMedia:1 forBundleId:appCopy];
  }

  else
  {
    if (appCopy)
    {
      v8 = @"bundleId";
      v9[0] = appCopy;
      _axSpringBoardServerInstanceDelegate = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    }

    else
    {
      _axSpringBoardServerInstanceDelegate = 0;
    }

    v7 = [[AXIPCMessage alloc] initWithKey:4053 payload:_axSpringBoardServerInstanceDelegate];
    [(AXServer *)self sendSimpleMessage:v7];
  }
}

- (void)resumeMediaForApp:(id)app
{
  v9[1] = *MEMORY[0x1E69E9840];
  appCopy = app;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_axSpringBoardServerInstanceDelegate serverInstance:_axSpringBoardServerInstance pauseMedia:0 forBundleId:appCopy];
  }

  else
  {
    if (appCopy)
    {
      v8 = @"bundleId";
      v9[0] = appCopy;
      _axSpringBoardServerInstanceDelegate = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    }

    else
    {
      _axSpringBoardServerInstanceDelegate = 0;
    }

    v7 = [[AXIPCMessage alloc] initWithKey:4054 payload:_axSpringBoardServerInstanceDelegate];
    [(AXServer *)self sendSimpleMessage:v7];
  }
}

- (BOOL)hasActiveCall
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate hasActiveCallWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4027 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)hasActiveEndpointCall
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate hasActiveEndpointCallWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4081 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)hasActiveOrPendingCall
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate hasActiveOrPendingCallWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4051 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)hasActiveOrPendingCallOrFaceTime
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate hasActiveOrPendingCallOrFaceTimeWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4057 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)isMakingEmergencyCall
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isMakingEmergencyCallWithServerInstance:_axSpringBoardServerInstance];

    v5 = 0;
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4005 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)isNotificationCenterVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isNotificationCenterVisibleWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4033 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)isScreenshotWindowVisible
{
  _shouldDispatchLocally = [(AXSpringBoardServer *)self _shouldDispatchLocally];
  if (_shouldDispatchLocally)
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v6 = [_axSpringBoardServerInstanceDelegate isScreenshotWindowVisibleWithServerInstance:_axSpringBoardServerInstance];

    LOBYTE(_shouldDispatchLocally) = v6;
  }

  return _shouldDispatchLocally;
}

- (BOOL)isNotificationVisible
{
  _shouldDispatchLocally = [(AXSpringBoardServer *)self _shouldDispatchLocally];
  if (_shouldDispatchLocally)
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v6 = [_axSpringBoardServerInstanceDelegate isNotificationVisibleWithServerInstance:_axSpringBoardServerInstance];

    LOBYTE(_shouldDispatchLocally) = v6;
  }

  return _shouldDispatchLocally;
}

- (BOOL)isShowingLongLookNotification
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isLongLookNotificationVisibleWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4111 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)isBannerVisible
{
  _shouldDispatchLocally = [(AXSpringBoardServer *)self _shouldDispatchLocally];
  if (_shouldDispatchLocally)
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v6 = [_axSpringBoardServerInstanceDelegate isBannerVisibleWithServerInstance:_axSpringBoardServerInstance];

    LOBYTE(_shouldDispatchLocally) = v6;
  }

  return _shouldDispatchLocally;
}

- (BOOL)isRemoteAlertVisible
{
  _shouldDispatchLocally = [(AXSpringBoardServer *)self _shouldDispatchLocally];
  if (_shouldDispatchLocally)
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v6 = [_axSpringBoardServerInstanceDelegate isRemoteTransientOverlayVisibleWithServerInstance:_axSpringBoardServerInstance];

    LOBYTE(_shouldDispatchLocally) = v6;
  }

  return _shouldDispatchLocally;
}

- (void)toggleNotificationCenter
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate toggleNotificationCenterWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4034 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)showNotificationCenter
{
  if (![(AXSpringBoardServer *)self isNotificationCenterVisible])
  {

    [(AXSpringBoardServer *)self toggleNotificationCenter];
  }
}

- (void)hideNotificationCenter
{
  if ([(AXSpringBoardServer *)self isNotificationCenterVisible])
  {

    [(AXSpringBoardServer *)self toggleNotificationCenter];
  }
}

- (BOOL)isControlCenterVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isControlCenterVisibleWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4031 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)showNotificationCenter:(BOOL)center
{
  centerCopy = center;
  v14[1] = *MEMORY[0x1E69E9840];
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v7 = [_axSpringBoardServerInstanceDelegate serverInstance:_axSpringBoardServerInstance showNotificationCenter:centerCopy];
  }

  else
  {
    v8 = [AXIPCMessage alloc];
    v13 = @"show";
    v9 = [MEMORY[0x1E696AD98] numberWithBool:centerCopy];
    v14[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = [(AXIPCMessage *)v8 initWithKey:4050 payload:v10];
    v7 = [(AXServer *)self sendSimpleMessageWithResult:v11];
  }

  return v7;
}

- (BOOL)showControlCenter:(BOOL)center
{
  centerCopy = center;
  v13[1] = *MEMORY[0x1E69E9840];
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v7 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate serverInstance:_axSpringBoardServerInstance showControlCenter:centerCopy];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v8 = [AXIPCMessage alloc];
    v12 = @"show";
    v9 = [MEMORY[0x1E696AD98] numberWithBool:centerCopy];
    v13[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    _axSpringBoardServerInstanceDelegate = [(AXIPCMessage *)v8 initWithKey:4032 payload:v10];

    v7 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v7;
}

- (void)armApplePay
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate armApplePayWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4078 payload:0];
    [(AXServer *)self sendSimpleMessageWithResult:?];
  }
}

- (void)toggleDock
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate toggleDockWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4077 payload:0];
    v4 = [(AXServer *)self sendMessage:?];
  }
}

- (BOOL)isStageManagerSwitcherVisible
{
  _shouldDispatchLocally = [(AXSpringBoardServer *)self _shouldDispatchLocally];
  if (_shouldDispatchLocally)
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v6 = [_axSpringBoardServerInstanceDelegate isStageManagerSwitcherVisibleWithServerInstance:_axSpringBoardServerInstance];

    LOBYTE(_shouldDispatchLocally) = v6;
  }

  return _shouldDispatchLocally;
}

- (BOOL)isDockVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isDockVisibleWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4076 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)isStatusBarNativeFocusableIncludingNonDismissableElements:(BOOL)elements
{
  elementsCopy = elements;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v7 = [_axSpringBoardServerInstanceDelegate isStatusBarNativeFocusableWithServerInstance:_axSpringBoardServerInstance includingNonDismissableElements:elementsCopy];

    return v7;
  }

  else
  {
    v9 = FKALogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [AXSpringBoardServer isStatusBarNativeFocusableIncludingNonDismissableElements:];
    }

    return 0;
  }
}

- (BOOL)isShowingNonSystemApp
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isShowingNonSystemAppWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4090 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)isShowingHomescreen
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isShowingHomescreenWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4079 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)isContinuitySessionActive
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isContinuitySessionActiveWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4131 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (void)launchApplication:(id)application
{
  applicationCopy = application;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    [_axSpringBoardServerInstanceDelegate launchApplication:applicationCopy];
  }
}

- (void)launchPinnedApplication:(id)application onLeadingSide:(BOOL)side
{
  sideCopy = side;
  applicationCopy = application;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    [_axSpringBoardServerInstanceDelegate launchPinnedApplication:applicationCopy onLeadingSide:sideCopy];
  }
}

- (void)launchFloatingApplication:(id)application
{
  applicationCopy = application;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    [_axSpringBoardServerInstanceDelegate launchFloatingApplication:applicationCopy];
  }
}

- (BOOL)canLaunchAsPinnedApplicationForIconView:(id)view
{
  viewCopy = view;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v6 = [_axSpringBoardServerInstanceDelegate canLaunchAsPinnedApplicationForIconView:viewCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)canLaunchAsFloatingApplicationForIconView:(id)view
{
  viewCopy = view;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v6 = [_axSpringBoardServerInstanceDelegate canLaunchAsFloatingApplicationForIconView:viewCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isAppSwitcherVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isAppSwitcherVisibleWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4011 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)isShelfSwitcherVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isShelfSwitcherVisibleWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4007 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (void)openAppSwitcher
{
  v10 = *MEMORY[0x1E69E9840];
  _shouldDispatchLocally = [(AXSpringBoardServer *)self _shouldDispatchLocally];
  v4 = AXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:_shouldDispatchLocally];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_18B15E000, v4, OS_LOG_TYPE_DEFAULT, "Requesting SB openAppSwitcher. dispatchLocal=%@", &v8, 0xCu);
  }

  if (_shouldDispatchLocally)
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate openAppSwitcherWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4010 payload:0];
    [(AXServer *)self sendSimpleMessage:_axSpringBoardServerInstanceDelegate];
  }
}

- (void)dismissAppSwitcher
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate dismissAppSwitcherWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4047 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)dismissShelfSwitcher
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate dismissShelfSwitcherWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4004 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)simulateEdgePressHaptics
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate simulateEdgePressHaptics:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4067 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)toggleAppLibrary
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate toggleAppLibraryWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4112 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)toggleQuickNote
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate toggleQuickNoteWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4113 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)toggleSpotlight
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate toggleSpotlightWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4065 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)revealSpotlight
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate revealSpotlightWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4066 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (BOOL)isDarkModeActive
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isDarkModeActiveWithServiceInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4099 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)toggleDarkMode
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate toggleDarkModeWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4100 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)isGuidedAccessActive
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isGuidedAccessActiveWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4038 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)isSpotlightVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isSpotlightVisibleWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4098 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)isPIPWindowVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isPIPWindowVisibleWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4102 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)dismissSiri
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate dismissSiriWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4049 payload:0];
    [(AXServer *)self sendSimpleMessage:_axSpringBoardServerInstanceDelegate];
    v5 = 1;
  }

  return v5;
}

- (BOOL)isSiriVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isSiriVisibleWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4037 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)isPasscodeLockVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isPasscodeLockVisibleWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4082 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)isLockScreenVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isLockScreenVisibleWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4104 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (void)openVoiceControl
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate openVoiceControlWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4029 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (BOOL)isTypeToSiriVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isTypeToSiriVisibleWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4133 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (void)openTypeToSiri
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate openTypeToSiriWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4132 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (BOOL)isVoiceControlRunning
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isVoiceControlRunningWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4013 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)isSpeakThisTemporarilyDisabled
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isSpeakThisTemporarilyDisabledWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4042 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (id)allowedMedusaGestures
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate allowedMedusaGesturesWithServerInstance:_axSpringBoardServerInstance];

LABEL_5:
    goto LABEL_7;
  }

  if (AXDeviceSupportsSideApp())
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4063 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithObjectResult:_axSpringBoardServerInstanceDelegate];
    goto LABEL_5;
  }

  v5 = MEMORY[0x1E695E0F0];
LABEL_7:

  return v5;
}

- (void)setMenuBarVisible:(BOOL)visible
{
  visibleCopy = visible;
  v12[1] = *MEMORY[0x1E69E9840];
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_axSpringBoardServerInstanceDelegate serverInstance:_axSpringBoardServerInstance setMenuBarVisible:visibleCopy];
  }

  else
  {
    v6 = [AXIPCMessage alloc];
    v11 = @"result";
    v7 = [MEMORY[0x1E696AD98] numberWithBool:visibleCopy];
    v12[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [(AXIPCMessage *)v6 initWithKey:4139 payload:v8];
    [(AXServer *)self sendSimpleMessage:v9];
  }
}

- (BOOL)isMenuBarVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isMenuBarVisibleWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4140 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)isMenuBarModal
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isMenuBarModalWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4142 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)isChamoisOrFlexibleWindowingEnabled
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isChamoisOrFlexibleWindowingEnabledWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4141 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (void)toggleBackgroundSounds
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate toggleBackgroundSoundsWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4110 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (BOOL)performMedusaGesture:(unint64_t)gesture
{
  v14[1] = *MEMORY[0x1E69E9840];
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v7 = [_axSpringBoardServerInstanceDelegate serverInstance:_axSpringBoardServerInstance performMedusaGesture:gesture];
  }

  else
  {
    v8 = [AXIPCMessage alloc];
    v13 = @"gesture";
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:gesture];
    v14[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = [(AXIPCMessage *)v8 initWithKey:4064 payload:v10];
    v7 = [(AXServer *)self sendSimpleMessageWithResult:v11];
  }

  return v7;
}

- (id)medusaApps
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate medusaAppsWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4080 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithObjectResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (void)setDockIconActivationMode:(unint64_t)mode
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_axSpringBoardServerInstanceDelegate serverInstance:_axSpringBoardServerInstance setDockIconActivationMode:mode];
  }

  else
  {
    v6 = [AXIPCMessage alloc];
    v11 = @"mode";
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:mode];
    v12[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [(AXIPCMessage *)v6 initWithKey:4091 payload:v8];
    [(AXServer *)self sendSimpleMessage:v9];
  }
}

- (BOOL)canSetDockIconActivationMode
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate canSetDockIconActivationModeForServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4092 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (void)systemAppInfoWithQuery:(unint64_t)query completion:(id)completion
{
  v22[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v9 = [_axSpringBoardServerInstanceDelegate serverInstance:_axSpringBoardServerInstance springBoardSystemInfoQuery:query];

    v18[1] = MEMORY[0x1E69E9820];
    v18[2] = 3221225472;
    v18[3] = __57__AXSpringBoardServer_systemAppInfoWithQuery_completion___block_invoke;
    v18[4] = &unk_1E71EA390;
    v10 = &v20;
    v19 = v9;
    v20 = completionCopy;
    v11 = completionCopy;
    v12 = v9;
    AXPerformBlockAsynchronouslyOnMainThread();
  }

  else
  {
    v13 = [AXIPCMessage alloc];
    v21 = @"query";
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:query];
    v22[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v12 = [(AXIPCMessage *)v13 initWithKey:4045 payload:v15];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __57__AXSpringBoardServer_systemAppInfoWithQuery_completion___block_invoke_2;
    v17[3] = &unk_1E71EA3B8;
    v10 = v18;
    v18[0] = completionCopy;
    v16 = completionCopy;
    [(AXServer *)self sendAsynchronousMessage:v12 replyOnQueue:MEMORY[0x1E69E96A0] objectResultHandler:v17];
  }
}

- (BOOL)isSystemAppShowingAnAlert
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    bOOLValue = [_axSpringBoardServerInstanceDelegate isSystemAppShowingAnAlertWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    v6 = [[AXIPCMessage alloc] initWithKey:4501 payload:0];
    _axSpringBoardServerInstanceDelegate = [(AXServer *)self sendMessage:v6];

    _axSpringBoardServerInstance = [_axSpringBoardServerInstanceDelegate payload];
    v7 = [_axSpringBoardServerInstance objectForKey:@"result"];
    bOOLValue = [v7 BOOLValue];
  }

  return bOOLValue;
}

- (void)setBluetoothPowerEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:4128 payload:v7];
  v9 = [(AXServer *)self sendMessage:v8];
}

- (BOOL)bluetoothPowerEnabled
{
  v3 = [[AXIPCMessage alloc] initWithKey:4129 payload:0];
  v4 = [(AXServer *)self sendMessage:v3];

  payload = [v4 payload];
  v6 = [payload objectForKey:@"result"];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)setVoiceOverEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:4126 payload:v7];
  v9 = [(AXServer *)self sendMessage:v8];
}

- (BOOL)voiceOverEnabled
{
  v3 = [[AXIPCMessage alloc] initWithKey:4127 payload:0];
  v4 = [(AXServer *)self sendMessage:v3];

  payload = [v4 payload];
  v6 = [payload objectForKey:@"result"];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)setZoomEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:4124 payload:v7];
  v9 = [(AXServer *)self sendMessage:v8];
}

- (BOOL)zoomEnabled
{
  v3 = [[AXIPCMessage alloc] initWithKey:4125 payload:0];
  v4 = [(AXServer *)self sendMessage:v3];

  payload = [v4 payload];
  v6 = [payload objectForKey:@"result"];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (id)focusedAppPID
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_axSpringBoardServerInstanceDelegate focusedAppPIDWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    v5 = [[AXIPCMessage alloc] initWithKey:4503 payload:0];
    _axSpringBoardServerInstanceDelegate = [(AXServer *)self sendMessage:v5];

    _axSpringBoardServerInstance = [_axSpringBoardServerInstanceDelegate payload];
    [_axSpringBoardServerInstance objectForKey:@"result"];
  }
  v6 = ;

  return v6;
}

- (void)purpleBuddyPID:(id)d
{
  dCopy = d;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__AXSpringBoardServer_purpleBuddyPID___block_invoke;
    block[3] = &unk_1E71EA228;
    block[4] = self;
    v12 = dCopy;
    v5 = dCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v6 = v12;
  }

  else
  {
    v7 = [[AXIPCMessage alloc] initWithKey:4507 payload:0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38__AXSpringBoardServer_purpleBuddyPID___block_invoke_2;
    v9[3] = &unk_1E71EA340;
    v10 = dCopy;
    v8 = dCopy;
    [(AXServer *)self sendAsynchronousMessage:v7 replyOnQueue:MEMORY[0x1E69E96A0] handler:v9];

    v6 = v10;
  }
}

uint64_t __38__AXSpringBoardServer_purpleBuddyPID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _axSpringBoardServerInstanceDelegate];
  v3 = [*(a1 + 32) _axSpringBoardServerInstance];
  [v2 purpleBuddyPIDWithServerInstance:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void __38__AXSpringBoardServer_purpleBuddyPID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 payload];
  v3 = [v4 objectForKey:@"result"];
  (*(v2 + 16))(v2, [v3 integerValue]);
}

- (id)runningAppPIDs
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_axSpringBoardServerInstanceDelegate runningAppPIDsWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    v5 = [[AXIPCMessage alloc] initWithKey:4504 payload:0];
    _axSpringBoardServerInstanceDelegate = [(AXServer *)self sendMessage:v5];

    _axSpringBoardServerInstance = [_axSpringBoardServerInstanceDelegate payload];
    [_axSpringBoardServerInstance objectForKey:@"result"];
  }
  v6 = ;

  return v6;
}

- (void)_isSystemAppFrontmostExcludingSiri:(BOOL)siri completion:(id)completion
{
  siriCopy = siri;
  v15[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_axSpringBoardServerInstanceDelegate isSystemAppFrontmostExcludingSiri:siriCopy withServerInstance:_axSpringBoardServerInstance];

    v13 = completionCopy;
    AXPerformBlockAsynchronouslyOnMainThread();
    v9 = v13;
  }

  else
  {
    v10 = [AXIPCMessage alloc];
    v14 = @"excludeSiri";
    v9 = [MEMORY[0x1E696AD98] numberWithBool:siriCopy];
    v15[0] = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v12 = [(AXIPCMessage *)v10 initWithKey:4500 payload:v11];
    [(AXServer *)self sendAsynchronousMessage:v12 replyOnQueue:MEMORY[0x1E69E96A0] BOOLResultHandler:completionCopy];
  }
}

- (BOOL)_isSystemAppFrontmostExcludingSiri:(BOOL)siri
{
  siriCopy = siri;
  v14[1] = *MEMORY[0x1E69E9840];
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v7 = [_axSpringBoardServerInstanceDelegate isSystemAppFrontmostExcludingSiri:siriCopy withServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    v8 = [AXIPCMessage alloc];
    v13 = @"excludeSiri";
    v9 = [MEMORY[0x1E696AD98] numberWithBool:siriCopy];
    v14[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = [(AXIPCMessage *)v8 initWithKey:4500 payload:v10];
    v7 = [(AXServer *)self sendSimpleMessageWithResult:v11];
  }

  return v7;
}

- (BOOL)isPurpleBuddyAppFrontmost
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isPurpleBuddyAppFrontmostWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4506 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)dismissBuddyIfNecessary
{
  if (AXDeviceHasHomeButton())
  {
    return 0;
  }

  v3 = AXIsBuddyCompleted();
  v4 = v3;
  v5 = dismissBuddyIfNecessary_hasSeenNonBuddyFrontMostApp;
  if ((dismissBuddyIfNecessary_hasSeenNonBuddyFrontMostApp & 1) == 0 && v3)
  {
    isPurpleBuddyAppFrontmost = [(AXSpringBoardServer *)self isPurpleBuddyAppFrontmost];
    v5 = !isPurpleBuddyAppFrontmost;
    dismissBuddyIfNecessary_hasSeenNonBuddyFrontMostApp = !isPurpleBuddyAppFrontmost;
  }

  if (v4 & v5)
  {
    return 0;
  }

  [(AXSpringBoardServer *)self purpleBuddyPID];
  AppElementWithPid = _AXUIElementCreateAppElementWithPid();
  v9 = [MEMORY[0x1E6988D68] elementWithAXUIElement:AppElementWithPid];
  if (AppElementWithPid)
  {
    CFRelease(AppElementWithPid);
  }

  uiElement = [v9 uiElement];
  v11 = [uiElement performAXAction:4019];

  return v11;
}

- (BOOL)isSettingsAppFrontmost
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate isSettingsAppFrontmostWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4505 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (id)focusedApps
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [_axSpringBoardServerInstanceDelegate focusedAppsWithServerInstance:_axSpringBoardServerInstance];
LABEL_5:
    v10 = v5;

    goto LABEL_6;
  }

  v6 = [[AXIPCMessage alloc] initWithKey:4509 payload:0];
  _axSpringBoardServerInstanceDelegate = [(AXServer *)self sendSimpleMessageWithObjectResult:v6];

  if (_axSpringBoardServerInstanceDelegate)
  {
    v7 = MEMORY[0x1E696ACD0];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    _axSpringBoardServerInstance = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v5 = [v7 unarchivedObjectOfClasses:_axSpringBoardServerInstance fromData:_axSpringBoardServerInstanceDelegate error:0];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (id)displayIdentifierForSceneIdentifier:(id)identifier
{
  v18[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v7 = [_axSpringBoardServerInstanceDelegate displayIdentifierForSceneIdentifier:identifierCopy serverInstance:_axSpringBoardServerInstance];
  }

  else
  {
    v8 = [AXIPCMessage alloc];
    v17 = @"sceneIdentifier";
    v18[0] = identifierCopy;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v10 = [(AXIPCMessage *)v8 initWithKey:4120 payload:v9];
    v11 = [(AXServer *)self sendSimpleMessageWithObjectResult:v10];

    if (v11)
    {
      v12 = MEMORY[0x1E696ACD0];
      v13 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v16 = 0;
      v7 = [v12 unarchivedObjectOfClasses:v13 fromData:v11 error:&v16];
      v14 = v16;

      if (v14)
      {
        _AXLogWithFacility();
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)focusedOccludedAppScenes
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [_axSpringBoardServerInstanceDelegate focusedOccludedAppScenesWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    v6 = [[AXIPCMessage alloc] initWithKey:4510 payload:0];
    v7 = [(AXServer *)self sendSimpleMessageWithObjectResult:v6];

    if (v7)
    {
      v8 = MEMORY[0x1E696ACD0];
      v9 = MEMORY[0x1E695DFD8];
      v10 = objc_opt_class();
      v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
      v14 = 0;
      v5 = [v8 unarchivedObjectOfClasses:v11 fromData:v7 error:&v14];
      v12 = v14;

      if (v12)
      {
        _AXLogWithFacility();
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)acquireAssertionWithType:(id)type identifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_axSpringBoardServerInstance acquireAssertionWithType:typeCopy identifier:identifierCopy clientPort:0];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AXSpringBoardServer;
    [(AXServer *)&v9 acquireAssertionWithType:typeCopy identifier:identifierCopy];
  }
}

- (void)relinquishAssertionWithType:(id)type identifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_axSpringBoardServerInstance relinquishAssertionWithType:typeCopy identifier:identifierCopy clientPort:0];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AXSpringBoardServer;
    [(AXServer *)&v9 relinquishAssertionWithType:typeCopy identifier:identifierCopy];
  }
}

- (BOOL)loadGAXBundleForUnmanagedASAM
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_axSpringBoardServerInstanceDelegate forceLoadGAXBundleWithServerInstance:_axSpringBoardServerInstance];

    return 1;
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v6 = [[AXIPCMessage alloc] initWithKey:4069 payload:0];
    client = [(AXServer *)self client];
    v10 = 0;
    [client sendSimpleMessage:v6 withError:&v10];
    v8 = v10;

    v5 = v8 == 0;
  }

  return v5;
}

- (void)reactivateInCallService
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate reactivateInCallServiceWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4084 payload:0];
    _axSpringBoardServerInstance = [(AXServer *)self client];
    [_axSpringBoardServerInstance sendSimpleMessage:_axSpringBoardServerInstanceDelegate];
  }
}

- (void)launchMagnifierApp
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate launchMagnifierAppWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4070 payload:0];
    _axSpringBoardServerInstance = [(AXServer *)self client];
    [_axSpringBoardServerInstance sendSimpleMessage:_axSpringBoardServerInstanceDelegate];
  }
}

- (void)isMagnifierVisibleWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v7 = [_axSpringBoardServerInstanceDelegate isMagnifierVisibleWithServerInstance:_axSpringBoardServerInstance];

    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __56__AXSpringBoardServer_isMagnifierVisibleWithCompletion___block_invoke;
    v15 = &unk_1E71EA3E0;
    v16 = completionCopy;
    v17 = v7;
    v8 = completionCopy;
    AXPerformBlockOnMainThread();
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v8 = [[AXIPCMessage alloc] initWithKey:4071 payload:0];
    client = [(AXServer *)self client];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__AXSpringBoardServer_isMagnifierVisibleWithCompletion___block_invoke_2;
    v10[3] = &unk_1E71EA340;
    v11 = completionCopy;
    completionCopy = completionCopy;
    [client sendAsyncMessage:v8 withReplyHandler:v10];
  }
}

void __56__AXSpringBoardServer_isMagnifierVisibleWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  if (v6)
  {
    _AXLogWithFacility();
LABEL_3:
    v7 = 0;
    goto LABEL_6;
  }

  if (!v10)
  {
    goto LABEL_3;
  }

  v8 = [v10 payload];
  v9 = [v8 objectForKeyedSubscript:@"result"];
  v7 = [v9 BOOLValue];

LABEL_6:
  (*(*(a1 + 32) + 16))(*(a1 + 32), v7, v5);
}

- (void)launchOnboardingViewService:(id)service
{
  v9[1] = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v8 = @"type";
  v9[0] = serviceCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate launchOnboardingViewServiceWithServerInstance:_axSpringBoardServerInstance data:v5];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4122 payload:v5];
    _axSpringBoardServerInstance = [(AXServer *)self client];
    [_axSpringBoardServerInstance sendSimpleMessage:_axSpringBoardServerInstanceDelegate];
  }
}

- (void)launchVoiceOverQuickSettingsViewService:(id)service
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:service requiringSecureCoding:1 error:0];
  v5 = v4;
  if (v4)
  {
    v9 = @"data";
    v10[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
    {
      _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
      _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
      [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate launchVoiceOverQuickSettingsViewServiceWithServerInstance:_axSpringBoardServerInstance data:v6];
    }

    else
    {
      [(AXServer *)self _connectIfNecessary];
      _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4094 payload:v6];
      _axSpringBoardServerInstance = [(AXServer *)self client];
      [_axSpringBoardServerInstance sendSimpleMessage:_axSpringBoardServerInstanceDelegate];
    }
  }
}

- (void)launchVoiceOverImageExplorerViewServiceForResult:(id)result withData:(id)data
{
  v18[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (result)
  {
    v16 = 0;
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:result requiringSecureCoding:1 error:&v16];
    v8 = v16;
    v15 = 0;
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:dataCopy requiringSecureCoding:1 error:&v15];
    v10 = v15;
    v11 = v10;
    if (v8 || !v7)
    {
      v12 = AXLogSpringboardServer();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [AXSpringBoardServer launchVoiceOverImageExplorerViewServiceForResult:withData:];
      }
    }

    else if (v10 || !v9)
    {
      v12 = AXLogSpringboardServer();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [AXSpringBoardServer launchVoiceOverImageExplorerViewServiceForResult:withData:];
      }
    }

    else
    {
      v17[0] = @"VoiceOverImageExplorerVisionResultData";
      v17[1] = @"VoiceOverImageExplorerElementInfo";
      v18[0] = v7;
      v18[1] = v9;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
      if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
      {
        _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
        _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
        [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate launchVoiceOverImageExplorerViewServiceWithServerInstance:_axSpringBoardServerInstance forData:v12];
      }

      else
      {
        [(AXServer *)self _connectIfNecessary];
        _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4105 payload:v12];
        _axSpringBoardServerInstance = [(AXServer *)self client];
        [_axSpringBoardServerInstance sendSimpleMessage:_axSpringBoardServerInstanceDelegate];
      }
    }
  }

  else
  {
    v8 = AXLogSpringboardServer();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [AXSpringBoardServer launchVoiceOverImageExplorerViewServiceForResult:withData:];
    }
  }
}

- (id)visibleTripleClickItems
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate visibleTripleClickItemsWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4108 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithObjectResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (BOOL)isAppleWatchRemoteScreenActive
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _AXSTwiceRemoteScreenEnabled();
  if (v2)
  {
    v3 = AXLogTwiceRemoteScreen();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[AXSpringBoardServer isAppleWatchRemoteScreenActive]";
      _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_DEFAULT, "[TWICE] %s", &v5, 0xCu);
    }
  }

  return v2 != 0;
}

- (BOOL)isNonExclusiveSystemUIFocusableIncludingPIPWindow:(BOOL)window includingNonDismissableElements:(BOOL)elements
{
  elementsCopy = elements;
  windowCopy = window;
  if ([(AXSpringBoardServer *)self isNotificationVisible]|| [(AXSpringBoardServer *)self isDockVisible]|| [(AXSpringBoardServer *)self isScreenshotWindowVisible]|| [(AXSpringBoardServer *)self isSiriVisible]|| windowCopy && [(AXSpringBoardServer *)self isPIPWindowVisible]|| [(AXSpringBoardServer *)self isBannerVisible]|| [(AXSpringBoardServer *)self isStageManagerSwitcherVisible]|| [(AXSpringBoardServer *)self isChamoisOrFlexibleWindowingEnabled])
  {
    return 1;
  }

  if (AXDoesRequestingClientDeserveAutomation())
  {
    return 0;
  }

  return [(AXSpringBoardServer *)self isStatusBarNativeFocusableIncludingNonDismissableElements:elementsCopy];
}

- (void)setShouldFocusNonExclusiveSystemUI:(BOOL)i
{
  iCopy = i;
  v10 = *MEMORY[0x1E69E9840];
  if (![(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v5 = FKALogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [AXSpringBoardServer setShouldFocusNonExclusiveSystemUI:];
    }
  }

  if (self->_shouldFocusNonExclusiveSystemUI != iCopy)
  {
    self->_shouldFocusNonExclusiveSystemUI = iCopy;
    v6 = FKALogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9[0] = 67109120;
      v9[1] = iCopy;
      _os_log_impl(&dword_18B15E000, v6, OS_LOG_TYPE_INFO, "Should focus non exclusive system UI: %i", v9, 8u);
    }

    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_axSpringBoardServerInstanceDelegate updateFrontMostApplicationWithServerInstance:_axSpringBoardServerInstance];
  }
}

- (void)freezeClarityUILoadingScreenWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [_axSpringBoardServerInstanceDelegate freezeClarityUILoadingScreenWithServerInstance:_axSpringBoardServerInstance];

    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __66__AXSpringBoardServer_freezeClarityUILoadingScreenWithCompletion___block_invoke;
    v14 = &unk_1E71EA2F0;
    v15 = completionCopy;
    v7 = completionCopy;
    AXPerformBlockOnMainThread();
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v7 = [[AXIPCMessage alloc] initWithKey:4116 payload:0];
    client = [(AXServer *)self client];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__AXSpringBoardServer_freezeClarityUILoadingScreenWithCompletion___block_invoke_2;
    v9[3] = &unk_1E71EA340;
    v10 = completionCopy;
    completionCopy = completionCopy;
    [client sendAsyncMessage:v7 withReplyHandler:v9];
  }
}

uint64_t __66__AXSpringBoardServer_freezeClarityUILoadingScreenWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = CLFLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__AXSpringBoardServer_freezeClarityUILoadingScreenWithCompletion___block_invoke_2_cold_1();
    }
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)presentNearbyDeviceControlPicker
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate presentNearbyDeviceControlPickerWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4117 payload:0];
    _axSpringBoardServerInstance = [(AXServer *)self client];
    [_axSpringBoardServerInstance sendAsyncMessage:_axSpringBoardServerInstanceDelegate withReplyHandler:&__block_literal_global_590];
  }
}

void __55__AXSpringBoardServer_presentNearbyDeviceControlPicker__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = AXLogSpringboardServer();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__AXSpringBoardServer_presentNearbyDeviceControlPicker__block_invoke_cold_1(v3, v4);
    }
  }
}

- (void)requestDismissJindo
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate diminishJindoWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4118 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (id)jindoAppBundleIndentifiers
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate jindoAppBundleIndentifiersWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4121 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithObjectResult:_axSpringBoardServerInstanceDelegate];
  }

  return v5;
}

- (void)toggleDetectionMode
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate toggleDetectionModeWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4119 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)launchAccessibilityReader
{
  v3 = +[AXSpringBoardServer server];
  isControlCenterVisible = [v3 isControlCenterVisible];

  if (isControlCenterVisible)
  {
    v5 = +[AXSpringBoardServer server];
    [v5 showControlCenter:0];
  }

  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate launchAccessibilityReaderWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4138 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (BOOL)isMagnifierVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [_axSpringBoardServerInstanceDelegate isMagnifierVisibleWithServerInstance:_axSpringBoardServerInstance];

    return v5;
  }

  else
  {
    _AXAssert();
    return 0;
  }
}

- (id)applicationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v7 = [_axSpringBoardServerInstanceDelegate serverInstance:_axSpringBoardServerInstance appWithIdentifier:identifierCopy];
  }

  else
  {
    _AXAssert();
    v7 = 0;
  }

  return v7;
}

- (id)focusedAppProcess
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [_axSpringBoardServerInstanceDelegate focusedAppProcessWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _AXAssert();
    v5 = 0;
  }

  return v5;
}

- (id)runningAppProcesses
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [_axSpringBoardServerInstanceDelegate runningAppProcessesWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _AXAssert();
    v5 = 0;
  }

  return v5;
}

- (id)appNameFromPid:(int)pid
{
  v3 = *&pid;
  v14[1] = *MEMORY[0x1E69E9840];
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v7 = [_axSpringBoardServerInstanceDelegate appNameFromPid:v3 withServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    v8 = [AXIPCMessage alloc];
    v13 = @"pid";
    v9 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v14[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = [(AXIPCMessage *)v8 initWithKey:4114 payload:v10];
    v7 = [(AXServer *)self sendSimpleMessageWithObjectResult:v11];
  }

  return v7;
}

- (void)toggleLiveTranscription
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate toggleLiveTranscriptionWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4115 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)toggleConversationBoost
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    _axSpringBoardServerInstance = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate toggleConversationBoostWithServerInstance:_axSpringBoardServerInstance];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4130 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (int)nativeFocusedApplication
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    nativeFocusedApplication = [_axSpringBoardServerInstanceDelegate nativeFocusedApplication];
  }

  else
  {
    objc_opt_class();
    v5 = [[AXIPCMessage alloc] initWithKey:4123 payload:0];
    v6 = [(AXServer *)self sendSimpleMessageWithObjectResult:v5];
    _axSpringBoardServerInstanceDelegate = __UIAccessibilityCastAsClass();

    nativeFocusedApplication = [_axSpringBoardServerInstanceDelegate intValue];
  }

  v7 = nativeFocusedApplication;

  return v7;
}

- (void)installGuestPassPINGesture
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate installGuestPassPINGesture];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4135 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)installGuestPassAcceptDialogGesture
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate installGuestPassAcceptDialogGesture];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4136 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)removeGuestPassAcceptDialogGesture
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    _axSpringBoardServerInstanceDelegate = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    [(AXIPCMessage *)_axSpringBoardServerInstanceDelegate removeGuestPassAcceptDialogGesture];
  }

  else
  {
    _axSpringBoardServerInstanceDelegate = [[AXIPCMessage alloc] initWithKey:4137 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (id)_axSpringBoardServerInstanceIfExists
{
  v2 = NSClassFromString(&cfstr_Axspringboards_6.isa);

  return [(objc_class *)v2 safeValueForKey:@"springBoardServerInstanceIfExists"];
}

uint64_t __74__AXSpringBoardServer_AXSpringBoardServer_Private___shouldDispatchLocally__block_invoke()
{
  result = AXProcessIsSpringBoard();
  _shouldDispatchLocally_result = result;
  return result;
}

void __29__AXSpringBoardServer_server__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)launchVoiceOverImageExplorerViewServiceForResult:withData:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setShouldFocusNonExclusiveSystemUI:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __55__AXSpringBoardServer_presentNearbyDeviceControlPicker__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "failed to present nearby device control picker with error: %@", &v2, 0xCu);
}

@end