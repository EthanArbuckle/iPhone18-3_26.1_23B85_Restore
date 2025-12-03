@interface HNDDisplayManager
- (ASTUIGazePointDelegate)gazePointManager;
- (BOOL)_nubbitIsOverKeyboard:(CGRect)keyboard;
- (BOOL)_position:(CGPoint)_position isOverKeyboard:(CGRect)keyboard;
- (BOOL)_shouldRunAutoHideFingersTimer;
- (BOOL)_shouldSetFingerContentViewToActive:(BOOL)active;
- (BOOL)_shouldShowLargeContentViewer;
- (BOOL)bubbleCursorIsActive;
- (BOOL)handleRealEvent:(id)event;
- (BOOL)hoverMovedToNormalizedPoint:(CGPoint)point shouldUpdateCurrentPoint:(BOOL)currentPoint;
- (BOOL)inBubbleMode;
- (BOOL)inNubbitMode;
- (BOOL)isMenuVisible;
- (BOOL)shouldHideBubbleModeForVirtualTrackpad;
- (BOOL)shouldHideCursorsEyeTrackingAutoHide;
- (BOOL)shouldPassThroughVirtualTrackpad:(unint64_t)trackpad;
- (BOOL)visualsHidden;
- (CGAffineTransform)_transformForOrientation;
- (CGPoint)_adjustPositionForDisplayCornerRadius:(CGPoint)radius;
- (CGPoint)_layoutPointForPoint:(CGPoint)point screenBounds:(CGRect)bounds;
- (CGPoint)_menuPointForFingerLayout;
- (CGPoint)_nubbitPointForEdgePosition;
- (CGPoint)_nubbitPositionForKeyboardFrame:(CGRect)frame;
- (CGPoint)_rotatedNormalizedInitialPoint;
- (CGPoint)_testingRockerPosition;
- (CGPoint)_validateNubbitPosition:(CGPoint)position forKeyboard:(BOOL)keyboard;
- (CGPoint)closestNubbitPositionForPoint:(CGPoint)point offsetByMidpoint:(BOOL)midpoint;
- (CGPoint)convertPoint:(CGPoint)point fromOrientation:(int)orientation;
- (CGPoint)convertPointToInterfaceOrientation:(CGPoint)orientation;
- (CGPoint)convertPointToPortraitUpOrientation:(CGPoint)orientation;
- (CGPoint)convertToNormalizedInterfaceOrientation:(CGPoint)orientation;
- (CGPoint)normalizedPointForDifference:(CGPoint)difference;
- (CGPoint)nubbitPositionForFlick:(CGPoint)flick;
- (CGPoint)point;
- (CGPoint)screenPoint;
- (CGPoint)zoomConvertToReplicatedViewFromTargetPoint:(CGPoint)point;
- (CGRect)convertFrameToInterfaceOrientation:(CGRect)orientation;
- (CGRect)foreheadRect;
- (CGRect)keyboardFrame;
- (CGRect)orientedContinuousScrollViewFrameForScrollViewFrame:(CGRect)frame;
- (CGRect)portraitUpScreenBounds;
- (CGRect)rockerFrame;
- (CGRect)screenBounds;
- (CGRect)screenBoundsForRockerButton:(id)button;
- (HNDDisplayManager)initWithWindow:(id)window ignoredWindow:(id)ignoredWindow trackpadWindow:(id)trackpadWindow;
- (HNDHandManager)handManager;
- (UIEdgeInsets)safeAreaInsets;
- (double)_currentRockerTranslateY;
- (double)_iconScaleForForce:(double)force;
- (double)_idleTime;
- (double)_rotationDegreesForOrientation:(int)orientation;
- (double)_xNubbitPadding:(double)padding x:(double)x;
- (double)_yNubbitPadding:(double)padding y:(double)y;
- (id)_itemForButton:(id)button;
- (id)activeRocker;
- (id)viewAtDisplayPoint:(CGPoint)point downPoint:(CGPoint *)downPoint window:(id)window;
- (int)_angleForDegrees:(double)degrees;
- (unint64_t)indexOfEyeTrackingUIDelegate:(id)delegate;
- (unsigned)displayID;
- (void)_cleanupUserInterfaceClient;
- (void)_deviceCountChanged:(id)changed;
- (void)_didHandleRealUpEvent;
- (void)_endHandlingReachabilityIfNeeded;
- (void)_forceDismissCalibrationForReason:(unsigned int)reason;
- (void)_handleNubbitMove:(CGPoint)move event:(id)event;
- (void)_handleReachability:(id)reachability;
- (void)_hideLargeContentViewerIfNeeded;
- (void)_idleTimerFired;
- (void)_layoutHUDView:(id)view withinBounds:(CGRect)bounds;
- (void)_longIdleTimerFired;
- (void)_moveBubbleNotificationToPos:(CGPoint)pos;
- (void)_moveNubbitForKeyboard:(CGRect)keyboard;
- (void)_moveNubbitToPosition:(CGPoint)position forKeyboard:(BOOL)keyboard;
- (void)_onDeviceEyeTrackingSettingsChanged:(BOOL)changed;
- (void)_presentLargeContentViewerForHUDItem:(id)item inContentView:(id)view;
- (void)_removeAllSystemGestureDisablingAssertions;
- (void)_repositionNubbitAfterLift:(CGPoint)lift;
- (void)_resetCurrentPointToInitialPoint;
- (void)_resetReachabilityOffset;
- (void)_setVirtualTrackpadEnabled:(BOOL)enabled;
- (void)_setupUserInterfaceClient;
- (void)_startHandlingReachabilityIfNeeded;
- (void)_startIdleTimer;
- (void)_tearDownVirtualTrackpad;
- (void)_updateAutoHideMousePointer;
- (void)_updateLargeContentViewerIfNeededForView:(id)view;
- (void)_updateNubbitEdgePosition:(CGPoint)position;
- (void)_updateNubbitPosition;
- (void)_updatePreferences;
- (void)_updateRockerReachability;
- (void)_updateSpeakScreenStatus;
- (void)_updateViewsForOrientation;
- (void)activateAssistiveTouchAction:(id)action fromButtonPress:(BOOL)press;
- (void)activateDisplayItems;
- (void)addEyeTrackingUIDelegate:(id)delegate;
- (void)addUserInterfaceClientEnabler:(id)enabler;
- (void)animateBubbleCursorDwellWithDuration:(double)duration inRocker:(BOOL)rocker completion:(id)completion;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)cancelDwellOnBubbleCursor;
- (void)cleanup;
- (void)dealloc;
- (void)deviceCountChanged:(int64_t)changed;
- (void)didCompleteFaceGuidance;
- (void)didDismissCalibrationUI;
- (void)didFailToFloatApp;
- (void)didFailToPinApp;
- (void)didShowCalibrationUI;
- (void)dismissCalibrationUI;
- (void)drawBubbleCursorFrame:(CGRect)frame withPath:(id)path;
- (void)hideBubbleCursor;
- (void)hideBubbleCursorForEyeTrackingAutoHide;
- (void)initializeDisplayWithCompletion:(id)completion;
- (void)initializeScreenBounds;
- (void)initializeWindowsIfNecessary;
- (void)keyboardVisible:(BOOL)visible withFrame:(CGRect)frame;
- (void)moveNubbitToPoint:(CGPoint)point;
- (void)overrideBubbleCursorOpacity:(double)opacity;
- (void)performPress:(int)press type:(int)type;
- (void)performStyleTransitionAlongsideAnimations:(id)animations;
- (void)placeNubbitAtBottomCenter;
- (void)removeEyeTrackingUIDelegate:(id)delegate;
- (void)removeUserInterfaceClientEnabler:(id)enabler;
- (void)resetNubbitLocation;
- (void)restartWithCompletion:(id)completion;
- (void)setFingerContentViewIsActive:(BOOL)active;
- (void)setFingerContentViewIsActive:(BOOL)active withDuration:(double)duration;
- (void)setFingerContentViewIsActive:(BOOL)active withDuration:(double)duration options:(unint64_t)options;
- (void)setGazePointManager:(id)manager;
- (void)setMultiTouchToolBackgroundEnabled:(BOOL)enabled;
- (void)setNeedsRecalibration:(BOOL)recalibration;
- (void)setNubbitMoving:(BOOL)moving;
- (void)setOrientation:(int)orientation withCompletion:(id)completion;
- (void)setVisualsHidden:(BOOL)hidden forReason:(id)reason animated:(BOOL)animated;
- (void)showBubbleCursor;
- (void)showBubbleNotificationWithError:(id)error duration:(double)duration;
- (void)showCalibrationUI;
- (void)showCircleMenu:(BOOL)menu;
- (void)showMenu:(BOOL)menu;
- (void)showSimpleAlertWithText:(id)text;
- (void)showSimpleBannerWithTitle:(id)title text:(id)text;
- (void)showZoomWindow;
- (void)systemApertureLayoutDidChange:(id)change;
- (void)toggleVirtualTrackpad;
- (void)updateCursorSnapshotVisibilityForKeyboardVisibility:(BOOL)visibility;
- (void)updateMenuStyle;
- (void)updateNubbitForegroundImageForAction:(id)action;
- (void)updateOpacityForEyeTrackingAutoHide:(double)hide;
- (void)updateRingerSwitch;
- (void)updateRockersForSubstantialTransition;
- (void)updateRotationLockSwitch;
- (void)updateWithPrimaryFingerPoint:(CGPoint)point;
- (void)viewOrbActionTriggered:(id)triggered;
- (void)viewPressedDown:(id)down;
- (void)viewPressedUp:(id)up;
- (void)volumeChanged;
- (void)willShowCalibrationUI;
@end

@implementation HNDDisplayManager

- (HNDDisplayManager)initWithWindow:(id)window ignoredWindow:(id)ignoredWindow trackpadWindow:(id)trackpadWindow
{
  windowCopy = window;
  ignoredWindowCopy = ignoredWindow;
  trackpadWindowCopy = trackpadWindow;
  v96.receiver = self;
  v96.super_class = HNDDisplayManager;
  v12 = [(HNDDisplayManager *)&v96 init];
  objc_storeStrong(v12 + 4, window);
  objc_storeStrong(v12 + 5, ignoredWindow);
  v13 = +[NSPointerArray weakObjectsPointerArray];
  v14 = *(v12 + 171);
  *(v12 + 171) = v13;

  objc_storeStrong(v12 + 185, trackpadWindow);
  v15 = [objc_allocWithZone(AXDispatchTimer) initWithTargetSerialQueue:&_dispatch_main_q];
  v16 = *(v12 + 1);
  *(v12 + 1) = v15;

  v17 = [objc_allocWithZone(AXDispatchTimer) initWithTargetSerialQueue:&_dispatch_main_q];
  v18 = *(v12 + 2);
  *(v12 + 2) = v17;

  *(v12 + 51) = 0;
  v19 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
  v20 = *(v12 + 155);
  *(v12 + 155) = v19;

  v21 = +[HNDDefaults sharedDefaults];
  v22 = [v21 preferenceForKey:@"NubbitPositionPercentage"];
  [v22 doubleValue];
  *(v12 + 150) = v23;

  v24 = +[HNDDefaults sharedDefaults];
  v25 = [v24 preferenceForKey:@"NubbitPositionEdge"];
  *(v12 + 302) = [v25 intValue];

  v26 = +[AXSettings sharedInstance];
  assistiveTouchOrbAction = [v26 assistiveTouchOrbAction];
  v12[1248] = assistiveTouchOrbAction != 0;

  *(v12 + 347) = 0;
  objc_initWeak(&location, v12);
  v28 = +[AXSettings sharedInstance];
  v93[0] = _NSConcreteStackBlock;
  v93[1] = 3221225472;
  v93[2] = sub_100013A78;
  v93[3] = &unk_1001D3460;
  objc_copyWeak(&v94, &location);
  [v28 registerUpdateBlock:v93 forRetrieveSelector:"assistiveTouchOrbAction" withListener:v12];

  objc_destroyWeak(&v94);
  v29 = +[AXSettings sharedInstance];
  v91[0] = _NSConcreteStackBlock;
  v91[1] = 3221225472;
  v91[2] = sub_100013B08;
  v91[3] = &unk_1001D3460;
  objc_copyWeak(&v92, &location);
  [v29 registerUpdateBlock:v91 forRetrieveSelector:"assistiveTouchSingleTapAction" withListener:v12];

  objc_destroyWeak(&v92);
  v30 = +[AXSettings sharedInstance];
  v89[0] = _NSConcreteStackBlock;
  v89[1] = 3221225472;
  v89[2] = sub_100013B48;
  v89[3] = &unk_1001D3460;
  objc_copyWeak(&v90, &location);
  [v30 registerUpdateBlock:v89 forRetrieveSelector:"assistiveTouchDoubleTapAction" withListener:v12];

  objc_destroyWeak(&v90);
  v31 = +[AXSettings sharedInstance];
  v87[0] = _NSConcreteStackBlock;
  v87[1] = 3221225472;
  v87[2] = sub_100013B88;
  v87[3] = &unk_1001D3460;
  objc_copyWeak(&v88, &location);
  [v31 registerUpdateBlock:v87 forRetrieveSelector:"assistiveTouchLongPressAction" withListener:v12];

  objc_destroyWeak(&v88);
  v32 = +[AXSettings sharedInstance];
  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = sub_100013BC8;
  v85[3] = &unk_1001D3460;
  objc_copyWeak(&v86, &location);
  [v32 registerUpdateBlock:v85 forRetrieveSelector:"assistiveTouchMainScreenCustomization" withListener:v12];

  objc_destroyWeak(&v86);
  if (AXDeviceSupportsVirtualTrackpad())
  {
    v33 = +[AXSettings sharedInstance];
    v83[0] = _NSConcreteStackBlock;
    v83[1] = 3221225472;
    v83[2] = sub_100013C08;
    v83[3] = &unk_1001D3460;
    objc_copyWeak(&v84, &location);
    [v33 registerUpdateBlock:v83 forRetrieveSelector:"assistiveTouchVirtualTrackpadEnabled" withListener:v12];

    objc_destroyWeak(&v84);
  }

  if (AXDeviceSupportsOnDeviceEyeTracking())
  {
    v12[1379] = 0;
    v34 = [[HNDEyeTrackingCoordinator alloc] initWithDisplayManager:v12];
    v35 = *(v12 + 7);
    *(v12 + 7) = v34;

    v36 = +[AXSettings sharedInstance];
    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_100013CB4;
    v81[3] = &unk_1001D3460;
    objc_copyWeak(&v82, &location);
    [v36 registerUpdateBlock:v81 forRetrieveSelector:"assistiveTouchMouseOnDeviceEyeTrackingEnabled" withListener:v12];

    objc_destroyWeak(&v82);
    v37 = +[AXSettings sharedInstance];
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_100013D20;
    v79[3] = &unk_1001D3460;
    objc_copyWeak(&v80, &location);
    [v37 registerUpdateBlock:v79 forRetrieveSelector:"switchControlOnDeviceEyeTrackingEnabled" withListener:v12];

    objc_destroyWeak(&v80);
  }

  v38 = *(v12 + 9);
  *(v12 + 9) = 0;

  v39 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
  v40 = *(v12 + 159);
  *(v12 + 159) = v39;

  v41 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
  v42 = *(v12 + 160);
  *(v12 + 160) = v41;

  [v12 _updateSpeakScreenStatus];
  v43 = +[AXSettings sharedInstance];
  [v12 setAssistiveTouchMousePointerTimeoutEnabled:{objc_msgSend(v43, "assistiveTouchMousePointerTimeoutEnabled")}];

  v44 = +[AXSettings sharedInstance];
  [v44 assistiveTouchMousePointerTimeout];
  [v12 setAssistiveTouchMousePointerTimeout:?];

  v45 = +[AXSettings sharedInstance];
  [v45 assistiveTouchMouseDwellControlActivationTimeout];
  [v12 setAssistiveTouchMouseDwellControlActivationTimeout:?];

  v46 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
  v47 = *(v12 + 3);
  *(v12 + 3) = v46;

  v48 = +[AXSettings sharedInstance];
  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3221225472;
  v77[2] = sub_100013D8C;
  v77[3] = &unk_1001D3460;
  objc_copyWeak(&v78, &location);
  [v48 registerUpdateBlock:v77 forRetrieveSelector:"assistiveTouchMousePointerTimeout" withListener:v12];

  objc_destroyWeak(&v78);
  v49 = +[AXSettings sharedInstance];
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_100013E20;
  v75[3] = &unk_1001D3460;
  objc_copyWeak(&v76, &location);
  [v49 registerUpdateBlock:v75 forRetrieveSelector:"assistiveTouchMousePointerTimeoutEnabled" withListener:v12];

  objc_destroyWeak(&v76);
  v50 = +[AXSettings sharedInstance];
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_100013EAC;
  v73[3] = &unk_1001D3460;
  objc_copyWeak(&v74, &location);
  [v50 registerUpdateBlock:v73 forRetrieveSelector:"assistiveTouchMouseDwellControlActivationTimeout" withListener:v12];

  objc_destroyWeak(&v74);
  v51 = objc_alloc_init(SBSSystemApertureLayoutMonitor);
  v52 = *(v12 + 162);
  *(v12 + 162) = v51;

  [*(v12 + 162) addObserver:v12];
  *(v12 + 1336) = 0u;
  *(v12 + 1352) = 0u;
  *(v12 + 1304) = 0u;
  *(v12 + 1320) = 0u;
  v53 = [AXPIFingerController alloc];
  screen = [windowCopy screen];
  displayConfiguration = [screen displayConfiguration];
  hardwareIdentifier = [displayConfiguration hardwareIdentifier];
  v57 = [v53 initWithDisplayUUID:hardwareIdentifier];
  v58 = *(v12 + 175);
  *(v12 + 175) = v57;

  fingerContainerView = [*(v12 + 175) fingerContainerView];
  v60 = *(v12 + 182);
  *(v12 + 182) = fingerContainerView;

  if ((AXRuntimeCheck_DwellKeyboardSwipeContinuous() & 1) == 0 && AXRuntimeCheck_DwellKeyboardSwipe())
  {
    v61 = [AXPIFingerController alloc];
    screen2 = [windowCopy screen];
    displayConfiguration2 = [screen2 displayConfiguration];
    hardwareIdentifier2 = [displayConfiguration2 hardwareIdentifier];
    v65 = [v61 initWithDisplayUUID:hardwareIdentifier2];
    v66 = *(v12 + 176);
    *(v12 + 176) = v65;

    fingerContainerView2 = [*(v12 + 176) fingerContainerView];
    v68 = *(v12 + 189);
    *(v12 + 189) = fingerContainerView2;
  }

  if (AXDeviceSupportsVirtualTrackpad())
  {
    v72 = v12;
    AXPerformBlockOnMainThreadAfterDelay();
  }

  v69 = objc_alloc_init(HNDMorphTransitionHelper);
  v70 = *(v12 + 179);
  *(v12 + 179) = v69;

  objc_destroyWeak(&location);
  return v12;
}

- (void)_updateAutoHideMousePointer
{
  [(AXDispatchTimer *)self->_autoHideFingersTimer cancel];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  handManager = [(HNDDisplayManager *)self handManager];
  deviceManager = [handManager deviceManager];
  hidDeviceIsConfiguring = [deviceManager hidDeviceIsConfiguring];
  *(v16 + 24) = hidDeviceIsConfiguring;

  if ([(HNDDisplayManager *)self _shouldRunAutoHideFingersTimer])
  {
    [(HNDDisplayManager *)self assistiveTouchMousePointerTimeout];
    v7 = v6;
    handManager2 = [(HNDDisplayManager *)self handManager];
    dwellControlEnabled = [handManager2 dwellControlEnabled];

    if (dwellControlEnabled)
    {
      [(HNDDisplayManager *)self assistiveTouchMouseDwellControlActivationTimeout];
      v7 = v7 + v10;
    }

    objc_initWeak(&location, self);
    autoHideFingersTimer = self->_autoHideFingersTimer;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100014154;
    v12[3] = &unk_1001D39A8;
    v12[4] = self;
    v12[5] = &v15;
    objc_copyWeak(&v13, &location);
    [(AXDispatchTimer *)autoHideFingersTimer afterDelay:v12 processBlock:v7];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else if ((v16[3] & 1) == 0)
  {
    [(HNDDisplayManager *)self setFingerContentViewIsActive:1];
  }

  _Block_object_dispose(&v15, 8);
}

- (void)hideBubbleCursorForEyeTrackingAutoHide
{
  bubbleModeContentView = [(HNDDisplayManager *)self bubbleModeContentView];
  [bubbleModeContentView setIsActive:0 withDuration:0 options:0.1];
}

- (void)updateOpacityForEyeTrackingAutoHide:(double)hide
{
  [(HNDView *)self->_fingerContentView setInactiveAlpha:?];
  bubbleModeContentView = [(HNDDisplayManager *)self bubbleModeContentView];
  [bubbleModeContentView setInactiveAlpha:hide];
}

- (void)_updatePreferences
{
  v3 = +[AXSettings sharedInstance];
  -[HNDDisplayManager setAssistiveTouchMousePointerTimeoutEnabled:](self, "setAssistiveTouchMousePointerTimeoutEnabled:", [v3 assistiveTouchMousePointerTimeoutEnabled]);
}

- (BOOL)_shouldRunAutoHideFingersTimer
{
  if ([(HNDDisplayManager *)self assistiveTouchMousePointerTimeoutEnabled]&& _AXSAssistiveTouchEnabled() && !UIAccessibilityIsSwitchControlRunning())
  {
    handManager = [(HNDDisplayManager *)self handManager];
    deviceManager = [handManager deviceManager];
    mainDeviceIsPointer = [deviceManager mainDeviceIsPointer];
  }

  else
  {
    mainDeviceIsPointer = 0;
  }

  v4 = ![(HNDDisplayManager *)self isShowingVirtualTrackpad];
  result = v4 & mainDeviceIsPointer;
  if ((v4 & 1) == 0)
  {
    if (mainDeviceIsPointer)
    {
      return _AXSPointerAutoHideEnabled() != 0;
    }
  }

  return result;
}

- (void)_updateSpeakScreenStatus
{
  if (_AXSSpeakThisEnabled())
  {
    return;
  }

  v2 = +[AXSettings sharedInstance];
  assistiveTouchOrbAction = [v2 assistiveTouchOrbAction];
  v4 = AXAssistiveTouchIconTypeSpeakScreen;
  if (([assistiveTouchOrbAction isEqualToString:AXAssistiveTouchIconTypeSpeakScreen] & 1) == 0)
  {
    v5 = +[AXSettings sharedInstance];
    assistiveTouchSingleTapAction = [v5 assistiveTouchSingleTapAction];
    if (([assistiveTouchSingleTapAction isEqualToString:v4] & 1) == 0)
    {
      v7 = +[AXSettings sharedInstance];
      assistiveTouchDoubleTapAction = [v7 assistiveTouchDoubleTapAction];
      if (([assistiveTouchDoubleTapAction isEqualToString:v4] & 1) == 0)
      {
        v9 = +[AXSettings sharedInstance];
        assistiveTouchLongPressAction = [v9 assistiveTouchLongPressAction];
        if (([assistiveTouchLongPressAction isEqualToString:v4] & 1) == 0)
        {
          v15 = +[AXSettings sharedInstance];
          [v15 assistiveTouchMainScreenCustomization];
          v12 = v16 = v9;
          allValues = [v12 allValues];
          v14 = [allValues containsObject:v4];

          if ((v14 & 1) == 0)
          {
            return;
          }

          goto LABEL_10;
        }
      }
    }
  }

LABEL_10:
  v11 = ASTLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Turning on Speak Screen because speak screen action is set to a customized override", buf, 2u);
  }

  _AXSSetSpeakThisEnabled();
}

