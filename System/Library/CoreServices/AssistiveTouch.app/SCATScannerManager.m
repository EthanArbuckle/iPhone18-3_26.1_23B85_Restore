@interface SCATScannerManager
+ (id)sharedManager;
+ (void)updateElementCacheScheme;
- (BOOL)_isPostScanningMenu:(id)a3;
- (BOOL)_isScannerControlledByDriver:(id)a3;
- (BOOL)_shouldIgnoreAllScannerControlMessages;
- (BOOL)_userHasDisabledUSBRM;
- (BOOL)actionHandler:(id)a3 shouldActImmediatelyOnActionCount:(unint64_t)a4;
- (BOOL)activateElement:(id)a3;
- (BOOL)areSoundEffectsEnabled;
- (BOOL)canAdvertise;
- (BOOL)canReturnControlToForwarderDevice:(id)a3;
- (BOOL)canSearchForControllableDevicesWithMenu:(id)a3;
- (BOOL)candidateBarManager:(id)a3 hasValidTypingCandidates:(id)a4;
- (BOOL)cursorManagerShouldHideMenuCursor:(id)a3;
- (BOOL)highlightFocusContext;
- (BOOL)isActive;
- (BOOL)isAutoscanEnabled;
- (BOOL)isControllingOtherDevice;
- (BOOL)isDragActive;
- (BOOL)isExternalDisplayConnected;
- (BOOL)isEyeTrackingEnabled;
- (BOOL)isGroupingEnabled;
- (BOOL)isHandlingInterDeviceCommunication;
- (BOOL)isInactive;
- (BOOL)isLandscape;
- (BOOL)isOnDeviceEyeTrackingSupported;
- (BOOL)isPaused;
- (BOOL)isSpeechEnabled;
- (BOOL)isSwitchWithSource:(id)a3;
- (BOOL)isSystemSleeping;
- (BOOL)isUIContextHidden;
- (BOOL)isUsingPointMode;
- (BOOL)pointPicker:(id)a3 pauseForNumberOfCycles:(unint64_t)a4;
- (BOOL)shouldBypassShowingMenuForElement:(id)a3;
- (BOOL)shouldUseCameraPointPicker;
- (BOOL)waitingForSecureIntent;
- (CGPoint)_startingPointForGesturesForPointPicker:(id)a3;
- (CGPoint)_tadmorNewPickedPointWithDelta:(CGPoint)a3;
- (CGRect)menu:(id)a3 rectToClearForFingersWithGestureSheet:(BOOL)a4;
- (NSArray)recentSpeechOutputStrings;
- (NSString)description;
- (SCATElement)currentElement;
- (SCATFocusContext)currentFocusContext;
- (SCATScannerManager)init;
- (SCATScannerManagerDelegate)delegate;
- (id)_driverForScannerState;
- (id)_elementManagerForScannerState;
- (id)_focusContextAtPoint:(CGPoint)a3;
- (id)_primaryElementManagerForScannerState;
- (id)_typingCandidates;
- (id)axManager;
- (id)contentViewForGestureProvider:(id)a3;
- (id)exitActionElementForFingersInMenu:(id)a3;
- (id)focusContextForActionHandler:(id)a3;
- (id)gesturesSheetForMenu:(id)a3;
- (id)pointerPointPicker;
- (id)scatBackCursorUIContext;
- (id)scatBackCursorUIContextForDisplayID:(unsigned int)a3;
- (id)scatFrontCursorUIContext;
- (id)scatFrontCursorUIContextForDisplayID:(unsigned int)a3;
- (id)scatUIContext;
- (id)scatUIContextForDisplayID:(unsigned int)a3;
- (id)userInterfaceClientForInputController:(id)a3;
- (int)_validatedSelectBehaviorForCurrentSelectBehavior:(int)a3 replacementElement:(id)a4;
- (int64_t)_dwellSwitchAssignedAction;
- (int64_t)scanningMode;
- (unsigned)currentDisplayID;
- (void)_applyLaunchRecipeUUID;
- (void)_beginOrContinueScanningWithFocusContext:(id)a3 shouldBegin:(BOOL)a4 foundNewElements:(BOOL)a5;
- (void)_deactivateAudioSession;
- (void)_disableUserInterfaceClientForPotentialReceiver;
- (void)_driver:(id)a3 outputAudioForContext:(id)a4;
- (void)_exitRecipeOnTimeout;
- (void)_handleActiveHoldAndDragAction;
- (void)_handleAppSwitcherAction;
- (void)_handleAppleWatchRemoteScreen;
- (void)_handleCameraButton;
- (void)_handleCameraButtonDoubleLightPress;
- (void)_handleCameraButtonLightPress;
- (void)_handleControlCenterAction;
- (void)_handleDictationAction;
- (void)_handleEscapeAction;
- (void)_handleForceTouchAction;
- (void)_handleHomeAction;
- (void)_handleNotificationCenterAction;
- (void)_handleScrollAction:(int64_t)a3;
- (void)_handleSiriAction;
- (void)_handleTripleClickAction;
- (void)_handleVisualIntelligence;
- (void)_handleVolumeDownAction;
- (void)_handleVolumeUpAction;
- (void)_notifyObserversInputController:(id)a3 didReceivePoint:(CGPoint)a4;
- (void)_notifyObserversScannerDidBecomeActive;
- (void)_notifyObserversScannerDidBecomeInactive;
- (void)_notifyObserversScannerDidFocusOnContext:(id)a3 oldContext:(id)a4;
- (void)_notifyObserversScannerDidPause;
- (void)_notifyObserversScannerWillFocusOnContext:(id)a3;
- (void)_notifyObserversScannerWillUnfocusFromContext:(id)a3;
- (void)_overrideScanningModeAtStartupIfNecessary;
- (void)_removeInterdeviceSwitches;
- (void)_resetRecipeTimeoutIfApplicable;
- (void)_scanningModePreferenceDidChange;
- (void)_setCurrentRecipe:(id)a3 shouldShowAlert:(BOOL)a4;
- (void)_setUSBRMPreferenceDisabled;
- (void)_showSimpleAlertForProfile:(id)a3;
- (void)_showSimpleBannerWithText:(id)a3;
- (void)_updateActiveElementManager:(id)a3;
- (void)_updateAudioSessionState;
- (void)_updateCameraPointPickerSwitchesCache;
- (void)_updateElementVisuals;
- (void)_updateMenuAfterElementFetchFoundNewElements:(BOOL)a3;
- (void)_updateScanningStyle;
- (void)_waitForApplication:(id)a3;
- (void)accessibilityManager:(id)a3 applicationWasActivated:(id)a4;
- (void)accessibilityManager:(id)a3 didFetchElementsForEvent:(int64_t)a4 foundNewElements:(BOOL)a5;
- (void)accessibilityManager:(id)a3 didReceiveEvent:(int64_t)a4 data:(id)a5;
- (void)accessibilityManager:(id)a3 nativeFocusElementDidChange:(id)a4;
- (void)accessibilityManager:(id)a3 screenWillChange:(__CFData *)a4;
- (void)accessibilityManager:(id)a3 updateElementVisuals:(id)a4;
- (void)actionHandlerDidFireAction:(id)a3;
- (void)actionHandlerForUI:(id)a3 willPerformDelayedActionOnContext:(id)a4 withCount:(unint64_t)a5;
- (void)actionHandlerForUIDidCancelPendingAction:(id)a3;
- (void)actionHandlerForUIWillFireAction:(id)a3;
- (void)addObserver:(id)a3;
- (void)addPointerPointPickerForMovementNotifications:(id)a3;
- (void)addReasonToDisableScanning:(id)a3;
- (void)alternateKeysManager:(id)a3 didSelectAlternateKey:(id)a4;
- (void)calibrateEyeTracking;
- (void)cancelDrag;
- (void)clearRecentSpeech;
- (void)dealloc;
- (void)didBecomeIdle;
- (void)didBeginLongPressForInputController:(id)a3;
- (void)didChooseCreateCustomGestureFromGestureProvider:(id)a3;
- (void)didConnectAsForwarderToDeviceWithName:(id)a3;
- (void)didConnectAsReceiverWithSettings:(id)a3;
- (void)didDisconnectAsForwarderFromDeviceWithName:(id)a3;
- (void)didDisconnectAsReceiver;
- (void)didEndLongPressForInputController:(id)a3;
- (void)didPressScreenChangingButtonInMenu:(id)a3;
- (void)driver:(id)a3 didFocusOnContext:(id)a4 oldContext:(id)a5;
- (void)driver:(id)a3 indicateDwellScanningWillAbort:(BOOL)a4;
- (void)driverDidBecomeActive:(id)a3 didChange:(BOOL)a4;
- (void)driverDidBecomeInactive:(id)a3;
- (void)driverDidPause:(id)a3;
- (void)endScanning;
- (void)gestureProvider:(id)a3 shouldResetScanningFromElement:(id)a4;
- (void)handleAlertDidAppear:(id)a3;
- (void)handleAnnouncement:(id)a3;
- (void)handleScreenChange:(id)a3;
- (void)handleStopSpeaking:(id)a3;
- (void)handleUSBMFiDeviceConnected;
- (void)hideUIContext:(BOOL)a3;
- (void)highlightAsPotentialReceiverForDeviceWithName:(id)a3;
- (void)inputController:(id)a3 didReceiveAction:(id)a4;
- (void)inputController:(id)a3 didReceiveItemSelectionIndex:(int64_t)a4;
- (void)inputController:(id)a3 didReceiveMovementDelta:(CGPoint)a4;
- (void)inputController:(id)a3 didReceivePoint:(CGPoint)a4;
- (void)inputController:(id)a3 didReceiveRecipeActionForMappingAtIndex:(unint64_t)a4 isLongPressAction:(BOOL)a5;
- (void)inputController:(id)a3 didReceiveRecipeHoldAtPoint:(CGPoint)a4 isDown:(BOOL)a5;
- (void)inputController:(id)a3 didUpdateSignalQuality:(int64_t)a4;
- (void)inputController:(id)a3 shouldHideAlerts:(BOOL)a4;
- (void)inputController:(id)a3 showAlert:(id)a4;
- (void)inputControllerPointPickerInterrupted:(id)a3;
- (void)loadScanner;
- (void)menu:(id)a3 activateProfile:(id)a4;
- (void)menu:(id)a3 playSoundEffect:(int)a4;
- (void)menu:(id)a3 showAlternateKeysForKey:(id)a4;
- (void)menu:(id)a3 showScrollViewPickerForScrollViews:(id)a4 elementsToScroll:(id)a5 scrollAction:(int)a6;
- (void)menu:(id)a3 showTypingCandidates:(id)a4;
- (void)menu:(id)a3 speakAnnouncement:(id)a4 completionBlock:(id)a5;
- (void)menuDidDisappear:(id)a3;
- (void)menuDidFinishTransition:(id)a3;
- (void)menuWillBeginTransition:(id)a3;
- (void)moveDragSessionToFixedSpaceScreenPoint:(CGPoint)a3;
- (void)overrideMotionTrackerLookAtPoint:(CGPoint)a3;
- (void)pauseScanningWithScreenLockDisabled:(BOOL)a3;
- (void)performDrop;
- (void)performSysdiagnoseForInputController:(id)a3;
- (void)pointPicker:(id)a3 didFinishDwellingOnPoint:(CGPoint)a4;
- (void)pointPicker:(id)a3 didPickPoint:(CGPoint)a4;
- (void)pointPicker:(id)a3 didSweepIntoFocusContext:(id)a4 isRefiningPoint:(BOOL)a5;
- (void)pointPicker:(id)a3 didSweepOutOfFocusContext:(id)a4 isRefiningPoint:(BOOL)a5;
- (void)presentPostScanningMenuForElementNavigationController:(id)a3;
- (void)removeObserver:(id)a3;
- (void)removePointerPointPickerForMovementNotifications:(id)a3;
- (void)removeReasonToDisableScanning:(id)a3;
- (void)resumeScanning;
- (void)returnControlToForwarderDevice:(id)a3;
- (void)searchForControllableDevicesWithMenu:(id)a3;
- (void)selectElement:(id)a3;
- (void)selectElementAtPoint:(CGPoint)a3;
- (void)setActiveElementManager:(id)a3 completion:(id)a4;
- (void)setActiveScannerDriver:(id)a3;
- (void)setHighlightFocusContext:(BOOL)a3;
- (void)setPointPicker:(id)a3;
- (void)shouldEndScanningGestureProvider:(id)a3;
- (void)shouldStartScanningGestureProvider:(id)a3;
- (void)showUIContext:(BOOL)a3;
- (void)switchCurrentDisplayContext;
- (void)unloadScanner;
- (void)useFocusContextOnResume:(id)a3;
- (void)waitForDragStartFromPid:(int)a3 completion:(id)a4;
@end

@implementation SCATScannerManager

+ (id)sharedManager
{
  if (qword_100218C60 != -1)
  {
    sub_10012B5D8();
  }

  v3 = qword_100218C58;

  return v3;
}

+ (void)updateElementCacheScheme
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 switchControlTapBehavior];

  if (v3 == 2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  [AXUIElement applyElementAttributeCacheScheme:v4];
}

- (SCATScannerManager)init
{
  v15.receiver = self;
  v15.super_class = SCATScannerManager;
  v2 = [(SCATScannerManager *)&v15 init];
  v3 = v2;
  if (v2)
  {
    [(SCATScannerManager *)v2 _performAccessibilityValidations];
    v4 = objc_alloc_init(AXSSInterDeviceCommunicator);
    interDeviceCommunicator = v3->_interDeviceCommunicator;
    v3->_interDeviceCommunicator = v4;

    [(AXSSInterDeviceCommunicator *)v3->_interDeviceCommunicator setConnectionListener:v3];
    v6 = +[AXPISystemActionHelper sharedInstance];
    [v6 warm];

    v7 = dispatch_queue_create("com.apple.accessibility.SC.MC", 0);
    managedConfigurationQueue = v3->_managedConfigurationQueue;
    v3->_managedConfigurationQueue = v7;

    v9 = [NSPointerArray pointerArrayWithOptions:5];
    pointerPointPickersToNotify = v3->__pointerPointPickersToNotify;
    v3->__pointerPointPickersToNotify = v9;

    v11 = +[HNDSecureIntentManager sharedInstance];
    v12 = objc_opt_new();
    scannerObservers = v3->_scannerObservers;
    v3->_scannerObservers = v12;
  }

  return v3;
}

- (void)dealloc
{
  [(SCATScannerManager *)self unloadScanner];
  [(AXSSInterDeviceCommunicator *)self->_interDeviceCommunicator setConnectionListener:0];
  v3.receiver = self;
  v3.super_class = SCATScannerManager;
  [(SCATScannerManager *)&v3 dealloc];
}

- (void)waitForDragStartFromPid:(int)a3 completion:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v7 = +[HNDHandManager sharedManager];
  v6 = [v7 dragManager];
  [v6 waitForDragStartFromPid:v4 completionHandler:v5];
}

- (BOOL)isDragActive
{
  v2 = +[HNDHandManager sharedManager];
  v3 = [v2 dragManager];
  v4 = [v3 isDragActive];

  return v4;
}

- (void)cancelDrag
{
  v3 = +[HNDHandManager sharedManager];
  v2 = [v3 dragManager];
  [v2 cancelDrag];
}

- (void)moveDragSessionToFixedSpaceScreenPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = +[HNDHandManager sharedManager];
  v5 = [v6 dragManager];
  [v5 moveToPoint:{x, y}];
}

- (void)performDrop
{
  v3 = +[HNDHandManager sharedManager];
  v2 = [v3 dragManager];
  [v2 drop];
}

- (BOOL)waitingForSecureIntent
{
  v2 = +[HNDSecureIntentManager sharedInstance];
  v3 = [v2 waitingForSecureIntent];

  return v3;
}

- (BOOL)_userHasDisabledUSBRM
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 userBoolValueForSetting:MCFeatureUSBRestrictedModeAllowed] == 2;

  return v3;
}

- (void)_setUSBRMPreferenceDisabled
{
  v2 = +[MCProfileConnection sharedConnection];
  [v2 setBoolValue:0 forSetting:MCFeatureUSBRestrictedModeAllowed];

  v3 = _AXSGetUSBRMDisablers() | 2;

  __AXSSetUSBRMDisablers(v3);
}

- (void)handleUSBMFiDeviceConnected
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 switchControlUserDidReadUSBRestrictedModeAlert];

  v5 = [(SCATScannerManager *)self _userHasDisabledUSBRM];
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 switchControlShouldDisallowUSBRestrictedMode];

  if (((v4 | v5) & 1) == 0 || v7)
  {
    v8 = +[AXSettings sharedInstance];
    [v8 setSwitchControlShouldDisallowUSBRestrictedMode:0];

    v14 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = -5;
    v21 = 7;
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000EB6C0;
    v18 = &unk_1001D7718;
    v19 = &v22;
    v20 = &v14;
    if (ACMKernelControl())
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v23 + 6) == 0;
    }

    _Block_object_dispose(&v22, 8);
    if ((v14 & 0x10) != 0)
    {
      v10 = 16;
    }

    else
    {
      v10 = 14;
    }

    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 14;
    }

    v12 = +[AXSpringBoardServer server];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000DF6F4;
    v13[3] = &unk_1001D4408;
    v13[4] = self;
    [v12 showAlert:v11 withHandler:v13];
  }
}

