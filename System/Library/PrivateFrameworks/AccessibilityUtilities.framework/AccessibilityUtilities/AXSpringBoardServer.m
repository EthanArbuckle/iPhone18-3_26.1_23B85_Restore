@interface AXSpringBoardServer
+ (BOOL)isAvailable;
+ (id)server;
- (AXSpringBoardServer)init;
- (BOOL)_isSystemAppFrontmostExcludingSiri:(BOOL)a3;
- (BOOL)_shouldDispatchLocally;
- (BOOL)areSystemGesturesDisabledByAccessibility;
- (BOOL)areSystemGesturesDisabledNatively;
- (BOOL)bluetoothPowerEnabled;
- (BOOL)canLaunchAsFloatingApplicationForIconView:(id)a3;
- (BOOL)canLaunchAsPinnedApplicationForIconView:(id)a3;
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
- (BOOL)isNonExclusiveSystemUIFocusableIncludingPIPWindow:(BOOL)a3 includingNonDismissableElements:(BOOL)a4;
- (BOOL)isNotificationCenterVisible;
- (BOOL)isNotificationVisible;
- (BOOL)isOrientationLocked;
- (BOOL)isPIPWindowVisible;
- (BOOL)isPasscodeLockVisible;
- (BOOL)isPurpleBuddyAppFrontmost;
- (BOOL)isRemoteAlertVisible;
- (BOOL)isRingerMuted;
- (BOOL)isScreenLockedWithPasscode:(BOOL *)a3;
- (BOOL)isScreenshotWindowVisible;
- (BOOL)isSettingsAppFrontmost;
- (BOOL)isShelfSwitcherVisible;
- (BOOL)isShowingAXAlert;
- (BOOL)isShowingHomescreen;
- (BOOL)isShowingLongLookNotification;
- (BOOL)isShowingNonSystemApp;
- (BOOL)isShowingRemoteView:(int64_t)a3;
- (BOOL)isSideSwitchUsedForOrientation;
- (BOOL)isSiriVisible;
- (BOOL)isSpeakThisTemporarilyDisabled;
- (BOOL)isSpotlightVisible;
- (BOOL)isStageManagerSwitcherVisible;
- (BOOL)isStatusBarNativeFocusableIncludingNonDismissableElements:(BOOL)a3;
- (BOOL)isSyncingRestoringResettingOrUpdating;
- (BOOL)isSystemAppShowingAnAlert;
- (BOOL)isSystemSleeping;
- (BOOL)isTypeToSiriVisible;
- (BOOL)isVoiceControlRunning;
- (BOOL)loadGAXBundleForUnmanagedASAM;
- (BOOL)performMedusaGesture:(unint64_t)a3;
- (BOOL)showControlCenter:(BOOL)a3;
- (BOOL)showNotificationCenter:(BOOL)a3;
- (BOOL)toggleDarkMode;
- (BOOL)toggleIncomingCall;
- (BOOL)voiceOverEnabled;
- (BOOL)zoomEnabled;
- (double)reachabilityOffset;
- (double)volumeLevel;
- (id)_axSpringBoardServerInstance;
- (id)_axSpringBoardServerInstanceDelegate;
- (id)_axSpringBoardServerInstanceIfExists;
- (id)_handleMediaPlayingResult:(id)a3;
- (id)_handleReachabilityResult:(id)a3;
- (id)_handleReplyResult:(id)a3;
- (id)_payloadForRemoteViewType:(int64_t)a3 data:(id)a4;
- (id)allowedMedusaGestures;
- (id)appNameFromPid:(int)a3;
- (id)applicationWithIdentifier:(id)a3;
- (id)displayIdentifierForSceneIdentifier:(id)a3;
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
- (id)splashImageForAppWithBundleIdentifier:(id)a3;
- (id)visibleTripleClickItems;
- (int)nativeFocusedApplication;
- (int)pid;
- (int)purpleBuddyPID;
- (int)topEventPidOverride;
- (int64_t)activeApplicationOrientation;
- (int64_t)activeInterfaceOrientation;
- (void)_didConnectToClient;
- (void)_didConnectToServer;
- (void)_isSystemAppFrontmostExcludingSiri:(BOOL)a3 completion:(id)a4;
- (void)_sendRemoteViewIPCMessage:(int)a3 withRemoteViewType:(int64_t)a4 withData:(id)a5;
- (void)_wasDisconnectedFromClient;
- (void)_willClearServer;
- (void)acquireAssertionWithType:(id)a3 identifier:(id)a4;
- (void)activateSOSMode;
- (void)activeInterfaceOrientation:(id)a3;
- (void)armApplePay;
- (void)cancelReachabilityDetection;
- (void)cancelSiriDismissalForAssistiveTouch;
- (void)cleanupAlertHandler;
- (void)copyStringToPasteboard:(id)a3;
- (void)didPotentiallyDismissNonExclusiveSystemUI;
- (void)dismissAppSwitcher;
- (void)dismissShelfSwitcher;
- (void)freezeClarityUILoadingScreenWithCompletion:(id)a3;
- (void)hideAlert;
- (void)hideNotificationCenter;
- (void)installGuestPassAcceptDialogGesture;
- (void)installGuestPassPINGesture;
- (void)isMagnifierVisibleWithCompletion:(id)a3;
- (void)isMediaPlayingForApp:(id)a3 completionHandler:(id)a4;
- (void)isSystemSleeping:(id)a3;
- (void)launchAccessibilityReader;
- (void)launchApplication:(id)a3;
- (void)launchFloatingApplication:(id)a3;
- (void)launchMagnifierApp;
- (void)launchOnboardingViewService:(id)a3;
- (void)launchPinnedApplication:(id)a3 onLeadingSide:(BOOL)a4;
- (void)launchVoiceOverImageExplorerViewServiceForResult:(id)a3 withData:(id)a4;
- (void)launchVoiceOverQuickSettingsViewService:(id)a3;
- (void)openAppSwitcher;
- (void)openAssistiveTouchCustomGestureCreation;
- (void)openCommandAndControlCommands;
- (void)openCommandAndControlSettings;
- (void)openCommandAndControlVocabulary;
- (void)openSCATCustomGestureCreation;
- (void)openTypeToSiri;
- (void)openVoiceControl;
- (void)pauseMediaForApp:(id)a3;
- (void)pid:(id)a3;
- (void)presentNearbyDeviceControlPicker;
- (void)purpleBuddyPID:(id)a3;
- (void)reactivateInCallService;
- (void)rebootDevice;
- (void)registerReachabilityHandler:(id)a3 withIdentifierCallback:(id)a4;
- (void)relinquishAssertionWithType:(id)a3 identifier:(id)a4;
- (void)removeGuestPassAcceptDialogGesture;
- (void)removeReachabilityHandler:(id)a3;
- (void)requestDismissJindo;
- (void)resetDimTimer;
- (void)resumeMediaForApp:(id)a3;
- (void)revealSpotlight;
- (void)screenLockStatus:(id)a3 passcodeStatusRequired:(BOOL)a4;
- (void)setBluetoothPowerEnabled:(BOOL)a3;
- (void)setCancelGestureActivation:(unint64_t)a3 cancelEnabled:(BOOL)a4;
- (void)setCaptionPanelContextId:(unsigned int)a3;
- (void)setDockIconActivationMode:(unint64_t)a3;
- (void)setHearingAidControlVisible:(BOOL)a3;
- (void)setMenuBarVisible:(BOOL)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setOrientationLocked:(BOOL)a3;
- (void)setReachabilityActive:(BOOL)a3;
- (void)setReachabilityEnabled:(BOOL)a3;
- (void)setShouldFocusNonExclusiveSystemUI:(BOOL)a3;
- (void)setShowSpeechPlaybackControls:(BOOL)a3;
- (void)setVoiceOverEnabled:(BOOL)a3;
- (void)setZoomEnabled:(BOOL)a3;
- (void)showAlert:(int)a3 withHandler:(id)a4 withData:(id)a5;
- (void)showNotificationCenter;
- (void)simulateEdgePressHaptics;
- (void)startHearingAidServer;
- (void)systemAppInfoWithQuery:(unint64_t)a3 completion:(id)a4;
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
  v3 = [MEMORY[0x1E6994660] sharedSystemShellSwitcher];
  v4 = [v3 isClarityBoardEnabled];

  if (v4 && server_onceToken_0 != -1)
  {
    +[AXSpringBoardServer server];
  }

  if ([a1 isAvailable])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__AXSpringBoardServer_server__block_invoke_434;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
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

  v2 = [MEMORY[0x1E6994660] sharedSystemShellSwitcher];
  v3 = [v2 isClarityBoardEnabled];

  return v3 ^ 1;
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
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [v3 purpleBuddyPIDWithServerInstance:v4];
  }

  else
  {
    v6 = [[AXIPCMessage alloc] initWithKey:4507 payload:0];
    v3 = [(AXServer *)self sendMessage:v6];

    v4 = [v3 payload];
    v7 = [v4 objectForKey:@"result"];
    v5 = [v7 integerValue];
  }

  return v5;
}

