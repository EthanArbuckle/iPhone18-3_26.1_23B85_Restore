@interface HNDHandManager
+ (CGPoint)_pointByAvoidingDisplayCornerRadius:(double)a3 forPoint:(CGPoint)a4;
+ (double)displayCornerRadius;
+ (id)_actionForHotCorner:(unint64_t)a3;
+ (id)sharedManager;
- (BOOL)_continuousPathGestureHandlePress;
- (BOOL)_fadedFingersShouldShowOutlines;
- (BOOL)_isChildElement:(id)a3 desendantOfElement:(id)a4;
- (BOOL)_isInNubbitHitbox:(CGPoint)a3 onDisplay:(id)a4;
- (BOOL)_isInNubbitHitbox:(CGPoint)a3 onDisplay:(id)a4 activationFactor:(double)a5;
- (BOOL)_isPoint:(CGPoint)a3 withinTolerance:(double)a4 ofStartPoint:(CGPoint)a5;
- (BOOL)_isWaitingForFirstSystemPointerMovement;
- (BOOL)_isWithinLastDwellBounds:(CGPoint)a3;
- (BOOL)_iterateRemoteViewsAndPerformContinuousScrollWithSpeed:(double)a3 direction:(unint64_t)a4;
- (BOOL)_performAXScrollActionAtPoint:(CGPoint)a3 onDisplay:(id)a4 action:(int)a5;
- (BOOL)_requiresLargeSystemPointer;
- (BOOL)_scrollAncestorIsSelfForScrollView:(id)a3 scrollAction:(int)a4 resultScrollAncestor:(id *)a5;
- (BOOL)_shouldAutoFadeFingersOnDisplay:(id)a3;
- (BOOL)_shouldEnableMultiTouchToolBackground;
- (BOOL)_shouldHandleRealEventWithMultiTouchTool;
- (BOOL)_shouldLockIntoHotCornerAtNormalizedPoint:(CGPoint)a3 onDisplay:(id)a4;
- (BOOL)_shouldLockIntoNubbitAtPoint:(CGPoint)a3;
- (BOOL)_shouldRepeatGesture;
- (BOOL)_startDwellTimerForBubbleMode;
- (BOOL)_startDwellTimerForPointer;
- (BOOL)bubbleModeAllowed;
- (BOOL)canShowASTMousePointer;
- (BOOL)currentlySnappedInBubbleMode;
- (BOOL)deviceSupportsAutoHide;
- (BOOL)dwellControlAutorevertEnabled;
- (BOOL)dwellControlEnabled;
- (BOOL)eyeTrackingAutoHideAllowed;
- (BOOL)hitTestsViewAtSystemPointerPoint;
- (BOOL)inContinuousScrollMode;
- (BOOL)inPinchMode;
- (BOOL)inRockerMode;
- (BOOL)isCapturingRealEvents;
- (BOOL)isFingersPressedDown;
- (BOOL)isPerformingGesture;
- (BOOL)isPerformingMultiStepGesture;
- (BOOL)isSimpleElementForBubbleMode:(id)a3;
- (BOOL)isSystemSleeping:(id)a3;
- (BOOL)isVirtualTrackpadVisible;
- (BOOL)isVoiceControlRunning;
- (BOOL)needsElementHitTesting;
- (BOOL)nubbitMoving;
- (BOOL)nubbitVisible;
- (BOOL)shouldHandleSystemPointerButtonEvent:(id)a3;
- (BOOL)shouldHideSystemPointerForFingersView;
- (BOOL)shouldIgnoreHIDDeviceMovementWhileMouseActive;
- (BOOL)shouldIgnorePointerEventWhileEyeTrackerConfigures:(id)a3;
- (BOOL)shouldIgnorePointerEventWhileEyeTrackerIsInactive;
- (BOOL)shouldIgnorePointerEventWhileEyeTrackerPressedButtonDownWithDwell;
- (BOOL)shouldUseBubbleMode;
- (BOOL)shouldUseEyeTrackingAutoHide;
- (BOOL)showFingerOutlines;
- (BOOL)showInnerCircle;
- (BOOL)supportsActivateForBubbleModeElement:(id)a3;
- (BOOL)useSystemFilters;
- (BOOL)usingSpecialTool;
- (CGPoint)_fingerControllerPointForScreenPoint:(CGPoint)a3 onDisplay:(id)a4;
- (CGPoint)_pointForLockedCorner:(unint64_t)a3 onDisplay:(id)a4;
- (CGPoint)currentPointForPointer;
- (CGPoint)eyeTrackingAutotHideLastPointCursorShowed;
- (CGPoint)lastSelectedKeyboardSlidePoint;
- (CGPoint)preferredMenuDisplayPointOnDisplay:(id)a3;
- (CGPoint)rotateEventFromOrientation:(CGPoint)a3;
- (CGPoint)rotateNormalizedPointToOrientation:(CGPoint)result;
- (CGPoint)startPointForDrag;
- (CGPoint)systemPointerLocation;
- (CGRect)_paddedHitboxForNubbitOnDisplay:(id)a3 activationFactor:(double)a4;
- (CGRect)clipRect:(CGRect)a3 toRotatedScreenBoundsOnDisplay:(id)a4;
- (CGSize)_hotCornerActivationSizeOnDisplay:(id)a3;
- (HNDDisplayManager)currentDisplayManager;
- (HNDDisplayManager)mainDisplayManager;
- (HNDHandManager)init;
- (double)_dwellTimerDuration;
- (double)_fingerRadiusOnDisplay:(id)a3;
- (double)_scrollDeltaForGesture:(BOOL)a3 screenSize:(CGSize)a4;
- (double)distanceBetweenRect:(CGRect)a3 andPoint:(CGPoint)a4;
- (double)fingerInnerCircleInnerRadius;
- (double)fingerInnerRadius;
- (double)fingerWidth;
- (double)innerCircleStrokeWidth;
- (double)pressedAlpha;
- (double)pressedScale;
- (double)screenFrame:;
- (double)strokeOutlineWidth;
- (double)strokeWidth;
- (double)touchSpeedMultiplier;
- (double)unpressedAlpha;
- (double)unpressedScale;
- (double)volumeLevel;
- (id)_avPlayerForSound:(id)a3;
- (id)_groupWithDictionary:(id)a3 currentPid:(int)a4;
- (id)_groupWithItems:(id)a3 groupTraits:(unint64_t)a4 scanningBehaviorTraits:(unint64_t)a5 label:(id)a6 identifier:(id)a7 currentPid:(int)a8;
- (id)_scrollFallbackGestureAtPoint:(CGPoint)a3 onDisplay:(id)a4 vertical:(BOOL)a5 forward:(BOOL)a6 max:(BOOL)a7;
- (id)_scrollViewForScrollAction:(int)a3 elementsToScroll:(id *)a4;
- (id)_shiftGestureIfNeeded:(id)a3 onDisplay:(id)a4 toMidpoint:(CGPoint)a5;
- (id)additionalAXNotificationsToObserve;
- (id)availableElements;
- (id)circularProgressFillColor;
- (id)currentFingerAppearance;
- (id)currentHardwareIdentifierForPointer;
- (id)deselectedFillColor;
- (id)deselectedStrokeColor;
- (id)displayManagerForDisplayId:(unsigned int)a3;
- (id)displayManagerForHardwareIdentifier:(id)a3;
- (id)fingerController;
- (id)keyboardRowContainingKeyboardKey:(id)a3;
- (id)mainWindow;
- (id)nearestElementFrameForPortraitPoint:(CGPoint)a3 distance:(double *)a4;
- (id)nearestRockerButtonForDisplayManger:(id)a3 orientedPoint:(CGPoint)a4 distance:(double *)a5;
- (id)pressedCircularProgressFillColor;
- (id)selectedFillColor;
- (id)selectedStrokeColor;
- (id)strokeOutlineColor;
- (id)viewAtSystemPointerPoint;
- (int)deviceOrientation;
- (unint64_t)_cornerForNormalizedPoint:(CGPoint)a3 normalizedPadding:(CGSize)a4;
- (unint64_t)_defaultDwellMode;
- (unint64_t)_hotCornerForNormalizedPoint:(CGPoint)a3 onDisplay:(id)a4;
- (unint64_t)_roundedCornersForCursorAtPoint:(CGPoint)a3 onDisplay:(id)a4;
- (void)_attemptToShowVisualsAfterPerformingScreenshot;
- (void)_bootstrapRegister;
- (void)_dwellControlToggled;
- (void)_dwellTimerFired;
- (void)_endContinuousSlideGesture;
- (void)_fadeFingersAfterDelayIfNeeded;
- (void)_fadeFingersAfterDelayIfNeededOnDisplay:(id)a3;
- (void)_handleAction:(id)a3 type:(int)a4 state:(int)a5;
- (void)_handleAutomationSupportChanges;
- (void)_handleBrokenHomeButtonMode;
- (void)_handleMultiTouchToolEvent:(id)a3;
- (void)_handlePinchFingerDownWithFinger:(id)a3 onDisplay:(id)a4;
- (void)_handleRealContinuousScrollToolUp:(CGPoint)a3 onDisplay:(id)a4;
- (void)_handleRealCustomGestureMove:(CGPoint)a3 onDisplay:(id)a4;
- (void)_handleRealCustomGestureUp:(CGPoint)a3 onDisplay:(id)a4;
- (void)_handleRealDragToolMove:(CGPoint)a3 onDisplay:(id)a4;
- (void)_handleRealDragToolUp:(CGPoint)a3 onDisplay:(id)a4;
- (void)_handleRealMultiFingerDown:(CGPoint)a3 onDisplay:(id)a4;
- (void)_handleRealMultiFingerMove:(CGPoint)a3 onDisplay:(id)a4;
- (void)_handleRealMultiFingerUp:(CGPoint)a3 onDisplay:(id)a4;
- (void)_handleRealPinchToolDown:(CGPoint)a3 onDisplay:(id)a4;
- (void)_handleRealPinchToolMove:(CGPoint)a3 onDisplay:(id)a4;
- (void)_handleRealPinchToolUp:(CGPoint)a3 onDisplay:(id)a4;
- (void)_handleScreenshotDidFireCallbackTimeout;
- (void)_handleUsageConfirmation;
- (void)_hideCursorsForEyeTrackingAutoHide;
- (void)_highlightFingers;
- (void)_initializeDwell;
- (void)_liftFingersUpForPotentialTapViaPrimaryButton;
- (void)_lockIntoHotCornerForOrientedNormalizedPoint:(CGPoint)a3 onDisplay:(id)a4 cancelDwell:(BOOL)a5;
- (void)_menuOpenTracker:(CGPoint)a3;
- (void)_modifyPinchToolMoveToPoint:(CGPoint)a3 onDisplay:(id)a4;
- (void)_moveFingersForRealEventToPoint:(CGPoint)a3 onDisplay:(id)a4;
- (void)_moveFingersToPointInFingerCoordinateSpace:(CGPoint)a3 onDisplay:(id)a4 allowOutOfBounds:(BOOL)a5 animated:(BOOL)a6 completion:(id)a7;
- (void)_performActionForHotCorner:(unint64_t)a3 onDisplay:(id)a4;
- (void)_performCustomGestureOnDisplay:(id)a3;
- (void)_performDwellActionOnDisplay:(id)a3;
- (void)_presentMigrationPopupIfNeeded;
- (void)_reallyLiftFingersUpForPotentialTapViaPrimaryButton;
- (void)_registerForSettingsNotifications;
- (void)_resetDwellDueToFingersReset;
- (void)_resetDwellModeToDefault;
- (void)_resetMenuOpenTracker;
- (void)_setApplicationAccessibilityEnabledIfNeeded;
- (void)_showCursorsForAutoHideWithDuration:(id)a3;
- (void)_showFingersIfNeededForMouseOnDisplay:(id)a3;
- (void)_startDwellTimer;
- (void)_startOrientationUpdateTimer;
- (void)_systemPointerSettingsDidChange;
- (void)_updateBubbleModeFrameOnDisplay:(id)a3 elementFrame:(CGRect)a4 wasSnapped:(BOOL)a5;
- (void)_updateContinuousPathGestureState;
- (void)_updateContinuousSlideGesture;
- (void)_updateElementFetchingForKeyboardVisible;
- (void)_updateEyeTrackingAutoHideIfNecessary;
- (void)_updateFadedFingerOpacity;
- (void)_updateForElementFetchRequired;
- (void)_updateHitTestingElementsWithPoint:(CGPoint)a3 onDisplay:(id)a4;
- (void)_updateSystemPointerForOneness;
- (void)_updateZoomWithDisplayPoint:(CGPoint)a3 onDisplay:(unsigned int)a4;
- (void)accessibilityManager:(id)a3 didReceiveEvent:(int64_t)a4 data:(id)a5;
- (void)activateCurrentBubbleModeFocusedElement;
- (void)addEventHandler:(id)a3;
- (void)beginContinuousScrollingInDirection:(unint64_t)a3 onDisplay:(id)a4;
- (void)beginDragAtPoint:(CGPoint)a3 onDisplay:(id)a4;
- (void)bubbleModeFailedToSnapOnDisplay:(id)a3;
- (void)cancelDwellTimer;
- (void)cancelDwellTimerForBubbleMode;
- (void)cancelDwellTimerForPointer;
- (void)cancelDwellTimerWithoutStateResetForBubbleMode;
- (void)cleanupPointerStreamIfNecessary;
- (void)dealloc;
- (void)didCompleteHIDDeviceConfiguration;
- (void)disableElementFetcherIfNecessary;
- (void)enableBubbleMode:(BOOL)a3;
- (void)enableElementFetcherAndNotificationsIfNecessary;
- (void)enableEyeTrackingAutoHide:(BOOL)a3;
- (void)endContinuousScrollingOnDisplay:(id)a3 withCompletion:(BOOL)a4;
- (void)endDragModeAtPoint:(CGPoint)a3 onDisplay:(id)a4 completed:(BOOL)a5;
- (void)enumerateDisplayManagersWithBlock:(id)a3;
- (void)eyeTrackerIsActivelyTracking:(BOOL)a3;
- (void)fetcher:(id)a3 didFetchElementsForEvent:(unint64_t)a4 foundNewElements:(BOOL)a5;
- (void)generateContinuousScrollersOnQueue:(id)a3 withCompletion:(id)a4;
- (void)generateContinuousScrollersWithCompletion:(id)a3;
- (void)generateMappingForElementFrames;
- (void)handleButtonEvent:(id)a3;
- (void)handleCustomHomeButtonAction:(int)a3;
- (void)handleMultiTouchStandard:(int64_t)a3 onDisplay:(id)a4 withExistingFingerMidPoint:(CGPoint)a5;
- (void)handlePrimaryButtonPress:(int)a3;
- (void)handleRealEvent:(id)a3;
- (void)hideUIForEyeTracker;
- (void)keyboardVisible:(BOOL)a3 withFrame:(CGRect)a4;
- (void)mediaControlsChanged:(BOOL)a3;
- (void)mediaPlaybackChanged;
- (void)menuExitedOnDisplay:(id)a3;
- (void)mouseEventRecordedWithDelta:(CGPoint)a3;
- (void)moveFingerByDelta:(CGPoint)a3;
- (void)moveFingerToPoint:(CGPoint)a3;
- (void)moveFingerToPoint:(CGPoint)a3 onDisplay:(id)a4;
- (void)moveFingersToPointInFingerCoordinateSpace:(CGPoint)a3 onDisplay:(id)a4 allowOutOfBounds:(BOOL)a5;
- (void)moveSystemPointerIfActiveToPoint:(CGPoint)a3 onDisplay:(id)a4;
- (void)notifyUserEventOccurred;
- (void)orientationChanged;
- (void)orientationChanged:(int64_t)a3;
- (void)pauseBubbleModeForSpecialUsageTool;
- (void)pauseEyeTrackingAutoHideForSpecialUsageTool;
- (void)performButtonAction:(id)a3 type:(int)a4 state:(int)a5;
- (void)performFingerDownAtPoint:(CGPoint)a3 onDisplay:(id)a4;
- (void)performFingerMoveToPoint:(CGPoint)a3 onDisplay:(id)a4;
- (void)performFingerUpAtPoint:(CGPoint)a3 onDisplay:(id)a4;
- (void)performPreparedGestureOnDisplay:(id)a3;
- (void)pointerController:(id)a3 didReceivePointerEvent:(id)a4;
- (void)prepareForContinuousScrollOnDisplay:(id)a3;
- (void)prepareForEyeTrackerConnected:(BOOL)a3;
- (void)prepareForHIDDeviceConfiguration;
- (void)prepareGesture:(id)a3 onDisplay:(id)a4;
- (void)prepareScrollAtPoint:(CGPoint)a3 onDisplay:(id)a4 vertical:(BOOL)a5 forward:(BOOL)a6 max:(BOOL)a7;
- (void)processOrientedPointForContinuousScrolling:(CGPoint)a3 onDisplay:(id)a4;
- (void)processPortraitUpPointForElementHitTesting:(CGPoint)a3 onDisplay:(id)a4;
- (void)refreshElementFetcherWithScrollingBlocked:(BOOL)a3;
- (void)refreshOrientation;
- (void)reloadFingerAppearance;
- (void)removeEventHandler:(id)a3;
- (void)removeFingersToPoint:(CGPoint)a3 onDisplay:(id)a4;
- (void)resetFingersIfActiveOnDisplay:(id)a3;
- (void)resetFingersIfNeeded;
- (void)resetFingersIfNeededOnDisplay:(id)a3;
- (void)resetFingersToPoint:(CGPoint)a3 onDisplay:(id)a4 active:(BOOL)a5;
- (void)resetPinchFingersOnDisplay:(id)a3;
- (void)restartEverything;
- (void)resumeBubbleModeForSpecialUsageToolIfNecessary;
- (void)resumeEyeTrackingAutoHideForSpecialUsageToolIfNecessary;
- (void)rotateEventToOrientation:(id)a3;
- (void)sceneDidConnect:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)screenshotDidFire;
- (void)screenshotWillFire;
- (void)setAlwaysShowMenu:(BOOL)a3;
- (void)setCaptureEvents:(BOOL)a3;
- (void)setCurrentBubbleModeFocusedElement:(id)a3;
- (void)setDwellControlAutorevertEnabled:(BOOL)a3;
- (void)setDwellControlPaused:(BOOL)a3;
- (void)setDwellMode:(unint64_t)a3;
- (void)setNubbitMoving:(BOOL)a3;
- (void)setVirtualTrackpadBubbleModeEnabled:(BOOL)a3;
- (void)setupNonSceneUI:(BOOL)a3;
- (void)setupWindow:(id)a3 ignoredWindow:(id)a4 trackpadWindow:(id)a5;
- (void)showMenu:(BOOL)a3 onDisplay:(id)a4;
- (void)showUIForEyeTracker;
- (void)specialToolUsageEnded:(BOOL)a3;
- (void)startDragModeOnDisplay:(id)a3;
- (void)startPinchModeWithPoint:(CGPoint)a3 onDisplay:(id)a4 mode:(unint64_t)a5;
- (void)substantialTransitionOccurred;
- (void)updateAllSettings;
- (void)updateAssistiveTouchEyeTrackingAutoHideEnabled;
- (void)updateAssistiveTouchEyeTrackingAutoHideOpacity;
- (void)updateAssistiveTouchEyeTrackingAutoHideTimeout;
- (void)updateMenuVisibility;
- (void)updatePointerAppearance;
- (void)updateSoftwareKeyboardState;
@end

@implementation HNDHandManager

+ (id)sharedManager
{
  if (qword_1002189A0 != -1)
  {
    sub_100128978();
  }

  v3 = qword_100218998;

  return v3;
}

- (HNDHandManager)init
{
  v73.receiver = self;
  v73.super_class = HNDHandManager;
  v2 = [(HNDHandManager *)&v73 init];
  HeadTrackerAvailabilityDetail.rawValue.getter();
  v3 = objc_alloc_init(HNDEventManager);
  v4 = *(v2 + 51);
  *(v2 + 51) = v3;

  v5 = objc_alloc_init(HNDDeviceManager);
  v6 = *(v2 + 52);
  *(v2 + 52) = v5;

  v7 = objc_alloc_init(NSMutableArray);
  v8 = *(v2 + 53);
  *(v2 + 53) = v7;

  [*(v2 + 51) setDelegate:v2];
  [*(v2 + 52) setHandManager:v2];
  v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v10 = dispatch_queue_create("com.apple.AssistiveTouch.HNDHandManager.orientationQueue", v9);
  v11 = *(v2 + 66);
  *(v2 + 66) = v10;

  v12 = objc_opt_new();
  v13 = *(v2 + 11);
  *(v2 + 11) = v12;

  [*(v2 + 11) setDelegate:v2];
  v14 = objc_alloc_init(HNDMousePointerAppearance);
  v15 = *(v2 + 12);
  *(v2 + 12) = v14;

  v16 = objc_alloc_init(HNDDwellPointerAppearance);
  v17 = *(v2 + 13);
  *(v2 + 13) = v16;

  v18 = objc_alloc_init(HNDSystemPointerController);
  v19 = *(v2 + 58);
  *(v2 + 58) = v18;

  [*(v2 + 58) addPointerStreamObserver:v2];
  v20 = objc_opt_new();
  v21 = *(v2 + 14);
  *(v2 + 14) = v20;

  v22 = objc_opt_new();
  v23 = *(v2 + 15);
  *(v2 + 15) = v22;

  v24 = objc_alloc_init(HNDBubblePointerAppearance);
  v25 = *(v2 + 17);
  *(v2 + 17) = v24;

  v26 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
  v27 = *(v2 + 16);
  *(v2 + 16) = v26;

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, v2, sub_1000237CC, kAXSPointerIncreasedContrastPreferenceDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v29 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v29, v2, sub_1000237CC, kAXSPointerSizeMultiplierPreferenceDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v30 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v30, v2, sub_1000237CC, kAXSPointerStrokeColorPreferenceDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v31 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v31, v2, sub_1000237D4, kAXSApplicationAccessibilityEnabledNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1000237DC, kAXSContinuityDisplayStateChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  [v2 _bootstrapRegister];
  v33 = [AXDragManager alloc];
  v34 = [v33 initWithMachServiceName:AXDragServiceNameSwitchControl];
  [v2 setDragManager:v34];

  *(v2 + 232) = HNDPointNull;
  v35 = +[AXSiriShortcutsManager sharedManager];
  *(v2 + 2) = [v2 deviceOrientation];
  objc_initWeak(&location, v2);
  v67 = _NSConcreteStackBlock;
  v68 = 3221225472;
  v69 = sub_1000237FC;
  v70 = &unk_1001D3488;
  v71 = v2;
  AXPerformBlockOnMainThreadAfterDelay();
  [v71 _registerForSettingsNotifications];
  v36 = +[AXPISystemActionHelper sharedInstance];
  [v36 warm];

  BKSHIDServicesCancelTouchesOnMainDisplay();
  [v71 _handleUsageConfirmation];
  v37 = +[AXSettings sharedInstance];
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_100023804;
  v65[3] = &unk_1001D3488;
  v38 = v71;
  v66 = v38;
  v39 = objc_loadWeakRetained(&location);
  [v37 registerUpdateBlock:v65 forRetrieveSelector:"assistiveTouchIdleOpacity" withListener:v39];

  v40 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
  v41 = v38[22];
  v38[22] = v40;

  [v38 _initializeDwell];
  [v38 _presentMigrationPopupIfNeeded];
  v42 = +[AXSettings sharedInstance];
  *(v38 + 374) = [v42 assistiveTouchMouseBehavesLikeFinger];

  v43 = +[AXSettings sharedInstance];
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_10002380C;
  v63[3] = &unk_1001D3460;
  objc_copyWeak(&v64, &location);
  [v43 registerUpdateBlock:v63 forRetrieveSelector:"assistiveTouchMouseBehavesLikeFinger" withListener:v38];

  objc_destroyWeak(&v64);
  if (AXDeviceSupportsOnDeviceEyeTracking())
  {
    v44 = +[AXSettings sharedInstance];
    *(v38 + 385) = [v44 onDeviceEyeTrackingEnabled];

    v45 = +[AXSettings sharedInstance];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_100023898;
    v61[3] = &unk_1001D3460;
    objc_copyWeak(&v62, &location);
    [v45 registerUpdateBlock:v61 forRetrieveSelector:"assistiveTouchMouseOnDeviceEyeTrackingEnabled" withListener:v38];

    objc_destroyWeak(&v62);
    v46 = +[AXSettings sharedInstance];
    v56 = _NSConcreteStackBlock;
    v57 = 3221225472;
    v58 = sub_100023908;
    v59 = &unk_1001D3460;
    objc_copyWeak(&v60, &location);
    [v46 registerUpdateBlock:&v56 forRetrieveSelector:"switchControlOnDeviceEyeTrackingEnabled" withListener:v38];

    objc_destroyWeak(&v60);
  }

  [v38 _setApplicationAccessibilityEnabledIfNeeded];
  v47 = [AXElementFetcher alloc];
  v48 = [v47 initWithDelegate:v38 fetchEvents:AXFetchEventAllEvents enableEventManagement:0 enableGrouping:0 shouldIncludeNonScannerElements:0 beginEnabled:0];
  objc_storeStrong(v38 + 70, v48);
  [v38[70] setElementGroupingHeuristics:sub_100042D94() ^ 1];
  [v38[70] registerFetchObserver:v38 targetQueue:&_dispatch_main_q];

  [AXUIElement applyElementAttributeCacheScheme:3];
  v49 = v38[54];
  v38[54] = &__NSArray0__struct;

  v50 = v38[55];
  v38[55] = &__NSArray0__struct;

  v51 = v38[56];
  v38[56] = &__NSArray0__struct;

  [v38 _handleAutomationSupportChanges];
  v52 = +[AXSpringBoardServer server];
  v53 = [v52 isContinuitySessionActive];

  *(v38 + 388) = v53;
  if (v53)
  {
    [*(v2 + 58) hideSystemPointer:{objc_msgSend(v38, "shouldHideSystemPointerForFingersView")}];
  }

  v54 = v38;

  objc_destroyWeak(&location);
  return v54;
}

- (void)_updateForElementFetchRequired
{
  if ([(HNDHandManager *)self _elementFetchingRequired])
  {

    [(HNDHandManager *)self enableElementFetcherAndNotificationsIfNecessary];
  }

  else
  {

    [(HNDHandManager *)self disableElementFetcherIfNecessary];
  }
}

- (void)dealloc
{
  [(HNDHandManager *)self cleanupPointerStreamIfNecessary];
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, self);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5 = [(HNDHandManager *)self elementFetcher];
  [v5 disableEventManagement];

  v6 = [(HNDHandManager *)self elementFetcher];
  [v6 unregisterFetchObserver:self];

  v7 = +[HNDAccessibilityManager sharedManager];
  [v7 removeObserver:self];

  v8 = +[HNDAccessibilityManager sharedManager];
  v9 = [(HNDHandManager *)self additionalAXNotificationsToObserve];
  [v8 stopObservingAXNotifications:v9];

  [(HNDHandManager *)self setContinuousScrollerGenerationQueue:0];
  [(HNDHandManager *)self setOrientationQueue:0];
  v10.receiver = self;
  v10.super_class = HNDHandManager;
  [(HNDHandManager *)&v10 dealloc];
}

- (void)_bootstrapRegister
{
  special_port = 0;
  if (!task_get_special_port(mach_task_self_, 4, &special_port) && bootstrap_check_in2())
  {
    v2 = ASTLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10012898C();
    }
  }
}

- (void)setAlwaysShowMenu:(BOOL)a3
{
  if (self->_alwaysShowMenu != a3)
  {
    v8 = v3;
    v9 = v4;
    self->_alwaysShowMenu = a3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100023C24;
    v6[3] = &unk_1001D3D10;
    v7 = a3;
    [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v6];
    [(HNDHandManager *)self refreshOrientation];
  }
}

- (void)_handleBrokenHomeButtonMode
{
  v3 = _AXSAssistiveTouchRepairIncarnationModeEnabled();
  self->_inBrokenHomeButtonMode = v3 != 0;
  if (v3)
  {
    v4 = +[HNDDefaults sharedDefaults];
    v5 = [v4 preferenceForKey:@"DidShowBrokenHomeButtonAlert"];
    v6 = [v5 BOOLValue];

    if ((v6 & 1) == 0)
    {
      v7 = +[AXSubsystemBrokenHomeButton sharedInstance];
      v8 = [v7 ignoreLogging];

      if ((v8 & 1) == 0)
      {
        v9 = +[AXSubsystemBrokenHomeButton identifier];
        v10 = AXLoggerForFacility();

        v11 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = AXColorizeFormatLog();
          v13 = _AXStringForArgs();
          if (os_log_type_enabled(v10, v11))
          {
            *buf = 138543362;
            v29 = v13;
            _os_log_impl(&_mh_execute_header, v10, v11, "%{public}@", buf, 0xCu);
          }
        }
      }

      v14 = +[HNDDefaults sharedDefaults];
      [v14 setPreference:&__kCFBooleanTrue forKey:@"DidShowBrokenHomeButtonAlert"];

      v15 = +[AXSpringBoardServer server];
      [v15 showAlert:8 withHandler:&stru_1001D3D50];
    }

    v16 = +[AXSubsystemBrokenHomeButton sharedInstance];
    v17 = [v16 ignoreLogging];

    if ((v17 & 1) == 0)
    {
      v18 = +[AXSubsystemBrokenHomeButton identifier];
      v19 = AXLoggerForFacility();

      v20 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = AXColorizeFormatLog();
        v22 = _AXStringForArgs();
        if (os_log_type_enabled(v19, v20))
        {
          *buf = 138543362;
          v29 = v22;
          _os_log_impl(&_mh_execute_header, v19, v20, "%{public}@", buf, 0xCu);
        }
      }
    }

    v26 = AXAssistiveTouchIconLocationMidMiddle;
    v27 = AXAssistiveTouchIconTypeHome;
    v23 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v24 = +[AXSettings sharedInstance];
    [v24 setAssistiveTouchMainScreenCustomization:v23];

    v25 = [(HNDHandManager *)self mainDisplayManager];
    [v25 placeNubbitAtBottomCenter];
  }
}

- (void)_handleUsageConfirmation
{
  if (_AXSAssistiveTouchScannerEnabled())
  {
    v2 = +[AXSettings sharedInstance];
    v3 = [v2 assistiveTouchSwitchUsageConfirmed];

    if ((v3 & 1) == 0)
    {
      v4 = +[AXSpringBoardServer server];
      [v4 showAlert:4 withHandler:&stru_1001D3D70];
    }
  }
}