- (void)initializeWindowsIfNecessary
{
  v3 = ASTLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = +[NSThread callStackSymbols];
    v22 = 138412290;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "setting up windows from didFinishLaunching %@.", &v22, 0xCu);
  }

  v5 = _AXSInUnitTestMode();
  ignoredWindow = self->_ignoredWindow;
  if (v5)
  {
    if (!ignoredWindow)
    {
      v7 = objc_opt_new();
      v8 = self->_ignoredWindow;
      self->_ignoredWindow = v7;

      [(UIWindow *)self->_ignoredWindow setWindowLevel:10000011.0];
      [(UIWindow *)self->_ignoredWindow setHidden:0];
      v9 = objc_opt_new();
      [(UIWindow *)self->_ignoredWindow setRootViewController:v9];
    }

    window = self->_window;
    p_window = &self->_window;
    if (!window)
    {
      v12 = objc_opt_new();
      v13 = *p_window;
      *p_window = v12;
LABEL_12:

      [*p_window makeKeyAndVisible];
      [*p_window setWindowLevel:10000010.0];
      v21 = objc_opt_new();
      [*p_window setRootViewController:v21];
    }
  }

  else
  {
    if (!ignoredWindow)
    {
      v14 = +[AXUIDisplayManager sharedDisplayManager];
      v15 = [v14 _windowWithUserInteractionEnabled:0 windowLevel:1 createIfNeeded:@"HNDIgnoredWindow" purposeIdentifier:10000011.0];
      v16 = self->_ignoredWindow;
      self->_ignoredWindow = v15;

      [(UIWindow *)self->_ignoredWindow setHidden:0];
      v17 = objc_opt_new();
      [(UIWindow *)self->_ignoredWindow setRootViewController:v17];
    }

    v18 = self->_window;
    p_window = &self->_window;
    if (!v18)
    {
      v13 = +[AXUIDisplayManager sharedDisplayManager];
      v19 = [v13 _windowWithUserInteractionEnabled:1 windowLevel:1 createIfNeeded:@"HNDWindow" purposeIdentifier:10000010.0];
      v20 = *p_window;
      *p_window = v19;

      goto LABEL_12;
    }
  }
}

- (void)initializeScreenBounds
{
  [(HNDDisplayManager *)self screenBounds];
  v7.origin.x = v2;
  v7.origin.y = v3;
  v7.size.width = v4;
  v7.size.height = v5;
  v6.origin.x = CGRectZero.origin.x;
  v6.origin.y = CGRectZero.origin.y;
  v6.size.width = CGRectZero.size.width;
  v6.size.height = CGRectZero.size.height;
  if (CGRectEqualToRect(v6, v7))
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)initializeDisplayWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = ASTLogDisplayManager();
  v7 = os_signpost_id_generate(v6);

  v8 = ASTLogDisplayManager();
  v9 = v8;
  v10 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Initialize Display With Completion", "", buf, 2u);
  }

  [(HNDDisplayManager *)self initializeScreenBounds];
  v11 = _AXSAssistiveTouchScannerEnabled();
  v12 = _AXSAssistiveTouchEnabled();
  if (v11 | v12)
  {
    v13 = v12;
    superview = [(UIView *)self->_contentView superview];

    if (superview)
    {
      v72 = +[NSThread callStackSymbols];
      _AXAssert();
    }

    superview2 = [(UIView *)self->_contentView superview];

    if (superview2)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }

      v16 = ASTLogDisplayManager();
      v17 = v16;
      if (v10 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v16))
      {
        goto LABEL_31;
      }

      *buf = 0;
    }

    else
    {
      [(HNDDisplayManager *)self initializeWindowsIfNecessary];
      v18 = [UIView alloc];
      [(UIWindow *)self->_window bounds];
      v19 = [v18 initWithFrame:?];
      contentView = self->_contentView;
      self->_contentView = v19;

      [(UIView *)self->_contentView setAccessibilityIgnoresInvertColors:1];
      [(UIView *)self->_contentView setAutoresizingMask:18];
      [(UIWindow *)self->_window addSubview:self->_contentView];
      v21 = [HNDView alloc];
      [(UIWindow *)self->_window bounds];
      v22 = [(HNDView *)v21 initWithFrame:?];
      fingerContentView = self->_fingerContentView;
      self->_fingerContentView = v22;

      [(HNDView *)self->_fingerContentView setInactiveAlpha:0.0];
      [(HNDView *)self->_fingerContentView setUserInteractionEnabled:0];
      [(HNDView *)self->_fingerContentView setAutoresizingMask:18];
      [(UIView *)self->_fingerContainerView setAutoresizingMask:18];
      fingerContainerView = self->_fingerContainerView;
      [(UIWindow *)self->_window bounds];
      [(UIView *)fingerContainerView setFrame:?];
      [(HNDView *)self->_fingerContentView addSubview:self->_fingerContainerView];
      if ((AXRuntimeCheck_DwellKeyboardSwipeContinuous() & 1) == 0 && AXRuntimeCheck_DwellKeyboardSwipe())
      {
        [(UIView *)self->_keyboardSlideFingerContainerView setAutoresizingMask:18];
        keyboardSlideFingerContainerView = self->_keyboardSlideFingerContainerView;
        [(UIWindow *)self->_window bounds];
        [(UIView *)keyboardSlideFingerContainerView setFrame:?];
        [(UIWindow *)self->_ignoredWindow addSubview:self->_keyboardSlideFingerContainerView];
      }

      [(UIWindow *)self->_ignoredWindow addSubview:self->_fingerContentView];
      if (v11 || (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 assistiveTouchInternalOnlyHiddenNubbitModeEnabled], v26, v27))
      {
        v28 = [UIView alloc];
        [(UIWindow *)self->_window bounds];
        v29 = [v28 initWithFrame:?];
        scannerFrontCursorView = self->_scannerFrontCursorView;
        self->_scannerFrontCursorView = v29;

        [(UIView *)self->_scannerFrontCursorView setAutoresizingMask:18];
        [(UIWindow *)self->_ignoredWindow addSubview:self->_scannerFrontCursorView];
        v31 = [UIView alloc];
        [(UIWindow *)self->_window bounds];
        v32 = [v31 initWithFrame:?];
        scannerContentView = self->_scannerContentView;
        self->_scannerContentView = v32;

        [(UIView *)self->_scannerContentView setAutoresizingMask:18];
        [(UIWindow *)self->_ignoredWindow addSubview:self->_scannerContentView];
        v34 = [UIView alloc];
        [(UIWindow *)self->_window bounds];
        v35 = [v34 initWithFrame:?];
        scannerBackCursorView = self->_scannerBackCursorView;
        self->_scannerBackCursorView = v35;

        [(UIView *)self->_scannerBackCursorView setAutoresizingMask:18];
        [(UIWindow *)self->_ignoredWindow addSubview:self->_scannerBackCursorView];
        AXPerformBlockOnMainThreadAfterDelay();
      }

      else
      {
        if (self->_rocker)
        {
          v40 = ASTLogCommon();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
          {
            sub_1001282D4();
          }

          [(HNDRocker *)self->_rocker removeFromSuperview];
        }

        v41 = [HNDRocker alloc];
        y = CGRectZero.origin.y;
        width = CGRectZero.size.width;
        height = CGRectZero.size.height;
        height = [(HNDRocker *)v41 initWithFrame:CGRectZero.origin.x, y, width, height];
        rocker = self->_rocker;
        self->_rocker = height;

        [(HNDRocker *)self->_rocker setDisplayManager:self];
        hardwareIdentifier = [(HNDDisplayManager *)self hardwareIdentifier];
        [(HNDRocker *)self->_rocker setHardwareIdentifier:hardwareIdentifier];

        [(HNDRocker *)self->_rocker setAutoresizingMask:45];
        height2 = [[HNDRocker alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
        expandedRocker = self->_expandedRocker;
        self->_expandedRocker = height2;

        [(HNDRocker *)self->_expandedRocker setDisplayManager:self];
        hardwareIdentifier2 = [(HNDDisplayManager *)self hardwareIdentifier];
        [(HNDRocker *)self->_expandedRocker setHardwareIdentifier:hardwareIdentifier2];

        [(HNDRocker *)self->_expandedRocker setAutoresizingMask:45];
        [(HNDRocker *)self->_expandedRocker setStyle:1];
        v51 = [HNDView alloc];
        [(UIWindow *)self->_window bounds];
        v52 = [(HNDView *)v51 initWithFrame:?];
        bubbleModeContentView = self->_bubbleModeContentView;
        self->_bubbleModeContentView = v52;

        [(HNDView *)self->_bubbleModeContentView setInactiveAlpha:0.0];
        [(HNDView *)self->_bubbleModeContentView setUserInteractionEnabled:0];
        [(HNDView *)self->_bubbleModeContentView setAutoresizingMask:18];
        [(UIWindow *)self->_ignoredWindow addSubview:self->_bubbleModeContentView];
        if (self->_pendingForegroundImageAction)
        {
          [(HNDRocker *)self->_rocker updateForegroundImageForAction:?];
          pendingForegroundImageAction = self->_pendingForegroundImageAction;
          self->_pendingForegroundImageAction = 0;
        }

        [(UIView *)self->_contentView addSubview:self->_rocker];
        [(UIView *)self->_contentView addSubview:self->_expandedRocker];
        [(HNDView *)self->_rocker setControlDelegate:self];
        [(HNDView *)self->_expandedRocker setControlDelegate:self];
        v55 = [HNDView alloc];
        [(UIWindow *)self->_window bounds];
        v56 = [(HNDView *)v55 initWithFrame:?];
        rockerDismiss = self->_rockerDismiss;
        self->_rockerDismiss = v56;

        [(HNDView *)self->_rockerDismiss setAutoresizingMask:18];
        [(HNDView *)self->_rockerDismiss setAlpha:0.0];
        v58 = self->_rocker;
        v59 = +[UIColor clearColor];
        [(HNDRocker *)v58 setBackgroundColor:v59];

        [(HNDView *)self->_rockerDismiss setUserInteractionEnabled:0];
        [(UIView *)self->_contentView insertSubview:self->_rockerDismiss atIndex:0];
        [(HNDView *)self->_rockerDismiss setAccessibilityIdentifier:@"RockerDismiss"];
        [(HNDView *)self->_rockerDismiss setControlDelegate:self];
        [(HNDDisplayManager *)self _resetCurrentPointToInitialPoint];
        if (self->_nubbitPositionPercentage == 0.0)
        {
          self->_nubbitPositionPercentage = 0.75;
        }

        if (!self->_nubbitPositionEdge)
        {
          self->_nubbitPositionEdge = 4;
        }

        [UIView setAnimationsEnabled:0];
        [(HNDDisplayManager *)self _updateNubbitPosition];
        [UIView setAnimationsEnabled:1];
        __asm { FMOV            V0.2D, #-1.0 }

        self->_preKeyboardMovePosition = _Q0;
        [(HNDDisplayManager *)self _startHandlingReachabilityIfNeeded];
        v65 = ASTLogDisplayManager();
        v66 = os_signpost_id_generate(v65);

        v67 = ASTLogDisplayManager();
        v68 = v67;
        if (v66 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v67))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v68, OS_SIGNPOST_INTERVAL_BEGIN, v66, "Draw AST Rocker", "", buf, 2u);
        }

        v69 = NSStringFromSelector(a2);
        [(HNDDisplayManager *)self setVisualsHidden:0 forReason:v69 animated:1];

        v70 = ASTLogDisplayManager();
        v71 = v70;
        if (v66 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v70))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v71, OS_SIGNPOST_INTERVAL_END, v66, "Draw AST Rocker", "", buf, 2u);
        }
      }

      [(HNDDisplayManager *)self _updateViewsForOrientation];
      if (v13)
      {
        [(HNDDisplayManager *)self updateMenuStyle];
      }

      userInterfaceClientEnablers = [(HNDDisplayManager *)self userInterfaceClientEnablers];
      v38 = [userInterfaceClientEnablers count];

      if (v38)
      {
        [(HNDDisplayManager *)self _setupUserInterfaceClient];
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }

      v39 = ASTLogDisplayManager();
      v17 = v39;
      if (v10 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v39))
      {
        goto LABEL_31;
      }

      *buf = 0;
    }

    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v7, "Initialize Display With Completion", "", buf, 2u);
LABEL_31:

    goto LABEL_32;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_32:
}

- (void)showZoomWindow
{
  needsToShowZoomWindow = self->_needsToShowZoomWindow;
  zoomViewController = [(HNDDisplayManager *)self zoomViewController];
  v5 = zoomViewController;
  if (needsToShowZoomWindow)
  {

    if (!v5)
    {
      v6 = [[HNDZoomViewController alloc] initWithDelegate:self];
      [(HNDDisplayManager *)self setZoomViewController:v6];

      ignoredWindow = self->_ignoredWindow;
      zoomViewController2 = [(HNDDisplayManager *)self zoomViewController];
      view = [zoomViewController2 view];
      [(UIWindow *)ignoredWindow addSubview:view];

      zoomViewController3 = [(HNDDisplayManager *)self zoomViewController];
      view2 = [zoomViewController3 view];
      v12 = [view2 ax_pinConstraintsInAllDimensionsToView:self->_ignoredWindow];
    }

    [(HNDDisplayManager *)self screenBounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    zoomViewController4 = [(HNDDisplayManager *)self zoomViewController];
    view3 = [zoomViewController4 view];
    [view3 setBounds:{v14, v16, v18, v20}];

    zoomViewController5 = [(HNDDisplayManager *)self zoomViewController];
    handManager = [(HNDDisplayManager *)self handManager];
    [handManager systemPointerLocation];
    [zoomViewController5 zoomInAt:? screenBounds:?];
  }

  else
  {
    handManager2 = [(HNDDisplayManager *)self handManager];
    [handManager2 systemPointerLocation];
    v26 = v25;
    v28 = v27;
    [(HNDDisplayManager *)self screenBounds];
    [v5 zoomOutAt:v26 screenBounds:{v28, v29, v30, v31, v32}];

    [(HNDDisplayManager *)self setNeedsToShowZoomWindow:0];
  }
}

- (CGPoint)zoomConvertToReplicatedViewFromTargetPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  zoomReplicatedView = [(HNDDisplayManager *)self zoomReplicatedView];

  if (zoomReplicatedView)
  {
    zoomReplicatedView2 = [(HNDDisplayManager *)self zoomReplicatedView];
    [zoomReplicatedView2 frame];
    v9 = v8;
    v11 = v10;

    [(HNDDisplayManager *)self convertToNormalizedInterfaceOrientation:x, y];
    v13 = v9 * v12;
    v15 = v11 * v14;
    zoomReplicatedView3 = [(HNDDisplayManager *)self zoomReplicatedView];
    ignoredWindow = [(HNDDisplayManager *)self ignoredWindow];
    [zoomReplicatedView3 convertPoint:ignoredWindow toView:{v13, v15}];
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v19 = CGPointZero.x;
    v21 = CGPointZero.y;
  }

  v22 = v19;
  v23 = v21;
  result.y = v23;
  result.x = v22;
  return result;
}

- (void)setNeedsRecalibration:(BOOL)recalibration
{
  recalibrationCopy = recalibration;
  if ([(HNDDisplayManager *)self didForceDimissCalibration]|| self->_needsRecalibration != recalibrationCopy)
  {
    self->_needsRecalibration = recalibrationCopy;
    if (recalibrationCopy)
    {

      [(HNDDisplayManager *)self showCalibrationUI];
    }
  }
}

- (void)showCalibrationUI
{
  v3 = +[AXSettings sharedInstance];
  assistiveTouchMouseOnDeviceEyeTrackingShouldShowUncalibratedPoints = [v3 assistiveTouchMouseOnDeviceEyeTrackingShouldShowUncalibratedPoints];

  if ((assistiveTouchMouseOnDeviceEyeTrackingShouldShowUncalibratedPoints & 1) == 0)
  {
    handManager = [(HNDDisplayManager *)self handManager];
    deviceManager = [handManager deviceManager];
    v7 = -[HNDDisplayManager _shouldPreventCalibrationForError:](self, "_shouldPreventCalibrationForError:", [deviceManager currentEyeTrackingErrorCode]);

    if ((v7 & 1) == 0)
    {
      if (AXDeviceSupportsOnDeviceEyeTracking())
      {
        v8 = +[AXSettings sharedInstance];
        onDeviceEyeTrackingEnabled = [v8 onDeviceEyeTrackingEnabled];

        if (onDeviceEyeTrackingEnabled)
        {
          v10 = +[ASTUIGazeEnrollmentManager sharedManager];
          enrollmentComplete = [v10 enrollmentComplete];

          if (self->_needsRecalibration || (enrollmentComplete & 1) == 0 && !self->_showingCalibrationUI && ![(HNDDisplayManager *)self didForceDimissCalibration])
          {
            [(HNDEyeTrackingCoordinator *)self->_eyeTrackingCoordinator showCalibrationUI];
            if (self->_needsRecalibration && self->_forceCalibrationDismissReason == 1)
            {

              [(HNDDisplayManager *)self _resetForceDismissalReason];
            }
          }
        }
      }
    }
  }
}

- (void)dismissCalibrationUI
{
  if (AXDeviceSupportsOnDeviceEyeTracking())
  {
    v5 = +[AXSettings sharedInstance];
    if ([v5 onDeviceEyeTrackingEnabled])
    {
      showingCalibrationUI = self->_showingCalibrationUI;

      if (showingCalibrationUI)
      {
        eyeTrackingCoordinator = self->_eyeTrackingCoordinator;

        [(HNDEyeTrackingCoordinator *)eyeTrackingCoordinator dismissCalibrationUI];
      }
    }

    else
    {
    }
  }
}

- (void)_forceDismissCalibrationForReason:(unsigned int)reason
{
  self->_forceCalibrationDismissReason = reason;
  [(HNDDisplayManager *)self setNeedsRecalibration:0];
  if (reason == 2)
  {
    v5 = +[AXSettings sharedInstance];
    assistiveTouchEnabledByOnDeviceEyeTracking = [v5 assistiveTouchEnabledByOnDeviceEyeTracking];

    handManager = [(HNDDisplayManager *)self handManager];
    deviceManager = [handManager deviceManager];
    [deviceManager setDetectDevices:0];

    objc_initWeak(&location, self);
    v9 = +[AXSpringBoardServer server];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001589C;
    v10[3] = &unk_1001D39D0;
    objc_copyWeak(&v11, &location);
    v12 = assistiveTouchEnabledByOnDeviceEyeTracking;
    v10[4] = self;
    [v9 showAlert:26 withHandler:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {

    [(HNDDisplayManager *)self dismissCalibrationUI];
  }
}

- (void)_removeAllSystemGestureDisablingAssertions
{
  [(HNDDisplayManager *)self setDisableControlCenterAssertion:0];
  [(HNDDisplayManager *)self setDisableNotificationCenterAssertion:0];

  [(HNDDisplayManager *)self setDisableSystemGesturesAssertion:0];
}

- (void)_onDeviceEyeTrackingSettingsChanged:(BOOL)changed
{
  if (changed)
  {
    if ([(HNDDisplayManager *)self isShowingCalibrationUI])
    {

      [(HNDDisplayManager *)self dismissCalibrationUI];
    }

    else
    {

      [(HNDDisplayManager *)self showCalibrationUI];
    }
  }

  else
  {
    v4 = +[ASTUIGazeEnrollmentManager sharedManager];
    [v4 resetGazeEnrollment];

    [(HNDDisplayManager *)self _resetForceDismissalReason];

    [(HNDDisplayManager *)self setNeedsRecalibration:1];
  }
}

- (void)toggleVirtualTrackpad
{
  isShowingVirtualTrackpad = [(HNDDisplayManager *)self isShowingVirtualTrackpad];
  [(HNDDisplayManager *)self _setVirtualTrackpadEnabled:isShowingVirtualTrackpad ^ 1];
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchVirtualTrackpadEnabled:isShowingVirtualTrackpad ^ 1];
}

- (void)_tearDownVirtualTrackpad
{
  [(HNDDisplayManager *)self setIsShowingVirtualTrackpad:0];
  trackpadWindow = [(HNDDisplayManager *)self trackpadWindow];
  [trackpadWindow setHidden:1];

  trackpadViewController = [(HNDDisplayManager *)self trackpadViewController];
  [trackpadViewController unload];

  [(HNDDisplayManager *)self setTrackpadViewController:0];
  trackpadExcludeHitTestAssertion = [(HNDDisplayManager *)self trackpadExcludeHitTestAssertion];
  [trackpadExcludeHitTestAssertion invalidate];

  [(HNDDisplayManager *)self setFingerContentViewIsActive:0];
  handManager = [(HNDDisplayManager *)self handManager];
  [handManager setVirtualTrackpadBubbleModeEnabled:0];
}

- (void)_setVirtualTrackpadEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (_AXSAssistiveTouchEnabled())
  {
    if (enabledCopy)
    {
      trackpadWindow = [(HNDDisplayManager *)self trackpadWindow];
      [trackpadWindow setHidden:0];

      v6 = objc_opt_new();
      [(HNDDisplayManager *)self setTrackpadViewController:v6];

      trackpadWindow2 = [(HNDDisplayManager *)self trackpadWindow];
      trackpadViewController = [(HNDDisplayManager *)self trackpadViewController];
      view = [trackpadViewController view];
      v10 = [trackpadWindow2 containsView:view];

      if ((v10 & 1) == 0)
      {
        [(HNDDisplayManager *)self setIsShowingVirtualTrackpad:1];
        trackpadWindow3 = [(HNDDisplayManager *)self trackpadWindow];
        trackpadViewController2 = [(HNDDisplayManager *)self trackpadViewController];
        view2 = [trackpadViewController2 view];
        [trackpadWindow3 addSubview:view2];
      }

      v14 = [BKSHIDEventSenderDescriptor build:&stru_1001D3A10];
      v30[0] = v14;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100016064;
      v28[3] = &unk_1001D3A38;
      v28[4] = self;
      v15 = [BKSHIDEventSenderDescriptor build:v28];
      v30[1] = v15;
      v16 = [NSArray arrayWithObjects:v30 count:2];

      view3 = [(HNDTrackpadViewController *)self->_trackpadViewController view];
      window = [view3 window];
      _contextId = [window _contextId];

      trackpadExcludeHitTestAssertion = [(HNDDisplayManager *)self trackpadExcludeHitTestAssertion];
      [trackpadExcludeHitTestAssertion invalidate];

      if (_contextId)
      {
        v21 = +[BKSTouchEventService sharedInstance];
        v22 = [NSNumber numberWithUnsignedInt:_contextId];
        v29 = v22;
        v23 = [NSArray arrayWithObjects:&v29 count:1];
        v24 = [v21 excludeEventsFromSenders:v16 fromHitTestingToContextIDs:v23];
        [(HNDDisplayManager *)self setTrackpadExcludeHitTestAssertion:v24];
      }
    }

    else
    {
      [(HNDDisplayManager *)self _tearDownVirtualTrackpad];
      downView = self->_downView;
      self->_downView = 0;
    }

    handManager = [(HNDDisplayManager *)self handManager];
    [handManager reloadFingerAppearance];

    handManager2 = [(HNDDisplayManager *)self handManager];
    [handManager2 setVirtualTrackpadBubbleModeEnabled:enabledCopy];
  }
}