- (id)_axSpringBoardServerInstanceDelegate
{
  v3 = _axSpringBoardServerInstanceDelegate_delegate;
  if (!_axSpringBoardServerInstanceDelegate_delegate)
  {
    [NSClassFromString(&cfstr_Axspringboards_7.isa) initialize];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceIfExists];
    v5 = [v4 safeValueForKey:@"delegate"];
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
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceIfExists];
    v5 = _axSpringBoardServerInstance_AXSBServerInstance;
    _axSpringBoardServerInstance_AXSBServerInstance = v4;

    v3 = _axSpringBoardServerInstance_AXSBServerInstance;
    if (!_axSpringBoardServerInstance_AXSBServerInstance)
    {
      v6 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
      v7 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceIfExists];
      v8 = _axSpringBoardServerInstance_AXSBServerInstance;
      _axSpringBoardServerInstance_AXSBServerInstance = v7;

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

- (id)_handleReplyResult:(id)a3
{
  v4 = a3;
  v5 = [v4 payload];
  v6 = [v5 objectForKey:@"result"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 integerValue];
    *buf = 0;
    v16 = buf;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__2;
    v19 = __Block_byref_object_dispose__2;
    v20 = 0;
    v8 = [(AXSpringBoardServer *)self accessQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __42__AXSpringBoardServer__handleReplyResult___block_invoke;
    v14[3] = &unk_1E71EA1D8;
    v14[4] = self;
    v14[5] = buf;
    [v8 performSynchronousWritingBlock:v14];

    v9 = *(v16 + 5);
    if (v9)
    {
      (*(v9 + 16))(v9, v7);
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

- (id)_handleMediaPlayingResult:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v4 = [v17 payload];
  v5 = AXLogSpringboardServer();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = v4;
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
        v11 = [(AXSpringBoardServer *)self mediaPlayingHandlers];
        v12 = [v11 objectForKeyedSubscript:v10];

        buf[0] = 0;
        objc_opt_class();
        v13 = [v4 objectForKeyedSubscript:@"result"];
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

  v15 = [(AXSpringBoardServer *)self mediaPlayingHandlers];
  [v15 removeAllObjects];

  return 0;
}

- (id)_handleReachabilityResult:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [a3 payload];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(AXSpringBoardServer *)self reachabilityHandlers];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [(AXSpringBoardServer *)self reachabilityHandlers];
        v12 = [v11 objectForKeyedSubscript:v10];

        (v12)[2](v12, v4);
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v3 = [(AXServer *)self server];
  [v3 setHandlerWithTarget:self selector:sel__handleReplyResult_ forKey:5000];
  [v3 setHandlerWithTarget:self selector:sel__handleReachabilityResult_ forKey:5003];
  [v3 setHandlerWithTarget:self selector:sel__handleMediaPlayingResult_ forKey:5004];
  if ([(AXSpringBoardServer *)self _shouldValidateEntitlements])
  {
    LOBYTE(v4) = 1;
    _AXLogWithFacility();
    [v3 addPossibleRequiredEntitlement:@"com.apple.accessibility.SpringBoard" forMessageWithKey:{5000, v4, @"Validating SB reply messages"}];
    [v3 addPossibleRequiredEntitlement:@"com.apple.accessibility.SpringBoard" forMessageWithKey:5002];
    [v3 addPossibleRequiredEntitlement:@"com.apple.accessibility.SpringBoard" forMessageWithKey:5003];
    [v3 addPossibleRequiredEntitlement:@"com.apple.accessibility.SpringBoard" forMessageWithKey:5004];
  }
}

- (void)_willClearServer
{
  v4.receiver = self;
  v4.super_class = AXSpringBoardServer;
  [(AXServer *)&v4 _willClearServer];
  v3 = [(AXServer *)self server];
  [v3 removeAllHandlersForTarget:self];
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

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"AXSystemAppServerDiedNotification" object:0];
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

- (void)setCaptionPanelContextId:(unsigned int)a3
{
  v3 = *&a3;
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"contextId";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:4096 payload:v7];

  v9 = [(AXServer *)self client];
  [v9 sendSimpleMessage:v8];
}

- (void)setHearingAidControlVisible:(BOOL)a3
{
  v3 = a3;
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"visible";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:4023 payload:v7];

  v9 = [(AXServer *)self client];
  [v9 sendSimpleMessage:v8];
}

- (void)startHearingAidServer
{
  [(AXServer *)self _connectIfNecessary];
  v4 = [[AXIPCMessage alloc] initWithKey:4035 payload:0];
  v3 = [(AXServer *)self client];
  [v3 sendSimpleMessage:v4];
}

- (int)topEventPidOverride
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:4006 payload:0];
  v4 = [(AXServer *)self client];
  v5 = [v4 sendMessage:v3 withError:0];

  v6 = [v5 payload];
  v7 = [v6 objectForKey:@"pid"];
  v8 = [v7 intValue];

  return v8;
}