- (void)_registerForSettingsNotifications
{
  objc_initWeak(&location, self);
  v3 = +[AXSettings sharedInstance];
  v4 = +[AXSettings sharedInstance];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100024864;
  v49[3] = &unk_1001D3438;
  objc_copyWeak(&v51, &location);
  v5 = v3;
  v50 = v5;
  [v4 registerUpdateBlock:v49 forRetrieveSelector:"assistiveTouchOpenMenuSwaggleEnabled" withListener:self];

  objc_destroyWeak(&v51);
  v6 = +[AXSettings sharedInstance];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000248C0;
  v46[3] = &unk_1001D3438;
  objc_copyWeak(&v48, &location);
  v7 = v5;
  v47 = v7;
  [v6 registerUpdateBlock:v46 forRetrieveSelector:"assistiveTouchSpeed" withListener:self];

  objc_destroyWeak(&v48);
  v8 = +[AXSettings sharedInstance];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100024924;
  v43[3] = &unk_1001D3438;
  objc_copyWeak(&v45, &location);
  v9 = v7;
  v44 = v9;
  [v8 registerUpdateBlock:v43 forRetrieveSelector:"assistiveTouchCustomGestures" withListener:self];

  objc_destroyWeak(&v45);
  v10 = +[AXSettings sharedInstance];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100024988;
  v41[3] = &unk_1001D3460;
  objc_copyWeak(&v42, &location);
  [v10 registerUpdateBlock:v41 forRetrieveSelector:"assistiveTouchAlwaysShowMenuEnabled" withListener:self];

  objc_destroyWeak(&v42);
  v11 = +[AXSettings sharedInstance];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000249C8;
  v39[3] = &unk_1001D3460;
  objc_copyWeak(&v40, &location);
  [v11 registerUpdateBlock:v39 forRetrieveSelector:"assistiveTouchMousePointerColor" withListener:self];

  objc_destroyWeak(&v40);
  v12 = +[AXSettings sharedInstance];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100024A08;
  v37[3] = &unk_1001D3460;
  objc_copyWeak(&v38, &location);
  [v12 registerUpdateBlock:v37 forRetrieveSelector:"assistiveTouchMousePointerSizeMultiplier" withListener:self];

  objc_destroyWeak(&v38);
  v13 = +[AXSettings sharedInstance];
  -[HNDHandManager setAssistiveTouchMouseDwellControlEnabled:](self, "setAssistiveTouchMouseDwellControlEnabled:", [v13 assistiveTouchMouseDwellControlEnabled]);

  v14 = +[AXSettings sharedInstance];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100024A48;
  v35[3] = &unk_1001D3460;
  objc_copyWeak(&v36, &location);
  [v14 registerUpdateBlock:v35 forRetrieveSelector:"assistiveTouchMouseDwellControlEnabled" withListener:self];

  objc_destroyWeak(&v36);
  v15 = +[AXSettings sharedInstance];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100024A88;
  v33[3] = &unk_1001D3460;
  objc_copyWeak(&v34, &location);
  [v15 registerUpdateBlock:v33 forRetrieveSelector:"assistiveTouchMouseAlwaysShowSoftwareKeyboardEnabled" withListener:self];

  objc_destroyWeak(&v34);
  v16 = +[AXSettings sharedInstance];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100024AC8;
  v30[3] = &unk_1001D3438;
  objc_copyWeak(&v32, &location);
  v17 = v9;
  v31 = v17;
  [v16 registerUpdateBlock:v30 forRetrieveSelector:"assistiveTouchBubbleModeEnabled" withListener:self];

  objc_destroyWeak(&v32);
  [(HNDHandManager *)self updateAssistiveTouchEyeTrackingAutoHideEnabled];
  v18 = +[AXSettings sharedInstance];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100024B24;
  v28[3] = &unk_1001D3460;
  objc_copyWeak(&v29, &location);
  [v18 registerUpdateBlock:v28 forRetrieveSelector:"assistiveTouchEyeTrackingAutoHideEnabled" withListener:self];

  objc_destroyWeak(&v29);
  [(HNDHandManager *)self updateAssistiveTouchEyeTrackingAutoHideTimeout];
  v19 = +[AXSettings sharedInstance];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100024B64;
  v26[3] = &unk_1001D3460;
  objc_copyWeak(&v27, &location);
  [v19 registerUpdateBlock:v26 forRetrieveSelector:"assistiveTouchEyeTrackingAutoHideTimeout" withListener:self];

  objc_destroyWeak(&v27);
  v20 = +[AXSettings sharedInstance];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100024BA4;
  v24[3] = &unk_1001D3460;
  objc_copyWeak(&v25, &location);
  [v20 registerUpdateBlock:v24 forRetrieveSelector:"assistiveTouchEyeTrackingAutoHideOpacity" withListener:self];

  objc_destroyWeak(&v25);
  v21 = +[AXSettings sharedInstance];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100024BE4;
  v22[3] = &unk_1001D3460;
  objc_copyWeak(&v23, &location);
  [v21 registerUpdateBlock:v22 forRetrieveSelector:"assistiveTouchMainScreenCustomization" withListener:self];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)updateAssistiveTouchEyeTrackingAutoHideEnabled
{
  v3 = +[AXSettings sharedInstance];
  -[HNDHandManager enableEyeTrackingAutoHide:](self, "enableEyeTrackingAutoHide:", [v3 assistiveTouchEyeTrackingAutoHideEnabled]);

  [(HNDHandManager *)self updateAssistiveTouchEyeTrackingAutoHideOpacity];
}

- (void)updateAssistiveTouchEyeTrackingAutoHideTimeout
{
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchEyeTrackingAutoHideTimeout];
  [(HNDHandManager *)self setEyeTrackingAutoHideTimeout:?];
}

- (void)updateAssistiveTouchEyeTrackingAutoHideOpacity
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100024D48;
  v2[3] = &unk_1001D36C0;
  v2[4] = self;
  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v2];
}

- (int)deviceOrientation
{
  if (AXInPreboardScenario())
  {
    return 1;
  }

  if ((+[AXSpringBoardServer isAvailable]& 1) != 0)
  {
    v3 = +[AXSpringBoardServer server];
    v2 = [v3 activeInterfaceOrientation];
  }

  else
  {
    v4 = ASTLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100128A00();
    }

    return 0;
  }

  return v2;
}

- (void)refreshOrientation
{
  if (![(HNDHandManager *)self isRefreshingOrientation])
  {
    [(HNDHandManager *)self setIsRefreshingOrientation:1];
    objc_initWeak(&location, self);
    v3 = [(HNDHandManager *)self orientationQueue];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100024F40;
    v4[3] = &unk_1001D3460;
    objc_copyWeak(&v5, &location);
    dispatch_async(v3, v4);

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)setupNonSceneUI:(BOOL)a3
{
  v3 = a3;
  if (+[HNDApplication usesScenes])
  {
    v5 = !v3;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v15 = objc_alloc_init(HNDDisplayManager);
    [(NSMutableArray *)self->_displayManagers addObject:v15];
    [(HNDDisplayManager *)v15 setAlwaysShowMenu:[(HNDHandManager *)self alwaysShowMenu]];
    [(HNDDisplayManager *)v15 setHandManager:self];
    [(HNDDisplayManager *)v15 setIsMainDisplay:1];
    [(HNDDisplayManager *)v15 setOrientation:self->_orientation withCompletion:0];
    v6 = [(HNDDisplayManager *)v15 fingerController];
    [v6 setAppearanceDelegate:self];

    [(HNDDisplayManager *)v15 updateAutoHideMousePointer];
    [(HNDDisplayManager *)v15 initializeDisplay];
    v7 = [(HNDDisplayManager *)v15 window];
    v8 = [v7 _contextId];

    if (v8)
    {
      systemPointerController = self->_systemPointerController;
      v10 = [(HNDDisplayManager *)v15 window];
      v11 = [v10 screen];
      v12 = [v11 displayIdentity];
      v13 = [v12 displayID];
      v14 = [(HNDDisplayManager *)v15 window];
      -[HNDSystemPointerController requestGlobalMouseEventsForDisplay:displayID:targetContextID:](systemPointerController, "requestGlobalMouseEventsForDisplay:displayID:targetContextID:", 0, v13, [v14 _contextId]);
    }

    [(HNDHandManager *)self restartEverything];
  }
}

- (void)restartEverything
{
  v3 = ASTLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "AST Windows: Server connected callback", buf, 2u);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100025410;
  v4[3] = &unk_1001D36C0;
  v4[4] = self;
  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v4];
  [(HNDHandManager *)self _handleBrokenHomeButtonMode];
}

- (void)keyboardVisible:(BOOL)a3 withFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  v10 = [(HNDHandManager *)self mainDisplayManager];
  [v10 keyboardVisible:v8 withFrame:{x, y, width, height}];

  if ((AXRuntimeCheck_DwellKeyboardKeyTimer() & 1) != 0 || AXRuntimeCheck_DwellKeyboardSwipe())
  {
    [(HNDHandManager *)self _updateElementFetchingForKeyboardVisible];

    [(HNDHandManager *)self _updateContinuousPathGestureState];
  }
}

- (void)_updateElementFetchingForKeyboardVisible
{
  if ([(HNDHandManager *)self needsElementHitTesting])
  {
    if (!_AXSApplicationAccessibilityEnabled())
    {
      _AXSSetAccessibilityEnabled();
      _AXSApplicationAccessibilitySetEnabled();
    }

    [(HNDHandManager *)self enableElementFetcherAndNotificationsIfNecessary];
  }

  else
  {

    [(HNDHandManager *)self disableElementFetcherIfNecessary];
  }
}

- (void)_updateContinuousPathGestureState
{
  if (AXRuntimeCheck_DwellKeyboardSwipe() && self->_continuousPathGestureState != 2)
  {
    v3 = [(HNDHandManager *)self mainDisplayManager];
    v4 = [v3 keyboardVisible];

    v5 = [(HNDHandManager *)self currentBubbleModeFocusedElement];
    [v5 updateCache:2241];

    v6 = [(HNDHandManager *)self currentBubbleModeFocusedElement];
    v7 = [v6 uiElement];
    v8 = [v7 BOOLWithAXAttribute:2241];

    v9 = +[AXSettings sharedInstance];
    v10 = [v9 assistiveTouchDwellKeyboardContinuousPathEnabled];

    v11 = 0;
    if (v4 && v8 && v10)
    {
      v12 = [(HNDHandManager *)self currentBubbleModeFocusedElement];
      [(HNDHandManager *)self setKeyboardSlideStartElement:v12];

      v11 = 1;
    }

    self->_continuousPathGestureState = v11;
    if ((AXRuntimeCheck_DwellKeyboardSwipeContinuous() & 1) == 0 && AXRuntimeCheck_DwellKeyboardSwipe())
    {
      [(HNDHandManager *)self setLastSelectedKeyboardSlidePoint:-1.0, -1.0];

      [(HNDHandManager *)self setHasPerformedFirstKeyboardSlideMovement:0];
    }
  }
}

- (void)_handleAutomationSupportChanges
{
  if (_AXSAutomationEnabled())
  {
    v2 = +[SCATAssistiveTouchServerInstance serverInstance];
  }
}

- (void)pointerController:(id)a3 didReceivePointerEvent:(id)a4
{
  v5 = a4;
  v4 = v5;
  AXPerformBlockOnMainThread();
}

- (void)cleanupPointerStreamIfNecessary
{
  if (sub_100042C64())
  {
    systemPointerController = self->_systemPointerController;

    [(HNDSystemPointerController *)systemPointerController removePointerStreamObserver:self];
  }
}

- (BOOL)shouldHideSystemPointerForFingersView
{
  if ([(HNDHandManager *)self inBubbleMode])
  {
    v3 = [(HNDHandManager *)self currentlySnappedInBubbleMode];
  }

  else
  {
    v3 = 0;
  }

  if ([(HNDHandManager *)self shouldUseEyeTrackingAutoHide])
  {
    v4 = [(HNDHandManager *)self eyeTrackingAutoHideEnabled];
  }

  else
  {
    v4 = 0;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  if ([(HNDHandManager *)self usingSpecialTool]|| [(HNDHandManager *)self inCustomGesture]|| [(HNDHandManager *)self dwellControlEnabled]|| (([(HNDHandManager *)self canShowASTMousePointer]| v3) & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v8 = [(HNDHandManager *)self deviceManager];
    if ([v8 hidDeviceIsConfiguring])
    {
      v5 = 1;
    }

    else
    {
      v9 = [(HNDHandManager *)self deviceManager];
      if (([v9 hidDeviceSentReservedStatus] | v4))
      {
        v5 = 1;
      }

      else
      {
        v10 = [(HNDHandManager *)self mainDisplayManager];
        v5 = [v10 isShowingCalibrationUI];
      }
    }
  }

  v15 = v5;
  if ([(HNDHandManager *)self onenessSessionActive])
  {
    v6 = 1;
    *(v13 + 24) = 1;
  }

  else if (v13[3])
  {
    v6 = 1;
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100025F20;
    v11[3] = &unk_1001D3DB8;
    v11[4] = &v12;
    [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v11];
    v6 = *(v13 + 24);
  }

  _Block_object_dispose(&v12, 8);
  return v6 & 1;
}

- (void)_updateSystemPointerForOneness
{
  v3 = +[AXSpringBoardServer server];
  -[HNDHandManager setOnenessSessionActive:](self, "setOnenessSessionActive:", [v3 isContinuitySessionActive]);

  v4 = [(HNDHandManager *)self systemPointerController];
  [v4 hideSystemPointer:{-[HNDHandManager shouldHideSystemPointerForFingersView](self, "shouldHideSystemPointerForFingersView")}];
}

- (BOOL)shouldHandleSystemPointerButtonEvent:(id)a3
{
  v4 = a3;
  if (!_AXSAssistiveTouchEnabled() || [v4 type] != 1 && objc_msgSend(v4, "type") != 2)
  {
    v11 = 0;
    goto LABEL_16;
  }

  v5 = [v4 actionOverride];
  if (![v5 length])
  {

    goto LABEL_10;
  }

  v6 = [v4 actionOverride];
  v7 = [v6 isEqualToString:@"__NONE__"];

  if ((v7 & 1) != 0 || ([v4 actionOverride], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "buttonNumber"), AXAssistiveTouchDefaultLaserIconTypeForMouseButton(), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v8, v10))
  {
LABEL_10:
    if (-[HNDHandManager mouseBehavesLikeFinger](self, "mouseBehavesLikeFinger") && ([v4 buttonNumber], AXAssistiveTouchDefaultLaserIconTypeForMouseButton(), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", AXAssistiveTouchIconTypeMousePrimaryClick), v12, v13))
    {
      v14 = [(HNDHandManager *)self currentHardwareIdentifierForPointer];
      v15 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v14];

      v11 = [v15 isMainDisplay];
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_14;
  }

  v11 = 1;
LABEL_14:
  if ([(HNDHandManager *)self inBubbleMode])
  {
    v11 |= [(HNDHandManager *)self currentlySnappedInBubbleMode];
  }

LABEL_16:

  return v11 & 1;
}

- (BOOL)hitTestsViewAtSystemPointerPoint
{
  v2 = [(HNDHandManager *)self viewAtSystemPointerPoint];
  v3 = v2 != 0;

  return v3;
}

- (id)viewAtSystemPointerPoint
{
  v3 = [(HNDSystemPointerController *)self->_systemPointerController currentSystemPointerHardwareIdentifier];
  v4 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v3];
  [(HNDSystemPointerController *)self->_systemPointerController currentAbsoluteSystemPointerPoint];
  v5 = [v4 viewAtDisplayPoint:?];

  return v5;
}

- (void)_systemPointerSettingsDidChange
{
  if ([(HNDHandManager *)self shouldUseBubbleMode]|| [(HNDHandManager *)self shouldUseEyeTrackingAutoHide])
  {
    if ([(HNDHandManager *)self shouldHideSystemPointerForFingersView])
    {
      v3 = [(HNDHandManager *)self systemPointerController];
      [v3 hideSystemPointer:0];

      v4 = [(HNDHandManager *)self systemPointerController];
      [v4 hideSystemPointer:1];
    }
  }

  objc_initWeak(&location, self);
  [(AXDispatchTimer *)self->_systemPointerSettingsChangedDebouncer cancel];
  systemPointerSettingsChangedDebouncer = self->_systemPointerSettingsChangedDebouncer;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000263A0;
  v6[3] = &unk_1001D3460;
  objc_copyWeak(&v7, &location);
  [(AXDispatchTimer *)systemPointerSettingsChangedDebouncer afterDelay:v6 processBlock:0.1];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)moveSystemPointerIfActiveToPoint:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  if (sub_100042C64())
  {
    v7 = [(HNDHandManager *)self systemPointerController];
    if (v7)
    {
      v8 = v7;
      v9 = [(HNDHandManager *)self deviceManager];
      v10 = [v9 mainDeviceIsPointer];

      if (v10)
      {
        v11 = [(HNDHandManager *)self systemPointerController];
        [v11 currentSystemPointerPoint];
        v13 = v12;
        v15 = v14;

        [HNDVirtualHIDMouse handleMovementWithDelta:x - v13, y - v15];
      }
    }
  }
}

- (CGPoint)systemPointerLocation
{
  if ([(HNDHandManager *)self mouseBehavesLikeFinger])
  {
    v3 = [(HNDHandManager *)self currentDisplayManager];
    v4 = [v3 fingerController];
    v5 = [v4 fingerModels];
    v6 = [v5 firstObject];
    [v6 location];
    x = v7;
    y = v9;
  }

  else
  {
    v11 = [(HNDHandManager *)self systemPointerController];

    if (!v11)
    {
      x = CGPointZero.x;
      y = CGPointZero.y;
      goto LABEL_6;
    }

    v3 = [(HNDHandManager *)self systemPointerController];
    [v3 currentSystemPointerPoint];
    x = v12;
    y = v13;
  }

LABEL_6:
  v14 = x;
  v15 = y;
  result.y = v15;
  result.x = v14;
  return result;
}

- (BOOL)isVirtualTrackpadVisible
{
  v2 = [(HNDHandManager *)self mainDisplayManager];
  v3 = [v2 isShowingVirtualTrackpad];

  return v3;
}

- (void)setVirtualTrackpadBubbleModeEnabled:(BOOL)a3
{
  if (a3)
  {
    [(HNDHandManager *)self enableElementFetcherAndNotificationsIfNecessary];
    v4 = +[AXSettings sharedInstance];
    v5 = [v4 assistiveTouchBubbleModeEnabled];
  }

  else
  {
    [(HNDHandManager *)self disableElementFetcherIfNecessary];
    v5 = [(HNDHandManager *)self shouldUseBubbleMode];
  }

  [(HNDHandManager *)self enableBubbleMode:v5];
}

- (void)_moveFingersToPointInFingerCoordinateSpace:(CGPoint)a3 onDisplay:(id)a4 allowOutOfBounds:(BOOL)a5 animated:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v9 = a5;
  y = a3.y;
  x = a3.x;
  v13 = a4;
  v14 = a7;
  if (v8)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100026770;
    v15[3] = &unk_1001D3DE0;
    v15[4] = self;
    v17 = x;
    v18 = y;
    v16 = v13;
    v19 = v9;
    [UIView animateWithDuration:v15 animations:v14 completion:0.15];
  }

  else
  {
    [(HNDHandManager *)self moveFingersToPointInFingerCoordinateSpace:v13 onDisplay:v9 allowOutOfBounds:x, y];
    if (v14)
    {
      v14[2](v14, 1);
    }
  }
}

- (void)moveFingersToPointInFingerCoordinateSpace:(CGPoint)a3 onDisplay:(id)a4 allowOutOfBounds:(BOOL)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v9];
  v11 = [v10 fingerController];

  if ([v11 numberOfFingers])
  {
    if (self->_hotCornerLocked)
    {
      v12 = [(HNDHandManager *)self _roundedCornersForCursorAtPoint:v9 onDisplay:x, y];
    }

    else
    {
      v12 = -1;
    }

    v13 = [AXPIFingerUtilities fingerShapeForCorner:v12];
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x3010000000;
    v35[3] = &unk_100179B77;
    v36 = CGPointZero;
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3010000000;
    v33[3] = &unk_100179B77;
    v34 = v36;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 1;
    v14 = +[NSMutableArray array];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100026A34;
    v20[3] = &unk_1001D3E08;
    v23 = v35;
    v24 = v33;
    v26 = x;
    v27 = y;
    v28 = a5;
    v15 = v11;
    v21 = v15;
    v25 = &v29;
    v16 = v14;
    v22 = v16;
    [v15 enumerateFingersUsingBlock:v20];
    if (*(v30 + 24) == 1 && ![(HNDHandManager *)self isPerformingMultiStepGesture])
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100026B80;
      v17[3] = &unk_1001D3E30;
      v18 = v16;
      v19 = v13;
      [v15 enumerateFingersUsingBlock:v17];
    }

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(v33, 8);
    _Block_object_dispose(v35, 8);
  }
}

- (void)startDragModeOnDisplay:(id)a3
{
  v4 = a3;
  if (![(HNDHandManager *)self inDragMode])
  {
    [(HNDHandManager *)self showMenu:0 onDisplay:v4];
    v5 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v4];
    v6 = [v5 fingerController];
    if (![v6 numberOfFingers])
    {
      [(HNDHandManager *)self currentPointForPointer];
      v8 = v7;
      v10 = v9;
      v11 = [AXPIFingerModel fingerModelForLocation:?];
      v13 = v11;
      v12 = [NSArray arrayWithObjects:&v13 count:1];
      [v6 showFingerModels:v12 animated:1 startPointForAnimation:{v8, v10}];
    }

    [v5 setMultiTouchToolBackgroundEnabled:1];
    [(HNDHandManager *)self setDwellMode:1];
    self->_inDragMode = 1;
    [(HNDHandManager *)self pauseBubbleModeForSpecialUsageTool];
    [(HNDHandManager *)self pauseEyeTrackingAutoHideForSpecialUsageTool];
    [(HNDHandManager *)self _systemPointerSettingsDidChange];
  }
}

- (void)beginDragAtPoint:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(HNDHandManager *)self inDragMode]&& !self->_isPerformingDragPressEvent)
  {
    if ([(HNDHandManager *)self _isInNubbitHitbox:v7 onDisplay:x, y]&& !self->_isDragNubbitMode)
    {
      [(HNDHandManager *)self endDragModeAtPoint:v7 onDisplay:0 completed:x, y];
      [(HNDHandManager *)self showMenu:1 onDisplay:v7];
    }

    else
    {
      [(HNDHandManager *)self pauseBubbleModeForSpecialUsageTool];
      [(HNDHandManager *)self pauseEyeTrackingAutoHideForSpecialUsageTool];
      self->_isPerformingDragPressEvent = 1;
      self->_dragStartPoint.x = x;
      self->_dragStartPoint.y = y;
      v8 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v7];
      [v8 updateWithPrimaryFingerPoint:{x, y}];
      [(HNDHandManager *)self moveFingersToPointInFingerCoordinateSpace:v7 onDisplay:0 allowOutOfBounds:x, y];
      v9 = [v8 fingerController];
      [v9 pressFingersDownAnimated:1];

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100026F78;
      v13[3] = &unk_1001D3E58;
      v13[4] = self;
      v14 = v8;
      v10 = v8;
      v12 = objc_retainBlock(v13);
      v11 = v12;
      AXPerformBlockOnMainThreadAfterDelay();
    }
  }
}

- (void)endDragModeAtPoint:(CGPoint)a3 onDisplay:(id)a4 completed:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  x = a3.x;
  v9 = a4;
  if ([(HNDHandManager *)self inDragMode]&& !self->_isPerformingDragPressEvent)
  {
    [(HNDHandManager *)self displayManagerForHardwareIdentifier:v9];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100027400;
    v10 = v34[3] = &unk_1001D3EA8;
    v35 = v10;
    v36 = self;
    v38 = x;
    v39 = y;
    v40 = v5;
    v11 = v9;
    v37 = v11;
    v12 = objc_retainBlock(v34);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100027508;
    v32[3] = &unk_1001D3E58;
    v32[4] = self;
    v13 = v10;
    v33 = v13;
    v14 = objc_retainBlock(v32);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100027524;
    v30[3] = &unk_1001D36E8;
    v30[4] = self;
    v15 = v13;
    v31 = v15;
    v16 = objc_retainBlock(v30);
    if (v5)
    {
      self->_isPerformingDragPressEvent = 1;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100027544;
      v25[3] = &unk_1001D3ED0;
      v28 = x + 0.001;
      v29 = y + 0.001;
      v27 = v14;
      v25[4] = self;
      v26 = v11;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100027594;
      v17[3] = &unk_1001D3F20;
      v21 = v16;
      v23 = x;
      v24 = y;
      v18 = v15;
      v19 = self;
      v20 = v26;
      v22 = v12;
      [UIView animateWithDuration:v25 animations:v17 completion:0.15];
    }

    else
    {
      if (self->_dragStartPoint.x != -1.0 || self->_dragStartPoint.y != -1.0)
      {
        (v14[2])(v14);
        (v16[2])(v16);
        [(HNDHandManager *)self moveFingersToPointInFingerCoordinateSpace:v11 onDisplay:0 allowOutOfBounds:self->_dragStartPoint.x, self->_dragStartPoint.y];
        [v15 updateWithPrimaryFingerPoint:{self->_dragStartPoint.x, self->_dragStartPoint.y}];
      }

      (v12[2])(v12);
    }
  }
}

- (void)_handleRealDragToolUp:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v7];
  v10 = [v8 fingerController];

  [v10 hndConvertPointToFingerContainerView:{x, y}];
  if (self->_dragStartPoint.x == -1.0 && self->_dragStartPoint.y == -1.0)
  {
    [(HNDHandManager *)self beginDragAtPoint:v7 onDisplay:?];
  }

  else
  {
    [(HNDHandManager *)self endDragModeAtPoint:v7 onDisplay:1 completed:?];
  }
}

- (void)_handleRealDragToolMove:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = v7;
  if (!self->_isPerformingDragPressEvent && !self->_isDragNubbitMode)
  {
    v9 = v7;
    v7 = [(HNDHandManager *)self _moveFingersForRealEventToPoint:v7 onDisplay:x, y];
    v8 = v9;
  }

  _objc_release_x1(v7, v8);
}

- (void)_handleRealContinuousScrollToolUp:(CGPoint)a3 onDisplay:(id)a4
{
  v5 = a4;
  if ([(HNDHandManager *)self inContinuousScrollMode])
  {
    [(HNDHandManager *)self endContinuousScrollingOnDisplay:v5 withCompletion:0];
  }

  else
  {
    [(HNDHandManager *)self beginContinuousScrollingInDirection:[(HNDHandManager *)self continuousScrollMode]== 1 onDisplay:v5];
  }
}

- (BOOL)isSystemSleeping:(id)a3
{
  v3 = +[AXSystemAppServer server];
  v4 = [v3 isSystemSleeping];

  return v4;
}

- (void)fetcher:(id)a3 didFetchElementsForEvent:(unint64_t)a4 foundNewElements:(BOOL)a5
{
  if ([(HNDHandManager *)self needsGenerateScrollers:a3])
  {
    [(HNDHandManager *)self generateContinuousScrollersWithCompletion:0];
  }

  if ([(HNDHandManager *)self needsElementHitTesting])
  {

    [(HNDHandManager *)self generateMappingForElementFrames];
  }
}

- (id)additionalAXNotificationsToObserve
{
  if (qword_1002189B0 != -1)
  {
    sub_100128A78();
  }

  v3 = qword_1002189A8;

  return v3;
}

- (void)accessibilityManager:(id)a3 didReceiveEvent:(int64_t)a4 data:(id)a5
{
  if (a4 <= 0x10 && ((1 << a4) & 0x1F2EE) != 0)
  {
    [(HNDHandManager *)self setBubbleModeBlockedOnElementRefresh:a4 != 3];
    v7 = +[HNDHandManager sharedManager];
    v6 = [v7 updateElementVisualsCoalescer];
    [v6 notifyUpdateElementVisualsEventDidOccur];
  }
}

- (BOOL)_scrollAncestorIsSelfForScrollView:(id)a3 scrollAction:(int)a4 resultScrollAncestor:(id *)a5
{
  v6 = *&a4;
  v7 = a3;
  v8 = +[AXElement elementWithAXUIElement:](AXElement, "elementWithAXUIElement:", [v7 scrollAncestorForScrollAction:v6]);
  v9 = v8;
  if (a5)
  {
    v10 = v8;
    *a5 = v9;
  }

  v11 = [v7 isEqual:v9];

  return v11;
}

- (void)generateContinuousScrollersWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HNDHandManager *)self continuousScrollerGenerationQueue];

  if (v5)
  {
    v6 = [(HNDHandManager *)self continuousScrollerGenerationQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100027B30;
    v7[3] = &unk_1001D3CD0;
    v8 = v4;
    [(HNDHandManager *)self generateContinuousScrollersOnQueue:v6 withCompletion:v7];
  }
}

- (void)generateContinuousScrollersOnQueue:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(HNDHandManager *)self isActivelyScrollingContinuously])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100027C04;
    v8[3] = &unk_1001D3FB8;
    v8[4] = self;
    v9 = v7;
    dispatch_async(v6, v8);
  }
}

- (BOOL)shouldUseEyeTrackingAutoHide
{
  v2 = [(HNDHandManager *)self deviceSupportsAutoHide];
  if (v2)
  {
    v3 = +[AXSettings sharedInstance];
    v4 = [v3 assistiveTouchEyeTrackingAutoHideEnabled];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (BOOL)deviceSupportsAutoHide
{
  v3 = [(HNDHandManager *)self deviceManager];
  v4 = [v3 mainDeviceIsThirdPartyTracker];

  v5 = [(HNDHandManager *)self deviceManager];
  LOBYTE(v3) = [v5 mainDeviceIsOnDeviceEyeTracker];

  return (v4 | v3) & 1;
}

- (void)enableBubbleMode:(BOOL)a3
{
  v3 = a3;
  v5 = [(HNDHandManager *)self inBubbleMode];
  v6 = !v3;
  v7 = !v3 & v5;
  [(HNDHandManager *)self setInBubbleMode:v3];
  v8 = AXLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(HNDHandManager *)self inBubbleMode];
    v10 = @"NO";
    if (v9)
    {
      v10 = @"YES";
    }

    *buf = 138412290;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "bubbleModeSettingToggled: %@", buf, 0xCu);
  }

  if (v7)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000286F4;
    v11[3] = &unk_1001D36C0;
    v11[4] = self;
    [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v11];
    [(HNDHandManager *)self resetFingersIfNeeded];
    [(HNDHandManager *)self _systemPointerSettingsDidChange];
  }

  if (((v6 | v5) & 1) == 0)
  {
    [(HNDHandManager *)self _setApplicationAccessibilityEnabledIfNeeded];
    [(HNDHandManager *)self refreshElementFetcherWithScrollingBlocked:1];
  }
}

- (BOOL)shouldUseBubbleMode
{
  v2 = [(HNDHandManager *)self bubbleModeAllowed];
  if (v2)
  {
    v3 = +[AXSettings sharedInstance];
    v4 = [v3 assistiveTouchBubbleModeEnabled];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (BOOL)bubbleModeAllowed
{
  v3 = [(HNDHandManager *)self deviceManager];
  v4 = [v3 mainDeviceIsMotionTracker];

  return (v4 | [(HNDHandManager *)self isVirtualTrackpadVisible]) & 1;
}

- (id)_groupWithDictionary:(id)a3 currentPid:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"GroupElements"];
  v8 = [v6 objectForKeyedSubscript:@"GroupTraits"];
  v9 = [v8 intValue];
  v10 = [v6 objectForKeyedSubscript:@"GroupScanBehaviorTraits"];
  v11 = [v10 intValue];
  v12 = [v6 objectForKeyedSubscript:@"GroupLabel"];
  v13 = [v6 objectForKeyedSubscript:@"GroupIdentifier"];

  v14 = [(HNDHandManager *)self _groupWithItems:v7 groupTraits:v9 scanningBehaviorTraits:v11 label:v12 identifier:v13 currentPid:v4];

  return v14;
}

- (id)_groupWithItems:(id)a3 groupTraits:(unint64_t)a4 scanningBehaviorTraits:(unint64_t)a5 label:(id)a6 identifier:(id)a7 currentPid:(int)a8
{
  v8 = *&a8;
  v31 = a5;
  v11 = a3;
  v32 = a6;
  v12 = +[NSMutableArray array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = v11;
  v34 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v34)
  {
    goto LABEL_20;
  }

  v14 = *v36;
  v33 = v13;
  do
  {
    for (i = 0; i != v34; i = i + 1)
    {
      if (*v36 != v14)
      {
        objc_enumerationMutation(v13);
      }

      v16 = *(*(&v35 + 1) + 8 * i);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [(HNDHandManager *)self _groupWithDictionary:v16 currentPid:v8];
        if (v18)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v19 = CFGetTypeID(v16);
        if ((v19 == AXUIElementGetTypeID()) | isKindOfClass & 1)
        {
          if (isKindOfClass)
          {
            [AXElement elementWithUIElement:v16];
          }

          else
          {
            [AXElement elementWithAXUIElement:v16];
          }
          v20 = ;
          v21 = [v20 uiElement];
          v22 = [v21 pid];

          if (v22 == v8)
          {
            v18 = v20;
          }

          else
          {
            v23 = [v20 uiElement];
            [v23 objectWithAXAttribute:94500 parameter:&off_1001E4E00];
            v25 = v24 = v12;

            v18 = [(HNDHandManager *)self _groupWithItems:v25 groupTraits:0 scanningBehaviorTraits:0 label:0 identifier:0 currentPid:v22];

            v12 = v24;
            v13 = v33;
          }

          if (v18)
          {
LABEL_17:
            [v12 addObject:{v18, v31}];

            continue;
          }
        }
      }
    }

    v34 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
  }

  while (v34);
LABEL_20:

  if ([v12 count])
  {
    v26 = v12;
    v27 = v12;
    v28 = v32;
    v29 = [AXElementGroup groupWithElements:v26 label:v32];
    [v29 setUserDefinedScanningBehaviorTraits:v31];
  }

  else
  {
    v29 = 0;
    v27 = v12;
    v28 = v32;
  }

  return v29;
}

- (void)processPortraitUpPointForElementHitTesting:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(HNDHandManager *)self needsElementHitTesting])
  {
    [(HNDHandManager *)self _updateHitTestingElementsWithPoint:v7 onDisplay:x, y];
  }
}