- (BOOL)shouldPassThroughVirtualTrackpad:(unint64_t)trackpad
{
  fingerController = [(HNDDisplayManager *)self fingerController];
  eventSenderServiceID = [fingerController eventSenderServiceID];
  v7 = trackpad == 0x8000000817319380 || eventSenderServiceID == trackpad;

  return v7;
}

- (BOOL)shouldHideBubbleModeForVirtualTrackpad
{
  trackpadViewController = [(HNDDisplayManager *)self trackpadViewController];
  v4 = ([trackpadViewController isPressingOnTrackpad] & 1) != 0 || self->_trackpadAction != 0;

  return v4;
}

- (void)placeNubbitAtBottomCenter
{
  +[HNDRocker nubbitSize];
  v4 = v3 * 0.5;
  [(HNDDisplayManager *)self screenBounds];
  self->_nubbitPositionPercentage = 0.5 - v4 / v5;
  self->_nubbitPositionEdge = 2;
  [UIView setAnimationsEnabled:0];
  [(HNDDisplayManager *)self _updateNubbitPosition];

  [UIView setAnimationsEnabled:1];
}

- (void)cleanup
{
  [(UIView *)self->_contentView removeFromSuperview];
  contentView = self->_contentView;
  self->_contentView = 0;

  [(HNDView *)self->_fingerContentView removeFromSuperview];
  fingerContentView = self->_fingerContentView;
  self->_fingerContentView = 0;

  [(UIView *)self->_scannerContentView removeFromSuperview];
  scannerContentView = self->_scannerContentView;
  self->_scannerContentView = 0;

  [(UIView *)self->_scannerBackCursorView removeFromSuperview];
  scannerBackCursorView = self->_scannerBackCursorView;
  self->_scannerBackCursorView = 0;

  [(UIView *)self->_scannerFrontCursorView removeFromSuperview];
  scannerFrontCursorView = self->_scannerFrontCursorView;
  self->_scannerFrontCursorView = 0;

  [(HNDView *)self->_bubbleModeContentView removeFromSuperview];
  bubbleModeContentView = self->_bubbleModeContentView;
  self->_bubbleModeContentView = 0;

  [(HNDDisplayManager *)self _tearDownVirtualTrackpad];
  view = [(HNDZoomViewController *)self->_zoomViewController view];
  [view removeFromSuperview];

  zoomViewController = self->_zoomViewController;
  self->_zoomViewController = 0;

  [(HNDRocker *)self->_rocker removeFromSuperview];
  rocker = self->_rocker;
  self->_rocker = 0;

  rockerDismiss = self->_rockerDismiss;
  self->_rockerDismiss = 0;

  [(HNDRocker *)self->_expandedRocker removeFromSuperview];
  expandedRocker = self->_expandedRocker;
  self->_expandedRocker = 0;

  downView = self->_downView;
  self->_downView = 0;

  [(HNDDisplayManager *)self _endHandlingReachabilityIfNeeded];
  [(HNDDisplayManager *)self _cleanupUserInterfaceClient];

  [(HNDDisplayManager *)self _removeAllSystemGestureDisablingAssertions];
}

- (void)dealloc
{
  [(HNDDisplayManager *)self cleanup];
  v3.receiver = self;
  v3.super_class = HNDDisplayManager;
  [(HNDDisplayManager *)&v3 dealloc];
}

- (void)_updateRockerReachability
{
  memset(&v5, 0, sizeof(v5));
  [(HNDDisplayManager *)self _transformForOrientation];
  [(HNDDisplayManager *)self _currentRockerTranslateY];
  CGAffineTransformTranslate(&v5, &v4, 0.0, v3);
  v4 = v5;
  [(UIView *)self->_contentView setTransform:&v4];
}

- (double)_currentRockerTranslateY
{
  [(HNDDisplayManager *)self reachabilityOffset];
  v4 = v3;
  activeRocker = [(HNDDisplayManager *)self activeRocker];
  [activeRocker frame];
  MaxY = CGRectGetMaxY(v13);
  IsPad = AXDeviceIsPad();
  v8 = -8.0;
  if (IsPad)
  {
    v8 = -6.0;
  }

  v9 = v4 + MaxY - v8;

  [(UIView *)self->_contentView bounds];
  result = 0.0;
  if (v9 > v11)
  {
    [(UIView *)self->_contentView bounds];
    return v12 - v9;
  }

  return result;
}

- (CGPoint)_rotatedNormalizedInitialPoint
{
  v2 = [(HNDDisplayManager *)self orientation]- 2;
  if (v2 > 2)
  {
    v4 = 0.75;
    v3 = 0.5;
  }

  else
  {
    v3 = dbl_1001BD038[v2];
    v4 = dbl_1001BD050[v2];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (void)_resetCurrentPointToInitialPoint
{
  v3 = -1.0;
  v4 = -1.0;
  if (sub_100042C64())
  {
    handManager = [(HNDDisplayManager *)self handManager];
    systemPointerController = [handManager systemPointerController];

    v3 = -1.0;
    v4 = -1.0;
    if (systemPointerController)
    {
      systemPointerController2 = [handManager systemPointerController];
      [systemPointerController2 currentSystemPointerPoint];
      v9 = v8;
      v11 = v10;

      v3 = -1.0;
      v4 = -1.0;
      if (([handManager shouldHideSystemPointerForFingersView] & 1) == 0)
      {
        v12 = v9 == -1.0 && v11 == -1.0;
        v3 = -1.0;
        v4 = -1.0;
        if (!v12)
        {
          [(HNDDisplayManager *)self convertToNormalizedInterfaceOrientation:v9, v11];
          v4 = v13;
          v3 = v14;
        }
      }
    }
  }

  if (v4 == -1.0 && v3 == -1.0)
  {
    [(HNDDisplayManager *)self _rotatedNormalizedInitialPoint];
    v4 = v16;
    v3 = v17;
  }

  self->_currentPoint.x = v4;
  self->_currentPoint.y = v3;
}

- (void)_resetReachabilityOffset
{
  [(HNDDisplayManager *)self setReachabilityOffset:0.0];
  [(HNDDisplayManager *)self _transformForOrientation];
  contentView = self->_contentView;
  v4[0] = v4[3];
  v4[1] = v4[4];
  v4[2] = v4[5];
  [(UIView *)contentView setTransform:v4];
}

- (void)_handleReachability:(id)reachability
{
  reachabilityCopy = reachability;
  v5 = +[AXUIReachabilityHelper sharedHelper];
  [v5 reachabilityOffsetForPayload:reachabilityCopy];
  [(HNDDisplayManager *)self setReachabilityOffset:?];
  memset(&v18, 0, sizeof(v18));
  contentView = self->_contentView;
  if (contentView)
  {
    [(UIView *)contentView transform];
  }

  [(HNDDisplayManager *)self reachabilityOffset];
  if (v7 == 0.0)
  {
    [(HNDDisplayManager *)self _transformForOrientation];
    v18 = v17;
  }

  else
  {
    [(HNDDisplayManager *)self _currentRockerTranslateY];
    v9 = v8;
    v10 = [reachabilityCopy mutableCopy];
    v11 = [NSNumber numberWithDouble:v9];
    [v10 setObject:v11 forKeyedSubscript:@"offset"];

    v12 = [v10 copy];
    v16 = v18;
    CGAffineTransformTranslate(&v17, &v16, 0.0, v9);
    v18 = v17;

    reachabilityCopy = v12;
  }

  v13 = +[AXUIReachabilityHelper sharedHelper];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v15 = v18;
  v14[2] = sub_10001680C;
  v14[3] = &unk_1001D3A60;
  v14[4] = self;
  [v13 animateForReachability:v14 payload:reachabilityCopy completion:0];
}

- (void)_startHandlingReachabilityIfNeeded
{
  reachabilityHandlerIdentifier = [(HNDDisplayManager *)self reachabilityHandlerIdentifier];
  if (reachabilityHandlerIdentifier)
  {
  }

  else if (+[AXSpringBoardServer isAvailable])
  {
    v4 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000169CC;
    block[3] = &unk_1001D3488;
    block[4] = self;
    dispatch_async(v4, block);

    v5 = +[AXSpringBoardServer server];
    v6[4] = self;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100016A28;
    v7[3] = &unk_1001D3A88;
    v7[4] = self;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100016B04;
    v6[3] = &unk_1001D3AB0;
    [v5 registerReachabilityHandler:v7 withIdentifierCallback:v6];
  }
}

- (void)_endHandlingReachabilityIfNeeded
{
  reachabilityHandlerIdentifier = [(HNDDisplayManager *)self reachabilityHandlerIdentifier];

  if (reachabilityHandlerIdentifier)
  {
    v4 = +[AXSpringBoardServer server];
    reachabilityHandlerIdentifier2 = [(HNDDisplayManager *)self reachabilityHandlerIdentifier];
    [v4 removeReachabilityHandler:reachabilityHandlerIdentifier2];

    [(HNDDisplayManager *)self setReachabilityHandlerIdentifier:0];
  }
}

- (void)setMultiTouchToolBackgroundEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(HNDDisplayManager *)self multiTouchToolBackgroundEnabled]!= enabled)
  {
    if (!enabledCopy)
    {
      goto LABEL_8;
    }

    if (UIAccessibilityIsSwitchControlRunning())
    {
      _AXAssert();
    }

    if (self->_contentView)
    {
      v5 = [[HNDView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      multiTouchBackgound = self->_multiTouchBackgound;
      self->_multiTouchBackgound = v5;

      [(UIView *)self->_contentView bounds];
      [(HNDView *)self->_multiTouchBackgound setFrame:?];
      [(UIView *)self->_contentView bounds];
      AX_CGRectGetCenter();
      [(HNDView *)self->_multiTouchBackgound setCenter:?];
      [(HNDView *)self->_multiTouchBackgound setAccessibilityIdentifier:@"MT Back"];
      [(HNDView *)self->_multiTouchBackgound setAlpha:0.0];
      v7 = self->_multiTouchBackgound;
      v8 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.01];
      [(HNDView *)v7 setBackgroundColor:v8];

      [(HNDView *)self->_multiTouchBackgound setUserInteractionEnabled:1];
      [(HNDView *)self->_multiTouchBackgound setIsAccessibilityElement:1];
      v9 = sub_100042B24(@"GesturePerformArea");
      [(HNDView *)self->_multiTouchBackgound setAccessibilityLabel:v9];

      [(HNDView *)self->_multiTouchBackgound setAccessibilityTraits:UIAccessibilityTraitAllowsDirectInteraction];
      [(UIView *)self->_contentView insertSubview:self->_multiTouchBackgound atIndex:0];
      v10 = ASTLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = 136315138;
        v15 = "[HNDDisplayManager setMultiTouchToolBackgroundEnabled:]";
        v11 = "%s: enabled _multiTouchBackgound!";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v11, &v14, 0xCu);
      }
    }

    else
    {
LABEL_8:
      [(HNDView *)self->_multiTouchBackgound removeFromSuperview];
      v12 = self->_multiTouchBackgound;
      self->_multiTouchBackgound = 0;

      v10 = ASTLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = 136315138;
        v15 = "[HNDDisplayManager setMultiTouchToolBackgroundEnabled:]";
        v11 = "%s: removed _multiTouchBackgound!";
        goto LABEL_10;
      }
    }

    handManager = [(HNDDisplayManager *)self handManager];
    [handManager setCaptureEvents:enabledCopy];
  }
}

- (CGPoint)closestNubbitPositionForPoint:(CGPoint)point offsetByMidpoint:(BOOL)midpoint
{
  midpointCopy = midpoint;
  y = point.y;
  x = point.x;
  [(HNDDisplayManager *)self screenBounds];
  v8 = v7;
  v10 = v9;
  v11 = v7;
  +[HNDRocker nubbitSize];
  v13 = v12;
  +[HNDRocker nubbitSize];
  if (y - v14 * 0.5 >= 30.0)
  {
    if (y + v14 * 0.5 > v10 + -30.0)
    {
      if (x - v13 * 0.5 < 30.0)
      {
        v11 = 0.0;
LABEL_10:
        v16 = v10;
        goto LABEL_24;
      }

      if (x + v13 * 0.5 > v8 + -30.0)
      {
        goto LABEL_10;
      }
    }

LABEL_11:
    if (y >= 80.0 || x <= 50.0 || (+[HNDRocker nubbitSize], v16 = 0.0, x >= v8 - v17))
    {
      v18 = y <= v10 + -80.0 || x <= 50.0;
      if (v18 || (+[HNDRocker nubbitSize], v11 = x, v16 = v10, x >= v8 - v19))
      {
        if (x >= v8 * 0.5)
        {
          v11 = v8;
        }

        else
        {
          v11 = 0.0;
        }

        v16 = y;
      }
    }

    else
    {
      v11 = x;
    }

    goto LABEL_24;
  }

  v15 = v13 * 0.5;
  v16 = 0.0;
  if (x - v15 < 30.0)
  {
    v11 = 0.0;
    goto LABEL_24;
  }

  if (x + v15 <= v8 + -30.0)
  {
    goto LABEL_11;
  }

LABEL_24:
  if (midpointCopy)
  {
    +[HNDRocker nubbitSize];
    v11 = v11 - v20 * 0.5;
    v16 = v16 - v21 * 0.5;
  }

  v22 = sub_10004240C((v11 + 0.5), (v16 + 0.5));
  result.y = v23;
  result.x = v22;
  return result;
}