- (BOOL)isOrientationLocked
{
  v3 = [[AXIPCMessage alloc] initWithKey:4018 payload:0];
  LOBYTE(self) = [(AXServer *)self sendSimpleMessageWithResult:v3];

  return self;
}

- (void)setOrientation:(int64_t)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"orientation";
  v4 = [MEMORY[0x1E696AD98] numberWithLong:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v6 = [[AXIPCMessage alloc] initWithKey:4107 payload:v5];
  [(AXServer *)self sendSimpleMessage:v6];
}

- (void)setOrientationLocked:(BOOL)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"locked";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
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
  v4 = [(AXServer *)self client];
  v5 = [v4 sendMessage:v3 withError:0];

  v6 = [v5 payload];
  v7 = [v6 objectForKey:@"result"];
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
  v3 = [(AXSpringBoardServer *)self accessQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AXSpringBoardServer_cleanupAlertHandler__block_invoke;
  v5[3] = &unk_1E71EA1D8;
  v5[4] = self;
  v5[5] = &v6;
  [v3 performSynchronousWritingBlock:v5];

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
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(AXSpringBoardServer *)self accessQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__AXSpringBoardServer_isShowingAXAlert__block_invoke;
  v5[3] = &unk_1E71EA1D8;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performSynchronousReadingBlock:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __39__AXSpringBoardServer_isShowingAXAlert__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentAlertHandler];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (void)showAlert:(int)a3 withHandler:(id)a4 withData:(id)a5
{
  v6 = *&a3;
  v8 = a4;
  v9 = a5;
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
      v11 = [(AXSpringBoardServer *)self accessQueue];
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __54__AXSpringBoardServer_showAlert_withHandler_withData___block_invoke_2;
      v21 = &unk_1E71EA228;
      v22 = self;
      v23 = v8;
      [v11 performSynchronousWritingBlock:&v18];

      v12 = MEMORY[0x1E695DF90];
      v13 = [MEMORY[0x1E696AD98] numberWithInt:{v6, v18, v19, v20, v21, v22}];
      v14 = [v12 dictionaryWithObject:v13 forKey:@"alertType"];

      if (v9)
      {
        [v14 setObject:v9 forKey:@"data"];
      }

      v15 = [[AXIPCMessage alloc] initWithKey:4002 payload:v14];
      v16 = [(AXServer *)self client];
      [v16 sendSimpleMessage:v15];

      v17 = v23;
    }

    else
    {
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __54__AXSpringBoardServer_showAlert_withHandler_withData___block_invoke;
      v27 = &unk_1E71EA200;
      v28 = self;
      v31 = v6;
      v30 = v8;
      v29 = v9;
      AXPerformBlockOnMainThreadAfterDelay();

      v17 = v30;
    }
  }
}

- (BOOL)isShowingRemoteView:(int64_t)a3
{
  v5 = [AXIPCMessage alloc];
  v6 = [(AXSpringBoardServer *)self _payloadForRemoteViewType:a3 data:0];
  v7 = [(AXIPCMessage *)v5 initWithKey:4095 payload:v6];
  LOBYTE(self) = [(AXServer *)self sendSimpleMessageWithResult:v7];

  return self;
}

- (id)_payloadForRemoteViewType:(int64_t)a3 data:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695DF90];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v8 = [v6 dictionaryWithObject:v7 forKey:@"remoteViewType"];

  if (v5)
  {
    [v8 setObject:v5 forKey:@"data"];
  }

  return v8;
}

- (void)_sendRemoteViewIPCMessage:(int)a3 withRemoteViewType:(int64_t)a4 withData:(id)a5
{
  v6 = *&a3;
  v8 = a5;
  if ([(AXServer *)self _connectIfNecessary])
  {
    [(AXServer *)self _connectServerIfNecessary];
    v9 = [AXIPCMessage alloc];
    v10 = [(AXSpringBoardServer *)self _payloadForRemoteViewType:a4 data:v8];
    v11 = [(AXIPCMessage *)v9 initWithKey:v6 payload:v10];

    v12 = [(AXServer *)self client];
    [v12 sendSimpleMessage:v11];
  }

  else
  {
    v13 = v8;
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)setShowSpeechPlaybackControls:(BOOL)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"show";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = [[AXIPCMessage alloc] initWithKey:4040 payload:v5];
  v7 = [(AXServer *)self client];
  [v7 sendSimpleMessage:v6];
}

- (void)setCancelGestureActivation:(unint64_t)a3 cancelEnabled:(BOOL)a4
{
  v4 = a4;
  if ([(AXServer *)self _connectIfNecessary])
  {
    v7 = MEMORY[0x1E695DF20];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    v12 = [v7 dictionaryWithObjectsAndKeys:{v8, @"type", v9, @"cancelEnabled", 0}];

    v10 = [[AXIPCMessage alloc] initWithKey:4008 payload:v12];
    v11 = [(AXServer *)self client];
    [v11 sendSimpleMessage:v10];
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
  v3 = [(AXServer *)self client];
  [v3 sendSimpleMessage:v4];
}

- (void)registerReachabilityHandler:(id)a3 withIdentifierCallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(AXServer *)self _connectIfNecessary])
  {
    [(AXServer *)self _connectServerIfNecessary];
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];

    v10 = [(AXSpringBoardServer *)self reachabilityHandlers];

    if (!v10)
    {
      v11 = [MEMORY[0x1E695DF90] dictionary];
      [(AXSpringBoardServer *)self setReachabilityHandlers:v11];
    }

    v12 = [[AXIPCMessage alloc] initWithKey:4056 payload:&unk_1EFE97358];
    v13 = [(AXServer *)self client];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __74__AXSpringBoardServer_registerReachabilityHandler_withIdentifierCallback___block_invoke_2;
    v17[3] = &unk_1E71EA2C8;
    v17[4] = self;
    v18 = v9;
    v19 = v6;
    v20 = v7;
    v14 = v7;
    v15 = v6;
    v16 = v9;
    [v13 sendAsyncMessage:v12 withReplyHandler:v17];
  }

  else
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __74__AXSpringBoardServer_registerReachabilityHandler_withIdentifierCallback___block_invoke;
    v24 = &unk_1E71EA2A0;
    v25 = self;
    v26 = v6;
    v27 = v7;
    v16 = v7;
    v12 = v6;
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
  v5 = [(AXServer *)self client];
  v6 = [v5 sendMessage:v4 withError:0];

  v7 = [v6 payload];
  v8 = [v7 objectForKeyedSubscript:@"result"];
  v9 = [v8 BOOLValue];

  return v9;
}

- (void)toggleReachability
{
  [(AXSpringBoardServer *)self reachabilityOffset];

  [(AXSpringBoardServer *)self setReachabilityActive:v3 == 0.0];
}

- (void)setReachabilityActive:(BOOL)a3
{
  v3 = a3;
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"active";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:4060 payload:v7];

  v9 = [(AXServer *)self client];
  [v9 sendSimpleMessage:v8];
}