- (void)loadScanner
{
  if (self->_isLoaded)
  {
    return;
  }

  v3 = SWCHLogScannerManager();
  v4 = os_signpost_id_generate(v3);

  v5 = SWCHLogScannerManager();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "SwitchControl starting up", "", buf, 2u);
  }

  _UIAccessibilityBlockPostingOfNotification();
  _UIAccessibilityBlockPostingOfNotification();
  v7 = +[HNDAccessibilityManager sharedManager];
  [v7 addObserver:self];

  v8 = +[HNDHandManager sharedManager];
  v9 = [v8 mainDisplayManager];
  [v9 addUserInterfaceClientEnabler:@"Scanner"];

  v10 = +[HNDAccessibilityManager sharedManager];
  v11 = +[HNDHandManager sharedManager];
  v12 = [v11 displayManagers];
  [v10 displaysDidChange:v12];

  v13 = objc_alloc_init(AXOutputManager);
  [(SCATScannerManager *)self setOutputManager:v13];
  v14 = +[AXSettings sharedInstance];
  -[AXOutputManager setSpeechEnabled:](v13, "setSpeechEnabled:", [v14 assistiveTouchScannerSpeechEnabled]);

  v15 = +[AXSettings sharedInstance];
  v85 = v13;
  -[AXOutputManager setSoundEffectsEnabled:](v13, "setSoundEffectsEnabled:", [v15 assistiveTouchScannerSoundEnabled]);

  [(SCATScannerManager *)self _updateAudioSessionState];
  v16 = [[SCATCursorManager alloc] initWithDisplaySource:self];
  [(SCATScannerManager *)self setCursorManager:v16];
  [(SCATCursorManager *)v16 setDelegate:self];
  v84 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
  [(SCATScannerManager *)self setBeginScanningTimer:?];
  v17 = [SCATInputController alloc];
  v18 = [(SCATScannerManager *)self interDeviceCommunicator];
  v19 = [(SCATInputController *)v17 initWithInterDeviceCommunicator:v18];

  v20 = +[AXAccessQueue mainAccessQueue];
  [(SCATInputController *)v19 setDelegate:self queue:v20];

  v83 = v19;
  [(SCATScannerManager *)self setInputController:v19];
  v21 = [[SCATMenu alloc] initWithDelegate:self];
  [(SCATScannerManager *)self setMenu:v21];
  v82 = v21;
  [(SCATMenu *)v21 registerMenuObserver:self];
  v22 = +[AXSettings sharedInstance];
  [v22 switchControlAutoTapTimeout];
  v24 = v23;

  v25 = [[SCATActionHandler alloc] initWithAction:103 timeoutDuration:v24];
  [(SCATActionHandler *)v25 setUiDelegate:self];
  v81 = v25;
  [(SCATScannerManager *)self setSelectActionHandler:v25];
  v26 = [[SCATActionHandler alloc] initWithAction:109 timeoutDuration:v24];
  [(SCATActionHandler *)v26 setUiDelegate:self];
  v80 = v26;
  [(SCATScannerManager *)self setSelectAndResumeAutoscanningActionHandler:v26];
  v27 = [[SCATActionHandler alloc] initWithAction:100 timeoutDuration:0.0];
  [(SCATActionHandler *)v27 setUiDelegate:self];
  v79 = v27;
  [(SCATScannerManager *)self setActivateActionHandler:v27];
  v78 = objc_alloc_init(HNDScannerAutoscroller);
  [(SCATScannerManager *)self setAutoscroller:?];
  v28 = [SCATGestureProvider alloc];
  v29 = [(SCATScannerManager *)self menu];
  v30 = [(SCATGestureProvider *)v28 initWithMenu:v29];

  [(SCATGestureProvider *)v30 setDelegate:self];
  v77 = v30;
  [(SCATScannerManager *)self setGestureProvider:v30];
  objc_initWeak(buf, self);
  v31 = objc_alloc_init(AXUpdateElementVisualsCoalescer);
  [(SCATScannerManager *)self setUpdateElementVisualsCoalescer:v31];
  [v31 setThreshold:0.2];
  [v31 setProgressInterval:0.01];
  v109[0] = _NSConcreteStackBlock;
  v109[1] = 3221225472;
  v109[2] = sub_1000E05E8;
  v109[3] = &unk_1001D3460;
  objc_copyWeak(&v110, buf);
  [v31 setUpdateVisualsSequenceDidBeginHandler:v109];
  v107[0] = _NSConcreteStackBlock;
  v107[1] = 3221225472;
  v107[2] = sub_1000E064C;
  v107[3] = &unk_1001D3460;
  objc_copyWeak(&v108, buf);
  [v31 setUpdateVisualsSequenceInProgressHandler:v107];
  v105[0] = _NSConcreteStackBlock;
  v105[1] = 3221225472;
  v105[2] = sub_1000E068C;
  v105[3] = &unk_1001D3460;
  objc_copyWeak(&v106, buf);
  [v31 setUpdateVisualsSequenceDidFinishHandler:v105];
  [(SCATScannerManager *)self _overrideScanningModeAtStartupIfNecessary];
  v32 = objc_alloc_init(SCATElementNavigationController);
  [(SCATElementNavigationController *)v32 setDelegate:self];
  [(SCATScannerManager *)self setElementNavController:v32];
  v33 = [(SCATScannerManager *)self scanningMode];
  v76 = v32;
  v34 = AXDeviceSupportsTadmor();
  if (v33 == 6)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  spid = v4;
  v75 = v16;
  if ([(SCATScannerManager *)self shouldUseCameraPointPicker]&& (v33 == 3 || v33 == 5) || v35)
  {
    v36 = +[AXSpringBoardServer server];
    v37 = [v36 isContinuitySessionActive];
    v38 = v37 ^ 1;

    if (v37)
    {
      v39 = 1;
    }

    else
    {
      v39 = 2;
    }
  }

  else
  {
    v38 = 0;
    v39 = 1;
  }

  v74 = v4 - 1;
  v40 = +[AXSettings sharedInstance];
  [v40 setAssistiveTouchPreferredPointPicker:v39];

  v41 = [(SCATScannerManager *)self menu];
  v42 = [SCATPointPicker pointPickerWithMode:v39 menu:v41];

  if (v38)
  {
    if ([(SCATScannerManager *)self isEyeTrackingEnabled])
    {
      v43 = [(SCATScannerManager *)self inputController];
      [v43 setEyeGazeMotionTrackingEnabled:1];

      v44 = +[AXSettings sharedInstance];
      -[SCATScannerManager setHighlightFocusContext:](self, "setHighlightFocusContext:", [v44 assistiveTouchBubbleModeEnabled]);
    }

    if (v35)
    {
      v45 = [(SCATScannerManager *)self inputController];
      [v45 setTadmorPointerEnabled:1];
LABEL_23:

      goto LABEL_24;
    }

    if (v33 == 3)
    {
      v45 = [(SCATScannerManager *)self inputController];
      [v45 setHeadMotionTrackingEnabled:1];
      goto LABEL_23;
    }
  }

LABEL_24:
  [v42 setDelegate:self];
  [(SCATScannerManager *)self setPointPicker:v42];
  v46 = objc_alloc_init(SCATAlternateKeysManager);
  [(SCATAlternateKeysManager *)v46 setDelegate:self];
  [(SCATScannerManager *)self setAlternateKeysManager:v46];
  v47 = objc_alloc_init(SCATCandidateBarManager);
  [(SCATCandidateBarManager *)v47 setDelegate:self];
  [(SCATScannerManager *)self setCandidateBarManager:v47];
  v48 = [(SCATScannerManager *)self _elementManagerForScannerState];
  [(SCATScannerManager *)self setActiveElementManager:v48];

  v49 = [[SCATAutomaticDriver alloc] initWithDelegate:self];
  [(SCATScannerManager *)self setAutoScanningDriver:v49];

  v50 = [(SCATDriver *)[SCATManualDriver alloc] initWithDelegate:self];
  [(SCATScannerManager *)self setManualScanningDriver:v50];

  v51 = [(SCATDriver *)[SCATDwellDriver alloc] initWithDelegate:self];
  [(SCATScannerManager *)self setDwellScanningDriver:v51];

  v52 = [(SCATScannerManager *)self _driverForScannerState];
  [(SCATScannerManager *)self setActiveScannerDriver:v52];

  [(SCATScannerManager *)self _updateCameraPointPickerSwitchesCache];
  v53 = +[AXSettings sharedInstance];
  [v53 registerUpdateBlock:&stru_1001D7500 forRetrieveSelector:"switchControlUseCameraForPointMode" withListener:self];

  v54 = +[AXSettings sharedInstance];
  v103[0] = _NSConcreteStackBlock;
  v103[1] = 3221225472;
  v103[2] = sub_1000E083C;
  v103[3] = &unk_1001D3460;
  objc_copyWeak(&v104, buf);
  [v54 registerUpdateBlock:v103 forRetrieveSelector:"assistiveTouchCameraPointPickerSwitches" withListener:self];

  objc_destroyWeak(&v104);
  v55 = +[AXSettings sharedInstance];
  v101[0] = _NSConcreteStackBlock;
  v101[1] = 3221225472;
  v101[2] = sub_1000E087C;
  v101[3] = &unk_1001D3460;
  objc_copyWeak(&v102, buf);
  [v55 registerUpdateBlock:v101 forRetrieveSelector:"switchControlAutoTapTimeout" withListener:self];

  objc_destroyWeak(&v102);
  v56 = +[AXSettings sharedInstance];
  v99[0] = _NSConcreteStackBlock;
  v99[1] = 3221225472;
  v99[2] = sub_1000E0904;
  v99[3] = &unk_1001D3460;
  objc_copyWeak(&v100, buf);
  [v56 registerUpdateBlock:v99 forRetrieveSelector:"assistiveTouchGroupElementsEnabled" withListener:self];

  objc_destroyWeak(&v100);
  v57 = +[AXSettings sharedInstance];
  v97[0] = _NSConcreteStackBlock;
  v97[1] = 3221225472;
  v97[2] = sub_1000E09CC;
  v97[3] = &unk_1001D3460;
  objc_copyWeak(&v98, buf);
  [v57 registerUpdateBlock:v97 forRetrieveSelector:"switchControlScanningStyle" withListener:self];

  objc_destroyWeak(&v98);
  v58 = +[AXSettings sharedInstance];
  v95[0] = _NSConcreteStackBlock;
  v95[1] = 3221225472;
  v95[2] = sub_1000E0A3C;
  v95[3] = &unk_1001D3460;
  objc_copyWeak(&v96, buf);
  [v58 registerUpdateBlock:v95 forRetrieveSelector:"assistiveTouchScanningMode" withListener:self];

  objc_destroyWeak(&v96);
  v59 = +[AXSettings sharedInstance];
  v92[0] = _NSConcreteStackBlock;
  v92[1] = 3221225472;
  v92[2] = sub_1000E0A7C;
  v92[3] = &unk_1001D3CA8;
  v60 = v85;
  v93 = v60;
  objc_copyWeak(&v94, buf);
  [v59 registerUpdateBlock:v92 forRetrieveSelector:"assistiveTouchScannerSpeechEnabled" withListener:self];

  objc_destroyWeak(&v94);
  v61 = +[AXSettings sharedInstance];
  v89[0] = _NSConcreteStackBlock;
  v89[1] = 3221225472;
  v89[2] = sub_1000E0B98;
  v89[3] = &unk_1001D3CA8;
  v62 = v60;
  v90 = v62;
  objc_copyWeak(&v91, buf);
  [v61 registerUpdateBlock:v89 forRetrieveSelector:"assistiveTouchScannerSoundEnabled" withListener:self];

  objc_destroyWeak(&v91);
  v63 = +[AXSettings sharedInstance];
  [v63 registerUpdateBlock:&stru_1001D7520 forRetrieveSelector:"switchControlTapBehavior" withListener:self];

  v64 = +[AXSettings sharedInstance];
  v87[0] = _NSConcreteStackBlock;
  v87[1] = 3221225472;
  v87[2] = sub_1000E0C18;
  v87[3] = &unk_1001D3460;
  objc_copyWeak(&v88, buf);
  [v64 registerUpdateBlock:v87 forRetrieveSelector:"assistiveTouchBubbleModeEnabled" withListener:self];

  objc_destroyWeak(&v88);
  v65 = +[HNDEventManager sharedManager];
  [v65 manipulateDimTimer:1];

  [(SCATScannerManager *)self _applyLaunchRecipeUUID];
  [(SCATScannerManager *)self hideUIContext:0];
  v66 = +[AXSettings sharedInstance];
  v67 = [v66 switchControlProfiles];
  v68 = [v67 count];

  if (v68 >= 2)
  {
    v69 = +[AXSettings sharedInstance];
    v70 = [v69 switchControlSelectedProfile];
    [(SCATScannerManager *)self _showSimpleAlertForProfile:v70];
  }

  self->_isLoaded = 1;
  v71 = SWCHLogScannerManager();
  v72 = v71;
  if (v74 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
  {
    *v86 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v72, OS_SIGNPOST_INTERVAL_END, spid, "SwitchControl starting up", "", v86, 2u);
  }

  objc_destroyWeak(&v106);
  objc_destroyWeak(&v108);
  objc_destroyWeak(&v110);

  objc_destroyWeak(buf);
}

- (void)unloadScanner
{
  if (self->_isLoaded)
  {
    v4 = +[HNDAccessibilityManager sharedManager];
    [v4 removeObserver:self];

    [(SCATScannerManager *)self endScanning];
    _UIAccessibilityUnblockPostingOfAllNotifications();
    v5 = [(SCATScannerManager *)self inputController];
    [v5 setDelegate:0 queue:0];

    [(SCATScannerManager *)self setInputController:0];
    v6 = [(SCATScannerManager *)self menu];
    [v6 setDelegate:0];

    v7 = [(SCATScannerManager *)self menu];
    [v7 unregisterMenuObserver:self];

    [(SCATScannerManager *)self setMenu:0];
    [(SCATScannerManager *)self setAutoscroller:0];
    v8 = [(SCATScannerManager *)self gestureProvider];
    [v8 setDelegate:0];

    [(SCATScannerManager *)self setGestureProvider:0];
    [(SCATScannerManager *)self setUpdateElementVisualsCoalescer:0];
    [(SCATScannerManager *)self setAutoScanningDriver:0];
    [(SCATScannerManager *)self setManualScanningDriver:0];
    [(SCATScannerManager *)self setActiveScannerDriver:0];
    [(SCATScannerManager *)self setElementNavController:0];
    v9 = [(SCATScannerManager *)self pointPicker];
    [v9 setDelegate:0];

    [(SCATScannerManager *)self setPointPicker:0];
    v10 = [(SCATScannerManager *)self alternateKeysManager];
    [v10 setDelegate:0];

    [(SCATScannerManager *)self setAlternateKeysManager:0];
    v11 = [(SCATScannerManager *)self candidateBarManager];
    [v11 setDelegate:0];

    [(SCATScannerManager *)self setCandidateBarManager:0];
    [(SCATScannerManager *)self setScrollViewPickerManager:0];
    [(SCATScannerManager *)self setActiveElementManager:0];
    [(SCATScannerManager *)self setBeginScanningTimer:0];
    [(SCATScannerManager *)self setShowPointerTimer:0];
    v12 = [(SCATScannerManager *)self cursorManager];
    [v12 setDelegate:0];

    [(SCATScannerManager *)self setCursorManager:0];
    v13 = [(SCATScannerManager *)self selectActionHandler];
    [v13 setDelegate:0];

    v14 = [(SCATScannerManager *)self selectActionHandler];
    [v14 setUiDelegate:0];

    [(SCATScannerManager *)self setSelectActionHandler:0];
    v15 = [(SCATScannerManager *)self activateActionHandler];
    [v15 setDelegate:0];

    v16 = [(SCATScannerManager *)self activateActionHandler];
    [v16 setUiDelegate:0];

    [(SCATScannerManager *)self setActivateActionHandler:0];
    [(SCATScannerManager *)self setOutputManager:0];
    [(SCATScannerManager *)self setFocusContextForResume:0];
    [(SCATScannerManager *)self setReasonsToDisableScanning:0];
    [(SCATScannerManager *)self _setCurrentRecipe:0 shouldShowAlert:0];
    v26 = [NSNumber numberWithUnsignedLongLong:self];
    v17 = +[AXSettings sharedInstance];
    [v17 unregisterUpdateBlockForRetrieveSelector:"assistiveTouchGroupElementsEnabled" withListenerID:v26];

    v18 = +[AXSettings sharedInstance];
    [v18 unregisterUpdateBlockForRetrieveSelector:"assistiveTouchPreferredPointPicker" withListenerID:v26];

    v19 = +[AXSettings sharedInstance];
    [v19 unregisterUpdateBlockForRetrieveSelector:"switchControlScanningStyle" withListenerID:v26];

    v20 = +[AXSettings sharedInstance];
    [v20 unregisterUpdateBlockForRetrieveSelector:"assistiveTouchStepInterval" withListenerID:v26];

    v21 = +[AXSettings sharedInstance];
    [v21 unregisterUpdateBlockForRetrieveSelector:"assistiveTouchScanningMode" withListenerID:v26];

    v22 = +[HNDEventManager sharedManager];
    [v22 manipulateDimTimer:0];

    v23 = +[HNDHandManager sharedManager];
    v24 = [v23 mainDisplayManager];
    [v24 removeUserInterfaceClientEnabler:@"Scanner"];

    v25 = +[AXSettings sharedInstance];
    [v25 setSwitchControlOnDeviceEyeTrackingEnabled:0];

    [(SCATScannerManager *)self _removeInterdeviceSwitches];
    self->_isLoaded = 0;
  }
}

