@interface SCATScannerManager
+ (id)sharedManager;
+ (void)updateElementCacheScheme;
- (BOOL)_isPostScanningMenu:(id)menu;
- (BOOL)_isScannerControlledByDriver:(id)driver;
- (BOOL)_shouldIgnoreAllScannerControlMessages;
- (BOOL)_userHasDisabledUSBRM;
- (BOOL)actionHandler:(id)handler shouldActImmediatelyOnActionCount:(unint64_t)count;
- (BOOL)activateElement:(id)element;
- (BOOL)areSoundEffectsEnabled;
- (BOOL)canAdvertise;
- (BOOL)canReturnControlToForwarderDevice:(id)device;
- (BOOL)canSearchForControllableDevicesWithMenu:(id)menu;
- (BOOL)candidateBarManager:(id)manager hasValidTypingCandidates:(id)candidates;
- (BOOL)cursorManagerShouldHideMenuCursor:(id)cursor;
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
- (BOOL)isSwitchWithSource:(id)source;
- (BOOL)isSystemSleeping;
- (BOOL)isUIContextHidden;
- (BOOL)isUsingPointMode;
- (BOOL)pointPicker:(id)picker pauseForNumberOfCycles:(unint64_t)cycles;
- (BOOL)shouldBypassShowingMenuForElement:(id)element;
- (BOOL)shouldUseCameraPointPicker;
- (BOOL)waitingForSecureIntent;
- (CGPoint)_startingPointForGesturesForPointPicker:(id)picker;
- (CGPoint)_tadmorNewPickedPointWithDelta:(CGPoint)delta;
- (CGRect)menu:(id)menu rectToClearForFingersWithGestureSheet:(BOOL)sheet;
- (NSArray)recentSpeechOutputStrings;
- (NSString)description;
- (SCATElement)currentElement;
- (SCATFocusContext)currentFocusContext;
- (SCATScannerManager)init;
- (SCATScannerManagerDelegate)delegate;
- (id)_driverForScannerState;
- (id)_elementManagerForScannerState;
- (id)_focusContextAtPoint:(CGPoint)point;
- (id)_primaryElementManagerForScannerState;
- (id)_typingCandidates;
- (id)axManager;
- (id)contentViewForGestureProvider:(id)provider;
- (id)exitActionElementForFingersInMenu:(id)menu;
- (id)focusContextForActionHandler:(id)handler;
- (id)gesturesSheetForMenu:(id)menu;
- (id)pointerPointPicker;
- (id)scatBackCursorUIContext;
- (id)scatBackCursorUIContextForDisplayID:(unsigned int)d;
- (id)scatFrontCursorUIContext;
- (id)scatFrontCursorUIContextForDisplayID:(unsigned int)d;
- (id)scatUIContext;
- (id)scatUIContextForDisplayID:(unsigned int)d;
- (id)userInterfaceClientForInputController:(id)controller;
- (int)_validatedSelectBehaviorForCurrentSelectBehavior:(int)behavior replacementElement:(id)element;
- (int64_t)_dwellSwitchAssignedAction;
- (int64_t)scanningMode;
- (unsigned)currentDisplayID;
- (void)_applyLaunchRecipeUUID;
- (void)_beginOrContinueScanningWithFocusContext:(id)context shouldBegin:(BOOL)begin foundNewElements:(BOOL)elements;
- (void)_deactivateAudioSession;
- (void)_disableUserInterfaceClientForPotentialReceiver;
- (void)_driver:(id)_driver outputAudioForContext:(id)context;
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
- (void)_handleScrollAction:(int64_t)action;
- (void)_handleSiriAction;
- (void)_handleTripleClickAction;
- (void)_handleVisualIntelligence;
- (void)_handleVolumeDownAction;
- (void)_handleVolumeUpAction;
- (void)_notifyObserversInputController:(id)controller didReceivePoint:(CGPoint)point;
- (void)_notifyObserversScannerDidBecomeActive;
- (void)_notifyObserversScannerDidBecomeInactive;
- (void)_notifyObserversScannerDidFocusOnContext:(id)context oldContext:(id)oldContext;
- (void)_notifyObserversScannerDidPause;
- (void)_notifyObserversScannerWillFocusOnContext:(id)context;
- (void)_notifyObserversScannerWillUnfocusFromContext:(id)context;
- (void)_overrideScanningModeAtStartupIfNecessary;
- (void)_removeInterdeviceSwitches;
- (void)_resetRecipeTimeoutIfApplicable;
- (void)_scanningModePreferenceDidChange;
- (void)_setCurrentRecipe:(id)recipe shouldShowAlert:(BOOL)alert;
- (void)_setUSBRMPreferenceDisabled;
- (void)_showSimpleAlertForProfile:(id)profile;
- (void)_showSimpleBannerWithText:(id)text;
- (void)_updateActiveElementManager:(id)manager;
- (void)_updateAudioSessionState;
- (void)_updateCameraPointPickerSwitchesCache;
- (void)_updateElementVisuals;
- (void)_updateMenuAfterElementFetchFoundNewElements:(BOOL)elements;
- (void)_updateScanningStyle;
- (void)_waitForApplication:(id)application;
- (void)accessibilityManager:(id)manager applicationWasActivated:(id)activated;
- (void)accessibilityManager:(id)manager didFetchElementsForEvent:(int64_t)event foundNewElements:(BOOL)elements;
- (void)accessibilityManager:(id)manager didReceiveEvent:(int64_t)event data:(id)data;
- (void)accessibilityManager:(id)manager nativeFocusElementDidChange:(id)change;
- (void)accessibilityManager:(id)manager screenWillChange:(__CFData *)change;
- (void)accessibilityManager:(id)manager updateElementVisuals:(id)visuals;
- (void)actionHandlerDidFireAction:(id)action;
- (void)actionHandlerForUI:(id)i willPerformDelayedActionOnContext:(id)context withCount:(unint64_t)count;
- (void)actionHandlerForUIDidCancelPendingAction:(id)action;
- (void)actionHandlerForUIWillFireAction:(id)action;
- (void)addObserver:(id)observer;
- (void)addPointerPointPickerForMovementNotifications:(id)notifications;
- (void)addReasonToDisableScanning:(id)scanning;
- (void)alternateKeysManager:(id)manager didSelectAlternateKey:(id)key;
- (void)calibrateEyeTracking;
- (void)cancelDrag;
- (void)clearRecentSpeech;
- (void)dealloc;
- (void)didBecomeIdle;
- (void)didBeginLongPressForInputController:(id)controller;
- (void)didChooseCreateCustomGestureFromGestureProvider:(id)provider;
- (void)didConnectAsForwarderToDeviceWithName:(id)name;
- (void)didConnectAsReceiverWithSettings:(id)settings;
- (void)didDisconnectAsForwarderFromDeviceWithName:(id)name;
- (void)didDisconnectAsReceiver;
- (void)didEndLongPressForInputController:(id)controller;
- (void)didPressScreenChangingButtonInMenu:(id)menu;
- (void)driver:(id)driver didFocusOnContext:(id)context oldContext:(id)oldContext;
- (void)driver:(id)driver indicateDwellScanningWillAbort:(BOOL)abort;
- (void)driverDidBecomeActive:(id)active didChange:(BOOL)change;
- (void)driverDidBecomeInactive:(id)inactive;
- (void)driverDidPause:(id)pause;
- (void)endScanning;
- (void)gestureProvider:(id)provider shouldResetScanningFromElement:(id)element;
- (void)handleAlertDidAppear:(id)appear;
- (void)handleAnnouncement:(id)announcement;
- (void)handleScreenChange:(id)change;
- (void)handleStopSpeaking:(id)speaking;
- (void)handleUSBMFiDeviceConnected;
- (void)hideUIContext:(BOOL)context;
- (void)highlightAsPotentialReceiverForDeviceWithName:(id)name;
- (void)inputController:(id)controller didReceiveAction:(id)action;
- (void)inputController:(id)controller didReceiveItemSelectionIndex:(int64_t)index;
- (void)inputController:(id)controller didReceiveMovementDelta:(CGPoint)delta;
- (void)inputController:(id)controller didReceivePoint:(CGPoint)point;
- (void)inputController:(id)controller didReceiveRecipeActionForMappingAtIndex:(unint64_t)index isLongPressAction:(BOOL)action;
- (void)inputController:(id)controller didReceiveRecipeHoldAtPoint:(CGPoint)point isDown:(BOOL)down;
- (void)inputController:(id)controller didUpdateSignalQuality:(int64_t)quality;
- (void)inputController:(id)controller shouldHideAlerts:(BOOL)alerts;
- (void)inputController:(id)controller showAlert:(id)alert;
- (void)inputControllerPointPickerInterrupted:(id)interrupted;
- (void)loadScanner;
- (void)menu:(id)menu activateProfile:(id)profile;
- (void)menu:(id)menu playSoundEffect:(int)effect;
- (void)menu:(id)menu showAlternateKeysForKey:(id)key;
- (void)menu:(id)menu showScrollViewPickerForScrollViews:(id)views elementsToScroll:(id)scroll scrollAction:(int)action;
- (void)menu:(id)menu showTypingCandidates:(id)candidates;
- (void)menu:(id)menu speakAnnouncement:(id)announcement completionBlock:(id)block;
- (void)menuDidDisappear:(id)disappear;
- (void)menuDidFinishTransition:(id)transition;
- (void)menuWillBeginTransition:(id)transition;
- (void)moveDragSessionToFixedSpaceScreenPoint:(CGPoint)point;
- (void)overrideMotionTrackerLookAtPoint:(CGPoint)point;
- (void)pauseScanningWithScreenLockDisabled:(BOOL)disabled;
- (void)performDrop;
- (void)performSysdiagnoseForInputController:(id)controller;
- (void)pointPicker:(id)picker didFinishDwellingOnPoint:(CGPoint)point;
- (void)pointPicker:(id)picker didPickPoint:(CGPoint)point;
- (void)pointPicker:(id)picker didSweepIntoFocusContext:(id)context isRefiningPoint:(BOOL)point;
- (void)pointPicker:(id)picker didSweepOutOfFocusContext:(id)context isRefiningPoint:(BOOL)point;
- (void)presentPostScanningMenuForElementNavigationController:(id)controller;
- (void)removeObserver:(id)observer;
- (void)removePointerPointPickerForMovementNotifications:(id)notifications;
- (void)removeReasonToDisableScanning:(id)scanning;
- (void)resumeScanning;
- (void)returnControlToForwarderDevice:(id)device;
- (void)searchForControllableDevicesWithMenu:(id)menu;
- (void)selectElement:(id)element;
- (void)selectElementAtPoint:(CGPoint)point;
- (void)setActiveElementManager:(id)manager completion:(id)completion;
- (void)setActiveScannerDriver:(id)driver;
- (void)setHighlightFocusContext:(BOOL)context;
- (void)setPointPicker:(id)picker;
- (void)shouldEndScanningGestureProvider:(id)provider;
- (void)shouldStartScanningGestureProvider:(id)provider;
- (void)showUIContext:(BOOL)context;
- (void)switchCurrentDisplayContext;
- (void)unloadScanner;
- (void)useFocusContextOnResume:(id)resume;
- (void)waitForDragStartFromPid:(int)pid completion:(id)completion;
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
  switchControlTapBehavior = [v2 switchControlTapBehavior];

  if (switchControlTapBehavior == 2)
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

- (void)waitForDragStartFromPid:(int)pid completion:(id)completion
{
  v4 = *&pid;
  completionCopy = completion;
  v7 = +[HNDHandManager sharedManager];
  dragManager = [v7 dragManager];
  [dragManager waitForDragStartFromPid:v4 completionHandler:completionCopy];
}

- (BOOL)isDragActive
{
  v2 = +[HNDHandManager sharedManager];
  dragManager = [v2 dragManager];
  isDragActive = [dragManager isDragActive];

  return isDragActive;
}

- (void)cancelDrag
{
  v3 = +[HNDHandManager sharedManager];
  dragManager = [v3 dragManager];
  [dragManager cancelDrag];
}

- (void)moveDragSessionToFixedSpaceScreenPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = +[HNDHandManager sharedManager];
  dragManager = [v6 dragManager];
  [dragManager moveToPoint:{x, y}];
}

- (void)performDrop
{
  v3 = +[HNDHandManager sharedManager];
  dragManager = [v3 dragManager];
  [dragManager drop];
}