- (void)setReachabilityEnabled:(BOOL)a3
{
  v3 = a3;
  v13[1] = *MEMORY[0x1E69E9840];
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v11 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v11 serverInstance:v5 setReachabilityEnabled:v3];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v6 = [AXIPCMessage alloc];
    v12 = @"enabled";
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v13[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [(AXIPCMessage *)v6 initWithKey:4083 payload:v8];

    v10 = [(AXServer *)self client];
    [v10 sendSimpleMessage:v9];
  }
}

- (void)removeReachabilityHandler:(id)a3
{
  v11 = a3;
  if (v11)
  {
    [(AXServer *)self _connectIfNecessary];
    v4 = [(AXSpringBoardServer *)self reachabilityHandlers];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [(AXSpringBoardServer *)self reachabilityHandlers];
      [v6 removeObjectForKey:v11];

      v7 = [(AXSpringBoardServer *)self reachabilityHandlers];
      v8 = [v7 count];

      if (!v8)
      {
        v9 = [[AXIPCMessage alloc] initWithKey:4056 payload:&unk_1EFE97380];
        v10 = [(AXServer *)self client];
        [v10 sendSimpleMessage:v9];
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
  v3 = [(AXServer *)self _connectIfNecessary];
  if (v3)
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4052 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v4];

    LOBYTE(v3) = v5;
  }

  return v3;
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
    v5 = [(AXServer *)self client];
    v6 = [v5 sendMessage:v4 withError:0];

    if (v6)
    {
      v7 = [v6 payload];
      v8 = [v7 objectForKey:@"pid"];
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

- (void)pid:(id)a3
{
  v4 = a3;
  if ([(AXServer *)self _connectIfNecessary])
  {
    v5 = SpringBoardPid;
    if (SpringBoardPid == -1)
    {
      v6 = [[AXIPCMessage alloc] initWithKey:4001 payload:0];
      v7 = [(AXServer *)self client];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __27__AXSpringBoardServer_pid___block_invoke_3;
      v8[3] = &unk_1E71EA340;
      v9 = v4;
      [v7 sendAsyncMessage:v6 replyOnQueue:MEMORY[0x1E69E96A0] replyHandler:v8];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __27__AXSpringBoardServer_pid___block_invoke_2;
      block[3] = &unk_1E71EA318;
      v11 = v4;
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
    v14 = v4;
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
  v4 = [(AXServer *)self client];
  v5 = [v4 sendMessage:v3 withError:0];

  v6 = [v5 payload];
  v7 = [v6 objectForKey:@"orientation"];
  v8 = [v7 intValue];

  return v8;
}

- (int64_t)activeInterfaceOrientation
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:4030 payload:0];
  v4 = [(AXServer *)self client];
  v5 = [v4 sendMessage:v3 withError:0];

  v6 = [v5 payload];
  v7 = [v6 objectForKey:@"orientation"];
  v8 = [v7 integerValue];

  return v8;
}

- (void)activeInterfaceOrientation:(id)a3
{
  v4 = a3;
  v5 = [[AXIPCMessage alloc] initWithKey:4030 payload:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AXSpringBoardServer_activeInterfaceOrientation___block_invoke;
  v7[3] = &unk_1E71EA340;
  v8 = v4;
  v6 = v4;
  [(AXServer *)self sendAsynchronousMessage:v5 replyOnQueue:MEMORY[0x1E69E96A0] handler:v7];
}

void __50__AXSpringBoardServer_activeInterfaceOrientation___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 payload];
  v3 = [v4 objectForKey:@"orientation"];
  (*(v2 + 16))(v2, [v3 integerValue]);
}

- (void)copyStringToPasteboard:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    [(AXServer *)self _connectIfNecessary];
    v5 = [AXIPCMessage alloc];
    v9 = @"string";
    v10[0] = v4;
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

- (id)splashImageForAppWithBundleIdentifier:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    [(AXServer *)self _connectIfNecessary];
    v5 = [AXIPCMessage alloc];
    v13 = @"bundleIdentifier";
    v14[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

    v7 = [(AXIPCMessage *)v5 initWithKey:4089 payload:v6];
    v8 = [(AXServer *)self client];
    v9 = [v8 sendMessage:v7 withError:0];

    v10 = [v9 payload];
    v11 = [v10 objectForKey:@"splashData"];
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
  v5 = [(AXServer *)self client];
  v6 = [v5 sendMessage:v4 withError:0];

  v7 = [v6 payload];
  v8 = [v7 objectForKeyedSubscript:@"result"];
  v9 = [v8 BOOLValue];

  return v9;
}

- (BOOL)currentDevicesHaveAssistiveTouchCustomActions
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 laserEnabled];

  if (!v4)
  {
    return 0;
  }

  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v6 = [(AXIPCMessage *)v5 initWithKey:4109 payload:MEMORY[0x1E695E0F8]];
  v7 = [(AXServer *)self client];
  v8 = [v7 sendMessage:v6 withError:0];

  v9 = [v8 payload];
  v10 = [v9 objectForKeyedSubscript:@"result"];
  v11 = [v10 BOOLValue];

  return v11;
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

- (BOOL)isScreenLockedWithPasscode:(BOOL *)a3
{
  isUILocked = _isUILocked();
  if (a3)
  {
    *a3 = _isDeviceLockedWithPasscode();
  }

  return isUILocked;
}

- (void)screenLockStatus:(id)a3 passcodeStatusRequired:(BOOL)a4
{
  v4 = a3;
  _isUILocked();
  _isDeviceLockedWithPasscode();
  v6 = v4;
  v5 = v4;
  AXPerformBlockAsynchronouslyOnMainThread();
}

- (BOOL)isSystemSleeping
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isSystemSleepingWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4016 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (void)isSystemSleeping:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[AXIPCMessage alloc] initWithKey:4016 payload:0];
    [(AXServer *)self sendAsynchronousMessage:v5 replyOnQueue:MEMORY[0x1E69E96A0] BOOLResultHandler:v4];
  }
}

- (BOOL)isSyncingRestoringResettingOrUpdating
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isSyncingRestoringResettingOrUpdatingWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4039 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)areSystemGesturesDisabledNatively
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 areSystemGesturesDisabledNativelyWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4043 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)areSystemGesturesDisabledByAccessibility
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 areSystemGesturesDisabledByAccessibilityWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4044 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (id)installedApps
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v3 installedAppsWithServerInstance:v4];
  }

  else
  {
    v5 = [[AXIPCMessage alloc] initWithKey:4046 payload:0];
    v3 = [(AXServer *)self sendMessage:v5];

    v4 = [v3 payload];
    [v4 objectForKey:@"result"];
  }
  v6 = ;

  return v6;
}

- (id)internalApps
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v3 internalAppsWithServerInstance:v4];
  }

  else
  {
    v5 = [[AXIPCMessage alloc] initWithKey:4093 payload:0];
    v3 = [(AXServer *)self sendMessage:v5];

    v4 = [v3 payload];
    [v4 objectForKey:@"result"];
  }
  v6 = ;

  return v6;
}