- (NSString)description
{
  v3 = [NSNumber numberWithBool:[(SCATScannerManager *)self isActive]];
  v4 = [NSNumber numberWithBool:[(SCATScannerManager *)self isPaused]];
  v5 = [(SCATScannerManager *)self activeScannerDriver];
  v6 = [(SCATScannerManager *)self activeElementManager];
  v7 = [NSString stringWithFormat:@"SCATScannerManager<%p>. Active:%@ Paused:%@ ActiveDriver:%@. ActiveElementManager:%@.", self, v3, v4, v5, v6];

  return v7;
}

- (void)_overrideScanningModeAtStartupIfNecessary
{
  if (!self->_isLoaded)
  {
    v3 = +[AXSettings sharedInstance];
    if ([v3 switchControlFirstLaunchScanningMode] == 3)
    {
      v4 = 1;
    }

    else
    {
      v5 = +[AXSettings sharedInstance];
      v4 = [v5 switchControlFirstLaunchScanningMode] == 5;
    }

    v6 = +[AXSettings sharedInstance];
    v7 = [v6 switchControlUseCameraForPointMode];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = !v4;
    }

    if (!v8)
    {
      v9 = +[AXSettings sharedInstance];
      [v9 setSwitchControlUseCameraForPointMode:1];
    }

    v10 = +[AXSettings sharedInstance];
    v11 = [v10 switchControlFirstLaunchScanningMode];

    if (v11 == 5)
    {
      v12 = +[AXSettings sharedInstance];
      [v12 setSwitchControlOnDeviceEyeTrackingEnabled:1];
    }

    v15 = +[AXSettings sharedInstance];
    v13 = [v15 switchControlFirstLaunchScanningMode];
    v14 = +[AXSettings sharedInstance];
    [v14 setAssistiveTouchScanningMode:v13];
  }
}

- (void)_scanningModePreferenceDidChange
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchScanningMode];
  if (AXDeviceSupportsTadmor())
  {
    v5 = [(SCATScannerManager *)self scanningMode]== 6;
  }

  else
  {
    v5 = 0;
  }

  v6 = +[AXSettings sharedInstance];
  v7 = [v6 switchControlFirstLaunchScanningMode];

  if (v7 != v4 && !v5)
  {
    v8 = +[AXSettings sharedInstance];
    [v8 setSwitchControlFirstLaunchScanningMode:v4];
  }

  if (!v5)
  {
    v9 = [(SCATScannerManager *)self inputController];
    [v9 setTadmorPointerEnabled:0];
  }

  if (v4 != 5)
  {
    [v3 setSwitchControlOnDeviceEyeTrackingEnabled:0];
  }

  v10 = [(SCATScannerManager *)self activeElementManager];
  v11 = [(SCATScannerManager *)self elementNavController];
  v12 = v11;
  if (v10 == v11)
  {
  }

  else
  {
    v13 = [(SCATScannerManager *)self activeElementManager];
    v14 = [(SCATScannerManager *)self pointPicker];

    if (v13 != v14)
    {
      goto LABEL_55;
    }
  }

  v15 = 0;
  if (v4 <= 2)
  {
    if (!v4)
    {
LABEL_19:
      v16 = SWCHLogModernMenuActions();
      if (os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Toggle", "Scanning Mode Preference Did Change: ATV Remote", buf, 2u);
      }

      v15 = 0;
      goto LABEL_35;
    }

    if (v4 != 1)
    {
      if (v4 != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_19;
    }

    [v3 setAssistiveTouchPreferredPointPicker:1];
    v29 = [(SCATScannerManager *)self menu];
    v15 = [SCATPointPicker mostSuitablePointPickerWithMenu:v29];

    v16 = SWCHLogModernMenuActions();
    if (!os_signpost_enabled(v16))
    {
LABEL_35:

      goto LABEL_36;
    }

    *v50 = 0;
    v21 = "Scanning Mode Preference Did Change: Gliding";
    v22 = v50;
LABEL_34:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Toggle", v21, v22, 2u);
    goto LABEL_35;
  }

  if (v4 != 3 && v4 != 5)
  {
    if (v4 != 6)
    {
      goto LABEL_36;
    }

    [v3 setAssistiveTouchPreferredPointPicker:2];
    v17 = [(SCATScannerManager *)self menu];
    v15 = [SCATPointPicker mostSuitablePointPickerWithMenu:v17];

    v18 = [(SCATScannerManager *)self inputController];
    [v18 setTadmorPointerEnabled:1];

    v19 = [(SCATScannerManager *)self inputController];
    [v19 setHeadMotionTrackingEnabled:0];

    v20 = [(SCATScannerManager *)self inputController];
    [v20 setEyeGazeMotionTrackingEnabled:0];

    v16 = SWCHLogModernMenuActions();
    if (!os_signpost_enabled(v16))
    {
      goto LABEL_35;
    }

    LOWORD(v48) = 0;
    v21 = "Scanning Mode Preference Did Change: TAD";
    v22 = &v48;
    goto LABEL_34;
  }

  [v3 setAssistiveTouchPreferredPointPicker:2];
  v23 = [(SCATScannerManager *)self menu];
  v15 = [SCATPointPicker mostSuitablePointPickerWithMenu:v23];

  v24 = SWCHLogModernMenuActions();
  if (os_signpost_enabled(v24))
  {
    *v49 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Toggle", "Scanning Mode Preference Did Change: Eye Tracking", v49, 2u);
  }

  if (v4 != 3)
  {
LABEL_36:
    v30 = [(SCATScannerManager *)self inputController];
    v31 = [v30 headMotionTrackingEnabled];

    v27 = 0;
    v28 = 0;
    if (!v31)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v25 = [(SCATScannerManager *)self inputController];
  v26 = [v25 headMotionTrackingEnabled];

  v27 = 1;
  v28 = 1;
  if ((v26 & 1) == 0)
  {
LABEL_37:
    v32 = [(SCATScannerManager *)self inputController];
    [v32 setHeadMotionTrackingEnabled:v27];

    v33 = [(SCATScannerManager *)self inputController];
    [v33 setEyeGazeMotionTrackingEnabled:0];

    v28 = v27;
  }

LABEL_38:
  if ([(SCATScannerManager *)self isOnDeviceEyeTrackingSupported])
  {
    if (v4 == 5 && (-[SCATScannerManager inputController](self, "inputController"), v34 = objc_claimAutoreleasedReturnValue(), v35 = [v34 eyeGazeMotionTrackingEnabled], v34, (v35 & 1) == 0))
    {
      v43 = [(SCATScannerManager *)self inputController];
      [v43 setHeadMotionTrackingEnabled:0];

      v44 = [(SCATScannerManager *)self inputController];
      [v44 setEyeGazeMotionTrackingEnabled:1];

      v40 = +[AXSettings sharedInstance];
      v41 = v40;
      v42 = 1;
    }

    else
    {
      if (v28)
      {
        goto LABEL_48;
      }

      v36 = [(SCATScannerManager *)self inputController];
      v37 = [v36 eyeGazeMotionTrackingEnabled];

      if (!v37)
      {
        goto LABEL_48;
      }

      v38 = [(SCATScannerManager *)self inputController];
      [v38 setHeadMotionTrackingEnabled:0];

      v39 = [(SCATScannerManager *)self inputController];
      [v39 setEyeGazeMotionTrackingEnabled:0];

      v40 = +[AXSettings sharedInstance];
      v41 = v40;
      v42 = 0;
    }

    [v40 setSwitchControlOnDeviceEyeTrackingEnabled:v42];
  }

  else
  {
    v41 = [(SCATScannerManager *)self inputController];
    [v41 setEyeGazeMotionTrackingEnabled:0];
  }

LABEL_48:
  if (v15)
  {
    v45 = [(SCATScannerManager *)self pointPicker];
    v46 = objc_opt_class();
    v47 = objc_opt_class();

    if (v46 != v47)
    {
      [v15 setDelegate:self];
      [(SCATScannerManager *)self setPointPicker:v15];
    }
  }

  [(SCATScannerManager *)self _updateCameraPointPickerSwitchesCache];
  if ([(SCATScannerManager *)self isActive])
  {
    [(SCATScannerManager *)self beginScanningWithFocusContext:0];
  }

  else
  {
    [(SCATScannerManager *)self _updateActiveElementManager];
  }

LABEL_55:
}

- (BOOL)isHandlingInterDeviceCommunication
{
  v2 = [(SCATScannerManager *)self interDeviceCommunicator];
  v3 = [v2 isIdle];

  return v3 ^ 1;
}

- (BOOL)isControllingOtherDevice
{
  v2 = [(SCATScannerManager *)self interDeviceCommunicator];
  v3 = [v2 isForwardingSwitchEvents];

  return v3;
}

- (void)setPointPicker:(id)a3
{
  v5 = a3;
  if (self->_pointPicker != v5)
  {
    v6 = SWCHLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10012B5EC(v5, v6);
    }

    objc_storeStrong(&self->_pointPicker, a3);
    v7 = [(SCATScannerManager *)self pointerPointPicker];
    [v7 setShouldTrackFocusContext:self->_highlightFocusContext];
  }
}

- (id)pointerPointPicker
{
  v3 = [(SCATScannerManager *)self pointPicker];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(SCATScannerManager *)self pointPicker];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setActiveScannerDriver:(id)a3
{
  v4 = a3;
  activeScannerDriver = self->_activeScannerDriver;
  if (activeScannerDriver != v4)
  {
    v10 = v4;
    [(SCATDriver *)activeScannerDriver willFinishAsScannerDriver];
    [(SCATDriver *)v10 willBecomeScannerDriver];
    v6 = self->_activeScannerDriver;
    v7 = v10;
    v8 = self->_activeScannerDriver;
    self->_activeScannerDriver = v7;
    v9 = v6;

    [(SCATDriver *)v9 didFinishAsScannerDriver];
    [(SCATDriver *)v7 didBecomeScannerDriver];

    v4 = v10;
  }

  _objc_release_x1(activeScannerDriver, v4);
}

- (id)_driverForScannerState
{
  if ([(SCATScannerManager *)self isAutoscanEnabled])
  {
    v3 = [(SCATScannerManager *)self autoScanningDriver];
  }

  else
  {
    v4 = +[AXSettings sharedInstance];
    v5 = [v4 switchControlScanningStyle];

    if (v5 == 1)
    {
      [(SCATScannerManager *)self manualScanningDriver];
    }

    else
    {
      [(SCATScannerManager *)self dwellScanningDriver];
    }
    v3 = ;
  }

  return v3;
}

- (void)setActiveElementManager:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  activeElementManager = self->_activeElementManager;
  if (activeElementManager == v7)
  {
    goto LABEL_4;
  }

  [(SCATElementManager *)activeElementManager scannerWillMakeManagerInactive:self activeElementManager:v7];
  [(SCATElementManager *)v7 scannerWillMakeManagerActive:self forDisplayID:[(SCATScannerManager *)self currentDisplayID]];
  objc_storeStrong(&self->_activeElementManager, a3);
  if (![(SCATScannerManager *)self isSpeechEnabled])
  {
    goto LABEL_4;
  }

  v10 = [(SCATScannerManager *)self pointPicker];

  if (v10 != v7)
  {
    goto LABEL_4;
  }

  v12 = [(SCATScannerManager *)self pointPicker];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = sub_100042B24(@"ENTERED_GLIDING_CURSOR_MODE");
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v15 = [(SCATScannerManager *)self pointPicker];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if ((v16 & 1) == 0 || ((+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v17 = objc_claimAutoreleasedReturnValue(), ![v17 switchControlOnDeviceEyeTrackingEnabled]) ? (v18 = @"ENTERED_HEAD_TRACKING_MODE") : (v18 = @"ENTERED_EYE_TRACKING_MODE"), sub_100042B24(v18), v14 = objc_claimAutoreleasedReturnValue(), v17, !v14))
    {
LABEL_4:
      v11 = 1;
      if (!v8)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }
  }

  v19 = [(SCATScannerManager *)self _driverForScannerState];
  v20 = [(SCATScannerManager *)self outputManager];
  [v19 outputManager:v20 willSpeakFocusContext:0];

  v21 = [(SCATScannerManager *)self outputManager];
  objc_initWeak(&location, v21);

  v22 = [(SCATScannerManager *)self outputManager];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000E1EA8;
  v23[3] = &unk_1001D7570;
  v23[4] = self;
  objc_copyWeak(&v25, &location);
  v24 = v8;
  [v22 outputScannerAnnouncement:v14 completionBlock:v23];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  v11 = 0;
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_5:
  if (v11)
  {
    v8[2](v8);
  }

LABEL_7:
}

- (id)_elementManagerForScannerState
{
  v3 = [(SCATScannerManager *)self alternateKeysManager];
  v4 = [v3 canBeActiveElementManager];

  if (v4)
  {
    v5 = [(SCATScannerManager *)self alternateKeysManager];
  }

  else
  {
    v6 = [(SCATScannerManager *)self candidateBarManager];
    v7 = [v6 canBeActiveElementManager];

    if (v7)
    {
      v5 = [(SCATScannerManager *)self candidateBarManager];
    }

    else
    {
      v8 = [(SCATScannerManager *)self scrollViewPickerManager];
      v9 = [v8 canBeActiveElementManager];

      if (v9)
      {
        v5 = [(SCATScannerManager *)self scrollViewPickerManager];
      }

      else
      {
        v10 = [(SCATScannerManager *)self gestureProvider];
        v11 = [v10 canBeActiveElementManager];

        if (v11)
        {
          v5 = [(SCATScannerManager *)self gestureProvider];
        }

        else
        {
          v12 = [(SCATScannerManager *)self menu];
          v13 = [v12 canBeActiveElementManager];

          if (v13)
          {
            [(SCATScannerManager *)self menu];
          }

          else
          {
            [(SCATScannerManager *)self _primaryElementManagerForScannerState];
          }
          v5 = ;
        }
      }
    }
  }

  return v5;
}

- (id)_primaryElementManagerForScannerState
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchScannerPointPickerModeEnabled];

  v5 = [(SCATScannerManager *)self scanningMode];
  v6 = v5;
  if (!v4)
  {
    goto LABEL_11;
  }

  if (v5 > 6)
  {
    goto LABEL_14;
  }

  if (((1 << v5) & 0x6A) == 0)
  {
LABEL_11:
    if (v5 == 2)
    {
      _AXAssert();
LABEL_13:
      v7 = 0;
      goto LABEL_27;
    }

LABEL_14:
    v10 = [(SCATScannerManager *)self axManager];
    v11 = [v10 hasZeroElements];

    if (v11)
    {
      v12 = [(SCATScannerManager *)self axManager];
      v13 = [v12 frontmostAppMayBeLoading];

      v14 = SWCHLogElementNav();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 67109120;
        LODWORD(v22) = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "*** Zero elements found. Frontmost app may be loading %i", &v21, 8u);
      }

      if (v13)
      {
        goto LABEL_13;
      }

      v15 = SWCHLogElementNav();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v4)
      {
        if (v16)
        {
          v17 = [(SCATScannerManager *)self pointPicker];
          v21 = 138412290;
          v22 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "*** Zero elements found. Frontmost app not loading. Switching to point picker: %@.", &v21, 0xCu);
        }

        v18 = [(SCATScannerManager *)self pointPicker];
        goto LABEL_26;
      }

      if (v16)
      {
        v19 = [(SCATScannerManager *)self elementNavController];
        v21 = 138412290;
        v22 = v19;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "*** Zero elements found. Frontmost app not loading. Switching to element manager: %@.", &v21, 0xCu);
      }
    }

    v18 = [(SCATScannerManager *)self elementNavController];
LABEL_26:
    v7 = v18;
    goto LABEL_27;
  }

  v7 = [(SCATScannerManager *)self pointPicker];
  v8 = +[AXSpringBoardServer server];
  if ([v8 isDockVisible] && objc_msgSend(v8, "isShowingNonSystemApp") && !-[SCATScannerManager isExternalDisplayConnected](self, "isExternalDisplayConnected") && v6 != 3 && v6 != 5)
  {
    v9 = [(SCATScannerManager *)self elementNavController];

    v7 = v9;
  }

LABEL_27:

  return v7;
}

- (void)_updateActiveElementManager:(id)a3
{
  v4 = a3;
  v5 = [(SCATScannerManager *)self _elementManagerForScannerState];
  [(SCATScannerManager *)self setActiveElementManager:v5 completion:v4];
}

- (BOOL)_isScannerControlledByDriver:(id)a3
{
  v4 = a3;
  v5 = [(SCATScannerManager *)self activeScannerDriver];
  v6 = [v5 isEqual:v4];

  return v6;
}

- (void)_deactivateAudioSession
{
  v3 = [(SCATScannerManager *)self outputManager];
  [v3 setSoundAudioSessionActive:0];

  v4 = [(SCATScannerManager *)self outputManager];
  [v4 setSpeechAudioSessionActive:0];
}

- (void)_updateAudioSessionState
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_deactivateAudioSession" object:0];
  if ([(SCATScannerManager *)self isActive])
  {
    if ([(SCATScannerManager *)self isSpeechEnabled])
    {
      v3 = [(SCATScannerManager *)self outputManager];
      [v3 setSpeechAudioSessionActive:1];
    }

    if ([(SCATScannerManager *)self areSoundEffectsEnabled])
    {
      v5 = [(SCATScannerManager *)self outputManager];
      [v5 setSoundAudioSessionActive:1];
    }
  }

  else
  {
    v4 = [(SCATScannerManager *)self outputManager];
    [v4 cancelSpeech];

    [(SCATScannerManager *)self performSelector:"_deactivateAudioSession" withObject:0 afterDelay:2.0];
  }
}