- (void)_updateHitTestingElementsWithPoint:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ((byte_1002189B8 & 1) == 0)
  {
    [(HNDHandManager *)self refreshElementFetcherWithScrollingBlocked:1];
    byte_1002189B8 = 1;
  }

  if (!self->_primaryButtonDown || ![(HNDHandManager *)self currentlySnappedInBubbleMode]|| self->_continuousPathGestureState == 2)
  {
    v8 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v7];
    if ([v8 shouldHideBubbleModeForVirtualTrackpad])
    {
      [(HNDHandManager *)self bubbleModeFailedToSnapOnDisplay:v7];
LABEL_69:

      goto LABEL_70;
    }

    v9 = [v8 isMenuVisible];
    v10 = CGRectZero.origin.x;
    v11 = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    mach_absolute_time();
    [(HNDHandManager *)self lastTimeHitTestedForBubbleMode];
    if (AXMachTimeToNanoseconds() / 1000000000.0 <= 0.1)
    {
      v21 = [(HNDHandManager *)self lastBubbleModeFocusedElement];

      if (v21)
      {
        v16 = [(HNDHandManager *)self lastBubbleModeFocusedElement];
        [v16 visibleFrame];
        v10 = v22;
        v11 = v23;
        width = v24;
        height = v25;
        [v8 convertPointToInterfaceOrientation:{x, y}];
        v96 = v27;
        v97 = v26;
        v15 = 1;
        goto LABEL_30;
      }

      v15 = 0;
      v16 = 0;
    }

    else
    {
      [(HNDHandManager *)self setLastTimeHitTestedForBubbleMode:mach_absolute_time()];
      v14 = [AXElement elementAtCoordinate:0 withVisualPadding:x, y];
      v15 = [(HNDHandManager *)self isSimpleElementForBubbleMode:v14];
      if (v15)
      {
        v16 = v14;
        [v16 visibleFrame];
        v10 = v17;
        v11 = v18;
        width = v19;
        height = v20;
      }

      else
      {
        v16 = 0;
      }
    }

    [v8 convertPointToInterfaceOrientation:{x, y}];
    v96 = v29;
    v97 = v28;
    if (((v15 | v9) & 1) == 0)
    {
      v30 = v28;
      v31 = v29;
      v32 = [v8 trackpadViewController];
      v33 = [v32 trackpadContainsPoint:{v30, v31}];

      if (v33)
      {
        v34 = [(HNDHandManager *)self currentlySelectedKeyboardRow];

        v103 = 1.79769313e308;
        v35 = [(HNDHandManager *)self nearestElementFrameForPortraitPoint:&v103 distance:x, y];
        if (!v35)
        {
          goto LABEL_22;
        }

        v36 = 200.0;
        if (!v34)
        {
          v36 = 70.0;
        }

        if (v103 <= v36)
        {
          v37 = [(HNDHandManager *)self bubbleModeFrameToElementMapping];
          v38 = [v37 objectForKeyedSubscript:v35];

          if (v38 && [(HNDHandManager *)self isSimpleElementForBubbleMode:v38])
          {
            v39 = v38;
            v40 = v16;
            v16 = v39;

            [v16 frame];
            v10 = v41;
            v11 = v42;
            width = v43;
            height = v44;
            v15 = 1;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
LABEL_22:
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

LABEL_30:
    v94 = v11;
    v95 = v10;
    v99 = height;
    v101 = width;
    [v8 orientedBubbleModeElementFrameForElementFrame:{v10, v11, width, height}];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    [v8 screenBounds];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v104.origin.x = v46;
    v104.origin.y = v48;
    v104.size.width = v50;
    v104.size.height = v52;
    if (CGRectIsEmpty(v104) || (v105.origin.x = v54, v105.origin.y = v56, v105.size.width = v58, v105.size.height = v60, CGRectIsEmpty(v105)))
    {
      v61 = 0;
      v63 = v99;
      v62 = v101;
    }

    else
    {
      v93 = 0x3FEE666666666666;
      v63 = v99;
      v62 = v101;
      v61 = AXMIsContainedBy();
    }

    v64 = [(HNDHandManager *)self availableElements];
    v65 = [v64 count] != 1;

    v66 = (v9 & 1) == 0 && [(HNDHandManager *)self _isInNubbitHitbox:v7 onDisplay:v97 activationFactor:v96, 0.65];
    [v8 convertToNormalizedInterfaceOrientation:{v97, v96}];
    v68 = v67;
    v70 = v69;
    if ([(HNDHandManager *)self _shouldLockIntoHotCornerAtNormalizedPoint:v7 onDisplay:?])
    {
      [(HNDHandManager *)self bubbleModeFailedToSnapOnDisplay:v7];
      [(HNDHandManager *)self _lockIntoHotCornerForOrientedNormalizedPoint:v7 onDisplay:0 cancelDwell:v68, v70];
LABEL_68:

      goto LABEL_69;
    }

    v72 = v15 & (v65 | v61 ^ 1);
    v103 = 1.79769313e308;
    if (v9)
    {
      v73 = [v8 rocker];
      v74 = [v73 currentlyVisibleRockerItems];
      v75 = [v74 count];

      v77 = v94;
      v76 = v95;
      if (v75)
      {
        v78 = [(HNDHandManager *)self nearestRockerButtonForDisplayManger:v8 orientedPoint:&v103 distance:v97, v96];
        v79 = v78;
        v71 = v103;
        v81 = v103 <= 80.0 && v78 != 0;
      }

      else
      {
        v81 = 0;
        v79 = 0;
      }
    }

    else
    {
      v81 = 0;
      v79 = 0;
      v77 = v94;
      v76 = v95;
    }

    if (!(v72 | v66) && !v81)
    {
      [(HNDHandManager *)self bubbleModeFailedToSnapOnDisplay:v7, v71];
LABEL_67:

      goto LABEL_68;
    }

    v98 = v81;
    v82 = v16;
    v83 = [(HNDHandManager *)self bubbleModeCurrentlyFocusedOnNubbit];
    v84 = [(HNDHandManager *)self bubbleModeFocusedRockerItem];
    v102 = 0;
    v100 = v72;
    if (v84 && v79)
    {
      v85 = [(HNDHandManager *)self bubbleModeFocusedRockerItem];
      v102 = [v85 isEqual:v79];
    }

    v86 = v83 & v66;

    v87 = [(HNDHandManager *)self lastBubbleModeFocusedElement];
    v88 = 0;
    if (v87)
    {
      v16 = v82;
      if (!v82)
      {
        goto LABEL_59;
      }

      v89 = [(HNDHandManager *)self lastBubbleModeFocusedElement];
      v88 = [v89 isEqual:v82] & !v66;
    }

    v16 = v82;
LABEL_59:

    if (((v86 | v88 | v102) & 1) == 0)
    {
      v90 = [(HNDHandManager *)self currentlySnappedInBubbleMode];
      [(HNDHandManager *)self setBubbleModeCurrentlyFocusedOnNubbit:v66];
      if (v98)
      {
        v91 = v79;
      }

      else
      {
        v91 = 0;
      }

      [(HNDHandManager *)self setBubbleModeFocusedRockerItem:v91];
      if (v100)
      {
        v92 = v16;
      }

      else
      {
        v92 = 0;
      }

      [(HNDHandManager *)self setCurrentBubbleModeFocusedElement:v92];
      [(HNDHandManager *)self setLastBubbleModeFocusedElement:v92];
      self->_hoverNubbitLocked = 0;
      [(HNDHandManager *)self _updateBubbleModeFrameOnDisplay:v7 elementFrame:v90 wasSnapped:v76, v77, v62, v63];
    }

    goto LABEL_67;
  }

LABEL_70:
}

- (void)_updateBubbleModeFrameOnDisplay:(id)a3 elementFrame:(CGRect)a4 wasSnapped:(BOOL)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v54 = a3;
  if (![(HNDHandManager *)self shouldUseBubbleMode])
  {
    goto LABEL_22;
  }

  v11 = [(HNDHandManager *)self bubbleModeCurrentlyFocusedOnNubbit];
  v12 = [(HNDHandManager *)self bubbleModeFocusedRockerItem];

  v13 = [(HNDHandManager *)self currentBubbleModeFocusedElement];

  v14 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v54];
  v15 = v14;
  if (v12)
  {
    v16 = [(HNDHandManager *)self bubbleModeFocusedRockerItem];
    [v15 screenBoundsForRockerButton:v16];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
  }

  else
  {
    if (v11)
    {
      [v14 rockerFrame];
    }

    else
    {
      if (!v13)
      {
        v18 = CGRectZero.origin.x;
        v20 = CGRectZero.origin.y;
        v22 = CGRectZero.size.width;
        v24 = CGRectZero.size.height;
        goto LABEL_9;
      }

      [v14 orientedBubbleModeElementFrameForElementFrame:{x, y, width, height}];
    }

    v18 = v25;
    v20 = v26;
    v22 = v27;
    v24 = v28;
  }

LABEL_9:
  v29 = sub_100042DE0();
  v56.origin.x = v18;
  v56.origin.y = v20;
  v56.size.width = v22;
  v56.size.height = v24;
  v57 = CGRectInset(v56, -9.0, -9.0);
  v30 = v57.origin.y + (40.0 - v57.size.height) * -0.5;
  if (v57.size.height < 40.0)
  {
    v57.size.height = 40.0;
    v57.origin.y = v30;
  }

  [(HNDHandManager *)self clipRect:v54 toRotatedScreenBoundsOnDisplay:v57.origin.x, v57.origin.y, v57.size.width, v57.size.height, 40.0, v30];
  v52 = v31;
  v33 = v32;
  v34 = v58.size.width;
  v35 = v58.size.height;
  v58.origin.x = 0.0;
  v58.origin.y = 0.0;
  v59 = CGRectInset(v58, 1.0, 1.0);
  v60 = CGRectIntegral(v59);
  v36 = v60.origin.x;
  v37 = v60.origin.y;
  v38 = v60.size.width;
  v39 = v60.size.height;
  if (!CGRectIsEmpty(v60) && (v61.origin.x = v36, v61.origin.y = v37, v61.size.width = v38, v61.size.height = v39, !CGRectIsInfinite(v61)) && CGFloatIsValid() && CGFloatIsValid() && v38 > 0.0 && v39 > 0.0 && ([UIBezierPath bezierPathWithRoundedRect:v36 cornerRadius:v37, v38, v39, (v29 + 1.0) * 8.0], (v40 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v41 = v40;
    [(HNDHandManager *)self cancelDwellTimerForPointer];
    if (v12)
    {
      v42 = [v15 rocker];
      v43 = [(HNDHandManager *)self bubbleModeFocusedRockerItem];
      [v42 hoveredToRockerButton:v43];
    }

    else if (v11)
    {
      [(HNDHandManager *)self setBubbleModeCurrentlyFocusedOnNubbit:1];
      self->_hoverNubbitLocked = 1;
    }

    v44 = [(HNDHandManager *)self systemPointerController];
    [v44 hideSystemPointer:{-[HNDHandManager shouldHideSystemPointerForFingersView](self, "shouldHideSystemPointerForFingersView")}];

    v45 = [(HNDHandManager *)self currentDisplayManager];
    v46 = [v45 fingerContentViewIsActive];

    if (v46 && ![(HNDHandManager *)self isVirtualTrackpadVisible])
    {
      if ([(HNDHandManager *)self eyeTrackingAutoHideEnabled])
      {
        [v15 overrideFingerContentViewOpacity:0.0];
      }

      v47 = [(HNDHandManager *)self currentDisplayManager];
      [v47 setFingerContentViewIsActive:0 withDuration:0.0];
    }

    if (![(HNDHandManager *)self isVirtualTrackpadVisible])
    {
      v48 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v54];
      v49 = [v48 fingerController];
      v50 = [v49 fingerContainerView];
      [v50 setAlpha:0.0];
    }

    if (!a5)
    {
      [(HNDHandManager *)self reloadFingerAppearance];
    }

    if ([(HNDHandManager *)self eyeTrackingAutoHideEnabled])
    {
      v51 = +[AXSettings sharedInstance];
      [v51 assistiveTouchEyeTrackingAutoHideOpacity];
      [v15 overrideBubbleCursorOpacity:?];
    }

    [v15 drawBubbleCursorFrame:v41 withPath:{v53, v33, v34, v35}];
  }

  else
  {
    [(HNDHandManager *)self bubbleModeFailedToSnapOnDisplay:v54, v52];
  }

LABEL_22:
}

- (void)bubbleModeFailedToSnapOnDisplay:(id)a3
{
  v14 = a3;
  v4 = [(HNDHandManager *)self currentlySnappedInBubbleMode];
  [(HNDHandManager *)self cancelDwellTimerForBubbleMode];
  v5 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v14];
  if ([(HNDHandManager *)self eyeTrackingAutoHideEnabled])
  {
    [v5 overrideBubbleCursorOpacity:0.0];
  }

  [v5 hideBubbleCursor];
  [(HNDHandManager *)self setCurrentBubbleModeFocusedElement:0];
  [(HNDHandManager *)self setLastBubbleModeFocusedElement:0];
  [(HNDHandManager *)self setBubbleModeFocusedRockerItem:0];
  [(HNDHandManager *)self setBubbleModeCurrentlyFocusedOnNubbit:0];
  v6 = [(HNDHandManager *)self currentDisplayManager];
  v7 = [v6 fingerContentViewIsActive];

  if ((v7 & 1) == 0)
  {
    if ([(HNDHandManager *)self eyeTrackingAutoHideEnabled])
    {
      v8 = +[AXSettings sharedInstance];
      [v8 assistiveTouchEyeTrackingAutoHideOpacity];
      [v5 overrideFingerContentViewOpacity:?];
    }

    v9 = [(HNDHandManager *)self currentDisplayManager];
    [v9 setFingerContentViewIsActive:1];
  }

  v10 = [(HNDHandManager *)self systemPointerController];
  [v10 hideSystemPointer:{-[HNDHandManager shouldHideSystemPointerForFingersView](self, "shouldHideSystemPointerForFingersView")}];

  v11 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v14];
  v12 = [v11 fingerController];
  v13 = [v12 fingerContainerView];
  [v13 setAlpha:1.0];

  if (v4)
  {
    [(HNDHandManager *)self reloadFingerAppearance];
  }
}

- (id)keyboardRowContainingKeyboardKey:(id)a3
{
  v4 = a3;
  v5 = [v4 elementParent];
  v6 = [v5 uiElement];
  v7 = [v6 objectWithAXAttribute:12017];

  v8 = -[HNDHandManager _groupWithItems:groupTraits:scanningBehaviorTraits:label:identifier:currentPid:](self, "_groupWithItems:groupTraits:scanningBehaviorTraits:label:identifier:currentPid:", v7, 0, 0, @"Keyboard Row", @"Keyboard Row", [v5 pid]);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000299F0;
  v14[3] = &unk_1001D3FE0;
  v15 = v4;
  v9 = v4;
  v10 = [v8 firstChildPassingTest:v14];
  if ([v10 isGroup])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (id)availableElements
{
  v3 = [(HNDHandManager *)self currentlySelectedKeyboardRow];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 descendantsPassingTest:&stru_1001D4020];
  }

  else
  {
    v6 = [(HNDHandManager *)self elementFetcher];
    v5 = [v6 availableElements];
  }

  return v5;
}

- (void)generateMappingForElementFrames
{
  v3 = +[NSMutableDictionary dictionary];
  [(HNDHandManager *)self setBubbleModeFrameToElementMapping:v3];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [(HNDHandManager *)self availableElements];
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        [v9 visibleFrame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        if ([(HNDHandManager *)self isOnDeviceEyeTrackingEnabled])
        {
          if ([(HNDHandManager *)self _shouldUseTwoStageTyping])
          {
            if ([v9 isKeyboardKey])
            {
              v18 = [(HNDHandManager *)self currentlySelectedKeyboardRow];

              if (!v18)
              {
                v19 = [(HNDHandManager *)self keyboardRowContainingKeyboardKey:v9];
                [v19 frame];
                v11 = v20;
                v13 = v21;
                v15 = v22;
                v17 = v23;
              }
            }
          }
        }

        v31.origin.x = v11;
        v31.origin.y = v13;
        v31.size.width = v15;
        v31.size.height = v17;
        if (!CGRectIsEmpty(v31))
        {
          v32.origin.x = v11;
          v32.origin.y = v13;
          v32.size.width = v15;
          v32.size.height = v17;
          if (!CGRectIsInfinite(v32) && CGFloatIsValid() && CGFloatIsValid() && v15 > 0.0 && v17 > 0.0)
          {
            v24 = [NSValue valueWithCGRect:v11, v13, v15, v17];
            v25 = [(HNDHandManager *)self bubbleModeFrameToElementMapping];
            [v25 setObject:v9 forKey:v24];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }
}

- (id)nearestElementFrameForPortraitPoint:(CGPoint)a3 distance:(double *)a4
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(HNDHandManager *)self bubbleModeFrameToElementMapping];
  v7 = [v6 allKeys];

  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v20;
    v12 = 1.79769313e308;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v19 + 1) + 8 * v13);
      [v14 CGRectValue];
      [HNDHandManager distanceBetweenRect:"distanceBetweenRect:andPoint:" andPoint:?];
      v16 = v15;
      if (v15 < v12)
      {
        v17 = v14;

        v10 = v17;
        v12 = v16;
      }

      if (v16 < 0.01)
      {
        break;
      }

      if (v9 == ++v13)
      {
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v10 = 0;
    v12 = 1.79769313e308;
  }

  *a4 = v12;

  return v10;
}

- (id)nearestRockerButtonForDisplayManger:(id)a3 orientedPoint:(CGPoint)a4 distance:(double *)a5
{
  v7 = a3;
  v8 = [v7 rocker];
  v9 = [v8 currentlyVisibleRockerItems];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v23;
    v15 = 1.79769313e308;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v23 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v22 + 1) + 8 * v16);
      [v7 screenBoundsForRockerButton:{v17, v22}];
      [HNDHandManager distanceBetweenRect:"distanceBetweenRect:andPoint:" andPoint:?];
      v19 = v18;
      if (v18 < v15)
      {
        v20 = v17;

        v13 = v20;
        v15 = v19;
      }

      if (v19 < 0.01)
      {
        break;
      }

      if (v12 == ++v16)
      {
        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v13 = 0;
    v15 = 1.79769313e308;
  }

  *a5 = v15;

  return v13;
}

- (double)distanceBetweenRect:(CGRect)a3 andPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  height = a3.size.height;
  width = a3.size.width;
  v8 = a3.origin.y;
  v9 = a3.origin.x;
  v10 = CGRectGetMinX(a3) - a4.x;
  v15.origin.x = v9;
  v15.origin.y = v8;
  v15.size.width = width;
  v15.size.height = height;
  v11 = fmax(fmax(v10, 0.0), x - CGRectGetMaxX(v15));
  v16.origin.x = v9;
  v16.origin.y = v8;
  v16.size.width = width;
  v16.size.height = height;
  v12 = CGRectGetMinY(v16) - y;
  v17.origin.x = v9;
  v17.origin.y = v8;
  v17.size.width = width;
  v17.size.height = height;
  v13 = fmax(fmax(v12, 0.0), y - CGRectGetMaxY(v17));
  return sqrt(v13 * v13 + v11 * v11);
}

- (void)setCurrentBubbleModeFocusedElement:(id)a3
{
  v5 = a3;
  if (self->_currentBubbleModeFocusedElement != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_currentBubbleModeFocusedElement, a3);
    [(HNDHandManager *)self _updateContinuousPathGestureState];
    v5 = v6;
  }
}

- (void)activateCurrentBubbleModeFocusedElement
{
  if ([(HNDHandManager *)self inBubbleMode]&& [(HNDHandManager *)self currentlySnappedInBubbleMode])
  {
    v3 = [(HNDHandManager *)self currentHardwareIdentifierForPointer];
    v4 = +[HNDHandManager sharedManager];
    v5 = [v4 displayManagerForHardwareIdentifier:v3];

    v6 = [(HNDHandManager *)self currentBubbleModeFocusedElement];
    v7 = [(HNDHandManager *)self bubbleModeFocusedRockerItem];
    if (v7)
    {
      v8 = v7;
      v9 = [v5 isMenuVisible];

      if (v9)
      {
        v10 = [(HNDHandManager *)self bubbleModeFocusedRockerItem];
        [v10 performPress:1];

        v11 = [(HNDHandManager *)self bubbleModeFocusedRockerItem];
        [v11 performPress:0];

LABEL_25:
        return;
      }
    }

    if ([(HNDHandManager *)self bubbleModeCurrentlyFocusedOnNubbit])
    {
      [(HNDHandManager *)self showMenu:1 onDisplay:v3];
      goto LABEL_25;
    }

    if (!v6)
    {
      goto LABEL_25;
    }

    if (-[HNDHandManager isOnDeviceEyeTrackingEnabled](self, "isOnDeviceEyeTrackingEnabled") && -[HNDHandManager _shouldUseTwoStageTyping](self, "_shouldUseTwoStageTyping") && [v6 isKeyboardKey])
    {
      v12 = [(HNDHandManager *)self currentlySelectedKeyboardRow];

      if (v12)
      {
        [(HNDHandManager *)self setCurrentlySelectedKeyboardRow:0];
      }

      else
      {
        v13 = [(HNDHandManager *)self keyboardRowContainingKeyboardKey:v6];
        [(HNDHandManager *)self setCurrentlySelectedKeyboardRow:v13];
      }

      v14 = dispatch_get_global_queue(25, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002A47C;
      block[3] = &unk_1001D3488;
      block[4] = self;
      dispatch_async(v14, block);
    }

    v15 = [(HNDHandManager *)self currentBubbleModeFocusedElement];
    if ([(HNDHandManager *)self supportsActivateForBubbleModeElement:v15])
    {
      v16 = [(HNDHandManager *)self currentlySelectedKeyboardRow];

      if (v16)
      {
LABEL_20:
        if (-[HNDHandManager dwellControlEnabled](self, "dwellControlEnabled") && ([v5 isMenuVisible] & 1) == 0 && !-[HNDHandManager inDragMode](self, "inDragMode") && !-[HNDHandManager inContinuousScrollMode](self, "inContinuousScrollMode"))
        {
          [(HNDHandManager *)self _resetDwellModeToDefault];
        }

        goto LABEL_25;
      }

      v15 = [(HNDHandManager *)self currentBubbleModeFocusedElement];
      [v15 performAction:2010];
    }

    goto LABEL_20;
  }
}

- (BOOL)supportsActivateForBubbleModeElement:(id)a3
{
  v3 = a3;
  if ([v3 supportsAction:2010])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 traits];
    v6 = kAXAdjustableTrait;
    v7 = kAXAdjustableTrait & v5;
    if ((kAXIsEditingTrait & ~v5) != 0)
    {
      v11 = 1;
    }

    else if ((kAXWebContentTrait & ~v5) != 0)
    {
      v11 = 0;
    }

    else
    {
      v8 = [v3 application];
      v9 = [v8 uiElement];
      v10 = [v9 BOOLWithAXAttribute:3005];

      v11 = v10 ^ 1;
    }

    v4 = (v7 != v6) & v11;
  }

  return v4;
}

- (BOOL)isSimpleElementForBubbleMode:(id)a3
{
  v3 = a3;
  v4 = [v3 traits];
  v5 = kAXAdjustableTrait;
  v6 = kAXAdjustableTrait & v4;
  v7 = [v3 isAccessibleElement];
  if (v7)
  {
    LOBYTE(v7) = [v3 respondsToUserInteraction];
  }

  if (v6 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((kAXIsEditingTrait & v4) != kAXIsEditingTrait) & v7;
  }

  return v8;
}

- (BOOL)currentlySnappedInBubbleMode
{
  if (![(HNDHandManager *)self inBubbleMode])
  {
    return 0;
  }

  v3 = [(HNDHandManager *)self currentBubbleModeFocusedElement];
  if (v3 || [(HNDHandManager *)self bubbleModeCurrentlyFocusedOnNubbit])
  {
    v4 = 1;
  }

  else
  {
    v6 = [(HNDHandManager *)self bubbleModeFocusedRockerItem];
    v4 = v6 != 0;
  }

  return v4;
}

- (CGRect)clipRect:(CGRect)a3 toRotatedScreenBoundsOnDisplay:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:a4];
  [v8 screenBounds];
  v24.origin.x = v9;
  v24.origin.y = v10;
  v24.size.width = v11;
  v24.size.height = v12;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v22 = CGRectIntersection(v21, v24);
  v13 = v22.origin.x;
  v14 = v22.origin.y;
  v15 = v22.size.width;
  v16 = v22.size.height;
  if (CGRectIsNull(v22))
  {
    v13 = CGRectZero.origin.x;
    v14 = CGRectZero.origin.y;
    v15 = CGRectZero.size.width;
    v16 = CGRectZero.size.height;
  }

  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)needsElementHitTesting
{
  if ([(HNDHandManager *)self inBubbleMode]&& [(HNDHandManager *)self shouldUseBubbleMode])
  {
    return 1;
  }

  if (AXRuntimeCheck_DwellKeyboardKeyTimer())
  {
    v3 = [(HNDHandManager *)self mainDisplayManager];
    if ([v3 keyboardVisible])
    {
      v4 = +[AXSettings sharedInstance];
      [v4 assistiveTouchMouseDwellControlKeyboardKeyActivationTimeout];
      v6 = v5;
      v7 = +[AXSettings sharedInstance];
      [v7 assistiveTouchMouseDwellControlActivationTimeout];
      v9 = v8;

      if (v6 != v9)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  if (!AXRuntimeCheck_DwellKeyboardSwipe())
  {
    return 0;
  }

  v11 = [(HNDHandManager *)self mainDisplayManager];
  if ([v11 keyboardVisible])
  {
    v12 = +[AXSettings sharedInstance];
    v10 = [v12 assistiveTouchDwellKeyboardContinuousPathEnabled];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)eyeTrackingAutoHideAllowed
{
  v2 = [(HNDHandManager *)self deviceManager];
  v3 = [v2 mainDeviceIsMotionTracker];

  return v3;
}

- (BOOL)inContinuousScrollMode
{
  v3 = [(HNDHandManager *)self continuousScrollMode];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(HNDHandManager *)self continuousScrollMode]== 2;
  }

  return v3;
}

- (void)refreshElementFetcherWithScrollingBlocked:(BOOL)a3
{
  v3 = a3;
  v5 = mach_absolute_time();
  [(HNDHandManager *)self lastTimeElementFetcherRefreshed];
  if (AXMachTimeToNanoseconds() / 1000000000.0 > 0.1)
  {
    v6 = [(HNDHandManager *)self elementFetcher];
    [v6 refresh];

    [(HNDHandManager *)self setLastTimeElementFetcherRefreshed:v5];
    if (v3)
    {
      os_unfair_lock_lock(&self->_continuousScrollLock);
      [(HNDHandManager *)self setScrollingBlockedOnElementRefresh:1];

      os_unfair_lock_unlock(&self->_continuousScrollLock);
    }
  }
}

- (void)prepareForEyeTrackerConnected:(BOOL)a3
{
  if (a3)
  {
    [(HNDHandManager *)self enableElementFetcherAndNotificationsIfNecessary];
    v4 = +[AXSettings sharedInstance];
    v5 = [v4 assistiveTouchBubbleModeEnabled];

    [(HNDHandManager *)self enableBubbleMode:v5];
    v6 = +[AXSettings sharedInstance];
    -[HNDHandManager enableEyeTrackingAutoHide:](self, "enableEyeTrackingAutoHide:", [v6 assistiveTouchEyeTrackingAutoHideEnabled]);
  }

  else
  {
    [(HNDHandManager *)self disableElementFetcherIfNecessary];
    [(HNDHandManager *)self enableBubbleMode:[(HNDHandManager *)self shouldUseBubbleMode]];
    [(HNDHandManager *)self enableEyeTrackingAutoHide:0];
  }

  [(HNDHandManager *)self updateAssistiveTouchEyeTrackingAutoHideOpacity];
}

- (void)eyeTrackerIsActivelyTracking:(BOOL)a3
{
  if (!a3)
  {
    if ([(HNDHandManager *)self eyeTrackingAutoHideEnabled])
    {
      v5 = [(HNDHandManager *)self eyeTrackingAutoHideCursorAnimator];

      if (v5)
      {
        v6 = [(HNDHandManager *)self eyeTrackingAutoHideCursorAnimator];
        [v6 stopAnimation:1];

        [(HNDHandManager *)self setEyeTrackingAutoHideCursorAnimator:0];
      }
    }

    [(HNDHandManager *)self cancelDwellTimer];
  }
}

- (void)enableElementFetcherAndNotificationsIfNecessary
{
  v3 = [(HNDHandManager *)self continuousScrollerGenerationQueue];

  if (!v3)
  {
    v4 = dispatch_queue_create("com.apple.AssistiveTouch.HNDHandManager.contScrollerGenerationQueue", 0);
    [(HNDHandManager *)self setContinuousScrollerGenerationQueue:v4];
  }

  [(HNDHandManager *)self setContinuousScrollLock:0];
  v5 = [(HNDHandManager *)self elementFetcher];
  if ([v5 isEnabled])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(HNDHandManager *)self _elementFetchingRequired];
  }

  v7 = +[HNDDeviceManager sharedManager];
  v8 = [v7 mainDeviceIsMotionTracker];

  v9 = v6 & v8;
  if (AXRuntimeCheck_DwellKeyboardKeyTimer())
  {
    if (v9)
    {
      [(HNDHandManager *)self isVirtualTrackpadVisible];
LABEL_17:
      v15 = +[HNDAccessibilityManager sharedManager];
      [v15 addObserver:self];

      v16 = +[HNDAccessibilityManager sharedManager];
      v17 = [(HNDHandManager *)self additionalAXNotificationsToObserve];
      [v16 observeAXNotifications:v17];

      v14 = 1;
      goto LABEL_18;
    }
  }

  else
  {
    v10 = AXRuntimeCheck_DwellKeyboardSwipe();
    if (v9 & 1 | ((v10 & 1) == 0))
    {
      v11 = v10 | v9;
      goto LABEL_12;
    }
  }

  v11 = [(HNDHandManager *)self needsElementHitTesting];
LABEL_12:
  if ([(HNDHandManager *)self isVirtualTrackpadVisible])
  {
    if (v11)
    {
      goto LABEL_17;
    }

    v12 = +[AXSettings sharedInstance];
    v13 = [v12 assistiveTouchBubbleModeEnabled];

    if (v13)
    {
      goto LABEL_17;
    }
  }

  else if (v11)
  {
    goto LABEL_17;
  }

  v14 = 0;
LABEL_18:
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002AC90;
  v18[3] = &unk_1001D3B20;
  v19 = v14;
  v18[4] = self;
  dispatch_async(&_dispatch_main_q, v18);
}

- (void)disableElementFetcherIfNecessary
{
  v3 = +[HNDDeviceManager sharedManager];
  v4 = [v3 mainDeviceIsMotionTracker];

  if (AXRuntimeCheck_DwellKeyboardKeyTimer())
  {
    if (v4)
    {
      goto LABEL_13;
    }

LABEL_12:
    if ([(HNDHandManager *)self needsElementHitTesting])
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  v5 = AXRuntimeCheck_DwellKeyboardSwipe();
  if (!(v4 & 1 | ((v5 & 1) == 0)))
  {
    goto LABEL_12;
  }

  if ((v5 | v4))
  {
LABEL_13:
    v10 = 1;
    goto LABEL_14;
  }

LABEL_6:
  v6 = [(HNDHandManager *)self elementFetcher];
  if (v6)
  {
    v7 = v6;
    v8 = [(HNDHandManager *)self elementFetcher];
    if (![v8 isEnabled])
    {
LABEL_10:

      goto LABEL_11;
    }

    v9 = [(HNDHandManager *)self _elementFetchingRequired];

    if (v9)
    {
      v7 = +[HNDAccessibilityManager sharedManager];
      v8 = [(HNDHandManager *)self additionalAXNotificationsToObserve];
      [v7 stopObservingAXNotifications:v8];
      goto LABEL_10;
    }
  }

LABEL_11:
  v10 = 0;
LABEL_14:
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002AF50;
  v11[3] = &unk_1001D3B20;
  v12 = v10;
  v11[4] = self;
  dispatch_async(&_dispatch_main_q, v11);
}

- (void)prepareForContinuousScrollOnDisplay:(id)a3
{
  v4 = a3;
  [(HNDHandManager *)self showMenu:0 onDisplay:v4];
  v5 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v4];

  v6 = [v5 fingerController];
  v7 = [v6 numberOfFingers];

  if (!v7)
  {
    [(HNDHandManager *)self currentPointForPointer];
    v9 = v8;
    v11 = v10;
    v12 = [v5 fingerController];
    v13 = [AXPIFingerModel fingerModelForLocation:v9, v11];
    v15 = v13;
    v14 = [NSArray arrayWithObjects:&v15 count:1];
    [v12 showFingerModels:v14 animated:1 startPointForAnimation:{v9, v11}];
  }

  [v5 setMultiTouchToolBackgroundEnabled:1];
  [(HNDHandManager *)self pauseBubbleModeForSpecialUsageTool];
  [(HNDHandManager *)self pauseEyeTrackingAutoHideForSpecialUsageTool];
  [(HNDHandManager *)self _systemPointerSettingsDidChange];
  [(HNDHandManager *)self setIsActivelyScrollingContinuously:0];
  os_unfair_lock_lock(&self->_continuousScrollLock);
  [(HNDHandManager *)self setScrollingBlockedOnElementRefresh:0];
  os_unfair_lock_unlock(&self->_continuousScrollLock);
  [(HNDHandManager *)self enableElementFetcherAndNotificationsIfNecessary];
}

