@interface HNDDisplayManager
- (ASTUIGazePointDelegate)gazePointManager;
- (BOOL)_nubbitIsOverKeyboard:(CGRect)a3;
- (BOOL)_position:(CGPoint)a3 isOverKeyboard:(CGRect)a4;
- (BOOL)_shouldRunAutoHideFingersTimer;
- (BOOL)_shouldSetFingerContentViewToActive:(BOOL)a3;
- (BOOL)_shouldShowLargeContentViewer;
- (BOOL)bubbleCursorIsActive;
- (BOOL)handleRealEvent:(id)a3;
- (BOOL)hoverMovedToNormalizedPoint:(CGPoint)a3 shouldUpdateCurrentPoint:(BOOL)a4;
- (BOOL)inBubbleMode;
- (BOOL)inNubbitMode;
- (BOOL)isMenuVisible;
- (BOOL)shouldHideBubbleModeForVirtualTrackpad;
- (BOOL)shouldHideCursorsEyeTrackingAutoHide;
- (BOOL)shouldPassThroughVirtualTrackpad:(unint64_t)a3;
- (BOOL)visualsHidden;
- (CGAffineTransform)_transformForOrientation;
- (CGPoint)_adjustPositionForDisplayCornerRadius:(CGPoint)a3;
- (CGPoint)_layoutPointForPoint:(CGPoint)a3 screenBounds:(CGRect)a4;
- (CGPoint)_menuPointForFingerLayout;
- (CGPoint)_nubbitPointForEdgePosition;
- (CGPoint)_nubbitPositionForKeyboardFrame:(CGRect)a3;
- (CGPoint)_rotatedNormalizedInitialPoint;
- (CGPoint)_testingRockerPosition;
- (CGPoint)_validateNubbitPosition:(CGPoint)a3 forKeyboard:(BOOL)a4;
- (CGPoint)closestNubbitPositionForPoint:(CGPoint)a3 offsetByMidpoint:(BOOL)a4;
- (CGPoint)convertPoint:(CGPoint)a3 fromOrientation:(int)a4;
- (CGPoint)convertPointToInterfaceOrientation:(CGPoint)a3;
- (CGPoint)convertPointToPortraitUpOrientation:(CGPoint)a3;
- (CGPoint)convertToNormalizedInterfaceOrientation:(CGPoint)a3;
- (CGPoint)normalizedPointForDifference:(CGPoint)a3;
- (CGPoint)nubbitPositionForFlick:(CGPoint)a3;
- (CGPoint)point;
- (CGPoint)screenPoint;
- (CGPoint)zoomConvertToReplicatedViewFromTargetPoint:(CGPoint)a3;
- (CGRect)convertFrameToInterfaceOrientation:(CGRect)a3;
- (CGRect)foreheadRect;
- (CGRect)keyboardFrame;
- (CGRect)orientedContinuousScrollViewFrameForScrollViewFrame:(CGRect)a3;
- (CGRect)portraitUpScreenBounds;
- (CGRect)rockerFrame;
- (CGRect)screenBounds;
- (CGRect)screenBoundsForRockerButton:(id)a3;
- (HNDDisplayManager)initWithWindow:(id)a3 ignoredWindow:(id)a4 trackpadWindow:(id)a5;
- (HNDHandManager)handManager;
- (UIEdgeInsets)safeAreaInsets;
- (double)_currentRockerTranslateY;
- (double)_iconScaleForForce:(double)a3;
- (double)_idleTime;
- (double)_rotationDegreesForOrientation:(int)a3;
- (double)_xNubbitPadding:(double)a3 x:(double)a4;
- (double)_yNubbitPadding:(double)a3 y:(double)a4;
- (id)_itemForButton:(id)a3;
- (id)activeRocker;
- (id)viewAtDisplayPoint:(CGPoint)a3 downPoint:(CGPoint *)a4 window:(id)a5;
- (int)_angleForDegrees:(double)a3;
- (unint64_t)indexOfEyeTrackingUIDelegate:(id)a3;
- (unsigned)displayID;
- (void)_cleanupUserInterfaceClient;
- (void)_deviceCountChanged:(id)a3;
- (void)_didHandleRealUpEvent;
- (void)_endHandlingReachabilityIfNeeded;
- (void)_forceDismissCalibrationForReason:(unsigned int)a3;
- (void)_handleNubbitMove:(CGPoint)a3 event:(id)a4;
- (void)_handleReachability:(id)a3;
- (void)_hideLargeContentViewerIfNeeded;
- (void)_idleTimerFired;
- (void)_layoutHUDView:(id)a3 withinBounds:(CGRect)a4;
- (void)_longIdleTimerFired;
- (void)_moveBubbleNotificationToPos:(CGPoint)a3;
- (void)_moveNubbitForKeyboard:(CGRect)a3;
- (void)_moveNubbitToPosition:(CGPoint)a3 forKeyboard:(BOOL)a4;
- (void)_onDeviceEyeTrackingSettingsChanged:(BOOL)a3;
- (void)_presentLargeContentViewerForHUDItem:(id)a3 inContentView:(id)a4;
- (void)_removeAllSystemGestureDisablingAssertions;
- (void)_repositionNubbitAfterLift:(CGPoint)a3;
- (void)_resetCurrentPointToInitialPoint;
- (void)_resetReachabilityOffset;
- (void)_setVirtualTrackpadEnabled:(BOOL)a3;
- (void)_setupUserInterfaceClient;
- (void)_startHandlingReachabilityIfNeeded;
- (void)_startIdleTimer;
- (void)_tearDownVirtualTrackpad;
- (void)_updateAutoHideMousePointer;
- (void)_updateLargeContentViewerIfNeededForView:(id)a3;
- (void)_updateNubbitEdgePosition:(CGPoint)a3;
- (void)_updateNubbitPosition;
- (void)_updatePreferences;
- (void)_updateRockerReachability;
- (void)_updateSpeakScreenStatus;
- (void)_updateViewsForOrientation;
- (void)activateAssistiveTouchAction:(id)a3 fromButtonPress:(BOOL)a4;
- (void)activateDisplayItems;
- (void)addEyeTrackingUIDelegate:(id)a3;
- (void)addUserInterfaceClientEnabler:(id)a3;
- (void)animateBubbleCursorDwellWithDuration:(double)a3 inRocker:(BOOL)a4 completion:(id)a5;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)cancelDwellOnBubbleCursor;
- (void)cleanup;
- (void)dealloc;
- (void)deviceCountChanged:(int64_t)a3;
- (void)didCompleteFaceGuidance;
- (void)didDismissCalibrationUI;
- (void)didFailToFloatApp;
- (void)didFailToPinApp;
- (void)didShowCalibrationUI;
- (void)dismissCalibrationUI;
- (void)drawBubbleCursorFrame:(CGRect)a3 withPath:(id)a4;
- (void)hideBubbleCursor;
- (void)hideBubbleCursorForEyeTrackingAutoHide;
- (void)initializeDisplayWithCompletion:(id)a3;
- (void)initializeScreenBounds;
- (void)initializeWindowsIfNecessary;
- (void)keyboardVisible:(BOOL)a3 withFrame:(CGRect)a4;
- (void)moveNubbitToPoint:(CGPoint)a3;
- (void)overrideBubbleCursorOpacity:(double)a3;
- (void)performPress:(int)a3 type:(int)a4;
- (void)performStyleTransitionAlongsideAnimations:(id)a3;
- (void)placeNubbitAtBottomCenter;
- (void)removeEyeTrackingUIDelegate:(id)a3;
- (void)removeUserInterfaceClientEnabler:(id)a3;
- (void)resetNubbitLocation;
- (void)restartWithCompletion:(id)a3;
- (void)setFingerContentViewIsActive:(BOOL)a3;
- (void)setFingerContentViewIsActive:(BOOL)a3 withDuration:(double)a4;
- (void)setFingerContentViewIsActive:(BOOL)a3 withDuration:(double)a4 options:(unint64_t)a5;
- (void)setGazePointManager:(id)a3;
- (void)setMultiTouchToolBackgroundEnabled:(BOOL)a3;
- (void)setNeedsRecalibration:(BOOL)a3;
- (void)setNubbitMoving:(BOOL)a3;
- (void)setOrientation:(int)a3 withCompletion:(id)a4;
- (void)setVisualsHidden:(BOOL)a3 forReason:(id)a4 animated:(BOOL)a5;
- (void)showBubbleCursor;
- (void)showBubbleNotificationWithError:(id)a3 duration:(double)a4;
- (void)showCalibrationUI;
- (void)showCircleMenu:(BOOL)a3;
- (void)showMenu:(BOOL)a3;
- (void)showSimpleAlertWithText:(id)a3;
- (void)showSimpleBannerWithTitle:(id)a3 text:(id)a4;
- (void)showZoomWindow;
- (void)systemApertureLayoutDidChange:(id)a3;
- (void)toggleVirtualTrackpad;
- (void)updateCursorSnapshotVisibilityForKeyboardVisibility:(BOOL)a3;
- (void)updateMenuStyle;
- (void)updateNubbitForegroundImageForAction:(id)a3;
- (void)updateOpacityForEyeTrackingAutoHide:(double)a3;
- (void)updateRingerSwitch;
- (void)updateRockersForSubstantialTransition;
- (void)updateRotationLockSwitch;
- (void)updateWithPrimaryFingerPoint:(CGPoint)a3;
- (void)viewOrbActionTriggered:(id)a3;
- (void)viewPressedDown:(id)a3;
- (void)viewPressedUp:(id)a3;
- (void)volumeChanged;
- (void)willShowCalibrationUI;
@end

@implementation HNDDisplayManager