- (BOOL)waitingForSecureIntent
{
  v2 = +[HNDSecureIntentManager sharedInstance];
  waitingForSecureIntent = [v2 waitingForSecureIntent];

  return waitingForSecureIntent;
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
  switchControlUserDidReadUSBRestrictedModeAlert = [v3 switchControlUserDidReadUSBRestrictedModeAlert];

  _userHasDisabledUSBRM = [(SCATScannerManager *)self _userHasDisabledUSBRM];
  v6 = +[AXSettings sharedInstance];
  switchControlShouldDisallowUSBRestrictedMode = [v6 switchControlShouldDisallowUSBRestrictedMode];

  if (((switchControlUserDidReadUSBRestrictedModeAlert | _userHasDisabledUSBRM) & 1) == 0 || switchControlShouldDisallowUSBRestrictedMode)
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
  mainDisplayManager = [v8 mainDisplayManager];
  [mainDisplayManager addUserInterfaceClientEnabler:@"Scanner"];

  v10 = +[HNDAccessibilityManager sharedManager];
  v11 = +[HNDHandManager sharedManager];
  displayManagers = [v11 displayManagers];
  [v10 displaysDidChange:displayManagers];

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
  interDeviceCommunicator = [(SCATScannerManager *)self interDeviceCommunicator];
  v19 = [(SCATInputController *)v17 initWithInterDeviceCommunicator:interDeviceCommunicator];

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
  menu = [(SCATScannerManager *)self menu];
  v30 = [(SCATGestureProvider *)v28 initWithMenu:menu];

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
  scanningMode = [(SCATScannerManager *)self scanningMode];
  v76 = v32;
  v34 = AXDeviceSupportsTadmor();
  if (scanningMode == 6)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  spid = v4;
  v75 = v16;
  if ([(SCATScannerManager *)self shouldUseCameraPointPicker]&& (scanningMode == 3 || scanningMode == 5) || v35)
  {
    v36 = +[AXSpringBoardServer server];
    isContinuitySessionActive = [v36 isContinuitySessionActive];
    v38 = isContinuitySessionActive ^ 1;

    if (isContinuitySessionActive)
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

  menu2 = [(SCATScannerManager *)self menu];
  v42 = [SCATPointPicker pointPickerWithMode:v39 menu:menu2];

  if (v38)
  {
    if ([(SCATScannerManager *)self isEyeTrackingEnabled])
    {
      inputController = [(SCATScannerManager *)self inputController];
      [inputController setEyeGazeMotionTrackingEnabled:1];

      v44 = +[AXSettings sharedInstance];
      -[SCATScannerManager setHighlightFocusContext:](self, "setHighlightFocusContext:", [v44 assistiveTouchBubbleModeEnabled]);
    }

    if (v35)
    {
      inputController2 = [(SCATScannerManager *)self inputController];
      [inputController2 setTadmorPointerEnabled:1];
LABEL_23:

      goto LABEL_24;
    }

    if (scanningMode == 3)
    {
      inputController2 = [(SCATScannerManager *)self inputController];
      [inputController2 setHeadMotionTrackingEnabled:1];
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
  _elementManagerForScannerState = [(SCATScannerManager *)self _elementManagerForScannerState];
  [(SCATScannerManager *)self setActiveElementManager:_elementManagerForScannerState];

  v49 = [[SCATAutomaticDriver alloc] initWithDelegate:self];
  [(SCATScannerManager *)self setAutoScanningDriver:v49];

  v50 = [(SCATDriver *)[SCATManualDriver alloc] initWithDelegate:self];
  [(SCATScannerManager *)self setManualScanningDriver:v50];

  v51 = [(SCATDriver *)[SCATDwellDriver alloc] initWithDelegate:self];
  [(SCATScannerManager *)self setDwellScanningDriver:v51];

  _driverForScannerState = [(SCATScannerManager *)self _driverForScannerState];
  [(SCATScannerManager *)self setActiveScannerDriver:_driverForScannerState];

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
  switchControlProfiles = [v66 switchControlProfiles];
  v68 = [switchControlProfiles count];

  if (v68 >= 2)
  {
    v69 = +[AXSettings sharedInstance];
    switchControlSelectedProfile = [v69 switchControlSelectedProfile];
    [(SCATScannerManager *)self _showSimpleAlertForProfile:switchControlSelectedProfile];
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
    inputController = [(SCATScannerManager *)self inputController];
    [inputController setDelegate:0 queue:0];

    [(SCATScannerManager *)self setInputController:0];
    menu = [(SCATScannerManager *)self menu];
    [menu setDelegate:0];

    menu2 = [(SCATScannerManager *)self menu];
    [menu2 unregisterMenuObserver:self];

    [(SCATScannerManager *)self setMenu:0];
    [(SCATScannerManager *)self setAutoscroller:0];
    gestureProvider = [(SCATScannerManager *)self gestureProvider];
    [gestureProvider setDelegate:0];

    [(SCATScannerManager *)self setGestureProvider:0];
    [(SCATScannerManager *)self setUpdateElementVisualsCoalescer:0];
    [(SCATScannerManager *)self setAutoScanningDriver:0];
    [(SCATScannerManager *)self setManualScanningDriver:0];
    [(SCATScannerManager *)self setActiveScannerDriver:0];
    [(SCATScannerManager *)self setElementNavController:0];
    pointPicker = [(SCATScannerManager *)self pointPicker];
    [pointPicker setDelegate:0];

    [(SCATScannerManager *)self setPointPicker:0];
    alternateKeysManager = [(SCATScannerManager *)self alternateKeysManager];
    [alternateKeysManager setDelegate:0];

    [(SCATScannerManager *)self setAlternateKeysManager:0];
    candidateBarManager = [(SCATScannerManager *)self candidateBarManager];
    [candidateBarManager setDelegate:0];

    [(SCATScannerManager *)self setCandidateBarManager:0];
    [(SCATScannerManager *)self setScrollViewPickerManager:0];
    [(SCATScannerManager *)self setActiveElementManager:0];
    [(SCATScannerManager *)self setBeginScanningTimer:0];
    [(SCATScannerManager *)self setShowPointerTimer:0];
    cursorManager = [(SCATScannerManager *)self cursorManager];
    [cursorManager setDelegate:0];

    [(SCATScannerManager *)self setCursorManager:0];
    selectActionHandler = [(SCATScannerManager *)self selectActionHandler];
    [selectActionHandler setDelegate:0];

    selectActionHandler2 = [(SCATScannerManager *)self selectActionHandler];
    [selectActionHandler2 setUiDelegate:0];

    [(SCATScannerManager *)self setSelectActionHandler:0];
    activateActionHandler = [(SCATScannerManager *)self activateActionHandler];
    [activateActionHandler setDelegate:0];

    activateActionHandler2 = [(SCATScannerManager *)self activateActionHandler];
    [activateActionHandler2 setUiDelegate:0];

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
    mainDisplayManager = [v23 mainDisplayManager];
    [mainDisplayManager removeUserInterfaceClientEnabler:@"Scanner"];

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
  activeScannerDriver = [(SCATScannerManager *)self activeScannerDriver];
  activeElementManager = [(SCATScannerManager *)self activeElementManager];
  v7 = [NSString stringWithFormat:@"SCATScannerManager<%p>. Active:%@ Paused:%@ ActiveDriver:%@. ActiveElementManager:%@.", self, v3, v4, activeScannerDriver, activeElementManager];

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
    switchControlUseCameraForPointMode = [v6 switchControlUseCameraForPointMode];

    if (switchControlUseCameraForPointMode)
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
    switchControlFirstLaunchScanningMode = [v10 switchControlFirstLaunchScanningMode];

    if (switchControlFirstLaunchScanningMode == 5)
    {
      v12 = +[AXSettings sharedInstance];
      [v12 setSwitchControlOnDeviceEyeTrackingEnabled:1];
    }

    v15 = +[AXSettings sharedInstance];
    switchControlFirstLaunchScanningMode2 = [v15 switchControlFirstLaunchScanningMode];
    v14 = +[AXSettings sharedInstance];
    [v14 setAssistiveTouchScanningMode:switchControlFirstLaunchScanningMode2];
  }
}

- (void)_scanningModePreferenceDidChange
{
  v3 = +[AXSettings sharedInstance];
  assistiveTouchScanningMode = [v3 assistiveTouchScanningMode];
  if (AXDeviceSupportsTadmor())
  {
    v5 = [(SCATScannerManager *)self scanningMode]== 6;
  }

  else
  {
    v5 = 0;
  }

  v6 = +[AXSettings sharedInstance];
  switchControlFirstLaunchScanningMode = [v6 switchControlFirstLaunchScanningMode];

  if (switchControlFirstLaunchScanningMode != assistiveTouchScanningMode && !v5)
  {
    v8 = +[AXSettings sharedInstance];
    [v8 setSwitchControlFirstLaunchScanningMode:assistiveTouchScanningMode];
  }

  if (!v5)
  {
    inputController = [(SCATScannerManager *)self inputController];
    [inputController setTadmorPointerEnabled:0];
  }

  if (assistiveTouchScanningMode != 5)
  {
    [v3 setSwitchControlOnDeviceEyeTrackingEnabled:0];
  }

  activeElementManager = [(SCATScannerManager *)self activeElementManager];
  elementNavController = [(SCATScannerManager *)self elementNavController];
  v12 = elementNavController;
  if (activeElementManager == elementNavController)
  {
  }

  else
  {
    activeElementManager2 = [(SCATScannerManager *)self activeElementManager];
    pointPicker = [(SCATScannerManager *)self pointPicker];

    if (activeElementManager2 != pointPicker)
    {
      goto LABEL_55;
    }
  }

  v15 = 0;
  if (assistiveTouchScanningMode <= 2)
  {
    if (!assistiveTouchScanningMode)
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

    if (assistiveTouchScanningMode != 1)
    {
      if (assistiveTouchScanningMode != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_19;
    }

    [v3 setAssistiveTouchPreferredPointPicker:1];
    menu = [(SCATScannerManager *)self menu];
    v15 = [SCATPointPicker mostSuitablePointPickerWithMenu:menu];

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

  if (assistiveTouchScanningMode != 3 && assistiveTouchScanningMode != 5)
  {
    if (assistiveTouchScanningMode != 6)
    {
      goto LABEL_36;
    }

    [v3 setAssistiveTouchPreferredPointPicker:2];
    menu2 = [(SCATScannerManager *)self menu];
    v15 = [SCATPointPicker mostSuitablePointPickerWithMenu:menu2];

    inputController2 = [(SCATScannerManager *)self inputController];
    [inputController2 setTadmorPointerEnabled:1];

    inputController3 = [(SCATScannerManager *)self inputController];
    [inputController3 setHeadMotionTrackingEnabled:0];

    inputController4 = [(SCATScannerManager *)self inputController];
    [inputController4 setEyeGazeMotionTrackingEnabled:0];

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
  menu3 = [(SCATScannerManager *)self menu];
  v15 = [SCATPointPicker mostSuitablePointPickerWithMenu:menu3];

  v24 = SWCHLogModernMenuActions();
  if (os_signpost_enabled(v24))
  {
    *v49 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Toggle", "Scanning Mode Preference Did Change: Eye Tracking", v49, 2u);
  }

  if (assistiveTouchScanningMode != 3)
  {
LABEL_36:
    inputController5 = [(SCATScannerManager *)self inputController];
    headMotionTrackingEnabled = [inputController5 headMotionTrackingEnabled];

    v27 = 0;
    v28 = 0;
    if (!headMotionTrackingEnabled)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  inputController6 = [(SCATScannerManager *)self inputController];
  headMotionTrackingEnabled2 = [inputController6 headMotionTrackingEnabled];

  v27 = 1;
  v28 = 1;
  if ((headMotionTrackingEnabled2 & 1) == 0)
  {
LABEL_37:
    inputController7 = [(SCATScannerManager *)self inputController];
    [inputController7 setHeadMotionTrackingEnabled:v27];

    inputController8 = [(SCATScannerManager *)self inputController];
    [inputController8 setEyeGazeMotionTrackingEnabled:0];

    v28 = v27;
  }

LABEL_38:
  if ([(SCATScannerManager *)self isOnDeviceEyeTrackingSupported])
  {
    if (assistiveTouchScanningMode == 5 && (-[SCATScannerManager inputController](self, "inputController"), v34 = objc_claimAutoreleasedReturnValue(), v35 = [v34 eyeGazeMotionTrackingEnabled], v34, (v35 & 1) == 0))
    {
      inputController9 = [(SCATScannerManager *)self inputController];
      [inputController9 setHeadMotionTrackingEnabled:0];

      inputController10 = [(SCATScannerManager *)self inputController];
      [inputController10 setEyeGazeMotionTrackingEnabled:1];

      v40 = +[AXSettings sharedInstance];
      inputController14 = v40;
      v42 = 1;
    }

    else
    {
      if (v28)
      {
        goto LABEL_48;
      }

      inputController11 = [(SCATScannerManager *)self inputController];
      eyeGazeMotionTrackingEnabled = [inputController11 eyeGazeMotionTrackingEnabled];

      if (!eyeGazeMotionTrackingEnabled)
      {
        goto LABEL_48;
      }

      inputController12 = [(SCATScannerManager *)self inputController];
      [inputController12 setHeadMotionTrackingEnabled:0];

      inputController13 = [(SCATScannerManager *)self inputController];
      [inputController13 setEyeGazeMotionTrackingEnabled:0];

      v40 = +[AXSettings sharedInstance];
      inputController14 = v40;
      v42 = 0;
    }

    [v40 setSwitchControlOnDeviceEyeTrackingEnabled:v42];
  }

  else
  {
    inputController14 = [(SCATScannerManager *)self inputController];
    [inputController14 setEyeGazeMotionTrackingEnabled:0];
  }

LABEL_48:
  if (v15)
  {
    pointPicker2 = [(SCATScannerManager *)self pointPicker];
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
  interDeviceCommunicator = [(SCATScannerManager *)self interDeviceCommunicator];
  isIdle = [interDeviceCommunicator isIdle];

  return isIdle ^ 1;
}

- (BOOL)isControllingOtherDevice
{
  interDeviceCommunicator = [(SCATScannerManager *)self interDeviceCommunicator];
  isForwardingSwitchEvents = [interDeviceCommunicator isForwardingSwitchEvents];

  return isForwardingSwitchEvents;
}

- (void)setPointPicker:(id)picker
{
  pickerCopy = picker;
  if (self->_pointPicker != pickerCopy)
  {
    v6 = SWCHLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10012B5EC(pickerCopy, v6);
    }

    objc_storeStrong(&self->_pointPicker, picker);
    pointerPointPicker = [(SCATScannerManager *)self pointerPointPicker];
    [pointerPointPicker setShouldTrackFocusContext:self->_highlightFocusContext];
  }
}

- (id)pointerPointPicker
{
  pointPicker = [(SCATScannerManager *)self pointPicker];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    pointPicker2 = [(SCATScannerManager *)self pointPicker];
  }

  else
  {
    pointPicker2 = 0;
  }

  return pointPicker2;
}

- (void)setActiveScannerDriver:(id)driver
{
  driverCopy = driver;
  activeScannerDriver = self->_activeScannerDriver;
  if (activeScannerDriver != driverCopy)
  {
    v10 = driverCopy;
    [(SCATDriver *)activeScannerDriver willFinishAsScannerDriver];
    [(SCATDriver *)v10 willBecomeScannerDriver];
    v6 = self->_activeScannerDriver;
    v7 = v10;
    v8 = self->_activeScannerDriver;
    self->_activeScannerDriver = v7;
    v9 = v6;

    [(SCATDriver *)v9 didFinishAsScannerDriver];
    [(SCATDriver *)v7 didBecomeScannerDriver];

    driverCopy = v10;
  }

  _objc_release_x1(activeScannerDriver, driverCopy);
}

- (id)_driverForScannerState
{
  if ([(SCATScannerManager *)self isAutoscanEnabled])
  {
    autoScanningDriver = [(SCATScannerManager *)self autoScanningDriver];
  }

  else
  {
    v4 = +[AXSettings sharedInstance];
    switchControlScanningStyle = [v4 switchControlScanningStyle];

    if (switchControlScanningStyle == 1)
    {
      [(SCATScannerManager *)self manualScanningDriver];
    }

    else
    {
      [(SCATScannerManager *)self dwellScanningDriver];
    }
    autoScanningDriver = ;
  }

  return autoScanningDriver;
}

- (void)setActiveElementManager:(id)manager completion:(id)completion
{
  managerCopy = manager;
  completionCopy = completion;
  activeElementManager = self->_activeElementManager;
  if (activeElementManager == managerCopy)
  {
    goto LABEL_4;
  }

  [(SCATElementManager *)activeElementManager scannerWillMakeManagerInactive:self activeElementManager:managerCopy];
  [(SCATElementManager *)managerCopy scannerWillMakeManagerActive:self forDisplayID:[(SCATScannerManager *)self currentDisplayID]];
  objc_storeStrong(&self->_activeElementManager, manager);
  if (![(SCATScannerManager *)self isSpeechEnabled])
  {
    goto LABEL_4;
  }

  pointPicker = [(SCATScannerManager *)self pointPicker];

  if (pointPicker != managerCopy)
  {
    goto LABEL_4;
  }

  pointPicker2 = [(SCATScannerManager *)self pointPicker];
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
    pointPicker3 = [(SCATScannerManager *)self pointPicker];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if ((v16 & 1) == 0 || ((+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v17 = objc_claimAutoreleasedReturnValue(), ![v17 switchControlOnDeviceEyeTrackingEnabled]) ? (v18 = @"ENTERED_HEAD_TRACKING_MODE") : (v18 = @"ENTERED_EYE_TRACKING_MODE"), sub_100042B24(v18), v14 = objc_claimAutoreleasedReturnValue(), v17, !v14))
    {
LABEL_4:
      v11 = 1;
      if (!completionCopy)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }
  }

  _driverForScannerState = [(SCATScannerManager *)self _driverForScannerState];
  outputManager = [(SCATScannerManager *)self outputManager];
  [_driverForScannerState outputManager:outputManager willSpeakFocusContext:0];

  outputManager2 = [(SCATScannerManager *)self outputManager];
  objc_initWeak(&location, outputManager2);

  outputManager3 = [(SCATScannerManager *)self outputManager];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000E1EA8;
  v23[3] = &unk_1001D7570;
  v23[4] = self;
  objc_copyWeak(&v25, &location);
  v24 = completionCopy;
  [outputManager3 outputScannerAnnouncement:v14 completionBlock:v23];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  v11 = 0;
  if (!completionCopy)
  {
    goto LABEL_7;
  }

LABEL_5:
  if (v11)
  {
    completionCopy[2](completionCopy);
  }

LABEL_7:
}

- (id)_elementManagerForScannerState
{
  alternateKeysManager = [(SCATScannerManager *)self alternateKeysManager];
  canBeActiveElementManager = [alternateKeysManager canBeActiveElementManager];

  if (canBeActiveElementManager)
  {
    alternateKeysManager2 = [(SCATScannerManager *)self alternateKeysManager];
  }

  else
  {
    candidateBarManager = [(SCATScannerManager *)self candidateBarManager];
    canBeActiveElementManager2 = [candidateBarManager canBeActiveElementManager];

    if (canBeActiveElementManager2)
    {
      alternateKeysManager2 = [(SCATScannerManager *)self candidateBarManager];
    }

    else
    {
      scrollViewPickerManager = [(SCATScannerManager *)self scrollViewPickerManager];
      canBeActiveElementManager3 = [scrollViewPickerManager canBeActiveElementManager];

      if (canBeActiveElementManager3)
      {
        alternateKeysManager2 = [(SCATScannerManager *)self scrollViewPickerManager];
      }

      else
      {
        gestureProvider = [(SCATScannerManager *)self gestureProvider];
        canBeActiveElementManager4 = [gestureProvider canBeActiveElementManager];

        if (canBeActiveElementManager4)
        {
          alternateKeysManager2 = [(SCATScannerManager *)self gestureProvider];
        }

        else
        {
          menu = [(SCATScannerManager *)self menu];
          canBeActiveElementManager5 = [menu canBeActiveElementManager];

          if (canBeActiveElementManager5)
          {
            [(SCATScannerManager *)self menu];
          }

          else
          {
            [(SCATScannerManager *)self _primaryElementManagerForScannerState];
          }
          alternateKeysManager2 = ;
        }
      }
    }
  }

  return alternateKeysManager2;
}

- (id)_primaryElementManagerForScannerState
{
  v3 = +[AXSettings sharedInstance];
  assistiveTouchScannerPointPickerModeEnabled = [v3 assistiveTouchScannerPointPickerModeEnabled];

  scanningMode = [(SCATScannerManager *)self scanningMode];
  v6 = scanningMode;
  if (!assistiveTouchScannerPointPickerModeEnabled)
  {
    goto LABEL_11;
  }

  if (scanningMode > 6)
  {
    goto LABEL_14;
  }

  if (((1 << scanningMode) & 0x6A) == 0)
  {
LABEL_11:
    if (scanningMode == 2)
    {
      _AXAssert();
LABEL_13:
      pointPicker3 = 0;
      goto LABEL_27;
    }

LABEL_14:
    axManager = [(SCATScannerManager *)self axManager];
    hasZeroElements = [axManager hasZeroElements];

    if (hasZeroElements)
    {
      axManager2 = [(SCATScannerManager *)self axManager];
      frontmostAppMayBeLoading = [axManager2 frontmostAppMayBeLoading];

      v14 = SWCHLogElementNav();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 67109120;
        LODWORD(v22) = frontmostAppMayBeLoading;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "*** Zero elements found. Frontmost app may be loading %i", &v21, 8u);
      }

      if (frontmostAppMayBeLoading)
      {
        goto LABEL_13;
      }

      v15 = SWCHLogElementNav();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (assistiveTouchScannerPointPickerModeEnabled)
      {
        if (v16)
        {
          pointPicker = [(SCATScannerManager *)self pointPicker];
          v21 = 138412290;
          v22 = pointPicker;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "*** Zero elements found. Frontmost app not loading. Switching to point picker: %@.", &v21, 0xCu);
        }

        pointPicker2 = [(SCATScannerManager *)self pointPicker];
        goto LABEL_26;
      }

      if (v16)
      {
        elementNavController = [(SCATScannerManager *)self elementNavController];
        v21 = 138412290;
        v22 = elementNavController;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "*** Zero elements found. Frontmost app not loading. Switching to element manager: %@.", &v21, 0xCu);
      }
    }

    pointPicker2 = [(SCATScannerManager *)self elementNavController];
LABEL_26:
    pointPicker3 = pointPicker2;
    goto LABEL_27;
  }

  pointPicker3 = [(SCATScannerManager *)self pointPicker];
  v8 = +[AXSpringBoardServer server];
  if ([v8 isDockVisible] && objc_msgSend(v8, "isShowingNonSystemApp") && !-[SCATScannerManager isExternalDisplayConnected](self, "isExternalDisplayConnected") && v6 != 3 && v6 != 5)
  {
    elementNavController2 = [(SCATScannerManager *)self elementNavController];

    pointPicker3 = elementNavController2;
  }

LABEL_27:

  return pointPicker3;
}

- (void)_updateActiveElementManager:(id)manager
{
  managerCopy = manager;
  _elementManagerForScannerState = [(SCATScannerManager *)self _elementManagerForScannerState];
  [(SCATScannerManager *)self setActiveElementManager:_elementManagerForScannerState completion:managerCopy];
}

- (BOOL)_isScannerControlledByDriver:(id)driver
{
  driverCopy = driver;
  activeScannerDriver = [(SCATScannerManager *)self activeScannerDriver];
  v6 = [activeScannerDriver isEqual:driverCopy];

  return v6;
}

- (void)_deactivateAudioSession
{
  outputManager = [(SCATScannerManager *)self outputManager];
  [outputManager setSoundAudioSessionActive:0];

  outputManager2 = [(SCATScannerManager *)self outputManager];
  [outputManager2 setSpeechAudioSessionActive:0];
}

- (void)_updateAudioSessionState
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_deactivateAudioSession" object:0];
  if ([(SCATScannerManager *)self isActive])
  {
    if ([(SCATScannerManager *)self isSpeechEnabled])
    {
      outputManager = [(SCATScannerManager *)self outputManager];
      [outputManager setSpeechAudioSessionActive:1];
    }

    if ([(SCATScannerManager *)self areSoundEffectsEnabled])
    {
      outputManager2 = [(SCATScannerManager *)self outputManager];
      [outputManager2 setSoundAudioSessionActive:1];
    }
  }

  else
  {
    outputManager3 = [(SCATScannerManager *)self outputManager];
    [outputManager3 cancelSpeech];

    [(SCATScannerManager *)self performSelector:"_deactivateAudioSession" withObject:0 afterDelay:2.0];
  }
}