- (void)beginContinuousScrollingInDirection:(unint64_t)a3 onDisplay:(id)a4
{
  v6 = a4;
  if (![(HNDHandManager *)self inContinuousScrollMode])
  {
    if (a3 != 1)
    {
      if (a3)
      {
        [(HNDHandManager *)self setContinuousScrollMode:0];
        goto LABEL_7;
      }

      a3 = 2;
    }

    [(HNDHandManager *)self setContinuousScrollMode:a3];
    [(HNDHandManager *)self prepareForContinuousScrollOnDisplay:v6];
    [(HNDHandManager *)self setDwellMode:0];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10002B274;
    v7[3] = &unk_1001D4048;
    v7[4] = self;
    v8 = v6;
    [(HNDHandManager *)self generateContinuousScrollersWithCompletion:v7];
  }

LABEL_7:
}

- (void)processOrientedPointForContinuousScrolling:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = +[NSMutableArray array];
  os_unfair_lock_lock(&self->_continuousScrollLock);
  if ([(HNDHandManager *)self continuousScrollMode]== 1)
  {
    [(HNDHandManager *)self horizontalContinuousScrollers];
  }

  else
  {
    [(HNDHandManager *)self verticalContinuousScrollers];
  }
  v9 = ;
  v10 = [v9 copy];

  v11 = [(HNDHandManager *)self scrollingBlockedOnElementRefresh];
  v62 = self;
  os_unfair_lock_unlock(&self->_continuousScrollLock);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v67 objects:v78 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v68;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v68 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v67 + 1) + 8 * i);
        if ([v17 orientedPointLiesInContinuousScrollerActivationRegion:{x, y}])
        {
          [v8 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v67 objects:v78 count:16];
    }

    while (v14);
  }

  v18 = [v8 count];
  if (((v18 != 0) & v11) == 0)
  {
    if (v18)
    {
      v60 = v7;
      [(HNDHandManager *)v62 setIsActivelyScrollingContinuously:1];
      v19 = [v8 firstObject];
      [v8 removeObject:v19];
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = v8;
      v20 = v8;
      v21 = [v20 countByEnumeratingWithState:&v63 objects:v77 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v64;
        do
        {
          for (j = 0; j != v22; j = j + 1)
          {
            if (*v64 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v63 + 1) + 8 * j);
            v26 = [v25 scrollView];
            v27 = [v19 scrollView];
            v28 = [(HNDHandManager *)v62 _isChildElement:v26 desendantOfElement:v27];

            if (v28)
            {
              v29 = v25;

              v19 = v29;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v63 objects:v77 count:16];
        }

        while (v22);
      }

      v30 = AXLogCommon();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [v19 targetElement];
        v32 = [v31 label];
        v33 = [v19 targetElement];
        [v33 frame];
        v34 = NSStringFromCGRect(v79);
        v35 = [v19 scrollDirectionToActivationFrame];
        *buf = 138412802;
        v72 = v32;
        v73 = 2112;
        v74 = v34;
        v75 = 2112;
        v76 = v35;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Attempting to scroll targetElement with label: %@, element frames: %@, activation frames: %@", buf, 0x20u);
      }

      v36 = [v19 directionForOrientedPoint:{x, y}];
      v37 = [v36 intValue];
      v38 = [v19 scrollingSpeedFactorForOrientedPoint:{x, y}];
      [v38 floatValue];
      v40 = v39;

      [(HNDHandManager *)v62 continuousScrollCurrentSpeedFactor];
      v42 = v41;
      v43 = [(HNDHandManager *)v62 currentContinuousScrollDirection];
      v7 = v60;
      if (v43)
      {
        v44 = [(HNDHandManager *)v62 currentContinuousScrollDirection];
        v45 = [v44 intValue] != v37;
      }

      else
      {
        v45 = 1;
      }

      v50 = v40 * 1000.0;

      v51 = [(HNDHandManager *)v62 activeContinuousScroller];
      v52 = [v19 isEqual:v51];

      v53 = v52 ^ 1 | v45;
      if ((v53 & 1) != 0 || vabdd_f64(v42, v40) < 0.1)
      {
        v8 = v61;
        if ((v53 & 1) == 0)
        {
LABEL_41:

          goto LABEL_42;
        }

        v55 = [(HNDHandManager *)v62 continuousScrollPickedElement];
        v56 = [v55 isAutoscrolling];

        if (v56)
        {
          v57 = [(HNDHandManager *)v62 continuousScrollPickedElement];
          [v57 pauseAutoscrolling];
        }

        [(HNDHandManager *)v62 setContinuousScrollCurrentSpeedFactor:v40];
        v58 = [NSNumber numberWithUnsignedLong:v37];
        [(HNDHandManager *)v62 setCurrentContinuousScrollDirection:v58];

        v59 = [v19 targetElement];
        [(HNDHandManager *)v62 setContinuousScrollPickedElement:v59];

        [(HNDHandManager *)v62 setActiveContinuousScroller:v19];
        [(HNDHandManager *)v62 _iterateRemoteViewsAndPerformContinuousScrollWithSpeed:v37 direction:v50];
      }

      else
      {
        [(HNDHandManager *)v62 setContinuousScrollCurrentSpeedFactor:v40];
        v54 = [(HNDHandManager *)v62 continuousScrollPickedElement];
        [v54 setAutoscrollSpeed:v50];
      }

      v8 = v61;
      goto LABEL_41;
    }

    v46 = [(HNDHandManager *)v62 isActivelyScrollingContinuously];
    [(HNDHandManager *)v62 setCurrentContinuousScrollDirection:0];
    [(HNDHandManager *)v62 setIsActivelyScrollingContinuously:0];
    if (v46)
    {
      v47 = [(HNDHandManager *)v62 continuousScrollPickedElement];
      v48 = [v47 isAutoscrolling];

      if (v48)
      {
        v49 = [(HNDHandManager *)v62 continuousScrollPickedElement];
        [v49 pauseAutoscrolling];
      }

      [(HNDHandManager *)v62 generateContinuousScrollersWithCompletion:0];
    }
  }

LABEL_42:
}

- (BOOL)_iterateRemoteViewsAndPerformContinuousScrollWithSpeed:(double)a3 direction:(unint64_t)a4
{
  v7 = [(HNDHandManager *)self continuousScrollPickedElement];
  [v7 setAutoscrollSpeed:a3];
  [v7 setAutoscrollTarget:v7];
  if ([v7 autoscrollInDirection:a4])
  {
    v8 = 1;
  }

  else
  {
    while (1)
    {
      v9 = [v7 uiElement];
      v10 = [v9 BOOLWithAXAttribute:2093];

      if (!v10)
      {
        break;
      }

      v11 = [v7 uiElement];
      v12 = [v11 objectWithAXAttribute:2310];

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v14 = v12;
      if (isKindOfClass)
      {
        v14 = [v12 axElement];
      }

      v15 = [AXElement elementWithAXUIElement:v14];
      v16 = [v15 isEqual:v7];
      if (!v15 || v16)
      {

        break;
      }

      [v15 setAutoscrollSpeed:a3];
      [v15 setAutoscrollTarget:v15];
      v7 = v15;
      if ([v15 autoscrollInDirection:a4])
      {
        v8 = 1;
        v7 = v15;
        goto LABEL_14;
      }
    }

    v17 = AXLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = [v7 label];
      v20 = 134218498;
      v21 = a3;
      v22 = 2048;
      v23 = a4;
      v24 = 2112;
      v25 = v19;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to autoscroll with speed: %f, direction: %lu, pickedElement label: %@", &v20, 0x20u);
    }

    v8 = 0;
  }

LABEL_14:
  [(HNDHandManager *)self setContinuousScrollPickedElement:v7];

  return v8;
}

- (id)_scrollViewForScrollAction:(int)a3 elementsToScroll:(id *)a4
{
  v7 = +[NSMutableOrderedSet orderedSet];
  v8 = +[NSMutableArray array];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10002BDE4;
  v35[3] = &unk_1001D4070;
  v38 = a3;
  v9 = v7;
  v36 = v9;
  v10 = v8;
  v37 = v10;
  v11 = objc_retainBlock(v35);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = [(HNDHandManager *)self elementFetcher];
  v13 = [v12 availableElements];

  v14 = [v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v32;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v13);
        }

        (v11[2])(v11, *(*(&v31 + 1) + 8 * i));
      }

      v15 = [v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v15);
  }

  v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = v9;
  v20 = [v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [AXElement elementWithAXUIElement:*(*(&v27 + 1) + 8 * j), v27];
        [v18 addObject:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v21);
  }

  if (a4)
  {
    v25 = v10;
    *a4 = v10;
  }

  return v18;
}

- (BOOL)_isChildElement:(id)a3 desendantOfElement:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    do
    {
      v8 = [v7 isEqual:a4];
      if (v8)
      {
        break;
      }

      v9 = [v7 elementParent];

      v7 = v9;
    }

    while (v9);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)endContinuousScrollingOnDisplay:(id)a3 withCompletion:(BOOL)a4
{
  v4 = a4;
  v13 = a3;
  if ([(HNDHandManager *)self inContinuousScrollMode])
  {
    if ([(AXElement *)self->_continuousScrollPickedElement isAutoscrolling])
    {
      [(AXElement *)self->_continuousScrollPickedElement pauseAutoscrolling];
    }

    continuousScrollMode = self->_continuousScrollMode;
    self->_continuousScrollMode = 0;
    [(HNDHandManager *)self _systemPointerSettingsDidChange];
    v7 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v13];
    [v7 setMultiTouchToolBackgroundEnabled:0];
    [(HNDHandManager *)self currentPointForPointer];
    [v7 updateWithPrimaryFingerPoint:?];
    continuousScrollPickedElement = self->_continuousScrollPickedElement;
    self->_continuousScrollPickedElement = 0;

    activeContinuousScroller = self->_activeContinuousScroller;
    self->_activeContinuousScroller = 0;

    os_unfair_lock_lock(&self->_continuousScrollLock);
    horizontalContinuousScrollers = self->_horizontalContinuousScrollers;
    self->_horizontalContinuousScrollers = &__NSArray0__struct;

    verticalContinuousScrollers = self->_verticalContinuousScrollers;
    self->_verticalContinuousScrollers = &__NSArray0__struct;

    self->_scrollingBlockedOnElementRefresh = 0;
    os_unfair_lock_unlock(&self->_continuousScrollLock);
    currentContinuousScrollDirection = self->_currentContinuousScrollDirection;
    self->_currentContinuousScrollDirection = 0;

    self->_isActivelyScrollingContinuously = 0;
    [(HNDHandManager *)self setDwellMode:1];
    [(HNDHandManager *)self _resetDwellDueToFingersReset];
    if ([(HNDHandManager *)self _shouldRepeatGesture]&& v4)
    {
      [(HNDHandManager *)self beginContinuousScrollingInDirection:continuousScrollMode == 1 onDisplay:v13];
    }

    else
    {
      [(HNDHandManager *)self resumeBubbleModeForSpecialUsageToolIfNecessary];
      [(HNDHandManager *)self resumeEyeTrackingAutoHideForSpecialUsageToolIfNecessary];
    }
  }
}

- (void)_handlePinchFingerDownWithFinger:(id)a3 onDisplay:(id)a4
{
  v6 = a3;
  v9 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:a4];
  [v9 performPress:2 type:1];
  v7 = [v9 fingerController];
  [v7 pressFingersDownAnimated:1];

  self->_pinchState = 1;
  realSelectedPinchFinger = self->_realSelectedPinchFinger;
  self->_realSelectedPinchFinger = v6;
}

- (void)_handleRealPinchToolDown:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v7];
  v10 = [v8 fingerController];

  [v10 hndConvertPointToFingerContainerView:{x, y}];
  v9 = [v10 fingerModelAtPoint:?];
  if (v9)
  {
    [(HNDHandManager *)self _handlePinchFingerDownWithFinger:v9 onDisplay:v7];
  }

  else
  {
    [(HNDHandManager *)self _handleRealPinchToolMove:v7 onDisplay:x, y];

    [v10 enumerateFingersUsingBlock:&stru_1001D40B0];
  }
}

- (void)resetPinchFingersOnDisplay:(id)a3
{
  v4 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:a3];
  v5 = [v4 fingerController];
  v6 = [v5 fingerModels];
  v7 = [v6 count];

  if (v7 != 2)
  {
    _AXAssert();
  }

  if (!self->_resettingPinch)
  {
    if ([(HNDHandManager *)self canShowASTMousePointer])
    {
      [(HNDHandManager *)self setCaptureEvents:0];
    }

    self->_resettingPinch = 1;
    v8 = v4;
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (id)mainWindow
{
  v2 = [(HNDHandManager *)self mainDisplayManager];
  v3 = [v2 window];

  return v3;
}

- (void)_handleRealPinchToolUp:(CGPoint)a3 onDisplay:(id)a4
{
  v8 = a4;
  v5 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:?];
  v6 = [v5 fingerController];

  if (self->_pinchState)
  {
    [(HNDHandManager *)self resetPinchFingersOnDisplay:v8];
    realSelectedPinchFinger = self->_realSelectedPinchFinger;
    self->_realSelectedPinchFinger = 0;
  }

  else
  {
    [v6 enumerateFingersUsingBlock:&stru_1001D40D0];
  }

  [v6 liftFingersUpAnimated:1];
  self->_pinchState = 0;
}

- (void)_handleRealPinchToolMove:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v7];
  v9 = [v8 fingerController];

  if (self->_pinchState)
  {
    [v9 hndConvertPointToFingerContainerView:{x, y}];
    [(HNDHandManager *)self _modifyPinchToolMoveToPoint:v7 onDisplay:?];
  }

  else
  {
    [v9 hndCentroidForPinchChainMidPoint:{x, y}];
    [(HNDHandManager *)self _moveFingersToPointInFingerCoordinateSpace:v7 onDisplay:0 allowOutOfBounds:1 animated:0 completion:?];
  }
}

- (void)_handleRealMultiFingerMove:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v7];
  v9 = [v8 fingerController];

  [v9 hndStandardCentroidForMultifingers:{x, y}];
  [(HNDHandManager *)self moveFingersToPointInFingerCoordinateSpace:v7 onDisplay:0 allowOutOfBounds:?];
}

- (void)_handleRealMultiFingerDown:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v14 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v7];
  self->_inMultiFingerGesture = 1;
  v8 = [v14 fingerController];
  [v8 hndStandardCentroidForMultifingers:{x, y}];
  v10 = v9;
  v12 = v11;

  [(HNDHandManager *)self _moveFingersToPointInFingerCoordinateSpace:v7 onDisplay:0 allowOutOfBounds:1 animated:0 completion:v10, v12];
  [v14 performPress:2 type:1];
  v13 = [v14 fingerController];
  [v13 pressFingersDownAnimated:1];
}

- (void)_handleRealMultiFingerUp:(CGPoint)a3 onDisplay:(id)a4
{
  self->_inMultiFingerGesture = 0;
  v5 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:a4, a3.x, a3.y];
  v4 = [v5 fingerController];
  [v4 liftFingersUpAnimated:1];
}

- (void)_moveFingersForRealEventToPoint:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13 = a4;
  v7 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v13];
  v8 = [v7 fingerController];
  [v8 hndAbsoluteCentroidForMultifingers:{x, y}];
  v10 = v9;
  v12 = v11;

  [(HNDHandManager *)self _moveFingersToPointInFingerCoordinateSpace:v13 onDisplay:0 allowOutOfBounds:1 animated:0 completion:v10, v12];
}

- (void)_handleRealCustomGestureMove:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13 = a4;
  v7 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v13];
  v8 = [v7 fingerController];
  [v8 hndAbsoluteCentroidForMultifingers:{x, y}];
  v10 = v9;
  v12 = v11;

  [(HNDHandManager *)self moveFingersToPointInFingerCoordinateSpace:v13 onDisplay:1 allowOutOfBounds:v10, v12];
}

- (void)_handleRealCustomGestureUp:(CGPoint)a3 onDisplay:(id)a4
{
  v5 = a4;
  if (![(HNDHandManager *)self isPerformingGesture])
  {
    if (self->_inCustomGestureMovement)
    {
      [(HNDHandManager *)self _performCustomGestureOnDisplay:v5];
    }

    self->_inCustomGestureMovement = 0;
  }
}

- (BOOL)_shouldEnableMultiTouchToolBackground
{
  v2 = [(HNDHandManager *)self deviceManager];
  if ([v2 deviceCount])
  {
    v3 = 0;
  }

  else
  {
    v3 = _AXSAssistiveTouchScannerEnabled() == 0;
  }

  return v3;
}

- (void)_handleMultiTouchToolEvent:(id)a3
{
  v4 = a3;
  v19 = [(HNDHandManager *)self currentDisplayManager];
  if (([v19 fingerContentViewIsActive] & 1) == 0)
  {
    [v19 setFingerContentViewIsActive:1];
  }

  v5 = [v4 handInfo];
  v6 = [v5 paths];
  v7 = [v6 firstPath];
  [v7 pathLocation];
  v9 = v8;
  v11 = v10;

  v12 = [v4 handInfo];

  v13 = [v12 eventType];
  if (v13 > 7)
  {
    if ((v13 - 8) > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_9;
  }

  switch(v13)
  {
    case 1:
      if (!self->_resettingPinch)
      {
        if ([(HNDHandManager *)self inPinchMode])
        {
          v15 = [v19 hardwareIdentifier];
          [(HNDHandManager *)self _handleRealPinchToolDown:v15 onDisplay:v9, v11];
        }

        else if ([(HNDHandManager *)self inCustomGesture])
        {
          v15 = [v19 hardwareIdentifier];
          [(HNDHandManager *)self _handleRealCustomGestureDown:v15 onDisplay:v9, v11];
        }

        else if ([(HNDHandManager *)self inDragMode])
        {
          v15 = [v19 hardwareIdentifier];
          [(HNDHandManager *)self _handleRealDragToolMove:v15 onDisplay:v9, v11];
        }

        else
        {
          v18 = [(HNDHandManager *)self inContinuousScrollMode];
          v15 = [v19 hardwareIdentifier];
          if (v18)
          {
            [(HNDHandManager *)self _handleRealContinuousScrollToolMove:v15 onDisplay:v9, v11];
          }

          else
          {
            [(HNDHandManager *)self _handleRealMultiFingerDown:v15 onDisplay:v9, v11];
          }
        }

        self->_isFingerDown = 1;
      }

      break;
    case 2:
      if ([(HNDHandManager *)self inPinchMode])
      {
        v16 = [v19 hardwareIdentifier];
        [(HNDHandManager *)self _handleRealPinchToolMove:v16 onDisplay:v9, v11];
      }

      else if ([(HNDHandManager *)self inCustomGesture])
      {
        v16 = [v19 hardwareIdentifier];
        [(HNDHandManager *)self _handleRealCustomGestureMove:v16 onDisplay:v9, v11];
      }

      else if ([(HNDHandManager *)self inDragMode])
      {
        v16 = [v19 hardwareIdentifier];
        [(HNDHandManager *)self _handleRealDragToolMove:v16 onDisplay:v9, v11];
      }

      else if ([(HNDHandManager *)self inContinuousScrollMode])
      {
        v16 = [v19 hardwareIdentifier];
        [(HNDHandManager *)self _handleRealContinuousScrollToolMove:v16 onDisplay:v9, v11];
      }

      else
      {
        if ([(HNDHandManager *)self inCustomGesture])
        {
          break;
        }

        v16 = [v19 hardwareIdentifier];
        [(HNDHandManager *)self _handleRealMultiFingerMove:v16 onDisplay:v9, v11];
      }

      break;
    case 6:
LABEL_9:
      if ([(HNDHandManager *)self inPinchMode])
      {
        v14 = [v19 hardwareIdentifier];
        [(HNDHandManager *)self _handleRealPinchToolUp:v14 onDisplay:v9, v11];
      }

      else if ([(HNDHandManager *)self inCustomGesture])
      {
        v14 = [v19 hardwareIdentifier];
        [(HNDHandManager *)self _handleRealCustomGestureUp:v14 onDisplay:v9, v11];
      }

      else if ([(HNDHandManager *)self inDragMode])
      {
        v14 = [v19 hardwareIdentifier];
        [(HNDHandManager *)self _handleRealDragToolUp:v14 onDisplay:v9, v11];
      }

      else
      {
        v17 = [(HNDHandManager *)self inContinuousScrollMode];
        v14 = [v19 hardwareIdentifier];
        if (v17)
        {
          [(HNDHandManager *)self _handleRealContinuousScrollToolUp:v14 onDisplay:v9, v11];
        }

        else
        {
          [(HNDHandManager *)self _handleRealMultiFingerUp:v14 onDisplay:v9, v11];
        }
      }

      self->_isFingerDown = 0;
      break;
    default:
      break;
  }

LABEL_41:
}

- (BOOL)_shouldHandleRealEventWithMultiTouchTool
{
  if ([(HNDHandManager *)self inCustomGesture]|| [(HNDHandManager *)self inPinchMode]|| [(HNDHandManager *)self inDragMode])
  {
    return 1;
  }

  v5 = [(HNDHandManager *)self currentDisplayManager];
  v6 = [v5 fingerController];
  v3 = [v6 numberOfFingers] > 1;

  return v3;
}

- (void)pauseBubbleModeForSpecialUsageTool
{
  if ([(HNDHandManager *)self inBubbleMode])
  {

    [(HNDHandManager *)self enableBubbleMode:0];
  }
}

- (void)resumeBubbleModeForSpecialUsageToolIfNecessary
{
  if ([(HNDHandManager *)self shouldUseBubbleMode])
  {
    v3 = [(HNDHandManager *)self shouldUseBubbleMode];

    [(HNDHandManager *)self enableBubbleMode:v3];
  }
}

- (void)pauseEyeTrackingAutoHideForSpecialUsageTool
{
  if ([(HNDHandManager *)self eyeTrackingAutoHideEnabled])
  {

    [(HNDHandManager *)self enableEyeTrackingAutoHide:0];
  }
}

- (void)resumeEyeTrackingAutoHideForSpecialUsageToolIfNecessary
{
  if ([(HNDHandManager *)self shouldUseEyeTrackingAutoHide])
  {
    v3 = [(HNDHandManager *)self shouldUseEyeTrackingAutoHide];

    [(HNDHandManager *)self enableEyeTrackingAutoHide:v3];
  }
}

- (void)specialToolUsageEnded:(BOOL)a3
{
  v3 = a3;
  currentCustomGesture = self->_currentCustomGesture;
  self->_currentCustomGesture = 0;

  if (currentCustomGesture)
  {
    preparedScrollAction = self->_preparedScrollAction;
    v7 = (preparedScrollAction - 2006) >= 4;
    v8 = preparedScrollAction & 0xFFFFFFFE;
    v10 = !v7 || v8 == 2030;
    self->_wasExistingGestureEndedScrollAction = v10;
  }

  self->_preparedScrollAction = 0;
  [(HNDHandManager *)self resumeBubbleModeForSpecialUsageToolIfNecessary];
  [(HNDHandManager *)self resumeEyeTrackingAutoHideForSpecialUsageToolIfNecessary];
  self->_isPerformingDragPressEvent = 0;
  if ([(HNDHandManager *)self inDragMode])
  {
    v11 = [(HNDHandManager *)self currentHardwareIdentifierForPointer];
    [(HNDHandManager *)self endDragModeAtPoint:v11 onDisplay:0 completed:self->_dragStartPoint.x, self->_dragStartPoint.y];
  }

  if ([(HNDHandManager *)self inContinuousScrollMode])
  {
    v12 = [(HNDHandManager *)self currentHardwareIdentifierForPointer];
    [(HNDHandManager *)self endContinuousScrollingOnDisplay:v12 withCompletion:0];
  }

  if ([(HNDHandManager *)self inPinchMode])
  {
    [(HNDHandManager *)self currentPointForPointer];
    v14 = v13;
    v16 = v15;
    v17 = [(HNDHandManager *)self currentHardwareIdentifierForPointer];
    [(HNDHandManager *)self moveSystemPointerIfActiveToPoint:v17 onDisplay:v14, v16];
  }

  self->_pinchState = 0;
  self->_inCustomGestureMovement = 0;
  self->_inMultiFingerGesture = 0;
  v18 = AXLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Special tool usage ended", buf, 2u);
  }

  [(HNDHandManager *)self _systemPointerSettingsDidChange];
  if (v3 && (currentCustomGesture || [(HNDHandManager *)self dwellControlPaused]))
  {
    v19 = [(HNDHandManager *)self dwellControlPaused];
    v20 = AXAssistiveTouchIconTypeDwellPause;
    if (!v19)
    {
      v20 = 0;
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10002D36C;
    v22[3] = &unk_1001D36C0;
    v23 = v20;
    v21 = v23;
    [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v22];
  }
}

- (BOOL)usingSpecialTool
{
  if ([(HNDHandManager *)self inPinchMode]|| self->_inMultiFingerGesture || self->_inCustomGestureMovement || [(HNDHandManager *)self inDragMode])
  {
    return 1;
  }

  return [(HNDHandManager *)self inContinuousScrollMode];
}

- (void)handleRealEvent:(id)a3
{
  v4 = a3;
  if ([v4 type] == 3200)
  {
    v5 = sub_100042C64();
  }

  else
  {
    v5 = 0;
  }

  v6 = +[SCATScannerManager sharedManager];
  v7 = [v6 isControllingOtherDevice];

  if ((v7 & 1) == 0 && (v5 & 1) == 0)
  {
    [(HNDHandManager *)self notifyUserEventOccurred];
  }

  v8 = [(HNDHandManager *)self eventHandlers];
  if ([v4 type] == 3001 && (objc_msgSend(v4, "isDisplayIntegrated") & 1) == 0)
  {
    v9 = [v4 handInfo];
    v10 = [v9 paths];
    if ([v10 count] != 1)
    {

      if (!v5)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v11 = [v4 handInfo];
    v12 = [v11 paths];
    v13 = [v12 objectAtIndexedSubscript:0];
    v14 = [v13 transducerType];

    if (!v14)
    {
      goto LABEL_31;
    }
  }

  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_12:
  v15 = [(HNDHandManager *)self systemPointerController];
  v16 = [v15 handleEventRepresentationForMovement:v4];

  if (v16)
  {
    goto LABEL_31;
  }

LABEL_15:
  if (([v4 isSystemDrag] & 1) == 0)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = v8;
    v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      while (2)
      {
        v21 = 0;
        do
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v17);
          }

          if ([*(*(&v28 + 1) + 8 * v21) handledEvent:{v4, v28}])
          {

            goto LABEL_31;
          }

          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v22 = [v4 handInfo];
    v23 = [v22 eventType];

    v24 = [(HNDHandManager *)self usingSpecialTool];
    if (v23 == 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = [(HNDHandManager *)self currentDisplayManager];
    if ([v26 handleRealEvent:v4])
    {

      if (!v25)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v27 = [(HNDHandManager *)self _shouldHandleRealEventWithMultiTouchTool];

      if (((v27 | v25) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (![(HNDHandManager *)self isVirtualTrackpadVisible])
    {
      [(HNDHandManager *)self _handleMultiTouchToolEvent:v4];
    }
  }

LABEL_31:
}

- (void)substantialTransitionOccurred
{
  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:&stru_1001D4150];
  if (!self->_isFingerDown)
  {
    self->_shouldSkipElementFetchForAXScroll = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10002D778;
    v4[3] = &unk_1001D4178;
    v4[4] = self;
    v4[5] = a2;
    [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v4];
  }
}

- (BOOL)inRockerMode
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002DAD4;
  v4[3] = &unk_1001D3DB8;
  v4[4] = &v5;
  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)inPinchMode
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002DBDC;
  v4[3] = &unk_1001D3DB8;
  v4[4] = &v5;
  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)orientationChanged
{
  v3 = [(HNDHandManager *)self orientationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002DCE4;
  block[3] = &unk_1001D3488;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)orientationChanged:(int64_t)a3
{
  v5 = ASTLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    orientation = self->_orientation;
    v8[0] = 67109376;
    v8[1] = orientation;
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Orientation changed via SpringBoard action handler: old %d new %ld", v8, 0x12u);
  }

  if ((a3 - 1) < 4)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  self->_orientation = v7;
  [(HNDHandManager *)self _startOrientationUpdateTimer];
}

- (void)_startOrientationUpdateTimer
{
  orientationUpdateTimer = self->_orientationUpdateTimer;
  if (!orientationUpdateTimer)
  {
    v4 = [objc_allocWithZone(AXDispatchTimer) initWithTargetSerialQueue:&_dispatch_main_q];
    v5 = self->_orientationUpdateTimer;
    self->_orientationUpdateTimer = v4;

    orientationUpdateTimer = self->_orientationUpdateTimer;
  }

  [(AXDispatchTimer *)orientationUpdateTimer cancel];
  if (_AXSAssistiveTouchScannerEnabled())
  {
    v6 = 0.05;
  }

  else
  {
    v7 = [(HNDHandManager *)self mainDisplayManager];
    if ([v7 isMenuVisible])
    {
      v6 = 0.05;
    }

    else
    {
      v6 = 0.28;
    }
  }

  v8 = self->_orientationUpdateTimer;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002DFF0;
  v9[3] = &unk_1001D3488;
  v9[4] = self;
  [(AXDispatchTimer *)v8 afterDelay:v9 processBlock:v6];
}

- (void)mediaControlsChanged:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002E0D0;
  v3[3] = &unk_1001D41B8;
  v4 = a3;
  v3[4] = a2;
  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v3];
}

- (void)_attemptToShowVisualsAfterPerformingScreenshot
{
  v4 = ASTLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    visualsHiddenForScreenshotCount = self->_visualsHiddenForScreenshotCount;
    *buf = 134217984;
    v10 = visualsHiddenForScreenshotCount;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempt to show visuals after performing screenshot. Hidden count: %lu", buf, 0xCu);
  }

  v6 = self->_visualsHiddenForScreenshotCount;
  if (v6)
  {
    v7 = v6 - 1;
    self->_visualsHiddenForScreenshotCount = v7;
    if (!v7)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10002E264;
      v8[3] = &unk_1001D41D8;
      v8[4] = a2;
      [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v8];
    }
  }
}

- (void)_handleScreenshotDidFireCallbackTimeout
{
  if (self->_visualsHiddenForScreenshotCount)
  {
    v3 = ASTLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = 0x400C000000000000;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Took longer than %f seconds to show visuals again after taking screenshot. Showing them now.", &v4, 0xCu);
    }

    [(HNDHandManager *)self _attemptToShowVisualsAfterPerformingScreenshot];
  }
}

- (void)screenshotWillFire
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002E554;
  v5[3] = &unk_1001D4200;
  v5[4] = &v6;
  v5[5] = a2;
  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v5];
  if (*(v7 + 24) == 1)
  {
    ++self->_visualsHiddenForScreenshotCount;
    v3 = ASTLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      visualsHiddenForScreenshotCount = self->_visualsHiddenForScreenshotCount;
      *buf = 134217984;
      v11 = visualsHiddenForScreenshotCount;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Did hide visuals for screenshot. Count: %lu", buf, 0xCu);
    }

    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_handleScreenshotDidFireCallbackTimeout" object:0];
    [(HNDHandManager *)self performSelector:"_handleScreenshotDidFireCallbackTimeout" withObject:0 afterDelay:3.5];
  }

  _Block_object_dispose(&v6, 8);
}

- (void)screenshotDidFire
{
  v2 = ASTLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Screenshot did fire.", buf, 2u);
  }

  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)mediaPlaybackChanged
{
  v4 = +[AXSystemAppServer server];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002E7C8;
  v5[3] = &unk_1001D4250;
  v5[4] = self;
  v5[5] = a2;
  [v4 isMediaPlayingForApp:0 completionHandler:v5];
}