- (BOOL)isAutoscanEnabled
{
  v3 = [(SCATScannerManager *)self currentRecipe];
  if (v3)
  {
    v4 = [(SCATScannerManager *)self currentRecipe];
    v5 = [v4 shouldContinueScanning];
  }

  else
  {
    v5 = 0;
  }

  v6 = +[AXSettings sharedInstance];
  v7 = ([v6 switchControlScanningStyle] == 0) | v5;

  return v7 & 1;
}

- (BOOL)isGroupingEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchGroupElementsEnabled];

  return v3;
}

- (int64_t)scanningMode
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchScanningMode];

  return v3;
}

- (BOOL)areSoundEffectsEnabled
{
  v2 = [(SCATScannerManager *)self outputManager];
  v3 = [v2 areSoundEffectsEnabled];

  return v3;
}

- (BOOL)isSpeechEnabled
{
  v2 = [(SCATScannerManager *)self outputManager];
  v3 = [v2 isSpeechEnabled];

  return v3;
}

- (BOOL)isSwitchWithSource:(id)a3
{
  v4 = a3;
  v5 = [(SCATScannerManager *)self inputController];
  v6 = [v5 isSwitchWithSource:v4];

  return v6;
}

- (BOOL)isUsingPointMode
{
  v2 = self;
  v3 = [(SCATScannerManager *)self _primaryElementManagerForScannerState];
  v4 = [(SCATScannerManager *)v2 pointPicker];
  LOBYTE(v2) = v3 == v4;

  return v2;
}

- (BOOL)isOnDeviceEyeTrackingSupported
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = AXDeviceSupportsOnDeviceEyeTracking();
  }

  return v2;
}

- (BOOL)isLandscape
{
  v2 = [(SCATScannerManager *)self currentDisplayID];
  v3 = +[HNDHandManager sharedManager];
  v4 = [v3 displayManagerForDisplayId:v2];

  if ([v4 isMainDisplay])
  {
    v5 = +[HNDHandManager sharedManager];
    v6 = [v5 mainDisplayManager];
    v7 = [v6 orientation];

    v8 = v7 - 3 < 2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isSystemSleeping
{
  v2 = +[AXSystemAppServer server];
  v3 = [v2 isSystemSleeping];

  return v3;
}

- (SCATFocusContext)currentFocusContext
{
  v2 = [(SCATScannerManager *)self activeScannerDriver];
  v3 = [v2 focusContext];

  return v3;
}

- (SCATElement)currentElement
{
  v2 = [(SCATScannerManager *)self currentFocusContext];
  v3 = [v2 element];

  return v3;
}

- (unsigned)currentDisplayID
{
  if (![(SCATScannerManager *)self lockedToDisplayID])
  {
    goto LABEL_6;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v3 = +[HNDHandManager sharedManager];
  v4 = [v3 displayManagers];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000E2C30;
  v16[3] = &unk_1001D7598;
  v16[4] = self;
  v16[5] = &v17;
  [v4 enumerateObjectsUsingBlock:v16];

  v5 = *(v18 + 24);
  if (v5 == 1)
  {
    LODWORD(v3) = self->_lockedToDisplayID;
  }

  else
  {
    [(SCATScannerManager *)self setLockedToDisplayID:0];
  }

  _Block_object_dispose(&v17, 8);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    v6 = [(SCATScannerManager *)self activeElementManager];
    v7 = [(SCATScannerManager *)self pointPicker];

    if (v6 == v7)
    {
      v11 = [(SCATScannerManager *)self activeElementManager];
      v12 = [v11 currentDisplayID];
    }

    else
    {
      v8 = [(SCATScannerManager *)self menu];
      v9 = [v8 element];
      if (v9)
      {
        v10 = [(SCATScannerManager *)self menu];
        v11 = [v10 element];
      }

      else
      {
        v11 = [(SCATScannerManager *)self currentElement];
      }

      if (![v11 scatDisplayId])
      {
        v13 = +[HNDHandManager sharedManager];
        v14 = [v13 mainDisplayManager];
        LODWORD(v3) = [v14 displayID];

        goto LABEL_15;
      }

      v12 = [v11 scatDisplayId];
    }

    LODWORD(v3) = v12;
LABEL_15:
  }

  return v3;
}

- (BOOL)isExternalDisplayConnected
{
  v2 = +[HNDHandManager sharedManager];
  v3 = [v2 displayManagers];
  v4 = [v3 count] > 1;

  return v4;
}

- (void)switchCurrentDisplayContext
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = [(SCATScannerManager *)self lockedToDisplayID];
  v3 = *(v10 + 6);
  if (!v3)
  {
    v3 = 1;
    *(v10 + 6) = 1;
  }

  v4 = +[HNDHandManager sharedManager];
  v5 = [v4 displayManagers];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E2E40;
  v8[3] = &unk_1001D75C0;
  v8[4] = &v9;
  [v5 enumerateObjectsUsingBlock:v8];

  if (v3 != *(v10 + 6))
  {
    [(SCATScannerManager *)self setLockedToDisplayID:?];
    v6 = [(SCATScannerManager *)self activeElementManager];
    v7 = [(SCATScannerManager *)self scatUIContextForDisplayID:*(v10 + 6)];
    [v6 presentWithDisplayContext:v7 animated:1];
  }

  _Block_object_dispose(&v9, 8);
}

- (id)axManager
{
  if (_AXSInUnitTestMode() && ([(SCATScannerManager *)self testAxManager], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(SCATScannerManager *)self testAxManager];
  }

  else
  {
    v4 = +[HNDAccessibilityManager sharedManager];
  }

  return v4;
}

- (NSArray)recentSpeechOutputStrings
{
  v2 = [(SCATScannerManager *)self outputManager];
  v3 = [v2 recentSpeechOutputStrings];

  return v3;
}

- (void)clearRecentSpeech
{
  v2 = [(SCATScannerManager *)self outputManager];
  [v2 clearRecentSpeech];
}

- (BOOL)isEyeTrackingEnabled
{
  if (![(SCATScannerManager *)self isOnDeviceEyeTrackingSupported])
  {
    return 0;
  }

  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchScanningMode] == 5;

  return v3;
}

- (BOOL)highlightFocusContext
{
  v2 = [(SCATScannerManager *)self pointerPointPicker];
  v3 = [v2 shouldTrackFocusContext];

  return v3;
}

- (void)setHighlightFocusContext:(BOOL)a3
{
  if (self->_highlightFocusContext != a3)
  {
    v4 = a3;
    self->_highlightFocusContext = a3;
    v5 = [(SCATScannerManager *)self pointerPointPicker];
    [v5 setShouldTrackFocusContext:v4];
  }
}

- (BOOL)isActive
{
  v2 = [(SCATScannerManager *)self activeScannerDriver];
  v3 = [v2 isActive];

  return v3;
}

- (BOOL)isPaused
{
  v2 = [(SCATScannerManager *)self activeScannerDriver];
  v3 = [v2 isPaused];

  return v3;
}

- (BOOL)isInactive
{
  v2 = [(SCATScannerManager *)self activeScannerDriver];
  v3 = [v2 isInactive];

  return v3;
}

- (void)_beginOrContinueScanningWithFocusContext:(id)a3 shouldBegin:(BOOL)a4 foundNewElements:(BOOL)a5
{
  v8 = a3;
  if (![(SCATScannerManager *)self _shouldIgnoreAllScannerControlMessages])
  {
    v9 = [(SCATScannerManager *)self menu];
    v10 = [v9 isVisible];

    if (v10)
    {
      v11 = [(SCATScannerManager *)self menu];
      v12 = [v11 element];
      [v8 setMenuElement:v12];
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000E328C;
    v14[3] = &unk_1001D3BE0;
    v16 = a5;
    v14[4] = self;
    v17 = a4;
    v15 = v8;
    v13 = objc_retainBlock(v14);
    [(SCATScannerManager *)self _updateActiveElementManager:v13];
  }
}

- (void)resumeScanning
{
  if (![(SCATScannerManager *)self _shouldIgnoreAllScannerControlMessages])
  {
    if ([(SCATScannerManager *)self didSetFocusContextForResume])
    {
      v6 = [(SCATScannerManager *)self focusContextForResume];
      [(SCATScannerManager *)self beginScanningWithFocusContext:v6];
    }

    else
    {
      [(SCATScannerManager *)self _updateActiveElementManager];
      v3 = [(SCATScannerManager *)self activeElementManager];

      if (!v3)
      {
        v4 = [(SCATScannerManager *)self beginScanningTimer];
        [v4 cancel];

        v5 = [(SCATScannerManager *)self beginScanningTimer];
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_1000E35A8;
        v7[3] = &unk_1001D3488;
        v7[4] = self;
        [v5 afterDelay:v7 processBlock:1.0];

        return;
      }

      v6 = [(SCATScannerManager *)self activeScannerDriver];
      [v6 resumeScanning];
    }
  }
}

- (void)endScanning
{
  if (![(SCATScannerManager *)self _shouldIgnoreAllScannerControlMessages])
  {
    v3 = [(SCATScannerManager *)self beginScanningTimer];
    [v3 cancel];

    v4 = [(SCATScannerManager *)self activeScannerDriver];
    [v4 endScanning];
  }
}

- (void)pauseScanningWithScreenLockDisabled:(BOOL)a3
{
  v3 = a3;
  if (![(SCATScannerManager *)self _shouldIgnoreAllScannerControlMessages])
  {
    [(SCATScannerManager *)self setForceDisableScreenLock:v3];
    v5 = [(SCATScannerManager *)self beginScanningTimer];
    [v5 cancel];

    v6 = [(SCATScannerManager *)self activeScannerDriver];
    [v6 pauseScanning];

    [(SCATScannerManager *)self setForceDisableScreenLock:0];
  }
}

- (void)addReasonToDisableScanning:(id)a3
{
  v4 = a3;
  v5 = [(SCATScannerManager *)self reasonsToDisableScanning];

  if (!v5)
  {
    v6 = +[NSMutableSet set];
    [(SCATScannerManager *)self setReasonsToDisableScanning:v6];
  }

  v7 = [(SCATScannerManager *)self reasonsToDisableScanning];
  v8 = [v7 containsObject:v4];

  if ((v8 & 1) == 0)
  {
    v9 = [(SCATScannerManager *)self reasonsToDisableScanning];
    v10 = [v9 count];

    if (!v10)
    {
      v11 = [(SCATScannerManager *)self activeScannerDriver];
      v12 = [v11 isActive];

      v13 = SWCHLogPauseResume();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
      if (v12)
      {
        if (v14)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Paused when reason to disable scanning came in.", buf, 2u);
        }

        [(SCATScannerManager *)self pauseScanning];
      }

      else
      {
        if (v14)
        {
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Did not pause when reason to disable scanning came in, because we were not scanning.", v16, 2u);
        }
      }

      [(SCATScannerManager *)self setDidPauseForReasonsToDisableScanning:v12];
    }

    v15 = [(SCATScannerManager *)self reasonsToDisableScanning];
    [v15 addObject:v4];
  }
}

- (void)removeReasonToDisableScanning:(id)a3
{
  v4 = a3;
  v5 = [(SCATScannerManager *)self reasonsToDisableScanning];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(SCATScannerManager *)self reasonsToDisableScanning];
    [v7 removeObject:v4];

    v8 = SWCHLogPauseResume();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(SCATScannerManager *)self reasonsToDisableScanning];
      v12 = 134218240;
      v13 = [v9 count];
      v14 = 1024;
      v15 = [(SCATScannerManager *)self didPauseForReasonsToDisableScanning];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Reasons to disable scanning count: %lu.  Did pause: %i", &v12, 0x12u);
    }

    v10 = [(SCATScannerManager *)self reasonsToDisableScanning];
    if ([v10 count])
    {
    }

    else
    {
      v11 = [(SCATScannerManager *)self didPauseForReasonsToDisableScanning];

      if (v11)
      {
        [(SCATScannerManager *)self beginScanningWithFocusContext:0];
      }
    }
  }
}

- (BOOL)_shouldIgnoreAllScannerControlMessages
{
  v2 = [(SCATScannerManager *)self reasonsToDisableScanning];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)useFocusContextOnResume:(id)a3
{
  [(SCATScannerManager *)self setFocusContextForResume:a3];

  [(SCATScannerManager *)self setDidSetFocusContextForResume:1];
}

- (BOOL)activateElement:(id)a3
{
  v4 = a3;
  if ([v4 isGroup])
  {
    v5 = [(SCATScannerManager *)self activeScannerDriver];
    v6 = [(SCATScannerManager *)self elementNavController];
    [v5 handleDrillInOnGroup:v4 elementManager:v6];

    v7 = [(SCATScannerManager *)self activeScannerDriver];
    v8 = [v7 focusContext];
    v9 = 1;
    [v8 setShouldResumeFromMenuDismissal:1];
  }

  else
  {
    v9 = [v4 scatPerformAction:2010];
  }

  v10 = [(SCATScannerManager *)self outputManager];
  [v10 playSound:1001];

  [(SCATScannerManager *)self _updateActiveElementManager];
  v11 = [(SCATScannerManager *)self activeElementManager];
  [v11 scannerManager:self didActivateElement:v4];

  if ([v4 scatBeginScanningFromSelfAfterActivation])
  {
    v12 = [(SCATScannerManager *)self activeElementManager];
    v13 = [SCATFocusContext focusContextWithElement:v4 elementManager:v12 selectBehavior:0 options:0];
    [(SCATScannerManager *)self beginScanningWithFocusContext:v13];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 scatUpdateValue];
  }

  if ((AXDeviceHasJindo() & v9) == 1)
  {
    if ([v4 scatIsAXElement])
    {
      v14 = [v4 uiElement];
      v15 = [v14 BOOLWithAXAttribute:2229];

      if ((v15 & 1) == 0)
      {
        AXPerformBlockOnMainThreadAfterDelay();
      }
    }
  }

  return v9;
}

- (void)selectElement:(id)a3
{
  [a3 scatCenterPoint];

  [(SCATScannerManager *)self selectElementAtPoint:?];
}

- (void)selectElementAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SCATScannerManager *)self gestureProvider];
  v5 = [AXNamedReplayableGesture tapGestureAtPoint:x, y];
  [v6 replayGesture:v5];
}

- (BOOL)shouldBypassShowingMenuForElement:(id)a3
{
  v4 = a3;
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 switchControlTapBehavior];

  v8 = v6 == 2 && (v7 = [v4 scatTraits], (kAXAdjustableTrait & ~v7) != 0) && -[SCATScannerManager itemMenuState](self, "itemMenuState") == 0;
  return v8;
}

- (void)_updateScanningStyle
{
  v5 = [(SCATScannerManager *)self _driverForScannerState];
  v3 = [(SCATScannerManager *)self activeScannerDriver];

  v4 = v5;
  if (v3 != v5)
  {
    [(SCATScannerManager *)self setActiveScannerDriver:v5];
    [(SCATScannerManager *)self beginScanningWithFocusContext:0];
    v4 = v5;
  }
}

- (void)_showSimpleBannerWithText:(id)a3
{
  v3 = a3;
  v6 = +[HNDHandManager sharedManager];
  v4 = [v6 mainDisplayManager];
  v5 = sub_100042B24(@"SWITCH_CONTROL_TITLE");
  [v4 showSimpleBannerWithTitle:v5 text:v3];
}

- (void)addPointerPointPickerForMovementNotifications:(id)a3
{
  v4 = a3;
  v5 = [(SCATScannerManager *)self _pointerPointPickersToNotify];
  [v5 addPointer:v4];
}

- (void)removePointerPointPickerForMovementNotifications:(id)a3
{
  v6 = a3;
  v4 = [(SCATScannerManager *)self _pointerPointPickersToNotify];
  if ([v4 count])
  {
    v5 = 0;
    while ([v4 pointerAtIndex:v5] != v6)
    {
      if (++v5 >= [v4 count])
      {
        goto LABEL_7;
      }
    }

    [v4 removePointerAtIndex:v5];
  }

LABEL_7:
  [v4 compact];
}

- (void)overrideMotionTrackerLookAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(SCATScannerManager *)self inputController];
  [v5 overrideMotionTrackerLookAtPoint:{x, y}];
}