- (BOOL)isAutoscanEnabled
{
  currentRecipe = [(SCATScannerManager *)self currentRecipe];
  if (currentRecipe)
  {
    currentRecipe2 = [(SCATScannerManager *)self currentRecipe];
    shouldContinueScanning = [currentRecipe2 shouldContinueScanning];
  }

  else
  {
    shouldContinueScanning = 0;
  }

  v6 = +[AXSettings sharedInstance];
  v7 = ([v6 switchControlScanningStyle] == 0) | shouldContinueScanning;

  return v7 & 1;
}

- (BOOL)isGroupingEnabled
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchGroupElementsEnabled = [v2 assistiveTouchGroupElementsEnabled];

  return assistiveTouchGroupElementsEnabled;
}

- (int64_t)scanningMode
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchScanningMode = [v2 assistiveTouchScanningMode];

  return assistiveTouchScanningMode;
}

- (BOOL)areSoundEffectsEnabled
{
  outputManager = [(SCATScannerManager *)self outputManager];
  areSoundEffectsEnabled = [outputManager areSoundEffectsEnabled];

  return areSoundEffectsEnabled;
}

- (BOOL)isSpeechEnabled
{
  outputManager = [(SCATScannerManager *)self outputManager];
  isSpeechEnabled = [outputManager isSpeechEnabled];

  return isSpeechEnabled;
}

- (BOOL)isSwitchWithSource:(id)source
{
  sourceCopy = source;
  inputController = [(SCATScannerManager *)self inputController];
  v6 = [inputController isSwitchWithSource:sourceCopy];

  return v6;
}

- (BOOL)isUsingPointMode
{
  selfCopy = self;
  _primaryElementManagerForScannerState = [(SCATScannerManager *)self _primaryElementManagerForScannerState];
  pointPicker = [(SCATScannerManager *)selfCopy pointPicker];
  LOBYTE(selfCopy) = _primaryElementManagerForScannerState == pointPicker;

  return selfCopy;
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
  currentDisplayID = [(SCATScannerManager *)self currentDisplayID];
  v3 = +[HNDHandManager sharedManager];
  v4 = [v3 displayManagerForDisplayId:currentDisplayID];

  if ([v4 isMainDisplay])
  {
    v5 = +[HNDHandManager sharedManager];
    mainDisplayManager = [v5 mainDisplayManager];
    orientation = [mainDisplayManager orientation];

    v8 = orientation - 3 < 2;
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
  isSystemSleeping = [v2 isSystemSleeping];

  return isSystemSleeping;
}

- (SCATFocusContext)currentFocusContext
{
  activeScannerDriver = [(SCATScannerManager *)self activeScannerDriver];
  focusContext = [activeScannerDriver focusContext];

  return focusContext;
}

- (SCATElement)currentElement
{
  currentFocusContext = [(SCATScannerManager *)self currentFocusContext];
  element = [currentFocusContext element];

  return element;
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
  displayManagers = [v3 displayManagers];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000E2C30;
  v16[3] = &unk_1001D7598;
  v16[4] = self;
  v16[5] = &v17;
  [displayManagers enumerateObjectsUsingBlock:v16];

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
    activeElementManager = [(SCATScannerManager *)self activeElementManager];
    pointPicker = [(SCATScannerManager *)self pointPicker];

    if (activeElementManager == pointPicker)
    {
      activeElementManager2 = [(SCATScannerManager *)self activeElementManager];
      currentDisplayID = [activeElementManager2 currentDisplayID];
    }

    else
    {
      menu = [(SCATScannerManager *)self menu];
      element = [menu element];
      if (element)
      {
        menu2 = [(SCATScannerManager *)self menu];
        activeElementManager2 = [menu2 element];
      }

      else
      {
        activeElementManager2 = [(SCATScannerManager *)self currentElement];
      }

      if (![activeElementManager2 scatDisplayId])
      {
        v13 = +[HNDHandManager sharedManager];
        mainDisplayManager = [v13 mainDisplayManager];
        LODWORD(v3) = [mainDisplayManager displayID];

        goto LABEL_15;
      }

      currentDisplayID = [activeElementManager2 scatDisplayId];
    }

    LODWORD(v3) = currentDisplayID;
LABEL_15:
  }

  return v3;
}

- (BOOL)isExternalDisplayConnected
{
  v2 = +[HNDHandManager sharedManager];
  displayManagers = [v2 displayManagers];
  v4 = [displayManagers count] > 1;

  return v4;
}

- (void)switchCurrentDisplayContext
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  lockedToDisplayID = [(SCATScannerManager *)self lockedToDisplayID];
  v3 = *(v10 + 6);
  if (!v3)
  {
    v3 = 1;
    *(v10 + 6) = 1;
  }

  v4 = +[HNDHandManager sharedManager];
  displayManagers = [v4 displayManagers];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E2E40;
  v8[3] = &unk_1001D75C0;
  v8[4] = &v9;
  [displayManagers enumerateObjectsUsingBlock:v8];

  if (v3 != *(v10 + 6))
  {
    [(SCATScannerManager *)self setLockedToDisplayID:?];
    activeElementManager = [(SCATScannerManager *)self activeElementManager];
    v7 = [(SCATScannerManager *)self scatUIContextForDisplayID:*(v10 + 6)];
    [activeElementManager presentWithDisplayContext:v7 animated:1];
  }

  _Block_object_dispose(&v9, 8);
}

- (id)axManager
{
  if (_AXSInUnitTestMode() && ([(SCATScannerManager *)self testAxManager], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    testAxManager = [(SCATScannerManager *)self testAxManager];
  }

  else
  {
    testAxManager = +[HNDAccessibilityManager sharedManager];
  }

  return testAxManager;
}

- (NSArray)recentSpeechOutputStrings
{
  outputManager = [(SCATScannerManager *)self outputManager];
  recentSpeechOutputStrings = [outputManager recentSpeechOutputStrings];

  return recentSpeechOutputStrings;
}

- (void)clearRecentSpeech
{
  outputManager = [(SCATScannerManager *)self outputManager];
  [outputManager clearRecentSpeech];
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
  pointerPointPicker = [(SCATScannerManager *)self pointerPointPicker];
  shouldTrackFocusContext = [pointerPointPicker shouldTrackFocusContext];

  return shouldTrackFocusContext;
}

- (void)setHighlightFocusContext:(BOOL)context
{
  if (self->_highlightFocusContext != context)
  {
    contextCopy = context;
    self->_highlightFocusContext = context;
    pointerPointPicker = [(SCATScannerManager *)self pointerPointPicker];
    [pointerPointPicker setShouldTrackFocusContext:contextCopy];
  }
}

- (BOOL)isActive
{
  activeScannerDriver = [(SCATScannerManager *)self activeScannerDriver];
  isActive = [activeScannerDriver isActive];

  return isActive;
}

- (BOOL)isPaused
{
  activeScannerDriver = [(SCATScannerManager *)self activeScannerDriver];
  isPaused = [activeScannerDriver isPaused];

  return isPaused;
}

- (BOOL)isInactive
{
  activeScannerDriver = [(SCATScannerManager *)self activeScannerDriver];
  isInactive = [activeScannerDriver isInactive];

  return isInactive;
}

- (void)_beginOrContinueScanningWithFocusContext:(id)context shouldBegin:(BOOL)begin foundNewElements:(BOOL)elements
{
  contextCopy = context;
  if (![(SCATScannerManager *)self _shouldIgnoreAllScannerControlMessages])
  {
    menu = [(SCATScannerManager *)self menu];
    isVisible = [menu isVisible];

    if (isVisible)
    {
      menu2 = [(SCATScannerManager *)self menu];
      element = [menu2 element];
      [contextCopy setMenuElement:element];
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000E328C;
    v14[3] = &unk_1001D3BE0;
    elementsCopy = elements;
    v14[4] = self;
    beginCopy = begin;
    v15 = contextCopy;
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
      focusContextForResume = [(SCATScannerManager *)self focusContextForResume];
      [(SCATScannerManager *)self beginScanningWithFocusContext:focusContextForResume];
    }

    else
    {
      [(SCATScannerManager *)self _updateActiveElementManager];
      activeElementManager = [(SCATScannerManager *)self activeElementManager];

      if (!activeElementManager)
      {
        beginScanningTimer = [(SCATScannerManager *)self beginScanningTimer];
        [beginScanningTimer cancel];

        beginScanningTimer2 = [(SCATScannerManager *)self beginScanningTimer];
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_1000E35A8;
        v7[3] = &unk_1001D3488;
        v7[4] = self;
        [beginScanningTimer2 afterDelay:v7 processBlock:1.0];

        return;
      }

      focusContextForResume = [(SCATScannerManager *)self activeScannerDriver];
      [focusContextForResume resumeScanning];
    }
  }
}

- (void)endScanning
{
  if (![(SCATScannerManager *)self _shouldIgnoreAllScannerControlMessages])
  {
    beginScanningTimer = [(SCATScannerManager *)self beginScanningTimer];
    [beginScanningTimer cancel];

    activeScannerDriver = [(SCATScannerManager *)self activeScannerDriver];
    [activeScannerDriver endScanning];
  }
}

- (void)pauseScanningWithScreenLockDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  if (![(SCATScannerManager *)self _shouldIgnoreAllScannerControlMessages])
  {
    [(SCATScannerManager *)self setForceDisableScreenLock:disabledCopy];
    beginScanningTimer = [(SCATScannerManager *)self beginScanningTimer];
    [beginScanningTimer cancel];

    activeScannerDriver = [(SCATScannerManager *)self activeScannerDriver];
    [activeScannerDriver pauseScanning];

    [(SCATScannerManager *)self setForceDisableScreenLock:0];
  }
}