- (int)_angleForDegrees:(double)degrees
{
  if (degrees > 45.0 && degrees < 115.0)
  {
    return 1;
  }

  if (degrees < -70.0 && degrees > -110.0 || degrees >= 250.0 && degrees <= 290.0)
  {
    return 2;
  }

  if (degrees < -25.0 && degrees >= -70.0 || degrees >= 290.0 && degrees <= 335.0)
  {
    return 7;
  }

  if (degrees > 200.0 && degrees <= 245.0)
  {
    return 8;
  }

  if (degrees > 160.0 && degrees < 200.0)
  {
    return 4;
  }

  if (degrees >= 115.0 && degrees < 160.0)
  {
    return 5;
  }

  if (degrees >= 25.0 && degrees < 65.0)
  {
    return 6;
  }

  if (degrees >= 25.0 && degrees <= 315.0)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

- (CGPoint)nubbitPositionForFlick:(CGPoint)flick
{
  SCRCMathGetAverage();
  v5 = v4;
  [(HNDDisplayManager *)self screenBounds];
  v7 = v6;
  v9 = v8;
  +[HNDRocker nubbitSize];
  v11 = v10;
  v13 = v12;
  [(HNDDisplayManager *)self _nubbitPointForEdgePosition];
  v15 = v14;
  v17 = v16;
  v18 = [(HNDDisplayManager *)self _angleForDegrees:v5];
  v19 = v7 - v11;
  v20 = v9 - v13;
  if (v18 > 4)
  {
    if (v18 > 6)
    {
      if (v18 != 7)
      {
        if (v18 != 8)
        {
          goto LABEL_35;
        }

        if (v15 >= v19 || v17 >= v20)
        {
          goto LABEL_35;
        }

        v17 = v9 / 3.0 + v17;
        goto LABEL_28;
      }

      if (v15 <= 0.0 || v17 >= v20)
      {
        goto LABEL_35;
      }

      v17 = v9 / 3.0 + v17;
    }

    else
    {
      if (v18 == 5)
      {
        if (v15 >= v19 || v17 <= 0.0)
        {
          goto LABEL_35;
        }

        v17 = v17 + v9 / -3.0;
LABEL_28:
        v15 = v7 - v11;
        goto LABEL_35;
      }

      if (v15 <= 0.0 || v17 <= 0.0)
      {
        goto LABEL_35;
      }

      v17 = v17 + v9 / -3.0;
    }

LABEL_34:
    v15 = 0.0;
    goto LABEL_35;
  }

  if (v18 > 2)
  {
    if (v18 != 3)
    {
      if (v15 >= v19)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }

    if (v15 <= 0.0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v18 == 1)
  {
    if (v17 > 0.0)
    {
      v17 = v17 + v9 / -3.0;
    }
  }

  else if (v18 == 2 && v17 < v20)
  {
    v17 = v9 / 3.0 + v17;
  }

LABEL_35:

  [(HNDDisplayManager *)self closestNubbitPositionForPoint:0 offsetByMidpoint:v15, v17];
  result.y = v23;
  result.x = v22;
  return result;
}

- (double)_yNubbitPadding:(double)padding y:(double)y
{
  if ((sub_100043C74() & 1) == 0)
  {
    v7 = 2.0;
    if (!sub_100043C20())
    {
      return v7;
    }
  }

  [(HNDDisplayManager *)self screenBounds];
  v9 = v8;
  v11 = v10;
  v12 = sub_100043C74();
  v13 = 2.0;
  if (sub_100043C74())
  {
    if (v12)
    {
      v14 = 10.0;
    }

    else
    {
      v14 = 0.0;
    }

    [(HNDDisplayManager *)self safeAreaInsets];
    v13 = v15 - v14;
  }

  if (AXDeviceHasJindo())
  {
    v7 = self->_foreheadRect.origin.y + self->_foreheadRect.size.height + 9.0;
  }

  else
  {
    v16 = sub_100043C20();
    v7 = 2.0;
    if (sub_100043C20())
    {
      if (v16)
      {
        v17 = 10.0;
      }

      else
      {
        v17 = 0.0;
      }

      [(HNDDisplayManager *)self safeAreaInsets];
      v7 = v18 - v17;
    }
  }

  orientation = [(HNDDisplayManager *)self orientation];
  if ((sub_100043C20() & (orientation != 1)) != 0)
  {
    v7 = 9.0;
  }

  if (v7 >= y && sub_100043C20())
  {
    x = self->_foreheadRect.origin.x;
    +[HNDRocker nubbitSize];
    if (x - v21 < padding && self->_foreheadRect.origin.x + self->_foreheadRect.size.width > padding && (AXDeviceHasJindo() & 1) != 0)
    {
      return v7;
    }

    +[HNDRocker nubbitSize];
    if (88.0 - v22 < padding && v9 + -88.0 > padding)
    {
      return v7;
    }

    return 10.0;
  }

  +[HNDRocker nubbitSize];
  if (v24 + y < v11 - v13 || !sub_100043C74())
  {
    return 10.0;
  }

  v25 = v9 * 0.5;
  +[HNDRocker nubbitSize];
  v27 = v26 + padding;
  v28 = AXDeviceIsPhone() ? 67.0 : 170.0;
  if (v27 <= v25 - v28)
  {
    return 10.0;
  }

  v29 = AXDeviceIsPhone() ? 67.0 : 170.0;
  v7 = v13;
  if (v25 + v29 <= padding)
  {
    return 10.0;
  }

  return v7;
}

- (double)_xNubbitPadding:(double)padding x:(double)x
{
  if ((sub_100043C74() & 1) == 0)
  {
    v7 = 2.0;
    if (!sub_100043C20())
    {
      return v7;
    }
  }

  +[HNDRocker nubbitSize];
  v9 = v8;
  v11 = v10;
  [(HNDDisplayManager *)self _yNubbitPadding:x y:padding];
  v13 = v12;
  [(HNDDisplayManager *)self screenBounds];
  v15 = v14;
  v17 = v16;
  v18 = v14 - v9;
  if (sub_100043C20())
  {
    v19 = 10.0;
  }

  else
  {
    v19 = 0.0;
  }

  orientation = [(HNDDisplayManager *)self orientation];
  if (v13 >= padding && (sub_100043C74() & 1) != 0 || v17 - v11 - v13 <= padding && sub_100043C20())
  {
    v7 = 10.0;
    if (x > 9.0)
    {
      v7 = 9.0;
      if (v18 + -9.0 <= x)
      {
        return v18 + -10.0;
      }
    }

    return v7;
  }

  v7 = 9.0;
  if (orientation != 4)
  {
    if (orientation != 3)
    {
      return v7;
    }

    HasJindo = AXDeviceHasJindo();
    [(HNDDisplayManager *)self safeAreaInsets];
    v23 = v22;
    if (HasJindo)
    {
      if (v22 == 0.0)
      {
        v24 = v19 + self->_foreheadRect.origin.x + self->_foreheadRect.size.width + 9.0;
LABEL_27:
        if (sub_100043C20())
        {
          v34 = v24 - v19;
          if (v34 > x)
          {
            +[HNDRocker nubbitSize];
            if (v17 + -88.0 > padding && 88.0 - v35 < padding)
            {
              return v34;
            }

            else
            {
              return 9.0;
            }
          }
        }

        return v7;
      }

      [(HNDDisplayManager *)self safeAreaInsets];
    }

    else
    {
      [(HNDDisplayManager *)self safeAreaInsets];
      if (v23 == 0.0)
      {
        v24 = v30;
        goto LABEL_27;
      }
    }

    v24 = v31;
    goto LABEL_27;
  }

  v42 = v19;
  v25 = AXDeviceHasJindo();
  [(HNDDisplayManager *)self safeAreaInsets];
  v27 = v26;
  if (!v25)
  {
    [(HNDDisplayManager *)self safeAreaInsets];
    if (v27 == 0.0)
    {
      v29 = v32;
LABEL_37:
      v28 = v42;
      goto LABEL_38;
    }

LABEL_36:
    v29 = v33;
    goto LABEL_37;
  }

  if (v26 != 0.0)
  {
    [(HNDDisplayManager *)self safeAreaInsets];
    goto LABEL_36;
  }

  v28 = v42;
  v29 = v42 + v15 - self->_foreheadRect.origin.x + 18.0;
LABEL_38:
  if (sub_100043C20())
  {
    v37 = v29 - v28;
    +[HNDRocker nubbitSize];
    if (v38 + x > v15 - v37)
    {
      +[HNDRocker nubbitSize];
      if (v17 + -88.0 > padding && 88.0 - v39 < padding)
      {
        return v18 - v37;
      }

      else
      {
        return 9.0;
      }
    }
  }

  return v7;
}

- (CGPoint)_validateNubbitPosition:(CGPoint)position forKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  y = position.y;
  x = position.x;
  +[HNDRocker nubbitSize];
  v9 = v8;
  v11 = v10;
  if (AXDeviceIsPad())
  {
    v12 = -3.0;
  }

  else
  {
    v12 = -4.0;
  }

  [(HNDDisplayManager *)self screenBounds];
  v14 = v13 - (v11 + 0.0);
  v16 = v15 - (v9 + 0.0);
  [(HNDDisplayManager *)self _yNubbitPadding:x y:y];
  v18 = v14 - v17;
  if (y < v14 - v17)
  {
    v18 = y;
  }

  if (v17 >= v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  [(HNDDisplayManager *)self _xNubbitPadding:v19 x:x];
  v21 = v16 - v20;
  if (x < v16 - v20)
  {
    v21 = x;
  }

  if (v20 < v21)
  {
    v20 = v21;
  }

  [(HNDDisplayManager *)self _adjustPositionForDisplayCornerRadius:v20, v19];
  if (!keyboardCopy)
  {
    goto LABEL_17;
  }

  if (v22 == 0.0)
  {
    v22 = v12;
  }

  if (v23 != 0.0)
  {
LABEL_17:
    v12 = v23;
  }

  v24 = v12;
  result.y = v24;
  result.x = v22;
  return result;
}

- (CGPoint)_adjustPositionForDisplayCornerRadius:(CGPoint)radius
{
  y = radius.y;
  x = radius.x;
  if ((AXDeviceIsPad() & 1) == 0)
  {
    [(HNDDisplayManager *)self screenBounds];
    v7 = v6;
    v9 = v8;
    +[HNDRocker nubbitSize];
    v11 = v10;
    v13 = v12;
    +[HNDHandManager displayCornerRadius];
    v15 = v14;
    v16 = sqrt(v15 * v15 + v15 * v15);
    v17 = sqrt((v11 * 0.5 + v16 - v15 + 9.0) * (v11 * 0.5 + v16 - v15 + 9.0) * 0.5) - v11 * 0.5;
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = v15;
    v21.size.height = v15;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = v11;
    v25.size.height = v13;
    if (CGRectIntersectsRect(v21, v25))
    {
      x = v17;
LABEL_6:
      y = v17;
      goto LABEL_7;
    }

    v22.origin.y = 0.0;
    v22.origin.x = v7 - v15;
    v22.size.width = v15;
    v22.size.height = v15;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = v11;
    v26.size.height = v13;
    if (CGRectIntersectsRect(v22, v26))
    {
      x = v7 - v17 - v11;
      goto LABEL_6;
    }

    v23.origin.y = v9 - v15;
    v23.origin.x = 0.0;
    v23.size.width = v15;
    v23.size.height = v15;
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = v11;
    v27.size.height = v13;
    if (CGRectIntersectsRect(v23, v27))
    {
      y = v9 - v17 - v13;
      x = v17;
    }

    else
    {
      v24.origin.x = v7 - v15;
      v24.origin.y = v9 - v15;
      v24.size.width = v15;
      v24.size.height = v15;
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = v11;
      v28.size.height = v13;
      if (CGRectIntersectsRect(v24, v28))
      {
        x = v7 - v17 - v11;
        y = v9 - v17 - v13;
      }
    }
  }

LABEL_7:
  v18 = x;
  v19 = y;
  result.y = v19;
  result.x = v18;
  return result;
}

- (CGPoint)_nubbitPointForEdgePosition
{
  +[HNDRocker nubbitSize];
  v4 = v3;
  v6 = v5;
  [(HNDDisplayManager *)self screenBounds];
  nubbitPositionEdge = self->_nubbitPositionEdge;
  switch(nubbitPositionEdge)
  {
    case 1:
      v11 = v7 * self->_nubbitPositionPercentage;
      v10 = 0.0;
      break;
    case 2:
      v11 = v7 * self->_nubbitPositionPercentage;
      v10 = v8 - v6;
      break;
    case 3:
      v10 = v8 * self->_nubbitPositionPercentage;
      v11 = 0.0;
      break;
    default:
      v11 = v7 - v4;
      v10 = v8 * self->_nubbitPositionPercentage;
      break;
  }

  [(HNDDisplayManager *)self closestNubbitPositionForPoint:0 offsetByMidpoint:v11, v10];
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)_updateNubbitPosition
{
  [(HNDDisplayManager *)self _nubbitPointForEdgePosition];

  [(HNDDisplayManager *)self _moveNubbitToPosition:0 forKeyboard:?];
}

- (void)_updateNubbitEdgePosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  +[HNDRocker nubbitSize];
  v7 = v6;
  v9 = v8;
  [(HNDDisplayManager *)self screenBounds];
  v11 = v10;
  v13 = v12;
  [(HNDDisplayManager *)self _xNubbitPadding:y x:x];
  v15 = v14;
  [(HNDDisplayManager *)self _yNubbitPadding:x y:y];
  if (x <= v15)
  {
    v21 = 3;
    v22 = y / v13;
  }

  else
  {
    v17 = v11 - v7 - v15;
    v18 = 0.0;
    if (y >= v13 - v9 - v16)
    {
      v19 = 2;
    }

    else
    {
      v19 = 0;
    }

    if (y >= v13 - v9 - v16)
    {
      v18 = x / v11;
    }

    if (y > v16)
    {
      v20 = v18;
    }

    else
    {
      v19 = 1;
      v20 = x / v11;
    }

    if (x >= v17)
    {
      v21 = 4;
    }

    else
    {
      v21 = v19;
    }

    if (x >= v17)
    {
      v22 = y / v13;
    }

    else
    {
      v22 = v20;
    }
  }

  self->_nubbitPositionEdge = v21;
  self->_nubbitPositionPercentage = fmin(fmax(v22, 0.0), 1.0);
  [(AXDispatchTimer *)self->_positionSetTimer cancel];
  positionSetTimer = self->_positionSetTimer;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100017D0C;
  v24[3] = &unk_1001D3AD0;
  *&v24[4] = v22;
  v25 = v21;
  [(AXDispatchTimer *)positionSetTimer afterDelay:v24 processBlock:1.0];
}

- (void)_moveNubbitToPosition:(CGPoint)position forKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  y = position.y;
  x = position.x;
  if ([(HNDDisplayManager *)self inNubbitMode])
  {
    [(HNDDisplayManager *)self screenBounds];
    v17.origin.x = CGRectZero.origin.x;
    v17.origin.y = CGRectZero.origin.y;
    v17.size.width = CGRectZero.size.width;
    v17.size.height = CGRectZero.size.height;
    if (!CGRectEqualToRect(v16, v17))
    {
      if (!keyboardCopy)
      {
        [(HNDDisplayManager *)self _updateNubbitEdgePosition:x, y];
      }

      [(HNDDisplayManager *)self _validateNubbitPosition:keyboardCopy forKeyboard:x, y];
      __asm { FMOV            V2.2D, #-1.0 }

      self->_preKeyboardMovePosition = _Q2;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100017ED4;
      v15[3] = &unk_1001D3AF8;
      v15[4] = self;
      v15[5] = v13;
      v15[6] = v14;
      [UIView animateWithDuration:v15 animations:0.22];
    }
  }
}

- (void)_repositionNubbitAfterLift:(CGPoint)lift
{
  y = lift.y;
  x = lift.x;
  fifoIndex = self->_nubbitDistanceTracking.fifoIndex;
  v7 = fifoIndex - 1;
  if (fifoIndex < 1)
  {
    v7 = 7;
  }

  v8 = __OFSUB__(fifoIndex, 2);
  v9 = fifoIndex - 2;
  if (v9 < 0 != v8)
  {
    v9 = 7;
  }

  v10 = self->_nubbitDistanceTracking.fifo[v7];
  v11 = self->_nubbitDistanceTracking.fifo[v9];
  SCRCMathGetAverage();
  if (v12 <= 22.5 || v10 <= 8.0 || v11 <= 8.0)
  {
    [(HNDDisplayManager *)self closestNubbitPositionForPoint:1 offsetByMidpoint:x, y];
  }

  else
  {
    [(HNDDisplayManager *)self nubbitPositionForFlick:x, y];
  }

  [(HNDDisplayManager *)self _moveNubbitToPosition:?];
}

- (BOOL)_position:(CGPoint)_position isOverKeyboard:(CGRect)keyboard
{
  height = keyboard.size.height;
  width = keyboard.size.width;
  y = keyboard.origin.y;
  x = keyboard.origin.x;
  [(UIWindow *)self->_window convertPoint:self->_contentView fromView:_position.x, _position.y];
  v9 = v8;
  v11 = v10;
  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;

  return CGRectContainsPoint(*&v12, *&v9);
}

- (BOOL)_nubbitIsOverKeyboard:(CGRect)keyboard
{
  height = keyboard.size.height;
  width = keyboard.size.width;
  y = keyboard.origin.y;
  x = keyboard.origin.x;
  window = self->_window;
  rocker = [(HNDDisplayManager *)self rocker];
  [rocker frame];
  [(UIWindow *)window convertRect:self->_contentView fromView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  v22 = v11;
  v23 = v13;
  v24 = v15;
  v25 = v17;

  return CGRectIntersectsRect(*&v18, *&v22);
}

- (CGPoint)_nubbitPositionForKeyboardFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(HNDDisplayManager *)self _nubbitPointForEdgePosition];
  v9 = v8;
  [(UIWindow *)self->_window convertRect:self->_contentView toView:x, y, width, height];
  v11 = v10;
  +[HNDRocker nubbitSize];
  v13 = v11 - v12;
  if (sub_100043C74() && AXDeviceIsPhone() && [(HNDDisplayManager *)self orientation]== 1)
  {
    self->_nubbitPositionEdge = 2;
    [(HNDDisplayManager *)self _nubbitPointForEdgePosition];
    v15 = v14;
    v13 = v16;
    v17 = width - v14;
    [(HNDDisplayManager *)self screenBounds];
    v19 = v18;
    IsPhone = AXDeviceIsPhone();
    v21 = 340.0;
    if (IsPhone)
    {
      v21 = 134.0;
    }

    v22 = (v19 - v21) * 0.5;
    if (v15 >= v17)
    {
      v9 = width - v22;
    }

    else
    {
      +[HNDRocker nubbitSize];
      v9 = v22 - v23;
    }
  }

  [(HNDDisplayManager *)self _validateNubbitPosition:1 forKeyboard:v9, v13];
  result.y = v25;
  result.x = v24;
  return result;
}

- (void)_moveNubbitForKeyboard:(CGRect)keyboard
{
  [(HNDDisplayManager *)self _nubbitPositionForKeyboardFrame:keyboard.origin.x, keyboard.origin.y, keyboard.size.width, keyboard.size.height];

  [(HNDDisplayManager *)self _moveNubbitToPosition:1 forKeyboard:?];
}

- (UIEdgeInsets)safeAreaInsets
{
  window = [(HNDDisplayManager *)self window];
  [window safeAreaInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)updateCursorSnapshotVisibilityForKeyboardVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  v5 = +[AXSettings sharedInstance];
  if ([v5 assistiveTouchMouseOnDeviceEyeTrackingEnabled])
  {
  }

  else
  {
    v6 = +[HNDDeviceManager sharedManager];
    mainDeviceIsThirdPartyTracker = [v6 mainDeviceIsThirdPartyTracker];

    if (!mainDeviceIsThirdPartyTracker)
    {
      return;
    }
  }

  if (visibilityCopy)
  {
    v8 = 18;
  }

  else
  {
    v8 = 0;
  }

  layer = [(HNDView *)self->_bubbleModeContentView layer];
  [layer setDisableUpdateMask:v8];

  layer2 = [(HNDView *)self->_fingerContentView layer];
  [layer2 setDisableUpdateMask:v8];
}

- (void)keyboardVisible:(BOOL)visible withFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (visible)
  {
    v27.origin.x = CGRectZero.origin.x;
    v27.origin.y = CGRectZero.origin.y;
    v27.size.width = CGRectZero.size.width;
    v27.size.height = CGRectZero.size.height;
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v9 = !CGRectEqualToRect(v27, v29);
  }

  else
  {
    v9 = 0;
  }

  keyboardVisible = self->_keyboardVisible;
  v11 = ASTLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v12 = NSStringFromCGRect(v28);
    v13 = NSStringFromCGRect(self->_keyboardFrame);
    v23 = 67109634;
    *v24 = v9;
    *&v24[4] = 2114;
    *&v24[6] = v12;
    v25 = 2114;
    v26 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "KB visible: %d with frame: %{public}@ (exisitng frame: %{public}@", &v23, 0x1Cu);
  }

  if (keyboardVisible == v9 && (v30.origin.x = x, v30.origin.y = y, v30.size.width = width, v30.size.height = height, CGRectEqualToRect(self->_keyboardFrame, v30)))
  {
    v14 = ASTLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "No change in KB visibility, not moving nubbit.", &v23, 2u);
    }
  }

  else
  {
    self->_keyboardVisible = v9;
    self->_keyboardFrame.origin.x = x;
    self->_keyboardFrame.origin.y = y;
    self->_keyboardFrame.size.width = width;
    self->_keyboardFrame.size.height = height;
    if ([(HNDDisplayManager *)self inNubbitMode])
    {
      if (v9)
      {
        if ([(HNDDisplayManager *)self _nubbitIsOverKeyboard:x, y, width, height])
        {
          if (keyboardVisible != v9 || (v15 = self->_preKeyboardMovePosition.x, v16 = self->_preKeyboardMovePosition.y, v15 == -1.0) && v16 == -1.0)
          {
            [(HNDDisplayManager *)self _nubbitPointForEdgePosition];
            v15 = v17;
            v16 = v18;
          }

          [(HNDDisplayManager *)self _moveNubbitForKeyboard:x, y, width, height];
          self->_preKeyboardMovePosition.x = v15;
          self->_preKeyboardMovePosition.y = v16;
          v19 = ASTLogCommon();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = NSStringFromPoint(self->_preKeyboardMovePosition);
            v23 = 138412290;
            *v24 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Storing Pre nubbit position: %@", &v23, 0xCu);
          }
        }
      }

      else
      {
        v21 = ASTLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = NSStringFromPoint(self->_preKeyboardMovePosition);
          v23 = 138412290;
          *v24 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Pre nubbit position: %@", &v23, 0xCu);
        }

        if (self->_preKeyboardMovePosition.x != -1.0 || self->_preKeyboardMovePosition.y != -1.0)
        {
          [(HNDDisplayManager *)self _moveNubbitToPosition:?];
        }
      }
    }

    [(HNDDisplayManager *)self updateCursorSnapshotVisibilityForKeyboardVisibility:v9];
  }
}

- (void)moveNubbitToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  +[HNDRocker nubbitSize];
  v7 = x - v6 * 0.5;
  v9 = y - v8 * 0.5;
  rocker = [(HNDDisplayManager *)self rocker];
  [rocker frame];
  v12 = v11;
  v14 = v13;

  rocker2 = [(HNDDisplayManager *)self rocker];
  [rocker2 setFrame:{v7, v9, v12, v14}];
}

- (void)setNubbitMoving:(BOOL)moving
{
  if (self->_nubbitMoving != moving)
  {
    v10 = v3;
    v11 = v4;
    movingCopy = moving;
    v7 = ASTLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Set nubbit moving from override", v9, 2u);
    }

    handManager = [(HNDDisplayManager *)self handManager];
    [handManager setNubbitMoving:movingCopy];

    self->_nubbitMoving = movingCopy;
  }
}