- (void)_resetRecipeTimeoutIfApplicable
{
  v3 = +[NSThread currentThread];
  v4 = +[NSThread mainThread];

  if (v3 != v4)
  {
    _AXAssert();
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_exitRecipeOnTimeout" object:0];
  v5 = [(SCATScannerManager *)self currentRecipe];
  if (v5)
  {
    v6 = v5;
    v7 = [(SCATScannerManager *)self currentRecipe];
    [v7 timeout];
    v9 = v8;
    v10 = AXSwitchRecipeTimeoutNone;

    if (v9 != v10)
    {
      v11 = [(SCATScannerManager *)self currentRecipe];
      [v11 timeout];
      [(SCATScannerManager *)self performSelector:"_exitRecipeOnTimeout" withObject:0 afterDelay:?];
    }
  }
}

- (void)_exitRecipeOnTimeout
{
  v3 = [(SCATScannerManager *)self currentRecipe];

  if (!v3)
  {
    _AXAssert();
  }

  [(SCATScannerManager *)self setCurrentRecipe:0];

  [(SCATScannerManager *)self beginScanningWithFocusContext:0];
}

- (void)_applyLaunchRecipeUUID
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 switchControlLaunchRecipeUUID];

  if (v4)
  {
    v5 = +[AXSettings sharedInstance];
    v6 = [v5 switchControlRecipes];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [v12 uuid];
          v14 = [v3 switchControlLaunchRecipeUUID];
          v15 = [v13 isEqual:v14];

          if (v15)
          {
            [(SCATScannerManager *)self setCurrentRecipe:v12];
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (void)_setCurrentRecipe:(id)a3 shouldShowAlert:(BOOL)a4
{
  v21 = a3;
  v6 = +[NSThread currentThread];
  v7 = +[NSThread mainThread];

  if (v6 != v7)
  {
    v8 = _AXAssert();
  }

  v9 = v21;
  if (v21)
  {
    v10 = +[AXSettings sharedInstance];
    v11 = [v10 validateAndUpdateRecipeIfNeeded:v21];

    if (v11)
    {
      v9 = v21;
    }

    else
    {
      v12 = sub_100042B24(@"RECIPE_VALIDATION_FAILED_FORMAT");
      v13 = [(AXSwitchRecipe *)v21 name];
      v14 = [NSString stringWithFormat:v12, v13];
      [(SCATScannerManager *)self _showSimpleBannerWithText:v14];

      v9 = 0;
    }
  }

  if (self->_currentRecipe != v9)
  {
    v22 = v9;
    objc_storeStrong(&self->_currentRecipe, v9);
    v15 = [(SCATScannerManager *)self inputController];
    [v15 setRecipe:v22];

    if (v22 && ![(AXSwitchRecipe *)v22 shouldContinueScanning])
    {
      [(SCATScannerManager *)self addReasonToDisableScanning:@"Recipe"];
      [(SCATScannerManager *)self _updateScanningStyle];
      if (a4)
      {
        goto LABEL_14;
      }
    }

    else
    {
      [(SCATScannerManager *)self removeReasonToDisableScanning:@"Recipe"];
      [(SCATScannerManager *)self _updateScanningStyle];
      if (a4)
      {
        if (!v22)
        {
          v16 = +[HNDHandManager sharedManager];
          v17 = [v16 mainDisplayManager];
          v18 = sub_100042B24(@"RECIPE_DEACTIVATED");
          [v17 showSimpleAlertWithText:v18];
LABEL_15:

          goto LABEL_16;
        }

LABEL_14:
        v16 = +[HNDHandManager sharedManager];
        v17 = [v16 mainDisplayManager];
        v18 = sub_100042B24(@"RECIPE_ACTIVATED_FORMAT");
        v19 = [(AXSwitchRecipe *)v22 name];
        v20 = [NSString stringWithFormat:v18, v19];
        [v17 showSimpleAlertWithText:v20];

        goto LABEL_15;
      }
    }

LABEL_16:
    v8 = [(SCATScannerManager *)self _resetRecipeTimeoutIfApplicable];
    v9 = v22;
  }

  _objc_release_x1(v8, v9);
}

- (void)_showSimpleAlertForProfile:(id)a3
{
  v3 = a3;
  v8 = +[HNDHandManager sharedManager];
  v4 = [v8 mainDisplayManager];
  v5 = sub_100042B24(@"SWITCH_CONTROL_PROFILE_ALERT_TITLE");
  v6 = [v3 name];

  v7 = [NSString stringWithFormat:v5, v6];
  [v4 showSimpleAlertWithText:v7];
}

- (void)calibrateEyeTracking
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 switchControlOnDeviceEyeTrackingEnabled];

  if (v3)
  {
    v5 = +[HNDHandManager sharedManager];
    v4 = [v5 mainDisplayManager];
    [v4 setNeedsRecalibration:1];
  }
}

- (void)_handleAppSwitcherAction
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 toggleAppSwitcher];
}

- (void)_handleHomeAction
{
  if ((sub_1000424B4() & 1) == 0)
  {
    v2 = +[AXPISystemActionHelper sharedInstance];
    [v2 activateHomeButton];
  }
}

- (void)_handleNotificationCenterAction
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 toggleNotificationCenter];
}

- (void)_handleControlCenterAction
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 toggleControlCenter];
}

- (void)_handleSiriAction
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 activateSiri];
}

- (void)_handleVolumeDownAction
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 decreaseVolume];
}

- (void)_handleForceTouchAction
{
  y = CGPointZero.y;
  v4 = [(SCATScannerManager *)self menu];
  v5 = [v4 isVisible];

  if (v5)
  {
    v6 = [(SCATScannerManager *)self gestureProvider];
    [v6 startingScreenPointForGestures];
    x = v7;
    v10 = v9;

    v11 = [(SCATScannerManager *)self menu];
    [v11 hideWithCompletion:0];
  }

  else
  {
    v12 = [(SCATScannerManager *)self activeScannerDriver];
    v13 = [v12 focusContext];
    v11 = [v13 element];

    if (v11)
    {
      [v11 scatScreenPointForOperations];
      x = v14;
      v10 = v15;
    }

    else
    {
      v10 = y;
      x = CGPointZero.x;
    }
  }

  if (x != CGPointZero.x || v10 != y)
  {
    v18 = [(SCATScannerManager *)self gestureProvider];
    v17 = [AXNamedReplayableGesture forceTouchGestureAtPoint:x, v10];
    [v18 replayGesture:v17];
  }
}

- (void)_handleDictationAction
{
  v3 = [(SCATScannerManager *)self menu];
  v2 = [v3 keyboardApplication];
  [v2 scatPerformAction:2049];
}

- (void)_handleTripleClickAction
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 activateTripleClick];
}

- (void)_handleVolumeUpAction
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 increaseVolume];
}

- (void)_handleEscapeAction
{
  v17 = [(SCATScannerManager *)self currentElement];
  if ([v17 scatIsAXElement])
  {
    v3 = v17;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [(SCATScannerManager *)self menu];
  v6 = [v5 isVisible];

  if (v6)
  {
    v7 = [(SCATScannerManager *)self menu];
    [v7 hideWithCompletion:0];
  }

  else
  {
    v8 = [(SCATScannerManager *)self inputController];
    if ([v8 isTadmorInputSourceConnected] && (objc_msgSend(v17, "scatIsMemberOfGroup") & 1) != 0)
    {
      v9 = [v17 parentGroup];
      v10 = [v9 isRootGroup];

      if ((v10 & 1) == 0)
      {
        v11 = [(SCATScannerManager *)self activeScannerDriver];
        v12 = [v17 parentGroup];
        v13 = [(SCATScannerManager *)self elementNavController];
        [v11 handleDrillOutOnGroup:v12 elementManager:v13];

        goto LABEL_16;
      }
    }

    else
    {
    }

    if ([v4 canPerformEscape])
    {
      [v4 performAction:2013];
      goto LABEL_16;
    }

    v14 = +[HNDAccessibilityManager sharedManager];
    v7 = [v14 elementsForMatchingBlock:&stru_1001D7600];

    v15 = [v7 firstObject];
    if (v15)
    {
      v16 = v15;
      [v15 performAction:2013];
    }
  }

LABEL_16:
}

- (void)_handleScrollAction:(int64_t)a3
{
  if ((a3 - 215) >= 4)
  {
    v10 = SWCHLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10012B664(a3, v10);
    }
  }

  else
  {
    v4 = dword_1001BD530[a3 - 215];
    v5 = [(SCATScannerManager *)self menu];
    v6 = [v5 isVisible];

    if (v6)
    {
      v7 = [(SCATScannerManager *)self menu];
      [v7 hideWithCompletion:0];
    }

    v11 = [(SCATScannerManager *)self currentElement];
    v8 = [v11 scrollableElement];
    if ([v8 supportsAction:v4])
    {
      [v8 performAction:v4];
    }
  }
}

- (void)_handleCameraButton
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 pressCameraButton];
}

- (void)_handleCameraButtonLightPress
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 lightPressCameraButton];
}

- (void)_handleCameraButtonDoubleLightPress
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 doubleLightPressCameraButton];
}

- (void)_handleVisualIntelligence
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 openVisualIntelligence];
}

- (void)_handleActiveHoldAndDragAction
{
  v3 = [(SCATScannerManager *)self menu];
  v4 = [v3 isVisible];

  if (v4)
  {
    v5 = [(SCATScannerManager *)self menu];
    [v5 hideWithCompletion:0];

    v9 = [(SCATScannerManager *)self gestureProvider];
    v6 = [(SCATScannerManager *)self gestureProvider];
    [v6 startingScreenPointForGestures];
  }

  else
  {
    v9 = [(SCATScannerManager *)self gestureProvider];
    v6 = [(SCATScannerManager *)self pointPicker];
    [v6 pickedPointInDeviceCoordinates];
  }

  [v9 toggleActiveHoldAndDragGestureAtScreenPoint:-[SCATScannerManager currentDisplayID](self withDisplayID:{"currentDisplayID"), v7, v8}];
}

- (void)_handleAppleWatchRemoteScreen
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 toggleWatchRemoteScreen];
}

- (BOOL)canAdvertise
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 switchControlDeviceMenuItems];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    v8 = AXSSwitchControlMenuItemEnabledKey;
    v9 = AXSSwitchControlMenuItemTypeKey;
    v10 = AXSSwitchControlMenuItemDeviceInterDevice;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:v8];
        v14 = [v13 BOOLValue];

        v15 = [v12 objectForKeyedSubscript:v9];
        v16 = v15;
        if (v14)
        {
          v6 |= [v15 isEqualToString:v10];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

- (void)didConnectAsForwarderToDeviceWithName:(id)a3
{
  v4 = a3;
  v5 = sub_100042B24(@"CONNECTED_TO_RECEIVER_FORMAT");
  v6 = [NSString stringWithFormat:v5, v4];

  [(SCATScannerManager *)self _showSimpleBannerWithText:v6];
  [(SCATScannerManager *)self addReasonToDisableScanning:@"ForwardingActions"];
  if ((CPSetPowerAssertionWithIdentifier() & 1) == 0)
  {
    v7 = AXSSLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10012B708(v7);
    }
  }
}

- (void)didConnectAsReceiverWithSettings:(id)a3
{
  v3 = a3;
  if (!_AXSAssistiveTouchScannerEnabled())
  {
    _AXSAssistiveTouchScannerSetEnabled();
    v4 = +[AXSettings sharedInstance];
    [v4 setSwitchControlIsEnabledAsReceiver:1];
    if (([v4 assistiveTouchSwitchUsageConfirmed] & 1) == 0)
    {
      v5 = AXSSLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Applying forwarder device settings %@", &v8, 0xCu);
      }

      sub_100044950(v3);
      [v4 setAssistiveTouchSwitchUsageConfirmed:1];
    }
  }

  v6 = +[HNDAccessibilityManager sharedManager];
  [v6 resetElementFetcher];

  v7 = +[HNDEventManager sharedManager];
  [v7 wakeDeviceFromSleepIfNecessary];
}

- (void)didDisconnectAsForwarderFromDeviceWithName:(id)a3
{
  v4 = a3;
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Did disconnect as forwarder from device name: %{private}@.", buf, 0xCu);
  }

  if (_AXSAssistiveTouchScannerEnabled())
  {
    v6 = sub_100042B24(@"DISCONNECTED_FROM_RECEIVER_FORMAT");
    v7 = [NSString stringWithFormat:v6, v4];
    [(SCATScannerManager *)self _showSimpleBannerWithText:v7];
  }

  [(SCATScannerManager *)self removeReasonToDisableScanning:@"ForwardingActions"];
  if ((CPSetPowerAssertionWithIdentifier() & 1) == 0)
  {
    v8 = AXSSLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10012B74C(v8);
    }
  }
}

- (void)didDisconnectAsReceiver
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Did disconnect as receiver.", buf, 2u);
  }

  v4 = +[AXSettings sharedInstance];
  v5 = [v4 switchControlIsEnabledAsReceiver];

  if (v5)
  {
    v6 = +[AXSettings sharedInstance];
    [v6 setSwitchControlIsEnabledAsReceiver:0];

    _AXSAssistiveTouchScannerSetEnabled();
  }

  v7 = AXSSLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing any Remote Control type switches.", v8, 2u);
  }

  [(SCATScannerManager *)self _removeInterdeviceSwitches];
}

- (void)didBecomeIdle
{
  v2 = [(SCATScannerManager *)self delegate];
  [v2 stopIfAllowed];
}

- (void)_removeInterdeviceSwitches
{
  v2 = +[AXSettings sharedInstance];
  v6 = [v2 assistiveTouchSwitches];

  v3 = [v6 mutableCopy];
  v4 = [v6 objectsPassingTest:&stru_1001D7620];
  [v3 minusSet:v4];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchSwitches:v3];
}

- (void)_disableUserInterfaceClientForPotentialReceiver
{
  v3 = +[HNDHandManager sharedManager];
  v2 = [v3 mainDisplayManager];
  [v2 removeUserInterfaceClientEnabler:@"PotentialReceiver"];
}

- (void)highlightAsPotentialReceiverForDeviceWithName:(id)a3
{
  v4 = a3;
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_disableUserInterfaceClientForPotentialReceiver" object:0];
  v5 = +[HNDHandManager sharedManager];
  v6 = [v5 mainDisplayManager];
  [v6 addUserInterfaceClientEnabler:@"PotentialReceiver"];

  v7 = +[HNDEventManager sharedManager];
  [v7 wakeDeviceFromSleepIfNecessary];

  v8 = sub_100042B24(@"POTENTIAL_RECEIVER_MESSAGE_FORMAT");
  v9 = [NSString stringWithFormat:v8, v4];

  [(SCATScannerManager *)self _showSimpleBannerWithText:v9];

  [(SCATScannerManager *)self performSelector:"_disableUserInterfaceClientForPotentialReceiver" withObject:0 afterDelay:15.0];
}

- (void)_driver:(id)a3 outputAudioForContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCATScannerManager *)self areSoundEffectsEnabled];
  if (v7 && v8 && ([v7 shouldSuppressAudioOutput] & 1) == 0)
  {
    v9 = [v7 shouldPlayMenuSoundOnFocus];
    v10 = [(SCATScannerManager *)self outputManager];
    v11 = v10;
    if (v9)
    {
      v12 = 1002;
    }

    else
    {
      v12 = 1000;
    }

    [v10 playSound:v12];
  }

  if (-[SCATScannerManager isSpeechEnabled](self, "isSpeechEnabled") && ([v7 shouldSuppressAudioOutput] & 1) == 0)
  {
    v13 = [v7 element];
    v14 = [v13 scatSpeakableDescription];

    if ([v14 length])
    {
      v15 = [(SCATScannerManager *)self outputManager];
      v16 = [v15 scanningInterruptsSpeech];

      v17 = [(SCATScannerManager *)self outputManager];
      v18 = v17;
      if (v16)
      {
        [v17 outputScannerFocusContext:v7 completion:0];
      }

      else
      {
        [v6 outputManager:v17 willSpeakFocusContext:v7];

        v19 = [(SCATScannerManager *)self outputManager];
        objc_initWeak(&location, v19);

        v20 = [(SCATScannerManager *)self outputManager];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1000E5C38;
        v21[3] = &unk_1001D7670;
        v22 = v6;
        objc_copyWeak(&v24, &location);
        v23 = v7;
        [v20 outputScannerFocusContext:v23 completion:v21];

        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (void)driver:(id)a3 didFocusOnContext:(id)a4 oldContext:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 isFirstInSequence])
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = ![(SCATScannerManager *)self isGroupingEnabled];
  v12 = [(SCATScannerManager *)self menu];
  v13 = [v12 isVisible];

  if (v13)
  {
    v14 = [(SCATScannerManager *)self menu];
    v15 = [v14 element];
    [v8 setMenuElement:v15];
  }

  v16 = [(SCATScannerManager *)self cursorManager];
  [v16 updateWithFocusContext:v8 animated:0 options:v10 | v11];

  if ([(SCATScannerManager *)self isActive])
  {
    [(SCATScannerManager *)self _driver:v17 outputAudioForContext:v8];
  }

  [(SCATScannerManager *)self setFocusContextForResume:0];
  [(SCATScannerManager *)self setDidSetFocusContextForResume:0];
  [(SCATScannerManager *)self _notifyObserversScannerDidFocusOnContext:v8 oldContext:v9];
}

- (void)driverDidPause:(id)a3
{
  if ([(SCATScannerManager *)self _isScannerControlledByDriver:a3])
  {
    [(SCATScannerManager *)self hideUIContext:1];
    [(SCATScannerManager *)self _updateAudioSessionState];
  }

  [(SCATScannerManager *)self _notifyObserversScannerDidPause];
}

- (void)driverDidBecomeInactive:(id)a3
{
  if ([(SCATScannerManager *)self _isScannerControlledByDriver:a3])
  {
    [(SCATScannerManager *)self hideUIContext:1];
    [(SCATScannerManager *)self _updateAudioSessionState];
  }

  [(SCATScannerManager *)self _notifyObserversScannerDidBecomeInactive];
}

- (void)driverDidBecomeActive:(id)a3 didChange:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if ([(SCATScannerManager *)self _isScannerControlledByDriver:?])
  {
    [(SCATScannerManager *)self showUIContext:1];
    [(SCATScannerManager *)self _updateAudioSessionState];
    if (v4)
    {
      v6 = [(SCATScannerManager *)self currentFocusContext];
      [(SCATScannerManager *)self _driver:v7 outputAudioForContext:v6];

      [(SCATScannerManager *)self _notifyObserversScannerDidBecomeActive];
    }
  }
}