- (void)wakeUpDeviceIfNecessary
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v4 wakeUpDeviceIfNecessaryWithServerInstance:v3];
  }

  else
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4068 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)unlockDevice
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v4 unlockDeviceWithServerInstance:v3];
  }

  else
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4048 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)rebootDevice
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v4 rebootDeviceWithServerInstance:v3];
  }

  else
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4075 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)isMediaPlayingForApp:(id)a3 completionHandler:(id)a4
{
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v8 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v9 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v8 isMediaPlayingWithServerInstance:v9 forBundleId:v6 completion:v7];
  }

  else
  {
    v10 = [(AXSpringBoardServer *)self mediaPlayingHandlers];

    if (!v10)
    {
      v11 = [MEMORY[0x1E695DF90] dictionary];
      [(AXSpringBoardServer *)self setMediaPlayingHandlers:v11];
    }

    [(AXServer *)self _connectIfNecessary];
    [(AXServer *)self _connectServerIfNecessary];
    v12 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [v12 UUIDString];

    v13 = [(AXSpringBoardServer *)self mediaPlayingHandlers];
    v14 = _Block_copy(v7);

    [v13 setObject:v14 forKey:v8];
    v15 = &stru_1EFE6D570;
    if (v6)
    {
      v15 = v6;
    }

    v21[0] = @"bundleId";
    v21[1] = @"uuidString";
    v22[0] = v15;
    v22[1] = v8;
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

- (void)pauseMediaForApp:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v6 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v5 serverInstance:v6 pauseMedia:1 forBundleId:v4];
  }

  else
  {
    if (v4)
    {
      v8 = @"bundleId";
      v9[0] = v4;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    }

    else
    {
      v5 = 0;
    }

    v7 = [[AXIPCMessage alloc] initWithKey:4053 payload:v5];
    [(AXServer *)self sendSimpleMessage:v7];
  }
}

- (void)resumeMediaForApp:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v6 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v5 serverInstance:v6 pauseMedia:0 forBundleId:v4];
  }

  else
  {
    if (v4)
    {
      v8 = @"bundleId";
      v9[0] = v4;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    }

    else
    {
      v5 = 0;
    }

    v7 = [[AXIPCMessage alloc] initWithKey:4054 payload:v5];
    [(AXServer *)self sendSimpleMessage:v7];
  }
}

- (BOOL)hasActiveCall
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 hasActiveCallWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4027 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)hasActiveEndpointCall
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 hasActiveEndpointCallWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4081 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)hasActiveOrPendingCall
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 hasActiveOrPendingCallWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4051 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)hasActiveOrPendingCallOrFaceTime
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 hasActiveOrPendingCallOrFaceTimeWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4057 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)isMakingEmergencyCall
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v3 isMakingEmergencyCallWithServerInstance:v4];

    v5 = 0;
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4005 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)isNotificationCenterVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isNotificationCenterVisibleWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4033 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)isScreenshotWindowVisible
{
  v3 = [(AXSpringBoardServer *)self _shouldDispatchLocally];
  if (v3)
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v6 = [v4 isScreenshotWindowVisibleWithServerInstance:v5];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)isNotificationVisible
{
  v3 = [(AXSpringBoardServer *)self _shouldDispatchLocally];
  if (v3)
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v6 = [v4 isNotificationVisibleWithServerInstance:v5];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)isShowingLongLookNotification
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isLongLookNotificationVisibleWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4111 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)isBannerVisible
{
  v3 = [(AXSpringBoardServer *)self _shouldDispatchLocally];
  if (v3)
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v6 = [v4 isBannerVisibleWithServerInstance:v5];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)isRemoteAlertVisible
{
  v3 = [(AXSpringBoardServer *)self _shouldDispatchLocally];
  if (v3)
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v6 = [v4 isRemoteTransientOverlayVisibleWithServerInstance:v5];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (void)toggleNotificationCenter
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v4 toggleNotificationCenterWithServerInstance:v3];
  }

  else
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4034 payload:0];
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
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isControlCenterVisibleWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4031 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)showNotificationCenter:(BOOL)a3
{
  v3 = a3;
  v14[1] = *MEMORY[0x1E69E9840];
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v6 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v7 = [v5 serverInstance:v6 showNotificationCenter:v3];
  }

  else
  {
    v8 = [AXIPCMessage alloc];
    v13 = @"show";
    v9 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v14[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = [(AXIPCMessage *)v8 initWithKey:4050 payload:v10];
    v7 = [(AXServer *)self sendSimpleMessageWithResult:v11];
  }

  return v7;
}

- (BOOL)showControlCenter:(BOOL)a3
{
  v3 = a3;
  v13[1] = *MEMORY[0x1E69E9840];
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v6 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v7 = [(AXIPCMessage *)v5 serverInstance:v6 showControlCenter:v3];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v8 = [AXIPCMessage alloc];
    v12 = @"show";
    v9 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v13[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v5 = [(AXIPCMessage *)v8 initWithKey:4032 payload:v10];

    v7 = [(AXServer *)self sendSimpleMessageWithResult:v5];
  }

  return v7;
}

- (void)armApplePay
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v4 armApplePayWithServerInstance:v3];
  }

  else
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4078 payload:0];
    [(AXServer *)self sendSimpleMessageWithResult:?];
  }
}

- (void)toggleDock
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v5 toggleDockWithServerInstance:v3];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v5 = [[AXIPCMessage alloc] initWithKey:4077 payload:0];
    v4 = [(AXServer *)self sendMessage:?];
  }
}

- (BOOL)isStageManagerSwitcherVisible
{
  v3 = [(AXSpringBoardServer *)self _shouldDispatchLocally];
  if (v3)
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v6 = [v4 isStageManagerSwitcherVisibleWithServerInstance:v5];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)isDockVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isDockVisibleWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4076 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)isStatusBarNativeFocusableIncludingNonDismissableElements:(BOOL)a3
{
  v3 = a3;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v6 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v7 = [v5 isStatusBarNativeFocusableWithServerInstance:v6 includingNonDismissableElements:v3];

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
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isShowingNonSystemAppWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4090 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)isShowingHomescreen
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isShowingHomescreenWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4079 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)isContinuitySessionActive
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isContinuitySessionActiveWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4131 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (void)launchApplication:(id)a3
{
  v5 = a3;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    [v4 launchApplication:v5];
  }
}

- (void)launchPinnedApplication:(id)a3 onLeadingSide:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v6 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    [v6 launchPinnedApplication:v7 onLeadingSide:v4];
  }
}

- (void)launchFloatingApplication:(id)a3
{
  v5 = a3;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    [v4 launchFloatingApplication:v5];
  }
}

- (BOOL)canLaunchAsPinnedApplicationForIconView:(id)a3
{
  v4 = a3;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v6 = [v5 canLaunchAsPinnedApplicationForIconView:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)canLaunchAsFloatingApplicationForIconView:(id)a3
{
  v4 = a3;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v6 = [v5 canLaunchAsFloatingApplicationForIconView:v4];
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
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isAppSwitcherVisibleWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4011 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)isShelfSwitcherVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isShelfSwitcherVisibleWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4007 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (void)openAppSwitcher
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(AXSpringBoardServer *)self _shouldDispatchLocally];
  v4 = AXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_18B15E000, v4, OS_LOG_TYPE_DEFAULT, "Requesting SB openAppSwitcher. dispatchLocal=%@", &v8, 0xCu);
  }

  if (v3)
  {
    v6 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v7 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v6 openAppSwitcherWithServerInstance:v7];
  }

  else
  {
    v6 = [[AXIPCMessage alloc] initWithKey:4010 payload:0];
    [(AXServer *)self sendSimpleMessage:v6];
  }
}