- (void)addReasonToDisableScanning:(id)scanning
{
  scanningCopy = scanning;
  reasonsToDisableScanning = [(SCATScannerManager *)self reasonsToDisableScanning];

  if (!reasonsToDisableScanning)
  {
    v6 = +[NSMutableSet set];
    [(SCATScannerManager *)self setReasonsToDisableScanning:v6];
  }

  reasonsToDisableScanning2 = [(SCATScannerManager *)self reasonsToDisableScanning];
  v8 = [reasonsToDisableScanning2 containsObject:scanningCopy];

  if ((v8 & 1) == 0)
  {
    reasonsToDisableScanning3 = [(SCATScannerManager *)self reasonsToDisableScanning];
    v10 = [reasonsToDisableScanning3 count];

    if (!v10)
    {
      activeScannerDriver = [(SCATScannerManager *)self activeScannerDriver];
      isActive = [activeScannerDriver isActive];

      v13 = SWCHLogPauseResume();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
      if (isActive)
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

      [(SCATScannerManager *)self setDidPauseForReasonsToDisableScanning:isActive];
    }

    reasonsToDisableScanning4 = [(SCATScannerManager *)self reasonsToDisableScanning];
    [reasonsToDisableScanning4 addObject:scanningCopy];
  }
}

- (void)removeReasonToDisableScanning:(id)scanning
{
  scanningCopy = scanning;
  reasonsToDisableScanning = [(SCATScannerManager *)self reasonsToDisableScanning];
  v6 = [reasonsToDisableScanning containsObject:scanningCopy];

  if (v6)
  {
    reasonsToDisableScanning2 = [(SCATScannerManager *)self reasonsToDisableScanning];
    [reasonsToDisableScanning2 removeObject:scanningCopy];

    v8 = SWCHLogPauseResume();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      reasonsToDisableScanning3 = [(SCATScannerManager *)self reasonsToDisableScanning];
      v12 = 134218240;
      v13 = [reasonsToDisableScanning3 count];
      v14 = 1024;
      didPauseForReasonsToDisableScanning = [(SCATScannerManager *)self didPauseForReasonsToDisableScanning];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Reasons to disable scanning count: %lu.  Did pause: %i", &v12, 0x12u);
    }

    reasonsToDisableScanning4 = [(SCATScannerManager *)self reasonsToDisableScanning];
    if ([reasonsToDisableScanning4 count])
    {
    }

    else
    {
      didPauseForReasonsToDisableScanning2 = [(SCATScannerManager *)self didPauseForReasonsToDisableScanning];

      if (didPauseForReasonsToDisableScanning2)
      {
        [(SCATScannerManager *)self beginScanningWithFocusContext:0];
      }
    }
  }
}

- (BOOL)_shouldIgnoreAllScannerControlMessages
{
  reasonsToDisableScanning = [(SCATScannerManager *)self reasonsToDisableScanning];
  v3 = [reasonsToDisableScanning count] != 0;

  return v3;
}

- (void)useFocusContextOnResume:(id)resume
{
  [(SCATScannerManager *)self setFocusContextForResume:resume];

  [(SCATScannerManager *)self setDidSetFocusContextForResume:1];
}

- (BOOL)activateElement:(id)element
{
  elementCopy = element;
  if ([elementCopy isGroup])
  {
    activeScannerDriver = [(SCATScannerManager *)self activeScannerDriver];
    elementNavController = [(SCATScannerManager *)self elementNavController];
    [activeScannerDriver handleDrillInOnGroup:elementCopy elementManager:elementNavController];

    activeScannerDriver2 = [(SCATScannerManager *)self activeScannerDriver];
    focusContext = [activeScannerDriver2 focusContext];
    v9 = 1;
    [focusContext setShouldResumeFromMenuDismissal:1];
  }

  else
  {
    v9 = [elementCopy scatPerformAction:2010];
  }

  outputManager = [(SCATScannerManager *)self outputManager];
  [outputManager playSound:1001];

  [(SCATScannerManager *)self _updateActiveElementManager];
  activeElementManager = [(SCATScannerManager *)self activeElementManager];
  [activeElementManager scannerManager:self didActivateElement:elementCopy];

  if ([elementCopy scatBeginScanningFromSelfAfterActivation])
  {
    activeElementManager2 = [(SCATScannerManager *)self activeElementManager];
    v13 = [SCATFocusContext focusContextWithElement:elementCopy elementManager:activeElementManager2 selectBehavior:0 options:0];
    [(SCATScannerManager *)self beginScanningWithFocusContext:v13];
  }

  if (objc_opt_respondsToSelector())
  {
    [elementCopy scatUpdateValue];
  }

  if ((AXDeviceHasJindo() & v9) == 1)
  {
    if ([elementCopy scatIsAXElement])
    {
      uiElement = [elementCopy uiElement];
      v15 = [uiElement BOOLWithAXAttribute:2229];

      if ((v15 & 1) == 0)
      {
        AXPerformBlockOnMainThreadAfterDelay();
      }
    }
  }

  return v9;
}

- (void)selectElement:(id)element
{
  [element scatCenterPoint];

  [(SCATScannerManager *)self selectElementAtPoint:?];
}

- (void)selectElementAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  gestureProvider = [(SCATScannerManager *)self gestureProvider];
  v5 = [AXNamedReplayableGesture tapGestureAtPoint:x, y];
  [gestureProvider replayGesture:v5];
}

- (BOOL)shouldBypassShowingMenuForElement:(id)element
{
  elementCopy = element;
  v5 = +[AXSettings sharedInstance];
  switchControlTapBehavior = [v5 switchControlTapBehavior];

  v8 = switchControlTapBehavior == 2 && (v7 = [elementCopy scatTraits], (kAXAdjustableTrait & ~v7) != 0) && -[SCATScannerManager itemMenuState](self, "itemMenuState") == 0;
  return v8;
}

- (void)_updateScanningStyle
{
  _driverForScannerState = [(SCATScannerManager *)self _driverForScannerState];
  activeScannerDriver = [(SCATScannerManager *)self activeScannerDriver];

  v4 = _driverForScannerState;
  if (activeScannerDriver != _driverForScannerState)
  {
    [(SCATScannerManager *)self setActiveScannerDriver:_driverForScannerState];
    [(SCATScannerManager *)self beginScanningWithFocusContext:0];
    v4 = _driverForScannerState;
  }
}

- (void)_showSimpleBannerWithText:(id)text
{
  textCopy = text;
  v6 = +[HNDHandManager sharedManager];
  mainDisplayManager = [v6 mainDisplayManager];
  v5 = sub_100042B24(@"SWITCH_CONTROL_TITLE");
  [mainDisplayManager showSimpleBannerWithTitle:v5 text:textCopy];
}

- (void)addPointerPointPickerForMovementNotifications:(id)notifications
{
  notificationsCopy = notifications;
  _pointerPointPickersToNotify = [(SCATScannerManager *)self _pointerPointPickersToNotify];
  [_pointerPointPickersToNotify addPointer:notificationsCopy];
}

- (void)removePointerPointPickerForMovementNotifications:(id)notifications
{
  notificationsCopy = notifications;
  _pointerPointPickersToNotify = [(SCATScannerManager *)self _pointerPointPickersToNotify];
  if ([_pointerPointPickersToNotify count])
  {
    v5 = 0;
    while ([_pointerPointPickersToNotify pointerAtIndex:v5] != notificationsCopy)
    {
      if (++v5 >= [_pointerPointPickersToNotify count])
      {
        goto LABEL_7;
      }
    }

    [_pointerPointPickersToNotify removePointerAtIndex:v5];
  }

LABEL_7:
  [_pointerPointPickersToNotify compact];
}

- (void)overrideMotionTrackerLookAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  inputController = [(SCATScannerManager *)self inputController];
  [inputController overrideMotionTrackerLookAtPoint:{x, y}];
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
  currentRecipe = [(SCATScannerManager *)self currentRecipe];
  if (currentRecipe)
  {
    v6 = currentRecipe;
    currentRecipe2 = [(SCATScannerManager *)self currentRecipe];
    [currentRecipe2 timeout];
    v9 = v8;
    v10 = AXSwitchRecipeTimeoutNone;

    if (v9 != v10)
    {
      currentRecipe3 = [(SCATScannerManager *)self currentRecipe];
      [currentRecipe3 timeout];
      [(SCATScannerManager *)self performSelector:"_exitRecipeOnTimeout" withObject:0 afterDelay:?];
    }
  }
}

- (void)_exitRecipeOnTimeout
{
  currentRecipe = [(SCATScannerManager *)self currentRecipe];

  if (!currentRecipe)
  {
    _AXAssert();
  }

  [(SCATScannerManager *)self setCurrentRecipe:0];

  [(SCATScannerManager *)self beginScanningWithFocusContext:0];
}