- (HNDDisplayManager)initWithWindow:(id)a3 ignoredWindow:(id)a4 trackpadWindow:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v96.receiver = self;
  v96.super_class = HNDDisplayManager;
  v12 = [(HNDDisplayManager *)&v96 init];
  objc_storeStrong(v12 + 4, a3);
  objc_storeStrong(v12 + 5, a4);
  v13 = +[NSPointerArray weakObjectsPointerArray];
  v14 = *(v12 + 171);
  *(v12 + 171) = v13;

  objc_storeStrong(v12 + 185, a5);
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
  v27 = [v26 assistiveTouchOrbAction];
  v12[1248] = v27 != 0;

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
  v54 = [v9 screen];
  v55 = [v54 displayConfiguration];
  v56 = [v55 hardwareIdentifier];
  v57 = [v53 initWithDisplayUUID:v56];
  v58 = *(v12 + 175);
  *(v12 + 175) = v57;

  v59 = [*(v12 + 175) fingerContainerView];
  v60 = *(v12 + 182);
  *(v12 + 182) = v59;

  if ((AXRuntimeCheck_DwellKeyboardSwipeContinuous() & 1) == 0 && AXRuntimeCheck_DwellKeyboardSwipe())
  {
    v61 = [AXPIFingerController alloc];
    v62 = [v9 screen];
    v63 = [v62 displayConfiguration];
    v64 = [v63 hardwareIdentifier];
    v65 = [v61 initWithDisplayUUID:v64];
    v66 = *(v12 + 176);
    *(v12 + 176) = v65;

    v67 = [*(v12 + 176) fingerContainerView];
    v68 = *(v12 + 189);
    *(v12 + 189) = v67;
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
  v3 = [(HNDDisplayManager *)self handManager];
  v4 = [v3 deviceManager];
  v5 = [v4 hidDeviceIsConfiguring];
  *(v16 + 24) = v5;

  if ([(HNDDisplayManager *)self _shouldRunAutoHideFingersTimer])
  {
    [(HNDDisplayManager *)self assistiveTouchMousePointerTimeout];
    v7 = v6;
    v8 = [(HNDDisplayManager *)self handManager];
    v9 = [v8 dwellControlEnabled];

    if (v9)
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
  v2 = [(HNDDisplayManager *)self bubbleModeContentView];
  [v2 setIsActive:0 withDuration:0 options:0.1];
}

- (void)updateOpacityForEyeTrackingAutoHide:(double)a3
{
  [(HNDView *)self->_fingerContentView setInactiveAlpha:?];
  v5 = [(HNDDisplayManager *)self bubbleModeContentView];
  [v5 setInactiveAlpha:a3];
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
    v6 = [(HNDDisplayManager *)self handManager];
    v7 = [v6 deviceManager];
    v3 = [v7 mainDeviceIsPointer];
  }

  else
  {
    v3 = 0;
  }

  v4 = ![(HNDDisplayManager *)self isShowingVirtualTrackpad];
  result = v4 & v3;
  if ((v4 & 1) == 0)
  {
    if (v3)
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
  v3 = [v2 assistiveTouchOrbAction];
  v4 = AXAssistiveTouchIconTypeSpeakScreen;
  if (([v3 isEqualToString:AXAssistiveTouchIconTypeSpeakScreen] & 1) == 0)
  {
    v5 = +[AXSettings sharedInstance];
    v6 = [v5 assistiveTouchSingleTapAction];
    if (([v6 isEqualToString:v4] & 1) == 0)
    {
      v7 = +[AXSettings sharedInstance];
      v8 = [v7 assistiveTouchDoubleTapAction];
      if (([v8 isEqualToString:v4] & 1) == 0)
      {
        v9 = +[AXSettings sharedInstance];
        v10 = [v9 assistiveTouchLongPressAction];
        if (([v10 isEqualToString:v4] & 1) == 0)
        {
          v15 = +[AXSettings sharedInstance];
          [v15 assistiveTouchMainScreenCustomization];
          v12 = v16 = v9;
          v13 = [v12 allValues];
          v14 = [v13 containsObject:v4];

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

- (void)initializeDisplayWithCompletion:(id)a3
{
  v5 = a3;
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
    v14 = [(UIView *)self->_contentView superview];

    if (v14)
    {
      v72 = +[NSThread callStackSymbols];
      _AXAssert();
    }

    v15 = [(UIView *)self->_contentView superview];

    if (v15)
    {
      if (v5)
      {
        v5[2](v5);
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
        v45 = [(HNDRocker *)v41 initWithFrame:CGRectZero.origin.x, y, width, height];
        rocker = self->_rocker;
        self->_rocker = v45;

        [(HNDRocker *)self->_rocker setDisplayManager:self];
        v47 = [(HNDDisplayManager *)self hardwareIdentifier];
        [(HNDRocker *)self->_rocker setHardwareIdentifier:v47];

        [(HNDRocker *)self->_rocker setAutoresizingMask:45];
        v48 = [[HNDRocker alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
        expandedRocker = self->_expandedRocker;
        self->_expandedRocker = v48;

        [(HNDRocker *)self->_expandedRocker setDisplayManager:self];
        v50 = [(HNDDisplayManager *)self hardwareIdentifier];
        [(HNDRocker *)self->_expandedRocker setHardwareIdentifier:v50];

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

      v37 = [(HNDDisplayManager *)self userInterfaceClientEnablers];
      v38 = [v37 count];

      if (v38)
      {
        [(HNDDisplayManager *)self _setupUserInterfaceClient];
      }

      if (v5)
      {
        v5[2](v5);
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

  if (v5)
  {
    v5[2](v5);
  }

LABEL_32:
}

- (void)showZoomWindow
{
  needsToShowZoomWindow = self->_needsToShowZoomWindow;
  v4 = [(HNDDisplayManager *)self zoomViewController];
  v5 = v4;
  if (needsToShowZoomWindow)
  {

    if (!v5)
    {
      v6 = [[HNDZoomViewController alloc] initWithDelegate:self];
      [(HNDDisplayManager *)self setZoomViewController:v6];

      ignoredWindow = self->_ignoredWindow;
      v8 = [(HNDDisplayManager *)self zoomViewController];
      v9 = [v8 view];
      [(UIWindow *)ignoredWindow addSubview:v9];

      v10 = [(HNDDisplayManager *)self zoomViewController];
      v11 = [v10 view];
      v12 = [v11 ax_pinConstraintsInAllDimensionsToView:self->_ignoredWindow];
    }

    [(HNDDisplayManager *)self screenBounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(HNDDisplayManager *)self zoomViewController];
    v22 = [v21 view];
    [v22 setBounds:{v14, v16, v18, v20}];

    v33 = [(HNDDisplayManager *)self zoomViewController];
    v23 = [(HNDDisplayManager *)self handManager];
    [v23 systemPointerLocation];
    [v33 zoomInAt:? screenBounds:?];
  }

  else
  {
    v24 = [(HNDDisplayManager *)self handManager];
    [v24 systemPointerLocation];
    v26 = v25;
    v28 = v27;
    [(HNDDisplayManager *)self screenBounds];
    [v5 zoomOutAt:v26 screenBounds:{v28, v29, v30, v31, v32}];

    [(HNDDisplayManager *)self setNeedsToShowZoomWindow:0];
  }
}

- (CGPoint)zoomConvertToReplicatedViewFromTargetPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(HNDDisplayManager *)self zoomReplicatedView];

  if (v6)
  {
    v7 = [(HNDDisplayManager *)self zoomReplicatedView];
    [v7 frame];
    v9 = v8;
    v11 = v10;

    [(HNDDisplayManager *)self convertToNormalizedInterfaceOrientation:x, y];
    v13 = v9 * v12;
    v15 = v11 * v14;
    v16 = [(HNDDisplayManager *)self zoomReplicatedView];
    v17 = [(HNDDisplayManager *)self ignoredWindow];
    [v16 convertPoint:v17 toView:{v13, v15}];
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

- (void)setNeedsRecalibration:(BOOL)a3
{
  v3 = a3;
  if ([(HNDDisplayManager *)self didForceDimissCalibration]|| self->_needsRecalibration != v3)
  {
    self->_needsRecalibration = v3;
    if (v3)
    {

      [(HNDDisplayManager *)self showCalibrationUI];
    }
  }
}

- (void)showCalibrationUI
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchMouseOnDeviceEyeTrackingShouldShowUncalibratedPoints];

  if ((v4 & 1) == 0)
  {
    v5 = [(HNDDisplayManager *)self handManager];
    v6 = [v5 deviceManager];
    v7 = -[HNDDisplayManager _shouldPreventCalibrationForError:](self, "_shouldPreventCalibrationForError:", [v6 currentEyeTrackingErrorCode]);

    if ((v7 & 1) == 0)
    {
      if (AXDeviceSupportsOnDeviceEyeTracking())
      {
        v8 = +[AXSettings sharedInstance];
        v9 = [v8 onDeviceEyeTrackingEnabled];

        if (v9)
        {
          v10 = +[ASTUIGazeEnrollmentManager sharedManager];
          v11 = [v10 enrollmentComplete];

          if (self->_needsRecalibration || (v11 & 1) == 0 && !self->_showingCalibrationUI && ![(HNDDisplayManager *)self didForceDimissCalibration])
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

- (void)_forceDismissCalibrationForReason:(unsigned int)a3
{
  self->_forceCalibrationDismissReason = a3;
  [(HNDDisplayManager *)self setNeedsRecalibration:0];
  if (a3 == 2)
  {
    v5 = +[AXSettings sharedInstance];
    v6 = [v5 assistiveTouchEnabledByOnDeviceEyeTracking];

    v7 = [(HNDDisplayManager *)self handManager];
    v8 = [v7 deviceManager];
    [v8 setDetectDevices:0];

    objc_initWeak(&location, self);
    v9 = +[AXSpringBoardServer server];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001589C;
    v10[3] = &unk_1001D39D0;
    objc_copyWeak(&v11, &location);
    v12 = v6;
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

- (void)_onDeviceEyeTrackingSettingsChanged:(BOOL)a3
{
  if (a3)
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
  v3 = [(HNDDisplayManager *)self isShowingVirtualTrackpad];
  [(HNDDisplayManager *)self _setVirtualTrackpadEnabled:v3 ^ 1];
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchVirtualTrackpadEnabled:v3 ^ 1];
}

- (void)_tearDownVirtualTrackpad
{
  [(HNDDisplayManager *)self setIsShowingVirtualTrackpad:0];
  v3 = [(HNDDisplayManager *)self trackpadWindow];
  [v3 setHidden:1];

  v4 = [(HNDDisplayManager *)self trackpadViewController];
  [v4 unload];

  [(HNDDisplayManager *)self setTrackpadViewController:0];
  v5 = [(HNDDisplayManager *)self trackpadExcludeHitTestAssertion];
  [v5 invalidate];

  [(HNDDisplayManager *)self setFingerContentViewIsActive:0];
  v6 = [(HNDDisplayManager *)self handManager];
  [v6 setVirtualTrackpadBubbleModeEnabled:0];
}

- (void)_setVirtualTrackpadEnabled:(BOOL)a3
{
  v3 = a3;
  if (_AXSAssistiveTouchEnabled())
  {
    if (v3)
    {
      v5 = [(HNDDisplayManager *)self trackpadWindow];
      [v5 setHidden:0];

      v6 = objc_opt_new();
      [(HNDDisplayManager *)self setTrackpadViewController:v6];

      v7 = [(HNDDisplayManager *)self trackpadWindow];
      v8 = [(HNDDisplayManager *)self trackpadViewController];
      v9 = [v8 view];
      v10 = [v7 containsView:v9];

      if ((v10 & 1) == 0)
      {
        [(HNDDisplayManager *)self setIsShowingVirtualTrackpad:1];
        v11 = [(HNDDisplayManager *)self trackpadWindow];
        v12 = [(HNDDisplayManager *)self trackpadViewController];
        v13 = [v12 view];
        [v11 addSubview:v13];
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

      v17 = [(HNDTrackpadViewController *)self->_trackpadViewController view];
      v18 = [v17 window];
      v19 = [v18 _contextId];

      v20 = [(HNDDisplayManager *)self trackpadExcludeHitTestAssertion];
      [v20 invalidate];

      if (v19)
      {
        v21 = +[BKSTouchEventService sharedInstance];
        v22 = [NSNumber numberWithUnsignedInt:v19];
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

    v26 = [(HNDDisplayManager *)self handManager];
    [v26 reloadFingerAppearance];

    v27 = [(HNDDisplayManager *)self handManager];
    [v27 setVirtualTrackpadBubbleModeEnabled:v3];
  }
}

- (BOOL)shouldPassThroughVirtualTrackpad:(unint64_t)a3
{
  v4 = [(HNDDisplayManager *)self fingerController];
  v5 = [v4 eventSenderServiceID];
  v7 = a3 == 0x8000000817319380 || v5 == a3;

  return v7;
}

- (BOOL)shouldHideBubbleModeForVirtualTrackpad
{
  v3 = [(HNDDisplayManager *)self trackpadViewController];
  v4 = ([v3 isPressingOnTrackpad] & 1) != 0 || self->_trackpadAction != 0;

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
  v9 = [(HNDZoomViewController *)self->_zoomViewController view];
  [v9 removeFromSuperview];

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
  v5 = [(HNDDisplayManager *)self activeRocker];
  [v5 frame];
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
    v5 = [(HNDDisplayManager *)self handManager];
    v6 = [v5 systemPointerController];

    v3 = -1.0;
    v4 = -1.0;
    if (v6)
    {
      v7 = [v5 systemPointerController];
      [v7 currentSystemPointerPoint];
      v9 = v8;
      v11 = v10;

      v3 = -1.0;
      v4 = -1.0;
      if (([v5 shouldHideSystemPointerForFingersView] & 1) == 0)
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

- (void)_handleReachability:(id)a3
{
  v4 = a3;
  v5 = +[AXUIReachabilityHelper sharedHelper];
  [v5 reachabilityOffsetForPayload:v4];
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
    v10 = [v4 mutableCopy];
    v11 = [NSNumber numberWithDouble:v9];
    [v10 setObject:v11 forKeyedSubscript:@"offset"];

    v12 = [v10 copy];
    v16 = v18;
    CGAffineTransformTranslate(&v17, &v16, 0.0, v9);
    v18 = v17;

    v4 = v12;
  }

  v13 = +[AXUIReachabilityHelper sharedHelper];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v15 = v18;
  v14[2] = sub_10001680C;
  v14[3] = &unk_1001D3A60;
  v14[4] = self;
  [v13 animateForReachability:v14 payload:v4 completion:0];
}

- (void)_startHandlingReachabilityIfNeeded
{
  v3 = [(HNDDisplayManager *)self reachabilityHandlerIdentifier];
  if (v3)
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
  v3 = [(HNDDisplayManager *)self reachabilityHandlerIdentifier];

  if (v3)
  {
    v4 = +[AXSpringBoardServer server];
    v5 = [(HNDDisplayManager *)self reachabilityHandlerIdentifier];
    [v4 removeReachabilityHandler:v5];

    [(HNDDisplayManager *)self setReachabilityHandlerIdentifier:0];
  }
}

- (void)setMultiTouchToolBackgroundEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(HNDDisplayManager *)self multiTouchToolBackgroundEnabled]!= a3)
  {
    if (!v3)
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

    v13 = [(HNDDisplayManager *)self handManager];
    [v13 setCaptureEvents:v3];
  }
}

- (CGPoint)closestNubbitPositionForPoint:(CGPoint)a3 offsetByMidpoint:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
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
  if (v4)
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

- (int)_angleForDegrees:(double)a3
{
  if (a3 > 45.0 && a3 < 115.0)
  {
    return 1;
  }

  if (a3 < -70.0 && a3 > -110.0 || a3 >= 250.0 && a3 <= 290.0)
  {
    return 2;
  }

  if (a3 < -25.0 && a3 >= -70.0 || a3 >= 290.0 && a3 <= 335.0)
  {
    return 7;
  }

  if (a3 > 200.0 && a3 <= 245.0)
  {
    return 8;
  }

  if (a3 > 160.0 && a3 < 200.0)
  {
    return 4;
  }

  if (a3 >= 115.0 && a3 < 160.0)
  {
    return 5;
  }

  if (a3 >= 25.0 && a3 < 65.0)
  {
    return 6;
  }

  if (a3 >= 25.0 && a3 <= 315.0)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

- (CGPoint)nubbitPositionForFlick:(CGPoint)a3
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

- (double)_yNubbitPadding:(double)a3 y:(double)a4
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

  v19 = [(HNDDisplayManager *)self orientation];
  if ((sub_100043C20() & (v19 != 1)) != 0)
  {
    v7 = 9.0;
  }

  if (v7 >= a4 && sub_100043C20())
  {
    x = self->_foreheadRect.origin.x;
    +[HNDRocker nubbitSize];
    if (x - v21 < a3 && self->_foreheadRect.origin.x + self->_foreheadRect.size.width > a3 && (AXDeviceHasJindo() & 1) != 0)
    {
      return v7;
    }

    +[HNDRocker nubbitSize];
    if (88.0 - v22 < a3 && v9 + -88.0 > a3)
    {
      return v7;
    }

    return 10.0;
  }

  +[HNDRocker nubbitSize];
  if (v24 + a4 < v11 - v13 || !sub_100043C74())
  {
    return 10.0;
  }

  v25 = v9 * 0.5;
  +[HNDRocker nubbitSize];
  v27 = v26 + a3;
  v28 = AXDeviceIsPhone() ? 67.0 : 170.0;
  if (v27 <= v25 - v28)
  {
    return 10.0;
  }

  v29 = AXDeviceIsPhone() ? 67.0 : 170.0;
  v7 = v13;
  if (v25 + v29 <= a3)
  {
    return 10.0;
  }

  return v7;
}

- (double)_xNubbitPadding:(double)a3 x:(double)a4
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
  [(HNDDisplayManager *)self _yNubbitPadding:a4 y:a3];
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

  v20 = [(HNDDisplayManager *)self orientation];
  if (v13 >= a3 && (sub_100043C74() & 1) != 0 || v17 - v11 - v13 <= a3 && sub_100043C20())
  {
    v7 = 10.0;
    if (a4 > 9.0)
    {
      v7 = 9.0;
      if (v18 + -9.0 <= a4)
      {
        return v18 + -10.0;
      }
    }

    return v7;
  }

  v7 = 9.0;
  if (v20 != 4)
  {
    if (v20 != 3)
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
          if (v34 > a4)
          {
            +[HNDRocker nubbitSize];
            if (v17 + -88.0 > a3 && 88.0 - v35 < a3)
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
    if (v38 + a4 > v15 - v37)
    {
      +[HNDRocker nubbitSize];
      if (v17 + -88.0 > a3 && 88.0 - v39 < a3)
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

- (CGPoint)_validateNubbitPosition:(CGPoint)a3 forKeyboard:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
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
  if (!v4)
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

- (CGPoint)_adjustPositionForDisplayCornerRadius:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (void)_updateNubbitEdgePosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (void)_moveNubbitToPosition:(CGPoint)a3 forKeyboard:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  if ([(HNDDisplayManager *)self inNubbitMode])
  {
    [(HNDDisplayManager *)self screenBounds];
    v17.origin.x = CGRectZero.origin.x;
    v17.origin.y = CGRectZero.origin.y;
    v17.size.width = CGRectZero.size.width;
    v17.size.height = CGRectZero.size.height;
    if (!CGRectEqualToRect(v16, v17))
    {
      if (!v4)
      {
        [(HNDDisplayManager *)self _updateNubbitEdgePosition:x, y];
      }

      [(HNDDisplayManager *)self _validateNubbitPosition:v4 forKeyboard:x, y];
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

- (void)_repositionNubbitAfterLift:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (BOOL)_position:(CGPoint)a3 isOverKeyboard:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(UIWindow *)self->_window convertPoint:self->_contentView fromView:a3.x, a3.y];
  v9 = v8;
  v11 = v10;
  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;

  return CGRectContainsPoint(*&v12, *&v9);
}

- (BOOL)_nubbitIsOverKeyboard:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  window = self->_window;
  v9 = [(HNDDisplayManager *)self rocker];
  [v9 frame];
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

- (CGPoint)_nubbitPositionForKeyboardFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)_moveNubbitForKeyboard:(CGRect)a3
{
  [(HNDDisplayManager *)self _nubbitPositionForKeyboardFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  [(HNDDisplayManager *)self _moveNubbitToPosition:1 forKeyboard:?];
}

- (UIEdgeInsets)safeAreaInsets
{
  v2 = [(HNDDisplayManager *)self window];
  [v2 safeAreaInsets];
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

- (void)updateCursorSnapshotVisibilityForKeyboardVisibility:(BOOL)a3
{
  v3 = a3;
  v5 = +[AXSettings sharedInstance];
  if ([v5 assistiveTouchMouseOnDeviceEyeTrackingEnabled])
  {
  }

  else
  {
    v6 = +[HNDDeviceManager sharedManager];
    v7 = [v6 mainDeviceIsThirdPartyTracker];

    if (!v7)
    {
      return;
    }
  }

  if (v3)
  {
    v8 = 18;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(HNDView *)self->_bubbleModeContentView layer];
  [v9 setDisableUpdateMask:v8];

  v10 = [(HNDView *)self->_fingerContentView layer];
  [v10 setDisableUpdateMask:v8];
}

- (void)keyboardVisible:(BOOL)a3 withFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (a3)
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

- (void)moveNubbitToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  +[HNDRocker nubbitSize];
  v7 = x - v6 * 0.5;
  v9 = y - v8 * 0.5;
  v10 = [(HNDDisplayManager *)self rocker];
  [v10 frame];
  v12 = v11;
  v14 = v13;

  v15 = [(HNDDisplayManager *)self rocker];
  [v15 setFrame:{v7, v9, v12, v14}];
}

- (void)setNubbitMoving:(BOOL)a3
{
  if (self->_nubbitMoving != a3)
  {
    v10 = v3;
    v11 = v4;
    v5 = a3;
    v7 = ASTLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Set nubbit moving from override", v9, 2u);
    }

    v8 = [(HNDDisplayManager *)self handManager];
    [v8 setNubbitMoving:v5];

    self->_nubbitMoving = v5;
  }
}

- (void)_handleNubbitMove:(CGPoint)a3 event:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
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
  v18 = [(HNDDisplayManager *)self rocker];
  [v18 frame];
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

    v43 = [(HNDDisplayManager *)self handManager];
    [v43 setNubbitMoving:1];

    self->_nubbitMoving = 1;
  }

  SCRCMathGetDistanceBetweenPoints();
  SCRCMathUpdateAverage();
  buf.a = 0.0;
  v75.a = 0.0;
  SCRCMathGetVectorAndDistanceForPoints();
  SCRCMathUpdateAngleAverage();
LABEL_22:
  v44 = [v7 handInfo];
  v45 = [v44 paths];
  v46 = [v45 firstPath];
  [v46 orbValue];
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

        v52 = [(HNDDisplayManager *)self rocker];
        v75 = buf;
        [v52 setTransform:&v75];
      }
    }
  }

  v53 = +[AXSettings sharedInstance];
  v54 = [v53 assistiveTouchSingleTapAction];
  if (![v54 isEqualToString:AXAssistiveTouchIconTypePassThroughToApp])
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

- (double)_iconScaleForForce:(double)a3
{
  v3 = 1.0;
  if (a3 > 100.0)
  {
    v4 = a3 / 1000.0 + 1.0;
    v3 = 1.5;
    if (v4 <= 1.5)
    {
      return v4;
    }
  }

  return v3;
}

- (id)viewAtDisplayPoint:(CGPoint)a3 downPoint:(CGPoint *)a4 window:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a5;
  if (!v9)
  {
    v28 = 0;
    goto LABEL_33;
  }

  v10 = [NSMutableArray arrayWithObject:v9];
  if (![v10 count])
  {
    v28 = 0;
    goto LABEL_32;
  }

  v32 = a4;
  v11 = 0;
  do
  {
    v12 = [v10 objectAtIndex:{0, v32}];
    [v10 removeObjectAtIndex:0];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = [v12 subviews];
    v14 = [v13 reverseObjectEnumerator];
    v15 = [v14 allObjects];

    v16 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v34 + 1) + 8 * v19);
      v21 = [v9 layer];
      [v21 convertPoint:0 fromLayer:{x, y}];
      v23 = v22;
      v25 = v24;

      [v9 convertPoint:v20 toView:{v23, v25}];
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
        v27 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
      v26 = [(HNDDisplayManager *)self activeRocker];

      if (v20 != v26)
      {
        goto LABEL_13;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v33;
      if (v32)
      {
        v32->x = v23;
        v32->y = v25;
      }

      v28 = v20;

      v29 = [v28 subviews];
      v30 = [v29 count];

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
  v2 = [(HNDDisplayManager *)self window];
  v3 = [v2 screen];
  v4 = [v3 displayIdentity];
  v5 = [v4 displayID];

  return v5;
}

- (void)resetNubbitLocation
{
  if (self->_nubbitMoving)
  {
    v3 = [(HNDDisplayManager *)self rocker];
    v4 = *&CGAffineTransformIdentity.c;
    v19[0] = *&CGAffineTransformIdentity.a;
    v19[1] = v4;
    v19[2] = *&CGAffineTransformIdentity.tx;
    [v3 setTransform:v19];

    contentView = self->_contentView;
    v6 = [(HNDDisplayManager *)self rocker];
    [v6 bounds];
    AX_CGRectGetCenter();
    v8 = v7;
    v10 = v9;
    v11 = [(HNDDisplayManager *)self rocker];
    [(UIView *)contentView convertPoint:v11 fromView:v8, v10];
    v13 = v12;
    v15 = v14;

    [(HNDDisplayManager *)self _repositionNubbitAfterLift:v13, v15];
    v16 = [(HNDDisplayManager *)self rocker];
    [v16 fadeNubbit];

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

- (BOOL)handleRealEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 handInfo];
  v6 = [v5 paths];
  v7 = [v6 firstPath];
  [v7 pathLocation];
  v9 = v8;
  v11 = v10;

  v12 = [(UIWindow *)self->_window layer];
  [v12 convertPoint:0 fromLayer:{v9, v11}];
  v14 = v13;
  v16 = v15;

  if (![(HNDDisplayManager *)self isShowingCalibrationUI])
  {
    v19 = [(HNDDisplayManager *)self trackpadViewController];
    v20 = [(HNDDisplayManager *)self handManager];
    [v20 systemPointerLocation];
    v22 = v21;
    v24 = v23;

    v25 = [(HNDDisplayManager *)self trackpadViewController];
    v26 = [v25 trackpadContainsPoint:{v9, v11}];

    self->_didTouchTrackpad = v26;
    if (self->_trackpadPointerOnRocker)
    {
      self->_trackpadPointerOnRocker = [(HNDDisplayManager *)self isShowingVirtualTrackpad];
    }

    else
    {
      v27 = [(HNDDisplayManager *)self activeRocker];
      [v27 frame];
      v160.x = v22;
      v160.y = v24;
      v28 = CGRectContainsPoint(v161, v160);
      if (v28)
      {
        LOBYTE(v28) = [(HNDDisplayManager *)self isShowingVirtualTrackpad];
      }

      self->_trackpadPointerOnRocker = v28;
    }

    if (-[HNDDisplayManager isShowingVirtualTrackpad](self, "isShowingVirtualTrackpad") && !-[HNDDisplayManager shouldPassThroughVirtualTrackpad:](self, "shouldPassThroughVirtualTrackpad:", [v4 senderID]))
    {
      if (v26)
      {
        [v19 highlightTrackpad];
      }

      v29 = +[UIApplication sharedApplication];
      [v29 _enqueueHIDEvent:{objc_msgSend(v4, "creatorHIDEvent")}];
    }

    if (self->_lastHandType == 6 && [v5 eventType] == self->_lastHandType)
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

    v32 = [(HNDDisplayManager *)self activeRocker];
    [v32 isAnimatingNubbit];

    v33 = [(HNDDisplayManager *)self activeRocker];
    if ([v33 isAnimatingNubbit])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        goto LABEL_21;
      }

      v35 = [(HNDDisplayManager *)self activeRocker];
      v36 = [v35 state];

      if (v36 != 1)
      {
        goto LABEL_21;
      }

      v37 = [(HNDDisplayManager *)self activeRocker];
      v33 = self->_downView;
      self->_downView = v37;
    }

LABEL_21:
    v38 = [v5 eventType] == 1 || objc_msgSend(v5, "eventType") == 2;
    p_downView = &self->_downView;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(HNDView *)*p_downView isModalDown])
    {
      goto LABEL_29;
    }

    v40 = self->_downView;
    v41 = [(HNDDisplayManager *)self rocker];
    v42 = v41;
    if (v40 == v41 && self->_nubbitMoving)
    {
      v43 = [v5 eventType];

      if (v43 == 2)
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
      v47 = [v5 eventType];
      SCRCMathGetDistanceBetweenPoints();
      v49 = v48;
      if (v26)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && !-[HNDDisplayManager shouldPassThroughVirtualTrackpad:](self, "shouldPassThroughVirtualTrackpad:", [v4 senderID]))
        {
LABEL_149:
          v18 = 1;
          goto LABEL_156;
        }
      }

      if (_UISolariumEnabled() && [v4 creatorHIDEvent])
      {
        v50 = [(HNDDisplayManager *)self activeRocker];
        v51 = v50;
        if (v46 == v50)
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
          v53 = [v4 handInfo];
          v54 = [v53 eventType];

          if (v54 != 2)
          {
            v55 = +[UIApplication sharedApplication];
            [v55 _enqueueHIDEvent:{objc_msgSend(v4, "creatorHIDEvent")}];
          }
        }
      }

LABEL_46:
      v18 = 0;
      v56 = v49;
      if (v47 > 7)
      {
        if ((v47 - 8) > 2)
        {
LABEL_156:

          goto LABEL_157;
        }

LABEL_52:
        v57 = [(HNDDisplayManager *)self activeRocker];
        v58 = *&CGAffineTransformIdentity.c;
        *buf = *&CGAffineTransformIdentity.a;
        v158 = v58;
        v159 = *&CGAffineTransformIdentity.tx;
        [v57 setTransform:buf];

        [(AXDispatchTimer *)self->_longPressTimer cancel];
        v59 = [(HNDDisplayManager *)self activeRocker];
        [v59 fadeNubbit];

        [v19 fadeTrackpad];
        trackpadAction = self->_trackpadAction;
        if (trackpadAction == 2)
        {
          [v19 handleTrackpadScroll:2 point:{CGPointZero.x, CGPointZero.y}];
        }

        else if (trackpadAction == 1)
        {
          [v19 handleTrackpadPinch:2 firstPoint:CGPointZero.x secondPoint:{CGPointZero.y, CGPointZero.x, CGPointZero.y}];
        }

        v61 = v19;
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

          v19 = v61;
          if (!self->_longPressActionActivated)
          {
            v69 = [(HNDDisplayManager *)self activeRocker];
            [v69 modalizeMenu:0 modalButton:0];

            if (v47 <= 0xA && ((1 << v47) & 0x640) != 0)
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

        v66 = [(HNDDisplayManager *)self handManager];
        [v66 setNubbitMoving:0];

        v19 = v61;
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
        v76 = [(HNDDisplayManager *)self activeRocker];
        [v76 resetOrbAction];

        self->_trackpadPointerOnRocker = 0;
        *&self->_didTouchTrackpad = 0;
        self->_trackpadAction = 0;
        if ([(HNDDisplayManager *)self inNubbitMode]&& [(HNDDisplayManager *)self alwaysShowMenu])
        {
          v77 = [(HNDDisplayManager *)self rocker];
          [v77 showNubbitPressedState:0];
        }

        [(HNDDisplayManager *)self _hideLargeContentViewerIfNeeded];
        [(HNDDisplayManager *)self _didHandleRealUpEvent];
        v78 = 1;
        p_downView = &self->_downView;
        goto LABEL_137;
      }

      if (v47 != 1)
      {
        if (v47 != 2)
        {
          if (v47 != 6)
          {
            goto LABEL_156;
          }

          goto LABEL_52;
        }

        v92 = v19;
        [(UIWindow *)self->_window convertPoint:v46 toView:v14, v16];
        v94 = v93;
        v154 = v95;
        v96 = self->_downView;
        v97 = [(HNDDisplayManager *)self rocker];
        v98 = v97;
        if (v96 == v97)
        {
          v113 = [(HNDDisplayManager *)self inNubbitMode];

          v19 = v92;
          if (v113)
          {
            if ([v92 isPressingOnTrackpad] && self->_trackpadPointerOnRocker)
            {
              [(HNDDisplayManager *)self _handleNubbitMove:v4 event:v22, v24];
              self->_trackpadMovedNubbit = 1;
            }

            else if (!self->_didTouchTrackpad)
            {
              [(HNDDisplayManager *)self _handleNubbitMove:v4 event:v14, v16];
            }

            goto LABEL_116;
          }
        }

        else
        {

          v19 = v92;
        }

        v114 = *p_downView;
        if (*p_downView == v46)
        {
LABEL_114:
          maxOrbDuringTouch = self->_maxOrbDuringTouch;
          v116 = [v4 handInfo];
          v117 = [v116 paths];
          v118 = [v117 firstPath];
          [v118 pathPressure];
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
            v124 = [v5 paths];
            v125 = [v124 secondPath];
            [v125 pathLocation];
            v127 = v126;
            v129 = v128;
            v130 = v19;
            v131 = 1;
          }

          else
          {
            if (v121)
            {
              goto LABEL_126;
            }

            if ([v19 trackpadCanScroll])
            {
              self->_trackpadAction = 2;
              v122 = v19;
              v123 = 0;
LABEL_125:
              [v122 handleTrackpadScroll:v123 point:{v9, v11}];
              goto LABEL_126;
            }

            if (![v19 trackpadCanPinch])
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
              v136 = [v4 handInfo];
              v137 = [v136 paths];
              v138 = [v137 firstPath];
              [v138 pathPressure];
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
            v124 = [v5 paths];
            v125 = [v124 secondPath];
            [v125 pathLocation];
            v127 = v152;
            v129 = v153;
            v130 = v19;
            v131 = 0;
          }

          [v130 handleTrackpadPinch:v131 firstPoint:v9 secondPoint:{v11, v127, v129}];

          goto LABEL_126;
        }

        v122 = v19;
        v123 = 1;
        goto LABEL_125;
      }

      v79 = v19;
      +[HNDRocker nubbitSize];
      v81 = v14 - v80 * 0.5;
      v83 = v16 - v82 * 0.5;
      v84 = +[AXSettings sharedInstance];
      v85 = [v84 assistiveTouchLongPressAction];
      if (v85)
      {
        v86 = v85;
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
            v19 = v79;
          }

          else
          {
            v19 = v79;
            if (!self->_nubbitMoving)
            {
              v99 = +[AXSettings sharedInstance];
              v100 = [v99 assistiveTouchSingleTapAction];
              v101 = [v100 isEqualToString:AXAssistiveTouchIconTypePassThroughToApp];

              if ((v101 & 1) == 0)
              {
                v102 = [(HNDDisplayManager *)self rocker];
                [v102 highlightNubbit];
              }

              v103 = [(HNDDisplayManager *)self rocker];
              window = self->_window;
              v105 = [(HNDDisplayManager *)self rocker];
              [(UIWindow *)window convertPoint:v105 toView:self->_movePoint.x, self->_movePoint.y];
              [v103 handleRealDownEvent:?];
            }

            v106 = [(HNDDisplayManager *)self rocker];

            if (v46 == v106)
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

                v108 = [(HNDDisplayManager *)self handManager];
                [v108 setNubbitMoving:1];

                self->_nubbitMoving = 1;
              }
            }
          }

          v109 = [v4 handInfo];
          v110 = [v109 paths];
          v111 = [v110 firstPath];
          [v111 pathPressure];
          self->_maxOrbDuringTouch = v112;

          [(AXDispatchTimer *)self->_idleTimer cancel];
          [(AXDispatchTimer *)self->_longIdleTimer cancel];
          v78 = 0;
LABEL_137:
          self->_lastHandType = [v5 eventType];
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
                v143 = [(HNDView *)*p_downView isBackButton];
                v144 = [(HNDDisplayManager *)self activeRocker];
                v145 = v144;
                if (v143)
                {
                  v146 = 0;
                  v147 = 0;
                }

                else
                {
                  v147 = *p_downView;
                  v146 = 1;
                }

                [v144 modalizeMenu:v146 modalButton:v147];

                self->_lastMenuInteractionTime = CFAbsoluteTimeGetCurrent();
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || ([(HNDView *)*p_downView isModalDown]& 1) == 0)
                {
                  v148 = [(HNDDisplayManager *)self activeRocker];
                  [v148 modalizeMenu:0 modalButton:0];
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
          v90 = [v89 assistiveTouchLongPressAction];
          *buf = 138412290;
          *&buf[4] = v90;
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
  [v17 _enqueueHIDEvent:{objc_msgSend(v4, "creatorHIDEvent")}];

  v18 = 0;
LABEL_158:

  return v18;
}

- (void)updateRockersForSubstantialTransition
{
  v3 = [(HNDDisplayManager *)self rocker];
  [v3 updateRockersForSubstantialTransition];

  v4 = [(HNDDisplayManager *)self expandedRocker];
  [v4 updateRockersForSubstantialTransition];
}

- (CGPoint)convertPointToInterfaceOrientation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (CGRect)convertFrameToInterfaceOrientation:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (CGPoint)convertToNormalizedInterfaceOrientation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(HNDDisplayManager *)self screenBounds];
  v6 = x / v5;
  v8 = y / v7;
  result.y = v8;
  result.x = v6;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromOrientation:(int)a4
{
  y = a3.y;
  x = a3.x;
  [(HNDDisplayManager *)self portraitUpScreenBounds];
  v8 = v7 - x;
  v10 = v9 - y;
  v11 = v7 - y;
  v12 = v9 - x;
  if (a4 != 2)
  {
    v12 = x;
    v11 = y;
  }

  if (a4 == 3)
  {
    v13 = x;
  }

  else
  {
    v10 = v12;
    v13 = v11;
  }

  if (a4 == 4)
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

- (CGPoint)convertPointToPortraitUpOrientation:(CGPoint)a3
{
  [(HNDDisplayManager *)self convertPoint:self->_orientation fromOrientation:a3.x, a3.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGRect)screenBoundsForRockerButton:(id)a3
{
  v4 = a3;
  v5 = [(HNDDisplayManager *)self activeRocker];
  [v5 onScreenFrameForRockerButton:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  fingerContentView = self->_fingerContentView;
  v15 = [(HNDDisplayManager *)self activeRocker];
  [(HNDView *)fingerContentView convertRect:v15 fromView:v7, v9, v11, v13];
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
    v3 = [(HNDDisplayManager *)self activeRocker];
    [v3 onScreenLocation];
    v5 = v4;
    v7 = v6;

    [(HNDDisplayManager *)self showMenu:0];
  }

  else
  {
    v5 = -1.0;
    v7 = -1.0;
  }

  v9 = [(HNDDisplayManager *)self handManager];
  v8 = [(HNDDisplayManager *)self hardwareIdentifier];
  [v9 resetFingersToPoint:v8 onDisplay:-[HNDView isActive](self->_fingerContentView active:{"isActive"), v5, v7}];
}

- (void)updateNubbitForegroundImageForAction:(id)a3
{
  v7 = a3;
  v4 = [(HNDDisplayManager *)self rocker];

  if (v4)
  {
    pendingForegroundImageAction = [(HNDDisplayManager *)self rocker];
    [pendingForegroundImageAction updateForegroundImageForAction:v7];
  }

  else
  {
    v6 = v7;
    pendingForegroundImageAction = self->_pendingForegroundImageAction;
    self->_pendingForegroundImageAction = v6;
  }
}

- (void)activateDisplayItems
{
  v4 = [(HNDDisplayManager *)self activeRocker];
  if (([v4 isActive] & 1) == 0)
  {
    v3 = [(HNDDisplayManager *)self isMenuVisible];

    if (!v3)
    {
      return;
    }

    v4 = [(HNDDisplayManager *)self activeRocker];
    [v4 setIsActive:1];
  }
}

- (void)setFingerContentViewIsActive:(BOOL)a3
{
  v3 = a3;
  if ([(HNDDisplayManager *)self _shouldSetFingerContentViewToActive:?])
  {
    fingerContentView = self->_fingerContentView;

    [(HNDView *)fingerContentView setIsActive:v3];
  }
}

- (void)setFingerContentViewIsActive:(BOOL)a3 withDuration:(double)a4
{
  v5 = a3;
  if ([(HNDDisplayManager *)self _shouldSetFingerContentViewToActive:?])
  {
    fingerContentView = self->_fingerContentView;

    [(HNDView *)fingerContentView setIsActive:v5 withDuration:a4];
  }
}

- (void)setFingerContentViewIsActive:(BOOL)a3 withDuration:(double)a4 options:(unint64_t)a5
{
  v7 = a3;
  if ([(HNDDisplayManager *)self _shouldSetFingerContentViewToActive:?])
  {
    fingerContentView = self->_fingerContentView;

    [(HNDView *)fingerContentView setIsActive:v7 withDuration:a5 options:a4];
  }
}

- (BOOL)_shouldSetFingerContentViewToActive:(BOOL)a3
{
  v6 = [(HNDDisplayManager *)self inBubbleMode];
  if (!v6)
  {
    if (![(HNDDisplayManager *)self inBubbleMode])
    {
      v7 = 0;
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v3 = [(HNDDisplayManager *)self handManager];
  if (![v3 currentlySnappedInBubbleMode])
  {
    v7 = 1;
    goto LABEL_9;
  }

  if ([(HNDDisplayManager *)self inBubbleMode])
  {
LABEL_6:
    v8 = [(HNDDisplayManager *)self handManager];
    v7 = [v8 currentlySnappedInBubbleMode] & !a3;

    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v7 = 0;
LABEL_9:

LABEL_11:
  v9 = [(HNDDisplayManager *)self inBubbleMode];
  if ((v7 & 1) != 0 || !v9)
  {
    return 1;
  }

  return [(HNDDisplayManager *)self isShowingVirtualTrackpad];
}

- (void)_idleTimerFired
{
  [(AXDispatchTimer *)self->_longIdleTimer cancel];
  longIdleTimer = self->_longIdleTimer;
  v4 = [(HNDDisplayManager *)self isMenuVisible];
  v5 = 7.0;
  if (v4)
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
  v3 = [(HNDDisplayManager *)self handManager];
  v4 = [v3 dwellControlEnabled];

  result = 3.0;
  if (v4)
  {
    [(HNDDisplayManager *)self assistiveTouchMouseDwellControlActivationTimeout];
    return v6 + 3.0;
  }

  return result;
}

- (CGPoint)normalizedPointForDifference:(CGPoint)a3
{
  y = a3.y;
  __asm { FMOV            V1.2D, #1.0 }

  v9 = vminnmq_f64(vmaxnmq_f64(vaddq_f64(vdivq_f64(a3, vdupq_n_s64(0x4072C00000000000uLL)), self->_currentPoint), 0), _Q1);
  v10 = v9.f64[1];
  result.x = v9.f64[0];
  result.y = v10;
  return result;
}

- (double)_rotationDegreesForOrientation:(int)a3
{
  result = 0.0;
  if ((a3 - 2) <= 2)
  {
    return dbl_1001BD068[a3 - 2];
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
    v4 = [(HNDDisplayManager *)self handManager];
    v3 = [(HNDDisplayManager *)self hardwareIdentifier];
    [v4 resetFingersIfNeededOnDisplay:v3];
  }
}

- (void)setOrientation:(int)a3 withCompletion:(id)a4
{
  v4 = *&a3;
  v6 = a4;
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
        v10 = [v9 isSpotlightVisible];

        if (v10)
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
      v22 = [(HNDDisplayManager *)self activeRocker];
      [v22 alpha];
      v24 = v23 == 0.0;

      v25 = [(HNDDisplayManager *)self activeRocker];
      [v25 alpha];
      v27 = v26;

      if (v27 >= 0.01)
      {
        v28 = v27;
      }

      else
      {
        v28 = 1.0;
      }

      v29 = [(HNDDisplayManager *)self trackpadViewController];
      v30 = [v29 view];
      [v30 alpha];
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
      v35 = v6;
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

- (BOOL)hoverMovedToNormalizedPoint:(CGPoint)a3 shouldUpdateCurrentPoint:(BOOL)a4
{
  if (a4)
  {
    y = a3.y;
    x = a3.x;
    if (a3.x == -1.0 && a3.y == -1.0)
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
    v21 = [(HNDDisplayManager *)self activeRocker];
    [(HNDView *)fingerContentView convertPoint:v21 toView:v18, v20];
    v23 = v22;
    v25 = v24;

    v26 = [(HNDDisplayManager *)self activeRocker];
    [v26 hoveredTo:{v23, v25}];
  }

  [(HNDDisplayManager *)self _startIdleTimer];
  v27 = [(HNDDisplayManager *)self shouldHideCursorsEyeTrackingAutoHide];
  if (![(HNDDisplayManager *)self inBubbleMode])
  {
    v28 = [(HNDDisplayManager *)self handManager];
    v29 = [v28 currentlySnappedInBubbleMode] | v27;

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
  v2 = [(UIWindow *)self->_window screen];
  [v2 bounds];
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
  v2 = [(UIWindow *)self->_window screen];
  [v2 _referenceBounds];
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
  v2 = [(HNDDisplayManager *)self activeRocker];
  [v2 frame];
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

- (void)updateWithPrimaryFingerPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (a3.x == -1.0 && a3.y == -1.0)
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

- (void)showCircleMenu:(BOOL)a3
{
  v3 = a3;
  v5 = [(HNDDisplayManager *)self rocker];
  [v5 setUseCircleMode:v3];

  v6 = [(HNDDisplayManager *)self expandedRocker];
  [v6 setUseCircleMode:v3];
}

- (void)performPress:(int)a3 type:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  [(HNDDisplayManager *)self activateDisplayItems];
  [(AXDispatchTimer *)self->_idleTimer cancel];
  if ([(HNDDisplayManager *)self isMenuVisible])
  {
    if (v5 == 2)
    {
      v7 = [(HNDDisplayManager *)self activeRocker];
      [v7 performPress:2 type:v4 source:2];

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

    v8 = [(HNDDisplayManager *)self activeRocker];
    [v8 performPress:v5 type:v4 source:2];

    goto LABEL_8;
  }

LABEL_9:
  self->_isPressedDown = v5 == 2;
}

- (CGPoint)_menuPointForFingerLayout
{
  v3 = [(HNDDisplayManager *)self handManager];
  v4 = [(HNDDisplayManager *)self hardwareIdentifier];
  [v3 preferredMenuDisplayPointOnDisplay:v4];
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
    v20 = [(HNDDisplayManager *)self rocker];
    [v20 frame];
    v8 = v19 + v21;
  }

  [(HNDDisplayManager *)self _layoutPointForPoint:v6 screenBounds:v8, v10, v12, v14, v16];
  result.y = v23;
  result.x = v22;
  return result;
}

- (CGPoint)_layoutPointForPoint:(CGPoint)a3 screenBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a3.y;
  x = a3.x;
  [HNDRocker initialRockerSize:a3.x];
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
  v3 = [(HNDDisplayManager *)self activeRocker];
  [v3 alpha];
  v6 = v4 <= 0.0 && ([(HNDView *)self->_fingerContentView alpha], v5 <= 0.0) || self->_visualsHidden;

  return v6;
}

- (void)setVisualsHidden:(BOOL)a3 forReason:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v8 = a4;
  v9 = ASTLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109634;
    v15 = v6;
    v16 = 2112;
    v17 = v8;
    v18 = 1024;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Set visuals hidden: %i. Reason: %@. Animated: %i", buf, 0x18u);
  }

  self->_visualsHidden = v6;
  v10 = 0.0;
  if (v5)
  {
    +[HNDDisplayManager fadeDuration];
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001C07C;
  v12[3] = &unk_1001D3B20;
  v12[4] = self;
  v13 = v6;
  [UIView animateWithDuration:v12 animations:v10];
  if (!v6)
  {
    v11 = [(HNDDisplayManager *)self activeRocker];
    [v11 fadeNubbit];
  }
}

- (void)showMenu:(BOOL)a3
{
  v3 = a3;
  if ([(HNDDisplayManager *)self isMenuVisible]== a3)
  {
    return;
  }

  v5 = [(HNDDisplayManager *)self activeRocker];
  v6 = [v5 isAnimatingNubbit];

  if (v6)
  {
    return;
  }

  v7 = [(HNDDisplayManager *)self activeRocker];
  v8 = *&CGAffineTransformIdentity.c;
  v41[0] = *&CGAffineTransformIdentity.a;
  v9 = *&CGAffineTransformIdentity.tx;
  v41[1] = v8;
  v41[2] = v9;
  [v7 setTransform:v41];

  self->_nubbitMoving = 0;
  if (!v3)
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
    v23 = [(HNDDisplayManager *)self rocker];
    [v23 setStyle:0];

    v24 = [(HNDDisplayManager *)self handManager];
    v25 = [v24 eventManager];
    [v25 manipulateDimTimer:0];

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

    v32 = [(HNDDisplayManager *)self alwaysShowMenu];
    v33 = [(HNDDisplayManager *)self rocker];
    v19 = v33;
    if (v32)
    {
      [v33 transitionMenuToNubbit:1 changeAlpha:1 animate:{v28, v29}];
    }

    else
    {
      [v33 setFullMenuVisible:0 atPoint:{v28, v29}];
    }

    goto LABEL_15;
  }

  v10 = [(HNDDisplayManager *)self activeRocker];
  [v10 highlightNubbit];

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
  v15 = [(HNDDisplayManager *)self handManager];
  [v15 specialToolUsageEnded:1];

  v16 = [(HNDDisplayManager *)self handManager];
  v17 = [(HNDDisplayManager *)self hardwareIdentifier];
  [v16 resetFingersIfNeededOnDisplay:v17];

  v18 = [(HNDDisplayManager *)self inNubbitMode];
  v19 = [(HNDDisplayManager *)self rocker];
  if ([(HNDDisplayManager *)self usesSeparateRockerForFullMenu])
  {
    v20 = [(HNDDisplayManager *)self expandedRocker];

    [v20 setStyle:1];
    v19 = v20;
    if (!v18)
    {
LABEL_6:
      [v19 setFullMenuVisible:1 atPoint:{v12, v14}];
      v21 = [(HNDDisplayManager *)self handManager];
      v22 = [(HNDDisplayManager *)self hardwareIdentifier];
      [v21 resetFingersIfActiveOnDisplay:v22];

LABEL_15:
      v35 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v34 = [(HNDDisplayManager *)self rocker];
    [v34 setStyle:1];

    if (!v18)
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
  [v19 transitionNubbitToMenu:v35 concurrentAnimation:&stru_1001D3BB8 animationCompleted:{v12, v14}];
LABEL_16:

  self->_currentStyle = v3;
  if ([(HNDDisplayManager *)self usesSeparateRockerForFullMenu])
  {
    [(HNDDisplayManager *)self performStyleTransitionAlongsideAnimations:v35];
  }

  v36 = [(HNDDisplayManager *)self handManager];
  v37 = [v36 eventManager];
  [v37 setMenuVisible:v3];
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

- (void)restartWithCompletion:(id)a3
{
  v4 = a3;
  v5 = ASTLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AST Windows: restart display manager", v6, 2u);
  }

  [(HNDDisplayManager *)self cleanup];
  [(HNDDisplayManager *)self initializeDisplayWithCompletion:v4];
}

- (void)updateMenuStyle
{
  [UIView setAnimationsEnabled:0];
  v3 = [(HNDDisplayManager *)self rocker];
  [v3 setNubbitVisible:{-[HNDDisplayManager alwaysShowMenu](self, "alwaysShowMenu")}];

  if ([(HNDDisplayManager *)self alwaysShowMenu]&& [(HNDDisplayManager *)self inNubbitMode])
  {
    [(HNDDisplayManager *)self _nubbitPointForEdgePosition];
    [(HNDDisplayManager *)self _validateNubbitPosition:0 forKeyboard:?];
    v5 = v4;
    v7 = v6;
    v8 = [(HNDDisplayManager *)self activeRocker];
    [v8 transitionMenuToNubbit:1 changeAlpha:1 animate:{v5, v7}];
  }

  [UIView setAnimationsEnabled:1];
}

- (void)_deviceCountChanged:(id)a3
{
  v4 = [a3 integerValue];

  [(HNDDisplayManager *)self deviceCountChanged:v4];
}

- (void)deviceCountChanged:(int64_t)a3
{
  if (a3 < 1)
  {
    if (!a3 && [(HNDDisplayManager *)self isMenuVisible])
    {
      [(HNDDisplayManager *)self showMenu:0];
    }

    goto LABEL_15;
  }

  if (!self->_ignoredWindow)
  {
    v16 = [NSNumber numberWithInteger:?];
    [(HNDDisplayManager *)self performSelector:"_deviceCountChanged:" withObject:0.1 afterDelay:?];
    goto LABEL_16;
  }

  v4 = [(HNDDisplayManager *)self handManager];
  v5 = [v4 deviceManager];
  if ([v5 hidDeviceIsConfiguring])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(HNDDisplayManager *)self handManager];
    v8 = [v7 deviceManager];
    v6 = [v8 hidDeviceSentReservedStatus];
  }

  if (AXDeviceSupportsOnDeviceEyeTracking())
  {
    if (([(HNDDisplayManager *)self isShowingCalibrationUI]| v6))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((v6 & 1) == 0)
  {
LABEL_14:
    [(HNDDisplayManager *)self hoverMovedToNormalizedPoint:0 shouldUpdateCurrentPoint:CGPointZero.x, CGPointZero.y];
  }

LABEL_15:
  v9 = [(HNDDisplayManager *)self handManager];
  v10 = [(HNDDisplayManager *)self hardwareIdentifier];
  [v9 resetFingersIfNeededOnDisplay:v10];

  v11 = [(HNDDisplayManager *)self handManager];
  [v11 updateMenuVisibility];

  v12 = [(HNDDisplayManager *)self handManager];
  [v12 updateSoftwareKeyboardState];

  v13 = [(HNDDisplayManager *)self handManager];
  v14 = [(HNDDisplayManager *)self handManager];
  v15 = [v14 deviceManager];
  [v13 prepareForEyeTrackerConnected:{objc_msgSend(v15, "mainDeviceIsMotionTracker")}];

  v16 = [(HNDDisplayManager *)self activeRocker];
  [v16 forceReloadScrollMenuItems];
LABEL_16:
}

- (void)updateRingerSwitch
{
  v2 = [(HNDDisplayManager *)self activeRocker];
  [v2 updateRingerSwitch];
}

- (void)updateRotationLockSwitch
{
  v2 = [(HNDDisplayManager *)self activeRocker];
  [v2 updateRotationLockSwitch];
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
  v2 = [(HNDDisplayManager *)self activeRocker];
  [v2 performSelectorOnMainThread:"volumeChanged" withObject:0 waitUntilDone:0];
}

- (void)didFailToPinApp
{
  v2 = [(HNDDisplayManager *)self activeRocker];
  [v2 didFailToPinApp];
}

- (void)didFailToFloatApp
{
  v2 = [(HNDDisplayManager *)self activeRocker];
  [v2 didFailToFloatApp];
}

- (void)viewPressedDown:(id)a3
{
  v4 = a3;
  v11 = [(HNDDisplayManager *)self rocker];

  v5 = v11;
  if (v11 == v4)
  {
    v6 = [(HNDDisplayManager *)self inNubbitMode];

    if (!v6)
    {
      return;
    }

    v7 = +[AXSettings sharedInstance];
    v12 = [v7 assistiveTouchMainScreenCustomization];

    v8 = [(HNDDisplayManager *)self rocker];
    v9 = [v8 customizationMapAllowInstanceActivation:v12];

    if (v9)
    {
      v10 = [(HNDDisplayManager *)self rocker];
      [v10 showNubbitPressedState:1];
    }

    v5 = v12;
  }
}

- (void)viewOrbActionTriggered:(id)a3
{
  v4 = a3;
  v22 = [(HNDDisplayManager *)self rocker];

  v5 = v22;
  if (v22 == v4)
  {
    v6 = [(HNDDisplayManager *)self inNubbitMode];

    if (!v6)
    {
      return;
    }

    v7 = +[AXSettings sharedInstance];
    v23 = [v7 assistiveTouchOrbAction];

    v5 = v23;
    if (v23)
    {
      if ([v23 isEqualToString:AXAssistiveTouchIconTypeOpenMenu])
      {
        window = self->_window;
        v9 = [(HNDDisplayManager *)self rocker];
        [v9 bounds];
        AX_CGRectGetCenter();
        v11 = v10;
        v13 = v12;
        v14 = [(HNDDisplayManager *)self rocker];
        [(UIWindow *)window convertPoint:v14 fromView:v11, v13];
        v16 = v15;
        v18 = v17;

        [(HNDDisplayManager *)self closestNubbitPositionForPoint:1 offsetByMidpoint:v16, v18];
        [(HNDDisplayManager *)self _updateNubbitEdgePosition:?];
      }

      sub_100043CB4(1);
      self->_playedHapticForCurrentEvent = 1;
      sub_1000428A0(@"assistiveTouchOrbAction");
      v19 = [(HNDDisplayManager *)self handManager];
      [v19 setNubbitMoving:0];

      v20 = [(HNDDisplayManager *)self rocker];
      [v20 activateMenuItemDown:v23 fromButtonPress:0];

      v21 = [(HNDDisplayManager *)self rocker];
      [v21 activateMenuItemUp:v23 fromButtonPress:0];

      v5 = v23;
    }
  }
}

- (void)activateAssistiveTouchAction:(id)a3 fromButtonPress:(BOOL)a4
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001D1FC;
  v11[3] = &unk_1001D3C08;
  v11[4] = self;
  v6 = a3;
  v12 = v6;
  v13 = a4;
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

  v10 = [v6 isEqualToString:AXAssistiveTouchIconTypeTap];

  if (!v10)
  {
LABEL_7:
    (v7[2])(v7);
    goto LABEL_8;
  }

  AXPerformBlockOnMainThread();
LABEL_8:
}

- (void)viewPressedUp:(id)a3
{
  v4 = a3;
  v5 = [(HNDDisplayManager *)self rocker];
  v6 = v5;
  if (v5 != v4)
  {

LABEL_10:
    if (self->_rockerDismiss == v4 && [(HNDDisplayManager *)self isMenuVisible]&& !self->_trackpadPointerOnRocker)
    {
      v25 = [(HNDDisplayManager *)self handManager];
      v26 = [(HNDDisplayManager *)self hardwareIdentifier];
      [v25 menuExitedOnDisplay:v26];
    }

    goto LABEL_19;
  }

  v7 = [(HNDDisplayManager *)self inNubbitMode];

  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = +[AXSettings sharedInstance];
  v9 = [v8 assistiveTouchLongPressAction];

  v10 = +[AXSettings sharedInstance];
  v11 = [v10 assistiveTouchDoubleTapAction];

  v12 = +[AXSettings sharedInstance];
  v13 = [v12 assistiveTouchSingleTapAction];

  v14 = [(HNDDisplayManager *)self handManager];
  v15 = [(HNDDisplayManager *)self hardwareIdentifier];
  [v14 resetFingersIfActiveOnDisplay:v15];

  [(AXDispatchTimer *)self->_longPressTimer cancel];
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_10001D728;
  v31 = &unk_1001D3C30;
  v32 = self;
  v16 = v11;
  v33 = v16;
  v17 = v9;
  v34 = v17;
  v18 = v13;
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

- (void)showBubbleNotificationWithError:(id)a3 duration:(double)a4
{
  v11 = a3;
  bannerViewPresenter = self->_bannerViewPresenter;
  if (bannerViewPresenter)
  {
    v7 = [(AXUIBannerPresenter *)bannerViewPresenter containingView];
    contentView = self->_contentView;

    if (v7 == contentView)
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
  [(AXUIBannerPresenter *)self->_bannerViewPresenter presentBannerViewWithText:v11 duration:a4];
}

- (void)_moveBubbleNotificationToPos:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  bannerViewPresenter = self->_bannerViewPresenter;
  if (bannerViewPresenter && ([(AXUIBannerPresenter *)bannerViewPresenter bannerView], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [(AXUIBannerPresenter *)self->_bannerViewPresenter bannerView];
    [v8 frame];
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
  v3 = [(HNDDisplayManager *)self handManager];
  if ([v3 eyeTrackingAutoHideEnabled])
  {
    v4 = [(HNDDisplayManager *)self handManager];
    v5 = [v4 hidePointerForEyeTrackingAutoHide];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)drawBubbleCursorFrame:(CGRect)a3 withPath:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(HNDDisplayManager *)self bubbleModeContentView];
  v11 = [v10 isActive];

  if ((v11 & 1) == 0)
  {
    v12 = [(HNDDisplayManager *)self bubbleModeContentView];
    [v12 setIsActive:1];
  }

  v13 = [(HNDDisplayManager *)self bubbleCursor];

  if (!v13)
  {
    v14 = [UIView alloc];
    v15 = [(HNDDisplayManager *)self bubbleModeContentView];
    [v15 bounds];
    v16 = [v14 initWithFrame:?];
    [(HNDDisplayManager *)self setBubbleCursor:v16];

    v17 = [(HNDDisplayManager *)self bubbleCursor];
    [v17 setAutoresizingMask:18];

    v18 = [(HNDDisplayManager *)self bubbleModeContentView];
    v19 = [(HNDDisplayManager *)self bubbleCursor];
    [v18 addSubview:v19];
  }

  v20 = [(HNDDisplayManager *)self bubbleCursorController];

  if (!v20)
  {
    v21 = objc_alloc_init(HNDBubbleCursorController);
    [(HNDDisplayManager *)self setBubbleCursorController:v21];

    v22 = [(HNDDisplayManager *)self bubbleCursor];
    v23 = [v22 layer];
    v24 = [(HNDDisplayManager *)self bubbleCursorController];
    v25 = [v24 cursorContainerLayer];
    [v23 addSublayer:v25];
  }

  v26 = [(HNDDisplayManager *)self bubbleCursorController];
  [v26 updateTheme:0 level:1 path:v9 frame:1 isSimpleRect:0 animated:{x, y, width, height}];
}

- (void)hideBubbleCursor
{
  v2 = [(HNDDisplayManager *)self bubbleModeContentView];
  [v2 setIsActive:0];
}

- (void)showBubbleCursor
{
  v2 = [(HNDDisplayManager *)self bubbleModeContentView];
  [v2 setIsActive:1];
}

- (BOOL)bubbleCursorIsActive
{
  v2 = [(HNDDisplayManager *)self bubbleModeContentView];
  v3 = [v2 isActive];

  return v3;
}

- (BOOL)inBubbleMode
{
  v2 = [(HNDDisplayManager *)self handManager];
  v3 = [v2 inBubbleMode];

  return v3;
}

- (void)overrideBubbleCursorOpacity:(double)a3
{
  v4 = [(HNDDisplayManager *)self bubbleModeContentView];
  [v4 setInactiveAlpha:a3];
}

- (void)animateBubbleCursorDwellWithDuration:(double)a3 inRocker:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(HNDDisplayManager *)self dwellBubbleModeCompletionBlock];

  if (v9)
  {
    v10 = [(HNDDisplayManager *)self dwellBubbleModeCompletionBlock];
    v10[2](v10, 0);

    [(HNDDisplayManager *)self setDwellBubbleModeCompletionBlock:0];
  }

  v11 = [(HNDDisplayManager *)self bubbleCursorController];
  v12 = [v11 cursorBackgroundLayer];

  v13 = [v12 animationKeys];
  v14 = [v13 containsObject:@"ASTBubbleModeDwellStartAnimationID"];

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
    if (v18 == 1 || v5)
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
  [v15 setDuration:a3];
  [v15 setDelegate:self];
  [v15 setRemovedOnCompletion:0];
  [v12 addAnimation:v15 forKey:@"ASTBubbleModeDwellStartAnimationID"];
  if (CopyWithAlpha)
  {
    CFRelease(CopyWithAlpha);
  }

  [(HNDDisplayManager *)self setDwellBubbleModeCompletionBlock:v8, v24, v25];
}

- (void)cancelDwellOnBubbleCursor
{
  v3 = [(HNDDisplayManager *)self bubbleCursorController];
  v6 = [v3 cursorBackgroundLayer];

  [v6 removeAnimationForKey:@"ASTBubbleModeDwellStartAnimationID"];
  v4 = [(HNDDisplayManager *)self dwellBubbleModeCompletionBlock];

  if (v4)
  {
    v5 = [(HNDDisplayManager *)self dwellBubbleModeCompletionBlock];
    v5[2](v5, 0);

    [(HNDDisplayManager *)self setDwellBubbleModeCompletionBlock:0];
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = [a3 valueForKey:{@"ASTBubbleModeAnimationID", a4}];
  v6 = [v5 isEqualToString:@"ASTBubbleModeDwellStartAnimationID"];

  if (v6)
  {
    v7 = [(HNDDisplayManager *)self bubbleCursorController];
    v8 = [v7 cursorBackgroundLayer];

    v9 = [CABasicAnimation animationWithKeyPath:@"strokeColor"];
    [v9 setValue:@"ASTBubbleModeDwellStopAnimationID" forKey:@"ASTBubbleModeAnimationID"];
    v10 = [v8 restingStrokeColor];
    [v9 setToValue:{objc_msgSend(v10, "CGColor")}];

    [v9 setDuration:0.3];
    [v9 setRemovedOnCompletion:1];
    [v8 addAnimation:v9 forKey:@"ASTBubbleModeDwellStopAnimationID"];
  }

  v11 = [(HNDDisplayManager *)self dwellBubbleModeCompletionBlock];

  if (v11)
  {
    v12 = [(HNDDisplayManager *)self dwellBubbleModeCompletionBlock];
    v12[2](v12, 1);

    [(HNDDisplayManager *)self setDwellBubbleModeCompletionBlock:0];
  }
}

- (CGRect)orientedContinuousScrollViewFrameForScrollViewFrame:(CGRect)a3
{
  window = self->_window;
  [(HNDDisplayManager *)self convertFrameToInterfaceOrientation:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  fingerContentView = self->_fingerContentView;

  [(UIWindow *)window convertRect:fingerContentView toView:?];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)addUserInterfaceClientEnabler:(id)a3
{
  v4 = a3;
  v5 = [(HNDDisplayManager *)self userInterfaceClientEnablers];

  if (!v5)
  {
    v6 = +[NSMutableSet set];
    [(HNDDisplayManager *)self setUserInterfaceClientEnablers:v6];
  }

  v7 = [(HNDDisplayManager *)self userInterfaceClientEnablers];
  [v7 addObject:v4];

  [(HNDDisplayManager *)self _setupUserInterfaceClient];
}

- (void)removeUserInterfaceClientEnabler:(id)a3
{
  v4 = a3;
  v5 = [(HNDDisplayManager *)self userInterfaceClientEnablers];
  [v5 removeObject:v4];

  v6 = [(HNDDisplayManager *)self userInterfaceClientEnablers];
  v7 = [v6 count];

  if (!v7)
  {

    [(HNDDisplayManager *)self _cleanupUserInterfaceClient];
  }
}

- (void)_setupUserInterfaceClient
{
  v3 = [(HNDDisplayManager *)self userInterfaceClient];
  if (!v3)
  {
    if (AXInPreboardScenario())
    {
      return;
    }

    v5 = [[AXUIClient alloc] initWithIdentifier:@"AssistiveTouchUIClient" serviceBundleName:@"AssistiveTouch"];
    [(HNDDisplayManager *)self setUserInterfaceClient:v5];
    v4 = [(HNDDisplayManager *)self userInterfaceClient];
    [v4 sendAsynchronousMessage:0 withIdentifier:2 targetAccessQueue:0 completion:0];

    v3 = v5;
  }
}

- (void)_cleanupUserInterfaceClient
{
  v3 = [(HNDDisplayManager *)self userInterfaceClient];

  if (v3)
  {
    v4 = [(HNDDisplayManager *)self userInterfaceClient];
    [v4 sendAsynchronousMessage:0 withIdentifier:1 targetAccessQueue:0 completion:0];

    [(HNDDisplayManager *)self setUserInterfaceClient:0];
  }
}

- (void)showSimpleAlertWithText:(id)a3
{
  v4 = a3;
  v5 = [(HNDDisplayManager *)self userInterfaceClientEnablers];
  v6 = [v5 count];

  if (!v6)
  {
    _AXAssert();
  }

  if ([v4 length])
  {
    v7 = [(HNDDisplayManager *)self userInterfaceClient];
    v9 = @"simple alert text";
    v10 = v4;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v7 sendAsynchronousMessage:v8 withIdentifier:7 targetAccessQueue:0 completion:0];
  }
}

- (void)showSimpleBannerWithTitle:(id)a3 text:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HNDDisplayManager *)self userInterfaceClientEnablers];
  v9 = [v8 count];

  if (!v9)
  {
    _AXAssert();
  }

  if (![v6 length] || !objc_msgSend(v7, "length"))
  {
    v12 = v6;
    v13 = v7;
    _AXAssert();
  }

  if ([v6 length] && objc_msgSend(v7, "length"))
  {
    v10 = [(HNDDisplayManager *)self userInterfaceClient];
    v14[0] = @"simple banner title";
    v14[1] = @"simple banner text";
    v15[0] = v6;
    v15[1] = v7;
    v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    [v10 sendAsynchronousMessage:v11 withIdentifier:8 targetAccessQueue:0 completion:0];
  }
}

- (void)_layoutHUDView:(id)a3 withinBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  [v8 sizeThatFits:{width, height}];
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
  [v8 setCenter:{v16, v12 * 0.5 + v17}];
  [v8 setBounds:{CGRectZero.origin.x, CGRectZero.origin.y, v10, v12}];
  CGAffineTransformMakeScale(&v20, sx, sx);
  v19 = v20;
  [v8 setTransform:&v19];
}

- (id)_itemForButton:(id)a3
{
  v3 = a3;
  v4 = [UIAccessibilityHUDItem alloc];
  v5 = [v3 title];
  v6 = [v3 deviceSpecificImage];

  v7 = [v4 initWithTitle:v5 image:v6 imageInsets:1 scaleImage:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

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

- (void)_updateLargeContentViewerIfNeededForView:(id)a3
{
  v4 = a3;
  v5 = [(HNDDisplayManager *)self presentHUDViewTimer];
  [v5 cancel];

  if ([(HNDDisplayManager *)self _shouldShowLargeContentViewer]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v6 = v4) != 0)
  {
    v7 = v6;
    v8 = self->_contentView;
    v9 = [(HNDDisplayManager *)self _itemForButton:v7];
    v10 = [(HNDDisplayManager *)self hudView];

    if (v10)
    {
      v11 = [(HNDDisplayManager *)self hudView];
      v12 = [v11 item];
      v13 = [v9 isEqual:v12];

      if ((v13 & 1) == 0)
      {
        v14 = [(HNDDisplayManager *)self hudView];
        [v14 setItem:v9];

        v15 = [(HNDDisplayManager *)self hudView];
        [(UIView *)v8 bounds];
        [(HNDDisplayManager *)self _layoutHUDView:v15 withinBounds:?];
      }
    }

    else if ([(HNDDisplayManager *)self shouldDelayBeforePresentingHUDView])
    {
      v16 = [(HNDDisplayManager *)self presentHUDViewTimer];

      if (!v16)
      {
        v17 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
        [(HNDDisplayManager *)self setPresentHUDViewTimer:v17];
      }

      v18 = [(HNDDisplayManager *)self presentHUDViewTimer];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10001EECC;
      v19[3] = &unk_1001D3C80;
      v19[4] = self;
      v20 = v9;
      v21 = v8;
      [v18 afterDelay:v19 processBlock:0.15];
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

- (void)_presentLargeContentViewerForHUDItem:(id)a3 inContentView:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v8 = ASTLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_100128408();
    }
  }

  v9 = [(HNDDisplayManager *)self hudView];

  if (v9)
  {
    v10 = ASTLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10012843C();
    }
  }

  [(HNDDisplayManager *)self _hideLargeContentViewerIfNeeded];
  v11 = [[UIAccessibilityHUDView alloc] initWithHUDItem:v6];
  [v7 addSubview:v11];
  [v7 bounds];
  [(HNDDisplayManager *)self _layoutHUDView:v11 withinBounds:?];
  [v11 showAnimated:1 completion:0];
  [(HNDDisplayManager *)self setHudView:v11];
}

- (void)_hideLargeContentViewerIfNeeded
{
  v3 = [(HNDDisplayManager *)self presentHUDViewTimer];
  [v3 cancel];

  v4 = [(HNDDisplayManager *)self hudView];

  if (v4)
  {
    v5 = [(HNDDisplayManager *)self hudView];
    [(HNDDisplayManager *)self setHudView:0];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001F0F8;
    v7[3] = &unk_1001D3488;
    v8 = v5;
    v6 = v5;
    [v6 dismissAnimated:1 completion:v7];
  }
}

- (unint64_t)indexOfEyeTrackingUIDelegate:(id)a3
{
  v4 = a3;
  if ([(NSPointerArray *)self->_eyeTrackingDelegates count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSPointerArray *)self->_eyeTrackingDelegates pointerAtIndex:v5];

      if (v6 == v4)
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

- (void)addEyeTrackingUIDelegate:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  if ([(HNDDisplayManager *)self indexOfEyeTrackingUIDelegate:v5]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSPointerArray *)self->_eyeTrackingDelegates addPointer:v5];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)removeEyeTrackingUIDelegate:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(HNDDisplayManager *)self indexOfEyeTrackingUIDelegate:v6];
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
    v3 = [(HNDDisplayManager *)self handManager];
    v4 = [v3 deviceManager];

    [v4 removeOnDeviceEyeTrackingAsInput];
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
  v3 = [(HNDDisplayManager *)self handManager];
  [v3 hideUIForEyeTracker];

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
    v3 = [(HNDDisplayManager *)self handManager];
    v4 = [v3 deviceManager];
    [v4 addOnDeviceEyeTrackingAsInput];

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

- (void)setGazePointManager:(id)a3
{
  v5 = a3;
  gazePointManager = self->_gazePointManager;
  p_gazePointManager = &self->_gazePointManager;
  if (gazePointManager != v5)
  {
    v8 = ASTLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100128470(v5, v8);
    }

    objc_storeStrong(p_gazePointManager, a3);
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

    v7 = *p_gazePointManager;
  }

  else
  {
    if (v6)
    {
      sub_100128564();
    }

    v8 = [(HNDDisplayManager *)self handManager];
    v7 = [v8 deviceManager];
  }

  return v7;
}

- (void)systemApertureLayoutDidChange:(id)a3
{
  v43 = a3;
  if ([v43 count] == 1)
  {
    v4 = [v43 objectAtIndexedSubscript:0];
    [v4 CGRectValue];
    self->_foreheadRect.origin.x = v5;
    self->_foreheadRect.origin.y = v6;
    self->_foreheadRect.size.width = v7;
    self->_foreheadRect.size.height = v8;
LABEL_5:

    goto LABEL_6;
  }

  if ([v43 count] == 2)
  {
    v4 = [v43 objectAtIndexedSubscript:0];
    [v4 CGRectValue];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [v43 objectAtIndexedSubscript:1];
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
    v25 = [(AXUIBannerPresenter *)self->_bannerViewPresenter bannerView];
    [v25 frame];
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
    v29 = [(HNDDisplayManager *)self rocker];
    [v29 frame];
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
        v35 = [(HNDDisplayManager *)self rocker];
        [v35 frame];
        v37 = v36;
        v38 = [(HNDDisplayManager *)self rocker];
        [v38 frame];
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
    v3 = [(HNDDisplayManager *)self isMenuVisible];
    v4 = 80;
    if (v3)
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
  v2 = [(HNDDisplayManager *)self activeRocker];
  [v2 frame];
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

- (void)performStyleTransitionAlongsideAnimations:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  sub_100110DBC(v7, v6);
  sub_100103294(v7);
}

@end