- (void)_modifyPinchToolMoveToPoint:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v66 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v7];
  v8 = [v66 fingerController];
  v9 = [v8 fingerModels];
  v10 = [v9 count];

  if (v10 != 2)
  {
    _AXAssert();
  }

  v11 = [v8 fingerModels];
  v12 = [v11 objectAtIndexedSubscript:0];

  v13 = [v8 fingerModels];
  v14 = [v13 objectAtIndexedSubscript:1];

  [(AXPIFingerModel *)v12 location];
  v16 = v15;
  v18 = v17;
  [v14 location];
  v20 = v19;
  v22 = v21;
  pinchMode = self->_pinchMode;
  if (pinchMode)
  {
    if (pinchMode == 1)
    {
      realSelectedPinchFinger = self->_realSelectedPinchFinger;
      if (!realSelectedPinchFinger)
      {
        realSelectedPinchFinger = v12;
      }

      v33 = realSelectedPinchFinger;
      [(AXPIFingerModel *)v33 location];
      v35 = y - v34;

      v36 = -v35;
      if (v33 == v12)
      {
        v36 = v35;
      }

      v16 = v16 - v36;
      v18 = v18 + v36;
      v20 = v20 + v36;
      v22 = v22 - v36;
    }

    else if (pinchMode == 2)
    {
      v24 = self->_realSelectedPinchFinger;
      if (!v24)
      {
        v24 = v12;
      }

      v25 = v24;
      [(AXPIFingerModel *)v25 location];
      v27 = x - v26;
      [(AXPIFingerModel *)v25 location];
      v29 = y - v28;

      v30 = -v27;
      v31 = -v29;
      if (v25 == v12)
      {
        v31 = v29;
        v30 = v27;
      }

      v16 = v16 + v30;
      v18 = v18 + v31;
      v20 = v20 - v30;
      v22 = v22 - v31;
    }

    goto LABEL_31;
  }

  [v8 midpointForFingers];
  v38 = v37;
  v40 = v39;
  if (sub_100042C64())
  {
    v41 = [(HNDHandManager *)self deviceManager];
    v42 = [v41 mainDeviceIsPointer];

    if (v42)
    {
      v43 = self->_pinchRotatePreviousPoint.x;
      v44 = self->_pinchRotatePreviousPoint.y;
      if (v43 == -1.0 && v44 == -1.0)
      {
        v45 = CGPointZero.y;
      }

      else
      {
        v46 = y - v44;
        v64 = v46;
        if (x - v43 != 0.0 && v46 != 0.0)
        {
          goto LABEL_24;
        }

        [v66 screenBounds];
        v45 = -2.0;
        if (y > 2.0)
        {
          v45 = 2.0;
          if (y < v63 + -2.0)
          {
            goto LABEL_24;
          }
        }
      }

      v64 = v45;
LABEL_24:
      self->_pinchRotatePreviousPoint.x = x;
      self->_pinchRotatePreviousPoint.y = y;
      [v66 screenPoint];
      y = v65 + v47;
    }
  }

  v48 = atan(y - v18) / -40.0;
  v49 = self->_realSelectedPinchFinger;
  if (v49 != v12 && v49 != 0)
  {
    v48 = -v48;
  }

  v51 = v16 - v38;
  v52 = v18 - v40;
  v53 = __sincos_stret(v48);
  v16 = v38 + v53.__cosval * (v16 - v38) - v53.__sinval * v52;
  v18 = v40 + v52 * v53.__cosval + v53.__sinval * v51;
  v54 = v20 - v38;
  v20 = v38 + v53.__cosval * (v20 - v38) - v53.__sinval * (v22 - v40);
  v22 = v40 + (v22 - v40) * v53.__cosval + v53.__sinval * v54;
LABEL_31:
  AX_CGPointGetDistanceToPoint();
  v56 = v55;
  [(HNDHandManager *)self _fingerRadiusOnDisplay:v7];
  v58 = v57;

  if (v56 + v58 * -2.0 > 0.0)
  {
    [v8 beginUpdates];
    v59 = [v8 fingerContainerView];
    [v59 bounds];
    v68.x = v16;
    v68.y = v18;
    v60 = CGRectContainsPoint(v70, v68);

    if (v60)
    {
      [(AXPIFingerModel *)v12 setLocation:v16, v18];
    }

    v61 = [v8 fingerContainerView];
    [v61 bounds];
    v69.x = v20;
    v69.y = v22;
    v62 = CGRectContainsPoint(v71, v69);

    if (v62)
    {
      [v14 setLocation:{v20, v22}];
    }

    [v8 endUpdates];
    [(AXPIFingerModel *)v12 location];
    [v66 updateWithPrimaryFingerPoint:?];
  }
}

- (void)addEventHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 conformsToProtocol:&OBJC_PROTOCOL___AXEventHandler] & 1) != 0)
  {
    [(HNDHandManager *)self eventHandlers];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v19 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if (*(*(&v16 + 1) + 8 * i) == v5)
          {

            _AXLogWithFacility();
            goto LABEL_23;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    if (!v6)
    {
      v6 = +[NSPointerArray weakObjectsPointerArray];
      [(HNDHandManager *)self setEventHandlers:v6];
    }

    if ([v6 count] && (v11 = objc_msgSend(v6, "count")) != 0)
    {
      v12 = v11;
      v13 = 0;
      while (1)
      {
        v14 = [v6 pointerAtIndex:v13];
        v15 = [v14 priority];
        if (v15 > [v5 priority])
        {
          break;
        }

        if (v12 == ++v13)
        {
          goto LABEL_18;
        }
      }

      [v6 insertPointer:v5 atIndex:v13];
    }

    else
    {
LABEL_18:
      [v6 addPointer:v5];
    }

    if ([v6 count])
    {
      [(HNDHandManager *)self setCaptureEvents:1];
    }

LABEL_23:
  }

  else
  {
    _AXLogWithFacility();
  }
}

- (void)removeEventHandler:(id)a3
{
  v9 = a3;
  if (v9)
  {
    v4 = [(HNDHandManager *)self eventHandlers];
    v5 = [v4 count];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      while (1)
      {
        v8 = [v4 pointerAtIndex:v7];
        if (v8 == v9)
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_9;
        }
      }

      [v4 removePointerAtIndex:v7];
    }

LABEL_9:
    if (![v4 count])
    {
      [(HNDHandManager *)self setCaptureEvents:0];
    }
  }

  else
  {
    _AXLogWithFacility();
  }
}

- (void)updateAllSettings
{
  v5 = +[AXSettings sharedInstance];
  [v5 assistiveTouchSpeed];
  [(HNDHandManager *)self setTouchSpeed:?];
  -[HNDHandManager setOpenMenuWithSwaggle:](self, "setOpenMenuWithSwaggle:", [v5 assistiveTouchOpenMenuSwaggleEnabled]);
  v3 = [v5 assistiveTouchCustomGestures];
  [(HNDHandManager *)self setCustomGestures:v3];

  [(HNDHandManager *)self updateMenuVisibility];
  [(HNDHandManager *)self updatePointerAppearance];
  v4 = [(HNDHandManager *)self deviceManager];
  [v4 setDetectDevices:1];
}

- (void)updateMenuVisibility
{
  if (_AXSAssistiveTouchHardwareEnabled())
  {
    v3 = 0;
  }

  else
  {
    v4 = [(HNDHandManager *)self deviceManager];
    v5 = [v4 mainDeviceIsPointer];

    v3 = v5 ^ 1;
  }

  v6 = +[AXSettings sharedInstance];
  v7 = [v6 assistiveTouchInternalOnlyHiddenNubbitModeEnabled];
  if ((v7 & 1) == 0 && (v3 & 1) == 0)
  {
    v8 = +[AXSettings sharedInstance];
    v7 = [v8 assistiveTouchAlwaysShowMenuEnabled] ^ 1;
  }

  v9 = [(HNDHandManager *)self deviceManager];
  if ([v9 hidDeviceIsConfiguring])
  {
  }

  else
  {
    v10 = [(HNDHandManager *)self deviceManager];
    v11 = [v10 hidDeviceSentReservedStatus];

    if (!v11)
    {
      goto LABEL_13;
    }
  }

  v12 = ASTLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Forcing menu to be hidden because HID device is configuring", v14, 2u);
  }

  v7 = 1;
LABEL_13:
  v13 = ASTLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14[0] = 67109120;
    v14[1] = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Updating menu visibility: %d", v14, 8u);
  }

  [(HNDHandManager *)self setAlwaysShowMenu:v7 ^ 1];
  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:&stru_1001D4270];
}

- (void)updateSoftwareKeyboardState
{
  v3 = [(HNDHandManager *)self deviceManager];
  v4 = [v3 deviceDetector];
  v5 = [v4 attachedKeyboards];

  if (!v5)
  {
    [(AXUISoftwareKeyboardManager *)self->_softwareKeyboardManager removeReasonToEnableSoftwareKeyboard:@"AST HandManager"];
    goto LABEL_5;
  }

  v6 = +[AXSettings sharedInstance];
  v7 = [v6 assistiveTouchMouseAlwaysShowSoftwareKeyboardEnabled];

  softwareKeyboardManager = self->_softwareKeyboardManager;
  if (v7)
  {
    [(AXUISoftwareKeyboardManager *)softwareKeyboardManager addReasonToEnableSoftwareKeyboard:@"AST HandManager"];
LABEL_5:
    v9 = self->_softwareKeyboardManager;

    [(AXUISoftwareKeyboardManager *)v9 removeReasonToDisableSoftwareKeyboard:@"AST HandManager"];
    return;
  }

  [(AXUISoftwareKeyboardManager *)softwareKeyboardManager removeReasonToEnableSoftwareKeyboard:@"AST HandManager"];
  v10 = self->_softwareKeyboardManager;

  [(AXUISoftwareKeyboardManager *)v10 addReasonToDisableSoftwareKeyboard:@"AST HandManager"];
}

- (BOOL)nubbitVisible
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002F514;
  v4[3] = &unk_1001D3DB8;
  v4[4] = &v5;
  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)updatePointerAppearance
{
  [(HNDMousePointerAppearance *)self->_mousePointerAppearance sizeMultiplier];
  v4 = v3;
  v5 = +[AXSettings sharedInstance];
  [v5 assistiveTouchMousePointerSizeMultiplier];
  v7 = vabdd_f64(v4, v6);

  if (v7 >= 2.22044605e-16)
  {
    v8 = +[AXSettings sharedInstance];
    [v8 assistiveTouchMousePointerSizeMultiplier];
    [(HNDMousePointerAppearance *)self->_mousePointerAppearance setSizeMultiplier:?];
  }

  v9 = [(HNDMousePointerAppearance *)self->_mousePointerAppearance cursorColor];
  v10 = +[AXSettings sharedInstance];
  v11 = [v10 assistiveTouchMousePointerColor];

  if (v9 == v11)
  {
    if (v7 < 2.22044605e-16)
    {
      return;
    }
  }

  else
  {
    v12 = +[AXSettings sharedInstance];
    -[HNDMousePointerAppearance setCursorColor:](self->_mousePointerAppearance, "setCursorColor:", [v12 assistiveTouchMousePointerColor]);
  }

  [(HNDHandManager *)self reloadFingerAppearance];
}

- (double)touchSpeedMultiplier
{
  touchSpeed = self->_touchSpeed;
  if (touchSpeed > 0.5)
  {
    return (touchSpeed + -0.5) * 5.0 + 1.0;
  }

  result = 1.0;
  if (touchSpeed < 0.5)
  {
    return fmax(touchSpeed + touchSpeed, 0.1);
  }

  return result;
}

- (BOOL)isPerformingGesture
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002F810;
  v4[3] = &unk_1001D3DB8;
  v4[4] = &v5;
  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isPerformingMultiStepGesture
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002F944;
  v4[3] = &unk_1001D3DB8;
  v4[4] = &v5;
  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)performPreparedGestureOnDisplay:(id)a3
{
  if (self->_currentCustomGesture)
  {
    [(HNDHandManager *)self _performCustomGestureOnDisplay:a3];
  }
}

- (id)_shiftGestureIfNeeded:(id)a3 onDisplay:(id)a4 toMidpoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  if ([v9 shouldPerformAtOriginalLocation])
  {
    v11 = v9;
  }

  else
  {
    v12 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v10];
    v13 = [v12 fingerController];
    [v13 midpointOfStartingFingersForGesture:v9];
    v15 = v14;
    v17 = v16;

    v11 = [v9 gestureShiftedByOffset:{x - v15, y - v17}];
  }

  v18 = v11;

  return v18;
}

- (void)_performCustomGestureOnDisplay:(id)a3
{
  v4 = a3;
  if (![(HNDHandManager *)self inCustomGesture])
  {
    _AXAssert();
  }

  if (self->_currentCustomGesture || (_AXAssert(), self->_currentCustomGesture))
  {
    [(HNDHandManager *)self pauseBubbleModeForSpecialUsageTool];
    [(HNDHandManager *)self pauseEyeTrackingAutoHideForSpecialUsageTool];
    v5 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v4];
    [(HNDHandManager *)self currentPointForPointer];
    v7 = v6;
    v9 = v8;
    v10 = [(HNDHandManager *)self _shiftGestureIfNeeded:self->_currentCustomGesture onDisplay:v4 toMidpoint:?];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10002FD78;
    v25[3] = &unk_1001D42B8;
    v11 = v5;
    v26 = v11;
    v12 = v10;
    v30 = v7;
    v31 = v9;
    v27 = v12;
    v28 = self;
    v13 = v4;
    v29 = v13;
    v14 = objc_retainBlock(v25);
    if ((self->_preparedScrollAction - 2006) <= 0x19 && ((1 << (LOBYTE(self->_preparedScrollAction) + 42)) & 0x300000F) != 0 && [v12 numberOfEvents] && (objc_msgSend(v12, "fingerIdentifiersAtEventIndex:", 0), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count"), v15, v16) && (-[HNDHandManager currentDisplayManager](self, "currentDisplayManager"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "pointForFingerIdentifier:atEventIndex:", &off_1001E50D0, 0), objc_msgSend(v17, "convertPointToPortraitUpOrientation:"), v19 = v18, v21 = v20, v17, -[HNDHandManager _performAXScrollActionAtPoint:onDisplay:action:](self, "_performAXScrollActionAtPoint:onDisplay:action:", v13, self->_preparedScrollAction, v19, v21)))
    {
      (v14[2])(v14);
    }

    else
    {
      v22 = [v11 fingerController];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10002FE1C;
      v23[3] = &unk_1001D3CD0;
      v24 = v14;
      [v22 performGesture:v12 completion:v23];
    }
  }
}

- (BOOL)_shouldRepeatGesture
{
  if (-[HNDHandManager isVirtualTrackpadVisible](self, "isVirtualTrackpadVisible") || (-[HNDHandManager deviceManager](self, "deviceManager"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 mainDeviceIsPointer], v3, !v4))
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [(HNDHandManager *)self dwellControlEnabled];
    if (v5)
    {
      if ([(HNDHandManager *)self dwellControlAutorevertEnabled])
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        LOBYTE(v5) = ![(HNDHandManager *)self dwellControlPaused];
      }
    }
  }

  return v5;
}

- (BOOL)isCapturingRealEvents
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002FF6C;
  v4[3] = &unk_1001D3DB8;
  v4[4] = &v5;
  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)prepareGesture:(id)a3 onDisplay:(id)a4
{
  v25 = a3;
  v7 = a4;
  [(HNDHandManager *)self showMenu:0 onDisplay:v7];
  v8 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v7];
  [v8 setMultiTouchToolBackgroundEnabled:1];
  [v8 setFingerContentViewIsActive:1];
  if (self->_currentCustomGesture != v25)
  {
    objc_storeStrong(&self->_currentCustomGesture, a3);
    v9 = v25;
    [(HNDHandManager *)self currentPointForPointer];
    v11 = v10;
    v13 = v12;
    if ([(HNDHandManager *)self shouldHideSystemPointerForFingersView]|| ![(HNDHandManager *)self _isWaitingForFirstSystemPointerMovement])
    {
      x = CGPointZero.x;
      y = CGPointZero.y;
      if (v11 != CGPointZero.x || v13 != y)
      {
        v17 = [(HNDHandManager *)self _shiftGestureIfNeeded:v9 onDisplay:v7 toMidpoint:v11, v13];

        x = v11;
        y = v13;
        v9 = v17;
      }
    }

    else
    {
      x = CGPointZero.x;
      y = CGPointZero.y;
    }

    v18 = [v8 fingerController];
    [v18 showStartingFingersForGesture:v9 animated:1 startPointForAnimation:{x, y}];

    v19 = [v8 fingerController];
    v20 = [v19 fingerModels];
    v21 = [v20 count];

    if (v21)
    {
      v22 = [v8 fingerController];
      v23 = [v22 fingerModels];
      v24 = [v23 objectAtIndexedSubscript:0];
      [v24 location];
      [v8 updateWithPrimaryFingerPoint:?];
    }

    [(HNDHandManager *)self pauseBubbleModeForSpecialUsageTool];
    [(HNDHandManager *)self pauseEyeTrackingAutoHideForSpecialUsageTool];
    [(HNDHandManager *)self _systemPointerSettingsDidChange];
  }

  [(HNDHandManager *)self setDwellMode:1];
}

- (void)_resetMenuOpenTracker
{
  xmmword_1002189C0 = CGPointZero;
  qword_100215558 = 0xC1E6CEAF20000000;
  qword_1002189D0 = 0;
}

- (void)setCaptureEvents:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    if ([(HNDHandManager *)self isVirtualTrackpadVisible])
    {

      [(HNDHandManager *)self pauseBubbleModeForSpecialUsageTool];
      return;
    }

    v8 = [(HNDHandManager *)self eventManager];
    v9 = [v8 isCapturingEvents];

    if (v9)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v5 = [(HNDHandManager *)self eventManager];
  if (![v5 isCapturingEvents])
  {
LABEL_12:

    goto LABEL_13;
  }

  v6 = [(HNDHandManager *)self eventHandlers];
  v7 = [v6 count];

  if (!v7)
  {
LABEL_10:
    if (![(HNDHandManager *)self dwellControlEnabled])
    {
      v5 = [(HNDHandManager *)self eventManager];
      [v5 setCaptureEvents:v3];
      goto LABEL_12;
    }
  }

LABEL_13:
  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:&stru_1001D42D8];
  if (sub_100042C64() && _AXSAssistiveTouchEnabled() && !UIAccessibilityIsSwitchControlRunning() && ![(HNDHandManager *)self canShowASTMousePointer])
  {
    v10 = [(HNDHandManager *)self systemPointerController];
    [v10 hideSystemPointer:{-[HNDHandManager shouldHideSystemPointerForFingersView](self, "shouldHideSystemPointerForFingersView")}];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003042C;
    v11[3] = &unk_1001D4300;
    v12 = v3;
    v11[4] = self;
    [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v11];
  }
}

- (void)setNubbitMoving:(BOOL)a3
{
  v3 = a3;
  v4 = [(HNDHandManager *)self eventManager];
  [v4 setNubbitMoving:v3];
}

- (BOOL)nubbitMoving
{
  v2 = [(HNDHandManager *)self eventManager];
  v3 = [v2 nubbitMoving];

  return v3;
}

- (void)_menuOpenTracker:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(HNDHandManager *)self openMenuWithSwaggle])
  {
    return;
  }

  v6 = *&qword_100215558;
  if (*&qword_100215558 != -3061152000.0)
  {
    v6 = CFAbsoluteTimeGetCurrent() - *&qword_100215558;
    if (v6 > 5.0)
    {
      goto LABEL_9;
    }
  }

  v7 = [(HNDHandManager *)self currentDisplayManager];
  [v7 screenBounds];
  v11 = sub_1000429B0(1, x, y, v8, v9, v10);
  v13 = v12;

  if (*&xmmword_1002189C0 == CGPointZero.x && *(&xmmword_1002189C0 + 1) == CGPointZero.y)
  {
    *&xmmword_1002189C0 = v11;
    *(&xmmword_1002189C0 + 1) = v13;
    return;
  }

  if (vabdd_f64(*(&xmmword_1002189C0 + 1), v13) > 2.0)
  {
LABEL_9:

    [(HNDHandManager *)self _resetMenuOpenTracker];
    return;
  }

  v15 = *&xmmword_1002189C0 - v11;
  v16 = qword_1002189D0;
  if (!qword_1002189D0 && fabs(v15) > 2.0)
  {
LABEL_16:
    qword_100215558 = CFAbsoluteTimeGetCurrent();
    v16 = qword_1002189D0;
LABEL_22:
    qword_1002189D0 = ++v16;
    xmmword_1002189C0 = CGPointZero;
    byte_1002189D8 = v15 < 0.0;
    goto LABEL_23;
  }

  if (byte_1002189D8)
  {
    v17 = v15 <= 2.0;
  }

  else
  {
    v17 = v15 >= -2.0;
  }

  if (!v17)
  {
    if (qword_1002189D0)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

LABEL_23:
  if (v16 == 3)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100030820;
    v18[3] = &unk_1001D36C0;
    v18[4] = self;
    [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v18];
    [(HNDHandManager *)self _resetMenuOpenTracker];
    qword_1002189D0 = 0;
  }
}

+ (double)displayCornerRadius
{
  v2 = +[UIScreen mainScreen];
  v3 = [v2 traitCollection];
  [v3 displayCornerRadius];
  v5 = v4;

  if (v5 == _UITraitCollectionDisplayCornerRadiusUnspecified)
  {
    v6 = ASTLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Had unspecified display corner radius.", v8, 2u);
    }

    return 0.0;
  }

  return v5;
}

+ (CGPoint)_pointByAvoidingDisplayCornerRadius:(double)a3 forPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  if (a3 <= 0.0)
  {
    v7 = ASTLogMouse();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100128B64();
    }
  }

  v8 = qword_1002189E0;
  if (qword_1002189E0)
  {
    v9 = *&qword_1002189E8 == a3;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = [UIBezierPath bezierPathWithRoundedRect:[HNDHandManager screenFrame:]_0() cornerRadius:?];
    v11 = qword_1002189E0;
    qword_1002189E0 = v10;

    qword_1002189E8 = *&a3;
    v8 = qword_1002189E0;
  }

  if (([v8 containsPoint:{x, y}] & 1) == 0)
  {
    [HNDHandManager screenFrame:]_0();
    AX_CGRectGetCenter();
    v13 = v12;
    v15 = v14;
    v16 = [HNDHandManager screenFrame:]_0();
    if (x <= v13)
    {
      v20 = CGRectGetMinX(*&v16) + a3;
    }

    else
    {
      v20 = CGRectGetMaxX(*&v16) - a3;
    }

    v39 = v20;
    v21 = [HNDHandManager screenFrame:]_0();
    if (y <= v15)
    {
      v25 = CGRectGetMinY(*&v21) + a3;
    }

    else
    {
      v25 = CGRectGetMaxY(*&v21) - a3;
    }

    v26 = atan2(y - v25, x - v39);
    v27 = +[UIScreen mainScreen];
    [v27 scale];
    v29 = v28;

    if (v29 <= 0.0)
    {
      v30 = ASTLogCommon();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        sub_100128B98();
      }
    }

    v37 = x;
    v38 = y;
    v31 = sqrt((x - v39) * (x - v39) + (y - v25) * (y - v25));
    if (v29 >= 2.22044605e-16)
    {
      v32 = 1.0 / v29;
    }

    else
    {
      v32 = 1.0;
    }

    __sincos_stret(v26);
    while (1)
    {
      v31 = v31 - v32;
      if (v31 <= 0.0)
      {
        break;
      }

      UIPointRoundToScale();
      x = v33;
      y = v34;
      if ([qword_1002189E0 containsPoint:?])
      {
        goto LABEL_29;
      }
    }

    x = v37;
    y = v38;
  }

LABEL_29:
  v35 = x;
  v36 = y;
  result.y = v36;
  result.x = v35;
  return result;
}

- (void)setupWindow:(id)a3 ignoredWindow:(id)a4 trackpadWindow:(id)a5
{
  v8 = a3;
  v9 = a4;
  v25 = a5;
  block = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_100030DF4;
  v30 = &unk_1001D3488;
  v31 = self;
  if (qword_1002189F0 != -1)
  {
    dispatch_once(&qword_1002189F0, &block);
  }

  systemPointerController = self->_systemPointerController;
  v11 = [v8 screen];
  v12 = [v11 displayConfiguration];
  v13 = [v12 hardwareIdentifier];
  v14 = [v8 screen];
  v15 = [v14 displayIdentity];
  -[HNDSystemPointerController requestGlobalMouseEventsForDisplay:displayID:targetContextID:](systemPointerController, "requestGlobalMouseEventsForDisplay:displayID:targetContextID:", v13, [v15 displayID], objc_msgSend(v8, "_contextId"));

  v16 = v9;
  v17 = [[HNDDisplayManager alloc] initWithWindow:v8 ignoredWindow:v9 trackpadWindow:v26];
  [(NSMutableArray *)self->_displayManagers addObject:v17];
  [(HNDDisplayManager *)v17 setAlwaysShowMenu:[(HNDHandManager *)self alwaysShowMenu]];
  [(HNDDisplayManager *)v17 setHandManager:self];
  v18 = [v8 screen];
  v19 = [v18 displayConfiguration];
  v20 = [v19 hardwareIdentifier];
  [(HNDDisplayManager *)v17 setHardwareIdentifier:v20];

  v21 = [v8 screen];
  v22 = +[UIScreen mainScreen];

  if (v21 == v22)
  {
    [(HNDDisplayManager *)v17 setIsMainDisplay:1];
    orientation = self->_orientation;
  }

  else
  {
    orientation = 1;
  }

  [(HNDDisplayManager *)v17 setOrientation:orientation withCompletion:0];
  v24 = [(HNDDisplayManager *)v17 fingerController];
  [v24 setAppearanceDelegate:self];

  [(HNDDisplayManager *)v17 updateAutoHideMousePointer];
  [(HNDHandManager *)self restartEverything];
}

- (void)sceneDidConnect:(id)a3
{
  if (+[HNDAccessibilityManager accessibilityEnabled])
  {
    v5 = +[HNDAccessibilityManager sharedManager];
    v3 = +[HNDHandManager sharedManager];
    v4 = [v3 displayManagers];
    [v5 displaysDidChange:v4];
  }
}

- (void)sceneDidDisconnect:(id)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100031044;
  v16 = sub_100031054;
  v17 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003105C;
  v8[3] = &unk_1001D4328;
  v4 = a3;
  v10 = self;
  v11 = &v12;
  v9 = v4;
  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v8];
  [(NSMutableArray *)self->_displayManagers removeObject:v13[5]];
  if (+[HNDAccessibilityManager accessibilityEnabled])
  {
    v5 = +[HNDAccessibilityManager sharedManager];
    v6 = +[HNDHandManager sharedManager];
    v7 = [v6 displayManagers];
    [v5 displaysDidChange:v7];
  }

  _Block_object_dispose(&v12, 8);
}

- (void)moveFingerByDelta:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (a3.x != CGPointZero.x || a3.y != CGPointZero.y)
  {
    v18 = [(HNDHandManager *)self currentDisplayManager];
    [v18 normalizedPointForDifference:{x, y}];
    v8 = v7;
    v10 = v9;
    [v18 screenBounds];
    v14 = sub_1000429B0(0, v8, v10, v11, v12, v13);
    v16 = v15;
    v17 = [v18 hardwareIdentifier];
    [(HNDHandManager *)self moveFingerToPoint:v17 onDisplay:v14, v16];
  }
}

- (void)moveFingerToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(HNDHandManager *)self currentHardwareIdentifierForPointer];
  [(HNDHandManager *)self moveFingerToPoint:v6 onDisplay:x, y];
}

- (void)moveFingerToPoint:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(HNDHandManager *)self inPinchMode])
  {
    primaryButtonDown = self->_primaryButtonDown;
  }

  else
  {
    primaryButtonDown = 0;
  }

  v9 = primaryButtonDown;
  [(HNDHandManager *)self displayManagerForHardwareIdentifier:v7];
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_1000319F0;
  v10 = v76[3] = &unk_1001D4350;
  v77 = v10;
  v78 = self;
  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v76];
  [objc_opt_class() displayCornerRadius];
  if (v11 > 0.0)
  {
    v12 = v11;
    v13 = [(HNDHandManager *)self currentDisplayManager];
    v14 = [v13 isMainDisplay];

    if (v14)
    {
      [v10 convertPointToPortraitUpOrientation:{x, y}];
      v16 = v15;
      v18 = v17;
      [v10 portraitUpScreenBounds];
      v20 = fmax(fmin(v16, v19), 0.0);
      v22 = fmax(fmin(v18, v21), 0.0);
      v23 = [(HNDHandManager *)self currentDisplayManager];
      [v23 convertPointToInterfaceOrientation:{v20, v22}];
      v25 = v24;
      v27 = v26;

      [objc_opt_class() _pointByAvoidingDisplayCornerRadius:v12 forPoint:{v25, v27}];
      x = v28;
      y = v29;
    }
  }

  [v10 screenBounds];
  v33 = sub_1000429A4(x, y, v30, v31, v32);
  v35 = v34;
  [v10 convertToNormalizedInterfaceOrientation:{x, y}];
  v37 = v36;
  v39 = v38;
  [v10 convertPointToPortraitUpOrientation:{x, y}];
  [(HNDHandManager *)self processPortraitUpPointForElementHitTesting:v7 onDisplay:?];
  [v10 screenPoint];
  if (vabdd_f64(x, v40) >= 0.001)
  {
    v42 = 1;
  }

  else
  {
    [v10 screenPoint];
    v42 = vabdd_f64(y, v41) >= 0.001;
  }

  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_100031A9C;
  v73[3] = &unk_1001D4378;
  v73[4] = self;
  v74 = v9;
  v75 = v42;
  v43 = objc_retainBlock(v73);
  if ([(HNDHandManager *)self isPerformingGesture])
  {
    (v43[2])(v43);
    goto LABEL_59;
  }

  if ([(HNDHandManager *)self currentlySnappedInBubbleMode])
  {
    v44 = [(HNDHandManager *)self isVirtualTrackpadVisible];
  }

  else
  {
    v44 = 1;
  }

  Current = CFAbsoluteTimeGetCurrent();
  [v10 point];
  v48 = v47 != -1.0 || v46 != -1.0;
  v49 = [v10 hoverMovedToNormalizedPoint:v9 ^ 1u shouldUpdateCurrentPoint:{v33, v35}];
  if (v49 && CFAbsoluteTimeGetCurrent() - *&qword_100215560 > 4.0)
  {
    v50 = [(HNDHandManager *)self eventManager];
    [v50 wakeDeviceFromSleepIfNecessary];

    qword_100215560 = *&Current;
  }

  if (!self->_primaryButtonDown)
  {
    [(HNDHandManager *)self _menuOpenTracker:v33, v35];
  }

  if (v9)
  {
    [(HNDHandManager *)self _modifyPinchToolMoveToPoint:v7 onDisplay:x, y];
    goto LABEL_41;
  }

  if ([(HNDHandManager *)self inDragMode]&& self->_isDragNubbitMode)
  {
    [(HNDHandManager *)self moveFingersToPointInFingerCoordinateSpace:v7 onDisplay:1 allowOutOfBounds:x, y];
    if (sub_100042C64())
    {
      v51 = 0.15;
    }

    else
    {
      v51 = 0.0;
    }

    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_100031AF0;
    v69[3] = &unk_1001D3AF8;
    v70 = v10;
    v71 = x;
    v72 = y;
    [UIView animateWithDuration:v69 animations:v51];
    v52 = v70;
    goto LABEL_40;
  }

  if ([(HNDHandManager *)self inContinuousScrollMode])
  {
    [(HNDHandManager *)self moveFingersToPointInFingerCoordinateSpace:v7 onDisplay:1 allowOutOfBounds:x, y];
    [(HNDHandManager *)self processOrientedPointForContinuousScrolling:v7 onDisplay:x, y];
    goto LABEL_41;
  }

  if (![(HNDHandManager *)self currentlySnappedInBubbleMode]|| (self->_continuousPathGestureState - 1 < 2) | v44 & 1)
  {
    v53 = [(HNDHandManager *)self _shouldLockIntoHotCornerAtNormalizedPoint:v7 onDisplay:v37, v39];
    if ([(HNDHandManager *)self _shouldLockIntoNubbitAtPoint:x, y])
    {
      if (self->_hoverNubbitLocked)
      {
        goto LABEL_41;
      }

      self->_hoverNubbitLocked = 1;
      [v10 rockerFrame];
      AX_CGRectGetCenter();
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_100031B00;
      v65[3] = &unk_1001D43A0;
      v65[4] = self;
      v67 = v54;
      v68 = v55;
      v66 = v7;
      [UIView animateWithDuration:v65 animations:0.15];
      v52 = v66;
LABEL_40:

      goto LABEL_41;
    }

    if (self->_hoverNubbitLocked)
    {
      self->_hoverNubbitLocked = 0;
      v57 = _NSConcreteStackBlock;
      v58 = 3221225472;
      v59 = sub_100031B14;
      v60 = &unk_1001D43A0;
      v61 = self;
      v63 = x;
      v64 = y;
      v62 = v7;
      [UIView animateWithDuration:&v57 animations:0.15];
      v52 = v62;
      goto LABEL_40;
    }

    if (v53)
    {
      if (!self->_hotCornerLocked)
      {
        [(HNDHandManager *)self _lockIntoHotCornerForOrientedNormalizedPoint:v7 onDisplay:1 cancelDwell:v37, v39];
      }
    }

    else
    {
      if (self->_hotCornerLocked)
      {
        self->_hotCornerLocked = 0;
        [(HNDHandManager *)self cancelDwellTimer];
      }

      [(HNDHandManager *)self moveFingersToPointInFingerCoordinateSpace:v7 onDisplay:1 allowOutOfBounds:x, y];
    }
  }