- (void)dismissAppSwitcher
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v4 dismissAppSwitcherWithServerInstance:v3];
  }

  else
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4047 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)dismissShelfSwitcher
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v4 dismissShelfSwitcherWithServerInstance:v3];
  }

  else
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4004 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)simulateEdgePressHaptics
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v4 simulateEdgePressHaptics:v3];
  }

  else
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4067 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)toggleAppLibrary
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v4 toggleAppLibraryWithServerInstance:v3];
  }

  else
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4112 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)toggleQuickNote
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v4 toggleQuickNoteWithServerInstance:v3];
  }

  else
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4113 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)toggleSpotlight
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v4 toggleSpotlightWithServerInstance:v3];
  }

  else
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4065 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)revealSpotlight
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v4 revealSpotlightWithServerInstance:v3];
  }

  else
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4066 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (BOOL)isDarkModeActive
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isDarkModeActiveWithServiceInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4099 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)toggleDarkMode
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 toggleDarkModeWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4100 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)isGuidedAccessActive
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isGuidedAccessActiveWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4038 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)isSpotlightVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isSpotlightVisibleWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4098 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)isPIPWindowVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isPIPWindowVisibleWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4102 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)dismissSiri
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 dismissSiriWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4049 payload:0];
    [(AXServer *)self sendSimpleMessage:v3];
    v5 = 1;
  }

  return v5;
}

- (BOOL)isSiriVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isSiriVisibleWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4037 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)isPasscodeLockVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isPasscodeLockVisibleWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4082 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)isLockScreenVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isLockScreenVisibleWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4104 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (void)openVoiceControl
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v4 openVoiceControlWithServerInstance:v3];
  }

  else
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4029 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (BOOL)isTypeToSiriVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isTypeToSiriVisibleWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4133 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (void)openTypeToSiri
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v4 openTypeToSiriWithServerInstance:v3];
  }

  else
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4132 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (BOOL)isVoiceControlRunning
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isVoiceControlRunningWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4013 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)isSpeakThisTemporarilyDisabled
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isSpeakThisTemporarilyDisabledWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4042 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (id)allowedMedusaGestures
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 allowedMedusaGesturesWithServerInstance:v4];

LABEL_5:
    goto LABEL_7;
  }

  if (AXDeviceSupportsSideApp())
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4063 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithObjectResult:v3];
    goto LABEL_5;
  }

  v5 = MEMORY[0x1E695E0F0];
LABEL_7:

  return v5;
}

- (void)setMenuBarVisible:(BOOL)a3
{
  v3 = a3;
  v12[1] = *MEMORY[0x1E69E9840];
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v10 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v10 serverInstance:v5 setMenuBarVisible:v3];
  }

  else
  {
    v6 = [AXIPCMessage alloc];
    v11 = @"result";
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v3];
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
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isMenuBarVisibleWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4140 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)isMenuBarModal
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isMenuBarModalWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4142 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (BOOL)isChamoisOrFlexibleWindowingEnabled
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isChamoisOrFlexibleWindowingEnabledWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4141 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (void)toggleBackgroundSounds
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v4 toggleBackgroundSoundsWithServerInstance:v3];
  }

  else
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4110 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (BOOL)performMedusaGesture:(unint64_t)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v6 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v7 = [v5 serverInstance:v6 performMedusaGesture:a3];
  }

  else
  {
    v8 = [AXIPCMessage alloc];
    v13 = @"gesture";
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
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
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 medusaAppsWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4080 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithObjectResult:v3];
  }

  return v5;
}

- (void)setDockIconActivationMode:(unint64_t)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v10 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v10 serverInstance:v5 setDockIconActivationMode:a3];
  }

  else
  {
    v6 = [AXIPCMessage alloc];
    v11 = @"mode";
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
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
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 canSetDockIconActivationModeForServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4092 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (void)systemAppInfoWithQuery:(unint64_t)a3 completion:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v7 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v8 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v9 = [v7 serverInstance:v8 springBoardSystemInfoQuery:a3];

    v18[1] = MEMORY[0x1E69E9820];
    v18[2] = 3221225472;
    v18[3] = __57__AXSpringBoardServer_systemAppInfoWithQuery_completion___block_invoke;
    v18[4] = &unk_1E71EA390;
    v10 = &v20;
    v19 = v9;
    v20 = v6;
    v11 = v6;
    v12 = v9;
    AXPerformBlockAsynchronouslyOnMainThread();
  }

  else
  {
    v13 = [AXIPCMessage alloc];
    v21 = @"query";
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v22[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v12 = [(AXIPCMessage *)v13 initWithKey:4045 payload:v15];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __57__AXSpringBoardServer_systemAppInfoWithQuery_completion___block_invoke_2;
    v17[3] = &unk_1E71EA3B8;
    v10 = v18;
    v18[0] = v6;
    v16 = v6;
    [(AXServer *)self sendAsynchronousMessage:v12 replyOnQueue:MEMORY[0x1E69E96A0] objectResultHandler:v17];
  }
}

- (BOOL)isSystemAppShowingAnAlert
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [v3 isSystemAppShowingAnAlertWithServerInstance:v4];
  }

  else
  {
    v6 = [[AXIPCMessage alloc] initWithKey:4501 payload:0];
    v3 = [(AXServer *)self sendMessage:v6];

    v4 = [v3 payload];
    v7 = [v4 objectForKey:@"result"];
    v5 = [v7 BOOLValue];
  }

  return v5;
}

- (void)setBluetoothPowerEnabled:(BOOL)a3
{
  v3 = a3;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:4128 payload:v7];
  v9 = [(AXServer *)self sendMessage:v8];
}

- (BOOL)bluetoothPowerEnabled
{
  v3 = [[AXIPCMessage alloc] initWithKey:4129 payload:0];
  v4 = [(AXServer *)self sendMessage:v3];

  v5 = [v4 payload];
  v6 = [v5 objectForKey:@"result"];
  v7 = [v6 BOOLValue];

  return v7;
}

- (void)setVoiceOverEnabled:(BOOL)a3
{
  v3 = a3;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:4126 payload:v7];
  v9 = [(AXServer *)self sendMessage:v8];
}

- (BOOL)voiceOverEnabled
{
  v3 = [[AXIPCMessage alloc] initWithKey:4127 payload:0];
  v4 = [(AXServer *)self sendMessage:v3];

  v5 = [v4 payload];
  v6 = [v5 objectForKey:@"result"];
  v7 = [v6 BOOLValue];

  return v7;
}