- (void)_applyLaunchRecipeUUID
{
  v3 = +[AXSettings sharedInstance];
  switchControlLaunchRecipeUUID = [v3 switchControlLaunchRecipeUUID];

  if (switchControlLaunchRecipeUUID)
  {
    v5 = +[AXSettings sharedInstance];
    switchControlRecipes = [v5 switchControlRecipes];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = switchControlRecipes;
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
          uuid = [v12 uuid];
          switchControlLaunchRecipeUUID2 = [v3 switchControlLaunchRecipeUUID];
          v15 = [uuid isEqual:switchControlLaunchRecipeUUID2];

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

- (void)_setCurrentRecipe:(id)recipe shouldShowAlert:(BOOL)alert
{
  recipeCopy = recipe;
  v6 = +[NSThread currentThread];
  v7 = +[NSThread mainThread];

  if (v6 != v7)
  {
    _resetRecipeTimeoutIfApplicable = _AXAssert();
  }

  v9 = recipeCopy;
  if (recipeCopy)
  {
    v10 = +[AXSettings sharedInstance];
    v11 = [v10 validateAndUpdateRecipeIfNeeded:recipeCopy];

    if (v11)
    {
      v9 = recipeCopy;
    }

    else
    {
      v12 = sub_100042B24(@"RECIPE_VALIDATION_FAILED_FORMAT");
      name = [(AXSwitchRecipe *)recipeCopy name];
      v14 = [NSString stringWithFormat:v12, name];
      [(SCATScannerManager *)self _showSimpleBannerWithText:v14];

      v9 = 0;
    }
  }

  if (self->_currentRecipe != v9)
  {
    v22 = v9;
    objc_storeStrong(&self->_currentRecipe, v9);
    inputController = [(SCATScannerManager *)self inputController];
    [inputController setRecipe:v22];

    if (v22 && ![(AXSwitchRecipe *)v22 shouldContinueScanning])
    {
      [(SCATScannerManager *)self addReasonToDisableScanning:@"Recipe"];
      [(SCATScannerManager *)self _updateScanningStyle];
      if (alert)
      {
        goto LABEL_14;
      }
    }

    else
    {
      [(SCATScannerManager *)self removeReasonToDisableScanning:@"Recipe"];
      [(SCATScannerManager *)self _updateScanningStyle];
      if (alert)
      {
        if (!v22)
        {
          v16 = +[HNDHandManager sharedManager];
          mainDisplayManager = [v16 mainDisplayManager];
          v18 = sub_100042B24(@"RECIPE_DEACTIVATED");
          [mainDisplayManager showSimpleAlertWithText:v18];
LABEL_15:

          goto LABEL_16;
        }

LABEL_14:
        v16 = +[HNDHandManager sharedManager];
        mainDisplayManager = [v16 mainDisplayManager];
        v18 = sub_100042B24(@"RECIPE_ACTIVATED_FORMAT");
        name2 = [(AXSwitchRecipe *)v22 name];
        v20 = [NSString stringWithFormat:v18, name2];
        [mainDisplayManager showSimpleAlertWithText:v20];

        goto LABEL_15;
      }
    }

LABEL_16:
    _resetRecipeTimeoutIfApplicable = [(SCATScannerManager *)self _resetRecipeTimeoutIfApplicable];
    v9 = v22;
  }

  _objc_release_x1(_resetRecipeTimeoutIfApplicable, v9);
}

- (void)_showSimpleAlertForProfile:(id)profile
{
  profileCopy = profile;
  v8 = +[HNDHandManager sharedManager];
  mainDisplayManager = [v8 mainDisplayManager];
  v5 = sub_100042B24(@"SWITCH_CONTROL_PROFILE_ALERT_TITLE");
  name = [profileCopy name];

  v7 = [NSString stringWithFormat:v5, name];
  [mainDisplayManager showSimpleAlertWithText:v7];
}

- (void)calibrateEyeTracking
{
  v2 = +[AXSettings sharedInstance];
  switchControlOnDeviceEyeTrackingEnabled = [v2 switchControlOnDeviceEyeTrackingEnabled];

  if (switchControlOnDeviceEyeTrackingEnabled)
  {
    v5 = +[HNDHandManager sharedManager];
    mainDisplayManager = [v5 mainDisplayManager];
    [mainDisplayManager setNeedsRecalibration:1];
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
  menu = [(SCATScannerManager *)self menu];
  isVisible = [menu isVisible];

  if (isVisible)
  {
    gestureProvider = [(SCATScannerManager *)self gestureProvider];
    [gestureProvider startingScreenPointForGestures];
    x = v7;
    v10 = v9;

    menu2 = [(SCATScannerManager *)self menu];
    [menu2 hideWithCompletion:0];
  }

  else
  {
    activeScannerDriver = [(SCATScannerManager *)self activeScannerDriver];
    focusContext = [activeScannerDriver focusContext];
    menu2 = [focusContext element];

    if (menu2)
    {
      [menu2 scatScreenPointForOperations];
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
    gestureProvider2 = [(SCATScannerManager *)self gestureProvider];
    v17 = [AXNamedReplayableGesture forceTouchGestureAtPoint:x, v10];
    [gestureProvider2 replayGesture:v17];
  }
}

- (void)_handleDictationAction
{
  menu = [(SCATScannerManager *)self menu];
  keyboardApplication = [menu keyboardApplication];
  [keyboardApplication scatPerformAction:2049];
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
  currentElement = [(SCATScannerManager *)self currentElement];
  if ([currentElement scatIsAXElement])
  {
    v3 = currentElement;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  menu = [(SCATScannerManager *)self menu];
  isVisible = [menu isVisible];

  if (isVisible)
  {
    menu2 = [(SCATScannerManager *)self menu];
    [menu2 hideWithCompletion:0];
  }

  else
  {
    inputController = [(SCATScannerManager *)self inputController];
    if ([inputController isTadmorInputSourceConnected] && (objc_msgSend(currentElement, "scatIsMemberOfGroup") & 1) != 0)
    {
      parentGroup = [currentElement parentGroup];
      isRootGroup = [parentGroup isRootGroup];

      if ((isRootGroup & 1) == 0)
      {
        activeScannerDriver = [(SCATScannerManager *)self activeScannerDriver];
        parentGroup2 = [currentElement parentGroup];
        elementNavController = [(SCATScannerManager *)self elementNavController];
        [activeScannerDriver handleDrillOutOnGroup:parentGroup2 elementManager:elementNavController];

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
    menu2 = [v14 elementsForMatchingBlock:&stru_1001D7600];

    firstObject = [menu2 firstObject];
    if (firstObject)
    {
      v16 = firstObject;
      [firstObject performAction:2013];
    }
  }

LABEL_16:
}

- (void)_handleScrollAction:(int64_t)action
{
  if ((action - 215) >= 4)
  {
    v10 = SWCHLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10012B664(action, v10);
    }
  }

  else
  {
    v4 = dword_1001BD530[action - 215];
    menu = [(SCATScannerManager *)self menu];
    isVisible = [menu isVisible];

    if (isVisible)
    {
      menu2 = [(SCATScannerManager *)self menu];
      [menu2 hideWithCompletion:0];
    }

    currentElement = [(SCATScannerManager *)self currentElement];
    scrollableElement = [currentElement scrollableElement];
    if ([scrollableElement supportsAction:v4])
    {
      [scrollableElement performAction:v4];
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
  menu = [(SCATScannerManager *)self menu];
  isVisible = [menu isVisible];

  if (isVisible)
  {
    menu2 = [(SCATScannerManager *)self menu];
    [menu2 hideWithCompletion:0];

    gestureProvider = [(SCATScannerManager *)self gestureProvider];
    gestureProvider2 = [(SCATScannerManager *)self gestureProvider];
    [gestureProvider2 startingScreenPointForGestures];
  }

  else
  {
    gestureProvider = [(SCATScannerManager *)self gestureProvider];
    gestureProvider2 = [(SCATScannerManager *)self pointPicker];
    [gestureProvider2 pickedPointInDeviceCoordinates];
  }

  [gestureProvider toggleActiveHoldAndDragGestureAtScreenPoint:-[SCATScannerManager currentDisplayID](self withDisplayID:{"currentDisplayID"), v7, v8}];
}

- (void)_handleAppleWatchRemoteScreen
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 toggleWatchRemoteScreen];
}

- (BOOL)canAdvertise
{
  v2 = +[AXSettings sharedInstance];
  switchControlDeviceMenuItems = [v2 switchControlDeviceMenuItems];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = switchControlDeviceMenuItems;
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
        bOOLValue = [v13 BOOLValue];

        v15 = [v12 objectForKeyedSubscript:v9];
        v16 = v15;
        if (bOOLValue)
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

- (void)didConnectAsForwarderToDeviceWithName:(id)name
{
  nameCopy = name;
  v5 = sub_100042B24(@"CONNECTED_TO_RECEIVER_FORMAT");
  nameCopy = [NSString stringWithFormat:v5, nameCopy];

  [(SCATScannerManager *)self _showSimpleBannerWithText:nameCopy];
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

- (void)didConnectAsReceiverWithSettings:(id)settings
{
  settingsCopy = settings;
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
        v9 = settingsCopy;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Applying forwarder device settings %@", &v8, 0xCu);
      }

      sub_100044950(settingsCopy);
      [v4 setAssistiveTouchSwitchUsageConfirmed:1];
    }
  }

  v6 = +[HNDAccessibilityManager sharedManager];
  [v6 resetElementFetcher];

  v7 = +[HNDEventManager sharedManager];
  [v7 wakeDeviceFromSleepIfNecessary];
}

- (void)didDisconnectAsForwarderFromDeviceWithName:(id)name
{
  nameCopy = name;
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v10 = nameCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Did disconnect as forwarder from device name: %{private}@.", buf, 0xCu);
  }

  if (_AXSAssistiveTouchScannerEnabled())
  {
    v6 = sub_100042B24(@"DISCONNECTED_FROM_RECEIVER_FORMAT");
    nameCopy = [NSString stringWithFormat:v6, nameCopy];
    [(SCATScannerManager *)self _showSimpleBannerWithText:nameCopy];
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
  switchControlIsEnabledAsReceiver = [v4 switchControlIsEnabledAsReceiver];

  if (switchControlIsEnabledAsReceiver)
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
  delegate = [(SCATScannerManager *)self delegate];
  [delegate stopIfAllowed];
}

- (void)_removeInterdeviceSwitches
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchSwitches = [v2 assistiveTouchSwitches];

  v3 = [assistiveTouchSwitches mutableCopy];
  v4 = [assistiveTouchSwitches objectsPassingTest:&stru_1001D7620];
  [v3 minusSet:v4];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchSwitches:v3];
}

- (void)_disableUserInterfaceClientForPotentialReceiver
{
  v3 = +[HNDHandManager sharedManager];
  mainDisplayManager = [v3 mainDisplayManager];
  [mainDisplayManager removeUserInterfaceClientEnabler:@"PotentialReceiver"];
}

- (void)highlightAsPotentialReceiverForDeviceWithName:(id)name
{
  nameCopy = name;
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_disableUserInterfaceClientForPotentialReceiver" object:0];
  v5 = +[HNDHandManager sharedManager];
  mainDisplayManager = [v5 mainDisplayManager];
  [mainDisplayManager addUserInterfaceClientEnabler:@"PotentialReceiver"];

  v7 = +[HNDEventManager sharedManager];
  [v7 wakeDeviceFromSleepIfNecessary];

  v8 = sub_100042B24(@"POTENTIAL_RECEIVER_MESSAGE_FORMAT");
  nameCopy = [NSString stringWithFormat:v8, nameCopy];

  [(SCATScannerManager *)self _showSimpleBannerWithText:nameCopy];

  [(SCATScannerManager *)self performSelector:"_disableUserInterfaceClientForPotentialReceiver" withObject:0 afterDelay:15.0];
}

- (void)_driver:(id)_driver outputAudioForContext:(id)context
{
  _driverCopy = _driver;
  contextCopy = context;
  areSoundEffectsEnabled = [(SCATScannerManager *)self areSoundEffectsEnabled];
  if (contextCopy && areSoundEffectsEnabled && ([contextCopy shouldSuppressAudioOutput] & 1) == 0)
  {
    shouldPlayMenuSoundOnFocus = [contextCopy shouldPlayMenuSoundOnFocus];
    outputManager = [(SCATScannerManager *)self outputManager];
    v11 = outputManager;
    if (shouldPlayMenuSoundOnFocus)
    {
      v12 = 1002;
    }

    else
    {
      v12 = 1000;
    }

    [outputManager playSound:v12];
  }

  if (-[SCATScannerManager isSpeechEnabled](self, "isSpeechEnabled") && ([contextCopy shouldSuppressAudioOutput] & 1) == 0)
  {
    element = [contextCopy element];
    scatSpeakableDescription = [element scatSpeakableDescription];

    if ([scatSpeakableDescription length])
    {
      outputManager2 = [(SCATScannerManager *)self outputManager];
      scanningInterruptsSpeech = [outputManager2 scanningInterruptsSpeech];

      outputManager3 = [(SCATScannerManager *)self outputManager];
      v18 = outputManager3;
      if (scanningInterruptsSpeech)
      {
        [outputManager3 outputScannerFocusContext:contextCopy completion:0];
      }

      else
      {
        [_driverCopy outputManager:outputManager3 willSpeakFocusContext:contextCopy];

        outputManager4 = [(SCATScannerManager *)self outputManager];
        objc_initWeak(&location, outputManager4);

        outputManager5 = [(SCATScannerManager *)self outputManager];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1000E5C38;
        v21[3] = &unk_1001D7670;
        v22 = _driverCopy;
        objc_copyWeak(&v24, &location);
        v23 = contextCopy;
        [outputManager5 outputScannerFocusContext:v23 completion:v21];

        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (void)driver:(id)driver didFocusOnContext:(id)context oldContext:(id)oldContext
{
  driverCopy = driver;
  contextCopy = context;
  oldContextCopy = oldContext;
  if ([contextCopy isFirstInSequence])
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = ![(SCATScannerManager *)self isGroupingEnabled];
  menu = [(SCATScannerManager *)self menu];
  isVisible = [menu isVisible];

  if (isVisible)
  {
    menu2 = [(SCATScannerManager *)self menu];
    element = [menu2 element];
    [contextCopy setMenuElement:element];
  }

  cursorManager = [(SCATScannerManager *)self cursorManager];
  [cursorManager updateWithFocusContext:contextCopy animated:0 options:v10 | v11];

  if ([(SCATScannerManager *)self isActive])
  {
    [(SCATScannerManager *)self _driver:driverCopy outputAudioForContext:contextCopy];
  }

  [(SCATScannerManager *)self setFocusContextForResume:0];
  [(SCATScannerManager *)self setDidSetFocusContextForResume:0];
  [(SCATScannerManager *)self _notifyObserversScannerDidFocusOnContext:contextCopy oldContext:oldContextCopy];
}

- (void)driverDidPause:(id)pause
{
  if ([(SCATScannerManager *)self _isScannerControlledByDriver:pause])
  {
    [(SCATScannerManager *)self hideUIContext:1];
    [(SCATScannerManager *)self _updateAudioSessionState];
  }

  [(SCATScannerManager *)self _notifyObserversScannerDidPause];
}

- (void)driverDidBecomeInactive:(id)inactive
{
  if ([(SCATScannerManager *)self _isScannerControlledByDriver:inactive])
  {
    [(SCATScannerManager *)self hideUIContext:1];
    [(SCATScannerManager *)self _updateAudioSessionState];
  }

  [(SCATScannerManager *)self _notifyObserversScannerDidBecomeInactive];
}

- (void)driverDidBecomeActive:(id)active didChange:(BOOL)change
{
  changeCopy = change;
  activeCopy = active;
  if ([(SCATScannerManager *)self _isScannerControlledByDriver:?])
  {
    [(SCATScannerManager *)self showUIContext:1];
    [(SCATScannerManager *)self _updateAudioSessionState];
    if (changeCopy)
    {
      currentFocusContext = [(SCATScannerManager *)self currentFocusContext];
      [(SCATScannerManager *)self _driver:activeCopy outputAudioForContext:currentFocusContext];

      [(SCATScannerManager *)self _notifyObserversScannerDidBecomeActive];
    }
  }
}

- (void)driver:(id)driver indicateDwellScanningWillAbort:(BOOL)abort
{
  abortCopy = abort;
  driverCopy = driver;
  if ([(SCATScannerManager *)self _isScannerControlledByDriver:?])
  {
    cursorManager = [(SCATScannerManager *)self cursorManager];
    focusContext = [driverCopy focusContext];
    if (abortCopy)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    [cursorManager updateWithFocusContext:focusContext animated:0 options:v8];
  }
}

- (void)actionHandlerForUIDidCancelPendingAction:(id)action
{
  actionCopy = action;
  selectActionHandler = [(SCATScannerManager *)self selectActionHandler];
  v6 = [actionCopy isEqual:selectActionHandler];

  if (v6)
  {
    cursorManager = [(SCATScannerManager *)self cursorManager];
    [cursorManager cancelSelectTimeoutAnimationIfNeeded];

    autoScanningDriver = [(SCATScannerManager *)self autoScanningDriver];
    [autoScanningDriver resumeAutoscanning:1];
  }
}

- (void)actionHandlerForUIWillFireAction:(id)action
{
  actionCopy = action;
  selectActionHandler = [(SCATScannerManager *)self selectActionHandler];
  v6 = [actionCopy isEqual:selectActionHandler];

  if (v6)
  {
    cursorManager = [(SCATScannerManager *)self cursorManager];
    [cursorManager cancelSelectTimeoutAnimationIfNeeded];

    autoScanningDriver = [(SCATScannerManager *)self autoScanningDriver];
    [autoScanningDriver resumeAutoscanning:1];
  }
}

- (void)actionHandlerForUI:(id)i willPerformDelayedActionOnContext:(id)context withCount:(unint64_t)count
{
  iCopy = i;
  selectActionHandler = [(SCATScannerManager *)self selectActionHandler];
  v9 = [iCopy isEqual:selectActionHandler];

  if (count == 1 && v9)
  {
    activeElementManager = [(SCATScannerManager *)self activeElementManager];
    [activeElementManager hideIfNeeded:0];

    autoScanningDriver = [(SCATScannerManager *)self autoScanningDriver];
    [autoScanningDriver pauseAutoscanning];

    cursorManager = [(SCATScannerManager *)self cursorManager];
    selectActionHandler2 = [(SCATScannerManager *)self selectActionHandler];
    [selectActionHandler2 timeoutDuration];
    [cursorManager beginSelectTimeoutAnimation:?];
  }
}

- (BOOL)cursorManagerShouldHideMenuCursor:(id)cursor
{
  menu = [(SCATScannerManager *)self menu];
  shouldHideMenuCursor = [menu shouldHideMenuCursor];

  return shouldHideMenuCursor;
}

- (void)accessibilityManager:(id)manager didReceiveEvent:(int64_t)event data:(id)data
{
  managerCopy = manager;
  dataCopy = data;
  if (event <= 5)
  {
    if (event <= 3)
    {
      if (event == 1)
      {
        [(SCATScannerManager *)self handleScreenChange:dataCopy];
      }

      else if (event == 2)
      {
        [(SCATScannerManager *)self handleAlertDidAppear:dataCopy];
      }

      goto LABEL_23;
    }

    [(SCATScannerManager *)self activeElementManager];
    if (event == 4)
      menu2 = {;
      [menu2 appTransitionDidOccur:self];
    }

    else
      menu2 = {;
      [menu2 firstResponderDidChange:self];
    }

LABEL_21:

    goto LABEL_23;
  }

  if (event > 9)
  {
    if (event == 10)
    {
      [(SCATScannerManager *)self handleAnnouncement:dataCopy];
    }

    else if (event == 11)
    {
      [(SCATScannerManager *)self handleStopSpeaking:dataCopy];
    }
  }

  else
  {
    if (event == 6)
    {
      gestureProvider = [(SCATScannerManager *)self gestureProvider];
      [gestureProvider orientationDidChange:self];

      activeElementManager = [(SCATScannerManager *)self activeElementManager];
      [activeElementManager orientationDidChange:self];

      activeElementManager2 = [(SCATScannerManager *)self activeElementManager];
      menu = [(SCATScannerManager *)self menu];

      if (activeElementManager2 == menu)
      {
        goto LABEL_23;
      }

      menu2 = [(SCATScannerManager *)self menu];
      [menu2 orientationDidChange:self];
      goto LABEL_21;
    }

    if (event == 7)
    {
      outputManager = [(SCATScannerManager *)self outputManager];
      areSoundEffectsEnabled = [outputManager areSoundEffectsEnabled];

      if (areSoundEffectsEnabled)
      {
        outputManager2 = [(SCATScannerManager *)self outputManager];
        [outputManager2 playSound:1006];
      }

      [(SCATScannerManager *)self _setCurrentRecipe:0 shouldShowAlert:0];
      [(SCATScannerManager *)self endScanning];
    }
  }

LABEL_23:
}

- (void)accessibilityManager:(id)manager screenWillChange:(__CFData *)change
{
  v5 = [(SCATScannerManager *)self activeElementManager:manager];
  [v5 screenWillChange:self];
}

- (int)_validatedSelectBehaviorForCurrentSelectBehavior:(int)behavior replacementElement:(id)element
{
  behaviorCopy = behavior;
  if ((behavior - 3) <= 1 && ![element isGroup])
  {
    return 0;
  }

  return behaviorCopy;
}

- (void)handleAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  outputManager = [(SCATScannerManager *)self outputManager];
  isSpeechEnabled = [outputManager isSpeechEnabled];

  if (isSpeechEnabled)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([announcementCopy hasPrefix:@"AXAnnouncementType"] & 1) == 0 && (objc_msgSend(announcementCopy, "isEqualToString:", kAXAnnouncementCollaborationOccurredSound) & 1) == 0)
    {
      outputManager2 = [(SCATScannerManager *)self outputManager];
      [outputManager2 outputScannerAnnouncement:announcementCopy completionBlock:0];
    }
  }
}

- (void)handleAlertDidAppear:(id)appear
{
  activeElementManager = [(SCATScannerManager *)self activeElementManager];
  [activeElementManager alertDidAppear:self];

  outputManager = [(SCATScannerManager *)self outputManager];
  areSoundEffectsEnabled = [outputManager areSoundEffectsEnabled];

  if (areSoundEffectsEnabled)
  {
    outputManager2 = [(SCATScannerManager *)self outputManager];
    [outputManager2 playSound:1003];
  }
}

- (void)handleScreenChange:(id)change
{
  changeCopy = change;
  outputManager = [(SCATScannerManager *)self outputManager];
  areSoundEffectsEnabled = [outputManager areSoundEffectsEnabled];

  if (areSoundEffectsEnabled)
  {
    outputManager2 = [(SCATScannerManager *)self outputManager];
    [outputManager2 playSound:1005];
  }

  activeElementManager = [(SCATScannerManager *)self activeElementManager];
  [activeElementManager screenDidChange:self data:changeCopy];
}

- (void)handleStopSpeaking:(id)speaking
{
  outputManager = [(SCATScannerManager *)self outputManager];
  isSpeechEnabled = [outputManager isSpeechEnabled];

  if (isSpeechEnabled)
  {
    outputManager2 = [(SCATScannerManager *)self outputManager];
    [outputManager2 cancelSpeech];
  }
}

- (void)_updateMenuAfterElementFetchFoundNewElements:(BOOL)elements
{
  elementsCopy = elements;
  if ([(SCATScannerManager *)self isActive]&& ([(SCATScannerManager *)self activeElementManager], v5 = objc_claimAutoreleasedReturnValue(), [(SCATScannerManager *)self menu], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v5 == v6))
  {
    currentElement = [(SCATScannerManager *)self currentElement];
  }

  else
  {
    currentElement = 0;
  }

  v18 = 0;
  menu = [(SCATScannerManager *)self menu];
  v9 = [menu updateAfterFetchWithCurrentlyScannedElement:currentElement options:&v18];

  if (v9)
  {
    currentFocusContext = [(SCATScannerManager *)self currentFocusContext];
    v11 = -[SCATScannerManager _validatedSelectBehaviorForCurrentSelectBehavior:replacementElement:](self, "_validatedSelectBehaviorForCurrentSelectBehavior:replacementElement:", [currentFocusContext selectBehavior], v9);

    menu2 = [(SCATScannerManager *)self menu];
    v13 = [SCATFocusContext focusContextWithElement:v9 elementManager:menu2 selectBehavior:v11 options:v18];
    [(SCATScannerManager *)self continueScanningWithFocusContext:v13 foundNewElements:elementsCopy];
  }

  currentFocusContext2 = [(SCATScannerManager *)self currentFocusContext];
  menu3 = [(SCATScannerManager *)self menu];
  element = [menu3 element];
  [currentFocusContext2 setMenuElement:element];

  cursorManager = [(SCATScannerManager *)self cursorManager];
  [cursorManager updateWithFocusContext:currentFocusContext2 animated:0 options:0];
}

- (void)accessibilityManager:(id)manager didFetchElementsForEvent:(int64_t)event foundNewElements:(BOOL)elements
{
  elementsCopy = elements;
  managerCopy = manager;
  if (!_AXSInUnitTestMode() || ([(SCATScannerManager *)self testAxManager], v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == managerCopy))
  {
    activeElementManager = [(SCATScannerManager *)self activeElementManager];
    [(SCATScannerManager *)self _updateActiveElementManager];
    activeElementManager2 = [(SCATScannerManager *)self activeElementManager];

    if (activeElementManager2)
    {
      activeElementManager3 = [(SCATScannerManager *)self activeElementManager];
      currentFocusContext = [(SCATScannerManager *)self currentFocusContext];
      activeElementManager4 = [(SCATScannerManager *)self activeElementManager];
      [activeElementManager3 didFetchElements:self foundNewElements:elementsCopy currentFocusContext:currentFocusContext didChangeActiveElementManager:activeElementManager != activeElementManager4];
    }

    else
    {
      beginScanningTimer = [(SCATScannerManager *)self beginScanningTimer];
      [beginScanningTimer cancel];

      activeElementManager3 = [(SCATScannerManager *)self beginScanningTimer];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000E6D00;
      v24[3] = &unk_1001D3488;
      v24[4] = self;
      [activeElementManager3 afterDelay:v24 processBlock:1.0];
    }

    menu = [(SCATScannerManager *)self menu];
    isVisible = [menu isVisible];

    if (isVisible)
    {
      menu2 = [(SCATScannerManager *)self menu];
      element = [menu2 element];

      if (([element scatUpdatesMenu] & 1) != 0 || (v19 = objc_msgSend(element, "scatTraits"), (kAXCausesPageTurnTrait & ~v19) == 0) && (-[SCATScannerManager axManager](self, "axManager"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "scannerElementMatchingElement:", element), v21 = objc_claimAutoreleasedReturnValue(), v21, v20, !v21))
      {
        [(SCATScannerManager *)self _updateMenuAfterElementFetchFoundNewElements:elementsCopy];
      }
    }

    if (AXInPreboardScenario())
    {
      axManager = [(SCATScannerManager *)self axManager];
      hasZeroElements = [axManager hasZeroElements];

      if (hasZeroElements)
      {
        AXPerformBlockOnMainThreadAfterDelay();
      }
    }
  }
}

- (void)accessibilityManager:(id)manager nativeFocusElementDidChange:(id)change
{
  changeCopy = change;
  [manager refreshElements];
  menu = [(SCATScannerManager *)self menu];
  isWaitingToBePresented = [menu isWaitingToBePresented];

  if (isWaitingToBePresented)
  {
    menu2 = [(SCATScannerManager *)self menu];
    [menu2 presentWithElement:changeCopy];

    menu3 = [(SCATScannerManager *)self menu];
    [menu3 setIsWaitingToBePresented:0];
  }

  activeElementManager = [(SCATScannerManager *)self activeElementManager];
  menu4 = [(SCATScannerManager *)self menu];

  if (activeElementManager == menu4)
  {
    menu5 = [(SCATScannerManager *)self menu];
    [menu5 nativeFocusElementDidChange:changeCopy];

    activeScannerDriver = [(SCATScannerManager *)self activeScannerDriver];
    [activeScannerDriver tickleIdleTimer];
  }
}

- (void)accessibilityManager:(id)manager updateElementVisuals:(id)visuals
{
  v4 = [(SCATScannerManager *)self updateElementVisualsCoalescer:manager];
  [v4 notifyUpdateElementVisualsEventDidOccur];
}

- (void)accessibilityManager:(id)manager applicationWasActivated:(id)activated
{
  activatedCopy = activated;
  [manager refreshElements];
  activeElementManager = [(SCATScannerManager *)self activeElementManager];
  menu = [(SCATScannerManager *)self menu];

  if (activeElementManager == menu)
  {
    menu2 = [(SCATScannerManager *)self menu];
    [menu2 hideWithCompletion:0];

    [(SCATScannerManager *)self endScanning];
    v10 = dispatch_get_global_queue(9, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000E6FBC;
    v11[3] = &unk_1001D36E8;
    v11[4] = self;
    v12 = activatedCopy;
    dispatch_async(v10, v11);
  }
}

- (void)_waitForApplication:(id)application
{
  applicationCopy = application;
  v24 = +[NSDate date];
  v4 = 0;
  while (1)
  {
    bundleId = [v4 bundleId];
    v6 = [applicationCopy valueForKey:@"bundleID"];
    v7 = [bundleId isEqualToString:v6];

    if (v7)
    {
      break;
    }

    v8 = +[AXElement systemWideElement];
    systemApplication = [v8 systemApplication];
    currentApplications = [systemApplication currentApplications];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = currentApplications;
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
          bundleId2 = [v16 bundleId];
          v18 = [applicationCopy valueForKey:@"bundleID"];
          v19 = [bundleId2 isEqualToString:v18];

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
  activeScannerDriver = [(SCATScannerManager *)self activeScannerDriver];
  focusContext = [activeScannerDriver focusContext];
  v4 = focusContext;
  if (focusContext)
  {
    elementManager = [focusContext elementManager];
    menu = [(SCATScannerManager *)self menu];
    if (elementManager == menu)
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

    cursorManager = [(SCATScannerManager *)self cursorManager];
    [cursorManager updateWithFocusContext:v4 animated:0 options:0];
  }
}

- (void)didBeginLongPressForInputController:(id)controller
{
  v4 = +[AXSettings sharedInstance];
  assistiveTouchLongPressPauseScanningEnabled = [v4 assistiveTouchLongPressPauseScanningEnabled];

  if (assistiveTouchLongPressPauseScanningEnabled)
  {
    autoScanningDriver = [(SCATScannerManager *)self autoScanningDriver];
    [autoScanningDriver pauseAutoscanning];
  }
}

- (void)didEndLongPressForInputController:(id)controller
{
  v4 = +[AXSettings sharedInstance];
  assistiveTouchLongPressPauseScanningEnabled = [v4 assistiveTouchLongPressPauseScanningEnabled];

  if (assistiveTouchLongPressPauseScanningEnabled)
  {
    autoScanningDriver = [(SCATScannerManager *)self autoScanningDriver];
    selectActionHandler = [(SCATScannerManager *)self selectActionHandler];
    [autoScanningDriver resumeAutoscanning:{objc_msgSend(selectActionHandler, "isPending") ^ 1}];
  }
}

- (void)inputController:(id)controller didReceiveAction:(id)action
{
  controllerCopy = controller;
  actionCopy = action;
  [(SCATScannerManager *)self setCurrentAction:actionCopy];
  v8 = +[HNDHandManager sharedManager];
  [v8 notifyUserEventOccurred];

  if (![(SCATScannerManager *)self isSystemSleeping])
  {
    selectActionHandler = [(SCATScannerManager *)self selectActionHandler];
    delegate = [selectActionHandler delegate];
    if ([delegate isEqual:self])
    {
      selectActionHandler2 = [(SCATScannerManager *)self selectActionHandler];
      actionCount = [selectActionHandler2 actionCount];

      if (actionCount)
      {
        if ([actionCopy action] == 103)
        {
          selectActionHandler3 = [(SCATScannerManager *)self selectActionHandler];
          _driverForScannerState = selectActionHandler3;
        }

        else
        {
          action = [actionCopy action];
          selectActionHandler3 = [(SCATScannerManager *)self selectActionHandler];
          _driverForScannerState = selectActionHandler3;
          if (action != 109)
          {
            [selectActionHandler3 cancelPendingAction];
            goto LABEL_22;
          }
        }

        [selectActionHandler3 notifyDidReceiveAction:self];
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
    }

    if ([(SCATScannerManager *)self isInactive])
    {
      _driverForScannerState = [(SCATScannerManager *)self _driverForScannerState];
      [(SCATScannerManager *)self setActiveScannerDriver:_driverForScannerState];
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

    activeScannerDriver = [(SCATScannerManager *)self activeScannerDriver];
    if (objc_opt_respondsToSelector())
    {
      activeScannerDriver2 = [(SCATScannerManager *)self activeScannerDriver];
      v18 = [activeScannerDriver2 handleInputAction:actionCopy];

      if (v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    shortcutIdentifier = [actionCopy shortcutIdentifier];

    if (shortcutIdentifier)
    {
      v21 = +[AXSiriShortcutsManager sharedManager];
      shortcutIdentifier2 = [actionCopy shortcutIdentifier];
      focusContext = [v21 shortcutForIdentifier:shortcutIdentifier2];

      v24 = +[AXSiriShortcutsManager sharedManager];
      [v24 performShortcut:focusContext];

LABEL_20:
      goto LABEL_23;
    }

    action2 = [actionCopy action];
    if (action2 > 199)
    {
      if (action2 <= 299)
      {
        switch(action2)
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
            -[SCATScannerManager _handleScrollAction:](self, "_handleScrollAction:", [actionCopy action]);
            break;
          default:
            goto LABEL_83;
        }

        goto LABEL_23;
      }

      if (action2 <= 303)
      {
        if (action2 > 301)
        {
          if (action2 == 302)
          {
            menu = +[AXElement systemWideElement];
            [menu systemPressTVHomeButton];
          }

          else
          {
            menu = +[AXElement systemWideElement];
            [menu systemPressTVPlayPauseButton];
          }
        }

        else if (action2 == 300)
        {
          menu = +[AXElement systemWideElement];
          [menu systemPressTVSelectButton];
        }

        else
        {
          menu = +[AXElement systemWideElement];
          [menu systemPressTVMenuButton];
        }
      }

      else if (action2 <= 305)
      {
        if (action2 == 304)
        {
          menu = +[AXElement systemWideElement];
          [menu systemPressTVUpButton];
        }

        else
        {
          menu = +[AXElement systemWideElement];
          [menu systemPressTVDownButton];
        }
      }

      else
      {
        switch(action2)
        {
          case 306:
            menu = +[AXElement systemWideElement];
            [menu systemPressTVLeftButton];
            break;
          case 307:
            menu = +[AXElement systemWideElement];
            [menu systemPressTVRightButton];
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

    if (action2 > 104)
    {
      if (action2 <= 106)
      {
        if (action2 != 105)
        {
          [(SCATScannerManager *)self endScanning];
          goto LABEL_23;
        }

        LOBYTE(v46) = 1;
        _AXLogWithFacility();
        v34 = [(SCATScannerManager *)self activeScannerDriver:v46];
        _driverForScannerState = [v34 focusContext];

        activeScannerDriver3 = [(SCATScannerManager *)self activeScannerDriver];
        v28 = activeScannerDriver3;
        v29 = _driverForScannerState;
        v30 = 1;
        goto LABEL_79;
      }

      switch(action2)
      {
        case 'k':
          menu = [(SCATScannerManager *)self menu];
          [menu presentSiriShortcutsMenu];
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
      if (action2 > 101)
      {
        if (action2 == 102)
        {
          activeScannerDriver4 = [(SCATScannerManager *)self activeScannerDriver];
          focusContext = [activeScannerDriver4 focusContext];

          autoScanningDriver = [(SCATScannerManager *)self autoScanningDriver];
          [(SCATScannerManager *)self setActiveScannerDriver:autoScanningDriver];

          [(SCATScannerManager *)self beginScanningWithFocusContext:focusContext];
          goto LABEL_20;
        }

        if (action2 != 103)
        {
          LOBYTE(v46) = 1;
          _AXLogWithFacility();
          v26 = [(SCATScannerManager *)self activeScannerDriver:v46];
          _driverForScannerState = [v26 focusContext];

          activeScannerDriver3 = [(SCATScannerManager *)self activeScannerDriver];
          v28 = activeScannerDriver3;
          v29 = _driverForScannerState;
          v30 = 0;
LABEL_79:
          v35 = [activeScannerDriver3 nextFocusContextFromContext:v29 inDirection:v30 didWrap:0];

          manualScanningDriver = [(SCATScannerManager *)self manualScanningDriver];
          [(SCATScannerManager *)self setActiveScannerDriver:manualScanningDriver];

          activeScannerDriver5 = [(SCATScannerManager *)self activeScannerDriver];
          [activeScannerDriver5 beginScanningWithFocusContext:v35];

          goto LABEL_22;
        }

        goto LABEL_52;
      }

      if (action2 == 100)
      {
        goto LABEL_52;
      }

      if (action2 == 101)
      {
        v32 = +[AXSettings sharedInstance];
        switchControlHasEmptyTopLevelMenu = [v32 switchControlHasEmptyTopLevelMenu];

        if (switchControlHasEmptyTopLevelMenu)
        {
          v51 = controllerCopy;
          AXPerformBlockAsynchronouslyOnMainThread();

          goto LABEL_23;
        }

        menu2 = [(SCATScannerManager *)self menu];
        isVisible = [menu2 isVisible];

        if (!isVisible)
        {
          activeScannerDriver6 = [(SCATScannerManager *)self activeScannerDriver];
          _driverForScannerState = [activeScannerDriver6 focusContext];

          element = [_driverForScannerState element];

          menu3 = [(SCATScannerManager *)self menu];
          if (element)
          {
            element2 = [_driverForScannerState element];
            [menu3 presentWithElement:element2];
          }

          else
          {
            element2 = [(SCATScannerManager *)self pointPicker];
            [menu3 presentWithPointPicker:element2];
          }

          goto LABEL_22;
        }

        menu = [(SCATScannerManager *)self menu];
        [menu hideWithCompletion:&stru_1001D7690];
        goto LABEL_86;
      }
    }

LABEL_83:
    [actionCopy action];
    _driverForScannerState = SCATActionDescription();
    v49 = _driverForScannerState;
    selfCopy = self;
    v47 = @"Unable to handle unknown action: %@ (%@). manager:%@";
    v48 = actionCopy;
    LOBYTE(v46) = 1;
    _AXLogWithFacility();
    goto LABEL_22;
  }

  v9 = +[HNDEventManager sharedManager];
  [v9 wakeDeviceFromSleepIfNecessary];
LABEL_24:
}

- (void)inputController:(id)controller didReceiveRecipeActionForMappingAtIndex:(unint64_t)index isLongPressAction:(BOOL)action
{
  actionCopy = action;
  controllerCopy = controller;
  [(SCATScannerManager *)self _resetRecipeTimeoutIfApplicable];
  recipe = [controllerCopy recipe];
  mappings = [recipe mappings];
  v10 = [mappings objectAtIndexedSubscript:index];

  if (actionCopy)
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
    indexCopy = index;
    v25 = actionCopy;
    _AXAssert();
  }

  if ([v11 isEqualToString:{AXSwitchRecipeMappingActionSelect, indexCopy, v25}])
  {
    v12 = [SCATActionItem fromAction:103];
    [(SCATScannerManager *)self inputController:controllerCopy didReceiveAction:v12];
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
    gestureProvider = [(SCATScannerManager *)self gestureProvider];
    [gestureProvider replayGesture:v12];

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
    if (actionCopy)
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

  gameControlButtonPress = [v10 gameControlButtonPress];
  v18 = +[AXElement systemWideElement];
  systemApplication = [v18 systemApplication];
  currentApplications = [systemApplication currentApplications];
  firstObject = [currentApplications firstObject];

  uiElement = [firstObject uiElement];
  dictionaryRepresentation = [gameControlButtonPress dictionaryRepresentation];
  [uiElement performAXAction:7000 withValue:dictionaryRepresentation];

LABEL_17:
}

- (void)inputController:(id)controller didReceiveRecipeHoldAtPoint:(CGPoint)point isDown:(BOOL)down
{
  downCopy = down;
  y = point.y;
  x = point.x;
  [(SCATScannerManager *)self _resetRecipeTimeoutIfApplicable];
  gestureProvider = [(SCATScannerManager *)self gestureProvider];
  [gestureProvider performHoldAtPoint:downCopy isDown:{x, y}];
}

- (id)userInterfaceClientForInputController:(id)controller
{
  v3 = +[HNDHandManager sharedManager];
  mainDisplayManager = [v3 mainDisplayManager];
  userInterfaceClient = [mainDisplayManager userInterfaceClient];

  return userInterfaceClient;
}

- (void)performSysdiagnoseForInputController:(id)controller
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Performing sysdiagnose.", v4, 2u);
  }

  [Libsysdiagnose sysdiagnoseWithMetadata:&off_1001E5930 onCompletion:&stru_1001D76D0];
}

- (void)inputController:(id)controller didReceivePoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  controllerCopy = controller;
  pointPicker = [(SCATScannerManager *)self pointPicker];
  [pointPicker moveToPoint:{x, y}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  _pointerPointPickersToNotify = [(SCATScannerManager *)self _pointerPointPickersToNotify];
  v10 = [_pointerPointPickersToNotify countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(_pointerPointPickersToNotify);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (v14)
        {
          [v14 moveToPoint:{x, y}];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [_pointerPointPickersToNotify countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  [(SCATScannerManager *)self _notifyObserversInputController:controllerCopy didReceivePoint:x, y];
}

- (void)inputController:(id)controller didUpdateSignalQuality:(int64_t)quality
{
  if (![(SCATScannerManager *)self scanningMode])
  {
    cursorManager = [(SCATScannerManager *)self cursorManager];
    [cursorManager didUpdateSignalQuality:quality];
  }
}

- (void)inputController:(id)controller didReceiveItemSelectionIndex:(int64_t)index
{
  activeScannerDriver = [(SCATScannerManager *)self activeScannerDriver];
  [activeScannerDriver selectItemWithIndex:index];
}

- (void)inputController:(id)controller didReceiveMovementDelta:(CGPoint)delta
{
  y = delta.y;
  x = delta.x;
  if ([(SCATScannerManager *)self scanningMode]== 6)
  {
    [(SCATScannerManager *)self _tadmorNewPickedPointWithDelta:x, y];
    v8 = v7;
    v10 = v9;
    pointPicker = [(SCATScannerManager *)self pointPicker];
    [pointPicker moveToPoint:{v8, v10}];
  }
}

- (void)inputController:(id)controller showAlert:(id)alert
{
  alertCopy = alert;
  v5 = SWCHLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = alertCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Showing alert with message: %@.", &v8, 0xCu);
  }

  v6 = +[HNDHandManager sharedManager];
  mainDisplayManager = [v6 mainDisplayManager];
  [mainDisplayManager showBubbleNotificationWithError:alertCopy duration:1.84467441e19];
}

- (void)inputController:(id)controller shouldHideAlerts:(BOOL)alerts
{
  if (alerts)
  {
    v4 = SWCHLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Hiding alerts.", v7, 2u);
    }

    v5 = +[HNDHandManager sharedManager];
    mainDisplayManager = [v5 mainDisplayManager];
    [mainDisplayManager hideBubbleNotification];
  }
}

- (CGPoint)_tadmorNewPickedPointWithDelta:(CGPoint)delta
{
  y = delta.y;
  x = delta.x;
  v6 = +[UIScreen mainScreen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  pointPicker = [(SCATScannerManager *)self pointPicker];
  [pointPicker lastReceivedPoint];
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
  switchControlUseCameraForPointMode = [v2 switchControlUseCameraForPointMode];

  return switchControlUseCameraForPointMode;
}

- (void)inputControllerPointPickerInterrupted:(id)interrupted
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 assistiveTouchScanningMode] == 3)
  {
  }

  else
  {
    v4 = +[AXSettings sharedInstance];
    assistiveTouchScanningMode = [v4 assistiveTouchScanningMode];

    if (assistiveTouchScanningMode != 5)
    {
      return;
    }
  }

  v6 = +[AXSettings sharedInstance];
  [v6 setAssistiveTouchScanningMode:0];
}

- (void)menu:(id)menu showAlternateKeysForKey:(id)key
{
  keyCopy = key;
  alternateKeysManager = [(SCATScannerManager *)self alternateKeysManager];
  [alternateKeysManager showAlternateKeysForKey:keyCopy];
}

- (void)menu:(id)menu showTypingCandidates:(id)candidates
{
  candidatesCopy = candidates;
  candidateBarManager = [(SCATScannerManager *)self candidateBarManager];
  [candidateBarManager setTypingCandidates:candidatesCopy];
}

- (CGRect)menu:(id)menu rectToClearForFingersWithGestureSheet:(BOOL)sheet
{
  sheetCopy = sheet;
  gestureProvider = [(SCATScannerManager *)self gestureProvider];
  [gestureProvider rectToClearForFingersWithGestureSheet:sheetCopy];
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

- (id)gesturesSheetForMenu:(id)menu
{
  gestureProvider = [(SCATScannerManager *)self gestureProvider];
  gesturesSheet = [gestureProvider gesturesSheet];

  return gesturesSheet;
}

- (void)didPressScreenChangingButtonInMenu:(id)menu
{
  activeElementManager = [(SCATScannerManager *)self activeElementManager];
  [activeElementManager screenChangingButtonWasPressed:self];
}

- (id)exitActionElementForFingersInMenu:(id)menu
{
  gestureProvider = [(SCATScannerManager *)self gestureProvider];
  elementForFingers = [gestureProvider elementForFingers];

  return elementForFingers;
}

- (void)menu:(id)menu activateProfile:(id)profile
{
  if (profile)
  {
    profileCopy = profile;
    v5 = +[AXSettings sharedInstance];
    [v5 setSwitchControlSelectedProfile:profileCopy];

    [(SCATScannerManager *)self _showSimpleAlertForProfile:profileCopy];
  }
}

- (BOOL)_isPostScanningMenu:(id)menu
{
  screenPoint = [menu screenPoint];
  v4 = screenPoint == 0;

  return v4;
}

- (void)menu:(id)menu showScrollViewPickerForScrollViews:(id)views elementsToScroll:(id)scroll scrollAction:(int)action
{
  v6 = *&action;
  scrollCopy = scroll;
  viewsCopy = views;
  scrollViewPickerManager = [(SCATScannerManager *)self scrollViewPickerManager];

  if (!scrollViewPickerManager)
  {
    v12 = objc_alloc_init(SCATScrollViewPickerManager);
    [(SCATScannerManager *)self setScrollViewPickerManager:v12];
  }

  scrollViewPickerManager2 = [(SCATScannerManager *)self scrollViewPickerManager];
  [scrollViewPickerManager2 setScrollViews:viewsCopy];

  scrollViewPickerManager3 = [(SCATScannerManager *)self scrollViewPickerManager];
  [scrollViewPickerManager3 setElementsToScroll:scrollCopy];

  scrollViewPickerManager4 = [(SCATScannerManager *)self scrollViewPickerManager];
  [scrollViewPickerManager4 setScrollAction:v6];
}

- (BOOL)canSearchForControllableDevicesWithMenu:(id)menu
{
  interDeviceCommunicator = [(SCATScannerManager *)self interDeviceCommunicator];
  canSearch = [interDeviceCommunicator canSearch];

  return canSearch;
}

- (void)searchForControllableDevicesWithMenu:(id)menu
{
  interDeviceCommunicator = [(SCATScannerManager *)self interDeviceCommunicator];
  [interDeviceCommunicator search];
}

- (BOOL)canReturnControlToForwarderDevice:(id)device
{
  interDeviceCommunicator = [(SCATScannerManager *)self interDeviceCommunicator];
  isReceivingSwitchEvents = [interDeviceCommunicator isReceivingSwitchEvents];

  return isReceivingSwitchEvents;
}

- (void)returnControlToForwarderDevice:(id)device
{
  interDeviceCommunicator = [(SCATScannerManager *)self interDeviceCommunicator];
  [interDeviceCommunicator stop];
}

- (void)menu:(id)menu speakAnnouncement:(id)announcement completionBlock:(id)block
{
  announcementCopy = announcement;
  blockCopy = block;
  if ([(SCATScannerManager *)self isSpeechEnabled])
  {
    outputManager = [(SCATScannerManager *)self outputManager];
    [outputManager outputScannerAnnouncement:announcementCopy completionBlock:blockCopy];
  }

  else if (blockCopy)
  {
    blockCopy[2](blockCopy, 0);
  }
}

- (void)menu:(id)menu playSoundEffect:(int)effect
{
  v4 = *&effect;
  if ([(SCATScannerManager *)self areSoundEffectsEnabled])
  {
    outputManager = [(SCATScannerManager *)self outputManager];
    [outputManager playSound:v4];
  }
}

- (void)menuDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  activeScannerDriver = [(SCATScannerManager *)self activeScannerDriver];
  focusContext = [activeScannerDriver focusContext];

  [(SCATScannerManager *)self _updateActiveElementManager];
  activeElementManager = [(SCATScannerManager *)self activeElementManager];
  pointPicker = [(SCATScannerManager *)self pointPicker];

  v8 = +[AXSettings sharedInstance];
  switchControlScanAfterTapLocation = [v8 switchControlScanAfterTapLocation];

  if (switchControlScanAfterTapLocation && [focusContext shouldResumeFromMenuDismissal] && activeElementManager != pointPicker)
  {
    element = [focusContext element];
    activeElementManager2 = [(SCATScannerManager *)self activeElementManager];
    v12 = [SCATFocusContext focusContextWithElement:element elementManager:activeElementManager2 selectBehavior:0 options:0];
  }

  else
  {
    element = [(SCATScannerManager *)self activeElementManager];
    activeElementManager2 = [disappearCopy element];
    v12 = [element nextFocusContextAfterDismissingMenuForElement:activeElementManager2];
  }

  v13 = v12;

  [(SCATScannerManager *)self beginScanningWithFocusContext:v13];
  if ([(SCATScannerManager *)self itemMenuState])
  {
    element2 = [disappearCopy element];

    if (element2)
    {
      if ([(SCATScannerManager *)self itemMenuState]== 1)
      {
        [(SCATScannerManager *)self setItemMenuState:0];
      }
    }
  }
}

- (void)menuWillBeginTransition:(id)transition
{
  cursorManager = [(SCATScannerManager *)self cursorManager];
  [cursorManager hideCursor:1 animated:0];
}

- (void)menuDidFinishTransition:(id)transition
{
  [(SCATScannerManager *)self beginScanningWithFocusContext:0];
  cursorManager = [(SCATScannerManager *)self cursorManager];
  [cursorManager hideCursor:0 animated:0];
}

- (void)shouldStartScanningGestureProvider:(id)provider
{
  if ([(SCATScannerManager *)self isActive])
  {

    [(SCATScannerManager *)self beginScanningWithFocusContext:0];
  }
}

- (void)shouldEndScanningGestureProvider:(id)provider
{
  if ([(SCATScannerManager *)self isActive])
  {

    [(SCATScannerManager *)self beginScanningWithFocusContext:0];
  }
}

- (id)contentViewForGestureProvider:(id)provider
{
  currentDisplayID = [(SCATScannerManager *)self currentDisplayID];

  return [(SCATScannerManager *)self scatUIContextForDisplayID:currentDisplayID];
}

- (void)gestureProvider:(id)provider shouldResetScanningFromElement:(id)element
{
  providerCopy = provider;
  elementCopy = element;
  activeElementManager = [(SCATScannerManager *)self activeElementManager];

  if (activeElementManager == providerCopy)
  {
    if (elementCopy)
    {
      v8 = [SCATFocusContext focusContextWithElement:elementCopy elementManager:providerCopy selectBehavior:0 options:0];
      [(SCATScannerManager *)self beginScanningWithFocusContext:v8];
    }

    else
    {
      [(SCATScannerManager *)self beginScanningWithFocusContext:0];
    }
  }
}

- (void)didChooseCreateCustomGestureFromGestureProvider:(id)provider
{
  v4 = +[HNDEventManager sharedManager];
  [v4 openCreateCustomGestureForSCAT];

  menu = [(SCATScannerManager *)self menu];
  [menu hideWithCompletion:0];

  activeElementManager = [(SCATScannerManager *)self activeElementManager];
  [activeElementManager screenChangingButtonWasPressed:self];
}

- (void)pointPicker:(id)picker didPickPoint:(CGPoint)point
{
  pickerCopy = picker;
  pointPicker = [(SCATScannerManager *)self pointPicker];
  [pointPicker pickedPointInDeviceCoordinates];
  v7 = [(SCATScannerManager *)self _focusContextAtPoint:?];

  menu = [(SCATScannerManager *)self menu];
  isVisible = [menu isVisible];

  if (isVisible)
  {
    menu2 = [(SCATScannerManager *)self menu];
    element = [menu2 element];
    [v7 setMenuElement:element];
  }

  cursorManager = [(SCATScannerManager *)self cursorManager];
  [cursorManager updateWithFocusContext:v7 animated:0 options:1];

  if (!v7)
  {
    v13 = +[AXSettings sharedInstance];
    [v13 switchControlAutoTapTimeout];
    v15 = v14;

    if (v15 != 0.0)
    {
      v16 = +[HNDHandManager sharedManager];
      fingerController = [v16 fingerController];

      [(SCATScannerManager *)self _startingPointForGesturesForPointPicker:pickerCopy];
      v18 = [AXPIFingerModel fingerModelForLocation:?];
      v30 = v18;
      v19 = [NSArray arrayWithObjects:&v30 count:1];
      [fingerController showFingerModels:v19 animated:0 startPointForAnimation:{CGPointZero.x, CGPointZero.y}];

      v20 = +[AXSettings sharedInstance];
      [v20 switchControlAutoTapTimeout];
      [fingerController animateToTapWithDuration:?];
    }
  }

  currentAction = [(SCATScannerManager *)self currentAction];
  action = [currentAction action];

  if (action == 101)
  {
    menu3 = [(SCATScannerManager *)self menu];
    isVisible2 = [menu3 isVisible];

    if (isVisible2)
    {
      menu4 = [(SCATScannerManager *)self menu];
      [menu4 hideWithCompletion:&stru_1001D76F0];
    }

    element2 = [v7 element];

    menu5 = [(SCATScannerManager *)self menu];
    if (element2)
    {
      element3 = [v7 element];
      [menu5 presentWithElement:element3];
    }

    else
    {
      element3 = [(SCATScannerManager *)self pointPicker];
      [menu5 presentWithPointPicker:element3];
    }
  }

  else
  {
    if (action == 100)
    {
      [(SCATScannerManager *)self activateActionHandler];
    }

    else
    {
      [(SCATScannerManager *)self selectActionHandler];
    }
    menu5 = ;
    [menu5 notifyDidReceiveAction:self];
  }

  cursorManager2 = [(SCATScannerManager *)self cursorManager];
  [cursorManager2 updateWithFocusContext:0 animated:0 options:0];
}

- (void)pointPicker:(id)picker didSweepIntoFocusContext:(id)context isRefiningPoint:(BOOL)point
{
  contextCopy = context;
  menu = [(SCATScannerManager *)self menu];
  isVisible = [menu isVisible];

  if ((isVisible & 1) == 0)
  {
    if ([(SCATScannerManager *)self highlightFocusContext])
    {
      cursorManager = [(SCATScannerManager *)self cursorManager];
      [cursorManager updateWithFocusContext:contextCopy animated:0 options:1];
    }

    if (contextCopy && [(SCATScannerManager *)self isActive]&& [(SCATScannerManager *)self areSoundEffectsEnabled])
    {
      outputManager = [(SCATScannerManager *)self outputManager];
      [outputManager playSound:1000];
    }
  }
}

- (void)pointPicker:(id)picker didSweepOutOfFocusContext:(id)context isRefiningPoint:(BOOL)point
{
  v6 = [(SCATScannerManager *)self menu:picker];
  isVisible = [v6 isVisible];

  if ((isVisible & 1) == 0 && [(SCATScannerManager *)self highlightFocusContext])
  {
    cursorManager = [(SCATScannerManager *)self cursorManager];
    [cursorManager updateWithFocusContext:0 animated:1 options:0];
  }
}

- (BOOL)pointPicker:(id)picker pauseForNumberOfCycles:(unint64_t)cycles
{
  activeScannerDriver = [(SCATScannerManager *)self activeScannerDriver];
  LOBYTE(cycles) = [activeScannerDriver pauseScanningForPointPickerNumberOfCycles:cycles];

  return cycles;
}

- (void)pointPicker:(id)picker didFinishDwellingOnPoint:(CGPoint)point
{
  v5 = [(SCATScannerManager *)self _dwellSwitchAssignedAction:picker];
  if (v5)
  {
    v6 = [SCATActionItem fromAction:v5];
    [(SCATScannerManager *)self inputController:0 didReceiveAction:v6];
  }
}

- (void)_updateCameraPointPickerSwitchesCache
{
  v3 = +[AXSettings sharedInstance];
  assistiveTouchCameraPointPickerSwitches = [v3 assistiveTouchCameraPointPickerSwitches];
  [(SCATScannerManager *)self setCachedCameraPointPickerSwitches:assistiveTouchCameraPointPickerSwitches];

  pointPicker = [(SCATScannerManager *)self pointPicker];
  objc_opt_class();
  LOBYTE(assistiveTouchCameraPointPickerSwitches) = objc_opt_isKindOfClass();

  if (assistiveTouchCameraPointPickerSwitches)
  {
    v6 = [(SCATScannerManager *)self _dwellSwitchAssignedAction]!= 0;
    pointPicker2 = [(SCATScannerManager *)self pointPicker];
    [pointPicker2 setDwellSwitchAssigned:v6];
  }
}

- (int64_t)_dwellSwitchAssignedAction
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  cachedCameraPointPickerSwitches = [(SCATScannerManager *)self cachedCameraPointPickerSwitches];
  v3 = [cachedCameraPointPickerSwitches countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(cachedCameraPointPickerSwitches);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        source = [v8 source];
        if ([source isEqualToString:v6] && objc_msgSend(v8, "cameraSwitch") == 9)
        {
          action = [v8 action];

          if (action)
          {
            action2 = [v8 action];
            goto LABEL_14;
          }
        }

        else
        {
        }
      }

      v4 = [cachedCameraPointPickerSwitches countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  action2 = 0;
LABEL_14:

  return action2;
}

- (id)_focusContextAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = +[HNDAccessibilityManager sharedManager];
  v7 = [v6 elementAtPoint:-[SCATScannerManager currentDisplayID](self displayID:{"currentDisplayID"), x, y}];

  if (v7)
  {
    elementNavController = [(SCATScannerManager *)self elementNavController];
    v9 = [SCATFocusContext focusContextWithElement:v7 elementManager:elementNavController selectBehavior:0 options:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)actionHandler:(id)handler shouldActImmediatelyOnActionCount:(unint64_t)count
{
  handlerCopy = handler;
  selectActionHandler = [(SCATScannerManager *)self selectActionHandler];
  v8 = [handlerCopy isEqual:selectActionHandler];

  return !v8 || [(SCATScannerManager *)self immediateSelectActionCount]== count;
}

- (void)actionHandlerDidFireAction:(id)action
{
  actionCopy = action;
  pointPicker = [(SCATScannerManager *)self pointPicker];
  [pointPicker pickedPointInDeviceCoordinates];
  v6 = [(SCATScannerManager *)self _focusContextAtPoint:?];

  actionCount = [actionCopy actionCount];
  activateActionHandler = [(SCATScannerManager *)self activateActionHandler];
  v9 = [actionCopy isEqual:activateActionHandler];

  if ((v9 & 1) == 0)
  {
    selectActionHandler = [(SCATScannerManager *)self selectActionHandler];
    v20 = [actionCopy isEqual:selectActionHandler];

    if (!v20)
    {
      goto LABEL_19;
    }

    if ((actionCount != 1 || [actionCopy shouldShowMenuOnFirstSelectAction]) && objc_msgSend(v6, "selectBehavior") != 1)
    {
      menu = [(SCATScannerManager *)self menu];
      pointPicker2 = [(SCATScannerManager *)self pointPicker];
      [menu presentWithPointPicker:pointPicker2];

      goto LABEL_19;
    }
  }

  pointPicker3 = [(SCATScannerManager *)self pointPicker];
  [pointPicker3 resetRefinedSelectedPoint];

  element = [v6 element];
  if (!element)
  {
    goto LABEL_16;
  }

  v12 = element;
  pointPicker4 = [(SCATScannerManager *)self pointPicker];
  if (pointPicker4)
  {
    v14 = pointPicker4;
    element2 = [v6 element];
    if (([element2 scatIsAXElement] & 1) == 0)
    {

      goto LABEL_16;
    }

    element3 = [v6 element];
    uiElement = [element3 uiElement];
    v18 = [uiElement BOOLWithAXAttribute:2150];

    if (!v18)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  element4 = [v6 element];
  v24 = [(SCATScannerManager *)self activateElement:element4];

  if ((v24 & 1) == 0)
  {
LABEL_16:
    gestureProvider = [(SCATScannerManager *)self gestureProvider];
    pointPicker5 = [(SCATScannerManager *)self pointPicker];
    [(SCATScannerManager *)self _startingPointForGesturesForPointPicker:pointPicker5];
    v27 = [AXNamedReplayableGesture tapGestureAtPoint:?];
    [gestureProvider replayGesture:v27];
  }

  pointPicker6 = [(SCATScannerManager *)self pointPicker];
  shouldRescanAfterTap = [pointPicker6 shouldRescanAfterTap];

  if (shouldRescanAfterTap)
  {
    cursorManager = [(SCATScannerManager *)self cursorManager];
    [cursorManager updateWithFocusContext:0 animated:0 options:0];

    AXPerformBlockOnMainThreadAfterDelay();
  }

LABEL_19:
}

- (id)focusContextForActionHandler:(id)handler
{
  pointPicker = [(SCATScannerManager *)self pointPicker];
  [pointPicker pickedPointInDeviceCoordinates];
  v5 = [(SCATScannerManager *)self _focusContextAtPoint:?];

  return v5;
}

- (void)alternateKeysManager:(id)manager didSelectAlternateKey:(id)key
{
  keyCopy = key;
  outputManager = [(SCATScannerManager *)self outputManager];
  [outputManager playSound:1001];

  [(SCATScannerManager *)self _updateActiveElementManager];
  activeElementManager = [(SCATScannerManager *)self activeElementManager];
  [activeElementManager scannerManager:self didActivateElement:keyCopy];
}

- (id)_typingCandidates
{
  v2 = +[HNDAccessibilityManager sharedManager];
  firstResponder = [v2 firstResponder];
  v4 = [firstResponder elementForAttribute:2017];
  typingCandidates = [v4 typingCandidates];

  return typingCandidates;
}

- (BOOL)candidateBarManager:(id)manager hasValidTypingCandidates:(id)candidates
{
  candidatesCopy = candidates;
  _typingCandidates = [(SCATScannerManager *)self _typingCandidates];
  v7 = [_typingCandidates isEqualToArray:candidatesCopy];

  return v7;
}

- (void)presentPostScanningMenuForElementNavigationController:(id)controller
{
  menu = [(SCATScannerManager *)self menu];
  [menu presentWithRootLevelSheet:0 useCurrentElementAndPoint:0];
}

- (id)scatUIContext
{
  currentDisplayID = [(SCATScannerManager *)self currentDisplayID];
  v3 = +[HNDHandManager sharedManager];
  v4 = [v3 displayManagerForDisplayId:currentDisplayID];
  scannerContentView = [v4 scannerContentView];

  return scannerContentView;
}

- (id)scatBackCursorUIContext
{
  currentDisplayID = [(SCATScannerManager *)self currentDisplayID];
  v3 = +[HNDHandManager sharedManager];
  v4 = [v3 displayManagerForDisplayId:currentDisplayID];
  scannerBackCursorView = [v4 scannerBackCursorView];

  return scannerBackCursorView;
}

- (id)scatFrontCursorUIContext
{
  currentDisplayID = [(SCATScannerManager *)self currentDisplayID];
  v3 = +[HNDHandManager sharedManager];
  v4 = [v3 displayManagerForDisplayId:currentDisplayID];
  scannerFrontCursorView = [v4 scannerFrontCursorView];

  return scannerFrontCursorView;
}

- (id)scatUIContextForDisplayID:(unsigned int)d
{
  v3 = *&d;
  v4 = +[HNDHandManager sharedManager];
  v5 = [v4 displayManagerForDisplayId:v3];
  scannerContentView = [v5 scannerContentView];

  return scannerContentView;
}

- (id)scatFrontCursorUIContextForDisplayID:(unsigned int)d
{
  v3 = *&d;
  v4 = +[HNDHandManager sharedManager];
  v5 = [v4 displayManagerForDisplayId:v3];
  scannerFrontCursorView = [v5 scannerFrontCursorView];

  return scannerFrontCursorView;
}

- (id)scatBackCursorUIContextForDisplayID:(unsigned int)d
{
  v3 = *&d;
  v4 = +[HNDHandManager sharedManager];
  v5 = [v4 displayManagerForDisplayId:v3];
  scannerBackCursorView = [v5 scannerBackCursorView];

  return scannerBackCursorView;
}

- (BOOL)isUIContextHidden
{
  currentDisplayID = [(SCATScannerManager *)self currentDisplayID];
  v4 = [(SCATScannerManager *)self scatUIContextForDisplayID:currentDisplayID];
  if ([v4 isHidden])
  {
    v5 = [(SCATScannerManager *)self scatBackCursorUIContextForDisplayID:currentDisplayID];
    if ([v5 isHidden])
    {
      v6 = [(SCATScannerManager *)self scatFrontCursorUIContextForDisplayID:currentDisplayID];
      isHidden = [v6 isHidden];
    }

    else
    {
      isHidden = 0;
    }
  }

  else
  {
    isHidden = 0;
  }

  return isHidden;
}

- (void)hideUIContext:(BOOL)context
{
  currentDisplayID = [(SCATScannerManager *)self currentDisplayID];
  if (![(SCATScannerManager *)self isUIContextHidden])
  {
    if (!context)
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
    }

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:off_100217018 object:self];

    v7 = [(SCATScannerManager *)self scatUIContextForDisplayID:currentDisplayID];
    [v7 setHidden:1];

    v8 = [(SCATScannerManager *)self scatBackCursorUIContextForDisplayID:currentDisplayID];
    [v8 setHidden:1];

    v9 = [(SCATScannerManager *)self scatFrontCursorUIContextForDisplayID:currentDisplayID];
    [v9 setHidden:1];

    gestureProvider = [(SCATScannerManager *)self gestureProvider];
    [gestureProvider setHidden:1];

    if (!context)
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

- (void)showUIContext:(BOOL)context
{
  currentDisplayID = [(SCATScannerManager *)self currentDisplayID];
  if ([(SCATScannerManager *)self isUIContextHidden])
  {
    if (!context)
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
    }

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:off_100217020 object:self];

    v7 = [(SCATScannerManager *)self scatUIContextForDisplayID:currentDisplayID];
    [v7 setHidden:0];

    v8 = [(SCATScannerManager *)self scatBackCursorUIContextForDisplayID:currentDisplayID];
    [v8 setHidden:0];

    v9 = [(SCATScannerManager *)self scatFrontCursorUIContextForDisplayID:currentDisplayID];
    [v9 setHidden:0];

    gestureProvider = [(SCATScannerManager *)self gestureProvider];
    [gestureProvider setHidden:0];

    if (!context)
    {
      +[CATransaction commit];
    }

    v11 = +[HNDEventManager sharedManager];
    [v11 manipulateDimTimer:1];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  scannerObservers = [(SCATScannerManager *)self scannerObservers];
  [scannerObservers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  scannerObservers = [(SCATScannerManager *)self scannerObservers];
  [scannerObservers removeObject:observerCopy];
}

- (void)_notifyObserversScannerWillFocusOnContext:(id)context
{
  contextCopy = context;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  scannerObservers = [(SCATScannerManager *)self scannerObservers];
  v6 = [scannerObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(scannerObservers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 scannerManager:self willFocusOnContext:contextCopy];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [scannerObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversScannerDidFocusOnContext:(id)context oldContext:(id)oldContext
{
  contextCopy = context;
  oldContextCopy = oldContext;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  scannerObservers = [(SCATScannerManager *)self scannerObservers];
  v9 = [scannerObservers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(scannerObservers);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 scannerManager:self didFocusOnContext:contextCopy oldContext:oldContextCopy];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [scannerObservers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_notifyObserversScannerWillUnfocusFromContext:(id)context
{
  contextCopy = context;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  scannerObservers = [(SCATScannerManager *)self scannerObservers];
  v6 = [scannerObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(scannerObservers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 scannerManager:self willUnfocusFromContext:contextCopy];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [scannerObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  scannerObservers = [(SCATScannerManager *)self scannerObservers];
  v4 = [scannerObservers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(scannerObservers);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 scannerManagerDidBecomeActive:self];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [scannerObservers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  scannerObservers = [(SCATScannerManager *)self scannerObservers];
  v4 = [scannerObservers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(scannerObservers);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 scannerManagerDidBecomeInactive:self];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [scannerObservers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  scannerObservers = [(SCATScannerManager *)self scannerObservers];
  v4 = [scannerObservers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(scannerObservers);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 scannerManagerDidPause:self];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [scannerObservers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversInputController:(id)controller didReceivePoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  controllerCopy = controller;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  scannerObservers = [(SCATScannerManager *)self scannerObservers];
  v9 = [scannerObservers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(scannerObservers);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if ([v13 conformsToProtocol:&OBJC_PROTOCOL___SCATInputControllerDelegate] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v13 inputController:controllerCopy didReceivePoint:{x, y}];
        }
      }

      v10 = [scannerObservers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (CGPoint)_startingPointForGesturesForPointPicker:(id)picker
{
  [picker pickedPoint];
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