LABEL_41:
  -[HNDHandManager _updateZoomWithDisplayPoint:onDisplay:](self, "_updateZoomWithDisplayPoint:onDisplay:", [v10 displayID], x, y);
  if ([(HNDHandManager *)self dwellControlEnabled]&& [(HNDHandManager *)self _isInNubbitHitbox:v7 onDisplay:x, y])
  {
    v56 = [v10 rocker];
    [v56 highlightNubbit];

    [(HNDHandManager *)self _highlightFingers];
  }

  else
  {
    [(HNDHandManager *)self _fadeFingersAfterDelayIfNeeded];
  }

  if (-[HNDHandManager isVirtualTrackpadVisible](self, "isVirtualTrackpadVisible") && -[HNDHandManager inBubbleMode](self, "inBubbleMode") && ([v10 fingerContentViewIsActive] & 1) == 0)
  {
    [v10 setFingerContentViewIsActive:1];
  }

  if (!self->_primaryButtonDown)
  {
    if (Current - *&qword_100215568 > 1.0)
    {
      [(HNDHandManager *)self _resetMenuOpenTracker];
    }

    qword_100215568 = *&Current;
  }

  if (v49)
  {
    [(HNDHandManager *)self _updateEyeTrackingAutoHideIfNecessary];
  }

  else if ((v9 & v48) != 1)
  {
    goto LABEL_57;
  }

  (v43[2])(v43);
LABEL_57:
  if ((v49 | v9))
  {
    [(HNDHandManager *)self notifyUserEventOccurred];
  }

LABEL_59:
}

- (void)_lockIntoHotCornerForOrientedNormalizedPoint:(CGPoint)a3 onDisplay:(id)a4 cancelDwell:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  x = a3.x;
  v9 = a4;
  self->_hotCornerLocked = 1;
  if (v5)
  {
    [(HNDHandManager *)self cancelDwellTimer];
  }

  [(HNDHandManager *)self _highlightFingers];
  [(HNDHandManager *)self _pointForLockedCorner:[(HNDHandManager *)self _hotCornerForNormalizedPoint:v9 onDisplay:x onDisplay:y], v9];
  [(HNDHandManager *)self moveFingersToPointInFingerCoordinateSpace:v9 onDisplay:1 allowOutOfBounds:?];
}

- (BOOL)_shouldLockIntoNubbitAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(HNDHandManager *)self currentHardwareIdentifierForPointer];
  if ([(HNDHandManager *)self _isInNubbitHitbox:v6 onDisplay:x, y])
  {
    v7 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v6];
    if ([v7 isMenuVisible])
    {
      v8 = 0;
    }

    else
    {
      v9 = [(HNDHandManager *)self deviceManager];
      v8 = [v9 mainDeviceIsMotionTracker];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGRect)_paddedHitboxForNubbitOnDisplay:(id)a3 activationFactor:(double)a4
{
  v4 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:a3, a4];
  v5 = [v4 rocker];
  [v5 alpha];
  v7 = fabs(v6);

  if (v7 >= 0.001)
  {
    [v4 rockerFrame];
    v17 = CGRectInset(v16, v16.size.width * -0.18, v16.size.height * -0.18);
    x = v17.origin.x;
    y = v17.origin.y;
    width = v17.size.width;
    height = v17.size.height;
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)_isInNubbitHitbox:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(HNDHandManager *)self _defaultNubbitHitboxActivationFactor];
  [(HNDHandManager *)self _paddedHitboxForNubbitOnDisplay:v7 activationFactor:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v24.origin.x = v9;
  v24.origin.y = v11;
  v24.size.width = v13;
  v24.size.height = v15;
  if (CGRectIsNull(v24))
  {
    return 0;
  }

  v17 = v9;
  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = x;
  v22 = y;

  return CGRectContainsPoint(*&v17, *&v21);
}

- (BOOL)_isInNubbitHitbox:(CGPoint)a3 onDisplay:(id)a4 activationFactor:(double)a5
{
  y = a3.y;
  x = a3.x;
  [(HNDHandManager *)self _paddedHitboxForNubbitOnDisplay:a4 activationFactor:a5];
  v7 = v19.origin.x;
  v8 = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  if (CGRectIsNull(v19))
  {
    return 0;
  }

  v12 = v7;
  v13 = v8;
  v14 = width;
  v15 = height;
  v16 = x;
  v17 = y;

  return CGRectContainsPoint(*&v12, *&v16);
}

- (void)_updateZoomWithDisplayPoint:(CGPoint)a3 onDisplay:(unsigned int)a4
{
  v4 = *&a4;
  y = a3.y;
  x = a3.x;
  if (_AXSZoomTouchEnabled())
  {
    v7 = +[ZoomServices sharedInstance];
    [v7 zoomLevelOnDisplay:v4];
    v9 = fabs(v8 + -1.0);

    if (v9 >= 2.22044605e-16 && (sub_100042C64() & 1) == 0)
    {
      v10 = +[AXSettings sharedInstance];
      v11 = [v10 assistiveTouchMouseZoomPanningStyle];

      v12 = +[ZoomServices sharedInstance];
      [v12 autoPanZoomUsingLocation:v11 withPanningStyle:v4 onDisplay:{x, y}];
    }
  }
}

- (void)_showFingersIfNeededForMouseOnDisplay:(id)a3
{
  v6 = a3;
  v4 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:?];
  v5 = [v4 fingerController];

  if (-[HNDHandManager mouseBehavesLikeFinger](self, "mouseBehavesLikeFinger") && ![v5 numberOfFingers])
  {
    [(HNDHandManager *)self resetFingersIfNeededOnDisplay:v6];
  }
}

- (BOOL)_continuousPathGestureHandlePress
{
  continuousPathGestureState = self->_continuousPathGestureState;
  if (continuousPathGestureState)
  {
    if (continuousPathGestureState == 1)
    {
      self->_continuousPathGestureState = 2;
      if (AXRuntimeCheck_DwellKeyboardSwipeContinuous())
      {
        [(HNDHandManager *)self _handleAction:AXAssistiveTouchIconTypeDwellClick type:4 state:2];
      }

      else
      {
        [(HNDHandManager *)self _updateContinuousSlideGesture];
      }
    }

    else if (continuousPathGestureState == 2)
    {
      if (AXRuntimeCheck_DwellKeyboardSwipeContinuous())
      {
        [(HNDHandManager *)self _handleAction:AXAssistiveTouchIconTypeDwellClick type:4 state:3];
        self->_continuousPathGestureState = 0;
        [(HNDHandManager *)self _updateContinuousPathGestureState];
      }

      else
      {
        v4 = [(HNDHandManager *)self currentBubbleModeFocusedElement];
        if ([v4 hasAllTraits:kAXAutoCorrectCandidateTrait])
        {
          [v4 simulateTapWithFingerIndex:2];
          AXPerformBlockOnMainThreadAfterDelay();
        }

        else if ([v4 isKeyboardKey] && (objc_msgSend(v4, "axIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"space"), v5, !v6))
        {
          [(HNDHandManager *)self _updateContinuousSlideGesture];
        }

        else
        {
          [(HNDHandManager *)self _endContinuousSlideGesture];
        }
      }
    }
  }

  return continuousPathGestureState != 0;
}

- (void)_updateContinuousSlideGesture
{
  v3 = [(HNDHandManager *)self currentDisplayManager];
  v4 = [v3 keyboardSlideFingerController];
  [(HNDHandManager *)self currentPointForPointer];
  v6 = v5;
  v8 = v7;
  [(HNDHandManager *)self lastSelectedKeyboardSlidePoint];
  if (v10 != -1.0 || v9 != -1.0)
  {
    v12 = [(HNDHandManager *)self hasPerformedFirstKeyboardSlideMovement];
    [(HNDHandManager *)self lastSelectedKeyboardSlidePoint];
    v14 = v13;
    v16 = v15;
    AX_CGPointGetDistanceToPoint();
    v18 = v17 / 2400.0;
    v46.x = v14;
    v46.y = v16;
    v19 = NSStringFromCGPoint(v46);
    v47.x = v6;
    v47.y = v8;
    v20 = NSStringFromCGPoint(v47);
    v21 = [NSArray arrayWithObjects:v19, v20, 0];
    v22 = [AXNamedReplayableGesture lineGestureBetweenPoints:v21 duration:1 numberOfFingers:v18];

    if (v12)
    {
      [v4 continueWithGesture:v22];
    }

    else
    {
      v38 = [(HNDHandManager *)self keyboardSlideStartElement];
      v39 = [(HNDHandManager *)self currentBubbleModeFocusedElement];
      v40 = [v38 isEqual:v39];

      if (v40)
      {
LABEL_18:

        goto LABEL_19;
      }

      [v4 startGesture:v22];
      [(HNDHandManager *)self setHasPerformedFirstKeyboardSlideMovement:1];
    }

    [(HNDHandManager *)self setLastSelectedKeyboardSlidePoint:v6, v8];
    goto LABEL_18;
  }

  v23 = [v3 fingerController];
  v24 = [v23 fingerContainerView];
  [v24 bounds];
  v29 = [AXPIFingerUtilities defaultLocationsForNumberOfFingers:1 aroundPoint:v6 withinBounds:v8, v25, v26, v27, v28];

  v30 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v29 count]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v31 = v29;
  v32 = [v31 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v42;
    do
    {
      v35 = 0;
      do
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = CGPointFromString(*(*(&v41 + 1) + 8 * v35));
        v37 = [AXPIFingerModel fingerModelForLocation:v36.x, v36.y];
        [v30 addObject:v37];

        v35 = v35 + 1;
      }

      while (v33 != v35);
      v33 = [v31 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v33);
  }

  [v4 showFingerModels:v30 animated:1 startPointForAnimation:{CGPointZero.x, CGPointZero.y}];
  [(HNDHandManager *)self setLastSelectedKeyboardSlidePoint:v6, v8];

LABEL_19:
}

- (void)_endContinuousSlideGesture
{
  v3 = [(HNDHandManager *)self currentDisplayManager];
  [v3 keyboardSlideFingerController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100032614;
  v6 = v5[3] = &unk_1001D3750;
  v4 = v6;
  [v4 endGestureWithCompletion:v5];
  self->_continuousPathGestureState = 0;
  [(HNDHandManager *)self _updateContinuousPathGestureState];
}

- (void)_dwellTimerFired
{
  v3 = [(HNDHandManager *)self currentDisplayManager];
  if ([(HNDHandManager *)self _continuousPathGestureHandledDwellTimer])
  {
    goto LABEL_30;
  }

  if ([(HNDHandManager *)self inBubbleMode]&& [(HNDHandManager *)self currentlySnappedInBubbleMode])
  {
    if (AXDeviceSupportsOnDeviceEyeTracking())
    {
      v4 = +[AXSettings sharedInstance];
      v5 = [v4 onDeviceEyeTrackingEnabled];

      if (v5)
      {
        if (![(HNDHandManager *)self isCurrentlySelectingKeyboardKey])
        {
          v6 = +[AXSettings sharedInstance];
          if ([v6 assistiveTouchEyeTrackingUseZoomForKeyboardKeys])
          {
            v7 = [(HNDHandManager *)self currentBubbleModeFocusedElement];
            v8 = [v7 isKeyboardKey];

            if (v8)
            {
              [v3 setNeedsToShowZoomWindow:1];
              [(HNDHandManager *)self setCurrentlySelectingKeyboardKey:1];
            }
          }

          else
          {
          }
        }

        v23 = [v3 needsToShowZoomWindow];
        [v3 showZoomWindow];
        if (([v3 needsToShowZoomWindow] & 1) == 0)
        {
          [(HNDHandManager *)self activateCurrentBubbleModeFocusedElement];
          [(HNDHandManager *)self setCurrentlySelectingKeyboardKey:0];
        }

LABEL_22:
        if (v23)
        {
          [v3 setNeedsToShowZoomWindow:0];
        }

        goto LABEL_24;
      }
    }

    [(HNDHandManager *)self activateCurrentBubbleModeFocusedElement];
  }

  else
  {
    v9 = [v3 fingerController];
    v10 = [v9 numberOfFingers];

    if (v10)
    {
      [(HNDHandManager *)self setCurrentlySelectedKeyboardRow:0];
      if (self->_hotCornerLocked)
      {
        v11 = [v3 fingerController];
        v12 = [v11 fingerModels];
        v13 = [v12 objectAtIndexedSubscript:0];
        [v13 location];
        [v3 convertToNormalizedInterfaceOrientation:?];
        v15 = v14;
        v17 = v16;

        v18 = [v3 hardwareIdentifier];
        v19 = [(HNDHandManager *)self _hotCornerForNormalizedPoint:v18 onDisplay:v15, v17];

        if (v19)
        {
          self->_hotCornerLocked = 0;
          v20 = [v3 hardwareIdentifier];
          [(HNDHandManager *)self _performActionForHotCorner:v19 onDisplay:v20];
        }

        goto LABEL_24;
      }

      v21 = +[AXSettings sharedInstance];
      v22 = [v21 onDeviceEyeTrackingEnabled];

      if (v22)
      {
        v23 = [v3 needsToShowZoomWindow];
        [v3 showZoomWindow];
        if (([v3 needsToShowZoomWindow] & 1) == 0)
        {
          v24 = [v3 hardwareIdentifier];
          [(HNDHandManager *)self _performDwellActionOnDisplay:v24];
        }

        goto LABEL_22;
      }

      v25 = [v3 hardwareIdentifier];
      [(HNDHandManager *)self _performDwellActionOnDisplay:v25];
    }
  }

LABEL_24:
  if ([(HNDHandManager *)self eyeTrackingAutoHideEnabled])
  {
    [(HNDHandManager *)self setEyeTrackingAutoHideFinished:0];
    if (!-[HNDHandManager hidePointerForEyeTrackingAutoHide](self, "hidePointerForEyeTrackingAutoHide") && ([v3 isMenuVisible] & 1) == 0)
    {
      [(HNDHandManager *)self setHidePointerForEyeTrackingAutoHide:1];
      [(HNDHandManager *)self _hideCursorsForEyeTrackingAutoHide];
    }
  }

  if ([(HNDHandManager *)self inBubbleMode])
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }

LABEL_30:
}

- (void)_performDwellActionOnDisplay:(id)a3
{
  v5 = AXAssistiveTouchIconTypeDwellClick;
  v6 = a3;
  [(HNDHandManager *)self currentPointForPointer];
  v8 = v7;
  v10 = v9;
  v11 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v6];
  v12 = [(HNDHandManager *)self _isInNubbitHitbox:v6 onDisplay:v8, v10];

  if ((v12 & 1) != 0 || self->_hoverNubbitLocked || [v11 isMenuVisible])
  {
    if ([v11 isMenuVisible])
    {
      v13 = &AXAssistiveTouchIconTypeMousePrimaryClick;
    }

    else if (self->_isDragNubbitMode)
    {
      v13 = &AXAssistiveTouchIconTypeMoveMenu;
    }

    else
    {
      v13 = &AXAssistiveTouchIconTypeOpenMenu;
    }

    v14 = *v13;

    v5 = v14;
  }

  [(HNDHandManager *)self _handleAction:v5 type:4 state:2];
  [(HNDHandManager *)self moveFingerByDelta:0.25, 0.25];
  [(HNDHandManager *)self setIsDwellActionPendingButtonUp:1];
  v15 = v5;
  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)_initializeDwell
{
  self->_lastDwellStartPoint = HNDPointNull;
  self->_dwellMode = 1;
  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:&stru_1001D43C0];

  [(HNDHandManager *)self _resetDwellModeToDefault];
}

- (void)_resetDwellDueToFingersReset
{
  [(HNDHandManager *)self setDwellMode:[(HNDHandManager *)self _defaultDwellMode]];
  v3 = [(HNDHandManager *)self dwellControlPaused];
  v4 = &AXAssistiveTouchIconTypeDwellPause;
  if (!v3)
  {
    v4 = &AXAssistiveTouchIconTypeDwellClick;
  }

  v5 = *v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100032CBC;
  v7[3] = &unk_1001D36C0;
  v8 = v5;
  v6 = v5;
  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v7];
}

- (void)_resetDwellModeToDefault
{
  [(HNDHandManager *)self setDwellMode:[(HNDHandManager *)self _defaultDwellMode]];
  if ([(HNDHandManager *)self dwellControlAutorevertEnabled])
  {
    v3 = +[AXSettings sharedInstance];
    v4 = [v3 assistiveTouchMouseDwellControlAutorevertAction];

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100032DE0;
    v6[3] = &unk_1001D36C0;
    v7 = v4;
    v5 = v4;
    [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v6];
  }

  else if ([(HNDHandManager *)self dwellControlPaused])
  {

    [(HNDHandManager *)self enumerateDisplayManagersWithBlock:&stru_1001D43E0];
  }
}

- (unint64_t)_defaultDwellMode
{
  if (![(HNDHandManager *)self dwellControlAutorevertEnabled])
  {
    return [(HNDHandManager *)self dwellControlPaused]^ 1;
  }

  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchMouseDwellControlAutorevertAction];

  if ([v4 isEqualToString:AXAssistiveTouchIconTypeDwellClick])
  {

    return 1;
  }

  v6 = [v4 isEqualToString:AXAssistiveTouchIconTypeDwellPause];

  if (v6)
  {
    return 0;
  }

  else
  {
    return [(HNDHandManager *)self dwellControlPaused]^ 1;
  }
}

- (void)_performActionForHotCorner:(unint64_t)a3 onDisplay:(id)a4
{
  v8 = a4;
  v6 = [HNDHandManager _actionForHotCorner:a3];
  if (v6)
  {
    v7 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v8];
    [v7 activateAssistiveTouchAction:v6 fromButtonPress:0];
  }
}

+ (id)_actionForHotCorner:(unint64_t)a3
{
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 assistiveTouchMouseDwellControlCornerCustomization];

  v6 = a3 - 1;
  if (a3 - 1 <= 7 && ((0x8Bu >> v6) & 1) != 0)
  {
    v7 = [v5 objectForKey:**(&off_1001D4798 + v6)];
  }

  else
  {
    v7 = @"__NONE__";
  }

  if (([(__CFString *)v7 isEqualToString:@"__NONE__"]& 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (unint64_t)_cornerForNormalizedPoint:(CGPoint)a3 normalizedPadding:(CGSize)a4
{
  if (a3.x < a4.width && a3.y < a4.height)
  {
    return 1;
  }

  if (a3.x > 1.0 - a4.width && a3.y < a4.height)
  {
    return 2;
  }

  v6 = 1.0 - a4.height;
  if (a3.x < a4.width && a3.y > v6)
  {
    return 4;
  }

  if (a3.y <= v6 || a3.x <= 1.0 - a4.width)
  {
    return 0;
  }

  else
  {
    return 8;
  }
}

- (CGSize)_hotCornerActivationSizeOnDisplay:(id)a3
{
  v4 = a3;
  v5 = [(HNDHandManager *)self deviceManager];
  v6 = [v5 mainDeviceIsMotionTracker];

  if (v6)
  {
    if (self->_hotCornerLocked)
    {
      v7 = 0.085;
    }

    else
    {
      v7 = 0.05;
    }
  }

  else
  {
    v7 = 0.01;
  }

  [objc_opt_class() displayCornerRadius];
  if (v8 <= 0.0)
  {
    v15 = v7;
  }

  else
  {
    v9 = v8 - sqrt(v8 * v8 * 0.5);
    v10 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v4];
    [v10 convertToNormalizedInterfaceOrientation:{v9, v9}];
    v12 = v11;
    v14 = v13;

    v15 = v7 + v14;
    v7 = v7 + v12;
  }

  v16 = v7;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (unint64_t)_hotCornerForNormalizedPoint:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(HNDHandManager *)self _fingerRadiusOnDisplay:v7];
  v9 = v8;
  v10 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v7];
  [v10 convertToNormalizedInterfaceOrientation:{v9, v9}];
  v12 = v11;
  v14 = v13;

  [(HNDHandManager *)self _hotCornerActivationSizeOnDisplay:v7];
  v16 = v15;
  v18 = v17;

  return [(HNDHandManager *)self _cornerForNormalizedPoint:x normalizedPadding:y, v12 + v16, v14 + v18];
}

- (unint64_t)_roundedCornersForCursorAtPoint:(CGPoint)a3 onDisplay:(id)a4
{
  if (self->_hotCornerLocked && (y = a3.y, x = a3.x, v7 = a4, -[HNDHandManager displayManagerForHardwareIdentifier:](self, "displayManagerForHardwareIdentifier:", v7), v8 = objc_claimAutoreleasedReturnValue(), [v8 convertToNormalizedInterfaceOrientation:{x, y}], v9 = -[HNDHandManager _hotCornerForNormalizedPoint:onDisplay:](self, "_hotCornerForNormalizedPoint:onDisplay:", v7), v7, v8, v10 = v9 - 1, v9 - 1 <= 7) && ((0x8Bu >> v10) & 1) != 0)
  {
    return qword_1001BD118[v10];
  }

  else
  {
    return -1;
  }
}

- (BOOL)_shouldLockIntoHotCornerAtNormalizedPoint:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(HNDHandManager *)self dwellControlEnabled])
  {
    [(HNDHandManager *)self _hotCornerActivationSizeOnDisplay:v7];
    v10 = [HNDHandManager _actionForHotCorner:[(HNDHandManager *)self _cornerForNormalizedPoint:x normalizedPadding:y, v8, v9]];
    v11 = v10 != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CGPoint)_pointForLockedCorner:(unint64_t)a3 onDisplay:(id)a4
{
  v6 = a4;
  v7 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v6];
  [(HNDHandManager *)self _fingerRadiusOnDisplay:v6];
  y = v8;

  [v7 screenBounds];
  x = CGRectGetMaxX(v16) - y;
  [v7 screenBounds];
  MaxY = CGRectGetMaxY(v17);
  if (a3 > 3)
  {
    v12 = MaxY - y;
    if (a3 == 4)
    {
      x = y;
      y = v12;
      goto LABEL_10;
    }

    y = v12;
    if (a3 != 8)
    {
LABEL_7:
      _AXAssert();
      x = CGPointZero.x;
      y = CGPointZero.y;
    }
  }

  else
  {
    if (a3 == 1)
    {
      x = y;
      goto LABEL_10;
    }

    if (a3 != 2)
    {
      goto LABEL_7;
    }
  }

LABEL_10:

  v13 = x;
  v14 = y;
  result.y = v14;
  result.x = v13;
  return result;
}

- (id)_avPlayerForSound:(id)a3
{
  v4 = a3;
  avPlayers = self->_avPlayers;
  if (!avPlayers)
  {
    v6 = [objc_allocWithZone(NSMutableDictionary) init];
    v7 = self->_avPlayers;
    self->_avPlayers = v6;

    avPlayers = self->_avPlayers;
  }

  v8 = [(NSMutableDictionary *)avPlayers objectForKey:v4];
  if (!v8)
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v4 stringByDeletingPathExtension];
    v11 = [v4 pathExtension];
    v12 = [v9 URLForResource:v10 withExtension:v11];

    v8 = [objc_allocWithZone(AVAudioPlayer) initWithContentsOfURL:v12 error:0];
    [(NSMutableDictionary *)self->_avPlayers setObject:v8 forKey:v4];
  }

  return v8;
}

- (BOOL)_isPoint:(CGPoint)a3 withinTolerance:(double)a4 ofStartPoint:(CGPoint)a5
{
  v6 = vabdd_f64(a3.x, a5.x) < a4;
  v5 = vabdd_f64(a3.y, a5.y);
  return v6 && v5 < a4;
}

- (BOOL)_isWithinLastDwellBounds:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = +[AXSettings sharedInstance];
  [v6 assistiveTouchMouseDwellControlMovementToleranceRadius];
  LOBYTE(self) = [(HNDHandManager *)self _isPoint:x withinTolerance:y ofStartPoint:v7, self->_lastDwellStartPoint.x, self->_lastDwellStartPoint.y];

  return self;
}

- (void)enableEyeTrackingAutoHide:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    if (![(HNDHandManager *)self deviceSupportsAutoHide])
    {
      return;
    }

    v5 = 0;
    v6 = ![(HNDHandManager *)self eyeTrackingAutoHideEnabled];
  }

  else
  {
    v5 = [(HNDHandManager *)self eyeTrackingAutoHideEnabled];
    v6 = 0;
  }

  [(HNDHandManager *)self setEyeTrackingAutoHideEnabled:v3];
  v7 = AXLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(HNDHandManager *)self eyeTrackingAutoHideEnabled];
    v9 = @"NO";
    if (v8)
    {
      v9 = @"YES";
    }

    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "enableEyeTrackingAutoHide: %@", &v10, 0xCu);
  }

  if (v5)
  {
    [(HNDHandManager *)self setHidePointerForEyeTrackingAutoHide:0];
    [(HNDHandManager *)self setEyeTrackingAutoHideFinished:1];
    if ([(HNDHandManager *)self dwellControlEnabled])
    {
      [(HNDHandManager *)self setEyeTrackingAutotHideLastPointCursorShowed:-1.0, -1.0];
      [(HNDHandManager *)self setEyeTrackingAutotHideLastBubbleModeElementShowed:0];
    }
  }

  [(HNDHandManager *)self resetFingersIfNeeded];
  if (v6)
  {
    [(HNDHandManager *)self _highlightFingers];
  }

  [(HNDHandManager *)self _systemPointerSettingsDidChange];
}

- (void)_updateEyeTrackingAutoHideIfNecessary
{
  if (![(HNDHandManager *)self shouldUseEyeTrackingAutoHide]|| ![(HNDHandManager *)self eyeTrackingAutoHideEnabled])
  {
    return;
  }

  dwellTimer = self->_dwellTimer;
  v4 = dwellTimer ? [(AXDispatchTimer *)dwellTimer isCancelled]^ 1 : 0;
  v5 = [(HNDHandManager *)self dwellBubbleModeTimer];
  if (v5)
  {
    v6 = [(HNDHandManager *)self dwellBubbleModeTimer];
    v7 = [v6 isCancelled] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 | v7;
  v9 = [(HNDHandManager *)self eyeTrackingAutoHideCursorAnimator];
  if (v9)
  {
    v10 = [(HNDHandManager *)self eyeTrackingAutoHideCursorAnimator];
    v11 = [v10 state] == 1;
  }

  else
  {
    v11 = 0;
  }

  if ([(HNDHandManager *)self eyeTrackingAutoHideFinished]& v8)
  {
    return;
  }

  if ([(HNDHandManager *)self inBubbleMode])
  {
    v12 = [(HNDHandManager *)self currentlySnappedInBubbleMode];
    if ([(HNDHandManager *)self inBubbleMode])
    {
      v13 = [(HNDHandManager *)self currentlySnappedInBubbleMode];
      if (v12)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    if (v12)
    {
LABEL_22:
      v14 = [(HNDHandManager *)self eyeTrackingAutotHideLastBubbleModeElementShowed];
      if (v14)
      {
        v15 = [(HNDHandManager *)self eyeTrackingAutotHideLastBubbleModeElementShowed];
        v16 = [(HNDHandManager *)self currentBubbleModeFocusedElement];
        v17 = [v15 isEqual:v16] ^ 1;
      }

      else
      {
        v17 = 1;
      }

      v38 = [(HNDHandManager *)self bubbleModeFocusedRockerItem];
      if (v38)
      {
        v19 = 1;
      }

      else
      {
        v19 = [(HNDHandManager *)self bubbleModeCurrentlyFocusedOnNubbit];
      }

      if (v17)
      {
        v39 = [(HNDHandManager *)self currentBubbleModeFocusedElement];
        [(HNDHandManager *)self setEyeTrackingAutotHideLastBubbleModeElementShowed:v39];
      }

      [(HNDHandManager *)self setEyeTrackingAutotHideLastPointCursorShowed:-1.0, -1.0];
      goto LABEL_46;
    }
  }

  else if ([(HNDHandManager *)self inBubbleMode])
  {
    v13 = [(HNDHandManager *)self currentlySnappedInBubbleMode];
LABEL_19:
    if ((v13 & 1) == 0)
    {
      [(HNDHandManager *)self setEyeTrackingAutotHideLastBubbleModeElementShowed:0];
    }
  }

  v18 = [(HNDHandManager *)self currentDisplayManager];
  v19 = [v18 isMenuVisible];
  v20 = [v18 fingerController];
  if (![v20 numberOfFingers])
  {
    goto LABEL_36;
  }

  v21 = [v20 fingerModels];
  v22 = [v21 objectAtIndexedSubscript:0];
  [v22 location];
  v24 = v23;
  v26 = v25;

  v27 = [v18 hardwareIdentifier];
  v28 = -[HNDHandManager _isInNubbitHitbox:onDisplay:](self, "_isInNubbitHitbox:onDisplay:", v27, v24, v26) ? 1 : [v18 isMenuVisible];
  v19 |= v28;

  if ([(HNDHandManager *)self dwellControlEnabled])
  {
    v29 = +[AXSettings sharedInstance];
    [v29 assistiveTouchMouseDwellControlMovementToleranceRadius];
    v31 = v30;
  }

  else
  {
    v31 = kAXSAssistiveTouchEyeTrackingAutoHideMovementToleranceRadiusDefault;
  }

  [(HNDHandManager *)self eyeTrackingAutotHideLastPointCursorShowed];
  v34 = [(HNDHandManager *)self _isPoint:v24 withinTolerance:v26 ofStartPoint:v31, v32, v33];
  [(HNDHandManager *)self eyeTrackingAutotHideLastPointCursorShowed];
  v37 = v36 == -1.0 && v35 == -1.0;
  if (v37 || (v34 & 1) == 0)
  {
    [(HNDHandManager *)self setEyeTrackingAutotHideLastPointCursorShowed:v24, v26];
    v17 = 1;
  }

  else
  {
LABEL_36:
    v17 = 0;
  }

LABEL_46:
  if (![(HNDHandManager *)self hidePointerForEyeTrackingAutoHide]&& v17 && !(v8 & 1 | ![(HNDHandManager *)self dwellControlEnabled]| v11 | v19 & 1))
  {
    [(HNDHandManager *)self setHidePointerForEyeTrackingAutoHide:1];
    [(HNDHandManager *)self _hideCursorsForEyeTrackingAutoHide];
  }

  if ((v19 | v17))
  {
    v40 = [(HNDHandManager *)self eyeTrackingAutoHideCursorAnimator];

    if (v40)
    {
      v41 = [(HNDHandManager *)self eyeTrackingAutoHideCursorAnimator];
      [v41 stopAnimation:1];

      [(HNDHandManager *)self setEyeTrackingAutoHideCursorAnimator:0];
      [(HNDHandManager *)self _hideCursorsForEyeTrackingAutoHide];
    }

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100033CA4;
    v46[3] = &unk_1001D4408;
    v46[4] = self;
    v42 = objc_retainBlock(v46);
    if (v19)
    {
      [(HNDHandManager *)self _showCursorsForAutoHideWithDuration:0];
      (v42[2])(v42, 0);
    }

    else if (v17)
    {
      [(HNDHandManager *)self eyeTrackingAutoHideTimeout];
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_100033DD4;
      v45[3] = &unk_1001D4430;
      v45[4] = self;
      v45[5] = 0x3FD999999999999ALL;
      v44 = [UIViewPropertyAnimator runningPropertyAnimatorWithDuration:0x10000 delay:v45 options:v42 animations:0.4 completion:v43];
      [(HNDHandManager *)self setEyeTrackingAutoHideCursorAnimator:v44];
    }
  }
}

- (void)_hideCursorsForEyeTrackingAutoHide
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100033EA4;
  v2[3] = &unk_1001D36C0;
  v2[4] = self;
  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v2];
}