- (void)setZoomEnabled:(BOOL)a3
{
  v3 = a3;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:4124 payload:v7];
  v9 = [(AXServer *)self sendMessage:v8];
}

- (BOOL)zoomEnabled
{
  v3 = [[AXIPCMessage alloc] initWithKey:4125 payload:0];
  v4 = [(AXServer *)self sendMessage:v3];

  v5 = [v4 payload];
  v6 = [v5 objectForKey:@"result"];
  v7 = [v6 BOOLValue];

  return v7;
}

- (id)focusedAppPID
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v3 focusedAppPIDWithServerInstance:v4];
  }

  else
  {
    v5 = [[AXIPCMessage alloc] initWithKey:4503 payload:0];
    v3 = [(AXServer *)self sendMessage:v5];

    v4 = [v3 payload];
    [v4 objectForKey:@"result"];
  }
  v6 = ;

  return v6;
}

- (void)purpleBuddyPID:(id)a3
{
  v4 = a3;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__AXSpringBoardServer_purpleBuddyPID___block_invoke;
    block[3] = &unk_1E71EA228;
    block[4] = self;
    v12 = v4;
    v5 = v4;
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
    v10 = v4;
    v8 = v4;
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
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v3 runningAppPIDsWithServerInstance:v4];
  }

  else
  {
    v5 = [[AXIPCMessage alloc] initWithKey:4504 payload:0];
    v3 = [(AXServer *)self sendMessage:v5];

    v4 = [v3 payload];
    [v4 objectForKey:@"result"];
  }
  v6 = ;

  return v6;
}

- (void)_isSystemAppFrontmostExcludingSiri:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v7 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v8 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v7 isSystemAppFrontmostExcludingSiri:v4 withServerInstance:v8];

    v13 = v6;
    AXPerformBlockAsynchronouslyOnMainThread();
    v9 = v13;
  }

  else
  {
    v10 = [AXIPCMessage alloc];
    v14 = @"excludeSiri";
    v9 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    v15[0] = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v12 = [(AXIPCMessage *)v10 initWithKey:4500 payload:v11];
    [(AXServer *)self sendAsynchronousMessage:v12 replyOnQueue:MEMORY[0x1E69E96A0] BOOLResultHandler:v6];
  }
}

- (BOOL)_isSystemAppFrontmostExcludingSiri:(BOOL)a3
{
  v3 = a3;
  v14[1] = *MEMORY[0x1E69E9840];
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v6 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v7 = [v5 isSystemAppFrontmostExcludingSiri:v3 withServerInstance:v6];
  }

  else
  {
    v8 = [AXIPCMessage alloc];
    v13 = @"excludeSiri";
    v9 = [MEMORY[0x1E696AD98] numberWithBool:v3];
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
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isPurpleBuddyAppFrontmostWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4506 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
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
    v6 = [(AXSpringBoardServer *)self isPurpleBuddyAppFrontmost];
    v5 = !v6;
    dismissBuddyIfNecessary_hasSeenNonBuddyFrontMostApp = !v6;
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

  v10 = [v9 uiElement];
  v11 = [v10 performAXAction:4019];

  return v11;
}

- (BOOL)isSettingsAppFrontmost
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 isSettingsAppFrontmostWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4505 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  return v5;
}

- (id)focusedApps
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [v3 focusedAppsWithServerInstance:v4];
LABEL_5:
    v10 = v5;

    goto LABEL_6;
  }

  v6 = [[AXIPCMessage alloc] initWithKey:4509 payload:0];
  v3 = [(AXServer *)self sendSimpleMessageWithObjectResult:v6];

  if (v3)
  {
    v7 = MEMORY[0x1E696ACD0];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v4 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v5 = [v7 unarchivedObjectOfClasses:v4 fromData:v3 error:0];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (id)displayIdentifierForSceneIdentifier:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v6 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v7 = [v5 displayIdentifierForSceneIdentifier:v4 serverInstance:v6];
  }

  else
  {
    v8 = [AXIPCMessage alloc];
    v17 = @"sceneIdentifier";
    v18[0] = v4;
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
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [v3 focusedOccludedAppScenesWithServerInstance:v4];
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

- (void)acquireAssertionWithType:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v8 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v8 acquireAssertionWithType:v6 identifier:v7 clientPort:0];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AXSpringBoardServer;
    [(AXServer *)&v9 acquireAssertionWithType:v6 identifier:v7];
  }
}

- (void)relinquishAssertionWithType:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v8 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v8 relinquishAssertionWithType:v6 identifier:v7 clientPort:0];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AXSpringBoardServer;
    [(AXServer *)&v9 relinquishAssertionWithType:v6 identifier:v7];
  }
}

- (BOOL)loadGAXBundleForUnmanagedASAM
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v3 forceLoadGAXBundleWithServerInstance:v4];

    return 1;
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v6 = [[AXIPCMessage alloc] initWithKey:4069 payload:0];
    v7 = [(AXServer *)self client];
    v10 = 0;
    [v7 sendSimpleMessage:v6 withError:&v10];
    v8 = v10;

    v5 = v8 == 0;
  }

  return v5;
}

- (void)reactivateInCallService
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v4 reactivateInCallServiceWithServerInstance:v3];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v4 = [[AXIPCMessage alloc] initWithKey:4084 payload:0];
    v3 = [(AXServer *)self client];
    [v3 sendSimpleMessage:v4];
  }
}

- (void)launchMagnifierApp
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v4 launchMagnifierAppWithServerInstance:v3];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v4 = [[AXIPCMessage alloc] initWithKey:4070 payload:0];
    v3 = [(AXServer *)self client];
    [v3 sendSimpleMessage:v4];
  }
}

- (void)isMagnifierVisibleWithCompletion:(id)a3
{
  v4 = a3;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v6 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v7 = [v5 isMagnifierVisibleWithServerInstance:v6];

    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __56__AXSpringBoardServer_isMagnifierVisibleWithCompletion___block_invoke;
    v15 = &unk_1E71EA3E0;
    v16 = v4;
    v17 = v7;
    v8 = v4;
    AXPerformBlockOnMainThread();
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v8 = [[AXIPCMessage alloc] initWithKey:4071 payload:0];
    v9 = [(AXServer *)self client];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__AXSpringBoardServer_isMagnifierVisibleWithCompletion___block_invoke_2;
    v10[3] = &unk_1E71EA340;
    v11 = v4;
    v4 = v4;
    [v9 sendAsyncMessage:v8 withReplyHandler:v10];
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

- (void)launchOnboardingViewService:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8 = @"type";
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v6 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v7 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v6 launchOnboardingViewServiceWithServerInstance:v7 data:v5];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v6 = [[AXIPCMessage alloc] initWithKey:4122 payload:v5];
    v7 = [(AXServer *)self client];
    [v7 sendSimpleMessage:v6];
  }
}