- (void)_handleNubbitMove:(CGPoint)move event:(id)event
{
  y = move.y;
  x = move.x;
  eventCopy = event;
  +[HNDRocker nubbitSize];
  v9 = v8;
  v11 = v10;
  v12 = x - v8 * 0.5;
  v13 = y - v10 * 0.5;
  v14 = self->_movePoint.x;
  v15 = self->_movePoint.y;
  v73 = v15 - v13;
  v74 = v14 - v12;
  if (!self->_nubbitMoving)
  {
    v16 = vabdd_f64(v15, v13);
    if (vabdd_f64(v14, v12) <= 1.0 && v16 <= 1.0)
    {
      goto LABEL_22;
    }
  }

  r2_24 = v13;
  v71 = v12;
  rocker = [(HNDDisplayManager *)self rocker];
  [rocker frame];
  v20 = v19;
  v22 = v21;
  v72 = v23;
  rect = v24;

  v25 = v22 - v73;
  [(HNDDisplayManager *)self screenBounds];
  v78 = CGRectInset(v77, v9 / -3.0, v11 / -3.0);
  v26 = v78.origin.x;
  v27 = v78.origin.y;
  width = v78.size.width;
  height = v78.size.height;
  [(HNDDisplayManager *)self convertFrameToInterfaceOrientation:self->_foreheadRect.origin.x, self->_foreheadRect.origin.y, self->_foreheadRect.size.width, self->_foreheadRect.size.height];
  v64 = v30;
  v65 = v29;
  v62 = v32;
  v63 = v31;
  v33 = v20 - v74;
  v79.origin.x = v33;
  v79.origin.y = v25;
  v79.size.width = v72;
  v79.size.height = rect;
  MaxX = CGRectGetMaxX(v79);
  v66 = v26;
  v80.origin.x = v26;
  v80.origin.y = v27;
  v80.size.width = width;
  v80.size.height = height;
  r2 = v33;
  if (MaxX > CGRectGetMaxX(v80))
  {
    v35 = rect;
    v36 = v72;
LABEL_11:
    v39 = 0;
    goto LABEL_12;
  }

  v81.origin.x = v33;
  v81.origin.y = v25;
  v81.size.width = v72;
  v81.size.height = rect;
  MaxY = CGRectGetMaxY(v81);
  v82.origin.x = v26;
  v82.origin.y = v27;
  v82.size.width = width;
  v82.size.height = height;
  if (MaxY > CGRectGetMaxY(v82) || (v83.origin.x = v33, v83.origin.y = v25, v83.size.width = v72, v83.size.height = rect, MinX = CGRectGetMinX(v83), v84.origin.x = v26, v84.origin.y = v27, v84.size.width = width, v84.size.height = height, MinX < CGRectGetMinX(v84)))
  {
    v35 = rect;
    v36 = v72;
    goto LABEL_11;
  }

  v87.origin.x = v33;
  v87.origin.y = v25;
  v36 = v72;
  v87.size.width = v72;
  v35 = rect;
  v87.size.height = rect;
  MinY = CGRectGetMinY(v87);
  v88.origin.x = v66;
  v88.origin.y = v27;
  v88.size.width = width;
  v88.size.height = height;
  v39 = MinY >= CGRectGetMinX(v88);
LABEL_12:
  v12 = v71;
  if (AXDeviceHasJindo())
  {
    v85.origin.y = v64;
    v85.origin.x = v65;
    v85.size.height = v62;
    v85.size.width = v63;
    v89.origin.x = r2;
    v89.origin.y = v25;
    v40 = v36;
    v89.size.width = v36;
    v89.size.height = v35;
    v86 = CGRectIntersection(v85, v89);
    if ((v39 & CGRectIsNull(v86) & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v40 = v36;
  if (v39)
  {
LABEL_16:
    v41 = [(HNDDisplayManager *)self rocker:*&v62];
    [v41 setFrame:{r2, v25, v40, v35}];
  }

LABEL_17:
  v13 = r2_24;
  if (!self->_nubbitMoving)
  {
    v42 = ASTLogCommon();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.a) = 0;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Set nubbit moving; handle nubbit move", &buf, 2u);
    }

    handManager = [(HNDDisplayManager *)self handManager];
    [handManager setNubbitMoving:1];

    self->_nubbitMoving = 1;
  }

  SCRCMathGetDistanceBetweenPoints();
  SCRCMathUpdateAverage();
  buf.a = 0.0;
  v75.a = 0.0;
  SCRCMathGetVectorAndDistanceForPoints();
  SCRCMathUpdateAngleAverage();
LABEL_22:
  handInfo = [eventCopy handInfo];
  paths = [handInfo paths];
  firstPath = [paths firstPath];
  [firstPath orbValue];
  v48 = v47;

  if (AXForceTouchAvailableAndEnabled())
  {
    if (self->_orbActionExists && !self->_playedHapticForCurrentEvent)
    {
      SCRCMathGetDistanceBetweenPoints();
      if (v49 < 15.0)
      {
        v50 = *&CGAffineTransformIdentity.c;
        *&buf.a = *&CGAffineTransformIdentity.a;
        *&buf.c = v50;
        *&buf.tx = *&CGAffineTransformIdentity.tx;
        [(HNDDisplayManager *)self _iconScaleForForce:v48];
        if (v51 > 1.0)
        {
          CGAffineTransformMakeScale(&buf, v51, v51);
          [(AXDispatchTimer *)self->_longPressTimer cancel];
        }

        rocker2 = [(HNDDisplayManager *)self rocker];
        v75 = buf;
        [rocker2 setTransform:&v75];
      }
    }
  }

  v53 = +[AXSettings sharedInstance];
  assistiveTouchSingleTapAction = [v53 assistiveTouchSingleTapAction];
  if (![assistiveTouchSingleTapAction isEqualToString:AXAssistiveTouchIconTypePassThroughToApp])
  {

LABEL_37:
    v59 = [(HNDDisplayManager *)self rocker:v55];
    [v59 highlightNubbit];

    goto LABEL_38;
  }

  v55 = 3.0;
  v56 = v73;
  v57 = v74;
  if (v74 > 3.0 || v73 > 3.0)
  {
    goto LABEL_37;
  }

LABEL_38:
  self->_movePoint.x = v12;
  self->_movePoint.y = v13;
  v60 = [(HNDDisplayManager *)self rocker:v55];
  [(UIWindow *)self->_window convertPoint:self->_downView toView:v12, v13];
  [v60 handleRealMoveEvent:? maxOrb:? currentForce:?];
}

- (double)_iconScaleForForce:(double)force
{
  v3 = 1.0;
  if (force > 100.0)
  {
    v4 = force / 1000.0 + 1.0;
    v3 = 1.5;
    if (v4 <= 1.5)
    {
      return v4;
    }
  }

  return v3;
}

- (id)viewAtDisplayPoint:(CGPoint)point downPoint:(CGPoint *)downPoint window:(id)window
{
  y = point.y;
  x = point.x;
  windowCopy = window;
  if (!windowCopy)
  {
    v28 = 0;
    goto LABEL_33;
  }

  v10 = [NSMutableArray arrayWithObject:windowCopy];
  if (![v10 count])
  {
    v28 = 0;
    goto LABEL_32;
  }

  downPointCopy = downPoint;
  v11 = 0;
  do
  {
    v12 = [v10 objectAtIndex:{0, downPointCopy}];
    [v10 removeObjectAtIndex:0];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    subviews = [v12 subviews];
    reverseObjectEnumerator = [subviews reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    v16 = [allObjects countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (!v16)
    {
      v28 = v11;
      goto LABEL_28;
    }

    v17 = v16;
    v33 = v12;
    v18 = *v35;
LABEL_6:
    v19 = 0;
    while (1)
    {
      if (*v35 != v18)
      {
        objc_enumerationMutation(allObjects);
      }

      v20 = *(*(&v34 + 1) + 8 * v19);
      layer = [windowCopy layer];
      [layer convertPoint:0 fromLayer:{x, y}];
      v23 = v22;
      v25 = v24;

      [windowCopy convertPoint:v20 toView:{v23, v25}];
      if ([v20 pointInside:0 withEvent:?])
      {
        if ([v20 isUserInteractionEnabled] && (objc_msgSend(v20, "isHidden") & 1) == 0)
        {
          break;
        }
      }

      [v10 addObject:v20];
LABEL_13:
      if (v17 == ++v19)
      {
        v27 = [allObjects countByEnumeratingWithState:&v34 objects:v38 count:16];
        v17 = v27;
        if (!v27)
        {
          v28 = v11;
          v12 = v33;
          goto LABEL_28;
        }

        goto LABEL_6;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      activeRocker = [(HNDDisplayManager *)self activeRocker];

      if (v20 != activeRocker)
      {
        goto LABEL_13;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v33;
      if (downPointCopy)
      {
        downPointCopy->x = v23;
        downPointCopy->y = v25;
      }

      v28 = v20;

      subviews2 = [v28 subviews];
      v30 = [subviews2 count];

      if (!v30)
      {
        [v10 removeAllObjects];
        goto LABEL_28;
      }
    }

    else
    {
      v28 = v11;
      v12 = v33;
    }

    [v10 removeAllObjects];
    [v10 addObject:v20];
LABEL_28:

    v11 = v28;
  }

  while ([v10 count]);
LABEL_32:

LABEL_33:

  return v28;
}

- (unsigned)displayID
{
  window = [(HNDDisplayManager *)self window];
  screen = [window screen];
  displayIdentity = [screen displayIdentity];
  displayID = [displayIdentity displayID];

  return displayID;
}

- (void)resetNubbitLocation
{
  if (self->_nubbitMoving)
  {
    rocker = [(HNDDisplayManager *)self rocker];
    v4 = *&CGAffineTransformIdentity.c;
    v19[0] = *&CGAffineTransformIdentity.a;
    v19[1] = v4;
    v19[2] = *&CGAffineTransformIdentity.tx;
    [rocker setTransform:v19];

    contentView = self->_contentView;
    rocker2 = [(HNDDisplayManager *)self rocker];
    [rocker2 bounds];
    AX_CGRectGetCenter();
    v8 = v7;
    v10 = v9;
    rocker3 = [(HNDDisplayManager *)self rocker];
    [(UIView *)contentView convertPoint:rocker3 fromView:v8, v10];
    v13 = v12;
    v15 = v14;

    [(HNDDisplayManager *)self _repositionNubbitAfterLift:v13, v15];
    rocker4 = [(HNDDisplayManager *)self rocker];
    [rocker4 fadeNubbit];

    [(HNDDisplayManager *)self reachabilityOffset];
    if (v17 > 0.0)
    {
      [(HNDDisplayManager *)self _updateRockerReachability];
    }
  }

  else
  {
    [(HNDDisplayManager *)self reachabilityOffset];
    if (v18 > 0.0)
    {

      [(HNDDisplayManager *)self _resetReachabilityOffset];
    }
  }
}

- (void)_didHandleRealUpEvent
{
  if (+[AXSpringBoardServer isAvailable])
  {
    v2 = +[AXSpringBoardServer server];
    [v2 cancelSiriDismissalForAssistiveTouch];
  }
}

- (BOOL)handleRealEvent:(id)event
{
  eventCopy = event;
  handInfo = [eventCopy handInfo];
  paths = [handInfo paths];
  firstPath = [paths firstPath];
  [firstPath pathLocation];
  v9 = v8;
  v11 = v10;

  layer = [(UIWindow *)self->_window layer];
  [layer convertPoint:0 fromLayer:{v9, v11}];
  v14 = v13;
  v16 = v15;

  if (![(HNDDisplayManager *)self isShowingCalibrationUI])
  {
    trackpadViewController = [(HNDDisplayManager *)self trackpadViewController];
    handManager = [(HNDDisplayManager *)self handManager];
    [handManager systemPointerLocation];
    v22 = v21;
    v24 = v23;

    trackpadViewController2 = [(HNDDisplayManager *)self trackpadViewController];
    v26 = [trackpadViewController2 trackpadContainsPoint:{v9, v11}];

    self->_didTouchTrackpad = v26;
    if (self->_trackpadPointerOnRocker)
    {
      self->_trackpadPointerOnRocker = [(HNDDisplayManager *)self isShowingVirtualTrackpad];
    }

    else
    {
      activeRocker = [(HNDDisplayManager *)self activeRocker];
      [activeRocker frame];
      v160.x = v22;
      v160.y = v24;
      v28 = CGRectContainsPoint(v161, v160);
      if (v28)
      {
        LOBYTE(v28) = [(HNDDisplayManager *)self isShowingVirtualTrackpad];
      }

      self->_trackpadPointerOnRocker = v28;
    }

    if (-[HNDDisplayManager isShowingVirtualTrackpad](self, "isShowingVirtualTrackpad") && !-[HNDDisplayManager shouldPassThroughVirtualTrackpad:](self, "shouldPassThroughVirtualTrackpad:", [eventCopy senderID]))
    {
      if (v26)
      {
        [trackpadViewController highlightTrackpad];
      }

      v29 = +[UIApplication sharedApplication];
      [v29 _enqueueHIDEvent:{objc_msgSend(eventCopy, "creatorHIDEvent")}];
    }

    if (self->_lastHandType == 6 && [handInfo eventType] == self->_lastHandType)
    {
      v30 = CGPointZero;
      self->_nubbitStartDownPoint = CGPointZero;
      self->_downPoint = v30;
      downView = self->_downView;
      self->_downView = 0;

      [(HNDDisplayManager *)self _startIdleTimer];
      v18 = 1;
LABEL_157:

      goto LABEL_158;
    }

    activeRocker2 = [(HNDDisplayManager *)self activeRocker];
    [activeRocker2 isAnimatingNubbit];

    activeRocker3 = [(HNDDisplayManager *)self activeRocker];
    if ([activeRocker3 isAnimatingNubbit])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        goto LABEL_21;
      }

      activeRocker4 = [(HNDDisplayManager *)self activeRocker];
      state = [activeRocker4 state];

      if (state != 1)
      {
        goto LABEL_21;
      }

      activeRocker5 = [(HNDDisplayManager *)self activeRocker];
      activeRocker3 = self->_downView;
      self->_downView = activeRocker5;
    }

LABEL_21:
    v38 = [handInfo eventType] == 1 || objc_msgSend(handInfo, "eventType") == 2;
    p_downView = &self->_downView;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(HNDView *)*p_downView isModalDown])
    {
      goto LABEL_29;
    }

    v40 = self->_downView;
    rocker = [(HNDDisplayManager *)self rocker];
    v42 = rocker;
    if (v40 == rocker && self->_nubbitMoving)
    {
      eventType = [handInfo eventType];

      if (eventType == 2)
      {
LABEL_29:
        v44 = *p_downView;
        goto LABEL_33;
      }
    }

    else
    {
    }

    v44 = *p_downView;
    if (*p_downView == 0 || v38)
    {
      v45 = [(HNDDisplayManager *)self viewAtDisplayPoint:&self->_downPoint downPoint:self->_window window:v9, v11];
LABEL_34:
      v46 = v45;
      multiTouchBackgound = self->_multiTouchBackgound;
      eventType2 = [handInfo eventType];
      SCRCMathGetDistanceBetweenPoints();
      v49 = v48;
      if (v26)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && !-[HNDDisplayManager shouldPassThroughVirtualTrackpad:](self, "shouldPassThroughVirtualTrackpad:", [eventCopy senderID]))
        {
LABEL_149:
          v18 = 1;
          goto LABEL_156;
        }
      }

      if (_UISolariumEnabled() && [eventCopy creatorHIDEvent])
      {
        activeRocker6 = [(HNDDisplayManager *)self activeRocker];
        v51 = activeRocker6;
        if (v46 == activeRocker6)
        {
        }

        else
        {
          objc_opt_class();
          v52 = objc_opt_isKindOfClass();

          if ((v52 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        if (!self->_trackpadPointerOnRocker)
        {
          handInfo2 = [eventCopy handInfo];
          eventType3 = [handInfo2 eventType];

          if (eventType3 != 2)
          {
            v55 = +[UIApplication sharedApplication];
            [v55 _enqueueHIDEvent:{objc_msgSend(eventCopy, "creatorHIDEvent")}];
          }
        }
      }

LABEL_46:
      v18 = 0;
      v56 = v49;
      if (eventType2 > 7)
      {
        if ((eventType2 - 8) > 2)
        {
LABEL_156:

          goto LABEL_157;
        }

LABEL_52:
        activeRocker7 = [(HNDDisplayManager *)self activeRocker];
        v58 = *&CGAffineTransformIdentity.c;
        *buf = *&CGAffineTransformIdentity.a;
        v158 = v58;
        v159 = *&CGAffineTransformIdentity.tx;
        [activeRocker7 setTransform:buf];

        [(AXDispatchTimer *)self->_longPressTimer cancel];
        activeRocker8 = [(HNDDisplayManager *)self activeRocker];
        [activeRocker8 fadeNubbit];

        [trackpadViewController fadeTrackpad];
        trackpadAction = self->_trackpadAction;
        if (trackpadAction == 2)
        {
          [trackpadViewController handleTrackpadScroll:2 point:{CGPointZero.x, CGPointZero.y}];
        }

        else if (trackpadAction == 1)
        {
          [trackpadViewController handleTrackpadPinch:2 firstPoint:CGPointZero.x secondPoint:{CGPointZero.y, CGPointZero.x, CGPointZero.y}];
        }

        v61 = trackpadViewController;
        if (self->_trackpadPointerOnRocker && v46 == self->_rocker && self->_lastHandType == 1 && !self->_trackpadMovedNubbit)
        {
          v62 = self->_downView;
          [(UIWindow *)self->_window convertPoint:v62 toView:v22, v24];
          [HNDView handleRealUpEvent:v62 maxOrb:"handleRealUpEvent:maxOrb:"];
        }

        nubbitMoving = self->_nubbitMoving;
        v64 = ASTLogCommon();
        v65 = os_log_type_enabled(v64, OS_LOG_TYPE_INFO);
        if (!nubbitMoving)
        {
          if (v65)
          {
            longPressActionActivated = self->_longPressActionActivated;
            *buf = 67109120;
            *&buf[4] = longPressActionActivated;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "Up event, long press activation state: %d", buf, 8u);
          }

          trackpadViewController = v61;
          if (!self->_longPressActionActivated)
          {
            activeRocker9 = [(HNDDisplayManager *)self activeRocker];
            [activeRocker9 modalizeMenu:0 modalButton:0];

            if (eventType2 <= 0xA && ((1 << eventType2) & 0x640) != 0)
            {
              v70 = self->_downView;
              [(UIWindow *)self->_window convertPoint:v70 toView:v14, v16];
              [HNDView handleRealUpEvent:v70 maxOrb:"handleRealUpEvent:maxOrb:"];
            }

            else
            {
              v132 = self->_downView;
              [(UIWindow *)self->_window convertPoint:v132 toView:v14, v16];
              [(HNDView *)v132 handleRealCancelEvent:?];
            }
          }

          goto LABEL_82;
        }

        if (v65)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "Nubbit not moving", buf, 2u);
        }

        handManager2 = [(HNDDisplayManager *)self handManager];
        [handManager2 setNubbitMoving:0];

        trackpadViewController = v61;
        if (v56 >= 10.0 || CFAbsoluteTimeGetCurrent() - self->_nubbitTouchDownTime >= 0.5 && self->_maxOrbDuringTouch <= 100.0)
        {
          [(HNDRocker *)self->_rocker resetOrbAction];
        }

        else
        {
          if (!self->_trackpadPointerOnRocker)
          {
            v67 = self->_downView;
            [(UIWindow *)self->_window convertPoint:v67 toView:v14, v16];
            [HNDView handleRealUpEvent:v67 maxOrb:"handleRealUpEvent:maxOrb:"];
          }

          if (![(HNDDisplayManager *)self inNubbitMode])
          {
            goto LABEL_79;
          }
        }

        [(HNDDisplayManager *)self resetNubbitLocation];
LABEL_79:
        self->_nubbitMoving = 0;
        if (v56 > 10.0)
        {
          __asm { FMOV            V0.2D, #-1.0 }

          self->_preKeyboardMovePosition = _Q0;
        }

        SCRCMathClearAverage();
        SCRCMathClearAverage();
LABEL_82:
        self->_longPressActionActivated = 0;
        v75 = CGPointZero;
        self->_downPoint = CGPointZero;
        self->_nubbitStartDownPoint = v75;
        [(HNDDisplayManager *)self _startIdleTimer];
        self->_maxOrbDuringTouch = 0.0;
        self->_playedHapticForCurrentEvent = 0;
        activeRocker10 = [(HNDDisplayManager *)self activeRocker];
        [activeRocker10 resetOrbAction];

        self->_trackpadPointerOnRocker = 0;
        *&self->_didTouchTrackpad = 0;
        self->_trackpadAction = 0;
        if ([(HNDDisplayManager *)self inNubbitMode]&& [(HNDDisplayManager *)self alwaysShowMenu])
        {
          rocker2 = [(HNDDisplayManager *)self rocker];
          [rocker2 showNubbitPressedState:0];
        }

        [(HNDDisplayManager *)self _hideLargeContentViewerIfNeeded];
        [(HNDDisplayManager *)self _didHandleRealUpEvent];
        v78 = 1;
        p_downView = &self->_downView;
        goto LABEL_137;
      }

      if (eventType2 != 1)
      {
        if (eventType2 != 2)
        {
          if (eventType2 != 6)
          {
            goto LABEL_156;
          }

          goto LABEL_52;
        }

        v92 = trackpadViewController;
        [(UIWindow *)self->_window convertPoint:v46 toView:v14, v16];
        v94 = v93;
        v154 = v95;
        v96 = self->_downView;
        rocker3 = [(HNDDisplayManager *)self rocker];
        v98 = rocker3;
        if (v96 == rocker3)
        {
          inNubbitMode = [(HNDDisplayManager *)self inNubbitMode];

          trackpadViewController = v92;
          if (inNubbitMode)
          {
            if ([v92 isPressingOnTrackpad] && self->_trackpadPointerOnRocker)
            {
              [(HNDDisplayManager *)self _handleNubbitMove:eventCopy event:v22, v24];
              self->_trackpadMovedNubbit = 1;
            }

            else if (!self->_didTouchTrackpad)
            {
              [(HNDDisplayManager *)self _handleNubbitMove:eventCopy event:v14, v16];
            }

            goto LABEL_116;
          }
        }

        else
        {

          trackpadViewController = v92;
        }

        v114 = *p_downView;
        if (*p_downView == v46)
        {
LABEL_114:
          maxOrbDuringTouch = self->_maxOrbDuringTouch;
          handInfo3 = [eventCopy handInfo];
          paths2 = [handInfo3 paths];
          firstPath2 = [paths2 firstPath];
          [firstPath2 pathPressure];
          [(HNDView *)v114 handleRealMoveEvent:v94 maxOrb:v154 currentForce:maxOrbDuringTouch, v119];

          goto LABEL_116;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [(HNDView *)*p_downView isModalDown])
        {
          v114 = self->_downView;
          goto LABEL_114;
        }

        [(HNDView *)self->_downView handleFingerDriftedAway];
        v120 = self->_downView;
        self->_downView = 0;

        [(HNDRocker *)v46 handleRealDownEvent:v94, v154];
        [(HNDDisplayManager *)self _updateLargeContentViewerIfNeededForView:v46];
LABEL_116:
        v121 = self->_trackpadAction;
        if (v121 != 2)
        {
          if (v121 == 1)
          {
            paths3 = [handInfo paths];
            secondPath = [paths3 secondPath];
            [secondPath pathLocation];
            v127 = v126;
            v129 = v128;
            v130 = trackpadViewController;
            v131 = 1;
          }

          else
          {
            if (v121)
            {
              goto LABEL_126;
            }

            if ([trackpadViewController trackpadCanScroll])
            {
              self->_trackpadAction = 2;
              v122 = trackpadViewController;
              v123 = 0;
LABEL_125:
              [v122 handleTrackpadScroll:v123 point:{v9, v11}];
              goto LABEL_126;
            }

            if (![trackpadViewController trackpadCanPinch])
            {
LABEL_126:
              if (v56 > 10.0 && [(AXDispatchTimer *)self->_longPressTimer isPending]&& ([(AXDispatchTimer *)self->_longPressTimer isCancelled]& 1) == 0)
              {
                [(AXDispatchTimer *)self->_longPressTimer cancel];
                v133 = ASTLogCommon();
                if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  *&buf[4] = v56;
                  _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_INFO, "Moved to far, canceling long press timer: %f", buf, 0xCu);
                }
              }

              if (CFAbsoluteTimeGetCurrent() - *&qword_100218988 > 3.0)
              {
                v134 = +[AXSpringBoardServer server];
                [v134 resetDimTimer];

                qword_100218988 = CFAbsoluteTimeGetCurrent();
              }

              v135 = self->_maxOrbDuringTouch;
              handInfo4 = [eventCopy handInfo];
              paths4 = [handInfo4 paths];
              firstPath3 = [paths4 firstPath];
              [firstPath3 pathPressure];
              v140 = v139;

              v78 = 0;
              v141 = v140;
              if (v135 >= v140)
              {
                v141 = v135;
              }

              self->_maxOrbDuringTouch = v141;
              goto LABEL_137;
            }

            self->_trackpadAction = 1;
            paths3 = [handInfo paths];
            secondPath = [paths3 secondPath];
            [secondPath pathLocation];
            v127 = v152;
            v129 = v153;
            v130 = trackpadViewController;
            v131 = 0;
          }

          [v130 handleTrackpadPinch:v131 firstPoint:v9 secondPoint:{v11, v127, v129}];

          goto LABEL_126;
        }

        v122 = trackpadViewController;
        v123 = 1;
        goto LABEL_125;
      }

      v79 = trackpadViewController;
      +[HNDRocker nubbitSize];
      v81 = v14 - v80 * 0.5;
      v83 = v16 - v82 * 0.5;
      v84 = +[AXSettings sharedInstance];
      assistiveTouchLongPressAction = [v84 assistiveTouchLongPressAction];
      if (assistiveTouchLongPressAction)
      {
        v86 = assistiveTouchLongPressAction;
        v87 = v26 | ~[(HNDDisplayManager *)self inNubbitMode];

        if (v87)
        {
LABEL_92:
          self->_movePoint.x = v81;
          self->_movePoint.y = v83;
          if ([(HNDDisplayManager *)self isMenuVisible])
          {
            [(UIWindow *)self->_window convertPoint:self->_downView toView:v81, v83];
            [(HNDRocker *)v46 handleRealDownEvent:?];
            [(HNDDisplayManager *)self setShouldDelayBeforePresentingHUDView:1];
            [(HNDDisplayManager *)self _updateLargeContentViewerIfNeededForView:v46];
            SCRCMathClearAverage();
            SCRCMathClearAverage();
            trackpadViewController = v79;
          }

          else
          {
            trackpadViewController = v79;
            if (!self->_nubbitMoving)
            {
              v99 = +[AXSettings sharedInstance];
              assistiveTouchSingleTapAction = [v99 assistiveTouchSingleTapAction];
              v101 = [assistiveTouchSingleTapAction isEqualToString:AXAssistiveTouchIconTypePassThroughToApp];

              if ((v101 & 1) == 0)
              {
                rocker4 = [(HNDDisplayManager *)self rocker];
                [rocker4 highlightNubbit];
              }

              rocker5 = [(HNDDisplayManager *)self rocker];
              window = self->_window;
              rocker6 = [(HNDDisplayManager *)self rocker];
              [(UIWindow *)window convertPoint:rocker6 toView:self->_movePoint.x, self->_movePoint.y];
              [rocker5 handleRealDownEvent:?];
            }

            rocker7 = [(HNDDisplayManager *)self rocker];

            if (v46 == rocker7)
            {
              self->_nubbitStartDownPoint.x = v81;
              self->_nubbitStartDownPoint.y = v83;
              self->_nubbitTouchDownTime = CFAbsoluteTimeGetCurrent();
              if ([(HNDDisplayManager *)self inNubbitMode])
              {
                v107 = ASTLogCommon();
                if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_INFO, "Set nubbit moving; touch event down", buf, 2u);
                }

                handManager3 = [(HNDDisplayManager *)self handManager];
                [handManager3 setNubbitMoving:1];

                self->_nubbitMoving = 1;
              }
            }
          }

          handInfo5 = [eventCopy handInfo];
          paths5 = [handInfo5 paths];
          firstPath4 = [paths5 firstPath];
          [firstPath4 pathPressure];
          self->_maxOrbDuringTouch = v112;

          [(AXDispatchTimer *)self->_idleTimer cancel];
          [(AXDispatchTimer *)self->_longIdleTimer cancel];
          v78 = 0;
LABEL_137:
          self->_lastHandType = [handInfo eventType];
          if ((v78 & 1) == 0)
          {
            v142 = self->_downView;
            if (v142 != v46)
            {
              [(HNDView *)v142 handleFingerDriftedAway];
              objc_storeStrong(p_downView, v46);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                isBackButton = [(HNDView *)*p_downView isBackButton];
                activeRocker11 = [(HNDDisplayManager *)self activeRocker];
                v145 = activeRocker11;
                if (isBackButton)
                {
                  v146 = 0;
                  v147 = 0;
                }

                else
                {
                  v147 = *p_downView;
                  v146 = 1;
                }

                [activeRocker11 modalizeMenu:v146 modalButton:v147];

                self->_lastMenuInteractionTime = CFAbsoluteTimeGetCurrent();
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || ([(HNDView *)*p_downView isModalDown]& 1) == 0)
                {
                  activeRocker12 = [(HNDDisplayManager *)self activeRocker];
                  [activeRocker12 modalizeMenu:0 modalButton:0];
                }
              }
            }
          }

          if (!v78 || (v149 = *p_downView, *p_downView = 0, v149, v46 == multiTouchBackgound))
          {
            if (v46)
            {
              _ZF = v46 == multiTouchBackgound;
            }

            else
            {
              _ZF = 1;
            }

            v18 = !_ZF;
            goto LABEL_156;
          }

          goto LABEL_149;
        }

        v88 = ASTLogCommon();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
        {
          v89 = +[AXSettings sharedInstance];
          assistiveTouchLongPressAction2 = [v89 assistiveTouchLongPressAction];
          *buf = 138412290;
          *&buf[4] = assistiveTouchLongPressAction2;
          _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "kicking off longpress action: %@", buf, 0xCu);
        }

        longPressTimer = self->_longPressTimer;
        v84 = +[AXSettings sharedInstance];
        [v84 assistiveTouchLongPressActionDuration];
        v156[0] = _NSConcreteStackBlock;
        v156[1] = 3221225472;
        v156[2] = sub_10001A478;
        v156[3] = &unk_1001D3488;
        v156[4] = self;
        [(AXDispatchTimer *)longPressTimer afterDelay:v156 processBlock:?];
      }

      goto LABEL_92;
    }