- (void)_showCursorsForAutoHideWithDuration:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100033F98;
  v4[3] = &unk_1001D4350;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(HNDHandManager *)v5 enumerateDisplayManagersWithBlock:v4];
}

- (void)_startDwellTimer
{
  if (![(HNDHandManager *)self eyeTrackingAutoHideEnabled]|| [(HNDHandManager *)self eyeTrackingAutoHideFinished])
  {
    if ([(HNDHandManager *)self inBubbleMode]&& [(HNDHandManager *)self currentlySnappedInBubbleMode])
    {
      v3 = [(HNDHandManager *)self dwellBubbleModeTimer];
      if (v3)
      {
        v4 = [(HNDHandManager *)self dwellBubbleModeTimer];
        v5 = [v4 isCancelled] ^ 1;
      }

      else
      {
        v5 = 0;
      }

      v7 = [(HNDHandManager *)self _startDwellTimerForBubbleMode];
    }

    else
    {
      dwellTimer = self->_dwellTimer;
      if (dwellTimer)
      {
        v5 = [(AXDispatchTimer *)dwellTimer isCancelled]^ 1;
      }

      else
      {
        v5 = 0;
      }

      v7 = [(HNDHandManager *)self _startDwellTimerForPointer];
    }

    v8 = v7;
    if ([(HNDHandManager *)self eyeTrackingAutoHideFinished]&& v5 && v8)
    {
      [(HNDHandManager *)self setEyeTrackingAutoHideFinished:0];

      [(HNDHandManager *)self cancelDwellTimer];
    }
  }
}

- (BOOL)_startDwellTimerForPointer
{
  v3 = [(HNDHandManager *)self currentDisplayManager];
  v4 = [v3 fingerController];
  if ([v4 numberOfFingers] && ((objc_msgSend(v4, "fingerModels"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectAtIndexedSubscript:", 0), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "location"), v8 = v7, v10 = v9, v6, v5, self->_lastDwellStartPoint.x == -1.0) ? (v11 = self->_lastDwellStartPoint.y == -1.0) : (v11 = 0), (v11 || !-[HNDHandManager _isWithinLastDwellBounds:](self, "_isWithinLastDwellBounds:", v8, v10)) && (-[HNDHandManager cancelDwellTimer](self, "cancelDwellTimer"), -[HNDHandManager dwellControlEnabled](self, "dwellControlEnabled")) && ((objc_msgSend(v3, "hardwareIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), !-[HNDHandManager _isInNubbitHitbox:onDisplay:](self, "_isInNubbitHitbox:onDisplay:", v12, v8, v10)) ? (v13 = objc_msgSend(v3, "isMenuVisible")) : (v13 = 1), (v12, !-[HNDHandManager dwellControlPaused](self, "dwellControlPaused")) || (v13 & 1) != 0 || self->_hotCornerLocked)))
  {
    if (([v3 fingerContentViewIsActive] & 1) == 0)
    {
      v14 = ASTLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100128BCC();
      }
    }

    self->_lastDwellStartPoint.x = v8;
    self->_lastDwellStartPoint.y = v10;
    v15 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    dwellTimer = self->_dwellTimer;
    self->_dwellTimer = v15;

    objc_initWeak(&location, self);
    v17 = self->_dwellTimer;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100034380;
    v20[3] = &unk_1001D4480;
    v21 = v4;
    v22 = self;
    objc_copyWeak(&v23, &location);
    [(AXDispatchTimer *)v17 afterDelay:v20 processBlock:0 cancelBlock:0.25];
    objc_destroyWeak(&v23);

    objc_destroyWeak(&location);
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)_startDwellTimerForBubbleMode
{
  v3 = [(HNDHandManager *)self currentDisplayManager];
  v4 = [(HNDHandManager *)self lastBubbleModeDwellElement];
  if (v4)
  {
    v5 = [(HNDHandManager *)self lastBubbleModeDwellElement];
    v6 = [(HNDHandManager *)self currentBubbleModeFocusedElement];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(HNDHandManager *)self lastBubbleModeDwellRockerItem];
  if (v8)
  {
    v9 = [(HNDHandManager *)self lastBubbleModeDwellRockerItem];
    v10 = [(HNDHandManager *)self bubbleModeFocusedRockerItem];
    v11 = [v9 isEqual:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(HNDHandManager *)self lastBubbleModeDwellWasOnNubbit];
  if (v12)
  {
    LOBYTE(v12) = [(HNDHandManager *)self bubbleModeCurrentlyFocusedOnNubbit];
  }

  v13 = 0;
  if (((v7 | v11) & 1) == 0 && (v12 & 1) == 0)
  {
    [(HNDHandManager *)self cancelDwellTimer];
    if ([(HNDHandManager *)self dwellControlEnabled]&& (([(HNDHandManager *)self bubbleModeFocusedRockerItem], (v14 = objc_claimAutoreleasedReturnValue()) == 0) ? (v15 = [(HNDHandManager *)self bubbleModeCurrentlyFocusedOnNubbit]) : (v15 = 1), (v14, ![(HNDHandManager *)self dwellControlPaused]) || (v15 & 1) != 0 || self->_hotCornerLocked))
    {
      v16 = [(HNDHandManager *)self currentBubbleModeFocusedElement];
      [(HNDHandManager *)self setLastBubbleModeDwellElement:v16];

      v17 = [(HNDHandManager *)self bubbleModeFocusedRockerItem];
      [(HNDHandManager *)self setLastBubbleModeDwellRockerItem:v17];

      [(HNDHandManager *)self setLastBubbleModeDwellWasOnNubbit:[(HNDHandManager *)self bubbleModeCurrentlyFocusedOnNubbit]];
      v18 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
      [(HNDHandManager *)self setDwellBubbleModeTimer:v18];

      objc_initWeak(&location, self);
      v19 = [(HNDHandManager *)self dwellBubbleModeTimer];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100034784;
      v21[3] = &unk_1001D44A8;
      v22 = v3;
      v23 = self;
      v25 = v15;
      objc_copyWeak(&v24, &location);
      [v19 afterDelay:v21 processBlock:0 cancelBlock:0.25];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (double)_dwellTimerDuration
{
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchMouseDwellControlActivationTimeout];
  v5 = v4;

  if (AXRuntimeCheck_DwellKeyboardKeyTimer())
  {
    v6 = [(HNDHandManager *)self currentBubbleModeFocusedElement];
    if ([v6 isKeyboardKey])
    {

LABEL_5:
      v8 = +[AXSettings sharedInstance];
      [v8 assistiveTouchMouseDwellControlKeyboardKeyActivationTimeout];
      v5 = v9;

      return v5;
    }

    continuousPathGestureState = self->_continuousPathGestureState;

    if (continuousPathGestureState == 2)
    {
      goto LABEL_5;
    }
  }

  return v5;
}

- (void)cancelDwellTimer
{
  if ([(HNDHandManager *)self inBubbleMode]&& [(HNDHandManager *)self currentlySnappedInBubbleMode])
  {
    [(HNDHandManager *)self cancelDwellTimerForBubbleMode];
  }

  else
  {
    [(HNDHandManager *)self cancelDwellTimerForPointer];
  }

  if (sub_100042C64())
  {
    v3 = [(HNDHandManager *)self systemPointerController];
    [v3 hideSystemPointer:{-[HNDHandManager shouldHideSystemPointerForFingersView](self, "shouldHideSystemPointerForFingersView")}];
  }
}

- (void)cancelDwellTimerForPointer
{
  self->_lastDwellStartPoint = HNDPointNull;
  [(AXDispatchTimer *)self->_dwellTimer cancel];

  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:&stru_1001D44C8];
}

- (void)cancelDwellTimerForBubbleMode
{
  [(HNDHandManager *)self setLastBubbleModeDwellElement:0];
  [(HNDHandManager *)self setLastBubbleModeDwellRockerItem:0];
  [(HNDHandManager *)self setLastBubbleModeDwellWasOnNubbit:0];

  [(HNDHandManager *)self cancelDwellTimerWithoutStateResetForBubbleMode];
}

- (void)cancelDwellTimerWithoutStateResetForBubbleMode
{
  v3 = [(HNDHandManager *)self dwellBubbleModeTimer];
  [v3 cancel];

  v4 = [(HNDHandManager *)self currentDisplayManager];
  [v4 cancelDwellOnBubbleCursor];
}

- (void)prepareForHIDDeviceConfiguration
{
  v3 = ASTLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Preparing for HID device configuration", v4, 2u);
  }

  [(HNDHandManager *)self setLastTimeEyeTrackerConfigured:mach_absolute_time()];
  [(HNDHandManager *)self hideUIForEyeTracker];
}

- (BOOL)shouldIgnorePointerEventWhileEyeTrackerConfigures:(id)a3
{
  v4 = a3;
  v5 = [(HNDHandManager *)self mainDisplayManager];
  v6 = [v5 isShowingCalibrationUI];

  v7 = 1;
  if ((v6 & 1) == 0)
  {
    v8 = [(HNDHandManager *)self deviceManager];
    v9 = [v8 hidDeviceIsConfiguring];

    if (!v9 || (mach_absolute_time(), -[HNDHandManager lastTimeEyeTrackerConfigured](self, "lastTimeEyeTrackerConfigured"), AXMachTimeToNanoseconds() / 1000000000.0 >= 0.5) && (([v4 deltaX], v10 != 0.0) || (objc_msgSend(v4, "deltaY"), v11 != 0.0)))
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)shouldIgnorePointerEventWhileEyeTrackerIsInactive
{
  v3 = [(HNDHandManager *)self deviceManager];
  if ([v3 mainDeviceIsMotionTracker])
  {
    v4 = [(HNDHandManager *)self deviceManager];
    v5 = [v4 isTrackingInputActive];

    if ((v5 & 1) == 0)
    {
      v6 = [(HNDHandManager *)self systemPointerController];
      v7 = [v6 currentSystemPointerPointAttributes];
      [v7 unacceleratedRelativePosition];
      v9 = v8;
      v11 = v10;

      if (CGPointZero.x == v9 && CGPointZero.y == v11)
      {
        return 1;
      }
    }
  }

  else
  {
  }

  return 0;
}

- (BOOL)shouldIgnorePointerEventWhileEyeTrackerPressedButtonDownWithDwell
{
  v3 = [(HNDHandManager *)self deviceManager];
  if (([v3 mainDeviceIsMotionTracker] & 1) == 0)
  {

    return 0;
  }

  v4 = [(HNDHandManager *)self deviceManager];
  v5 = [v4 isTrackingInputActive];

  if (!v5)
  {
    return 0;
  }

  if ([(HNDHandManager *)self isDwellActionPendingButtonUp])
  {
    return 1;
  }

  return [(HNDHandManager *)self isPendingFingerLiftForPrimaryButtonPressUp];
}

- (void)didCompleteHIDDeviceConfiguration
{
  v3 = ASTLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "HID device configuration complete", v4, 2u);
  }

  [(HNDHandManager *)self showUIForEyeTracker];
}

- (void)hideUIForEyeTracker
{
  v4 = ASTLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Preparing to hide UI for eye tracker", v11, 2u);
  }

  v5 = [(HNDHandManager *)self currentDisplayManager];
  [(HNDHandManager *)self setCaptureEvents:0];
  [(HNDHandManager *)self cancelDwellTimer];
  [(HNDHandManager *)self specialToolUsageEnded:1];
  v6 = [v5 hardwareIdentifier];
  [(HNDHandManager *)self resetFingersToPoint:v6 onDisplay:0 active:-1.0, -1.0];

  if ([(HNDHandManager *)self eyeTrackingAutoHideEnabled])
  {
    v7 = [(HNDHandManager *)self eyeTrackingAutoHideCursorAnimator];

    if (v7)
    {
      v8 = [(HNDHandManager *)self eyeTrackingAutoHideCursorAnimator];
      [v8 stopAnimation:1];

      [(HNDHandManager *)self setEyeTrackingAutoHideCursorAnimator:0];
    }

    [(HNDHandManager *)self _showCursorsForAutoHideWithDuration:&off_1001E50D0];
  }

  v9 = NSStringFromSelector(a2);
  [v5 setVisualsHidden:1 forReason:v9 animated:1];

  if ([(HNDHandManager *)self inBubbleMode])
  {
    [v5 hideBubbleCursor];
    [(HNDHandManager *)self setCurrentBubbleModeFocusedElement:0];
    [(HNDHandManager *)self setLastBubbleModeFocusedElement:0];
    [(HNDHandManager *)self setBubbleModeFocusedRockerItem:0];
    [(HNDHandManager *)self setBubbleModeCurrentlyFocusedOnNubbit:0];
  }

  v10 = [(HNDHandManager *)self systemPointerController];
  [v10 hideSystemPointer:{-[HNDHandManager shouldHideSystemPointerForFingersView](self, "shouldHideSystemPointerForFingersView")}];
}

- (void)showUIForEyeTracker
{
  v4 = ASTLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Preparing to show UI for eye tracker", v8, 2u);
  }

  v5 = [(HNDHandManager *)self currentDisplayManager];
  if ([v5 visualsHidden])
  {
    v6 = NSStringFromSelector(a2);
    [v5 setVisualsHidden:0 forReason:v6 animated:1];
  }

  if ([(HNDHandManager *)self inBubbleMode])
  {
    [v5 showBubbleCursor];
  }

  [(HNDHandManager *)self resetFingersIfNeeded];
  v7 = [(HNDHandManager *)self systemPointerController];
  [v7 hideSystemPointer:{-[HNDHandManager shouldHideSystemPointerForFingersView](self, "shouldHideSystemPointerForFingersView")}];
}

- (BOOL)shouldIgnoreHIDDeviceMovementWhileMouseActive
{
  mach_absolute_time();
  [(HNDHandManager *)self lastTimeMouseMoved];
  return AXMachTimeToNanoseconds() / 1000000000.0 < 0.5;
}

- (void)mouseEventRecordedWithDelta:(CGPoint)a3
{
  if (a3.x < 0.0 || a3.x > 0.0 || a3.y != 0.0)
  {
    [(HNDHandManager *)self setLastTimeMouseMoved:mach_absolute_time()];

    [(HNDHandManager *)self setLastMoveWasMouse:1];
  }
}

- (BOOL)_shouldAutoFadeFingersOnDisplay:(id)a3
{
  v4 = a3;
  v5 = [(HNDHandManager *)self deviceManager];
  if ([v5 mainDeviceIsMotionTracker] && -[HNDHandManager dwellControlEnabled](self, "dwellControlEnabled") && -[HNDHandManager dwellControlPaused](self, "dwellControlPaused"))
  {
    v6 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v4];
    v7 = ([v6 isMenuVisible] & 1) == 0 && !self->_hotCornerLocked;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_fadedFingersShouldShowOutlines
{
  if ([(HNDDwellPointerAppearance *)self->_dwellPointerAppearance cursorColor]< 2)
  {
    return 0;
  }

  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchIdleOpacity];
  v4 = fabs(v3 + -0.15) >= 0.001;

  return v4;
}

- (void)_updateFadedFingerOpacity
{
  if (self->_fingersFaded)
  {
    [(HNDHandManager *)self enumerateDisplayManagersWithBlock:&stru_1001D44E8];
  }
}

- (void)_fadeFingersAfterDelayIfNeeded
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100035440;
  v2[3] = &unk_1001D36C0;
  v2[4] = self;
  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v2];
}

- (void)_fadeFingersAfterDelayIfNeededOnDisplay:(id)a3
{
  v4 = a3;
  if (!self->_fingersFaded && ([(AXDispatchTimer *)self->_fingerFadeTimer isPending]& 1) == 0)
  {
    if ([(HNDHandManager *)self _shouldAutoFadeFingersOnDisplay:v4])
    {
      v5 = +[AXSettings sharedInstance];
      [v5 assistiveTouchIdleOpacity];
      v7 = v6;

      if (v7 < 1.0)
      {
        fingerFadeTimer = self->_fingerFadeTimer;
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_100035598;
        v9[3] = &unk_1001D36E8;
        v9[4] = self;
        v10 = v4;
        [(AXDispatchTimer *)fingerFadeTimer afterDelay:v9 processBlock:4.0];
      }
    }
  }
}

- (void)_highlightFingers
{
  [(AXDispatchTimer *)self->_fingerFadeTimer cancel];
  self->_fingersFaded = 0;
  if (![(HNDDwellPointerAppearance *)self->_dwellPointerAppearance shouldShowFingerOutlines]|| ![(HNDDwellPointerAppearance *)self->_dwellPointerAppearance shouldShowInnerCircle])
  {
    [(HNDDwellPointerAppearance *)self->_dwellPointerAppearance setShouldShowFingerOutlines:1];
    [(HNDDwellPointerAppearance *)self->_dwellPointerAppearance setShouldShowInnerCircle:1];
    [(HNDHandManager *)self reloadFingerAppearance];
  }

  v3 = [(HNDHandManager *)self currentDisplayManager];
  v4 = [v3 fingerController];

  v5 = [v4 fingerContainerView];
  [v5 alpha];
  v7 = v6;

  if (v7 < 1.0)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100035844;
    v8[3] = &unk_1001D3488;
    v9 = v4;
    [UIView animateWithDuration:v8 animations:0.15];
  }
}

- (void)_dwellControlToggled
{
  v3 = +[AXSettings sharedInstance];
  -[HNDHandManager setAssistiveTouchMouseDwellControlEnabled:](self, "setAssistiveTouchMouseDwellControlEnabled:", [v3 assistiveTouchMouseDwellControlEnabled]);

  [(HNDHandManager *)self cancelDwellTimer];
  [(HNDHandManager *)self updateMenuVisibility];
  [(HNDHandManager *)self _presentMigrationPopupIfNeeded];
  [(HNDHandManager *)self resetFingersIfNeeded];
  if (![(HNDHandManager *)self dwellControlEnabled])
  {
    [(HNDHandManager *)self _highlightFingers];
    [(HNDHandManager *)self enumerateDisplayManagersWithBlock:&stru_1001D4508];
  }

  [(HNDHandManager *)self _systemPointerSettingsDidChange];
}

- (void)_presentMigrationPopupIfNeeded
{
  if ([(HNDHandManager *)self assistiveTouchMouseDwellControlEnabled])
  {
    v2 = +[AXSettings sharedInstance];
    v3 = [v2 assistiveTouchEnabled];

    if (v3)
    {
      v4 = +[AXSettings sharedInstance];
      v5 = [v4 assistiveTouchMainScreenCustomization];

      v6 = +[AXSettings sharedInstance];
      v7 = [v6 assistiveTouchMainScreenDefaultCustomization];

      v8 = [v5 isEqualToDictionary:v7];
      v9 = +[AXSettings sharedInstance];
      v10 = [v9 assistiveTouchMouseDwellControlMutatedMenu];

      if (!v8 || (v10 & 1) != 0)
      {
        v16 = +[AXSettings sharedInstance];
        v17 = [v16 assistiveTouchMouseDwellControlShowPrompt];

        if (!v17)
        {
          goto LABEL_10;
        }

        v18 = +[AXSettings sharedInstance];
        [v18 setAssistiveTouchMouseDwellControlShowPrompt:0];

        v19 = [v5 allValues];
        v20 = [v19 containsObject:AXAssistiveTouchIconTypeDwell];

        v21 = [v5 allValues];
        v22 = [v21 containsObject:AXAssistiveTouchIconTypeScroll];

        if (v20)
        {
          if (v22)
          {
            goto LABEL_10;
          }
        }

        v23 = (v20 & 1) == 0 && [v5 count] < 8;
        v24 = 19;
        v25 = 20;
        if (v22)
        {
          v26 = 0;
          v27 = v23;
        }

        else
        {
          v28 = [v5 count];
          v29 = 7;
          if (!v23)
          {
            v29 = 8;
          }

          v27 = v28 < v29 || v23;
          v26 = v28 < v29 && v23;
          if (v28 >= v29)
          {
            v25 = 20;
          }

          else
          {
            v25 = 22;
          }

          if (v28 >= v29)
          {
            v24 = 19;
          }

          else
          {
            v24 = 21;
          }
        }

        if (v23)
        {
          v30 = v25;
        }

        else
        {
          v30 = v24;
        }

        v31 = +[AXSpringBoardServer server];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100035C7C;
        v32[3] = &unk_1001D4530;
        v34 = v27;
        v35 = v26;
        v36 = v23;
        v33 = v5;
        [v31 showAlert:v30 withHandler:v32];

        v11 = v33;
      }

      else
      {
        v37[0] = AXAssistiveTouchIconTypeDwell;
        v37[1] = AXAssistiveTouchIconTypeScroll;
        v11 = [NSArray arrayWithObjects:v37 count:2];
        v12 = AXAssistiveTouchInsertIconsIntoDictionary();
        v13 = +[AXSettings sharedInstance];
        [v13 setAssistiveTouchMainScreenCustomization:v12];

        v14 = +[AXSettings sharedInstance];
        [v14 setAssistiveTouchMouseDwellControlMutatedMenu:1];

        v15 = +[AXSettings sharedInstance];
        [v15 setAssistiveTouchMouseDwellControlShowPrompt:0];
      }

LABEL_10:
    }
  }
}

- (void)_setApplicationAccessibilityEnabledIfNeeded
{
  if (!_AXSApplicationAccessibilityEnabled())
  {
    v2 = +[AXSettings sharedInstance];
    v3 = [v2 assistiveTouchMainScreenCustomization];

    v4 = AXAssistiveTouchScrollIcons();
    v5 = [v4 arrayByAddingObject:AXAssistiveTouchIconTypeScroll];

    v6 = [v3 allValues];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100035EF8;
    v10[3] = &unk_1001D4558;
    v7 = v5;
    v11 = v7;
    LOBYTE(v5) = [v6 ax_containsObjectUsingBlock:v10];

    if ((v5 & 1) != 0 || (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 assistiveTouchBubbleModeEnabled], v8, v9))
    {
      _AXSSetAccessibilityEnabled();
      _AXSApplicationAccessibilitySetEnabled();
    }
  }
}

- (BOOL)dwellControlEnabled
{
  v3 = [(HNDHandManager *)self canShowASTMousePointer];
  if (v3)
  {

    LOBYTE(v3) = [(HNDHandManager *)self assistiveTouchMouseDwellControlEnabled];
  }

  return v3;
}

- (BOOL)dwellControlAutorevertEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchMouseDwellControlAutorevertEnabled];

  return v3;
}

- (void)setDwellControlAutorevertEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchMouseDwellControlAutorevertEnabled:v3];
}

- (void)setDwellMode:(unint64_t)a3
{
  if (self->_dwellMode != a3)
  {
    self->_dwellMode = a3;
    [(HNDHandManager *)self enumerateDisplayManagersWithBlock:&stru_1001D4578];
  }
}

- (void)setDwellControlPaused:(BOOL)a3
{
  if (a3)
  {
    [(HNDHandManager *)self specialToolUsageEnded:0];
    [(HNDHandManager *)self setDwellMode:0];

    [(HNDHandManager *)self _fadeFingersAfterDelayIfNeeded];
  }

  else
  {
    if (![(HNDHandManager *)self dwellControlEnabled])
    {
      v4 = +[AXSettings sharedInstance];
      [v4 setAssistiveTouchMouseDwellControlEnabled:1];
    }

    [(HNDHandManager *)self setDwellMode:1];

    [(HNDHandManager *)self _highlightFingers];
  }
}

- (BOOL)_isWaitingForFirstSystemPointerMovement
{
  if (sub_100042C64())
  {
    v3 = [(HNDHandManager *)self deviceManager];
    if (![v3 mainDeviceIsPointer])
    {
      v7 = 0;
LABEL_9:

      return v7;
    }

    v4 = [(HNDHandManager *)self systemPointerController];

    if (v4)
    {
      v3 = [(HNDHandManager *)self systemPointerController];
      [v3 currentSystemPointerPoint];
      v7 = v6 == -1.0 && v5 == -1.0;
      goto LABEL_9;
    }
  }

  return 0;
}

- (CGPoint)currentPointForPointer
{
  v3 = -1.0;
  v4 = -1.0;
  if (sub_100042C64())
  {
    if (![(HNDHandManager *)self shouldHideSystemPointerForFingersView])
    {
      v5 = [(HNDHandManager *)self systemPointerController];
      if (v5)
      {
        v6 = v5;
        v7 = [(HNDHandManager *)self _isWaitingForFirstSystemPointerMovement];

        if ((v7 & 1) == 0)
        {
          v8 = [(HNDHandManager *)self systemPointerController];
          [v8 currentSystemPointerPoint];
          v3 = v9;
          v4 = v10;
        }
      }
    }
  }

  v11 = [(HNDHandManager *)self currentDisplayManager];
  v12 = v11;
  if (v3 == -1.0 && v4 == -1.0)
  {
    v14 = [v11 fingerController];
    if ([v14 numberOfFingers])
    {
      v15 = [v12 fingerController];
      [v15 midpointForFingers];
      v3 = v16;
      v4 = v17;
    }

    else
    {
      v4 = -1.0;
      v3 = -1.0;
    }
  }

  if (v3 == -1.0 && v4 == -1.0)
  {
    [v12 screenPoint];
    v3 = v19;
    v4 = v20;
  }

  v21 = v3;
  v22 = v4;
  result.y = v22;
  result.x = v21;
  return result;
}

- (id)currentHardwareIdentifierForPointer
{
  v2 = [(HNDHandManager *)self systemPointerController];
  v3 = [v2 currentSystemPointerHardwareIdentifier];

  return v3;
}

- (void)handleButtonEvent:(id)a3
{
  v4 = a3;
  v5 = ASTLogMouse();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100128C08(v4, v5);
  }

  [(HNDHandManager *)self cancelDwellTimer];
  v6 = [v4 type];
  if (v6 == 2)
  {
    v7 = 3;
  }

  else
  {
    if ([v4 type] != 1)
    {
      goto LABEL_18;
    }

    v7 = 2;
  }

  v8 = [v4 actionOverride];
  if (![v8 length])
  {
    [v4 buttonNumber];
    v9 = AXAssistiveTouchDefaultIconTypeForMouseButton();

    if (sub_100042C64())
    {
      [v4 buttonNumber];
      v8 = AXAssistiveTouchDefaultLaserIconTypeForMouseButton();
    }

    else
    {
      v8 = v9;
    }
  }

  if ([v4 buttonNumber] > 3)
  {
    v10 = 4;
  }

  else
  {
    v10 = [v4 buttonNumber];
  }

  if (v6 == 2)
  {
    [(HNDHandManager *)self _handleAction:v8 type:v10 state:v7];
    [(HNDHandManager *)self _fadeFingersAfterDelayIfNeeded];
  }

  else
  {
    [(HNDHandManager *)self _highlightFingers];
    [(HNDHandManager *)self _handleAction:v8 type:v10 state:v7];
  }

LABEL_18:
}

- (void)_handleAction:(id)a3 type:(int)a4 state:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v17 = a3;
  if ([v17 isEqualToString:AXAssistiveTouchIconTypeMousePrimaryClick])
  {
    if (![(HNDHandManager *)self dwellControlEnabled]|| [(HNDHandManager *)self dwellControlAutorevertEnabled]|| [(HNDHandManager *)self dwellControlPaused])
    {
      if (sub_100042C64() && ![(HNDHandManager *)self shouldHideSystemPointerForFingersView])
      {
        [(HNDHandManager *)self handleLaserPrimaryButtonPress:v5];
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v12 = self->_currentCustomGesture;
    currentCustomGesture = self->_currentCustomGesture;
    self->_currentCustomGesture = 0;

    if (self->_inDragMode && self->_dragStartPoint.x == -1.0 && self->_dragStartPoint.y == -1.0)
    {
      self->_inDragMode = 0;
      [(HNDHandManager *)self handlePrimaryButtonPress:v5];
      self->_inDragMode = 1;
    }

    else
    {
      [(HNDHandManager *)self handlePrimaryButtonPress:v5];
    }

    v16 = self->_currentCustomGesture;
    self->_currentCustomGesture = v12;
  }

  else
  {
    if ([v17 isEqualToString:AXAssistiveTouchIconTypeDwellClick])
    {
LABEL_9:
      [(HNDHandManager *)self handlePrimaryButtonPress:v5];
      goto LABEL_10;
    }

    if ([v17 isEqualToString:AXAssistiveTouchIconTypeHome])
    {
      [(HNDHandManager *)self handleCustomHomeButtonAction:v5];
      goto LABEL_10;
    }

    if (![v17 isEqualToString:AXAssistiveTouchIconTypeOpenMenu])
    {
      if ([v17 isEqualToString:AXAssistiveTouchIconTypeMouseSecondaryClick])
      {
        if (![(HNDHandManager *)self shouldHideSystemPointerForFingersView])
        {
          [(HNDHandManager *)self handleSecondaryButtonPress:v5];
          goto LABEL_10;
        }

        v14 = AXAssistiveTouchIconTypeLongPress;
        v15 = self;
      }

      else
      {
        v15 = self;
        v14 = v17;
      }

      [(HNDHandManager *)v15 performButtonAction:v14 type:v6 state:v5];
      goto LABEL_10;
    }

    if ([(HNDHandManager *)self inContinuousScrollMode])
    {
      v8 = [(HNDHandManager *)self currentHardwareIdentifierForPointer];
      [(HNDHandManager *)self endContinuousScrollingOnDisplay:v8 withCompletion:0];
    }

    if (v5 == 2)
    {
      v9 = [(HNDHandManager *)self currentHardwareIdentifierForPointer];
      v10 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v9];

      LODWORD(v9) = [v10 isMenuVisible];
      v11 = [(HNDHandManager *)self currentHardwareIdentifierForPointer];
      [(HNDHandManager *)self showMenu:v9 ^ 1 onDisplay:v11];
    }
  }

LABEL_10:
}

- (void)_reallyLiftFingersUpForPotentialTapViaPrimaryButton
{
  v3 = [(HNDHandManager *)self currentDisplayManager];
  v4 = [v3 fingerController];
  [v4 liftFingersUpAnimated:1];

  [(HNDHandManager *)self setIsPendingFingerLiftForPrimaryButtonPressUp:0];
}

- (void)_liftFingersUpForPotentialTapViaPrimaryButton
{
  if ([(HNDHandManager *)self isPendingFingerLiftForPrimaryButtonPressUp])
  {
    v3 = ASTLogMouse();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_100128C80();
    }
  }

  [(HNDHandManager *)self setIsPendingFingerLiftForPrimaryButtonPressUp:0];
  v4 = +[NSDate date];
  v5 = [(HNDHandManager *)self previousPrimaryButtonPressDownDate];

  if (v5)
  {
    v6 = [(HNDHandManager *)self previousPrimaryButtonPressDownDate];
    [v4 timeIntervalSinceDate:v6];
    v8 = v7;

    if (v8 < 0.1)
    {
      [(HNDHandManager *)self setIsPendingFingerLiftForPrimaryButtonPressUp:1];
      AXPerformBlockOnMainThreadAfterDelay();
    }
  }

  if (![(HNDHandManager *)self isPendingFingerLiftForPrimaryButtonPressUp])
  {
    [(HNDHandManager *)self _reallyLiftFingersUpForPotentialTapViaPrimaryButton];
  }
}