- (void)launchVoiceOverQuickSettingsViewService:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  v5 = v4;
  if (v4)
  {
    v9 = @"data";
    v10[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
    {
      v7 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
      v8 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
      [(AXIPCMessage *)v7 launchVoiceOverQuickSettingsViewServiceWithServerInstance:v8 data:v6];
    }

    else
    {
      [(AXServer *)self _connectIfNecessary];
      v7 = [[AXIPCMessage alloc] initWithKey:4094 payload:v6];
      v8 = [(AXServer *)self client];
      [v8 sendSimpleMessage:v7];
    }
  }
}

- (void)launchVoiceOverImageExplorerViewServiceForResult:(id)a3 withData:(id)a4
{
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3)
  {
    v16 = 0;
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v16];
    v8 = v16;
    v15 = 0;
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v15];
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
        v13 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
        v14 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
        [(AXIPCMessage *)v13 launchVoiceOverImageExplorerViewServiceWithServerInstance:v14 forData:v12];
      }

      else
      {
        [(AXServer *)self _connectIfNecessary];
        v13 = [[AXIPCMessage alloc] initWithKey:4105 payload:v12];
        v14 = [(AXServer *)self client];
        [v14 sendSimpleMessage:v13];
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
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 visibleTripleClickItemsWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4108 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithObjectResult:v3];
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

- (BOOL)isNonExclusiveSystemUIFocusableIncludingPIPWindow:(BOOL)a3 includingNonDismissableElements:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(AXSpringBoardServer *)self isNotificationVisible]|| [(AXSpringBoardServer *)self isDockVisible]|| [(AXSpringBoardServer *)self isScreenshotWindowVisible]|| [(AXSpringBoardServer *)self isSiriVisible]|| v5 && [(AXSpringBoardServer *)self isPIPWindowVisible]|| [(AXSpringBoardServer *)self isBannerVisible]|| [(AXSpringBoardServer *)self isStageManagerSwitcherVisible]|| [(AXSpringBoardServer *)self isChamoisOrFlexibleWindowingEnabled])
  {
    return 1;
  }

  if (AXDoesRequestingClientDeserveAutomation())
  {
    return 0;
  }

  return [(AXSpringBoardServer *)self isStatusBarNativeFocusableIncludingNonDismissableElements:v4];
}

- (void)setShouldFocusNonExclusiveSystemUI:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  if (![(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v5 = FKALogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [AXSpringBoardServer setShouldFocusNonExclusiveSystemUI:];
    }
  }

  if (self->_shouldFocusNonExclusiveSystemUI != v3)
  {
    self->_shouldFocusNonExclusiveSystemUI = v3;
    v6 = FKALogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9[0] = 67109120;
      v9[1] = v3;
      _os_log_impl(&dword_18B15E000, v6, OS_LOG_TYPE_INFO, "Should focus non exclusive system UI: %i", v9, 8u);
    }

    v7 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v8 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v7 updateFrontMostApplicationWithServerInstance:v8];
  }
}

- (void)freezeClarityUILoadingScreenWithCompletion:(id)a3
{
  v4 = a3;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v6 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [v5 freezeClarityUILoadingScreenWithServerInstance:v6];

    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __66__AXSpringBoardServer_freezeClarityUILoadingScreenWithCompletion___block_invoke;
    v14 = &unk_1E71EA2F0;
    v15 = v4;
    v7 = v4;
    AXPerformBlockOnMainThread();
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v7 = [[AXIPCMessage alloc] initWithKey:4116 payload:0];
    v8 = [(AXServer *)self client];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__AXSpringBoardServer_freezeClarityUILoadingScreenWithCompletion___block_invoke_2;
    v9[3] = &unk_1E71EA340;
    v10 = v4;
    v4 = v4;
    [v8 sendAsyncMessage:v7 withReplyHandler:v9];
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
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v4 presentNearbyDeviceControlPickerWithServerInstance:v3];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v4 = [[AXIPCMessage alloc] initWithKey:4117 payload:0];
    v3 = [(AXServer *)self client];
    [v3 sendAsyncMessage:v4 withReplyHandler:&__block_literal_global_590];
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
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v4 diminishJindoWithServerInstance:v3];
  }

  else
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4118 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (id)jindoAppBundleIndentifiers
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [(AXIPCMessage *)v3 jindoAppBundleIndentifiersWithServerInstance:v4];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4121 payload:0];
    v5 = [(AXServer *)self sendSimpleMessageWithObjectResult:v3];
  }

  return v5;
}

- (void)toggleDetectionMode
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v4 toggleDetectionModeWithServerInstance:v3];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v4 = [[AXIPCMessage alloc] initWithKey:4119 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)launchAccessibilityReader
{
  v3 = +[AXSpringBoardServer server];
  v4 = [v3 isControlCenterVisible];

  if (v4)
  {
    v5 = +[AXSpringBoardServer server];
    [v5 showControlCenter:0];
  }

  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v7 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v6 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v7 launchAccessibilityReaderWithServerInstance:v6];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v7 = [[AXIPCMessage alloc] initWithKey:4138 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (BOOL)isMagnifierVisible
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [v3 isMagnifierVisibleWithServerInstance:v4];

    return v5;
  }

  else
  {
    _AXAssert();
    return 0;
  }
}

- (id)applicationWithIdentifier:(id)a3
{
  v4 = a3;
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v6 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v7 = [v5 serverInstance:v6 appWithIdentifier:v4];
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
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [v3 focusedAppProcessWithServerInstance:v4];
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
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v5 = [v3 runningAppProcessesWithServerInstance:v4];
  }

  else
  {
    _AXAssert();
    v5 = 0;
  }

  return v5;
}

- (id)appNameFromPid:(int)a3
{
  v3 = *&a3;
  v14[1] = *MEMORY[0x1E69E9840];
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v5 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v6 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    v7 = [v5 appNameFromPid:v3 withServerInstance:v6];
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
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v4 toggleLiveTranscriptionWithServerInstance:v3];
  }

  else
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4115 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)toggleConversationBoost
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v4 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstance];
    [(AXIPCMessage *)v4 toggleConversationBoostWithServerInstance:v3];
  }

  else
  {
    v4 = [[AXIPCMessage alloc] initWithKey:4130 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (int)nativeFocusedApplication
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    v4 = [v3 nativeFocusedApplication];
  }

  else
  {
    objc_opt_class();
    v5 = [[AXIPCMessage alloc] initWithKey:4123 payload:0];
    v6 = [(AXServer *)self sendSimpleMessageWithObjectResult:v5];
    v3 = __UIAccessibilityCastAsClass();

    v4 = [v3 intValue];
  }

  v7 = v4;

  return v7;
}

- (void)installGuestPassPINGesture
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    [(AXIPCMessage *)v3 installGuestPassPINGesture];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4135 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)installGuestPassAcceptDialogGesture
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    [(AXIPCMessage *)v3 installGuestPassAcceptDialogGesture];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4136 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (void)removeGuestPassAcceptDialogGesture
{
  if ([(AXSpringBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXSpringBoardServer *)self _axSpringBoardServerInstanceDelegate];
    [(AXIPCMessage *)v3 removeGuestPassAcceptDialogGesture];
  }

  else
  {
    v3 = [[AXIPCMessage alloc] initWithKey:4137 payload:0];
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