- (void)driver:(id)a3 indicateDwellScanningWillAbort:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  if ([(SCATScannerManager *)self _isScannerControlledByDriver:?])
  {
    v6 = [(SCATScannerManager *)self cursorManager];
    v7 = [v9 focusContext];
    if (v4)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    [v6 updateWithFocusContext:v7 animated:0 options:v8];
  }
}

- (void)actionHandlerForUIDidCancelPendingAction:(id)a3
{
  v4 = a3;
  v5 = [(SCATScannerManager *)self selectActionHandler];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [(SCATScannerManager *)self cursorManager];
    [v7 cancelSelectTimeoutAnimationIfNeeded];

    v8 = [(SCATScannerManager *)self autoScanningDriver];
    [v8 resumeAutoscanning:1];
  }
}

- (void)actionHandlerForUIWillFireAction:(id)a3
{
  v4 = a3;
  v5 = [(SCATScannerManager *)self selectActionHandler];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [(SCATScannerManager *)self cursorManager];
    [v7 cancelSelectTimeoutAnimationIfNeeded];

    v8 = [(SCATScannerManager *)self autoScanningDriver];
    [v8 resumeAutoscanning:1];
  }
}

- (void)actionHandlerForUI:(id)a3 willPerformDelayedActionOnContext:(id)a4 withCount:(unint64_t)a5
{
  v7 = a3;
  v8 = [(SCATScannerManager *)self selectActionHandler];
  v9 = [v7 isEqual:v8];

  if (a5 == 1 && v9)
  {
    v10 = [(SCATScannerManager *)self activeElementManager];
    [v10 hideIfNeeded:0];

    v11 = [(SCATScannerManager *)self autoScanningDriver];
    [v11 pauseAutoscanning];

    v13 = [(SCATScannerManager *)self cursorManager];
    v12 = [(SCATScannerManager *)self selectActionHandler];
    [v12 timeoutDuration];
    [v13 beginSelectTimeoutAnimation:?];
  }
}

- (BOOL)cursorManagerShouldHideMenuCursor:(id)a3
{
  v3 = [(SCATScannerManager *)self menu];
  v4 = [v3 shouldHideMenuCursor];

  return v4;
}

- (void)accessibilityManager:(id)a3 didReceiveEvent:(int64_t)a4 data:(id)a5
{
  v17 = a3;
  v8 = a5;
  if (a4 <= 5)
  {
    if (a4 <= 3)
    {
      if (a4 == 1)
      {
        [(SCATScannerManager *)self handleScreenChange:v8];
      }

      else if (a4 == 2)
      {
        [(SCATScannerManager *)self handleAlertDidAppear:v8];
      }

      goto LABEL_23;
    }

    [(SCATScannerManager *)self activeElementManager];
    if (a4 == 4)
      v12 = {;
      [v12 appTransitionDidOccur:self];
    }

    else
      v12 = {;
      [v12 firstResponderDidChange:self];
    }

LABEL_21:

    goto LABEL_23;
  }

  if (a4 > 9)
  {
    if (a4 == 10)
    {
      [(SCATScannerManager *)self handleAnnouncement:v8];
    }

    else if (a4 == 11)
    {
      [(SCATScannerManager *)self handleStopSpeaking:v8];
    }
  }

  else
  {
    if (a4 == 6)
    {
      v13 = [(SCATScannerManager *)self gestureProvider];
      [v13 orientationDidChange:self];

      v14 = [(SCATScannerManager *)self activeElementManager];
      [v14 orientationDidChange:self];

      v15 = [(SCATScannerManager *)self activeElementManager];
      v16 = [(SCATScannerManager *)self menu];

      if (v15 == v16)
      {
        goto LABEL_23;
      }

      v12 = [(SCATScannerManager *)self menu];
      [v12 orientationDidChange:self];
      goto LABEL_21;
    }

    if (a4 == 7)
    {
      v9 = [(SCATScannerManager *)self outputManager];
      v10 = [v9 areSoundEffectsEnabled];

      if (v10)
      {
        v11 = [(SCATScannerManager *)self outputManager];
        [v11 playSound:1006];
      }

      [(SCATScannerManager *)self _setCurrentRecipe:0 shouldShowAlert:0];
      [(SCATScannerManager *)self endScanning];
    }
  }

LABEL_23:
}

- (void)accessibilityManager:(id)a3 screenWillChange:(__CFData *)a4
{
  v5 = [(SCATScannerManager *)self activeElementManager:a3];
  [v5 screenWillChange:self];
}

- (int)_validatedSelectBehaviorForCurrentSelectBehavior:(int)a3 replacementElement:(id)a4
{
  v4 = a3;
  if ((a3 - 3) <= 1 && ![a4 isGroup])
  {
    return 0;
  }

  return v4;
}

- (void)handleAnnouncement:(id)a3
{
  v7 = a3;
  v4 = [(SCATScannerManager *)self outputManager];
  v5 = [v4 isSpeechEnabled];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v7 hasPrefix:@"AXAnnouncementType"] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", kAXAnnouncementCollaborationOccurredSound) & 1) == 0)
    {
      v6 = [(SCATScannerManager *)self outputManager];
      [v6 outputScannerAnnouncement:v7 completionBlock:0];
    }
  }
}

- (void)handleAlertDidAppear:(id)a3
{
  v4 = [(SCATScannerManager *)self activeElementManager];
  [v4 alertDidAppear:self];

  v5 = [(SCATScannerManager *)self outputManager];
  v6 = [v5 areSoundEffectsEnabled];

  if (v6)
  {
    v7 = [(SCATScannerManager *)self outputManager];
    [v7 playSound:1003];
  }
}

- (void)handleScreenChange:(id)a3
{
  v4 = a3;
  v5 = [(SCATScannerManager *)self outputManager];
  v6 = [v5 areSoundEffectsEnabled];

  if (v6)
  {
    v7 = [(SCATScannerManager *)self outputManager];
    [v7 playSound:1005];
  }

  v8 = [(SCATScannerManager *)self activeElementManager];
  [v8 screenDidChange:self data:v4];
}

- (void)handleStopSpeaking:(id)a3
{
  v4 = [(SCATScannerManager *)self outputManager];
  v5 = [v4 isSpeechEnabled];

  if (v5)
  {
    v6 = [(SCATScannerManager *)self outputManager];
    [v6 cancelSpeech];
  }
}

- (void)_updateMenuAfterElementFetchFoundNewElements:(BOOL)a3
{
  v3 = a3;
  if ([(SCATScannerManager *)self isActive]&& ([(SCATScannerManager *)self activeElementManager], v5 = objc_claimAutoreleasedReturnValue(), [(SCATScannerManager *)self menu], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v5 == v6))
  {
    v7 = [(SCATScannerManager *)self currentElement];
  }

  else
  {
    v7 = 0;
  }

  v18 = 0;
  v8 = [(SCATScannerManager *)self menu];
  v9 = [v8 updateAfterFetchWithCurrentlyScannedElement:v7 options:&v18];

  if (v9)
  {
    v10 = [(SCATScannerManager *)self currentFocusContext];
    v11 = -[SCATScannerManager _validatedSelectBehaviorForCurrentSelectBehavior:replacementElement:](self, "_validatedSelectBehaviorForCurrentSelectBehavior:replacementElement:", [v10 selectBehavior], v9);

    v12 = [(SCATScannerManager *)self menu];
    v13 = [SCATFocusContext focusContextWithElement:v9 elementManager:v12 selectBehavior:v11 options:v18];
    [(SCATScannerManager *)self continueScanningWithFocusContext:v13 foundNewElements:v3];
  }

  v14 = [(SCATScannerManager *)self currentFocusContext];
  v15 = [(SCATScannerManager *)self menu];
  v16 = [v15 element];
  [v14 setMenuElement:v16];

  v17 = [(SCATScannerManager *)self cursorManager];
  [v17 updateWithFocusContext:v14 animated:0 options:0];
}

- (void)accessibilityManager:(id)a3 didFetchElementsForEvent:(int64_t)a4 foundNewElements:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  if (!_AXSInUnitTestMode() || ([(SCATScannerManager *)self testAxManager], v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == v7))
  {
    v9 = [(SCATScannerManager *)self activeElementManager];
    [(SCATScannerManager *)self _updateActiveElementManager];
    v10 = [(SCATScannerManager *)self activeElementManager];

    if (v10)
    {
      v11 = [(SCATScannerManager *)self activeElementManager];
      v12 = [(SCATScannerManager *)self currentFocusContext];
      v13 = [(SCATScannerManager *)self activeElementManager];
      [v11 didFetchElements:self foundNewElements:v5 currentFocusContext:v12 didChangeActiveElementManager:v9 != v13];
    }

    else
    {
      v14 = [(SCATScannerManager *)self beginScanningTimer];
      [v14 cancel];

      v11 = [(SCATScannerManager *)self beginScanningTimer];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000E6D00;
      v24[3] = &unk_1001D3488;
      v24[4] = self;
      [v11 afterDelay:v24 processBlock:1.0];
    }

    v15 = [(SCATScannerManager *)self menu];
    v16 = [v15 isVisible];

    if (v16)
    {
      v17 = [(SCATScannerManager *)self menu];
      v18 = [v17 element];

      if (([v18 scatUpdatesMenu] & 1) != 0 || (v19 = objc_msgSend(v18, "scatTraits"), (kAXCausesPageTurnTrait & ~v19) == 0) && (-[SCATScannerManager axManager](self, "axManager"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "scannerElementMatchingElement:", v18), v21 = objc_claimAutoreleasedReturnValue(), v21, v20, !v21))
      {
        [(SCATScannerManager *)self _updateMenuAfterElementFetchFoundNewElements:v5];
      }
    }

    if (AXInPreboardScenario())
    {
      v22 = [(SCATScannerManager *)self axManager];
      v23 = [v22 hasZeroElements];

      if (v23)
      {
        AXPerformBlockOnMainThreadAfterDelay();
      }
    }
  }
}

- (void)accessibilityManager:(id)a3 nativeFocusElementDidChange:(id)a4
{
  v14 = a4;
  [a3 refreshElements];
  v6 = [(SCATScannerManager *)self menu];
  v7 = [v6 isWaitingToBePresented];

  if (v7)
  {
    v8 = [(SCATScannerManager *)self menu];
    [v8 presentWithElement:v14];

    v9 = [(SCATScannerManager *)self menu];
    [v9 setIsWaitingToBePresented:0];
  }

  v10 = [(SCATScannerManager *)self activeElementManager];
  v11 = [(SCATScannerManager *)self menu];

  if (v10 == v11)
  {
    v12 = [(SCATScannerManager *)self menu];
    [v12 nativeFocusElementDidChange:v14];

    v13 = [(SCATScannerManager *)self activeScannerDriver];
    [v13 tickleIdleTimer];
  }
}

- (void)accessibilityManager:(id)a3 updateElementVisuals:(id)a4
{
  v4 = [(SCATScannerManager *)self updateElementVisualsCoalescer:a3];
  [v4 notifyUpdateElementVisualsEventDidOccur];
}

- (void)accessibilityManager:(id)a3 applicationWasActivated:(id)a4
{
  v6 = a4;
  [a3 refreshElements];
  v7 = [(SCATScannerManager *)self activeElementManager];
  v8 = [(SCATScannerManager *)self menu];

  if (v7 == v8)
  {
    v9 = [(SCATScannerManager *)self menu];
    [v9 hideWithCompletion:0];

    [(SCATScannerManager *)self endScanning];
    v10 = dispatch_get_global_queue(9, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000E6FBC;
    v11[3] = &unk_1001D36E8;
    v11[4] = self;
    v12 = v6;
    dispatch_async(v10, v11);
  }
}

- (void)_waitForApplication:(id)a3
{
  v3 = a3;
  v24 = +[NSDate date];
  v4 = 0;
  while (1)
  {
    v5 = [v4 bundleId];
    v6 = [v3 valueForKey:@"bundleID"];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      break;
    }

    v8 = +[AXElement systemWideElement];
    v9 = [v8 systemApplication];
    v10 = [v9 currentApplications];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v25 = v4;
      v14 = *v29;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v17 = [v16 bundleId];
          v18 = [v3 valueForKey:@"bundleID"];
          v19 = [v17 isEqualToString:v18];

          if (v19)
          {
            v4 = v16;

            goto LABEL_13;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v4 = v25;
    }

LABEL_13:

    [v24 timeIntervalSinceNow];
    v21 = v20;

    if (v21 > 2.0)
    {
      goto LABEL_16;
    }
  }

  [v4 nativeFocusElement];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E726C;
  block[3] = &unk_1001D36E8;
  v27 = block[4] = self;
  v22 = v27;
  dispatch_async(&_dispatch_main_q, block);

LABEL_16:
}

- (void)_updateElementVisuals
{
  v10 = [(SCATScannerManager *)self activeScannerDriver];
  v3 = [v10 focusContext];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 elementManager];
    v6 = [(SCATScannerManager *)self menu];
    if (v5 == v6)
    {
      [v4 menuElement];
    }

    else
    {
      [v4 element];
    }
    v7 = ;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [v8 clearCachedFrame:1 cachedVisibleFrame:1];
      [v8 updateCache:2003];
      [v8 updateCache:2042];
    }

    v9 = [(SCATScannerManager *)self cursorManager];
    [v9 updateWithFocusContext:v4 animated:0 options:0];
  }
}

- (void)didBeginLongPressForInputController:(id)a3
{
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 assistiveTouchLongPressPauseScanningEnabled];

  if (v5)
  {
    v6 = [(SCATScannerManager *)self autoScanningDriver];
    [v6 pauseAutoscanning];
  }
}

- (void)didEndLongPressForInputController:(id)a3
{
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 assistiveTouchLongPressPauseScanningEnabled];

  if (v5)
  {
    v7 = [(SCATScannerManager *)self autoScanningDriver];
    v6 = [(SCATScannerManager *)self selectActionHandler];
    [v7 resumeAutoscanning:{objc_msgSend(v6, "isPending") ^ 1}];
  }
}