LABEL_33:
    v45 = v44;
    goto LABEL_34;
  }

  v17 = +[UIApplication sharedApplication];
  [v17 _enqueueHIDEvent:{objc_msgSend(eventCopy, "creatorHIDEvent")}];

  v18 = 0;
LABEL_158:

  return v18;
}

- (void)updateRockersForSubstantialTransition
{
  rocker = [(HNDDisplayManager *)self rocker];
  [rocker updateRockersForSubstantialTransition];

  expandedRocker = [(HNDDisplayManager *)self expandedRocker];
  [expandedRocker updateRockersForSubstantialTransition];
}

- (CGPoint)convertPointToInterfaceOrientation:(CGPoint)orientation
{
  y = orientation.y;
  x = orientation.x;
  [(HNDDisplayManager *)self portraitUpScreenBounds];
  orientation = self->_orientation;
  v9 = v7 - y;
  v10 = v6 - x;
  if (orientation == 2)
  {
    v11 = v6 - x;
  }

  else
  {
    v11 = x;
  }

  if (orientation == 2)
  {
    v12 = v7 - y;
  }

  else
  {
    v12 = y;
  }

  if (orientation == 3)
  {
    v11 = y;
  }

  else
  {
    v10 = v12;
  }

  if (orientation == 4)
  {
    v10 = x;
  }

  else
  {
    v9 = v11;
  }

  result.y = v10;
  result.x = v9;
  return result;
}

- (CGRect)convertFrameToInterfaceOrientation:(CGRect)orientation
{
  height = orientation.size.height;
  width = orientation.size.width;
  y = orientation.origin.y;
  x = orientation.origin.x;
  [(HNDDisplayManager *)self portraitUpScreenBounds];
  orientation = self->_orientation;
  v10 = v8 - y - height;
  v12 = v11 - x - width;
  if (orientation == 2)
  {
    v13 = v8 - y - height;
  }

  else
  {
    v13 = y;
  }

  if (orientation == 2)
  {
    v14 = v12;
  }

  else
  {
    v14 = x;
  }

  if (orientation == 3)
  {
    v15 = width;
  }

  else
  {
    v15 = height;
  }

  if (orientation == 3)
  {
    v16 = height;
  }

  else
  {
    v16 = width;
  }

  if (orientation == 3)
  {
    v17 = y;
  }

  else
  {
    v12 = v13;
    v17 = v14;
  }

  if (orientation == 4)
  {
    v18 = width;
  }

  else
  {
    v18 = v15;
  }

  if (orientation == 4)
  {
    v19 = height;
  }

  else
  {
    v19 = v16;
  }

  if (orientation == 4)
  {
    v12 = x;
  }

  else
  {
    v10 = v17;
  }

  result.size.height = v18;
  result.size.width = v19;
  result.origin.y = v12;
  result.origin.x = v10;
  return result;
}