- (void)handlePrimaryButtonPress:(int)a3
{
  if ([(HNDHandManager *)self isPendingFingerLiftForPrimaryButtonPressUp])
  {
    [(HNDHandManager *)self _reallyLiftFingersUpForPotentialTapViaPrimaryButton];
  }

  v34 = [(HNDHandManager *)self currentHardwareIdentifierForPointer];
  v5 = [(HNDHandManager *)self currentDisplayManager];
  v6 = [v5 fingerController];
  if (a3 == 3)
  {
    if (self->_hotCornerLocked)
    {
      v10 = [v5 fingerController];
      v11 = [v10 fingerModels];
      v12 = [v11 objectAtIndexedSubscript:0];
      [v12 location];
      [v5 convertToNormalizedInterfaceOrientation:?];
      v14 = v13;
      v16 = v15;

      v17 = [(HNDHandManager *)self _hotCornerForNormalizedPoint:v34 onDisplay:v14, v16];
      if (v17)
      {
        [(HNDHandManager *)self _performActionForHotCorner:v17 onDisplay:v34];
      }
    }

    else if ([(HNDHandManager *)self inPinchMode])
    {
      if (self->_pinchState == 1)
      {
        self->_pinchState = 2;
        goto LABEL_22;
      }

      self->_pinchState = 0;
      if ([(HNDHandManager *)self dwellControlEnabled])
      {
        [v5 updateNubbitForegroundImageForAction:AXAssistiveTouchIconTypeDwellClick];
        v24 = [v5 fingerController];
        [v24 liftFingersUpAnimated:0];

        v25 = [v5 fingerController];
        [v25 midpointForFingers];
        v27 = v26;
        v29 = v28;

        [(HNDHandManager *)self removeFingersToPoint:v34 onDisplay:v27, v29];
        [(HNDHandManager *)self resetFingersToPoint:v34 onDisplay:1 active:v27, v29];
      }

      else
      {
        [(HNDHandManager *)self resetPinchFingersOnDisplay:v34];
        v30 = [v5 fingerController];
        [v30 liftFingersUpAnimated:1];
      }
    }

    else
    {
      if (self->_continuousPathGestureState == 2)
      {
        goto LABEL_22;
      }

      if ([(HNDHandManager *)self inBubbleMode]&& [(HNDHandManager *)self currentlySnappedInBubbleMode]&& !self->_wasExistingGestureEndedScrollAction)
      {
        [(HNDHandManager *)self activateCurrentBubbleModeFocusedElement];
      }

      else if (![(HNDHandManager *)self inDragMode])
      {
        [(HNDHandManager *)self _liftFingersUpForPotentialTapViaPrimaryButton];
      }
    }

    if (-[HNDHandManager dwellControlEnabled](self, "dwellControlEnabled") && ([v5 isMenuVisible] & 1) == 0 && !-[HNDHandManager inDragMode](self, "inDragMode") && !-[HNDHandManager inContinuousScrollMode](self, "inContinuousScrollMode"))
    {
      [(HNDHandManager *)self _resetDwellModeToDefault];
    }

    [(HNDHandManager *)self _resetMenuOpenTracker];
    self->_primaryButtonDown = 0;
    self->_wasExistingGestureEndedScrollAction = 0;
  }

  else if (a3 == 2)
  {
    if (-[HNDHandManager isVirtualTrackpadVisible](self, "isVirtualTrackpadVisible") && -[HNDHandManager inBubbleMode](self, "inBubbleMode") && [v5 shouldHideBubbleModeForVirtualTrackpad])
    {
      [(HNDHandManager *)self bubbleModeFailedToSnapOnDisplay:v34];
    }

    v7 = +[AXOutputManager sharedOutputManager];
    [v7 playMouseClickSound];

    if (!self->_hotCornerLocked)
    {
      if ([(HNDHandManager *)self inCustomGesture])
      {
        v8 = [(HNDHandManager *)self currentHardwareIdentifierForPointer];
        [(HNDHandManager *)self _performCustomGestureOnDisplay:v8];

        goto LABEL_12;
      }

      if ([(HNDHandManager *)self inPinchMode])
      {
        if (self->_pinchState != 2)
        {
          v18 = [v6 fingerModels];
          v19 = [v18 count];

          if (v19 != 2)
          {
            _AXAssert();
          }

          v20 = [v6 fingerModels];
          v21 = [v20 count];

          if (v21 != 2)
          {
            goto LABEL_12;
          }

          v22 = [v6 fingerModels];
          v23 = [v22 objectAtIndexedSubscript:0];
          [v23 location];
          if ([(HNDHandManager *)self _isInNubbitHitbox:v34 onDisplay:?])
          {
          }

          else
          {
            v31 = [v6 fingerModels];
            v32 = [v31 objectAtIndexedSubscript:1];
            [v32 location];
            v33 = [(HNDHandManager *)self _isInNubbitHitbox:v34 onDisplay:?];

            if (!v33)
            {
              [(HNDHandManager *)self setCaptureEvents:1];
              [v6 pressFingersDownAnimated:1];
              self->_pinchState = 1;
              goto LABEL_12;
            }
          }

          [(HNDHandManager *)self showMenu:1 onDisplay:v34];
LABEL_12:
          [(HNDHandManager *)self _resetMenuOpenTracker];
          self->_primaryButtonDown = 1;
          v9 = +[NSDate date];
          [(HNDHandManager *)self setPreviousPrimaryButtonPressDownDate:v9];
        }
      }

      else
      {
        if ([(HNDHandManager *)self inDragMode])
        {
          [(HNDHandManager *)self currentPointForPointer];
          if (self->_dragStartPoint.x == -1.0 && self->_dragStartPoint.y == -1.0)
          {
            [(HNDHandManager *)self beginDragAtPoint:v34 onDisplay:?];
          }

          else
          {
            [(HNDHandManager *)self endDragModeAtPoint:v34 onDisplay:1 completed:?];
          }

          goto LABEL_12;
        }

        if ([(HNDHandManager *)self inContinuousScrollMode])
        {
          [(HNDHandManager *)self endContinuousScrollingOnDisplay:v34 withCompletion:0];
          goto LABEL_12;
        }

        if (![(HNDHandManager *)self _continuousPathGestureHandlePress])
        {
          if (![(HNDHandManager *)self currentlySnappedInBubbleMode])
          {
            [v6 pressFingersDownAnimated:1];
          }

          goto LABEL_12;
        }
      }
    }
  }

LABEL_22:
}

- (void)handleMultiTouchStandard:(int64_t)a3 onDisplay:(id)a4 withExistingFingerMidPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a4;
  self->_inMultiFingerGesture = 1;
  [(HNDHandManager *)self showMenu:0 onDisplay:v9];
  v10 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v9];
  v11 = [v10 fingerController];
  v12 = [v11 fingerContainerView];
  [v12 bounds];
  v17 = [AXPIFingerUtilities defaultLocationsForNumberOfFingers:a3 aroundPoint:x withinBounds:y, v13, v14, v15, v16];

  v18 = CGPointZero.y;
  if (x == CGPointZero.x && y == v18)
  {
    AX_CGPointGetMidpointOfAllPoints();
    v23 = v22;
    v25 = v24;
    v26 = [v10 fingerController];
    v27 = [v26 fingerContainerView];
    [v27 bounds];
    AX_CGRectGetCenter();
    v29 = v28;
    v31 = v30;

    width = v29 - v23;
    height = v31 - v25;
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  v32 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v17 count]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v33 = v17;
  v34 = [v33 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v42;
    do
    {
      v37 = 0;
      do
      {
        if (*v42 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = CGPointFromString(*(*(&v41 + 1) + 8 * v37));
        v39 = [AXPIFingerModel fingerModelForLocation:width + v38.x, height + v38.y, v41];
        [v32 addObject:v39];

        v37 = v37 + 1;
      }

      while (v35 != v37);
      v35 = [v33 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v35);
  }

  v40 = [v10 fingerController];
  [v40 showFingerModels:v32 animated:1 startPointForAnimation:{CGPointZero.x, v18}];

  [v10 setMultiTouchToolBackgroundEnabled:1];
}

- (void)prepareScrollAtPoint:(CGPoint)a3 onDisplay:(id)a4 vertical:(BOOL)a5 forward:(BOOL)a6 max:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  y = a3.y;
  x = a3.x;
  v13 = a4;
  v16 = [(HNDHandManager *)self _scrollFallbackGestureAtPoint:v13 onDisplay:v9 vertical:v8 forward:v7 max:x, y];
  [HNDHandManager prepareGesture:"prepareGesture:onDisplay:" onDisplay:?];

  if (v9 && v7)
  {
    if (v8)
    {
      v14 = 2031;
    }

    else
    {
      v14 = 2030;
    }
  }

  else
  {
    if (v8)
    {
      v14 = 2009;
    }

    else
    {
      v14 = 2008;
    }

    if (v8)
    {
      v15 = 2006;
    }

    else
    {
      v15 = 2007;
    }

    if (v9)
    {
      v14 = v15;
    }
  }

  self->_preparedScrollAction = v14;
}

- (BOOL)_performAXScrollActionAtPoint:(CGPoint)a3 onDisplay:(id)a4 action:(int)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  if (self->_shouldSkipElementFetchForAXScroll)
  {
    v10 = 0;
  }

  else
  {
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100037488;
    v34[3] = &unk_1001D4598;
    v35 = a5;
    v11 = objc_retainBlock(v34);
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v12 = dispatch_semaphore_create(0);
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100037578;
    v24 = &unk_1001D45C0;
    v27 = &v30;
    v13 = v11;
    v26 = v13;
    v28 = x;
    v29 = y;
    v14 = v12;
    v25 = v14;
    v15 = dispatch_block_create(0, &v21);
    if (qword_100218A00 != -1)
    {
      sub_100128CB4();
    }

    if ([(HNDHandManager *)self isVirtualTrackpadVisible:v21])
    {
      v16 = &_dispatch_main_q;
      v17 = &_dispatch_main_q;
    }

    else
    {
      v16 = qword_1002189F8;
    }

    dispatch_async(v16, v15);
    v18 = dispatch_time(0, 100000000);
    if (dispatch_semaphore_wait(v14, v18))
    {
      dispatch_block_cancel(v15);
      self->_shouldSkipElementFetchForAXScroll = 1;
      v19 = ASTLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100128CDC();
      }
    }

    v10 = *(v31 + 24);

    _Block_object_dispose(&v30, 8);
  }

  return v10 & 1;
}

- (double)_scrollDeltaForGesture:(BOOL)a3 screenSize:(CGSize)a4
{
  if (a3)
  {
    a4.width = a4.height;
  }

  return a4.width * 0.75;
}

- (id)_scrollFallbackGestureAtPoint:(CGPoint)a3 onDisplay:(id)a4 vertical:(BOOL)a5 forward:(BOOL)a6 max:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  y = a3.y;
  x = a3.x;
  v13 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:a4];
  [v13 screenBounds];
  v15 = v14;
  [(HNDHandManager *)self _scrollDeltaForGesture:v9 screenSize:v14, v16];
  if (v8)
  {
    v17 = -v17;
  }

  if (v9)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v17;
  }

  v19 = x + v18;
  if (v9)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = [v13 orientation];
  if (((AXDeviceIsPhone() & 1) != 0 || AXDeviceIsPod()) && !v9)
  {
    v22 = 0.0;
    if (v8)
    {
      v22 = v15;
    }

    if (v21 == 2)
    {
      v19 = v22;
    }
  }

  v23 = y + v20;
  if (v9 && v7)
  {
    v24 = [AXNamedReplayableGesture flickGestureStartingAtPoint:1 endingAtPoint:x numberOfFingers:y, v19, v23];
  }

  else
  {
    v24 = [AXNamedReplayableGesture scrollGestureFromPoint:x toPoint:y duration:v19, v23, 0.5];
  }

  v25 = v24;

  return v25;
}

- (void)startPinchModeWithPoint:(CGPoint)a3 onDisplay:(id)a4 mode:(unint64_t)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  [(HNDHandManager *)self pauseBubbleModeForSpecialUsageTool];
  [(HNDHandManager *)self pauseEyeTrackingAutoHideForSpecialUsageTool];
  self->_pinchMode = a5;
  [(HNDHandManager *)self showMenu:0 onDisplay:v9];
  v11 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v9];

  v10 = [v11 fingerController];
  [v10 showPinchFingersAnimated:0 midpoint:{x, y}];

  [(HNDHandManager *)self setDwellMode:1];
  self->_pinchRotatePreviousPoint = HNDPointNull;
  [v11 setMultiTouchToolBackgroundEnabled:1];
}

- (void)notifyUserEventOccurred
{
  v2 = [(HNDHandManager *)self eventManager];
  [v2 notifyUserEventOccurred];
}

- (void)menuExitedOnDisplay:(id)a3
{
  v4 = a3;
  v5 = [(HNDHandManager *)self eventManager];
  [v5 manipulateDimTimer:0];

  v6 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v4];

  [v6 showMenu:0];
  if ([(HNDHandManager *)self dwellControlEnabled]&& [(HNDHandManager *)self dwellControlPaused])
  {

    [(HNDHandManager *)self cancelDwellTimer];
  }
}

- (BOOL)canShowASTMousePointer
{
  if (!_AXSAssistiveTouchEnabled() || UIAccessibilityIsSwitchControlRunning())
  {
    goto LABEL_3;
  }

  v4 = [(HNDHandManager *)self deviceManager];
  v5 = [v4 mainDeviceIsPointer];

  if ([(HNDHandManager *)self isOnDeviceEyeTrackingEnabled])
  {
    v6 = [(HNDHandManager *)self deviceManager];
    v5 = [v6 mainDeviceIsOnDeviceEyeTracker];
  }

  v7 = sub_100042C64();
  v8 = (v7 ^ 1) & v5;
  if (((v7 ^ 1) & 1) == 0 && v5)
  {
    if ([(HNDHandManager *)self assistiveTouchMouseDwellControlEnabled])
    {
      v8 = 1;
    }

    else
    {
      v8 = [(HNDHandManager *)self mouseBehavesLikeFinger];
    }
  }

  v9 = [(HNDHandManager *)self deviceManager];
  if ([v9 hidDeviceIsConfiguring])
  {

LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  v10 = [(HNDHandManager *)self deviceManager];
  v11 = [v10 hidDeviceSentReservedStatus];

  if (v11)
  {
    goto LABEL_16;
  }

LABEL_17:
  v12 = [(HNDHandManager *)self mainDisplayManager];
  v13 = [v12 isShowingCalibrationUI];

  if (!v13 && (v8 & 1) != 0)
  {
    return 1;
  }

LABEL_3:

  return [(HNDHandManager *)self isVirtualTrackpadVisible];
}

- (BOOL)isFingersPressedDown
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100037B68;
  v4[3] = &unk_1001D3DB8;
  v4[4] = &v5;
  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)resetFingersIfNeeded
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100037D00;
  v2[3] = &unk_1001D36C0;
  v2[4] = self;
  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v2];
}

- (void)resetFingersIfNeededOnDisplay:(id)a3
{
  v4 = a3;
  if (![(HNDHandManager *)self usingSpecialTool]&& ![(HNDHandManager *)self inCustomGesture])
  {
    [(HNDHandManager *)self resetFingersToPoint:v4 onDisplay:-1.0, -1.0];
  }
}

- (void)resetFingersIfActiveOnDisplay:(id)a3
{
  v8 = a3;
  v4 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:?];
  if ([v4 fingerContentViewIsActive])
  {
  }

  else
  {
    v5 = [(HNDHandManager *)self deviceManager];
    v6 = [v5 mainDeviceIsPointer];

    v7 = v8;
    if (v6)
    {
      goto LABEL_5;
    }
  }

  [(HNDHandManager *)self resetFingersToPoint:v8 onDisplay:-1.0, -1.0];
  v7 = v8;
LABEL_5:
}

- (void)resetFingersToPoint:(CGPoint)a3 onDisplay:(id)a4 active:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  x = a3.x;
  v9 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:a4];
  v10 = x == -1.0 && y == -1.0;
  if (v10 && (([(HNDHandManager *)self currentPointForPointer], x = v11, y = v12, [(HNDHandManager *)self systemPointerController], v13 = objc_claimAutoreleasedReturnValue(), v13, v14 = [(HNDHandManager *)self _isWaitingForFirstSystemPointerMovement], !v13) ? (v15 = 1) : (v15 = v14), _AXSAssistiveTouchEnabled() && !UIAccessibilityIsSwitchControlRunning() && (sub_100042C64() & v15) == 1 && [(HNDHandManager *)self shouldHideSystemPointerForFingersView]))
  {
    if (qword_100218A08 != -1)
    {
      sub_100128D50();
    }
  }

  else
  {
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_1000381C4;
    v31 = &unk_1001D4628;
    v16 = v9;
    v32 = v16;
    v33 = self;
    v17 = objc_retainBlock(&v28);
    if (![(HNDHandManager *)self shouldHideSystemPointerForFingersView:v28]|| (v17[2])(v17, x, y))
    {
      v18 = [v16 fingerController];
      [v18 clearAllFingersAnimated:1 endPointForAnimation:{x, y}];

      self->_primaryButtonDown = 0;
    }

    if ((v17[2])(v17, x, y))
    {
      v19 = [(HNDHandManager *)self deviceManager];
      if ([v19 hidDeviceIsConfiguring])
      {
      }

      else
      {
        v20 = [(HNDHandManager *)self deviceManager];
        v21 = [v20 hidDeviceSentReservedStatus];

        if ((v21 & 1) == 0)
        {
          v22 = [(HNDHandManager *)self mainDisplayManager];
          v23 = [v22 isShowingCalibrationUI];

          if ((v23 & 1) == 0)
          {
            [v16 setFingerContentViewIsActive:v5];
            v24 = [v16 fingerController];
            v25 = [AXPIFingerModel fingerModelForLocation:x, y];
            v34 = v25;
            v26 = [NSArray arrayWithObjects:&v34 count:1];
            [v24 showFingerModels:v26 animated:1 startPointForAnimation:{x, y}];

            [v16 updateWithPrimaryFingerPoint:{x, y}];
            if ([(HNDHandManager *)self dwellControlEnabled])
            {
              [(HNDHandManager *)self _resetDwellDueToFingersReset];
            }
          }
        }
      }
    }

    [v16 setMultiTouchToolBackgroundEnabled:0];
    if (sub_100042C64())
    {
      v27 = [(HNDHandManager *)self systemPointerController];
      [v27 hideSystemPointer:{-[HNDHandManager shouldHideSystemPointerForFingersView](self, "shouldHideSystemPointerForFingersView")}];
    }
  }
}

- (void)removeFingersToPoint:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:a4];
  v8 = [v7 fingerController];
  [v8 clearAllFingersAnimated:1 endPointForAnimation:{x, y}];

  self->_primaryButtonDown = 0;
}

- (void)reloadFingerAppearance
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10003836C;
  v2[3] = &unk_1001D36C0;
  v2[4] = self;
  [(HNDHandManager *)self enumerateDisplayManagersWithBlock:v2];
}

- (CGPoint)preferredMenuDisplayPointOnDisplay:(id)a3
{
  v4 = a3;
  v5 = [(HNDHandManager *)self deviceManager];
  v6 = [v5 deviceCount];

  if (v6)
  {
    v7 = [(HNDHandManager *)self deviceManager];
    v8 = [v7 mainDeviceIsMotionTracker];

    if (!v8)
    {
      if (sub_100042C64())
      {
        v11 = [(HNDHandManager *)self systemPointerController];
        if (v11)
        {
          v12 = v11;
          v13 = [(HNDHandManager *)self deviceManager];
          if ([v13 mainDeviceIsPointer])
          {
            v14 = [(HNDHandManager *)self shouldHideSystemPointerForFingersView];

            if ((v14 & 1) == 0)
            {
              v15 = [(HNDHandManager *)self systemPointerController];
              [v15 currentSystemPointerPoint];
              x = v16;
              y = v17;
LABEL_15:

              goto LABEL_16;
            }
          }

          else
          {
          }
        }
      }

      v15 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v4];
      v18 = [v15 fingerController];
      if ([v18 numberOfFingers])
      {
        v19 = [v15 fingerContentViewIsActive];

        if (v19)
        {
          v20 = [v15 fingerController];
          [v20 hndMenuPointForFingerLayout];
          x = v21;
          y = v22;

          goto LABEL_15;
        }
      }

      else
      {
      }

      x = CGPointZero.x;
      y = CGPointZero.y;
      goto LABEL_15;
    }
  }

  x = CGPointZero.x;
  y = CGPointZero.y;
LABEL_16:

  v23 = x;
  v24 = y;
  result.y = v24;
  result.x = v23;
  return result;
}

- (void)performButtonAction:(id)a3 type:(int)a4 state:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v11 = a3;
  v8 = [(HNDHandManager *)self currentDisplayManager];
  v9 = v8;
  if (self->_primaryButtonDown)
  {
    v10 = [v8 fingerController];
    [v10 liftFingersUpAnimated:1];

    self->_primaryButtonDown = 0;
  }

  if (v5 == 2)
  {
    [v9 activateAssistiveTouchAction:v11 fromButtonPress:1];
  }

  else
  {
    [v9 performPress:v5 type:v6];
  }
}

- (void)handleCustomHomeButtonAction:(int)a3
{
  v4 = +[AXPISystemActionHelper sharedInstance];
  v5 = v4;
  if (a3 == 2)
  {
    [v4 pressHomeButtonDown];
  }

  else
  {
    [v4 liftHomeButtonUp];
  }
}

- (void)rotateEventToOrientation:(id)a3
{
  v4 = a3;
  orientation = self->_orientation;
  if (orientation == 4)
  {
    v13 = v4;
    [v4 deltaY];
    v8 = v11;
    [v13 deltaX];
    v10 = -v12;
    goto LABEL_7;
  }

  if (orientation == 3)
  {
    v13 = v4;
    [v4 deltaY];
    v8 = -v9;
    [v13 deltaX];
LABEL_7:
    [v13 setDeltaY:v10];
    goto LABEL_8;
  }

  if (orientation != 2)
  {
    goto LABEL_9;
  }

  v13 = v4;
  [v4 deltaY];
  [v13 setDeltaY:-v6];
  [v13 deltaX];
  v8 = -v7;
LABEL_8:
  [v13 setDeltaX:v8];
  v4 = v13;
LABEL_9:
}

- (double)volumeLevel
{
  v2 = [(HNDHandManager *)self eventManager];
  [v2 volumeLevel];
  v4 = v3;

  return v4;
}

- (BOOL)isVoiceControlRunning
{
  v2 = [(HNDHandManager *)self eventManager];
  v3 = [v2 isVoiceControlRunning];

  return v3;
}

- (CGPoint)rotateNormalizedPointToOrientation:(CGPoint)result
{
  orientation = self->_orientation;
  if (orientation == 4)
  {
    y = result.y;
    result.y = result.x;
  }

  else if (orientation == 3)
  {
    y = result.y;
    result.y = 1.0 - result.x;
  }

  else
  {
    y = result.x;
    if (orientation == 2)
    {
      result.y = 1.0 - result.y;
      y = 1.0 - result.x;
    }
  }

  v5 = y;
  result.x = v5;
  return result;
}

- (CGPoint)rotateEventFromOrientation:(CGPoint)a3
{
  x = a3.x;
  orientation = self->_orientation;
  v5 = -a3.y;
  if (orientation != 4)
  {
    v6 = -x;
    if (orientation == 2)
    {
      x = -x;
      y = -a3.y;
    }

    else
    {
      y = a3.y;
    }

    if (orientation == 3)
    {
      v5 = a3.y;
    }

    else
    {
      v5 = x;
    }

    if (orientation == 3)
    {
      x = v6;
    }

    else
    {
      x = y;
    }
  }

  v8 = x;
  result.y = v8;
  result.x = v5;
  return result;
}

- (void)showMenu:(BOOL)a3 onDisplay:(id)a4
{
  v4 = a3;
  v5 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:a4];
  [v5 showMenu:v4];
}

- (id)fingerController
{
  if (!UIAccessibilityIsSwitchControlRunning())
  {
    _AXAssert();
  }

  v3 = [(HNDHandManager *)self mainDisplayManager];
  v4 = [v3 fingerController];

  return v4;
}

- (CGPoint)_fingerControllerPointForScreenPoint:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:a4];
  v7 = [v6 fingerController];

  v8 = [v7 fingerContainerView];
  v9 = [v7 fingerContainerView];
  v10 = [v9 window];
  [v10 convertPoint:0 fromWindow:{x, y}];
  [v8 convertPoint:0 fromView:?];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (void)performFingerDownAtPoint:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v13 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v7];
  v8 = [v13 fingerController];
  [(HNDHandManager *)self _fingerControllerPointForScreenPoint:v7 onDisplay:x, y];
  v10 = v9;
  v12 = v11;

  [v8 performDownAtPoint:{v10, v12}];
}

- (void)performFingerMoveToPoint:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v13 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v7];
  v8 = [v13 fingerController];
  [(HNDHandManager *)self _fingerControllerPointForScreenPoint:v7 onDisplay:x, y];
  v10 = v9;
  v12 = v11;

  [v8 performMoveToPoint:{v10, v12}];
}

- (void)performFingerUpAtPoint:(CGPoint)a3 onDisplay:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v13 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v7];
  v8 = [v13 fingerController];
  [(HNDHandManager *)self _fingerControllerPointForScreenPoint:v7 onDisplay:x, y];
  v10 = v9;
  v12 = v11;

  [v8 performUpAtPoint:{v10, v12}];
}

- (CGPoint)startPointForDrag
{
  x = self->_dragStartPoint.x;
  y = self->_dragStartPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (double)_fingerRadiusOnDisplay:(id)a3
{
  v3 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:a3];
  v4 = [v3 fingerController];

  if (sub_100042C64())
  {
    v5 = [v4 appearanceDelegate];
    [v5 fingerInnerRadius];
    v7 = v6;
    v8 = [v4 appearanceDelegate];
    [v8 strokeWidth];
    v10 = v7 + v9 * 0.5;
  }

  else
  {
    v11 = +[AXSettings sharedInstance];
    [v11 assistiveTouchMousePointerSizeMultiplier];
    v13 = v12;

    v14 = [v4 appearanceDelegate];
    [v14 fingerInnerRadius];
    v16 = v15;
    v17 = [v4 appearanceDelegate];
    [v17 strokeWidth];
    v19 = v16 + v18 * 0.5;

    v10 = v13 * v19;
  }

  return v10;
}

- (BOOL)_requiresLargeSystemPointer
{
  if (![(HNDHandManager *)self canShowASTMousePointer]|| UIAccessibilityIsSwitchControlRunning() || [(HNDHandManager *)self usingSpecialTool]|| [(HNDHandManager *)self inCustomGesture])
  {
    return 1;
  }

  v5 = [(HNDHandManager *)self currentDisplayManager];
  v6 = [v5 fingerController];
  if ([v6 numberOfFingers] <= 1)
  {
    v3 = [(HNDHandManager *)self dwellControlEnabled];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (id)currentFingerAppearance
{
  if (sub_100042C64())
  {
    if ([(HNDHandManager *)self currentlySnappedInBubbleMode])
    {
      v3 = 136;
      goto LABEL_12;
    }

    if ([(HNDHandManager *)self dwellControlEnabled]&& ![(HNDHandManager *)self shouldHideSystemPointerForFingersView])
    {
      v3 = 104;
      goto LABEL_12;
    }

    v4 = ![(HNDHandManager *)self _requiresLargeSystemPointer];
    v3 = 112;
    v5 = 120;
  }

  else
  {
    if ([(HNDHandManager *)self dwellControlEnabled])
    {
      v3 = 96;
      goto LABEL_12;
    }

    v4 = ![(HNDHandManager *)self dwellControlEnabled];
    v3 = 96;
    v5 = 104;
  }

  if (!v4)
  {
    v3 = v5;
  }

LABEL_12:
  v6 = *(&self->super.isa + v3);

  return v6;
}

- (id)selectedFillColor
{
  v2 = [(HNDHandManager *)self currentFingerAppearance];
  v3 = [v2 selectedFillColor];

  return v3;
}

- (id)deselectedFillColor
{
  v2 = [(HNDHandManager *)self currentFingerAppearance];
  v3 = [v2 deselectedFillColor];

  return v3;
}

- (id)selectedStrokeColor
{
  v2 = [(HNDHandManager *)self currentFingerAppearance];
  v3 = [v2 selectedStrokeColor];

  return v3;
}

- (id)deselectedStrokeColor
{
  v2 = [(HNDHandManager *)self currentFingerAppearance];
  v3 = [v2 deselectedStrokeColor];

  return v3;
}

- (id)strokeOutlineColor
{
  v2 = [(HNDHandManager *)self currentFingerAppearance];
  v3 = [v2 strokeOutlineColor];

  return v3;
}

- (id)circularProgressFillColor
{
  v2 = [(HNDHandManager *)self currentFingerAppearance];
  v3 = [v2 circularProgressFillColor];

  return v3;
}

- (id)pressedCircularProgressFillColor
{
  v2 = [(HNDHandManager *)self currentFingerAppearance];
  v3 = [v2 pressedCircularProgressFillColor];

  return v3;
}

- (BOOL)useSystemFilters
{
  v2 = [(HNDHandManager *)self currentFingerAppearance];
  v3 = [v2 useSystemFilters];

  return v3;
}

- (double)pressedAlpha
{
  v2 = [(HNDHandManager *)self currentFingerAppearance];
  [v2 pressedAlpha];
  v4 = v3;

  return v4;
}

- (double)unpressedAlpha
{
  v2 = [(HNDHandManager *)self currentFingerAppearance];
  [v2 unpressedAlpha];
  v4 = v3;

  return v4;
}

- (double)pressedScale
{
  v2 = [(HNDHandManager *)self currentFingerAppearance];
  [v2 pressedScale];
  v4 = v3;

  return v4;
}

- (double)unpressedScale
{
  v2 = [(HNDHandManager *)self currentFingerAppearance];
  [v2 unpressedScale];
  v4 = v3;

  return v4;
}

- (double)strokeWidth
{
  v2 = [(HNDHandManager *)self currentFingerAppearance];
  [v2 strokeWidth];
  v4 = v3;

  return v4;
}

- (double)strokeOutlineWidth
{
  v2 = [(HNDHandManager *)self currentFingerAppearance];
  [v2 strokeOutlineWidth];
  v4 = v3;

  return v4;
}

- (double)innerCircleStrokeWidth
{
  v2 = [(HNDHandManager *)self currentFingerAppearance];
  [v2 innerCircleStrokeWidth];
  v4 = v3;

  return v4;
}

- (double)fingerInnerRadius
{
  v2 = [(HNDHandManager *)self currentFingerAppearance];
  [v2 fingerInnerRadius];
  v4 = v3;

  return v4;
}

- (BOOL)showFingerOutlines
{
  v2 = [(HNDHandManager *)self currentFingerAppearance];
  v3 = [v2 showFingerOutlines];

  return v3;
}

- (double)fingerInnerCircleInnerRadius
{
  v2 = [(HNDHandManager *)self currentFingerAppearance];
  [v2 fingerInnerCircleInnerRadius];
  v4 = v3;

  return v4;
}

- (BOOL)showInnerCircle
{
  v2 = [(HNDHandManager *)self currentFingerAppearance];
  v3 = [v2 showInnerCircle];

  return v3;
}

- (double)fingerWidth
{
  v2 = [(HNDHandManager *)self currentFingerAppearance];
  [v2 fingerWidth];
  v4 = v3;

  return v4;
}

- (HNDDisplayManager)mainDisplayManager
{
  v2 = [(HNDHandManager *)self displayManagers];
  v3 = [v2 axFirstObjectsUsingBlock:&stru_1001D4708];

  return v3;
}

- (HNDDisplayManager)currentDisplayManager
{
  v3 = [(HNDHandManager *)self currentHardwareIdentifierForPointer];
  v4 = [(HNDHandManager *)self displayManagerForHardwareIdentifier:v3];

  return v4;
}

- (id)displayManagerForHardwareIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HNDHandManager *)self displayManagers];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100039624;
  v12[3] = &unk_1001D4730;
  v13 = v4;
  v6 = v4;
  v7 = [v5 axFirstObjectsUsingBlock:v12];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(HNDHandManager *)self mainDisplayManager];
  }

  v10 = v9;

  return v10;
}

- (void)enumerateDisplayManagersWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(HNDHandManager *)self displayManagers];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039714;
  v7[3] = &unk_1001D4758;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (id)displayManagerForDisplayId:(unsigned int)a3
{
  v4 = [(HNDHandManager *)self displayManagers];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000397C8;
  v7[3] = &unk_1001D4778;
  v8 = a3;
  v5 = [v4 axFirstObjectsUsingBlock:v7];

  return v5;
}

- (CGPoint)eyeTrackingAutotHideLastPointCursorShowed
{
  x = self->_eyeTrackingAutotHideLastPointCursorShowed.x;
  y = self->_eyeTrackingAutotHideLastPointCursorShowed.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)lastSelectedKeyboardSlidePoint
{
  x = self->_lastSelectedKeyboardSlidePoint.x;
  y = self->_lastSelectedKeyboardSlidePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (double)screenFrame:
{
  if ((AXDeviceIsPad() & 1) != 0 || AXDeviceIsPhone())
  {
    v0 = +[UIDevice currentDevice];
    v1 = [v0 orientation];

    if (!v1)
    {
      return CGRectZero.origin.x;
    }
  }

  IsSwitchControlRunning = UIAccessibilityIsSwitchControlRunning();
  v3 = +[HNDHandManager sharedManager];
  v4 = [v3 currentDisplayManager];
  v5 = v4;
  if (IsSwitchControlRunning)
  {
    [v4 portraitUpScreenBounds];
  }

  else
  {
    [v4 screenBounds];
  }

  v7 = v6;

  return v7;
}

@end