- (void)inputController:(id)a3 didReceiveAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SCATScannerManager *)self setCurrentAction:v7];
  v8 = +[HNDHandManager sharedManager];
  [v8 notifyUserEventOccurred];

  if (![(SCATScannerManager *)self isSystemSleeping])
  {
    v10 = [(SCATScannerManager *)self selectActionHandler];
    v11 = [v10 delegate];
    if ([v11 isEqual:self])
    {
      v12 = [(SCATScannerManager *)self selectActionHandler];
      v13 = [v12 actionCount];

      if (v13)
      {
        if ([v7 action] == 103)
        {
          v14 = [(SCATScannerManager *)self selectActionHandler];
          v15 = v14;
        }

        else
        {
          v19 = [v7 action];
          v14 = [(SCATScannerManager *)self selectActionHandler];
          v15 = v14;
          if (v19 != 109)
          {
            [v14 cancelPendingAction];
            goto LABEL_22;
          }
        }

        [v14 notifyDidReceiveAction:self];
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
    }

    if ([(SCATScannerManager *)self isInactive])
    {
      v15 = [(SCATScannerManager *)self _driverForScannerState];
      [(SCATScannerManager *)self setActiveScannerDriver:v15];
      [(SCATScannerManager *)self beginScanningWithFocusContext:0];
      goto LABEL_22;
    }

    if ([(SCATScannerManager *)self isPaused])
    {
      [(SCATScannerManager *)self resumeScanning];
LABEL_23:
      v9 = [HNDAccessibilityManager sharedManager:v46];
      [v9 userDidPerformSwitchAction];
      goto LABEL_24;
    }

    v16 = [(SCATScannerManager *)self activeScannerDriver];
    if (objc_opt_respondsToSelector())
    {
      v17 = [(SCATScannerManager *)self activeScannerDriver];
      v18 = [v17 handleInputAction:v7];

      if (v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v20 = [v7 shortcutIdentifier];

    if (v20)
    {
      v21 = +[AXSiriShortcutsManager sharedManager];
      v22 = [v7 shortcutIdentifier];
      v23 = [v21 shortcutForIdentifier:v22];

      v24 = +[AXSiriShortcutsManager sharedManager];
      [v24 performShortcut:v23];

LABEL_20:
      goto LABEL_23;
    }

    v25 = [v7 action];
    if (v25 > 199)
    {
      if (v25 <= 299)
      {
        switch(v25)
        {
          case 200:
            [(SCATScannerManager *)self _handleAppSwitcherAction];
            break;
          case 201:
            [(SCATScannerManager *)self _handleHomeAction];
            break;
          case 202:
            [(SCATScannerManager *)self _handleNotificationCenterAction];
            break;
          case 203:
            [(SCATScannerManager *)self _handleSiriAction];
            break;
          case 204:
            [(SCATScannerManager *)self _handleVolumeDownAction];
            break;
          case 205:
            [(SCATScannerManager *)self _handleVolumeUpAction];
            break;
          case 206:
            [(SCATScannerManager *)self _handleForceTouchAction];
            break;
          case 207:
            [(SCATScannerManager *)self _handleDictationAction];
            break;
          case 208:
            [(SCATScannerManager *)self _handleTripleClickAction];
            break;
          case 209:
            [(SCATScannerManager *)self _handleControlCenterAction];
            break;
          case 210:
            [(SCATScannerManager *)self _handleEscapeAction];
            break;
          case 211:
            [(SCATScannerManager *)self _handleCameraButton];
            break;
          case 212:
            [(SCATScannerManager *)self _handleCameraButtonLightPress];
            break;
          case 213:
            [(SCATScannerManager *)self _handleCameraButtonDoubleLightPress];
            break;
          case 215:
          case 216:
          case 217:
          case 218:
            -[SCATScannerManager _handleScrollAction:](self, "_handleScrollAction:", [v7 action]);
            break;
          default:
            goto LABEL_83;
        }

        goto LABEL_23;
      }

      if (v25 <= 303)
      {
        if (v25 > 301)
        {
          if (v25 == 302)
          {
            v31 = +[AXElement systemWideElement];
            [v31 systemPressTVHomeButton];
          }

          else
          {
            v31 = +[AXElement systemWideElement];
            [v31 systemPressTVPlayPauseButton];
          }
        }

        else if (v25 == 300)
        {
          v31 = +[AXElement systemWideElement];
          [v31 systemPressTVSelectButton];
        }

        else
        {
          v31 = +[AXElement systemWideElement];
          [v31 systemPressTVMenuButton];
        }
      }

      else if (v25 <= 305)
      {
        if (v25 == 304)
        {
          v31 = +[AXElement systemWideElement];
          [v31 systemPressTVUpButton];
        }

        else
        {
          v31 = +[AXElement systemWideElement];
          [v31 systemPressTVDownButton];
        }
      }

      else
      {
        switch(v25)
        {
          case 306:
            v31 = +[AXElement systemWideElement];
            [v31 systemPressTVLeftButton];
            break;
          case 307:
            v31 = +[AXElement systemWideElement];
            [v31 systemPressTVRightButton];
            break;
          case 400:
            [(SCATScannerManager *)self _handleActiveHoldAndDragAction];
            goto LABEL_23;
          default:
            goto LABEL_83;
        }
      }

LABEL_86:

      goto LABEL_23;
    }

    if (v25 > 104)
    {
      if (v25 <= 106)
      {
        if (v25 != 105)
        {
          [(SCATScannerManager *)self endScanning];
          goto LABEL_23;
        }

        LOBYTE(v46) = 1;
        _AXLogWithFacility();
        v34 = [(SCATScannerManager *)self activeScannerDriver:v46];
        v15 = [v34 focusContext];

        v27 = [(SCATScannerManager *)self activeScannerDriver];
        v28 = v27;
        v29 = v15;
        v30 = 1;
        goto LABEL_79;
      }

      switch(v25)
      {
        case 'k':
          v31 = [(SCATScannerManager *)self menu];
          [v31 presentSiriShortcutsMenu];
          goto LABEL_86;
        case 'l':
          [(SCATScannerManager *)self _handleAppleWatchRemoteScreen];
          goto LABEL_23;
        case 'm':
LABEL_52:
          [(SCATScannerManager *)self beginScanningWithFocusContext:0];
          goto LABEL_23;
      }
    }

    else
    {
      if (v25 > 101)
      {
        if (v25 == 102)
        {
          v38 = [(SCATScannerManager *)self activeScannerDriver];
          v23 = [v38 focusContext];

          v39 = [(SCATScannerManager *)self autoScanningDriver];
          [(SCATScannerManager *)self setActiveScannerDriver:v39];

          [(SCATScannerManager *)self beginScanningWithFocusContext:v23];
          goto LABEL_20;
        }

        if (v25 != 103)
        {
          LOBYTE(v46) = 1;
          _AXLogWithFacility();
          v26 = [(SCATScannerManager *)self activeScannerDriver:v46];
          v15 = [v26 focusContext];

          v27 = [(SCATScannerManager *)self activeScannerDriver];
          v28 = v27;
          v29 = v15;
          v30 = 0;
LABEL_79:
          v35 = [v27 nextFocusContextFromContext:v29 inDirection:v30 didWrap:0];

          v36 = [(SCATScannerManager *)self manualScanningDriver];
          [(SCATScannerManager *)self setActiveScannerDriver:v36];

          v37 = [(SCATScannerManager *)self activeScannerDriver];
          [v37 beginScanningWithFocusContext:v35];

          goto LABEL_22;
        }

        goto LABEL_52;
      }

      if (v25 == 100)
      {
        goto LABEL_52;
      }

      if (v25 == 101)
      {
        v32 = +[AXSettings sharedInstance];
        v33 = [v32 switchControlHasEmptyTopLevelMenu];

        if (v33)
        {
          v51 = v6;
          AXPerformBlockAsynchronouslyOnMainThread();

          goto LABEL_23;
        }

        v40 = [(SCATScannerManager *)self menu];
        v41 = [v40 isVisible];

        if (!v41)
        {
          v42 = [(SCATScannerManager *)self activeScannerDriver];
          v15 = [v42 focusContext];

          v43 = [v15 element];

          v44 = [(SCATScannerManager *)self menu];
          if (v43)
          {
            v45 = [v15 element];
            [v44 presentWithElement:v45];
          }

          else
          {
            v45 = [(SCATScannerManager *)self pointPicker];
            [v44 presentWithPointPicker:v45];
          }

          goto LABEL_22;
        }

        v31 = [(SCATScannerManager *)self menu];
        [v31 hideWithCompletion:&stru_1001D7690];
        goto LABEL_86;
      }
    }

LABEL_83:
    [v7 action];
    v15 = SCATActionDescription();
    v49 = v15;
    v50 = self;
    v47 = @"Unable to handle unknown action: %@ (%@). manager:%@";
    v48 = v7;
    LOBYTE(v46) = 1;
    _AXLogWithFacility();
    goto LABEL_22;
  }

  v9 = +[HNDEventManager sharedManager];
  [v9 wakeDeviceFromSleepIfNecessary];
LABEL_24:
}

- (void)inputController:(id)a3 didReceiveRecipeActionForMappingAtIndex:(unint64_t)a4 isLongPressAction:(BOOL)a5
{
  v5 = a5;
  v26 = a3;
  [(SCATScannerManager *)self _resetRecipeTimeoutIfApplicable];
  v8 = [v26 recipe];
  v9 = [v8 mappings];
  v10 = [v9 objectAtIndexedSubscript:a4];

  if (v5)
  {
    [v10 longPressAction];
  }

  else
  {
    [v10 action];
  }
  v11 = ;
  if (!v11)
  {
    v24 = a4;
    v25 = v5;
    _AXAssert();
  }

  if ([v11 isEqualToString:{AXSwitchRecipeMappingActionSelect, v24, v25}])
  {
    v12 = [SCATActionItem fromAction:103];
    [(SCATScannerManager *)self inputController:v26 didReceiveAction:v12];
LABEL_16:

    goto LABEL_17;
  }

  if ([v11 isEqualToString:AXSwitchRecipeMappingActionExit])
  {
    [(SCATScannerManager *)self setCurrentRecipe:0];
    [(SCATScannerManager *)self beginScanningWithFocusContext:0];
    goto LABEL_17;
  }

  if ([v11 isEqualToString:AXSwitchRecipeMappingActionCenterTap])
  {
    v13 = objc_alloc_init(AXCenterTapReplayableGesture);
LABEL_15:
    v12 = v13;
    v16 = [(SCATScannerManager *)self gestureProvider];
    [v16 replayGesture:v12];

    goto LABEL_16;
  }

  v14 = [v11 isEqualToString:AXSwitchRecipeMappingActionRightToLeftSwipe];
  v15 = AXSwitchRecipeMappingActionLeftToRightSwipe;
  if ((v14 & 1) != 0 || [v11 isEqualToString:AXSwitchRecipeMappingActionLeftToRightSwipe])
  {
    v13 = [[AXPageTurningReplayableGesture alloc] initForLeftToRightSwipe:{objc_msgSend(v11, "isEqualToString:", v15)}];
    goto LABEL_15;
  }

  if (![v11 isEqualToString:AXSwitchRecipeMappingGameControlButtonPress])
  {
    if (v5)
    {
      [v10 longPressGesture];
    }

    else
    {
      [v10 gesture];
    }
    v13 = ;
    goto LABEL_15;
  }

  v17 = [v10 gameControlButtonPress];
  v18 = +[AXElement systemWideElement];
  v19 = [v18 systemApplication];
  v20 = [v19 currentApplications];
  v21 = [v20 firstObject];

  v22 = [v21 uiElement];
  v23 = [v17 dictionaryRepresentation];
  [v22 performAXAction:7000 withValue:v23];

LABEL_17:
}

- (void)inputController:(id)a3 didReceiveRecipeHoldAtPoint:(CGPoint)a4 isDown:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  [(SCATScannerManager *)self _resetRecipeTimeoutIfApplicable];
  v9 = [(SCATScannerManager *)self gestureProvider];
  [v9 performHoldAtPoint:v5 isDown:{x, y}];
}

- (id)userInterfaceClientForInputController:(id)a3
{
  v3 = +[HNDHandManager sharedManager];
  v4 = [v3 mainDisplayManager];
  v5 = [v4 userInterfaceClient];

  return v5;
}

- (void)performSysdiagnoseForInputController:(id)a3
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Performing sysdiagnose.", v4, 2u);
  }

  [Libsysdiagnose sysdiagnoseWithMetadata:&off_1001E5930 onCompletion:&stru_1001D76D0];
}

- (void)inputController:(id)a3 didReceivePoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(SCATScannerManager *)self pointPicker];
  [v8 moveToPoint:{x, y}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(SCATScannerManager *)self _pointerPointPickersToNotify];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (v14)
        {
          [v14 moveToPoint:{x, y}];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  [(SCATScannerManager *)self _notifyObserversInputController:v7 didReceivePoint:x, y];
}

- (void)inputController:(id)a3 didUpdateSignalQuality:(int64_t)a4
{
  if (![(SCATScannerManager *)self scanningMode])
  {
    v6 = [(SCATScannerManager *)self cursorManager];
    [v6 didUpdateSignalQuality:a4];
  }
}

- (void)inputController:(id)a3 didReceiveItemSelectionIndex:(int64_t)a4
{
  v5 = [(SCATScannerManager *)self activeScannerDriver];
  [v5 selectItemWithIndex:a4];
}

- (void)inputController:(id)a3 didReceiveMovementDelta:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  if ([(SCATScannerManager *)self scanningMode]== 6)
  {
    [(SCATScannerManager *)self _tadmorNewPickedPointWithDelta:x, y];
    v8 = v7;
    v10 = v9;
    v11 = [(SCATScannerManager *)self pointPicker];
    [v11 moveToPoint:{v8, v10}];
  }
}

- (void)inputController:(id)a3 showAlert:(id)a4
{
  v4 = a4;
  v5 = SWCHLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Showing alert with message: %@.", &v8, 0xCu);
  }

  v6 = +[HNDHandManager sharedManager];
  v7 = [v6 mainDisplayManager];
  [v7 showBubbleNotificationWithError:v4 duration:1.84467441e19];
}

- (void)inputController:(id)a3 shouldHideAlerts:(BOOL)a4
{
  if (a4)
  {
    v4 = SWCHLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Hiding alerts.", v7, 2u);
    }

    v5 = +[HNDHandManager sharedManager];
    v6 = [v5 mainDisplayManager];
    [v6 hideBubbleNotification];
  }
}

- (CGPoint)_tadmorNewPickedPointWithDelta:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = +[UIScreen mainScreen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = [(SCATScannerManager *)self pointPicker];
  [v11 lastReceivedPoint];
  v13 = v12;
  v15 = v14;

  v16 = fmax(fmin(v8, x + v13), 0.0);
  v17 = fmax(fmin(v10, y + v15), 0.0);
  result.y = v17;
  result.x = v16;
  return result;
}

- (BOOL)shouldUseCameraPointPicker
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 switchControlUseCameraForPointMode];

  return v3;
}

- (void)inputControllerPointPickerInterrupted:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 assistiveTouchScanningMode] == 3)
  {
  }

  else
  {
    v4 = +[AXSettings sharedInstance];
    v5 = [v4 assistiveTouchScanningMode];

    if (v5 != 5)
    {
      return;
    }
  }

  v6 = +[AXSettings sharedInstance];
  [v6 setAssistiveTouchScanningMode:0];
}

- (void)menu:(id)a3 showAlternateKeysForKey:(id)a4
{
  v5 = a4;
  v6 = [(SCATScannerManager *)self alternateKeysManager];
  [v6 showAlternateKeysForKey:v5];
}

- (void)menu:(id)a3 showTypingCandidates:(id)a4
{
  v5 = a4;
  v6 = [(SCATScannerManager *)self candidateBarManager];
  [v6 setTypingCandidates:v5];
}

- (CGRect)menu:(id)a3 rectToClearForFingersWithGestureSheet:(BOOL)a4
{
  v4 = a4;
  v5 = [(SCATScannerManager *)self gestureProvider];
  [v5 rectToClearForFingersWithGestureSheet:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)gesturesSheetForMenu:(id)a3
{
  v3 = [(SCATScannerManager *)self gestureProvider];
  v4 = [v3 gesturesSheet];

  return v4;
}

- (void)didPressScreenChangingButtonInMenu:(id)a3
{
  v4 = [(SCATScannerManager *)self activeElementManager];
  [v4 screenChangingButtonWasPressed:self];
}

- (id)exitActionElementForFingersInMenu:(id)a3
{
  v3 = [(SCATScannerManager *)self gestureProvider];
  v4 = [v3 elementForFingers];

  return v4;
}

- (void)menu:(id)a3 activateProfile:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v5 = +[AXSettings sharedInstance];
    [v5 setSwitchControlSelectedProfile:v6];

    [(SCATScannerManager *)self _showSimpleAlertForProfile:v6];
  }
}

- (BOOL)_isPostScanningMenu:(id)a3
{
  v3 = [a3 screenPoint];
  v4 = v3 == 0;

  return v4;
}

- (void)menu:(id)a3 showScrollViewPickerForScrollViews:(id)a4 elementsToScroll:(id)a5 scrollAction:(int)a6
{
  v6 = *&a6;
  v9 = a5;
  v10 = a4;
  v11 = [(SCATScannerManager *)self scrollViewPickerManager];

  if (!v11)
  {
    v12 = objc_alloc_init(SCATScrollViewPickerManager);
    [(SCATScannerManager *)self setScrollViewPickerManager:v12];
  }

  v13 = [(SCATScannerManager *)self scrollViewPickerManager];
  [v13 setScrollViews:v10];

  v14 = [(SCATScannerManager *)self scrollViewPickerManager];
  [v14 setElementsToScroll:v9];

  v15 = [(SCATScannerManager *)self scrollViewPickerManager];
  [v15 setScrollAction:v6];
}

- (BOOL)canSearchForControllableDevicesWithMenu:(id)a3
{
  v3 = [(SCATScannerManager *)self interDeviceCommunicator];
  v4 = [v3 canSearch];

  return v4;
}

- (void)searchForControllableDevicesWithMenu:(id)a3
{
  v3 = [(SCATScannerManager *)self interDeviceCommunicator];
  [v3 search];
}

- (BOOL)canReturnControlToForwarderDevice:(id)a3
{
  v3 = [(SCATScannerManager *)self interDeviceCommunicator];
  v4 = [v3 isReceivingSwitchEvents];

  return v4;
}

- (void)returnControlToForwarderDevice:(id)a3
{
  v3 = [(SCATScannerManager *)self interDeviceCommunicator];
  [v3 stop];
}

- (void)menu:(id)a3 speakAnnouncement:(id)a4 completionBlock:(id)a5
{
  v9 = a4;
  v7 = a5;
  if ([(SCATScannerManager *)self isSpeechEnabled])
  {
    v8 = [(SCATScannerManager *)self outputManager];
    [v8 outputScannerAnnouncement:v9 completionBlock:v7];
  }

  else if (v7)
  {
    v7[2](v7, 0);
  }
}

- (void)menu:(id)a3 playSoundEffect:(int)a4
{
  v4 = *&a4;
  if ([(SCATScannerManager *)self areSoundEffectsEnabled])
  {
    v6 = [(SCATScannerManager *)self outputManager];
    [v6 playSound:v4];
  }
}

- (void)menuDidDisappear:(id)a3
{
  v15 = a3;
  v4 = [(SCATScannerManager *)self activeScannerDriver];
  v5 = [v4 focusContext];

  [(SCATScannerManager *)self _updateActiveElementManager];
  v6 = [(SCATScannerManager *)self activeElementManager];
  v7 = [(SCATScannerManager *)self pointPicker];

  v8 = +[AXSettings sharedInstance];
  v9 = [v8 switchControlScanAfterTapLocation];

  if (v9 && [v5 shouldResumeFromMenuDismissal] && v6 != v7)
  {
    v10 = [v5 element];
    v11 = [(SCATScannerManager *)self activeElementManager];
    v12 = [SCATFocusContext focusContextWithElement:v10 elementManager:v11 selectBehavior:0 options:0];
  }

  else
  {
    v10 = [(SCATScannerManager *)self activeElementManager];
    v11 = [v15 element];
    v12 = [v10 nextFocusContextAfterDismissingMenuForElement:v11];
  }

  v13 = v12;

  [(SCATScannerManager *)self beginScanningWithFocusContext:v13];
  if ([(SCATScannerManager *)self itemMenuState])
  {
    v14 = [v15 element];

    if (v14)
    {
      if ([(SCATScannerManager *)self itemMenuState]== 1)
      {
        [(SCATScannerManager *)self setItemMenuState:0];
      }
    }
  }
}