- (CGPoint)convertToNormalizedInterfaceOrientation:(CGPoint)orientation
{
  y = orientation.y;
  x = orientation.x;
  [(HNDDisplayManager *)self screenBounds];
  v6 = x / v5;
  v8 = y / v7;
  result.y = v8;
  result.x = v6;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromOrientation:(int)orientation
{
  y = point.y;
  x = point.x;
  [(HNDDisplayManager *)self portraitUpScreenBounds];
  v8 = v7 - x;
  v10 = v9 - y;
  v11 = v7 - y;
  v12 = v9 - x;
  if (orientation != 2)
  {
    v12 = x;
    v11 = y;
  }

  if (orientation == 3)
  {
    v13 = x;
  }

  else
  {
    v10 = v12;
    v13 = v11;
  }

  if (orientation == 4)
  {
    v10 = y;
  }

  else
  {
    v8 = v13;
  }

  result.y = v8;
  result.x = v10;
  return result;
}

- (CGPoint)convertPointToPortraitUpOrientation:(CGPoint)orientation
{
  [(HNDDisplayManager *)self convertPoint:self->_orientation fromOrientation:orientation.x, orientation.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGRect)screenBoundsForRockerButton:(id)button
{
  buttonCopy = button;
  activeRocker = [(HNDDisplayManager *)self activeRocker];
  [activeRocker onScreenFrameForRockerButton:buttonCopy];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  fingerContentView = self->_fingerContentView;
  activeRocker2 = [(HNDDisplayManager *)self activeRocker];
  [(HNDView *)fingerContentView convertRect:activeRocker2 fromView:v7, v9, v11, v13];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)_longIdleTimerFired
{
  if ([(HNDDisplayManager *)self isMenuVisible])
  {
    activeRocker = [(HNDDisplayManager *)self activeRocker];
    [activeRocker onScreenLocation];
    v5 = v4;
    v7 = v6;

    [(HNDDisplayManager *)self showMenu:0];
  }

  else
  {
    v5 = -1.0;
    v7 = -1.0;
  }

  handManager = [(HNDDisplayManager *)self handManager];
  hardwareIdentifier = [(HNDDisplayManager *)self hardwareIdentifier];
  [handManager resetFingersToPoint:hardwareIdentifier onDisplay:-[HNDView isActive](self->_fingerContentView active:{"isActive"), v5, v7}];
}

- (void)updateNubbitForegroundImageForAction:(id)action
{
  actionCopy = action;
  rocker = [(HNDDisplayManager *)self rocker];

  if (rocker)
  {
    pendingForegroundImageAction = [(HNDDisplayManager *)self rocker];
    [pendingForegroundImageAction updateForegroundImageForAction:actionCopy];
  }

  else
  {
    v6 = actionCopy;
    pendingForegroundImageAction = self->_pendingForegroundImageAction;
    self->_pendingForegroundImageAction = v6;
  }
}

- (void)activateDisplayItems
{
  activeRocker = [(HNDDisplayManager *)self activeRocker];
  if (([activeRocker isActive] & 1) == 0)
  {
    isMenuVisible = [(HNDDisplayManager *)self isMenuVisible];

    if (!isMenuVisible)
    {
      return;
    }

    activeRocker = [(HNDDisplayManager *)self activeRocker];
    [activeRocker setIsActive:1];
  }
}

- (void)setFingerContentViewIsActive:(BOOL)active
{
  activeCopy = active;
  if ([(HNDDisplayManager *)self _shouldSetFingerContentViewToActive:?])
  {
    fingerContentView = self->_fingerContentView;

    [(HNDView *)fingerContentView setIsActive:activeCopy];
  }
}

- (void)setFingerContentViewIsActive:(BOOL)active withDuration:(double)duration
{
  activeCopy = active;
  if ([(HNDDisplayManager *)self _shouldSetFingerContentViewToActive:?])
  {
    fingerContentView = self->_fingerContentView;

    [(HNDView *)fingerContentView setIsActive:activeCopy withDuration:duration];
  }
}

- (void)setFingerContentViewIsActive:(BOOL)active withDuration:(double)duration options:(unint64_t)options
{
  activeCopy = active;
  if ([(HNDDisplayManager *)self _shouldSetFingerContentViewToActive:?])
  {
    fingerContentView = self->_fingerContentView;

    [(HNDView *)fingerContentView setIsActive:activeCopy withDuration:options options:duration];
  }
}

- (BOOL)_shouldSetFingerContentViewToActive:(BOOL)active
{
  inBubbleMode = [(HNDDisplayManager *)self inBubbleMode];
  if (!inBubbleMode)
  {
    if (![(HNDDisplayManager *)self inBubbleMode])
    {
      v7 = 0;
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  handManager = [(HNDDisplayManager *)self handManager];
  if (![handManager currentlySnappedInBubbleMode])
  {
    v7 = 1;
    goto LABEL_9;
  }

  if ([(HNDDisplayManager *)self inBubbleMode])
  {
LABEL_6:
    handManager2 = [(HNDDisplayManager *)self handManager];
    v7 = [handManager2 currentlySnappedInBubbleMode] & !active;

    if (!inBubbleMode)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v7 = 0;
LABEL_9:

LABEL_11:
  inBubbleMode2 = [(HNDDisplayManager *)self inBubbleMode];
  if ((v7 & 1) != 0 || !inBubbleMode2)
  {
    return 1;
  }

  return [(HNDDisplayManager *)self isShowingVirtualTrackpad];
}

- (void)_idleTimerFired
{
  [(AXDispatchTimer *)self->_longIdleTimer cancel];
  longIdleTimer = self->_longIdleTimer;
  isMenuVisible = [(HNDDisplayManager *)self isMenuVisible];
  v5 = 7.0;
  if (isMenuVisible)
  {
    v5 = 30.0;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001ACC4;
  v6[3] = &unk_1001D3488;
  v6[4] = self;
  [(AXDispatchTimer *)longIdleTimer afterDelay:v6 processBlock:v5];
}

- (void)_startIdleTimer
{
  [(HNDDisplayManager *)self activateDisplayItems];
  [(AXDispatchTimer *)self->_longIdleTimer cancel];
  [(AXDispatchTimer *)self->_idleTimer cancel];
  idleTimer = self->_idleTimer;
  [(HNDDisplayManager *)self _idleTime];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001AD70;
  v4[3] = &unk_1001D3488;
  v4[4] = self;
  [(AXDispatchTimer *)idleTimer afterDelay:v4 processBlock:?];
  [(HNDDisplayManager *)self _updateAutoHideMousePointer];
}

- (double)_idleTime
{
  handManager = [(HNDDisplayManager *)self handManager];
  dwellControlEnabled = [handManager dwellControlEnabled];

  result = 3.0;
  if (dwellControlEnabled)
  {
    [(HNDDisplayManager *)self assistiveTouchMouseDwellControlActivationTimeout];
    return v6 + 3.0;
  }

  return result;
}

- (CGPoint)normalizedPointForDifference:(CGPoint)difference
{
  y = difference.y;
  __asm { FMOV            V1.2D, #1.0 }

  v9 = vminnmq_f64(vmaxnmq_f64(vaddq_f64(vdivq_f64(difference, vdupq_n_s64(0x4072C00000000000uLL)), self->_currentPoint), 0), _Q1);
  v10 = v9.f64[1];
  result.x = v9.f64[0];
  result.y = v10;
  return result;
}

- (double)_rotationDegreesForOrientation:(int)orientation
{
  result = 0.0;
  if ((orientation - 2) <= 2)
  {
    return dbl_1001BD068[orientation - 2];
  }

  return result;
}

- (CGAffineTransform)_transformForOrientation
{
  [(HNDDisplayManager *)self _rotationDegreesForOrientation:self->_orientation];
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  v5 = v4 * 0.0174532925;

  return CGAffineTransformMakeRotation(retstr, v5);
}

- (void)_updateViewsForOrientation
{
  if (self->_orientation)
  {
    [(HNDDisplayManager *)self _resetCurrentPointToInitialPoint];
    handManager = [(HNDDisplayManager *)self handManager];
    hardwareIdentifier = [(HNDDisplayManager *)self hardwareIdentifier];
    [handManager resetFingersIfNeededOnDisplay:hardwareIdentifier];
  }
}

- (void)setOrientation:(int)orientation withCompletion:(id)completion
{
  v4 = *&orientation;
  completionCopy = completion;
  if (self->_orientation != v4)
  {
LABEL_7:
    if ([(HNDDisplayManager *)self isShowingCalibrationUI])
    {
      [(HNDDisplayManager *)self _forceDismissCalibrationForReason:1];
    }

    IsPhone = AXDeviceIsPhone();
    if (v4 != 1)
    {
      if (IsPhone)
      {
        v9 = +[AXSpringBoardServer server];
        isSpotlightVisible = [v9 isSpotlightVisible];

        if (isSpotlightVisible)
        {
          v11 = +[AXSpringBoardServer server];
          [v11 toggleSpotlight];
        }
      }
    }

    [(HNDDisplayManager *)self _rotationDegreesForOrientation:v4];
    v13 = v12;
    [(HNDDisplayManager *)self _rotationDegreesForOrientation:self->_orientation];
    v15 = v14;
    [UIApp windowRotationDuration];
    v17 = v15 - v13;
    if (v15 - v13 < 0.0)
    {
      v17 = -(v15 - v13);
    }

    if (v17 == 180.0)
    {
      v18 = v16 + v16;
    }

    else
    {
      v18 = v16;
    }

    if (_AXSAssistiveTouchScannerEnabled() || -[HNDDisplayManager alwaysShowMenu](self, "alwaysShowMenu") || (-[HNDDisplayManager activeRocker](self, "activeRocker"), v19 = objc_claimAutoreleasedReturnValue(), [v19 alpha], v21 = v20, v19, v21 != 0.0))
    {
      self->_orientation = v4;
      activeRocker = [(HNDDisplayManager *)self activeRocker];
      [activeRocker alpha];
      v24 = v23 == 0.0;

      activeRocker2 = [(HNDDisplayManager *)self activeRocker];
      [activeRocker2 alpha];
      v27 = v26;

      if (v27 >= 0.01)
      {
        v28 = v27;
      }

      else
      {
        v28 = 1.0;
      }

      trackpadViewController = [(HNDDisplayManager *)self trackpadViewController];
      view = [trackpadViewController view];
      [view alpha];
      v32 = v31;

      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10001B268;
      v39[3] = &unk_1001D3B20;
      v40 = v24;
      v39[4] = self;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10001B328;
      v34[3] = &unk_1001D3B98;
      v38 = v24;
      v34[4] = self;
      v36 = v28;
      v37 = v32;
      v35 = completionCopy;
      [UIView animateWithDuration:v39 animations:v34 completion:v18];
    }

    else
    {
      [(HNDDisplayManager *)self _updateViewsForOrientation];
    }

    goto LABEL_29;
  }

  if (v4 && [(UIWindow *)self->_window isHidden])
  {
    v7 = ASTLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AST Windows: got same non-ambiguous orientation, but windows are hidden, so continue", buf, 2u);
    }

    goto LABEL_7;
  }

  v33 = ASTLogCommon();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v42 = v4;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "AST Windows: visible windows got same orientation, return. orientation: %d", buf, 8u);
  }

LABEL_29:
}

- (BOOL)hoverMovedToNormalizedPoint:(CGPoint)point shouldUpdateCurrentPoint:(BOOL)currentPoint
{
  if (currentPoint)
  {
    y = point.y;
    x = point.x;
    if (point.x == -1.0 && point.y == -1.0)
    {
      v8 = ASTLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_100128308();
      }
    }

    [(HNDDisplayManager *)self _rotatedNormalizedInitialPoint];
    v10 = self->_currentPoint.x;
    v11 = self->_currentPoint.y;
    v13 = v11 != v12 || v10 != v9;
    v14 = v10 != x;
    if (v11 != y)
    {
      v14 = 1;
    }

    v15 = v13 && v14;
    self->_currentPoint.x = x;
    self->_currentPoint.y = y;
  }

  else
  {
    v15 = 0;
  }

  if (![(HNDDisplayManager *)self inBubbleMode]&& [(HNDDisplayManager *)self isMenuVisible])
  {
    fingerContentView = self->_fingerContentView;
    [(HNDDisplayManager *)self screenPoint];
    v18 = v17;
    v20 = v19;
    activeRocker = [(HNDDisplayManager *)self activeRocker];
    [(HNDView *)fingerContentView convertPoint:activeRocker toView:v18, v20];
    v23 = v22;
    v25 = v24;

    activeRocker2 = [(HNDDisplayManager *)self activeRocker];
    [activeRocker2 hoveredTo:{v23, v25}];
  }

  [(HNDDisplayManager *)self _startIdleTimer];
  shouldHideCursorsEyeTrackingAutoHide = [(HNDDisplayManager *)self shouldHideCursorsEyeTrackingAutoHide];
  if (![(HNDDisplayManager *)self inBubbleMode])
  {
    handManager = [(HNDDisplayManager *)self handManager];
    v29 = [handManager currentlySnappedInBubbleMode] | shouldHideCursorsEyeTrackingAutoHide;

    if ((v29 & 1) == 0)
    {
      [(HNDDisplayManager *)self setFingerContentViewIsActive:1];
    }
  }

  return v15;
}

- (CGPoint)screenPoint
{
  [(HNDDisplayManager *)self screenBounds];
  v5 = v4;
  v7 = v6;
  x = self->_currentPoint.x;
  y = self->_currentPoint.y;

  v10 = sub_1000429B0(0, x, y, v5, v7, v3);
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)point
{
  x = self->_currentPoint.x;
  y = self->_currentPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)screenBounds
{
  screen = [(UIWindow *)self->_window screen];
  [screen bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)portraitUpScreenBounds
{
  screen = [(UIWindow *)self->_window screen];
  [screen _referenceBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)rockerFrame
{
  activeRocker = [(HNDDisplayManager *)self activeRocker];
  [activeRocker frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)updateWithPrimaryFingerPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (point.x == -1.0 && point.y == -1.0)
  {
    v7 = ASTLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10012833C();
    }
  }

  [(HNDDisplayManager *)self screenBounds];
  self->_currentPoint.x = sub_1000429A4(x, y, v8, v9, v10);
  self->_currentPoint.y = v11;
}

- (void)showCircleMenu:(BOOL)menu
{
  menuCopy = menu;
  rocker = [(HNDDisplayManager *)self rocker];
  [rocker setUseCircleMode:menuCopy];

  expandedRocker = [(HNDDisplayManager *)self expandedRocker];
  [expandedRocker setUseCircleMode:menuCopy];
}

- (void)performPress:(int)press type:(int)type
{
  v4 = *&type;
  v5 = *&press;
  [(HNDDisplayManager *)self activateDisplayItems];
  [(AXDispatchTimer *)self->_idleTimer cancel];
  if ([(HNDDisplayManager *)self isMenuVisible])
  {
    if (v5 == 2)
    {
      activeRocker = [(HNDDisplayManager *)self activeRocker];
      [activeRocker performPress:2 type:v4 source:2];

      goto LABEL_9;
    }

    if (![(HNDDisplayManager *)self initialMenuDownHasFinished])
    {
      if (![(HNDDisplayManager *)self initialDownMenuCanTransitionToPressDown])
      {
LABEL_8:
        self->_menuOpenTime = -3061152000.0;
        goto LABEL_9;
      }

      self->_menuDownWillFireAutomaticUp = 1;
    }

    activeRocker2 = [(HNDDisplayManager *)self activeRocker];
    [activeRocker2 performPress:v5 type:v4 source:2];

    goto LABEL_8;
  }

LABEL_9:
  self->_isPressedDown = v5 == 2;
}

- (CGPoint)_menuPointForFingerLayout
{
  handManager = [(HNDDisplayManager *)self handManager];
  hardwareIdentifier = [(HNDDisplayManager *)self hardwareIdentifier];
  [handManager preferredMenuDisplayPointOnDisplay:hardwareIdentifier];
  v6 = v5;
  v8 = v7;

  [(HNDDisplayManager *)self screenBounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (v6 == CGPointZero.x && v8 == CGPointZero.y)
  {
    +[HNDRocker nubbitSize];
    v19 = v18 * 0.5;
    v6 = v14 * 0.5;
    rocker = [(HNDDisplayManager *)self rocker];
    [rocker frame];
    v8 = v19 + v21;
  }

  [(HNDDisplayManager *)self _layoutPointForPoint:v6 screenBounds:v8, v10, v12, v14, v16];
  result.y = v23;
  result.x = v22;
  return result;
}

- (CGPoint)_layoutPointForPoint:(CGPoint)point screenBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = point.y;
  x = point.x;
  [HNDRocker initialRockerSize:point.x];
  v9 = v8;
  v11 = v10;
  +[AXAssistiveTouchLayoutView minimumOuterPadding];
  v13 = v12;
  v14 = v12 + v9 * 0.5;
  if (x - v9 * 0.5 >= v12)
  {
    v14 = x;
  }

  if (v12 + x + v9 * 0.5 > width)
  {
    v15 = width - (v9 * 0.5 + v12);
  }

  else
  {
    v15 = v14;
  }

  +[HNDRocker nubbitSize];
  v17 = v11 * 0.5;
  if (y + v11 * 0.5 + v16 <= height)
  {
    if (y - v17 < v16)
    {
      v20 = height - v13 - v17;
      v21 = v13 + v17 + v16;
      if (v21 >= v20)
      {
        y = v20;
      }

      else
      {
        y = v21;
      }
    }
  }

  else
  {
    v18 = v13 + v17;
    v19 = height - (v13 + v17 + v16);
    if (v19 >= v18)
    {
      y = v19;
    }

    else
    {
      y = v18;
    }
  }

  v22 = v15;
  v23 = y;
  result.y = v23;
  result.x = v22;
  return result;
}

- (BOOL)visualsHidden
{
  activeRocker = [(HNDDisplayManager *)self activeRocker];
  [activeRocker alpha];
  v6 = v4 <= 0.0 && ([(HNDView *)self->_fingerContentView alpha], v5 <= 0.0) || self->_visualsHidden;

  return v6;
}

- (void)setVisualsHidden:(BOOL)hidden forReason:(id)reason animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  reasonCopy = reason;
  v9 = ASTLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109634;
    v15 = hiddenCopy;
    v16 = 2112;
    v17 = reasonCopy;
    v18 = 1024;
    v19 = animatedCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Set visuals hidden: %i. Reason: %@. Animated: %i", buf, 0x18u);
  }

  self->_visualsHidden = hiddenCopy;
  v10 = 0.0;
  if (animatedCopy)
  {
    +[HNDDisplayManager fadeDuration];
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001C07C;
  v12[3] = &unk_1001D3B20;
  v12[4] = self;
  v13 = hiddenCopy;
  [UIView animateWithDuration:v12 animations:v10];
  if (!hiddenCopy)
  {
    activeRocker = [(HNDDisplayManager *)self activeRocker];
    [activeRocker fadeNubbit];
  }
}

- (void)showMenu:(BOOL)menu
{
  menuCopy = menu;
  if ([(HNDDisplayManager *)self isMenuVisible]== menu)
  {
    return;
  }

  activeRocker = [(HNDDisplayManager *)self activeRocker];
  isAnimatingNubbit = [activeRocker isAnimatingNubbit];

  if (isAnimatingNubbit)
  {
    return;
  }

  activeRocker2 = [(HNDDisplayManager *)self activeRocker];
  v8 = *&CGAffineTransformIdentity.c;
  v41[0] = *&CGAffineTransformIdentity.a;
  v9 = *&CGAffineTransformIdentity.tx;
  v41[1] = v8;
  v41[2] = v9;
  [activeRocker2 setTransform:v41];

  self->_nubbitMoving = 0;
  if (!menuCopy)
  {
    [(HNDView *)self->_rockerDismiss setUserInteractionEnabled:0];
    +[HNDDisplayManager fadeDuration];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10001C724;
    v39[3] = &unk_1001D3488;
    v39[4] = self;
    [UIView animateWithDuration:v39 animations:?];
    [(HNDDisplayManager *)self _menuPointForFingerLayout];
    rocker = [(HNDDisplayManager *)self rocker];
    [rocker setStyle:0];

    handManager = [(HNDDisplayManager *)self handManager];
    eventManager = [handManager eventManager];
    [eventManager manipulateDimTimer:0];

    [(HNDDisplayManager *)self _nubbitPointForEdgePosition];
    [(HNDDisplayManager *)self _validateNubbitPosition:0 forKeyboard:?];
    v28 = v26;
    v29 = v27;
    if (self->_keyboardVisible && [(HNDDisplayManager *)self _position:v26 isOverKeyboard:v27, self->_keyboardFrame.origin.x, self->_keyboardFrame.origin.y, self->_keyboardFrame.size.width, self->_keyboardFrame.size.height])
    {
      [(HNDDisplayManager *)self _nubbitPositionForKeyboardFrame:self->_keyboardFrame.origin.x, self->_keyboardFrame.origin.y, self->_keyboardFrame.size.width, self->_keyboardFrame.size.height];
      v28 = v30;
      v29 = v31;
    }

    alwaysShowMenu = [(HNDDisplayManager *)self alwaysShowMenu];
    rocker2 = [(HNDDisplayManager *)self rocker];
    rocker3 = rocker2;
    if (alwaysShowMenu)
    {
      [rocker2 transitionMenuToNubbit:1 changeAlpha:1 animate:{v28, v29}];
    }

    else
    {
      [rocker2 setFullMenuVisible:0 atPoint:{v28, v29}];
    }

    goto LABEL_15;
  }

  activeRocker3 = [(HNDDisplayManager *)self activeRocker];
  [activeRocker3 highlightNubbit];

  *&self->_isPressedDown = 257;
  self->_menuOpenTime = CFAbsoluteTimeGetCurrent();
  [(HNDView *)self->_rockerDismiss setUserInteractionEnabled:1];
  +[HNDDisplayManager fadeDuration];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10001C6AC;
  v40[3] = &unk_1001D3488;
  v40[4] = self;
  [UIView animateWithDuration:v40 animations:?];
  [(HNDDisplayManager *)self _menuPointForFingerLayout];
  v12 = v11;
  v14 = v13;
  handManager2 = [(HNDDisplayManager *)self handManager];
  [handManager2 specialToolUsageEnded:1];

  handManager3 = [(HNDDisplayManager *)self handManager];
  hardwareIdentifier = [(HNDDisplayManager *)self hardwareIdentifier];
  [handManager3 resetFingersIfNeededOnDisplay:hardwareIdentifier];

  inNubbitMode = [(HNDDisplayManager *)self inNubbitMode];
  rocker3 = [(HNDDisplayManager *)self rocker];
  if ([(HNDDisplayManager *)self usesSeparateRockerForFullMenu])
  {
    expandedRocker = [(HNDDisplayManager *)self expandedRocker];

    [expandedRocker setStyle:1];
    rocker3 = expandedRocker;
    if (!inNubbitMode)
    {
LABEL_6:
      [rocker3 setFullMenuVisible:1 atPoint:{v12, v14}];
      handManager4 = [(HNDDisplayManager *)self handManager];
      hardwareIdentifier2 = [(HNDDisplayManager *)self hardwareIdentifier];
      [handManager4 resetFingersIfActiveOnDisplay:hardwareIdentifier2];

LABEL_15:
      v35 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    rocker4 = [(HNDDisplayManager *)self rocker];
    [rocker4 setStyle:1];

    if (!inNubbitMode)
    {
      goto LABEL_6;
    }
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10001C788;
  v38[3] = &unk_1001D3488;
  v38[4] = self;
  v35 = objc_retainBlock(v38);
  [rocker3 transitionNubbitToMenu:v35 concurrentAnimation:&stru_1001D3BB8 animationCompleted:{v12, v14}];
LABEL_16:

  self->_currentStyle = menuCopy;
  if ([(HNDDisplayManager *)self usesSeparateRockerForFullMenu])
  {
    [(HNDDisplayManager *)self performStyleTransitionAlongsideAnimations:v35];
  }

  handManager5 = [(HNDDisplayManager *)self handManager];
  eventManager2 = [handManager5 eventManager];
  [eventManager2 setMenuVisible:menuCopy];
}

- (BOOL)isMenuVisible
{
  if ([(HNDDisplayManager *)self usesSeparateRockerForFullMenu])
  {
    return self->_currentStyle == 1;
  }

  rocker = self->_rocker;

  return [(HNDRocker *)rocker isFullMenuVisible];
}

- (void)restartWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = ASTLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AST Windows: restart display manager", v6, 2u);
  }

  [(HNDDisplayManager *)self cleanup];
  [(HNDDisplayManager *)self initializeDisplayWithCompletion:completionCopy];
}

- (void)updateMenuStyle
{
  [UIView setAnimationsEnabled:0];
  rocker = [(HNDDisplayManager *)self rocker];
  [rocker setNubbitVisible:{-[HNDDisplayManager alwaysShowMenu](self, "alwaysShowMenu")}];

  if ([(HNDDisplayManager *)self alwaysShowMenu]&& [(HNDDisplayManager *)self inNubbitMode])
  {
    [(HNDDisplayManager *)self _nubbitPointForEdgePosition];
    [(HNDDisplayManager *)self _validateNubbitPosition:0 forKeyboard:?];
    v5 = v4;
    v7 = v6;
    activeRocker = [(HNDDisplayManager *)self activeRocker];
    [activeRocker transitionMenuToNubbit:1 changeAlpha:1 animate:{v5, v7}];
  }

  [UIView setAnimationsEnabled:1];
}

- (void)_deviceCountChanged:(id)changed
{
  integerValue = [changed integerValue];

  [(HNDDisplayManager *)self deviceCountChanged:integerValue];
}

- (void)deviceCountChanged:(int64_t)changed
{
  if (changed < 1)
  {
    if (!changed && [(HNDDisplayManager *)self isMenuVisible])
    {
      [(HNDDisplayManager *)self showMenu:0];
    }

    goto LABEL_15;
  }

  if (!self->_ignoredWindow)
  {
    activeRocker = [NSNumber numberWithInteger:?];
    [(HNDDisplayManager *)self performSelector:"_deviceCountChanged:" withObject:0.1 afterDelay:?];
    goto LABEL_16;
  }

  handManager = [(HNDDisplayManager *)self handManager];
  deviceManager = [handManager deviceManager];
  if ([deviceManager hidDeviceIsConfiguring])
  {
    hidDeviceSentReservedStatus = 1;
  }

  else
  {
    handManager2 = [(HNDDisplayManager *)self handManager];
    deviceManager2 = [handManager2 deviceManager];
    hidDeviceSentReservedStatus = [deviceManager2 hidDeviceSentReservedStatus];
  }

  if (AXDeviceSupportsOnDeviceEyeTracking())
  {
    if (([(HNDDisplayManager *)self isShowingCalibrationUI]| hidDeviceSentReservedStatus))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((hidDeviceSentReservedStatus & 1) == 0)
  {
LABEL_14:
    [(HNDDisplayManager *)self hoverMovedToNormalizedPoint:0 shouldUpdateCurrentPoint:CGPointZero.x, CGPointZero.y];
  }

LABEL_15:
  handManager3 = [(HNDDisplayManager *)self handManager];
  hardwareIdentifier = [(HNDDisplayManager *)self hardwareIdentifier];
  [handManager3 resetFingersIfNeededOnDisplay:hardwareIdentifier];

  handManager4 = [(HNDDisplayManager *)self handManager];
  [handManager4 updateMenuVisibility];

  handManager5 = [(HNDDisplayManager *)self handManager];
  [handManager5 updateSoftwareKeyboardState];

  handManager6 = [(HNDDisplayManager *)self handManager];
  handManager7 = [(HNDDisplayManager *)self handManager];
  deviceManager3 = [handManager7 deviceManager];
  [handManager6 prepareForEyeTrackerConnected:{objc_msgSend(deviceManager3, "mainDeviceIsMotionTracker")}];

  activeRocker = [(HNDDisplayManager *)self activeRocker];
  [activeRocker forceReloadScrollMenuItems];
LABEL_16:
}

- (void)updateRingerSwitch
{
  activeRocker = [(HNDDisplayManager *)self activeRocker];
  [activeRocker updateRingerSwitch];
}

- (void)updateRotationLockSwitch
{
  activeRocker = [(HNDDisplayManager *)self activeRocker];
  [activeRocker updateRotationLockSwitch];
}

- (BOOL)inNubbitMode
{
  if ([(HNDDisplayManager *)self usesSeparateRockerForFullMenu])
  {
    currentStyle = self->_currentStyle;
  }

  else
  {
    currentStyle = [(HNDRocker *)self->_rocker style];
  }

  return currentStyle == 0;
}

- (void)volumeChanged
{
  activeRocker = [(HNDDisplayManager *)self activeRocker];
  [activeRocker performSelectorOnMainThread:"volumeChanged" withObject:0 waitUntilDone:0];
}

- (void)didFailToPinApp
{
  activeRocker = [(HNDDisplayManager *)self activeRocker];
  [activeRocker didFailToPinApp];
}

- (void)didFailToFloatApp
{
  activeRocker = [(HNDDisplayManager *)self activeRocker];
  [activeRocker didFailToFloatApp];
}

- (void)viewPressedDown:(id)down
{
  downCopy = down;
  rocker = [(HNDDisplayManager *)self rocker];

  v5 = rocker;
  if (rocker == downCopy)
  {
    inNubbitMode = [(HNDDisplayManager *)self inNubbitMode];

    if (!inNubbitMode)
    {
      return;
    }

    v7 = +[AXSettings sharedInstance];
    assistiveTouchMainScreenCustomization = [v7 assistiveTouchMainScreenCustomization];

    rocker2 = [(HNDDisplayManager *)self rocker];
    v9 = [rocker2 customizationMapAllowInstanceActivation:assistiveTouchMainScreenCustomization];

    if (v9)
    {
      rocker3 = [(HNDDisplayManager *)self rocker];
      [rocker3 showNubbitPressedState:1];
    }

    v5 = assistiveTouchMainScreenCustomization;
  }
}

- (void)viewOrbActionTriggered:(id)triggered
{
  triggeredCopy = triggered;
  rocker = [(HNDDisplayManager *)self rocker];

  v5 = rocker;
  if (rocker == triggeredCopy)
  {
    inNubbitMode = [(HNDDisplayManager *)self inNubbitMode];

    if (!inNubbitMode)
    {
      return;
    }

    v7 = +[AXSettings sharedInstance];
    assistiveTouchOrbAction = [v7 assistiveTouchOrbAction];

    v5 = assistiveTouchOrbAction;
    if (assistiveTouchOrbAction)
    {
      if ([assistiveTouchOrbAction isEqualToString:AXAssistiveTouchIconTypeOpenMenu])
      {
        window = self->_window;
        rocker2 = [(HNDDisplayManager *)self rocker];
        [rocker2 bounds];
        AX_CGRectGetCenter();
        v11 = v10;
        v13 = v12;
        rocker3 = [(HNDDisplayManager *)self rocker];
        [(UIWindow *)window convertPoint:rocker3 fromView:v11, v13];
        v16 = v15;
        v18 = v17;

        [(HNDDisplayManager *)self closestNubbitPositionForPoint:1 offsetByMidpoint:v16, v18];
        [(HNDDisplayManager *)self _updateNubbitEdgePosition:?];
      }

      sub_100043CB4(1);
      self->_playedHapticForCurrentEvent = 1;
      sub_1000428A0(@"assistiveTouchOrbAction");
      handManager = [(HNDDisplayManager *)self handManager];
      [handManager setNubbitMoving:0];

      rocker4 = [(HNDDisplayManager *)self rocker];
      [rocker4 activateMenuItemDown:assistiveTouchOrbAction fromButtonPress:0];

      rocker5 = [(HNDDisplayManager *)self rocker];
      [rocker5 activateMenuItemUp:assistiveTouchOrbAction fromButtonPress:0];

      v5 = assistiveTouchOrbAction;
    }
  }
}

- (void)activateAssistiveTouchAction:(id)action fromButtonPress:(BOOL)press
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001D1FC;
  v11[3] = &unk_1001D3C08;
  v11[4] = self;
  actionCopy = action;
  v12 = actionCopy;
  pressCopy = press;
  v7 = objc_retainBlock(v11);
  WeakRetained = objc_loadWeakRetained(&self->_handManager);
  if (![WeakRetained inBubbleMode])
  {
    goto LABEL_6;
  }

  v9 = objc_loadWeakRetained(&self->_handManager);
  if (([v9 currentlySnappedInBubbleMode] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v10 = [actionCopy isEqualToString:AXAssistiveTouchIconTypeTap];

  if (!v10)
  {
LABEL_7:
    (v7[2])(v7);
    goto LABEL_8;
  }

  AXPerformBlockOnMainThread();
LABEL_8:
}

- (void)viewPressedUp:(id)up
{
  upCopy = up;
  rocker = [(HNDDisplayManager *)self rocker];
  v6 = rocker;
  if (rocker != upCopy)
  {

LABEL_10:
    if (self->_rockerDismiss == upCopy && [(HNDDisplayManager *)self isMenuVisible]&& !self->_trackpadPointerOnRocker)
    {
      handManager = [(HNDDisplayManager *)self handManager];
      hardwareIdentifier = [(HNDDisplayManager *)self hardwareIdentifier];
      [handManager menuExitedOnDisplay:hardwareIdentifier];
    }

    goto LABEL_19;
  }

  inNubbitMode = [(HNDDisplayManager *)self inNubbitMode];

  if (!inNubbitMode)
  {
    goto LABEL_10;
  }

  v8 = +[AXSettings sharedInstance];
  assistiveTouchLongPressAction = [v8 assistiveTouchLongPressAction];

  v10 = +[AXSettings sharedInstance];
  assistiveTouchDoubleTapAction = [v10 assistiveTouchDoubleTapAction];

  v12 = +[AXSettings sharedInstance];
  assistiveTouchSingleTapAction = [v12 assistiveTouchSingleTapAction];

  handManager2 = [(HNDDisplayManager *)self handManager];
  hardwareIdentifier2 = [(HNDDisplayManager *)self hardwareIdentifier];
  [handManager2 resetFingersIfActiveOnDisplay:hardwareIdentifier2];

  [(AXDispatchTimer *)self->_longPressTimer cancel];
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_10001D728;
  v31 = &unk_1001D3C30;
  selfCopy = self;
  v16 = assistiveTouchDoubleTapAction;
  v33 = v16;
  v17 = assistiveTouchLongPressAction;
  v34 = v17;
  v18 = assistiveTouchSingleTapAction;
  v35 = v18;
  v19 = objc_retainBlock(&v28);
  if ([(AXDispatchTimer *)self->_doubleTapTimer isPending:v28]&& ([(AXDispatchTimer *)self->_doubleTapTimer isCancelled]& 1) == 0)
  {
    v27 = ASTLogCommon();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = v16;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Performing double tap action: %@", buf, 0xCu);
    }

    [(HNDDisplayManager *)self activateAssistiveTouchAction:v16 fromButtonPress:0];
    [(AXDispatchTimer *)self->_doubleTapTimer cancel];
  }

  else if (v16)
  {
    v20 = ASTLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = +[AXSettings sharedInstance];
      [v21 assistiveTouchDoubleTapActionTimeout];
      *buf = 134217984;
      v37 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Waiting to see if double tap triggered: %f", buf, 0xCu);
    }

    doubleTapTimer = self->_doubleTapTimer;
    v24 = +[AXSettings sharedInstance];
    [v24 assistiveTouchDoubleTapActionTimeout];
    [(AXDispatchTimer *)doubleTapTimer afterDelay:v19 processBlock:?];
  }

  else
  {
    (v19[2])(v19);
  }

LABEL_19:
}

- (void)showBubbleNotificationWithError:(id)error duration:(double)duration
{
  errorCopy = error;
  bannerViewPresenter = self->_bannerViewPresenter;
  if (bannerViewPresenter)
  {
    containingView = [(AXUIBannerPresenter *)bannerViewPresenter containingView];
    contentView = self->_contentView;

    if (containingView == contentView)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (self->_contentView)
  {
LABEL_3:
    v9 = [[AXUIBannerPresenter alloc] initWithContainingView:self->_contentView];
    v10 = self->_bannerViewPresenter;
    self->_bannerViewPresenter = v9;
  }

LABEL_4:
  [(AXUIBannerPresenter *)self->_bannerViewPresenter presentBannerViewWithText:errorCopy duration:duration];
}

- (void)_moveBubbleNotificationToPos:(CGPoint)pos
{
  y = pos.y;
  x = pos.x;
  bannerViewPresenter = self->_bannerViewPresenter;
  if (bannerViewPresenter && ([(AXUIBannerPresenter *)bannerViewPresenter bannerView], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    bannerView = [(AXUIBannerPresenter *)self->_bannerViewPresenter bannerView];
    [bannerView frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001DB54;
    v18[3] = &unk_1001D3C58;
    *&v18[5] = x;
    *&v18[6] = y;
    v18[4] = self;
    v18[7] = v10;
    v18[8] = v12;
    v18[9] = v14;
    v18[10] = v16;
    [UIView animateWithDuration:v18 animations:0.22];
  }

  else
  {
    v17 = ASTLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100128370(v17, x, y);
    }
  }
}

- (BOOL)shouldHideCursorsEyeTrackingAutoHide
{
  handManager = [(HNDDisplayManager *)self handManager];
  if ([handManager eyeTrackingAutoHideEnabled])
  {
    handManager2 = [(HNDDisplayManager *)self handManager];
    hidePointerForEyeTrackingAutoHide = [handManager2 hidePointerForEyeTrackingAutoHide];
  }

  else
  {
    hidePointerForEyeTrackingAutoHide = 0;
  }

  return hidePointerForEyeTrackingAutoHide;
}

- (void)drawBubbleCursorFrame:(CGRect)frame withPath:(id)path
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  pathCopy = path;
  bubbleModeContentView = [(HNDDisplayManager *)self bubbleModeContentView];
  isActive = [bubbleModeContentView isActive];

  if ((isActive & 1) == 0)
  {
    bubbleModeContentView2 = [(HNDDisplayManager *)self bubbleModeContentView];
    [bubbleModeContentView2 setIsActive:1];
  }

  bubbleCursor = [(HNDDisplayManager *)self bubbleCursor];

  if (!bubbleCursor)
  {
    v14 = [UIView alloc];
    bubbleModeContentView3 = [(HNDDisplayManager *)self bubbleModeContentView];
    [bubbleModeContentView3 bounds];
    v16 = [v14 initWithFrame:?];
    [(HNDDisplayManager *)self setBubbleCursor:v16];

    bubbleCursor2 = [(HNDDisplayManager *)self bubbleCursor];
    [bubbleCursor2 setAutoresizingMask:18];

    bubbleModeContentView4 = [(HNDDisplayManager *)self bubbleModeContentView];
    bubbleCursor3 = [(HNDDisplayManager *)self bubbleCursor];
    [bubbleModeContentView4 addSubview:bubbleCursor3];
  }

  bubbleCursorController = [(HNDDisplayManager *)self bubbleCursorController];

  if (!bubbleCursorController)
  {
    v21 = objc_alloc_init(HNDBubbleCursorController);
    [(HNDDisplayManager *)self setBubbleCursorController:v21];

    bubbleCursor4 = [(HNDDisplayManager *)self bubbleCursor];
    layer = [bubbleCursor4 layer];
    bubbleCursorController2 = [(HNDDisplayManager *)self bubbleCursorController];
    cursorContainerLayer = [bubbleCursorController2 cursorContainerLayer];
    [layer addSublayer:cursorContainerLayer];
  }

  bubbleCursorController3 = [(HNDDisplayManager *)self bubbleCursorController];
  [bubbleCursorController3 updateTheme:0 level:1 path:pathCopy frame:1 isSimpleRect:0 animated:{x, y, width, height}];
}

- (void)hideBubbleCursor
{
  bubbleModeContentView = [(HNDDisplayManager *)self bubbleModeContentView];
  [bubbleModeContentView setIsActive:0];
}

- (void)showBubbleCursor
{
  bubbleModeContentView = [(HNDDisplayManager *)self bubbleModeContentView];
  [bubbleModeContentView setIsActive:1];
}

- (BOOL)bubbleCursorIsActive
{
  bubbleModeContentView = [(HNDDisplayManager *)self bubbleModeContentView];
  isActive = [bubbleModeContentView isActive];

  return isActive;
}

- (BOOL)inBubbleMode
{
  handManager = [(HNDDisplayManager *)self handManager];
  inBubbleMode = [handManager inBubbleMode];

  return inBubbleMode;
}

- (void)overrideBubbleCursorOpacity:(double)opacity
{
  bubbleModeContentView = [(HNDDisplayManager *)self bubbleModeContentView];
  [bubbleModeContentView setInactiveAlpha:opacity];
}

- (void)animateBubbleCursorDwellWithDuration:(double)duration inRocker:(BOOL)rocker completion:(id)completion
{
  rockerCopy = rocker;
  completionCopy = completion;
  dwellBubbleModeCompletionBlock = [(HNDDisplayManager *)self dwellBubbleModeCompletionBlock];

  if (dwellBubbleModeCompletionBlock)
  {
    dwellBubbleModeCompletionBlock2 = [(HNDDisplayManager *)self dwellBubbleModeCompletionBlock];
    dwellBubbleModeCompletionBlock2[2](dwellBubbleModeCompletionBlock2, 0);

    [(HNDDisplayManager *)self setDwellBubbleModeCompletionBlock:0];
  }

  bubbleCursorController = [(HNDDisplayManager *)self bubbleCursorController];
  cursorBackgroundLayer = [bubbleCursorController cursorBackgroundLayer];

  animationKeys = [cursorBackgroundLayer animationKeys];
  v14 = [animationKeys containsObject:@"ASTBubbleModeDwellStartAnimationID"];

  if (v14)
  {
    [(HNDDisplayManager *)self cancelDwellOnBubbleCursor];
  }

  v15 = [CABasicAnimation animationWithKeyPath:@"fillColor"];
  [v15 setValue:@"ASTBubbleModeDwellStartAnimationID" forKey:@"ASTBubbleModeAnimationID"];
  v16 = _AXSPointerStrokeColor();
  v17 = _AXSPointerStrokeColor();
  v18 = v17;
  v24 = 0;
  v25 = 0;
  if (v16 && v17 != 1 && (_AXSPointerStrokeColor(), _AXSPointerStrokeColorValues()))
  {
    v19 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  }

  else
  {
    if (v18 == 1 || rockerCopy)
    {
      v21 = 0.8;
      v20 = 0.6;
    }

    else
    {
      v20 = 0.7;
      v21 = 0.5;
    }

    v19 = [UIColor colorWithWhite:v21 alpha:v20, 0, 0];
  }

  v22 = v19;
  CopyWithAlpha = CGColorCreateCopyWithAlpha([v19 CGColor], 0.4);
  [v15 setToValue:CopyWithAlpha];
  [v15 setDuration:duration];
  [v15 setDelegate:self];
  [v15 setRemovedOnCompletion:0];
  [cursorBackgroundLayer addAnimation:v15 forKey:@"ASTBubbleModeDwellStartAnimationID"];
  if (CopyWithAlpha)
  {
    CFRelease(CopyWithAlpha);
  }

  [(HNDDisplayManager *)self setDwellBubbleModeCompletionBlock:completionCopy, v24, v25];
}

- (void)cancelDwellOnBubbleCursor
{
  bubbleCursorController = [(HNDDisplayManager *)self bubbleCursorController];
  cursorBackgroundLayer = [bubbleCursorController cursorBackgroundLayer];

  [cursorBackgroundLayer removeAnimationForKey:@"ASTBubbleModeDwellStartAnimationID"];
  dwellBubbleModeCompletionBlock = [(HNDDisplayManager *)self dwellBubbleModeCompletionBlock];

  if (dwellBubbleModeCompletionBlock)
  {
    dwellBubbleModeCompletionBlock2 = [(HNDDisplayManager *)self dwellBubbleModeCompletionBlock];
    dwellBubbleModeCompletionBlock2[2](dwellBubbleModeCompletionBlock2, 0);

    [(HNDDisplayManager *)self setDwellBubbleModeCompletionBlock:0];
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v5 = [stop valueForKey:{@"ASTBubbleModeAnimationID", finished}];
  v6 = [v5 isEqualToString:@"ASTBubbleModeDwellStartAnimationID"];

  if (v6)
  {
    bubbleCursorController = [(HNDDisplayManager *)self bubbleCursorController];
    cursorBackgroundLayer = [bubbleCursorController cursorBackgroundLayer];

    v9 = [CABasicAnimation animationWithKeyPath:@"strokeColor"];
    [v9 setValue:@"ASTBubbleModeDwellStopAnimationID" forKey:@"ASTBubbleModeAnimationID"];
    restingStrokeColor = [cursorBackgroundLayer restingStrokeColor];
    [v9 setToValue:{objc_msgSend(restingStrokeColor, "CGColor")}];

    [v9 setDuration:0.3];
    [v9 setRemovedOnCompletion:1];
    [cursorBackgroundLayer addAnimation:v9 forKey:@"ASTBubbleModeDwellStopAnimationID"];
  }

  dwellBubbleModeCompletionBlock = [(HNDDisplayManager *)self dwellBubbleModeCompletionBlock];

  if (dwellBubbleModeCompletionBlock)
  {
    dwellBubbleModeCompletionBlock2 = [(HNDDisplayManager *)self dwellBubbleModeCompletionBlock];
    dwellBubbleModeCompletionBlock2[2](dwellBubbleModeCompletionBlock2, 1);

    [(HNDDisplayManager *)self setDwellBubbleModeCompletionBlock:0];
  }
}

- (CGRect)orientedContinuousScrollViewFrameForScrollViewFrame:(CGRect)frame
{
  window = self->_window;
  [(HNDDisplayManager *)self convertFrameToInterfaceOrientation:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  fingerContentView = self->_fingerContentView;

  [(UIWindow *)window convertRect:fingerContentView toView:?];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)addUserInterfaceClientEnabler:(id)enabler
{
  enablerCopy = enabler;
  userInterfaceClientEnablers = [(HNDDisplayManager *)self userInterfaceClientEnablers];

  if (!userInterfaceClientEnablers)
  {
    v6 = +[NSMutableSet set];
    [(HNDDisplayManager *)self setUserInterfaceClientEnablers:v6];
  }

  userInterfaceClientEnablers2 = [(HNDDisplayManager *)self userInterfaceClientEnablers];
  [userInterfaceClientEnablers2 addObject:enablerCopy];

  [(HNDDisplayManager *)self _setupUserInterfaceClient];
}

- (void)removeUserInterfaceClientEnabler:(id)enabler
{
  enablerCopy = enabler;
  userInterfaceClientEnablers = [(HNDDisplayManager *)self userInterfaceClientEnablers];
  [userInterfaceClientEnablers removeObject:enablerCopy];

  userInterfaceClientEnablers2 = [(HNDDisplayManager *)self userInterfaceClientEnablers];
  v7 = [userInterfaceClientEnablers2 count];

  if (!v7)
  {

    [(HNDDisplayManager *)self _cleanupUserInterfaceClient];
  }
}

- (void)_setupUserInterfaceClient
{
  userInterfaceClient = [(HNDDisplayManager *)self userInterfaceClient];
  if (!userInterfaceClient)
  {
    if (AXInPreboardScenario())
    {
      return;
    }

    v5 = [[AXUIClient alloc] initWithIdentifier:@"AssistiveTouchUIClient" serviceBundleName:@"AssistiveTouch"];
    [(HNDDisplayManager *)self setUserInterfaceClient:v5];
    userInterfaceClient2 = [(HNDDisplayManager *)self userInterfaceClient];
    [userInterfaceClient2 sendAsynchronousMessage:0 withIdentifier:2 targetAccessQueue:0 completion:0];

    userInterfaceClient = v5;
  }
}

- (void)_cleanupUserInterfaceClient
{
  userInterfaceClient = [(HNDDisplayManager *)self userInterfaceClient];

  if (userInterfaceClient)
  {
    userInterfaceClient2 = [(HNDDisplayManager *)self userInterfaceClient];
    [userInterfaceClient2 sendAsynchronousMessage:0 withIdentifier:1 targetAccessQueue:0 completion:0];

    [(HNDDisplayManager *)self setUserInterfaceClient:0];
  }
}

- (void)showSimpleAlertWithText:(id)text
{
  textCopy = text;
  userInterfaceClientEnablers = [(HNDDisplayManager *)self userInterfaceClientEnablers];
  v6 = [userInterfaceClientEnablers count];

  if (!v6)
  {
    _AXAssert();
  }

  if ([textCopy length])
  {
    userInterfaceClient = [(HNDDisplayManager *)self userInterfaceClient];
    v9 = @"simple alert text";
    v10 = textCopy;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [userInterfaceClient sendAsynchronousMessage:v8 withIdentifier:7 targetAccessQueue:0 completion:0];
  }
}

- (void)showSimpleBannerWithTitle:(id)title text:(id)text
{
  titleCopy = title;
  textCopy = text;
  userInterfaceClientEnablers = [(HNDDisplayManager *)self userInterfaceClientEnablers];
  v9 = [userInterfaceClientEnablers count];

  if (!v9)
  {
    _AXAssert();
  }

  if (![titleCopy length] || !objc_msgSend(textCopy, "length"))
  {
    v12 = titleCopy;
    v13 = textCopy;
    _AXAssert();
  }

  if ([titleCopy length] && objc_msgSend(textCopy, "length"))
  {
    userInterfaceClient = [(HNDDisplayManager *)self userInterfaceClient];
    v14[0] = @"simple banner title";
    v14[1] = @"simple banner text";
    v15[0] = titleCopy;
    v15[1] = textCopy;
    v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    [userInterfaceClient sendAsynchronousMessage:v11 withIdentifier:8 targetAccessQueue:0 completion:0];
  }
}

- (void)_layoutHUDView:(id)view withinBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  viewCopy = view;
  [viewCopy sizeThatFits:{width, height}];
  v10 = v9;
  v12 = v11;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v13 = CGRectGetWidth(v21) / v10;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v14 = CGRectGetHeight(v22) / v12;
  if (v13 < v14)
  {
    v14 = v13;
  }

  sx = fmax(fmin(v14, 1.0), 0.5);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  CGRectGetMidX(v23);
  UIRoundToViewScale();
  v16 = v10 * 0.5 + v15;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  CGRectGetMidY(v24);
  UIRoundToViewScale();
  [viewCopy setCenter:{v16, v12 * 0.5 + v17}];
  [viewCopy setBounds:{CGRectZero.origin.x, CGRectZero.origin.y, v10, v12}];
  CGAffineTransformMakeScale(&v20, sx, sx);
  v19 = v20;
  [viewCopy setTransform:&v19];
}

- (id)_itemForButton:(id)button
{
  buttonCopy = button;
  v4 = [UIAccessibilityHUDItem alloc];
  title = [buttonCopy title];
  deviceSpecificImage = [buttonCopy deviceSpecificImage];

  v7 = [v4 initWithTitle:title image:deviceSpecificImage imageInsets:1 scaleImage:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v7;
}

- (BOOL)_shouldShowLargeContentViewer
{
  if (+[UILargeContentViewerInteraction isEnabled])
  {
    v2 = +[AXAssistiveTouchLayoutView labelMaximumContentSizeCategory];
    v3 = !UIContentSizeCategoryIsAccessibilityCategory(v2);
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_updateLargeContentViewerIfNeededForView:(id)view
{
  viewCopy = view;
  presentHUDViewTimer = [(HNDDisplayManager *)self presentHUDViewTimer];
  [presentHUDViewTimer cancel];

  if ([(HNDDisplayManager *)self _shouldShowLargeContentViewer]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v6 = viewCopy) != 0)
  {
    v7 = v6;
    v8 = self->_contentView;
    v9 = [(HNDDisplayManager *)self _itemForButton:v7];
    hudView = [(HNDDisplayManager *)self hudView];

    if (hudView)
    {
      hudView2 = [(HNDDisplayManager *)self hudView];
      item = [hudView2 item];
      v13 = [v9 isEqual:item];

      if ((v13 & 1) == 0)
      {
        hudView3 = [(HNDDisplayManager *)self hudView];
        [hudView3 setItem:v9];

        hudView4 = [(HNDDisplayManager *)self hudView];
        [(UIView *)v8 bounds];
        [(HNDDisplayManager *)self _layoutHUDView:hudView4 withinBounds:?];
      }
    }

    else if ([(HNDDisplayManager *)self shouldDelayBeforePresentingHUDView])
    {
      presentHUDViewTimer2 = [(HNDDisplayManager *)self presentHUDViewTimer];

      if (!presentHUDViewTimer2)
      {
        v17 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
        [(HNDDisplayManager *)self setPresentHUDViewTimer:v17];
      }

      presentHUDViewTimer3 = [(HNDDisplayManager *)self presentHUDViewTimer];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10001EECC;
      v19[3] = &unk_1001D3C80;
      v19[4] = self;
      v20 = v9;
      v21 = v8;
      [presentHUDViewTimer3 afterDelay:v19 processBlock:0.15];
    }

    else
    {
      [(HNDDisplayManager *)self _presentLargeContentViewerForHUDItem:v9 inContentView:v8];
    }
  }

  else
  {
    [(HNDDisplayManager *)self _hideLargeContentViewerIfNeeded];
  }
}

- (void)_presentLargeContentViewerForHUDItem:(id)item inContentView:(id)view
{
  itemCopy = item;
  viewCopy = view;
  if (!itemCopy)
  {
    v8 = ASTLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_100128408();
    }
  }

  hudView = [(HNDDisplayManager *)self hudView];

  if (hudView)
  {
    v10 = ASTLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10012843C();
    }
  }

  [(HNDDisplayManager *)self _hideLargeContentViewerIfNeeded];
  v11 = [[UIAccessibilityHUDView alloc] initWithHUDItem:itemCopy];
  [viewCopy addSubview:v11];
  [viewCopy bounds];
  [(HNDDisplayManager *)self _layoutHUDView:v11 withinBounds:?];
  [v11 showAnimated:1 completion:0];
  [(HNDDisplayManager *)self setHudView:v11];
}

- (void)_hideLargeContentViewerIfNeeded
{
  presentHUDViewTimer = [(HNDDisplayManager *)self presentHUDViewTimer];
  [presentHUDViewTimer cancel];

  hudView = [(HNDDisplayManager *)self hudView];

  if (hudView)
  {
    hudView2 = [(HNDDisplayManager *)self hudView];
    [(HNDDisplayManager *)self setHudView:0];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001F0F8;
    v7[3] = &unk_1001D3488;
    v8 = hudView2;
    v6 = hudView2;
    [v6 dismissAnimated:1 completion:v7];
  }
}

- (unint64_t)indexOfEyeTrackingUIDelegate:(id)delegate
{
  delegateCopy = delegate;
  if ([(NSPointerArray *)self->_eyeTrackingDelegates count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSPointerArray *)self->_eyeTrackingDelegates pointerAtIndex:v5];

      if (v6 == delegateCopy)
      {
        break;
      }

      if (++v5 >= [(NSPointerArray *)self->_eyeTrackingDelegates count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (void)addEyeTrackingUIDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_autoreleasePoolPush();
  if ([(HNDDisplayManager *)self indexOfEyeTrackingUIDelegate:delegateCopy]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSPointerArray *)self->_eyeTrackingDelegates addPointer:delegateCopy];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)removeEyeTrackingUIDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_autoreleasePoolPush();
  v5 = [(HNDDisplayManager *)self indexOfEyeTrackingUIDelegate:delegateCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSPointerArray *)self->_eyeTrackingDelegates removePointerAtIndex:v5];
    [(NSPointerArray *)self->_eyeTrackingDelegates compact];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)willShowCalibrationUI
{
  if ([(HNDEyeTrackingCoordinator *)self->_eyeTrackingCoordinator shouldShowFaceGuidance])
  {
    [(HNDDisplayManager *)self setFaceGuidanceComplete:0];
    handManager = [(HNDDisplayManager *)self handManager];
    deviceManager = [handManager deviceManager];

    [deviceManager removeOnDeviceEyeTrackingAsInput];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_eyeTrackingDelegates;
  v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          [v10 willShowCalibrationUI];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)didShowCalibrationUI
{
  self->_showingCalibrationUI = 1;
  handManager = [(HNDDisplayManager *)self handManager];
  [handManager hideUIForEyeTracker];

  [(HNDDisplayManager *)self _blockAllSystemGestures];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_eyeTrackingDelegates;
  v5 = [(NSPointerArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 didShowCalibrationUI];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSPointerArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)didCompleteFaceGuidance
{
  if ([(HNDEyeTrackingCoordinator *)self->_eyeTrackingCoordinator shouldShowFaceGuidance])
  {
    [(HNDDisplayManager *)self setFaceGuidanceComplete:1];
    handManager = [(HNDDisplayManager *)self handManager];
    deviceManager = [handManager deviceManager];
    [deviceManager addOnDeviceEyeTrackingAsInput];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_eyeTrackingDelegates;
    v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            [v10 didCompleteFaceGuidance];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)didDismissCalibrationUI
{
  objc_initWeak(&location, self);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001F938;
  v24[3] = &unk_1001D3CA8;
  v24[4] = self;
  objc_copyWeak(&v25, &location);
  v3 = objc_retainBlock(v24);
  [(HNDDisplayManager *)self screenBounds];
  v5 = v4;
  v7 = v6;
  [(UIView *)self->_contentView bounds];
  if (v5 == v9 && v7 == v8)
  {
    (v3[2])(v3);
  }

  else
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10001FA04;
    v22[3] = &unk_1001D3460;
    objc_copyWeak(&v23, &location);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10001FA44;
    v20[3] = &unk_1001D3CD0;
    v21 = v3;
    [UIView animateWithDuration:v22 animations:v20 completion:0.25];

    objc_destroyWeak(&v23);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_eyeTrackingDelegates;
  v12 = [(NSPointerArray *)v11 countByEnumeratingWithState:&v16 objects:v27 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          [v15 didDismissCalibrationUI];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSPointerArray *)v11 countByEnumeratingWithState:&v16 objects:v27 count:16];
    }

    while (v12);
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)setGazePointManager:(id)manager
{
  managerCopy = manager;
  gazePointManager = self->_gazePointManager;
  p_gazePointManager = &self->_gazePointManager;
  if (gazePointManager != managerCopy)
  {
    v8 = ASTLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100128470(managerCopy, v8);
    }

    objc_storeStrong(p_gazePointManager, manager);
  }
}

- (ASTUIGazePointDelegate)gazePointManager
{
  p_gazePointManager = &self->_gazePointManager;
  gazePointManager = self->_gazePointManager;
  v5 = ASTLogCommon();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (gazePointManager)
  {
    if (v6)
    {
      sub_1001284E8(p_gazePointManager, v5);
    }

    deviceManager = *p_gazePointManager;
  }

  else
  {
    if (v6)
    {
      sub_100128564();
    }

    handManager = [(HNDDisplayManager *)self handManager];
    deviceManager = [handManager deviceManager];
  }

  return deviceManager;
}

- (void)systemApertureLayoutDidChange:(id)change
{
  changeCopy = change;
  if ([changeCopy count] == 1)
  {
    v4 = [changeCopy objectAtIndexedSubscript:0];
    [v4 CGRectValue];
    self->_foreheadRect.origin.x = v5;
    self->_foreheadRect.origin.y = v6;
    self->_foreheadRect.size.width = v7;
    self->_foreheadRect.size.height = v8;
LABEL_5:

    goto LABEL_6;
  }

  if ([changeCopy count] == 2)
  {
    v4 = [changeCopy objectAtIndexedSubscript:0];
    [v4 CGRectValue];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [changeCopy objectAtIndexedSubscript:1];
    [v17 CGRectValue];
    v47.origin.x = v18;
    v47.origin.y = v19;
    v47.size.width = v20;
    v47.size.height = v21;
    v45.origin.x = v10;
    v45.origin.y = v12;
    v45.size.width = v14;
    v45.size.height = v16;
    self->_foreheadRect = CGRectUnion(v45, v47);

    goto LABEL_5;
  }

LABEL_6:
  if (AXDeviceHasJindo() && (bannerViewPresenter = self->_bannerViewPresenter) != 0 && ([(AXUIBannerPresenter *)bannerViewPresenter bannerView], v23 = objc_claimAutoreleasedReturnValue(), v23, v23))
  {
    v24 = vabdd_f64(self->_foreheadRect.size.height, self->_initialForeheadRect.size.height);
    bannerView = [(AXUIBannerPresenter *)self->_bannerViewPresenter bannerView];
    [bannerView frame];
    v27 = v26;

    [(HNDDisplayManager *)self _moveBubbleNotificationToPos:v27, v24];
  }

  else if (AXDeviceHasJindo())
  {
    v48.origin.x = CGRectZero.origin.x;
    v48.origin.y = CGRectZero.origin.y;
    v48.size.width = CGRectZero.size.width;
    v48.size.height = CGRectZero.size.height;
    if (CGRectEqualToRect(self->_initialForeheadRect, v48))
    {
      size = self->_foreheadRect.size;
      self->_initialForeheadRect.origin = self->_foreheadRect.origin;
      self->_initialForeheadRect.size = size;
    }
  }

  if ([(HNDDisplayManager *)self inNubbitMode])
  {
    rocker = [(HNDDisplayManager *)self rocker];
    [rocker frame];
    v49.origin.x = v30;
    v49.origin.y = v31;
    v49.size.width = v32;
    v49.size.height = v33;
    v46 = CGRectIntersection(self->_foreheadRect, v49);
    if (CGRectIsNull(v46))
    {
    }

    else
    {
      HasJindo = AXDeviceHasJindo();

      if (HasJindo)
      {
        rocker2 = [(HNDDisplayManager *)self rocker];
        [rocker2 frame];
        v37 = v36;
        rocker3 = [(HNDDisplayManager *)self rocker];
        [rocker3 frame];
        [(HNDDisplayManager *)self _validateNubbitPosition:0 forKeyboard:v37];
        v40 = v39;
        v42 = v41;

        [(HNDDisplayManager *)self _moveNubbitToPosition:v40, v42];
      }
    }
  }
}

- (CGRect)foreheadRect
{
  x = self->_foreheadRect.origin.x;
  y = self->_foreheadRect.origin.y;
  width = self->_foreheadRect.size.width;
  height = self->_foreheadRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)activeRocker
{
  if ([(HNDDisplayManager *)self usesSeparateRockerForFullMenu])
  {
    isMenuVisible = [(HNDDisplayManager *)self isMenuVisible];
    v4 = 80;
    if (isMenuVisible)
    {
      v4 = 88;
    }
  }

  else
  {
    v4 = 80;
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

- (CGPoint)_testingRockerPosition
{
  activeRocker = [(HNDDisplayManager *)self activeRocker];
  [activeRocker frame];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (HNDHandManager)handManager
{
  WeakRetained = objc_loadWeakRetained(&self->_handManager);

  return WeakRetained;
}

- (CGRect)keyboardFrame
{
  x = self->_keyboardFrame.origin.x;
  y = self->_keyboardFrame.origin.y;
  width = self->_keyboardFrame.size.width;
  height = self->_keyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)performStyleTransitionAlongsideAnimations:(id)animations
{
  v4 = _Block_copy(animations);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1001118E8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_100110DBC(v7, v6);
  sub_100103294(v7);
}

@end