- (void)menuWillBeginTransition:(id)a3
{
  v3 = [(SCATScannerManager *)self cursorManager];
  [v3 hideCursor:1 animated:0];
}

- (void)menuDidFinishTransition:(id)a3
{
  [(SCATScannerManager *)self beginScanningWithFocusContext:0];
  v4 = [(SCATScannerManager *)self cursorManager];
  [v4 hideCursor:0 animated:0];
}

- (void)shouldStartScanningGestureProvider:(id)a3
{
  if ([(SCATScannerManager *)self isActive])
  {

    [(SCATScannerManager *)self beginScanningWithFocusContext:0];
  }
}

- (void)shouldEndScanningGestureProvider:(id)a3
{
  if ([(SCATScannerManager *)self isActive])
  {

    [(SCATScannerManager *)self beginScanningWithFocusContext:0];
  }
}

- (id)contentViewForGestureProvider:(id)a3
{
  v4 = [(SCATScannerManager *)self currentDisplayID];

  return [(SCATScannerManager *)self scatUIContextForDisplayID:v4];
}

- (void)gestureProvider:(id)a3 shouldResetScanningFromElement:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(SCATScannerManager *)self activeElementManager];

  if (v7 == v9)
  {
    if (v6)
    {
      v8 = [SCATFocusContext focusContextWithElement:v6 elementManager:v9 selectBehavior:0 options:0];
      [(SCATScannerManager *)self beginScanningWithFocusContext:v8];
    }

    else
    {
      [(SCATScannerManager *)self beginScanningWithFocusContext:0];
    }
  }
}

- (void)didChooseCreateCustomGestureFromGestureProvider:(id)a3
{
  v4 = +[HNDEventManager sharedManager];
  [v4 openCreateCustomGestureForSCAT];

  v5 = [(SCATScannerManager *)self menu];
  [v5 hideWithCompletion:0];

  v6 = [(SCATScannerManager *)self activeElementManager];
  [v6 screenChangingButtonWasPressed:self];
}

- (void)pointPicker:(id)a3 didPickPoint:(CGPoint)a4
{
  v5 = a3;
  v6 = [(SCATScannerManager *)self pointPicker];
  [v6 pickedPointInDeviceCoordinates];
  v7 = [(SCATScannerManager *)self _focusContextAtPoint:?];

  v8 = [(SCATScannerManager *)self menu];
  v9 = [v8 isVisible];

  if (v9)
  {
    v10 = [(SCATScannerManager *)self menu];
    v11 = [v10 element];
    [v7 setMenuElement:v11];
  }

  v12 = [(SCATScannerManager *)self cursorManager];
  [v12 updateWithFocusContext:v7 animated:0 options:1];

  if (!v7)
  {
    v13 = +[AXSettings sharedInstance];
    [v13 switchControlAutoTapTimeout];
    v15 = v14;

    if (v15 != 0.0)
    {
      v16 = +[HNDHandManager sharedManager];
      v17 = [v16 fingerController];

      [(SCATScannerManager *)self _startingPointForGesturesForPointPicker:v5];
      v18 = [AXPIFingerModel fingerModelForLocation:?];
      v30 = v18;
      v19 = [NSArray arrayWithObjects:&v30 count:1];
      [v17 showFingerModels:v19 animated:0 startPointForAnimation:{CGPointZero.x, CGPointZero.y}];

      v20 = +[AXSettings sharedInstance];
      [v20 switchControlAutoTapTimeout];
      [v17 animateToTapWithDuration:?];
    }
  }

  v21 = [(SCATScannerManager *)self currentAction];
  v22 = [v21 action];

  if (v22 == 101)
  {
    v23 = [(SCATScannerManager *)self menu];
    v24 = [v23 isVisible];

    if (v24)
    {
      v25 = [(SCATScannerManager *)self menu];
      [v25 hideWithCompletion:&stru_1001D76F0];
    }

    v26 = [v7 element];

    v27 = [(SCATScannerManager *)self menu];
    if (v26)
    {
      v28 = [v7 element];
      [v27 presentWithElement:v28];
    }

    else
    {
      v28 = [(SCATScannerManager *)self pointPicker];
      [v27 presentWithPointPicker:v28];
    }
  }

  else
  {
    if (v22 == 100)
    {
      [(SCATScannerManager *)self activateActionHandler];
    }

    else
    {
      [(SCATScannerManager *)self selectActionHandler];
    }
    v27 = ;
    [v27 notifyDidReceiveAction:self];
  }

  v29 = [(SCATScannerManager *)self cursorManager];
  [v29 updateWithFocusContext:0 animated:0 options:0];
}

- (void)pointPicker:(id)a3 didSweepIntoFocusContext:(id)a4 isRefiningPoint:(BOOL)a5
{
  v10 = a4;
  v6 = [(SCATScannerManager *)self menu];
  v7 = [v6 isVisible];

  if ((v7 & 1) == 0)
  {
    if ([(SCATScannerManager *)self highlightFocusContext])
    {
      v8 = [(SCATScannerManager *)self cursorManager];
      [v8 updateWithFocusContext:v10 animated:0 options:1];
    }

    if (v10 && [(SCATScannerManager *)self isActive]&& [(SCATScannerManager *)self areSoundEffectsEnabled])
    {
      v9 = [(SCATScannerManager *)self outputManager];
      [v9 playSound:1000];
    }
  }
}

- (void)pointPicker:(id)a3 didSweepOutOfFocusContext:(id)a4 isRefiningPoint:(BOOL)a5
{
  v6 = [(SCATScannerManager *)self menu:a3];
  v7 = [v6 isVisible];

  if ((v7 & 1) == 0 && [(SCATScannerManager *)self highlightFocusContext])
  {
    v8 = [(SCATScannerManager *)self cursorManager];
    [v8 updateWithFocusContext:0 animated:1 options:0];
  }
}

- (BOOL)pointPicker:(id)a3 pauseForNumberOfCycles:(unint64_t)a4
{
  v5 = [(SCATScannerManager *)self activeScannerDriver];
  LOBYTE(a4) = [v5 pauseScanningForPointPickerNumberOfCycles:a4];

  return a4;
}

- (void)pointPicker:(id)a3 didFinishDwellingOnPoint:(CGPoint)a4
{
  v5 = [(SCATScannerManager *)self _dwellSwitchAssignedAction:a3];
  if (v5)
  {
    v6 = [SCATActionItem fromAction:v5];
    [(SCATScannerManager *)self inputController:0 didReceiveAction:v6];
  }
}

- (void)_updateCameraPointPickerSwitchesCache
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchCameraPointPickerSwitches];
  [(SCATScannerManager *)self setCachedCameraPointPickerSwitches:v4];

  v5 = [(SCATScannerManager *)self pointPicker];
  objc_opt_class();
  LOBYTE(v4) = objc_opt_isKindOfClass();

  if (v4)
  {
    v6 = [(SCATScannerManager *)self _dwellSwitchAssignedAction]!= 0;
    v7 = [(SCATScannerManager *)self pointPicker];
    [v7 setDwellSwitchAssigned:v6];
  }
}

- (int64_t)_dwellSwitchAssignedAction
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(SCATScannerManager *)self cachedCameraPointPickerSwitches];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v6 = SCATSwitchSourceMotionTracker;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 source];
        if ([v9 isEqualToString:v6] && objc_msgSend(v8, "cameraSwitch") == 9)
        {
          v10 = [v8 action];

          if (v10)
          {
            v11 = [v8 action];
            goto LABEL_14;
          }
        }

        else
        {
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (id)_focusContextAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = +[HNDAccessibilityManager sharedManager];
  v7 = [v6 elementAtPoint:-[SCATScannerManager currentDisplayID](self displayID:{"currentDisplayID"), x, y}];

  if (v7)
  {
    v8 = [(SCATScannerManager *)self elementNavController];
    v9 = [SCATFocusContext focusContextWithElement:v7 elementManager:v8 selectBehavior:0 options:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)actionHandler:(id)a3 shouldActImmediatelyOnActionCount:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SCATScannerManager *)self selectActionHandler];
  v8 = [v6 isEqual:v7];

  return !v8 || [(SCATScannerManager *)self immediateSelectActionCount]== a4;
}

- (void)actionHandlerDidFireAction:(id)a3
{
  v4 = a3;
  v5 = [(SCATScannerManager *)self pointPicker];
  [v5 pickedPointInDeviceCoordinates];
  v6 = [(SCATScannerManager *)self _focusContextAtPoint:?];

  v7 = [v4 actionCount];
  v8 = [(SCATScannerManager *)self activateActionHandler];
  v9 = [v4 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v19 = [(SCATScannerManager *)self selectActionHandler];
    v20 = [v4 isEqual:v19];

    if (!v20)
    {
      goto LABEL_19;
    }

    if ((v7 != 1 || [v4 shouldShowMenuOnFirstSelectAction]) && objc_msgSend(v6, "selectBehavior") != 1)
    {
      v21 = [(SCATScannerManager *)self menu];
      v22 = [(SCATScannerManager *)self pointPicker];
      [v21 presentWithPointPicker:v22];

      goto LABEL_19;
    }
  }

  v10 = [(SCATScannerManager *)self pointPicker];
  [v10 resetRefinedSelectedPoint];

  v11 = [v6 element];
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = v11;
  v13 = [(SCATScannerManager *)self pointPicker];
  if (v13)
  {
    v14 = v13;
    v15 = [v6 element];
    if (([v15 scatIsAXElement] & 1) == 0)
    {

      goto LABEL_16;
    }

    v16 = [v6 element];
    v17 = [v16 uiElement];
    v18 = [v17 BOOLWithAXAttribute:2150];

    if (!v18)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v23 = [v6 element];
  v24 = [(SCATScannerManager *)self activateElement:v23];

  if ((v24 & 1) == 0)
  {
LABEL_16:
    v25 = [(SCATScannerManager *)self gestureProvider];
    v26 = [(SCATScannerManager *)self pointPicker];
    [(SCATScannerManager *)self _startingPointForGesturesForPointPicker:v26];
    v27 = [AXNamedReplayableGesture tapGestureAtPoint:?];
    [v25 replayGesture:v27];
  }

  v28 = [(SCATScannerManager *)self pointPicker];
  v29 = [v28 shouldRescanAfterTap];

  if (v29)
  {
    v30 = [(SCATScannerManager *)self cursorManager];
    [v30 updateWithFocusContext:0 animated:0 options:0];

    AXPerformBlockOnMainThreadAfterDelay();
  }

LABEL_19:
}

- (id)focusContextForActionHandler:(id)a3
{
  v4 = [(SCATScannerManager *)self pointPicker];
  [v4 pickedPointInDeviceCoordinates];
  v5 = [(SCATScannerManager *)self _focusContextAtPoint:?];

  return v5;
}

- (void)alternateKeysManager:(id)a3 didSelectAlternateKey:(id)a4
{
  v5 = a4;
  v6 = [(SCATScannerManager *)self outputManager];
  [v6 playSound:1001];

  [(SCATScannerManager *)self _updateActiveElementManager];
  v7 = [(SCATScannerManager *)self activeElementManager];
  [v7 scannerManager:self didActivateElement:v5];
}

- (id)_typingCandidates
{
  v2 = +[HNDAccessibilityManager sharedManager];
  v3 = [v2 firstResponder];
  v4 = [v3 elementForAttribute:2017];
  v5 = [v4 typingCandidates];

  return v5;
}

- (BOOL)candidateBarManager:(id)a3 hasValidTypingCandidates:(id)a4
{
  v5 = a4;
  v6 = [(SCATScannerManager *)self _typingCandidates];
  v7 = [v6 isEqualToArray:v5];

  return v7;
}

- (void)presentPostScanningMenuForElementNavigationController:(id)a3
{
  v3 = [(SCATScannerManager *)self menu];
  [v3 presentWithRootLevelSheet:0 useCurrentElementAndPoint:0];
}

- (id)scatUIContext
{
  v2 = [(SCATScannerManager *)self currentDisplayID];
  v3 = +[HNDHandManager sharedManager];
  v4 = [v3 displayManagerForDisplayId:v2];
  v5 = [v4 scannerContentView];

  return v5;
}

- (id)scatBackCursorUIContext
{
  v2 = [(SCATScannerManager *)self currentDisplayID];
  v3 = +[HNDHandManager sharedManager];
  v4 = [v3 displayManagerForDisplayId:v2];
  v5 = [v4 scannerBackCursorView];

  return v5;
}

- (id)scatFrontCursorUIContext
{
  v2 = [(SCATScannerManager *)self currentDisplayID];
  v3 = +[HNDHandManager sharedManager];
  v4 = [v3 displayManagerForDisplayId:v2];
  v5 = [v4 scannerFrontCursorView];

  return v5;
}

- (id)scatUIContextForDisplayID:(unsigned int)a3
{
  v3 = *&a3;
  v4 = +[HNDHandManager sharedManager];
  v5 = [v4 displayManagerForDisplayId:v3];
  v6 = [v5 scannerContentView];

  return v6;
}

- (id)scatFrontCursorUIContextForDisplayID:(unsigned int)a3
{
  v3 = *&a3;
  v4 = +[HNDHandManager sharedManager];
  v5 = [v4 displayManagerForDisplayId:v3];
  v6 = [v5 scannerFrontCursorView];

  return v6;
}

- (id)scatBackCursorUIContextForDisplayID:(unsigned int)a3
{
  v3 = *&a3;
  v4 = +[HNDHandManager sharedManager];
  v5 = [v4 displayManagerForDisplayId:v3];
  v6 = [v5 scannerBackCursorView];

  return v6;
}

- (BOOL)isUIContextHidden
{
  v3 = [(SCATScannerManager *)self currentDisplayID];
  v4 = [(SCATScannerManager *)self scatUIContextForDisplayID:v3];
  if ([v4 isHidden])
  {
    v5 = [(SCATScannerManager *)self scatBackCursorUIContextForDisplayID:v3];
    if ([v5 isHidden])
    {
      v6 = [(SCATScannerManager *)self scatFrontCursorUIContextForDisplayID:v3];
      v7 = [v6 isHidden];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)hideUIContext:(BOOL)a3
{
  v5 = [(SCATScannerManager *)self currentDisplayID];
  if (![(SCATScannerManager *)self isUIContextHidden])
  {
    if (!a3)
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
    }

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:off_100217018 object:self];

    v7 = [(SCATScannerManager *)self scatUIContextForDisplayID:v5];
    [v7 setHidden:1];

    v8 = [(SCATScannerManager *)self scatBackCursorUIContextForDisplayID:v5];
    [v8 setHidden:1];

    v9 = [(SCATScannerManager *)self scatFrontCursorUIContextForDisplayID:v5];
    [v9 setHidden:1];

    v10 = [(SCATScannerManager *)self gestureProvider];
    [v10 setHidden:1];

    if (!a3)
    {
      +[CATransaction commit];
    }

    if (![(SCATScannerManager *)self forceDisableScreenLock])
    {
      v11 = +[HNDEventManager sharedManager];
      [v11 manipulateDimTimer:0];
    }
  }
}

- (void)showUIContext:(BOOL)a3
{
  v5 = [(SCATScannerManager *)self currentDisplayID];
  if ([(SCATScannerManager *)self isUIContextHidden])
  {
    if (!a3)
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
    }

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:off_100217020 object:self];

    v7 = [(SCATScannerManager *)self scatUIContextForDisplayID:v5];
    [v7 setHidden:0];

    v8 = [(SCATScannerManager *)self scatBackCursorUIContextForDisplayID:v5];
    [v8 setHidden:0];

    v9 = [(SCATScannerManager *)self scatFrontCursorUIContextForDisplayID:v5];
    [v9 setHidden:0];

    v10 = [(SCATScannerManager *)self gestureProvider];
    [v10 setHidden:0];

    if (!a3)
    {
      +[CATransaction commit];
    }

    v11 = +[HNDEventManager sharedManager];
    [v11 manipulateDimTimer:1];
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(SCATScannerManager *)self scannerObservers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(SCATScannerManager *)self scannerObservers];
  [v5 removeObject:v4];
}

- (void)_notifyObserversScannerWillFocusOnContext:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(SCATScannerManager *)self scannerObservers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 scannerManager:self willFocusOnContext:v4];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversScannerDidFocusOnContext:(id)a3 oldContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(SCATScannerManager *)self scannerObservers];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 scannerManager:self didFocusOnContext:v6 oldContext:v7];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_notifyObserversScannerWillUnfocusFromContext:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(SCATScannerManager *)self scannerObservers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 scannerManager:self willUnfocusFromContext:v4];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversScannerDidBecomeActive
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(SCATScannerManager *)self scannerObservers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 scannerManagerDidBecomeActive:self];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversScannerDidBecomeInactive
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(SCATScannerManager *)self scannerObservers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 scannerManagerDidBecomeInactive:self];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversScannerDidPause
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(SCATScannerManager *)self scannerObservers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 scannerManagerDidPause:self];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversInputController:(id)a3 didReceivePoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(SCATScannerManager *)self scannerObservers];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if ([v13 conformsToProtocol:&OBJC_PROTOCOL___SCATInputControllerDelegate] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v13 inputController:v7 didReceivePoint:{x, y}];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (CGPoint)_startingPointForGesturesForPointPicker:(id)a3
{
  [a3 pickedPoint];
  result.y = v4;
  result.x = v3;
  return result;
}

- (SCATScannerManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end