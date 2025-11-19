@interface ZWRootViewController
- ($2F34F6A4A708D3F7715AC605E075D30F)currentUIContextForEventProcessor:(SEL)a3;
- (AXUIService)axuiService;
- (BOOL)_inSpeakUnderFingerMode;
- (BOOL)_pipLensIsNearBottomOfScreen;
- (BOOL)_pipLensIsNearRightOfScreen;
- (BOOL)_pipLensIsNearTopOfScreen;
- (BOOL)_shouldBlockShowControlCenterGesture;
- (BOOL)_shouldBlockShowNotificationGesture;
- (BOOL)_smartZoomFocusedElementIsBeingSampled;
- (BOOL)attemptOrbZoomIfAppropriateWithSlugViewController:(id)a3;
- (BOOL)eventProcessor:(id)a3 didGetWheelEventWithDelta:(int64_t)a4;
- (BOOL)fullscreenEventHandler:(id)a3 autopanShouldStartWithPoint:(CGPoint)a4 speedFactor:(double *)a5 initialSingleFingerLocation:(CGPoint)a6 fingerCount:(double)a7 pointHasBeenMapped:(BOOL)a8;
- (BOOL)fullscreenEventHandler:(id)a3 autopanWithLocation:(CGPoint)a4 initialSingleFingerLocation:(CGPoint)a5 distance:(double)a6 animationDuration:(double)a7 useGutterDistance:(BOOL)a8 pointHasBeenMapped:(BOOL)a9;
- (BOOL)inDockedModeForMenuViewController:(id)a3;
- (BOOL)inFullscreenModeForMenuViewController:(id)a3;
- (BOOL)inPIPModeForMenuViewController:(id)a3;
- (BOOL)inStandByForMenuViewController:(id)a3;
- (BOOL)isZoomInStandByModeWithSmartZoom:(id)a3;
- (BOOL)isZoomLensVisible;
- (BOOL)isZoomSlugVisible;
- (BOOL)shouldBeginAutopanningLensWithSlugViewController:(id)a3;
- (BOOL)shouldSendTapEventWithATVEventProcessor:(id)a3;
- (BOOL)shouldShowSlugWithSlugViewController:(id)a3;
- (BOOL)togglePeekZoomWithMenuViewController:(id)a3;
- (BOOL)toggleSlugVisibilityWithMenuViewController:(id)a3;
- (BOOL)touchTrapView:(id)a3 shouldReportSelfInHitTestAtLocation:(CGPoint)a4;
- (BOOL)userIsInteractingWithSlugWithDockedLensViewController:(id)a3;
- (CGPoint)_convertPointFromNormalizedToWindow:(CGPoint)a3;
- (CGPoint)_denormalizePoint:(CGPoint)a3 withRespectToFrame:(CGRect)a4;
- (CGPoint)_denormalizePointForCurrentOrientation:(CGPoint)a3;
- (CGPoint)_normalizePoint:(CGPoint)a3 withRespectToFrame:(CGRect)a4;
- (CGPoint)_physicalScreenPointForVirtualScreenPoint:(CGPoint)a3;
- (CGPoint)_slugNormalizedPositionForCurrentPosition;
- (CGPoint)_slugOriginForNormalizedPosition:(CGPoint)a3;
- (CGPoint)_virtualScreenPointForPhysicalScreenPoint:(CGPoint)a3;
- (CGPoint)lastOrbLocation;
- (CGPoint)lastPointerLocation;
- (CGPoint)mirrorPanOffsetForRTLIfNecessary:(CGPoint)a3;
- (CGPoint)pointerLocationToZoomInToWithZoomFactor:(double)a3;
- (CGPoint)redirectPointerLocation;
- (CGPoint)zoomLocationWithFullscreenEventHandler:(id)a3;
- (CGPoint)zoomPanOffset;
- (CGRect)_determineSuitableLensFrame;
- (CGRect)zoomFrame;
- (CGRect)zoomFrameForPanningContinuouslyToPoint:(CGPoint)a3 zoomFactor:(double)a4;
- (CGSize)_lensDefaultSize;
- (CGSize)_lensMaximumSize;
- (CGSize)_lensMinimumSize;
- (CGSize)_screenSizeForCurrentOrientation;
- (CGSize)currentScreenSizeForEventProcessor:(id)a3;
- (UIScreen)screen;
- (ZWRootViewController)initWithAXUIService:(id)a3 onScreen:(id)a4 isMainDisplay:(BOOL)a5;
- (double)_interfaceAwareAdjustedAngleForScreenAngle:(double)a3;
- (double)reachabilityScaleFactor;
- (double)setZoomFactorRespectingUserPreferredMaximumZoom:(double)a3;
- (double)storedZoomLevelWithFullscreenEventHandler:(id)a3;
- (double)zoomFactor;
- (double)zoomFactorForMenuViewController:(id)a3;
- (double)zoomFactorRespectingUserPreferredMaximumZoom:(double)a3;
- (double)zoomLevelWithFullscreenEventHandler:(id)a3;
- (id)activeZoomMode;
- (id)getLastSpeakUnderFingerPhrase;
- (int64_t)currentInterfaceOrientationForEventProcessor:(id)a3;
- (int64_t)interfaceOrientationWithFullscreenEventHandler:(id)a3;
- (unsigned)currentDisplayIdForEventProcessor:(id)a3;
- (unsigned)currentWindowContextIdForEventProcessor:(id)a3;
- (void)_applyInitialConstraintsForLensViewController:(id)a3;
- (void)_beginObservingValuesForLens:(id)a3;
- (void)_disableZoomWindowHitTesting;
- (void)_dismissMenuAnimated:(BOOL)a3;
- (void)_enableZoomWindowHitTesting;
- (void)_endObservingValuesForLens:(id)a3;
- (void)_exitStandbyIfNecessary;
- (void)_focusLensOnRect:(CGRect)a3 panLensContent:(BOOL)a4 recentreLens:(BOOL)a5 animated:(BOOL)a6 completion:(id)a7;
- (void)_handleKeyboardCommand:(int64_t)a3 isRepeatCommand:(BOOL)a4;
- (void)_handlePanWheelEventWithDelta:(int64_t)a3 animated:(BOOL)a4 animationDuration:(double)a5;
- (void)_handleSlugAction:(int64_t)a3;
- (void)_handleZoomLevelAdjustmentViaGesture:(CGPoint)a3;
- (void)_handleZoomWheelEventWithDelta:(int64_t)a3;
- (void)_initializeEventUIContext:(id *)a3;
- (void)_initializeZoomSettingsIfNeeded;
- (void)_loadZoomTouchExtras;
- (void)_menuDidDisappear;
- (void)_moveZoomItemWithController:(id)a3 byDelta:(CGPoint)a4 animated:(BOOL)a5 userInitiated:(BOOL)a6 shouldUseFullDeltaForDockedMode:(BOOL)a7 shouldPan:(BOOL)a8;
- (void)_moveZoomItemWithControllerToDodgeJindo:(id)a3 byDelta:(CGPoint)a4;
- (void)_prepareToHandleZoomLevelAdjustmentViaGesture;
- (void)_presentMenuWithAnchorView:(id)a3 animated:(BOOL)a4 ignoreCooldown:(BOOL)a5;
- (void)_removeAllSystemGestureDisablingAssertions;
- (void)_removeFullscreenSystemGestureDisablingAssertions;
- (void)_removePIPSystemGestureDisablingAssertions;
- (void)_resizeZoomLensByDelta:(CGPoint)a3;
- (void)_resizeZoomLensWithAdjustment:(CGPoint)a3 lensPositionCompensation:(CGPoint)a4;
- (void)_rezoomDueToAppTransitionIfNeeded;
- (void)_rezoomDueToDockIfNeeded;
- (void)_setDockResizingEnabled:(BOOL)a3;
- (void)_setPIPLensResizingEnabled:(BOOL)a3;
- (void)_toggleZoomStandby;
- (void)_transitionToLens:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_transitionToLensForMode:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_unzoomDueToAppTransitionIfNeeded;
- (void)_updateEventUIContextForSpeakFingerStateChange;
- (void)_updateKeyboardFrame:(CGRect)a3;
- (void)_updateLensEdgeMaskForZoomController:(id)a3;
- (void)_updateLensLayout;
- (void)_updateOrbLocation:(CGPoint)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_updateSlugConstraintsForOrientation:(int64_t)a3;
- (void)_updateSlugLayoutAnimated:(BOOL)a3;
- (void)_updateSystemGestureDisablingAssertions;
- (void)_updateSystemGestureDisablingAssertionsForFullscreenZoom;
- (void)_updateSystemGestureDisablingAssertionsForPipLensPosition;
- (void)_updateZoomFactor:(double)a3 animated:(BOOL)a4;
- (void)_updateZoomListeners;
- (void)_zoomMovementHeartbeat;
- (void)_zoomMovementHeartbeat:(double)a3 fullscreenEventHandler:(id)a4;
- (void)atvEventProcessor:(id)a3 adjustZoomLevelWithDelta:(CGPoint)a4;
- (void)autopanner:(id)a3 didAutopanByDelta:(CGPoint)a4;
- (void)blockControlCenterGestureIfNeededWithFullscreenEventHandler:(id)a3;
- (void)blockHomeGestureIfNeededWithEventProcessor:(id)a3;
- (void)blockNotificationCenterGestureIfNeededWithFullscreenEventHandler:(id)a3;
- (void)dealloc;
- (void)didAnimateForReachabilityToOffset:(double)a3;
- (void)didEndAnimation;
- (void)didFinishAutopanningLensWithAutopanner:(id)a3;
- (void)didGetSpeakContentGestureWithATVEventProcessor:(id)a3;
- (void)didGetTogglePanningModeGestureWithATVEventProcessor:(id)a3;
- (void)didGetToggleZoomGestureWithEventProcessor:(id)a3;
- (void)didGetTouchOutsideLensChromeWithEventProcessor:(id)a3;
- (void)didGetTouchOutsideZoomMenuWithEventProcessor:(id)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)didStartAnimation;
- (void)dockedLensViewController:(id)a3 zoomRegionVisibilityWasChanged:(BOOL)a4;
- (void)endOrbZoomWithSlugViewController:(id)a3;
- (void)endZoomMovementWithFullscreenEventHandler:(id)a3;
- (void)eventProcessor:(id)a3 didGetFirstTouchAtLocation:(CGPoint)a4;
- (void)eventProcessor:(id)a3 didGetPanEventWithDelta:(int64_t)a4;
- (void)eventProcessor:(id)a3 didGetPointerEventAtLocation:(CGPoint)a4 withEventRep:(id)a5;
- (void)eventProcessor:(id)a3 didGetTouchInSpeakFingerMode:(CGPoint)a4 firstTouchWentIntoLens:(BOOL)a5;
- (void)externalClientSetZoomFactor:(double)a3;
- (void)externalClientSetZoomPanOffset:(CGPoint)a3;
- (void)externalClientWantsToAutopan:(CGPoint)a3 withPanningStyle:(unint64_t)a4;
- (void)fullscreenEventHandler:(id)a3 continueZoomMovementWithVelocity:(double)a4 angle:(double)a5;
- (void)fullscreenEventHandler:(id)a3 didEndOrbAtLocation:(CGPoint)a4;
- (void)fullscreenEventHandler:(id)a3 didReceiveOneFingerDownAtLocation:(CGPoint)a4;
- (void)fullscreenEventHandler:(id)a3 didReceiveThreeFingerDoubleTapAtLocation:(CGPoint)a4;
- (void)fullscreenEventHandler:(id)a3 didReceiveThreeFingerSingleTapAtLocation:(CGPoint)a4;
- (void)fullscreenEventHandler:(id)a3 didReceiveThreeFingerTripleTapAtLocation:(CGPoint)a4;
- (void)fullscreenEventHandler:(id)a3 didStartOrbAtLocation:(CGPoint)a4;
- (void)fullscreenEventHandler:(id)a3 didThreeFingerOrbAtLocation:(CGPoint)a4;
- (void)fullscreenEventHandler:(id)a3 setZoomLevel:(double)a4 duration:(double)a5;
- (void)fullscreenEventHandler:(id)a3 setZoomLevelFromTrackpadGesture:(double)a4;
- (void)fullscreenEventHandler:(id)a3 storeZoomLevel:(double)a4 location:(CGPoint)a5 zoomed:(BOOL)a6 forKey:(id)a7;
- (void)fullscreenEventHandler:(id)a3 updateOrbMovementAtLocation:(CGPoint)a4;
- (void)fullscreenEventHandler:(id)a3 updateZoomMovementWithPoint:(CGPoint)a4;
- (void)handleAppActivationAnimationDidFinish;
- (void)handleAppActivationAnimationWillBegin;
- (void)handleAppDeactivationAnimationWillBegin;
- (void)handleAppDidBecomeActiveWithID:(id)a3 initialKeyboardFrame:(CGRect)a4;
- (void)handleAppDidEnterBackgroundWithID:(id)a3;
- (void)handleAppSwitcherRevealAnimationWillBegin;
- (void)handleCarouselLockBegan;
- (void)handleDeviceReturnedToClockAtIdle;
- (void)handleDeviceWillWake;
- (void)handleDragWillEnd;
- (void)handleDragWillStart;
- (void)handleFluidSwitcherGestureDidFinish;
- (void)handleFluidSwitcherGestureDidFinishWithDock;
- (void)handleFluidSwitcherGestureWillBegin;
- (void)handleFocusChangedWithType:(int64_t)a3 rect:(CGRect)a4 keyboardFrame:(CGRect)a5 contextId:(unsigned int)a6 appID:(id)a7;
- (void)handleKeyboardWillAppearWithFrame:(CGRect)a3 inAppWithBundleID:(id)a4;
- (void)handleKeyboardWillHideInAppWithBundleID:(id)a3;
- (void)handleLockButtonWasPressed;
- (void)handleReachabilityToggled:(double)a3;
- (void)handleSettingsAppDidUpdateIdleSlugOpacity:(double)a3;
- (void)handleSettingsAppDidUpdatePreferredDockPosition:(id)a3;
- (void)handleSubstantialAppTransition;
- (void)hideZoomSlugAndLens:(BOOL)a3 completion:(id)a4;
- (void)lastFingerWasLiftedWithEventProcessor:(id)a3 firstTouchWentIntoSlug:(BOOL)a4;
- (void)loadView;
- (void)menuDidAppear:(id)a3;
- (void)menuViewController:(id)a3 adjustZoomFactor:(double)a4 animated:(BOOL)a5;
- (void)menuViewController:(id)a3 didChooseDockPosition:(id)a4 withCompletion:(id)a5;
- (void)menuViewController:(id)a3 didChooseLensEffect:(id)a4;
- (void)menuViewController:(id)a3 didChooseZoomMode:(id)a4 withCompletion:(id)a5;
- (void)menuViewController:(id)a3 finishedAdjustingZoomFactor:(double)a4;
- (void)moveCursorToCurrentFakeCursorLocation;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)sendUserEventOccurred;
- (void)setActiveLensViewController:(id)a3;
- (void)setGutterDistanceForUnitTests:(double)a3 scaleFactor:(double)a4;
- (void)setTestingScreenSize:(CGSize)a3;
- (void)setZoomFactor:(double)a3;
- (void)setZoomPanOffset:(CGPoint)a3;
- (void)showZoomSlugAndLens:(BOOL)a3 completion:(id)a4;
- (void)slugWasDoubleTappedWithSlugViewController:(id)a3;
- (void)slugWasSingleTappedWithSlugViewController:(id)a3;
- (void)slugWasTripleTappedWithSlugViewController:(id)a3;
- (void)stopZoomMovementWithVelocityWithFullscreenEventHandler:(id)a3;
- (void)toggleLensResizeModeWithMenuViewController:(id)a3;
- (void)toggleLensVisibilityWithMenuViewController:(id)a3;
- (void)toggleZoomMenu;
- (void)touchTrapView:(id)a3 didTrapTouches:(id)a4 withEvent:(id)a5;
- (void)touchTrapViewActivated:(id)a3;
- (void)updateDockedZoomRegionVisibility:(BOOL)a3;
- (void)updateFocusWithSmartZoom:(id)a3;
- (void)updateOrbZoomAtPoint:(CGPoint)a3 withSlugViewController:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)wantsToStartAutopannerWithATVEventProcessor:(id)a3;
- (void)wantsToStartAutopannerWithSlugViewController:(id)a3;
- (void)wantsToStopAutopannerWithATVEventProcessor:(id)a3;
- (void)wantsToStopAutopannerWithSlugViewController:(id)a3;
- (void)willBeginAutopanningLensWithAutopanner:(id)a3;
- (void)zoomInToPoint:(CGPoint)a3 withZoomFactor:(double)a4 animated:(BOOL)a5;
- (void)zoomLensViewController:(id)a3 didMoveLens:(id)a4 withDelta:(CGPoint)a5;
- (void)zoomLensViewControllerDidChangeStandbyMode:(id)a3;
- (void)zoomLensViewControllerUpdateUIForStandby:(id)a3 completion:(id)a4;
- (void)zoomListenerRegisteredForAllAttributeUpdatesCoalesced:(BOOL)a3 clientIdentifier:(id)a4;
- (void)zoomListenerRegisteredForAttributeUpdatesImmediately:(id)a3 registered:(BOOL)a4 clientIdentifier:(id)a5;
@end

@implementation ZWRootViewController

- (UIScreen)screen
{
  WeakRetained = objc_loadWeakRetained(&self->_screen);

  return WeakRetained;
}

- (ZWRootViewController)initWithAXUIService:(id)a3 onScreen:(id)a4 isMainDisplay:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v107.receiver = self;
  v107.super_class = ZWRootViewController;
  v10 = [(ZWRootViewController *)&v107 initWithNibName:0 bundle:0];
  if (v10)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSZoomTouchReadyForObserversNotification, 0, 0, 1u);
    objc_storeWeak(&v10->_axuiService, v8);
    [(ZWRootViewController *)v10 _loadZoomTouchExtras];
    [(ZWRootViewController *)v10 _initializeZoomSettingsIfNeeded];
    v12 = objc_alloc_init(ZWAlertManager);
    [(ZWRootViewController *)v10 setZoomAlertManager:v12];

    [(ZWRootViewController *)v10 setIsMainDisplay:v5];
    [(ZWRootViewController *)v10 setScreen:v9];
    v13 = +[ZWEventProcessor defaultEventProcessor];
    [(ZWRootViewController *)v10 setEventManager:v13];
    if (v5)
    {
      [v13 setMainDisplayDelegate:v10];
    }

    else
    {
      v14 = [v13 externalDisplayDelegates];
      [v14 addPointer:v10];
    }

    v10->_cachedIsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
    objc_initWeak(&location, v10);
    v15 = +[NSNotificationCenter defaultCenter];
    v16 = +[NSOperationQueue mainQueue];
    v104[0] = _NSConcreteStackBlock;
    v104[1] = 3221225472;
    v104[2] = __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke;
    v104[3] = &unk_79298;
    objc_copyWeak(&v105, &location);
    v17 = [v15 addObserverForName:UIAccessibilityVoiceOverStatusDidChangeNotification object:0 queue:v16 usingBlock:v104];
    voiceOverStatusChangedNotificationObserverToken = v10->_voiceOverStatusChangedNotificationObserverToken;
    v10->_voiceOverStatusChangedNotificationObserverToken = v17;

    v79 = dispatch_queue_create("ZWCachedValuesSerialQueue", 0);
    [(ZWRootViewController *)v10 setCachedValuesSerialQueue:?];
    [(ZWRootViewController *)v10 _initializeEventUIContext:&v10->_eventUIContext];
    [(ZWRootViewController *)v10 _initializeEventUIContext:&v10->_eventUIForInProgressFluidSwitcherGestureContext];
    v19 = [AXDispatchTimer alloc];
    v20 = &_dispatch_main_q;
    v21 = [v19 initWithTargetSerialQueue:&_dispatch_main_q];

    [(ZWRootViewController *)v10 setIdleTouchTimer:v21];
    [v21 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    v78 = v21;
    v22 = [[ZWZoomSlugViewController alloc] initWithNibName:0 bundle:0];
    [(ZWRootViewController *)v10 setSlugViewController:v22];
    [(ZWZoomSlugViewController *)v22 setDelegate:v10];
    v77 = v22;
    v23 = +[ZWCoalescedSettings sharedInstance];
    [v23 zoomFactor];
    v25 = v24;

    v26 = +[ZWCoalescedSettings sharedInstance];
    [v26 zoomPanOffset];
    v28 = v27;
    v30 = v29;
    v76 = v8;

    v31 = +[AXSettings sharedInstance];
    v81 = [v31 zoomCurrentLensEffect];

    v32 = +[AXSettings sharedInstance];
    v33 = objc_alloc_init(ZWKeyboardContext);
    [(ZWRootViewController *)v10 setKbContext:v33];

    [(ZWKeyboardContext *)v10->_kbContext setKeyboardFrame:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
    -[ZWKeyboardContext setZoomFollowsFocus:](v10->_kbContext, "setZoomFollowsFocus:", [v32 zoomShouldFollowFocus]);
    -[ZWKeyboardContext setZoomRepositionsForKeyboard:](v10->_kbContext, "setZoomRepositionsForKeyboard:", [v32 zoomAlwaysUseWindowedZoomForTyping]);
    v34 = objc_alloc_init(ZWLensAutopanner);
    [(ZWRootViewController *)v10 setLensAutopanner:v34];
    [(ZWLensAutopanner *)v34 setDelegate:v10];
    v75 = v34;
    v35 = [(ZWZoomLensViewController *)[ZWZoomPIPLensViewController alloc] initWithZoomFactor:v81 zoomPanOffset:v9 lensEffect:v25 screen:v28, v30];
    [(ZWRootViewController *)v10 setPipLensViewController:v35];
    [(ZWZoomLensViewController *)v35 setDelegate:v10];
    [(ZWZoomPIPLensViewController *)v35 setPipDelegate:v10];
    v36 = [(ZWZoomLensViewController *)[ZWZoomDockedLensViewController alloc] initWithZoomFactor:v81 zoomPanOffset:v9 lensEffect:v25 screen:v28, v30];
    [(ZWRootViewController *)v10 setDockedLensViewController:v36];
    [(ZWZoomLensViewController *)v36 setDelegate:v10];
    [(ZWZoomDockedLensViewController *)v36 setDockedDelegate:v10];
    v37 = [(ZWZoomLensViewController *)[ZWZoomFullscreenLensViewController alloc] initWithZoomFactor:v81 zoomPanOffset:v9 lensEffect:v25 screen:v28, v30];
    [(ZWRootViewController *)v10 setFullscreenLensViewController:v37];
    [(ZWZoomLensViewController *)v37 setDelegate:v10];
    v74 = v37;
    v80 = [[ZWMenuViewController alloc] initWithNibName:0 bundle:0];
    [(ZWRootViewController *)v10 setMenuViewController:v80];
    v38 = [(ZWRootViewController *)v10 menuViewController];
    [v38 setModalPresentationStyle:7];

    v39 = [(ZWRootViewController *)v10 menuViewController];
    v40 = [v39 popoverPresentationController];
    [v40 setDelegate:v10];

    [(ZWMenuViewController *)v80 setDelegate:v10];
    [(ZWRootViewController *)v10 eventManager];
    if (v5)
      v41 = {;
      v42 = [v41 fullscreenEventHandler];
      [v42 setZoomDelegate:v10];
    }

    else
      v41 = {;
      v42 = [v41 fullscreenEventHandler];
      v43 = [v42 externalDisplayZoomDelegates];
      [v43 addPointer:v10];
    }

    v44 = +[AXSettings sharedInstance];
    v102[0] = _NSConcreteStackBlock;
    v102[1] = 3221225472;
    v102[2] = __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke_2;
    v102[3] = &unk_78CD8;
    objc_copyWeak(&v103, &location);
    [v44 registerUpdateBlock:v102 forRetrieveSelector:"zoomPreferredLensModes" withListener:v10];

    objc_destroyWeak(&v103);
    v45 = +[AXSettings sharedInstance];
    v100[0] = _NSConcreteStackBlock;
    v100[1] = 3221225472;
    v100[2] = __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke_3;
    v100[3] = &unk_78CD8;
    objc_copyWeak(&v101, &location);
    [v45 registerUpdateBlock:v100 forRetrieveSelector:"zoomShouldShowSlug" withListener:v10];

    objc_destroyWeak(&v101);
    v46 = +[AXSettings sharedInstance];
    v98[0] = _NSConcreteStackBlock;
    v98[1] = 3221225472;
    v98[2] = __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke_4;
    v98[3] = &unk_78CD8;
    objc_copyWeak(&v99, &location);
    [v46 registerUpdateBlock:v98 forRetrieveSelector:"zoomCurrentLensEffect" withListener:v10];

    objc_destroyWeak(&v99);
    v47 = +[AXSettings sharedInstance];
    v95[0] = _NSConcreteStackBlock;
    v95[1] = 3221225472;
    v95[2] = __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke_5;
    v95[3] = &unk_78E00;
    objc_copyWeak(&v97, &location);
    v48 = v32;
    v96 = v48;
    [v47 registerUpdateBlock:v95 forRetrieveSelector:"zoomShouldFollowFocus" withListener:v10];

    objc_destroyWeak(&v97);
    v49 = +[AXSettings sharedInstance];
    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke_6;
    v92[3] = &unk_78E00;
    objc_copyWeak(&v94, &location);
    v50 = v48;
    v93 = v50;
    [v49 registerUpdateBlock:v92 forRetrieveSelector:"zoomAlwaysUseWindowedZoomForTyping" withListener:v10];

    objc_destroyWeak(&v94);
    v51 = +[AXSettings sharedInstance];
    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke_7;
    v90[3] = &unk_78CD8;
    objc_copyWeak(&v91, &location);
    [v51 registerUpdateBlock:v90 forRetrieveSelector:"zoomPreferredMaximumZoomScale" withListener:v10];

    objc_destroyWeak(&v91);
    v52 = +[AXSettings sharedInstance];
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke_8;
    v88[3] = &unk_78CD8;
    objc_copyWeak(&v89, &location);
    [v52 registerUpdateBlock:v88 forRetrieveSelector:"zoomPreferredCurrentLensMode" withListener:v10];

    objc_destroyWeak(&v89);
    v53 = +[AXSettings sharedInstance];
    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3221225472;
    v86[2] = __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke_9;
    v86[3] = &unk_78CD8;
    objc_copyWeak(&v87, &location);
    [v53 registerUpdateBlock:v86 forRetrieveSelector:"zoomPreferredCurrentDockPosition" withListener:v10];

    objc_destroyWeak(&v87);
    v54 = +[AXSettings sharedInstance];
    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke_10;
    v84[3] = &unk_78CD8;
    objc_copyWeak(&v85, &location);
    [v54 registerUpdateBlock:v84 forRetrieveSelector:"zoomShowWhileMirroring" withListener:v10];

    objc_destroyWeak(&v85);
    if (ZOTTimeSinceBoot() <= 99)
    {
      v55 = +[ZWCoalescedSettings sharedInstance];
      [v55 setZoomInStandby:1];
    }

    v10->_snarfingWheelEventsForPan = 0;
    v56 = objc_alloc_init(ZWSmartZoomManager);
    [(ZWRootViewController *)v10 setSmartZoom:v56];
    [(ZWSmartZoomManager *)v56 setDelegate:v10];
    [(ZWRootViewController *)v10 _enableSmartZoomIfNeeded];
    [(ZWRootViewController *)v10 _updateMinimapStatus];
    v57 = AXAssertionTypeDisableNotificationCenterGesture;
    v58 = [AXAssertion assertionWithType:AXAssertionTypeDisableNotificationCenterGesture identifier:@"Zoom: Lens on screeen edge"];
    v59 = AXAssertionTypeDisableControlCenterGesture;
    v60 = [AXAssertion assertionWithType:AXAssertionTypeDisableControlCenterGesture identifier:@"Zoom: Lens on screeen edge"];
    v61 = [AXAssertion assertionWithType:v57 identifier:@"Zoom: Fullscreen lens not on edge"];
    v62 = [AXAssertion assertionWithType:v59 identifier:@"Zoom: Fullscreen lens not on edge"];
    [(ZWRootViewController *)v10 _removeAllSystemGestureDisablingAssertions];
    v63 = _AXSVoiceOverTouchEnabled();
    if (v63)
    {
      v57 = +[AXVoiceOverServer server];
      v64 = [v57 isBrailleInputUIShowing];
    }

    else
    {
      v64 = 0;
    }

    [(ZWRootViewController *)v10 setBrailleInputUIIsShowing:v64];
    if (v63)
    {
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v10->_lastEdgePanHapticTime = v65;
    v66 = +[NSMutableSet set];
    [(ZWRootViewController *)v10 setDeactivatedAppIDs:v66];

    v67 = [[UIImpactFeedbackGenerator alloc] initWithStyle:0];
    [(ZWRootViewController *)v10 setFeedbackGenerator:v67];

    v68 = +[AXSpeakFingerManager sharedInstance];
    v82[0] = _NSConcreteStackBlock;
    v82[1] = 3221225472;
    v82[2] = __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke_11;
    v82[3] = &unk_78CD8;
    objc_copyWeak(&v83, &location);
    [v68 registerBlockForStateChange:v82];

    if (_AXSZoomSpeakUnderFingerEnabled() && !_AXSApplicationAccessibilityEnabled())
    {
      _AXSApplicationAccessibilitySetEnabled();
    }

    v69 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [(ZWRootViewController *)v10 setKeyRepeatTimer:v69];

    v70 = [(ZWRootViewController *)v10 keyRepeatTimer];
    [v70 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];

    [(ZWRootViewController *)v10 setLastKeyboardCommand:16];
    v71 = [[ZWFakeLaserViewController alloc] initWithZoomRootVC:v10];
    [(ZWRootViewController *)v10 setFakeLaserVC:v71];

    v72 = objc_opt_new();
    [(ZWRootViewController *)v10 setPointerClientController:v72];

    [(ZWRootViewController *)v10 setZoomIsAnimating:0];
    objc_destroyWeak(&v83);

    objc_destroyWeak(&v105);
    objc_destroyWeak(&location);

    v8 = v76;
  }

  return v10;
}

void __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  WeakRetained[64] = UIAccessibilityIsVoiceOverRunning();
  [WeakRetained _updateStealingSingleFingerPanning:0 showHUDMessage:0];
}

void __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained pipLensViewController];
  [v1 preferredLensModesDidChange];

  v2 = [WeakRetained fullscreenLensViewController];
  [v2 preferredLensModesDidChange];

  v3 = [WeakRetained dockedLensViewController];
  [v3 preferredLensModesDidChange];

  v4 = [WeakRetained slugViewController];
  [v4 preferredLensModesDidChange];

  v5 = [WeakRetained menuViewController];
  [v5 preferredLensModesDidChange];
}

void __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSlugLayoutAnimated:0];
}

void __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained menuViewController];
  [v1 zoomCurrentLensEffectDidChange];
}

void __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[116] setZoomFollowsFocus:{objc_msgSend(*(a1 + 32), "zoomShouldFollowFocus")}];
}

void __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[116] setZoomRepositionsForKeyboard:{objc_msgSend(*(a1 + 32), "zoomAlwaysUseWindowedZoomForTyping")}];
}

void __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke_7(uint64_t a1)
{
  v17 = objc_loadWeakRetained((a1 + 32));
  [v17 zoomFactor];
  [v17 setZoomFactorRespectingUserPreferredMaximumZoom:?];

  v2 = [v17 activeLensViewController];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained activeLensViewController];
  v5 = [v4 inStandbyMode];
  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 zoomFactor];
  v8 = v7;
  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 zoomPanOffset];
  v11 = v10;
  v13 = v12;
  v14 = objc_loadWeakRetained((a1 + 32));
  v15 = [v14 activeLensViewController];
  v16 = [v15 lensEffect];
  [v2 updateStandbyMode:v5 zoomFactor:v16 panOffset:1 lensEffect:0 animated:v8 completion:{v11, v13}];
}

void __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 zoomPreferredCurrentLensMode];

  if ([v2 length])
  {
    v3 = [WeakRetained activeZoomMode];
    v4 = [v3 isEqualToString:v2];

    if ((v4 & 1) == 0)
    {
      [WeakRetained _transitionToLensForMode:v2 animated:1 completion:0];
    }
  }
}

void __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 zoomPreferredCurrentDockPosition];
  [WeakRetained handleSettingsAppDidUpdatePreferredDockPosition:v2];
}

void __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[AXSettings sharedInstance];
  if ([v1 zoomShowWhileMirroring])
  {
    v2 = 0;
  }

  else
  {
    v2 = 16;
  }

  v3 = [WeakRetained view];
  v4 = [v3 layer];
  [v4 setDisableUpdateMask:v2];
}

void __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke_11(uint64_t a1)
{
  if (_AXSZoomTouchEnabled())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke_12;
    block[3] = &unk_78CD8;
    objc_copyWeak(&v3, (a1 + 32));
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v3);
  }
}

void __67__ZWRootViewController_initWithAXUIService_onScreen_isMainDisplay___block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained slugViewController];
  [v3 updateUIForSpeakFingerStateChange];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _updateEventUIContextForSpeakFingerStateChange];
}

- (void)dealloc
{
  v3 = [(ZWRootViewController *)self eventManager];
  [v3 cleanup];

  [(ZWRootViewController *)self _removeAllSystemGestureDisablingAssertions];
  v4 = [(ZWRootViewController *)self smartZoom];
  [v4 disableSmartZoom];

  v5 = [(ZWRootViewController *)self smartZoom];
  [v5 setDelegate:0];

  if (self->_voiceOverStatusChangedNotificationObserverToken)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self->_voiceOverStatusChangedNotificationObserverToken name:UIAccessibilityVoiceOverStatusDidChangeNotification object:0];

    voiceOverStatusChangedNotificationObserverToken = self->_voiceOverStatusChangedNotificationObserverToken;
    self->_voiceOverStatusChangedNotificationObserverToken = 0;
  }

  if ([(ZWRootViewController *)self isViewLoaded])
  {
    v8 = [(ZWRootViewController *)self slugViewController];
    [v8 removeObserver:self forKeyPath:@"slugRingView.bounds" context:&ZWZoomItemObserverContextID];

    v9 = [(ZWRootViewController *)self slugViewController];
    [v9 removeObserver:self forKeyPath:@"view.center" context:&ZWZoomItemObserverContextID];

    v10 = [(ZWRootViewController *)self slugViewController];
    [v10 removeObserver:self forKeyPath:@"userIsInteractingWithSlug" context:&ZWZoomItemObserverContextID];

    v11 = [(ZWRootViewController *)self menuViewController];
    [v11 removeObserver:self forKeyPath:@"userIsInteractingWithMenu" context:&ZWZoomItemObserverContextID];
  }

  v12 = [(ZWRootViewController *)self lensAutopanner];
  [v12 setDelegate:0];

  LOBYTE(v12) = [(ZWRootViewController *)self isMainDisplay];
  v13 = [(ZWRootViewController *)self eventManager];
  v14 = v13;
  if (v12)
  {
    [v13 setMainDisplayDelegate:0];
LABEL_13:

    goto LABEL_14;
  }

  v15 = [v13 externalDisplayDelegates];
  v16 = [v15 count];

  if (v16)
  {
    v17 = 0;
    while (1)
    {
      v18 = [(ZWRootViewController *)self eventManager];
      v19 = [v18 externalDisplayDelegates];
      v20 = [v19 pointerAtIndex:v17];

      if (v20 == self)
      {
        break;
      }

      ++v17;
      v21 = [(ZWRootViewController *)self eventManager];
      v22 = [v21 externalDisplayDelegates];
      v23 = [v22 count];

      if (v23 <= v17)
      {
        goto LABEL_14;
      }
    }

    v14 = [(ZWRootViewController *)self eventManager];
    v24 = [v14 externalDisplayDelegates];
    [v24 removePointerAtIndex:v17];

    goto LABEL_13;
  }

LABEL_14:
  v25 = [(ZWRootViewController *)self pipLensViewController];
  [v25 setDelegate:0];

  v26 = [(ZWRootViewController *)self dockedLensViewController];
  [v26 setDelegate:0];

  v27 = [(ZWRootViewController *)self fullscreenLensViewController];
  [v27 setDelegate:0];

  v28 = [(ZWRootViewController *)self slugViewController];
  [v28 setDelegate:0];

  v29 = [(ZWRootViewController *)self keyRepeatTimer];
  [v29 cancel];

  v30 = [(ZWRootViewController *)self hitTestCategoryAssertion];
  [v30 invalidate];

  v31.receiver = self;
  v31.super_class = ZWRootViewController;
  [(ZWRootViewController *)&v31 dealloc];
}

- (void)_removePIPSystemGestureDisablingAssertions
{
  [(ZWRootViewController *)self setDisableNotificationCenterAssertionPIPLens:0];

  [(ZWRootViewController *)self setDisableControlCenterAssertionPIPLens:0];
}

- (void)_removeFullscreenSystemGestureDisablingAssertions
{
  [(ZWRootViewController *)self setDisableNotificationCenterAssertionFullscreenLens:0];

  [(ZWRootViewController *)self setDisableControlCenterAssertionFullscreenLens:0];
}

- (void)_removeAllSystemGestureDisablingAssertions
{
  [(ZWRootViewController *)self _removePIPSystemGestureDisablingAssertions];
  [(ZWRootViewController *)self _removeFullscreenSystemGestureDisablingAssertions];

  [(ZWRootViewController *)self _removeHomeGestureDisablingAssertion];
}

- (void)_updateSystemGestureDisablingAssertions
{
  v3 = [(ZWRootViewController *)self activeLensViewController];
  v4 = [(ZWRootViewController *)self fullscreenLensViewController];

  if (v3 != v4 && ([(ZWRootViewController *)self activeLensViewController], v5 = objc_claimAutoreleasedReturnValue(), [(ZWRootViewController *)self pipLensViewController], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v5 == v6))
  {

    [(ZWRootViewController *)self _updateSystemGestureDisablingAssertionsForPipLensPosition];
  }

  else
  {

    [(ZWRootViewController *)self _updateSystemGestureDisablingAssertionsForFullscreenZoom];
  }
}

- (void)_updateSystemGestureDisablingAssertionsForPipLensPosition
{
  if ([(ZWRootViewController *)self _pipLensIsNearTopOfScreen])
  {
    v3 = [(ZWRootViewController *)self disableNotificationCenterAssertionPIPLens];

    if (!v3)
    {
      v4 = [AXAssertion assertionWithType:AXAssertionTypeDisableNotificationCenterGesture identifier:@"Zoom: Lens on screeen edge"];
      [(ZWRootViewController *)self setDisableNotificationCenterAssertionPIPLens:v4];
    }
  }

  else
  {
    [(ZWRootViewController *)self setDisableNotificationCenterAssertionPIPLens:0];
  }

  if (AXDeviceHasHomeButton() && !AXDeviceIsPad())
  {
    if (![(ZWRootViewController *)self _pipLensIsNearBottomOfScreen])
    {
      goto LABEL_14;
    }
  }

  else if (![(ZWRootViewController *)self _pipLensIsNearTopOfScreen]|| ![(ZWRootViewController *)self _pipLensIsNearRightOfScreen])
  {
LABEL_14:

    [(ZWRootViewController *)self setDisableControlCenterAssertionPIPLens:0];
    return;
  }

  if (![(ZWRootViewController *)self _shouldBlockShowControlCenterGesture])
  {
    goto LABEL_14;
  }

  v5 = [(ZWRootViewController *)self disableControlCenterAssertionPIPLens];

  if (!v5)
  {
    v6 = [AXAssertion assertionWithType:AXAssertionTypeDisableControlCenterGesture identifier:@"Zoom: Lens on screeen edge"];
    [(ZWRootViewController *)self setDisableControlCenterAssertionPIPLens:v6];
  }
}

- (void)_loadZoomTouchExtras
{
  v2 = [NSBundle bundleWithPath:@"/System/Library/AccessibilityBundles/ZoomTouchExtras.axbundle"];
  if (v2)
  {
    v3 = v2;
    [v2 load];
    [objc_msgSend(v3 "principalClass")];
    v2 = v3;
  }
}

- (void)_initializeZoomSettingsIfNeeded
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[ZWCoalescedSettings sharedInstance];
  if (([v3 zoomPreferencesWereInitialized] & 1) == 0)
  {
    v17 = 0;
    v16 = 0;
    v5 = +[AXSettings sharedInstance];
    [v5 zoomUserHadLegacyZoomEnabled:&v17 + 1 wasZoomedIn:&v17 withScale:&v16];

    y = CGPointZero.y;
    [v4 setZoomPanOffset:{CGPointZero.x, y}];
    [(ZWRootViewController *)self _lensDefaultSize];
    [v4 setZoomWindowFrame:{CGPointZero.x, y, v7, v8}];
    [v4 setDockSize:0.5];
    [v3 setZoomCurrentLensEffect:AXZoomLensEffectNone];
    [v4 setZoomSlugNormalizedPosition:{1.0, 0.5}];
    [v3 setZoomShouldShowSlug:0];
    [v3 zoomPreferredMaximumZoomScale];
    if (v9 == 0.0)
    {
      [v3 setZoomPreferredMaximumZoomScale:8.0];
    }

    v10 = AXZoomUserSelectableLensModes();
    [v3 setZoomPreferredLensModes:v10];

    [v3 setZoomShouldAllowFullscreenAutopanning:1];
    if (HIBYTE(v17) == 1)
    {
      LOBYTE(v15) = 1;
      _AXLogWithFacility();
      v11 = &v16;
      if (!v17)
      {
        v11 = &AXZoomMinimumZoomLevel;
      }

      [v4 setZoomFactor:{*v11, v15, @"Determined that legacy zoom had been set up. Setting zoom window up to look like legacy zoom"}];
      [v3 setZoomCurrentLensMode:AXZoomLensModeFullscreen];
      [v3 setZoomShouldFollowFocus:0];
      [v3 setZoomPreferredCurrentLensMode:AXZoomLensModeFullscreen];
    }

    else
    {
      v12 = AXZoomLensDefault();
      [v4 setZoomFactor:2.0];
      [v3 setZoomPreferredCurrentLensMode:v12];
      [v3 setZoomCurrentLensMode:v12];
      [v3 setZoomShouldFollowFocus:1];
    }

    [v3 setZoomPreferencesWereInitialized:1];
  }

  if ([v4 zoomInStandby])
  {
    v13 = [v3 zoomPreferredCurrentLensMode];
    v14 = [v13 isEqualToString:AXZoomLensModeWindow];

    if (v14)
    {
      [v3 setZoomCurrentLensEffect:AXZoomLensEffectNone];
    }
  }

  if (([v3 zoomShouldFollowFocus] & 1) == 0 && objc_msgSend(v3, "zoomAlwaysUseWindowedZoomForTyping"))
  {
    [v3 setZoomAlwaysUseWindowedZoomForTyping:0];
  }
}

- (void)loadView
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v45 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v7 = +[AXSettings sharedInstance];
  if ([v7 zoomShowWhileMirroring])
  {
    v8 = 0;
  }

  else
  {
    v8 = 16;
  }

  v9 = [v45 layer];
  [v9 setDisableUpdateMask:v8];

  [(ZWRootViewController *)self setView:v45];
  v10 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(ZWRootViewController *)self setContainerView:v10];

  v11 = [(ZWRootViewController *)self containerView];
  [v11 setAutoresizingMask:18];

  v12 = [(ZWRootViewController *)self containerView];
  [v45 addSubview:v12];

  v13 = [[ZWTouchTrapView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(ZWRootViewController *)self setTouchTrapView:v13];

  v14 = [(ZWRootViewController *)self touchTrapView];
  [v14 setAutoresizingMask:18];

  v15 = [(ZWRootViewController *)self touchTrapView];
  [v45 addSubview:v15];

  v16 = [(ZWRootViewController *)self touchTrapView];
  [v16 setDelegate:self];

  v17 = [(ZWRootViewController *)self fakeLaserVC];
  [(ZWRootViewController *)self addChildViewController:v17];

  v18 = [(ZWRootViewController *)self containerView];
  v19 = [(ZWRootViewController *)self fakeLaserVC];
  v20 = [v19 view];
  [v18 addSubview:v20];

  v21 = [(ZWRootViewController *)self containerView];
  v22 = [(ZWRootViewController *)self fakeLaserVC];
  v23 = [v22 view];
  [v21 bringSubviewToFront:v23];

  v24 = objc_alloc_init(UIScrollView);
  v25 = [[UIView alloc] initWithFrame:{0.0, 0.0, 10000.0, 10000.0}];
  [(ZWRootViewController *)self setScrollTrapView:v25];

  v26 = +[UIColor clearColor];
  v27 = [(ZWRootViewController *)self scrollTrapView];
  [v27 setBackgroundColor:v26];

  v28 = [(ZWRootViewController *)self scrollTrapView];
  [v28 setAlpha:0.0];

  v29 = [(ZWRootViewController *)self scrollTrapView];
  v30 = [v29 layer];
  [v30 setHitTestsAsOpaque:1];

  v31 = [(ZWRootViewController *)self containerView];
  [v31 addSubview:v24];

  v32 = [(ZWRootViewController *)self containerView];
  v33 = [(ZWRootViewController *)self scrollTrapView];
  [v32 addSubview:v33];

  [v24 setDelegate:self];
  [v24 setBounces:0];
  [v24 setHidden:1];
  [v24 setContentSize:{10000.0, 10000.0}];
  [v24 setContentOffset:{5000.0, 5000.0}];
  v34 = [(ZWRootViewController *)self containerView];
  v35 = [v24 panGestureRecognizer];
  [v34 addGestureRecognizer:v35];

  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = [(ZWRootViewController *)self containerView];
  v37 = [v24 ax_pinConstraintsInAllDimensionsToView:v36];

  v38 = [(ZWRootViewController *)self scrollTrapView];
  v39 = [(ZWRootViewController *)self containerView];
  v40 = [v38 ax_pinConstraintsInAllDimensionsToView:v39];

  [v45 setHidden:1];
  v41 = [(ZWRootViewController *)self slugViewController];
  [v41 addObserver:self forKeyPath:@"view.center" options:1 context:&ZWZoomItemObserverContextID];

  v42 = [(ZWRootViewController *)self slugViewController];
  [v42 addObserver:self forKeyPath:@"slugRingView.bounds" options:1 context:&ZWZoomItemObserverContextID];

  v43 = [(ZWRootViewController *)self slugViewController];
  [v43 addObserver:self forKeyPath:@"userIsInteractingWithSlug" options:1 context:&ZWZoomItemObserverContextID];

  v44 = [(ZWRootViewController *)self menuViewController];
  [v44 addObserver:self forKeyPath:@"userIsInteractingWithMenu" options:1 context:&ZWZoomItemObserverContextID];
}

- (void)viewDidLoad
{
  v47.receiver = self;
  v47.super_class = ZWRootViewController;
  [(ZWRootViewController *)&v47 viewDidLoad];
  [(ZWRootViewController *)self _updateZoomListeners];
  v3 = [(ZWRootViewController *)self slugViewController];
  [(ZWRootViewController *)self addChildViewController:v3];

  v4 = [(ZWRootViewController *)self containerView];
  v5 = [(ZWRootViewController *)self slugViewController];
  v6 = [v5 view];
  [v4 addSubview:v6];

  v7 = [(ZWRootViewController *)self slugViewController];
  [v7 didMoveToParentViewController:self];

  v46 = [(ZWRootViewController *)self containerView];
  v8 = [(ZWRootViewController *)self slugViewController];
  v9 = [v8 view];

  v10 = [(ZWRootViewController *)self slugViewController];
  v11 = [v10 slugRingView];

  v12 = AXResistAllCompressingAndStretching[0];
  v13 = AXResistAllCompressingAndStretching[1];
  v14 = AXResistAllCompressingAndStretching[2];
  v15 = AXResistAllCompressingAndStretching[3];
  LODWORD(v16) = AXResistAllCompressingAndStretching[0];
  LODWORD(v17) = v13;
  LODWORD(v18) = v14;
  LODWORD(v19) = v15;
  [v9 ax_setContentHuggingAndCompressionResistance:{v16, v17, v18, v19}];
  LODWORD(v20) = v12;
  LODWORD(v21) = v13;
  LODWORD(v22) = v14;
  LODWORD(v23) = v15;
  [v11 ax_setContentHuggingAndCompressionResistance:{v20, v21, v22, v23}];
  v24 = [v46 safeAreaLayoutGuide];
  v25 = [v11 leadingAnchor];
  v26 = [v24 leadingAnchor];
  v27 = [v25 constraintGreaterThanOrEqualToAnchor:v26];
  [(ZWRootViewController *)self setSlugRingLeadingConstraint:v27];

  v28 = [v11 trailingAnchor];
  v29 = [v24 trailingAnchor];
  v30 = [v28 constraintLessThanOrEqualToAnchor:v29];
  [(ZWRootViewController *)self setSlugRingTrailingConstraint:v30];

  v31 = [v11 topAnchor];
  v32 = [v24 topAnchor];
  HasJindo = AXDeviceHasJindo();
  v34 = 0.0;
  if (HasJindo)
  {
    v34 = 5.0;
  }

  v35 = [v31 constraintGreaterThanOrEqualToAnchor:v32 constant:v34];
  [(ZWRootViewController *)self setSlugRingTopConstraint:v35];

  v36 = [v11 bottomAnchor];
  v37 = [v24 bottomAnchor];
  v38 = [v36 constraintLessThanOrEqualToAnchor:v37];
  [(ZWRootViewController *)self setSlugRingBottomConstraint:v38];

  v39 = [(ZWRootViewController *)self slugRingLeadingConstraint];
  v48[0] = v39;
  v40 = [(ZWRootViewController *)self slugRingTrailingConstraint];
  v48[1] = v40;
  v41 = [(ZWRootViewController *)self slugRingTopConstraint];
  v48[2] = v41;
  v42 = [(ZWRootViewController *)self slugRingBottomConstraint];
  v48[3] = v42;
  v43 = [NSArray arrayWithObjects:v48 count:4];
  [NSLayoutConstraint activateConstraints:v43];

  v44 = +[AXSettings sharedInstance];
  v45 = [v44 zoomPreferredCurrentLensMode];
  [(ZWRootViewController *)self _transitionToLensForMode:v45 animated:0 completion:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ZWRootViewController;
  [(ZWRootViewController *)&v4 viewDidAppear:a3];
  [(ZWRootViewController *)self focusZoomOnPreferenceSwitchIfNecessary];
  [(ZWRootViewController *)self _updateZoomListeners];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ZWRootViewController;
  [(ZWRootViewController *)&v4 viewWillDisappear:a3];
  [(ZWRootViewController *)self _removeAllSystemGestureDisablingAssertions];
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = ZWRootViewController;
  [(ZWRootViewController *)&v10 viewWillAppear:a3];
  v4 = [(ZWRootViewController *)self containerView];
  v5 = [(ZWRootViewController *)self slugViewController];
  v6 = [v5 view];
  [v4 bringSubviewToFront:v6];

  [(ZWRootViewController *)self _updateSlugLayoutAnimated:0];
  v7 = [(ZWRootViewController *)self containerView];
  v8 = [(ZWRootViewController *)self fakeLaserVC];
  v9 = [v8 view];
  [v7 bringSubviewToFront:v9];
}

- (void)didMoveToParentViewController:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = ZWRootViewController;
  [(ZWRootViewController *)&v39 didMoveToParentViewController:v4];
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3010000000;
  v36[3] = &unk_6F53D;
  v37 = CGSizeZero;
  block[7] = _NSConcreteStackBlock;
  block[8] = 3221225472;
  block[9] = __54__ZWRootViewController_didMoveToParentViewController___block_invoke;
  block[10] = &unk_792C0;
  block[11] = self;
  block[12] = v38;
  block[13] = v36;
  AXPerformBlockSynchronouslyOnMainThread();
  v5 = [(ZWRootViewController *)self cachedValuesSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __54__ZWRootViewController_didMoveToParentViewController___block_invoke_2;
  block[3] = &unk_792E8;
  block[4] = self;
  block[5] = v38;
  block[6] = v36;
  dispatch_sync(v5, block);

  v6 = [v4 view];
  v7 = [v6 window];

  v8 = [v7 _contextId];
  v9 = [NSNumber numberWithUnsignedInt:v8];
  v41 = v9;
  v10 = [NSArray arrayWithObjects:&v41 count:1];
  BKSHIDServicesExcludeCAContextsFromHitTestingForZoomSenders();

  v11 = [(ZWRootViewController *)self hitTestCategoryAssertion];
  [v11 invalidate];

  if (v8)
  {
    v12 = +[BKSTouchEventService sharedInstance];
    v13 = [NSNumber numberWithUnsignedInt:v8];
    v40 = v13;
    v14 = [NSArray arrayWithObjects:&v40 count:1];
    v15 = [v12 setContextIDs:v14 forHitTestContextCategory:1];
    [(ZWRootViewController *)self setHitTestCategoryAssertion:v15];
  }

  if (ZWLaserIsEnabled())
  {
    if (v7 && v8)
    {
      if (self->_pointerEventStream)
      {
        v16 = [(ZWRootViewController *)self pointerEventStream];
        [v16 invalidate];
      }

      v30 = +[BKSMousePointerService sharedInstance];
      v17 = [(ZWRootViewController *)self view];
      v18 = [v17 window];
      v19 = [v18 screen];
      v20 = [v19 displayConfiguration];
      v21 = [v20 hardwareIdentifier];
      v22 = [v30 requestGlobalMouseEventsForDisplay:v21 targetContextID:v8];
      [(ZWRootViewController *)self setPointerEventStream:v22];

      v23 = [(ZWRootViewController *)self view];
      v24 = [v23 window];
      v25 = [v24 screen];
      v26 = [v25 displayIdentity];
      LODWORD(v17) = [v26 displayID];

      v27 = [(ZWRootViewController *)self cachedValuesSerialQueue];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = __54__ZWRootViewController_didMoveToParentViewController___block_invoke_3;
      v32[3] = &unk_78E98;
      v32[4] = self;
      v33 = v8;
      v34 = v17;
      v28 = v32;
    }

    else
    {
      v29 = [(ZWRootViewController *)self pointerEventStream];
      [v29 invalidate];

      [(ZWRootViewController *)self setPointerEventStream:0];
      v27 = [(ZWRootViewController *)self cachedValuesSerialQueue];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = __54__ZWRootViewController_didMoveToParentViewController___block_invoke_4;
      v31[3] = &unk_78D00;
      v31[4] = self;
      v28 = v31;
    }

    dispatch_sync(v27, v28);
  }

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);
}

void __54__ZWRootViewController_didMoveToParentViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 window];
  *(*(*(a1 + 40) + 8) + 24) = [v3 interfaceOrientation];

  v7 = [*(a1 + 32) screen];
  [v7 bounds];
  v4 = *(*(a1 + 48) + 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
}

void __54__ZWRootViewController_didMoveToParentViewController___block_invoke_2(void *a1)
{
  *(a1[4] + 80) = *(*(a1[5] + 8) + 24);
  *(a1[4] + 384) = *(*(a1[5] + 8) + 24);
  *(a1[4] + 96) = *(*(a1[6] + 8) + 32);
  *(a1[4] + 400) = *(*(a1[6] + 8) + 32);
  v1 = a1[4];
  v2 = v1 + 10;
  v8 = [v1 activeLensViewController];
  v3 = [v8 lensZoomView];
  [v3 zw_convertBoundsToScreenCoordinates];
  v2[4] = v4;
  v2[5] = v5;
  v2[6] = v6;
  v2[7] = v7;
}

uint64_t __54__ZWRootViewController_didMoveToParentViewController___block_invoke_3(uint64_t result)
{
  *(*(result + 32) + 88) = *(result + 40);
  *(*(result + 32) + 92) = *(result + 44);
  return result;
}

uint64_t __54__ZWRootViewController_didMoveToParentViewController___block_invoke_4(uint64_t result)
{
  *(*(result + 32) + 88) = 0;
  *(*(result + 32) + 92) = 0;
  return result;
}

- (void)_prepareToHandleZoomLevelAdjustmentViaGesture
{
  v3 = [(ZWRootViewController *)self activeLensViewController];
  v4 = [v3 inStandbyMode];

  if (v4)
  {
    v5 = AXZoomMinimumZoomLevel;
  }

  else
  {
    [(ZWRootViewController *)self zoomFactor];
  }

  self->_zoomFactorBeforeUserAdjustingGesture = v5;
}

- (void)_handleZoomLevelAdjustmentViaGesture:(CGPoint)a3
{
  if (self->_zoomFactorBeforeUserAdjustingGesture + a3.y * -0.02 >= AXZoomMinimumZoomLevel)
  {
    v4 = self->_zoomFactorBeforeUserAdjustingGesture + a3.y * -0.02;
  }

  else
  {
    v4 = AXZoomMinimumZoomLevel;
  }

  v5 = +[AXSettings sharedInstance];
  [v5 zoomPreferredMaximumZoomScale];
  v7 = v6;

  if (v4 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  [(ZWRootViewController *)self _updateZoomFactor:0 animated:v8];
}

- (void)_updateSlugConstraintsForOrientation:(int64_t)a3
{
  if ((AXDeviceHasHomeButton() & 1) == 0 && (AXDeviceIsPad() & 1) == 0)
  {
    v5 = [(ZWRootViewController *)self view];
    [v5 safeAreaInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    if ((a3 - 1) > 1)
    {
      if (a3 == 3)
      {
        v20 = ZOOMLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *v24 = 0;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Updating slug constraints for landscape left orientation", v24, 2u);
        }

        if (v9 != 0.0)
        {
          v7 = 0.0;
        }

        v21 = [(ZWRootViewController *)self slugRingLeadingConstraint];
        [v21 setConstant:v7];

        v22 = [(ZWRootViewController *)self slugRingTrailingConstraint];
        [v22 setConstant:-5.0];

        v14 = 5.0 - v7;
      }

      else
      {
        if (a3 != 4)
        {
          return;
        }

        v16 = ZOOMLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *v25 = 0;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Updating slug constraints for landscape right orientation", v25, 2u);
        }

        if (v11 == 0.0)
        {
          v17 = -v7;
        }

        else
        {
          v17 = 0.0;
        }

        v18 = [(ZWRootViewController *)self slugRingLeadingConstraint];
        [v18 setConstant:5.0];

        v19 = [(ZWRootViewController *)self slugRingTrailingConstraint];
        [v19 setConstant:v17];

        v14 = v17 + 5.0;
      }
    }

    else
    {
      v12 = ZOOMLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Updating slug constraints for portrait orientaiton", buf, 2u);
      }

      v13 = [(ZWRootViewController *)self slugRingLeadingConstraint];
      v14 = 0.0;
      [v13 setConstant:0.0];

      v15 = [(ZWRootViewController *)self slugRingTrailingConstraint];
      [v15 setConstant:0.0];

      if (AXDeviceHasJindo())
      {
        v14 = 5.0;
      }
    }

    v23 = [(ZWRootViewController *)self slugRingTopConstraint];
    [v23 setConstant:v14];
  }
}

- (BOOL)isZoomLensVisible
{
  v3 = [(ZWRootViewController *)self activeLensViewController];
  v4 = [v3 isViewLoaded];

  if (v4)
  {
    v5 = [(ZWRootViewController *)self activeLensViewController];
    v6 = [v5 view];

    v7 = [v6 window];
    if (v7 && ([v6 alpha], v8 > 0.0))
    {
      v4 = [v6 isHidden] ^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (BOOL)isZoomSlugVisible
{
  v3 = [(ZWRootViewController *)self slugViewController];
  v4 = [v3 isViewLoaded];

  if (v4)
  {
    v5 = [(ZWRootViewController *)self slugViewController];
    v6 = [v5 view];

    v7 = [v6 window];
    if (v7 && ([v6 alpha], v8 > 0.0))
    {
      v4 = [v6 isHidden] ^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (double)zoomFactor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  cachedValuesSerialQueue = self->_cachedValuesSerialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __34__ZWRootViewController_zoomFactor__block_invoke;
  v5[3] = &unk_79310;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(cachedValuesSerialQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __34__ZWRootViewController_zoomFactor__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 208);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setZoomFactor:(double)a3
{
  cachedValuesSerialQueue = self->_cachedValuesSerialQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __38__ZWRootViewController_setZoomFactor___block_invoke;
  v11[3] = &unk_78E98;
  v11[4] = self;
  *&v11[5] = a3;
  dispatch_sync(cachedValuesSerialQueue, v11);
  v5 = [(ZWRootViewController *)self activeLensViewController];
  [(ZWRootViewController *)self zoomPanOffset];
  [v5 validPanOffsetForProposedOffset:? proposedZoomFactor:?];
  v7 = v6;
  v9 = v8;

  v10 = [(ZWRootViewController *)self activeLensViewController];
  [(ZWRootViewController *)self zoomPanOffset];
  [v10 handleAdditionalPanOffsetFromOriginalOffset:0 validOffset:? useFullDelta:?];

  [(ZWRootViewController *)self setZoomPanOffset:v7, v9];
  [(ZWRootViewController *)self _updateZoomListeners];
}

double __38__ZWRootViewController_setZoomFactor___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 208) = result;
  return result;
}

- (double)zoomFactorRespectingUserPreferredMaximumZoom:(double)a3
{
  v4 = +[AXSettings sharedInstance];
  [v4 zoomPreferredMaximumZoomScale];
  v6 = v5;

  return fmin(a3, v6);
}

- (double)setZoomFactorRespectingUserPreferredMaximumZoom:(double)a3
{
  if (AXZoomMinimumZoomLevel > a3)
  {
    a3 = AXZoomMinimumZoomLevel;
  }

  [(ZWRootViewController *)self zoomFactorRespectingUserPreferredMaximumZoom:a3];
  v5 = v4;
  [(ZWRootViewController *)self setZoomFactor:?];
  return v5;
}

- (CGPoint)zoomPanOffset
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v12 = 0;
  v13 = 0;
  v11 = &unk_6F53D;
  cachedValuesSerialQueue = self->_cachedValuesSerialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __37__ZWRootViewController_zoomPanOffset__block_invoke;
  v7[3] = &unk_79310;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(cachedValuesSerialQueue, v7);
  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.y = v6;
  result.x = v5;
  return result;
}

__n128 __37__ZWRootViewController_zoomPanOffset__block_invoke(uint64_t a1)
{
  v1 = (*(a1 + 32) + 360);
  result = *v1;
  *(*(*(a1 + 40) + 8) + 32) = *v1;
  return result;
}

- (void)setZoomPanOffset:(CGPoint)a3
{
  cachedValuesSerialQueue = self->_cachedValuesSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __41__ZWRootViewController_setZoomPanOffset___block_invoke;
  block[3] = &unk_78D28;
  block[4] = self;
  v6 = a3;
  dispatch_sync(cachedValuesSerialQueue, block);
  [(ZWRootViewController *)self _updateZoomListeners];
}

__n128 __41__ZWRootViewController_setZoomPanOffset___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 360) = result;
  return result;
}

- (BOOL)_smartZoomFocusedElementIsBeingSampled
{
  v3 = [(ZWRootViewController *)self smartZoom];
  [v3 focusRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(ZWRootViewController *)self activeLensViewController];
  v13 = [v12 lensZoomView];
  [v13 sampleRect];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v5;
  v23 = v7;
  v24 = v9;
  v25 = v11;
  v26 = v15;
  v27 = v17;
  v28 = v19;
  v29 = v21;

  return CGRectIntersectsRect(*&v22, *&v26);
}

- (void)showZoomSlugAndLens:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(ZWRootViewController *)self view];
  [v7 setHidden:0];

  v8 = [(ZWRootViewController *)self zoomAlertManager];
  [v8 showZoomEnabledAlertIfAppropriate];

  v9 = +[AXSettings sharedInstance];
  v10 = [v9 zoomPreferredCurrentLensMode];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __55__ZWRootViewController_showZoomSlugAndLens_completion___block_invoke;
  v12[3] = &unk_78F80;
  v14 = a3;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [(ZWRootViewController *)self _transitionToLensForMode:v10 animated:1 completion:v12];
}

void __55__ZWRootViewController_showZoomSlugAndLens_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeLensViewController];
  v3 = [*(a1 + 32) pipLensViewController];
  v4 = v3;
  if (v2 != v3)
  {

LABEL_4:
    v7 = [*(a1 + 32) activeLensViewController];
    v8 = +[AXSettings sharedInstance];
    v9 = [v8 zoomCurrentLensEffect];
    [v7 updateLensEffect:v9 animated:1 completion:0];

    goto LABEL_5;
  }

  v5 = [*(a1 + 32) activeLensViewController];
  v6 = [v5 inStandbyMode];

  if ((v6 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_5:
  [*(a1 + 32) _updateLensLayout];
  [*(a1 + 32) _updateSlugLayoutAnimated:0];
  v10 = *(a1 + 40);
  AXPerformBlockAsynchronouslyOnMainThread();
}

uint64_t __55__ZWRootViewController_showZoomSlugAndLens_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) activeLensViewController];
  v3 = [*(a1 + 32) pipLensViewController];

  if (v2 == v3)
  {
    v4 = *(a1 + 32);
    v5 = [v4 activeLensViewController];
    [v4 _updateLensEdgeMaskForZoomController:v5];
  }

  if (*(a1 + 48) == 1)
  {
    v6 = [*(a1 + 32) eventManager];
    [v6 beginHandlingHIDEventsForReason:@"Zoom wants them"];
  }

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void __62__ZWRootViewController_focusZoomOnPreferenceSwitchIfNecessary__block_invoke(uint64_t a1)
{
  v2 = _AXSZoomTouchToggledByPreferenceSwitch();
  _AXSZoomTouchSetToggledByPreferenceSwitch();
  v3 = [*(a1 + 32) view];
  v15 = [v3 window];

  if (v2)
  {
    v4 = [*(a1 + 32) activeLensViewController];
    v5 = [*(a1 + 32) pipLensViewController];
    if (v4 == v5)
    {
      x = CGRectNull.origin.x;
      y = CGRectNull.origin.y;
      width = CGRectNull.size.width;
      height = CGRectNull.size.height;
    }

    else
    {
      v6 = +[AXBackBoardServer server];
      [v6 zoomInitialFocusRectWithQueryingContext:{objc_msgSend(v15, "_contextId")}];
      x = v7;
      y = v9;
      width = v11;
      height = v13;
    }
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  if (!CGRectIsEmpty(v17))
  {
    AXUIConvertRectFromContextToScreenSpace();
    [v15 convertRect:0 fromWindow:?];
    [v15 _convertRectToSceneReferenceSpace:?];
    [*(a1 + 32) _focusLensOnRect:1 panLensContent:1 recentreLens:1 animated:0 completion:?];
  }
}

- (void)hideZoomSlugAndLens:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  [(ZWRootViewController *)self _removeAllSystemGestureDisablingAssertions];
  v7 = [(ZWRootViewController *)self zoomAlertManager];
  [v7 showZoomDisabledAlertIfAppropriate];

  v8 = +[ZWCoalescedSettings sharedInstance];
  v9 = [v8 zoomInStandby];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __55__ZWRootViewController_hideZoomSlugAndLens_completion___block_invoke;
  v11[3] = &unk_79338;
  v13 = v9;
  v14 = a3;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [(ZWRootViewController *)self _transitionToLens:0 animated:1 completion:v11];
}

uint64_t __55__ZWRootViewController_hideZoomSlugAndLens_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setHidden:1];

  v3 = *(a1 + 48);
  v4 = +[ZWCoalescedSettings sharedInstance];
  [v4 setZoomInStandby:v3];

  if (*(a1 + 49) == 1)
  {
    v5 = [*(a1 + 32) eventManager];
    [v5 endHandlingHIDEventsForReason:@"Zoom wants them"];
  }

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

- (void)handleKeyboardWillAppearWithFrame:(CGRect)a3 inAppWithBundleID:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = +[AXSubsystemZoom sharedInstance];
  v11 = [v10 ignoreLogging];

  if ((v11 & 1) == 0)
  {
    v12 = +[AXSubsystemZoom identifier];
    v13 = AXLoggerForFacility();

    v14 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = AXColorizeFormatLog();
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v21 = NSStringFromCGRect(v25);
      v22 = v9;
      v16 = _AXStringForArgs();

      if (os_log_type_enabled(v13, v14))
      {
        *buf = 138543362;
        v24 = v16;
        _os_log_impl(&dword_0, v13, v14, "%{public}@", buf, 0xCu);
      }
    }
  }

  v17 = [(ZWRootViewController *)self deactivatedAppIDs:v21];
  v18 = [v17 containsObject:v9];

  if ((v18 & 1) == 0)
  {
    v19 = +[NSDate distantPast];
    [v19 timeIntervalSinceReferenceDate];
    self->_lastKeyboardDismissal = v20;

    [(ZWRootViewController *)self _updateKeyboardFrame:x, y, width, height];
  }
}

- (void)handleKeyboardWillHideInAppWithBundleID:(id)a3
{
  v4 = a3;
  v5 = +[AXSubsystemZoom sharedInstance];
  v6 = [v5 ignoreLogging];

  if ((v6 & 1) == 0)
  {
    v7 = +[AXSubsystemZoom identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v15 = v4;
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v17 = v11;
        _os_log_impl(&dword_0, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  v12 = [(ZWRootViewController *)self deactivatedAppIDs];
  v13 = [v12 containsObject:v4];

  if ((v13 & 1) == 0)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    self->_lastKeyboardDismissal = v14;
    [(ZWRootViewController *)self _updateKeyboardFrame:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
  }
}

- (void)zoomListenerRegisteredForAllAttributeUpdatesCoalesced:(BOOL)a3 clientIdentifier:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = +[AXSubsystemZoom sharedInstance];
  v8 = [v7 ignoreLogging];

  if ((v8 & 1) == 0)
  {
    v9 = +[AXSubsystemZoom identifier];
    v10 = AXLoggerForFacility();

    v11 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = AXColorizeFormatLog();
      v14 = v6;
      v15 = v4;
      v13 = _AXStringForArgs();
      if (os_log_type_enabled(v10, v11))
      {
        *buf = 138543362;
        v17 = v13;
        _os_log_impl(&dword_0, v10, v11, "%{public}@", buf, 0xCu);
      }
    }
  }

  [(ZWRootViewController *)self setZoomIsAnimating:0, v14, v15];
  [(ZWRootViewController *)self _updateZoomListeners];
}

- (void)zoomListenerRegisteredForAttributeUpdatesImmediately:(id)a3 registered:(BOOL)a4 clientIdentifier:(id)a5
{
  v5 = a4;
  v7 = a3;
  v8 = +[AXSubsystemZoom sharedInstance];
  v9 = [v8 ignoreLogging];

  if ((v9 & 1) == 0)
  {
    v10 = +[AXSubsystemZoom identifier];
    v11 = AXLoggerForFacility();

    v12 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = AXColorizeFormatLog();
      v15 = v7;
      v16 = v5;
      v14 = _AXStringForArgs();
      if (os_log_type_enabled(v11, v12))
      {
        *buf = 138543362;
        v18 = v14;
        _os_log_impl(&dword_0, v11, v12, "%{public}@", buf, 0xCu);
      }
    }
  }

  [(ZWRootViewController *)self setZoomIsAnimating:0, v15, v16];
  [(ZWRootViewController *)self _updateZoomListeners];
}

- (void)handleFocusChangedWithType:(int64_t)a3 rect:(CGRect)a4 keyboardFrame:(CGRect)a5 contextId:(unsigned int)a6 appID:(id)a7
{
  v7 = *&a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a4.size.height;
  v13 = a4.size.width;
  v14 = a4.origin.y;
  v15 = a4.origin.x;
  v18 = a7;
  if (v18)
  {
    v19 = [(ZWRootViewController *)self deactivatedAppIDs];
    v20 = [v19 containsObject:v18];

    if ((v20 & 1) == 0)
    {
      if (v7)
      {
        v21 = +[AXBackBoardServer server];
        v22 = [(ZWRootViewController *)self view];
        v23 = [v22 window];
        [v21 convertFrame:v7 fromContextId:objc_msgSend(v23 toContextId:{"_contextId"), v15, v14, v13, v12}];

        v24 = [(ZWRootViewController *)self view];
        v25 = [v24 window];
        AXUIConvertRectFromContextToScreenSpace();
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;

        v34 = [(ZWRootViewController *)self view];
        v35 = [v34 window];
        [v35 convertRect:0 fromWindow:{v27, v29, v31, v33}];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;

        v44 = [(ZWRootViewController *)self view];
        v45 = [v44 window];
        [v45 _convertRectToSceneReferenceSpace:{v37, v39, v41, v43}];
        v15 = v46;
        v14 = v47;
        v13 = v48;
        v12 = v49;
      }

      v50 = +[AXSubsystemZoom sharedInstance];
      v51 = [v50 ignoreLogging];

      if ((v51 & 1) == 0)
      {
        v52 = +[AXSubsystemZoom identifier];
        v53 = AXLoggerForFacility();

        v54 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = AXColorizeFormatLog();
          v76.origin.x = v15;
          v76.origin.y = v14;
          v76.size.width = v13;
          v76.size.height = v12;
          v56 = NSStringFromCGRect(v76);
          v77.origin.x = x;
          v77.origin.y = y;
          v77.size.width = width;
          v77.size.height = height;
          NSStringFromCGRect(v77);
          v73 = v72 = v56;
          v71 = a3;
          v57 = _AXStringForArgs();

          if (os_log_type_enabled(v53, v54))
          {
            *buf = 138543362;
            v75 = v57;
            _os_log_impl(&dword_0, v53, v54, "%{public}@", buf, 0xCu);
          }
        }
      }

      v78.origin.x = x;
      v78.origin.y = y;
      v78.size.width = width;
      v78.size.height = height;
      if (!CGRectIsEmpty(v78))
      {
        [(ZWRootViewController *)self _updateKeyboardFrame:x, y, width, height];
      }

      if ((a3 - 1) > 1 || _AXSVoiceOverTouchEnabled())
      {
        if (a3 == 5)
        {
          if (!_AXSFullKeyboardAccessEnabled())
          {
            goto LABEL_34;
          }
        }

        else if (a3 == 3 && !_AXSAssistiveTouchScannerEnabled())
        {
          goto LABEL_34;
        }

        v58 = [(ZWRootViewController *)self eventManager:v71];
        v59 = [v58 fullscreenEventHandler];
        v60 = [v59 anyFingerDown];

        if (!a3 || (v60 & 1) == 0)
        {
          v61 = [(ZWRootViewController *)self view];
          v62 = [v61 window];
          v63 = [v62 _contextId];

          if (v63 != v7)
          {
            v64 = [(ZWRootViewController *)self activeLensViewController];
            v65 = [v64 inStandbyMode];

            +[NSDate timeIntervalSinceReferenceDate];
            v67 = v66;
            if (a3)
            {
              v65 |= vabdd_f64(v66, self->_lastTypingFocusChangeTime) < 0.2;
              if (a3 == 2 && [(ZWKeyboardContext *)self->_kbContext isKeyboardVisible])
              {
                if (([(ZWKeyboardContext *)self->_kbContext zoomRepositionsForKeyboard]| v65))
                {
                  goto LABEL_34;
                }

                goto LABEL_33;
              }

LABEL_32:
              if (v65)
              {
                goto LABEL_34;
              }

LABEL_33:
              [(ZWRootViewController *)self _focusLensOnRect:1 panLensContent:a3 != 0 recentreLens:a3 == 0 animated:0 completion:v15, v14, v13, v12];
              goto LABEL_34;
            }

            self->_lastTypingFocusChangeTime = v66;
            v68 = [(ZWRootViewController *)self activeLensViewController];
            v69 = [(ZWRootViewController *)self fullscreenLensViewController];
            if (v68 == v69 && ![(ZWKeyboardContext *)self->_kbContext zoomRepositionsForKeyboard])
            {
              v70 = [(ZWKeyboardContext *)self->_kbContext zoomFollowsFocus];

              LOBYTE(v65) = v70 ^ 1 | v65;
            }

            else
            {
            }

            if (vabdd_f64(v67, self->_lastKeyboardDismissal) >= 0.25)
            {
              goto LABEL_32;
            }
          }
        }
      }
    }
  }

LABEL_34:
}

- (void)handleLockButtonWasPressed
{
  v3 = +[AXSubsystemZoom sharedInstance];
  v4 = [v3 ignoreLogging];

  if ((v4 & 1) == 0)
  {
    v5 = +[AXSubsystemZoom identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v14 = 138543362;
        v15 = v9;
        _os_log_impl(&dword_0, v6, v7, "%{public}@", &v14, 0xCu);
      }
    }
  }

  v10 = [(ZWRootViewController *)self activeLensViewController];
  v11 = [(ZWRootViewController *)self pipLensViewController];

  if (v10 == v11)
  {
    [(ZWRootViewController *)self _setPIPLensResizingEnabled:0];
  }

  else
  {
    v12 = [(ZWRootViewController *)self activeLensViewController];
    v13 = [(ZWRootViewController *)self dockedLensViewController];

    if (v12 == v13)
    {
      [(ZWRootViewController *)self _setDockResizingEnabled:0];
    }
  }

  [(ZWRootViewController *)self _dismissMenuAnimated:0];
}

- (void)handleDeviceWillWake
{
  v2 = [(ZWRootViewController *)self slugViewController];
  [v2 wakeSlug];
}

- (void)handleSettingsAppDidUpdatePreferredDockPosition:(id)a3
{
  v4 = a3;
  v5 = [(ZWRootViewController *)self dockedLensViewController];
  [v5 setDockPositionIsTransitioning:1];

  v6 = [(ZWRootViewController *)self dockedLensViewController];
  v7 = [v6 stringForCurrentDockPosition];
  v8 = [v7 isEqualToString:v4];

  if ((v8 & 1) == 0)
  {
    v9 = [(ZWRootViewController *)self activeLensViewController];
    v10 = [v9 inStandbyMode];

    if (v10)
    {
      v11 = [(ZWRootViewController *)self dockedLensViewController];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = __72__ZWRootViewController_handleSettingsAppDidUpdatePreferredDockPosition___block_invoke_5;
      v23[3] = &unk_78D00;
      v23[4] = self;
      [v11 transitionToDockPosition:v4 completion:v23];
    }

    else
    {
      v12 = [(ZWRootViewController *)self activeLensViewController];
      v13 = [(ZWRootViewController *)self activeLensViewController];
      [v13 zoomFactor];
      v15 = v14;
      v16 = [(ZWRootViewController *)self activeLensViewController];
      [v16 zoomPanOffset];
      v18 = v17;
      v20 = v19;
      v21 = +[AXSettings sharedInstance];
      v22 = [v21 zoomCurrentLensEffect];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = __72__ZWRootViewController_handleSettingsAppDidUpdatePreferredDockPosition___block_invoke;
      v24[3] = &unk_79170;
      v24[4] = self;
      v25 = v4;
      [v12 updateStandbyMode:1 zoomFactor:v22 panOffset:1 lensEffect:v24 animated:v15 completion:{v18, v20}];

      v11 = v25;
    }
  }
}

void __72__ZWRootViewController_handleSettingsAppDidUpdatePreferredDockPosition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateSystemGestureDisablingAssertions];
  v2 = [*(a1 + 32) dockedLensViewController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __72__ZWRootViewController_handleSettingsAppDidUpdatePreferredDockPosition___block_invoke_2;
  v4[3] = &unk_78D00;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  [v2 transitionToDockPosition:v3 completion:v4];
}

void __72__ZWRootViewController_handleSettingsAppDidUpdatePreferredDockPosition___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) activeLensViewController];
  v3 = [*(a1 + 32) activeLensViewController];
  [v3 zoomFactor];
  v5 = v4;
  v6 = [*(a1 + 32) activeLensViewController];
  [v6 zoomPanOffset];
  v8 = v7;
  v10 = v9;
  v11 = +[AXSettings sharedInstance];
  v12 = [v11 zoomCurrentLensEffect];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __72__ZWRootViewController_handleSettingsAppDidUpdatePreferredDockPosition___block_invoke_3;
  v13[3] = &unk_78D00;
  v13[4] = *(a1 + 32);
  [v2 updateStandbyMode:0 zoomFactor:v12 panOffset:1 lensEffect:v13 animated:v5 completion:{v8, v10}];
}

void __72__ZWRootViewController_handleSettingsAppDidUpdatePreferredDockPosition___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) dockedLensViewController];
  [v2 setDockPositionIsTransitioning:0];

  [*(a1 + 32) _updateSystemGestureDisablingAssertions];
  v3 = [*(a1 + 32) cachedValuesSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __72__ZWRootViewController_handleSettingsAppDidUpdatePreferredDockPosition___block_invoke_4;
  block[3] = &unk_78D00;
  block[4] = *(a1 + 32);
  dispatch_sync(v3, block);
}

void __72__ZWRootViewController_handleSettingsAppDidUpdatePreferredDockPosition___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) dockedLensViewController];
  *(*(a1 + 32) + 352) = [v2 dockPosition];
}

void __72__ZWRootViewController_handleSettingsAppDidUpdatePreferredDockPosition___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) dockedLensViewController];
  [v2 setDockPositionIsTransitioning:0];

  v3 = [*(a1 + 32) cachedValuesSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __72__ZWRootViewController_handleSettingsAppDidUpdatePreferredDockPosition___block_invoke_6;
  block[3] = &unk_78D00;
  block[4] = *(a1 + 32);
  dispatch_sync(v3, block);
}

void __72__ZWRootViewController_handleSettingsAppDidUpdatePreferredDockPosition___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) dockedLensViewController];
  *(*(a1 + 32) + 352) = [v2 dockPosition];
}

- (void)handleSettingsAppDidUpdateIdleSlugOpacity:(double)a3
{
  v4 = [(ZWRootViewController *)self slugViewController];
  [v4 updateIdleSlugOpacityAndPreviewImmediately:a3];
}

- (void)handleFluidSwitcherGestureWillBegin
{
  v3 = +[AXSubsystemZoom sharedInstance];
  v4 = [v3 ignoreLogging];

  if ((v4 & 1) == 0)
  {
    v5 = +[AXSubsystemZoom identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138543362;
        v35 = v9;
        _os_log_impl(&dword_0, v6, v7, "%{public}@", buf, 0xCu);
      }
    }
  }

  v10 = [(ZWRootViewController *)self activeLensViewController];
  [v10 handleFluidSwitcherGestureWillBegin];

  v11 = [(ZWRootViewController *)self activeLensViewController];
  if ([v11 inStandbyMode])
  {
  }

  else
  {
    v12 = [(ZWRootViewController *)self activeLensViewController];
    v13 = [(ZWRootViewController *)self fullscreenLensViewController];

    if (v12 == v13)
    {
      v14 = [(ZWRootViewController *)self activeLensViewController];
      [v14 zoomFactor];
      v16 = v15;

      v17 = [(ZWRootViewController *)self activeLensViewController];
      [v17 zoomPanOffset];
      v19 = v18;
      v21 = v20;

      v22 = [(ZWRootViewController *)self activeLensViewController];
      v23 = [v22 lensZoomView];
      [v23 zw_convertBoundsToScreenCoordinates];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;

      [(ZWRootViewController *)self _unzoomDueToAppTransitionIfNeeded];
      self->_inStandbyForFluidSwitcherGesture = 1;
      cachedValuesSerialQueue = self->_cachedValuesSerialQueue;
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = __59__ZWRootViewController_handleFluidSwitcherGestureWillBegin__block_invoke;
      v33[3] = &unk_79360;
      v33[4] = self;
      v33[5] = v16;
      v33[6] = v19;
      v33[7] = v21;
      v33[8] = v25;
      v33[9] = v27;
      v33[10] = v29;
      v33[11] = v31;
      dispatch_sync(cachedValuesSerialQueue, v33);
    }
  }
}

__n128 __59__ZWRootViewController_handleFluidSwitcherGestureWillBegin__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 512) = *(a1 + 40);
  *(*(a1 + 32) + 664) = *(a1 + 48);
  v1 = *(a1 + 32) + 384;
  result = *(a1 + 64);
  v3 = *(a1 + 80);
  *(v1 + 32) = result;
  *(v1 + 48) = v3;
  return result;
}

- (void)handleAppActivationAnimationWillBegin
{
  v3 = +[AXSubsystemZoom sharedInstance];
  v4 = [v3 ignoreLogging];

  if ((v4 & 1) == 0)
  {
    v5 = +[AXSubsystemZoom identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&dword_0, v6, v7, "%{public}@", &v10, 0xCu);
      }
    }
  }

  [(ZWRootViewController *)self _unzoomDueToAppTransitionIfNeeded];
}

- (void)handleAppDeactivationAnimationWillBegin
{
  v3 = +[AXSubsystemZoom sharedInstance];
  v4 = [v3 ignoreLogging];

  if ((v4 & 1) == 0)
  {
    v5 = +[AXSubsystemZoom identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&dword_0, v6, v7, "%{public}@", &v10, 0xCu);
      }
    }
  }

  [(ZWRootViewController *)self _unzoomDueToAppTransitionIfNeeded];
}

- (void)handleFluidSwitcherGestureDidFinish
{
  v3 = +[AXSubsystemZoom sharedInstance];
  v4 = [v3 ignoreLogging];

  if ((v4 & 1) == 0)
  {
    v5 = +[AXSubsystemZoom identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&dword_0, v6, v7, "%{public}@", &v10, 0xCu);
      }
    }
  }

  [(ZWRootViewController *)self _rezoomDueToAppTransitionIfNeeded];
  self->_inStandbyForFluidSwitcherGesture = 0;
}

- (void)handleFluidSwitcherGestureDidFinishWithDock
{
  v3 = +[AXSubsystemZoom sharedInstance];
  v4 = [v3 ignoreLogging];

  if ((v4 & 1) == 0)
  {
    v5 = +[AXSubsystemZoom identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&dword_0, v6, v7, "%{public}@", &v10, 0xCu);
      }
    }
  }

  [(ZWRootViewController *)self _rezoomDueToDockIfNeeded];
  self->_inStandbyForFluidSwitcherGesture = 0;
}

- (void)handleAppActivationAnimationDidFinish
{
  v3 = +[AXSubsystemZoom sharedInstance];
  v4 = [v3 ignoreLogging];

  if ((v4 & 1) == 0)
  {
    v5 = +[AXSubsystemZoom identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&dword_0, v6, v7, "%{public}@", &v10, 0xCu);
      }
    }
  }

  [(ZWRootViewController *)self _rezoomDueToAppTransitionIfNeeded];
}

- (void)handleDeviceReturnedToClockAtIdle
{
  [(ZWRootViewController *)self setZoomWasUnzoomedDueToAppTransition:0];
  v3 = [(ZWRootViewController *)self activeLensViewController];
  [v3 updateStandbyMode:1 zoomFactor:AXZoomLensEffectNone panOffset:1 lensEffect:0 animated:AXZoomMinimumZoomLevel completion:{CGPointZero.x, CGPointZero.y}];
}

- (void)handleCarouselLockBegan
{
  [(ZWRootViewController *)self setCarouselLockActive:1];
  v3 = [(ZWRootViewController *)self activeLensViewController];
  [v3 updateStandbyMode:1 zoomFactor:AXZoomLensEffectNone panOffset:1 lensEffect:0 animated:AXZoomMinimumZoomLevel completion:{CGPointZero.x, CGPointZero.y}];
}

- (void)handleSubstantialAppTransition
{
  v2 = +[AXSubsystemZoom sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v4 = +[AXSubsystemZoom identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      v8 = _AXStringForArgs();
      if (os_log_type_enabled(v5, v6))
      {
        v9 = 138543362;
        v10 = v8;
        _os_log_impl(&dword_0, v5, v6, "%{public}@", &v9, 0xCu);
      }
    }
  }
}

- (void)handleAppDidBecomeActiveWithID:(id)a3 initialKeyboardFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  if ([(ZWRootViewController *)self isViewLoaded])
  {
    v10 = [(ZWRootViewController *)self deactivatedAppIDs];
    [v10 removeObject:v9];

    v11 = +[AXSubsystemZoom sharedInstance];
    v12 = [v11 ignoreLogging];

    if ((v12 & 1) == 0)
    {
      v13 = +[AXSubsystemZoom identifier];
      v14 = AXLoggerForFacility();

      v15 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = AXColorizeFormatLog();
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        NSStringFromCGRect(v22);
        v19 = v18 = v9;
        v17 = _AXStringForArgs();

        if (os_log_type_enabled(v14, v15))
        {
          *buf = 138543362;
          v21 = v17;
          _os_log_impl(&dword_0, v14, v15, "%{public}@", buf, 0xCu);
        }
      }
    }

    [(ZWRootViewController *)self _rezoomDueToAppTransitionIfNeeded:v18];
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    if (!CGRectIsEmpty(v23))
    {
      [(ZWRootViewController *)self _updateKeyboardFrame:x, y, width, height];
    }
  }
}

- (void)handleAppDidEnterBackgroundWithID:(id)a3
{
  v4 = a3;
  v5 = +[AXSubsystemZoom sharedInstance];
  v6 = [v5 ignoreLogging];

  if ((v6 & 1) == 0)
  {
    v7 = +[AXSubsystemZoom identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v15 = v4;
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v17 = v11;
        _os_log_impl(&dword_0, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  if ([(ZWRootViewController *)self isViewLoaded])
  {
    [(ZWRootViewController *)self _rezoomDueToAppTransitionIfNeeded];
    v12 = [(ZWRootViewController *)self deactivatedAppIDs];
    v13 = [v12 containsObject:v4];

    if ((v13 & 1) == 0)
    {
      [(ZWRootViewController *)self _updateKeyboardFrame:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
    }

    v14 = [(ZWRootViewController *)self deactivatedAppIDs];
    [v14 addObject:v4];
  }
}

- (void)handleAppSwitcherRevealAnimationWillBegin
{
  _AXLogWithFacility();
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;

  [(ZWRootViewController *)self _updateKeyboardFrame:CGRectNull.origin.x, y, width, height];
}

- (id)activeZoomMode
{
  v3 = [(ZWRootViewController *)self activeLensViewController];
  v4 = [(ZWRootViewController *)self fullscreenLensViewController];

  if (v3 == v4)
  {
    v10 = &AXZoomLensModeFullscreen;
  }

  else
  {
    v5 = [(ZWRootViewController *)self activeLensViewController];
    v6 = [(ZWRootViewController *)self pipLensViewController];

    if (v5 == v6)
    {
      v10 = &AXZoomLensModeWindow;
    }

    else
    {
      v7 = [(ZWRootViewController *)self activeLensViewController];
      v8 = [(ZWRootViewController *)self dockedLensViewController];

      if (v7 != v8)
      {
        v9 = &stru_796F8;
        goto LABEL_9;
      }

      v10 = &AXZoomLensModeWindowAnchored;
    }
  }

  v9 = *v10;
LABEL_9:

  return v9;
}

- (void)handleDragWillStart
{
  cachedValuesSerialQueue = self->_cachedValuesSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __43__ZWRootViewController_handleDragWillStart__block_invoke;
  block[3] = &unk_78D00;
  block[4] = self;
  dispatch_sync(cachedValuesSerialQueue, block);
}

- (void)handleDragWillEnd
{
  cachedValuesSerialQueue = self->_cachedValuesSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __41__ZWRootViewController_handleDragWillEnd__block_invoke;
  block[3] = &unk_78D00;
  block[4] = self;
  dispatch_sync(cachedValuesSerialQueue, block);
}

- (CGRect)zoomFrame
{
  v3 = [(ZWRootViewController *)self activeLensViewController];
  v4 = [v3 lensZoomView];
  [v4 effectiveZoomViewFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(ZWRootViewController *)self activeLensViewController];
  v14 = [(ZWRootViewController *)self pipLensViewController];

  if (v13 == v14)
  {
    v24 = [(ZWRootViewController *)self view];
    v26 = [(ZWRootViewController *)self pipLensViewController];
    v27 = [v26 lensChromeView];
    [v24 convertRect:v27 fromView:{v6, v8, v10, v12}];
    v6 = v28;
    v8 = v29;
    v10 = v30;
    v12 = v31;

    goto LABEL_8;
  }

  v15 = [(ZWRootViewController *)self activeLensViewController];
  v16 = [(ZWRootViewController *)self dockedLensViewController];

  if (v15 == v16)
  {
    v17 = [(ZWRootViewController *)self dockedLensViewController];
    [v17 zoomRegionFrame];
    v6 = v18;
    v8 = v19;
    v10 = v20;
    v12 = v21;

    v22 = [(ZWRootViewController *)self dockedLensViewController];
    v23 = [v22 dockPosition];

    if (v23 > 1)
    {
      if (v23 == &dword_0 + 2)
      {
        v24 = [(ZWRootViewController *)self dockedLensViewController];
        v36 = [v24 dockedLensView];
        [v36 bounds];
        v43 = v42;
        v39 = [(ZWRootViewController *)self dockedLensViewController];
        [v39 screenShift];
        v6 = v6 + v43 - v44;
      }

      else
      {
        if (v23 != &dword_0 + 3)
        {
          goto LABEL_9;
        }

        v24 = [(ZWRootViewController *)self dockedLensViewController];
        v36 = [v24 dockedLensView];
        [v36 bounds];
        v38 = v37;
        v39 = [(ZWRootViewController *)self dockedLensViewController];
        [v39 screenShift];
        v8 = v8 + v38 - v40;
      }

      goto LABEL_8;
    }

    if (!v23)
    {
      v24 = [(ZWRootViewController *)self dockedLensViewController];
      [v24 screenShift];
      v8 = v8 - v41;
      goto LABEL_8;
    }

    if (v23 == &dword_0 + 1)
    {
      v24 = [(ZWRootViewController *)self dockedLensViewController];
      [v24 screenShift];
      v6 = v6 - v25;
LABEL_8:
    }
  }

LABEL_9:
  v32 = v6;
  v33 = v8;
  v34 = v10;
  v35 = v12;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (double)reachabilityScaleFactor
{
  v3 = [(ZWRootViewController *)self activeLensViewController];
  v4 = [(ZWRootViewController *)self fullscreenLensViewController];
  v5 = 1.0;
  if (v3 == v4)
  {
    v6 = +[ZWCoalescedSettings sharedInstance];
    if (([v6 zoomInStandby] & 1) == 0)
    {
      [(ZWRootViewController *)self zoomFactor];
      v5 = 1.0 / v7;
    }
  }

  return v5;
}

- (void)_focusLensOnRect:(CGRect)a3 panLensContent:(BOOL)a4 recentreLens:(BOOL)a5 animated:(BOOL)a6 completion:(id)a7
{
  v7 = a6;
  v8 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = a7;
  v16 = [(ZWRootViewController *)self containerView];
  [v16 zw_convertRectFromScreenCoordinates:{x, y, width, height}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = +[AXSettings sharedInstance];
  v26 = [v25 zoomDebugShowExternalFocusRect];

  if (v26)
  {
    v27 = [(ZWRootViewController *)self debugFocusView];

    if (!v27)
    {
      v28 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [(ZWRootViewController *)self setDebugFocusView:v28];
      v29 = [(ZWRootViewController *)self containerView];
      [v29 addSubview:v28];

      v30 = +[UIColor greenColor];
      [v28 setBackgroundColor:v30];
    }

    v31 = [(ZWRootViewController *)self debugFocusView];
    [v31 setFrame:{v18, v20, v22, v24}];

    v32 = [(ZWRootViewController *)self containerView];
    v33 = [(ZWRootViewController *)self debugFocusView];
    [v32 bringSubviewToFront:v33];
  }

  [(ZWRootViewController *)self activeLensViewController];
  v95[0] = _NSConcreteStackBlock;
  v95[1] = 3221225472;
  v95[2] = __89__ZWRootViewController__focusLensOnRect_panLensContent_recentreLens_animated_completion___block_invoke;
  v95[3] = &unk_79388;
  v34 = v103 = a4;
  v96 = v34;
  v97 = self;
  v99 = v18;
  v100 = v20;
  v101 = v22;
  v102 = v24;
  v104 = v7;
  v35 = v15;
  v98 = v35;
  v105 = v8;
  v36 = objc_retainBlock(v95);
  v92 = v22;
  v93 = v24;
  v94 = v20;
  if ([(ZWKeyboardContext *)self->_kbContext isKeyboardVisible])
  {
    v37 = [(ZWKeyboardContext *)self->_kbContext zoomRepositionsForKeyboard];
  }

  else
  {
    v37 = 0;
  }

  v38 = [v34 view];
  v39 = [v34 view];
  [v39 bounds];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = [(ZWRootViewController *)self containerView];
  [v38 convertRect:v48 toView:{v41, v43, v45, v47}];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  v57 = [(ZWRootViewController *)self activeLensViewController];
  v58 = [(ZWRootViewController *)self pipLensViewController];

  if (v57 == v58)
  {
    UIRectInset();
    v50 = v59;
    v52 = v60;
    v54 = v61;
    v56 = v62;
  }

  v63 = CGPointZero.x;
  v64 = CGPointZero.y;
  if (((v37 | !v8) & 1) == 0)
  {
    v90 = CGPointZero.y;
    v91 = CGPointZero.x;
    v107.origin.x = v50;
    v107.origin.y = v52;
    v107.size.width = v54;
    v107.size.height = v56;
    MidX = CGRectGetMidX(v107);
    v108.origin.x = v50;
    v108.origin.y = v52;
    v108.size.width = v54;
    v108.size.height = v56;
    MidY = CGRectGetMidY(v108);
    v109.origin.x = v18;
    v109.origin.y = v94;
    v109.size.width = v92;
    v109.size.height = v93;
    v68 = CGRectGetMidX(v109);
    v110.origin.x = v18;
    v110.origin.y = v94;
    v110.size.width = v92;
    v110.size.height = v93;
    v69 = CGRectGetMidY(v110);
    v70 = [(ZWRootViewController *)self fullscreenLensViewController];

    if (v34 == v70)
    {
      [(ZWRootViewController *)self zoomPanOffset];
      v63 = v68 - MidX - v79;
      v64 = v69 - MidY - v80;
    }

    else
    {
      v71 = [(ZWRootViewController *)self pipLensViewController];

      if (v34 == v71)
      {
        [(ZWRootViewController *)self zoomFrame];
        v81 = CGRectGetMidX(v111);
        [(ZWRootViewController *)self zoomFrame];
        v63 = v68 - v81;
        v64 = v69 - CGRectGetMidY(v112);
      }

      else
      {
        v72 = [(ZWRootViewController *)self dockedLensViewController];

        v64 = v90;
        v63 = CGPointZero.x;
        if (v34 == v72)
        {
          v73 = [(ZWRootViewController *)self dockedLensViewController];
          v74 = v73;
          v75 = v18;
          v76 = v94;
          v77 = v92;
          v78 = v93;
LABEL_29:
          [v73 deltaForDockedZoomMovementToRect:{v75, v76, v77, v78, *&v90, *&v91}];
          v63 = v88;
          v64 = v89;
        }
      }
    }

LABEL_30:
    [(ZWRootViewController *)self _moveZoomItemWithController:v34 byDelta:v7 animated:1 userInitiated:1 shouldUseFullDeltaForDockedMode:1 shouldPan:v63, v64, *&v90, *&v91];
    goto LABEL_31;
  }

  v65 = v94;
  if ((v37 & 1) == 0)
  {
    v106.origin.x = v50;
    v106.origin.y = v52;
    v106.size.width = v54;
    v106.size.height = v56;
    v121.origin.x = v18;
    v121.origin.y = v94;
    v121.size.width = v92;
    v121.size.height = v93;
    if (!CGRectContainsRect(v106, v121))
    {
      if (v18 >= v50)
      {
        v113.origin.x = v18;
        v113.origin.y = v94;
        v113.size.width = v92;
        v113.size.height = v93;
        MaxX = CGRectGetMaxX(v113);
        v114.origin.x = v50;
        v114.origin.y = v52;
        v114.size.width = v54;
        v114.size.height = v56;
        v83 = MaxX <= CGRectGetMaxX(v114);
        v65 = v94;
        if (!v83)
        {
          v115.origin.x = v18;
          v115.origin.y = v94;
          v115.size.width = v92;
          v115.size.height = v93;
          v84 = CGRectGetMaxX(v115);
          v116.origin.x = v50;
          v116.origin.y = v52;
          v116.size.width = v54;
          v116.size.height = v56;
          v63 = v84 - CGRectGetMaxX(v116);
          v65 = v94;
        }
      }

      else
      {
        v63 = v18 - v50;
      }

      if (v65 >= v52)
      {
        v117.origin.x = v18;
        v117.origin.y = v65;
        v117.size.width = v92;
        v117.size.height = v93;
        MaxY = CGRectGetMaxY(v117);
        v118.origin.x = v50;
        v118.origin.y = v52;
        v118.size.width = v54;
        v118.size.height = v56;
        v83 = MaxY <= CGRectGetMaxY(v118);
        v65 = v94;
        if (!v83)
        {
          v119.origin.x = v18;
          v119.origin.y = v94;
          v119.size.width = v92;
          v119.size.height = v93;
          v86 = CGRectGetMaxY(v119);
          v120.origin.x = v50;
          v120.origin.y = v52;
          v120.size.width = v54;
          v120.size.height = v56;
          v64 = v86 - CGRectGetMaxY(v120);
          v65 = v94;
        }
      }

      else
      {
        v64 = v65 - v52;
      }

      v87 = [(ZWRootViewController *)self dockedLensViewController];

      if (v34 != v87)
      {
        goto LABEL_30;
      }

      v73 = [(ZWRootViewController *)self dockedLensViewController];
      v74 = v73;
      v75 = v18;
      v76 = v65;
      v77 = v92;
      v78 = v93;
      goto LABEL_29;
    }
  }

LABEL_31:
  (v36[2])(v36);
}

id __89__ZWRootViewController__focusLensOnRect_panLensContent_recentreLens_animated_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) dockedLensViewController];

    if (v2 == v3)
    {
      v18 = [*(a1 + 40) dockedLensViewController];
      [v18 deltaForDockedZoomMovementToRect:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
      v20 = v19;
      v22 = v21;

      [*(a1 + 40) _moveZoomItemWithController:*(a1 + 32) byDelta:*(a1 + 89) animated:1 userInitiated:1 shouldUseFullDeltaForDockedMode:1 shouldPan:{v20, v22}];
    }

    else if ((*(a1 + 90) & 1) == 0)
    {
      [*(a1 + 40) zoomFactor];
      v5 = v4;
      [*(a1 + 32) offsetIgnoringValidOffsetConstraintsByPanningToRect:*(a1 + 56) zoomFacotr:{*(a1 + 64), *(a1 + 72), *(a1 + 80), v4}];
      v7 = v6;
      v9 = v8;
      [*(a1 + 32) offsetByPanningToRect:*(a1 + 56) zoomFactor:{*(a1 + 64), *(a1 + 72), *(a1 + 80), v5}];
      v11 = v10;
      v13 = v12;
      [*(a1 + 32) handleAdditionalPanOffsetFromOriginalOffset:1 validOffset:v7 useFullDelta:{v9, v10, v12}];
      [*(a1 + 40) setZoomPanOffset:{v11, v13}];
      v14 = *(a1 + 32);
      v15 = *(a1 + 89);
      v16 = *(a1 + 48);

      return [v14 updateZoomFactor:v15 panOffset:v16 animated:v5 animationDuration:v11 completion:{v13, -1.0}];
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    v23 = *(result + 2);

    return v23();
  }

  return result;
}

- (void)zoomInToPoint:(CGPoint)a3 withZoomFactor:(double)a4 animated:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  x = a3.x;
  v10 = [(ZWRootViewController *)self activeLensViewController];
  v11 = [(ZWRootViewController *)self fullscreenLensViewController];

  if (v10 == v11)
  {
    v26 = [(ZWRootViewController *)self view];
    [v26 frame];
    AX_CGRectGetCenter();
    v28 = v27;
    v30 = v29;

    [(ZWRootViewController *)self setZoomPanOffset:x - v28, y - v30];
    [(ZWRootViewController *)self setZoomFactorRespectingUserPreferredMaximumZoom:a4];
    v32 = v31;
    v33 = +[AXSettings sharedInstance];
    v34 = [v33 zoomCurrentLensEffect];

    v35 = [(ZWRootViewController *)self activeLensViewController];
    [(ZWRootViewController *)self zoomPanOffset];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = __62__ZWRootViewController_zoomInToPoint_withZoomFactor_animated___block_invoke;
    v54[3] = &unk_78D00;
    v54[4] = self;
    [v35 updateStandbyMode:0 zoomFactor:v34 panOffset:v5 lensEffect:v54 animated:v32 completion:{v36, v37}];

    [(ZWRootViewController *)self _updateZoomListeners];
    v38 = +[ZWCoalescedSettings sharedInstance];
    [v38 setZoomInStandby:0];

    v39 = [(ZWRootViewController *)self containerView];
    v40 = [(ZWRootViewController *)self minimapView];
    [v39 bringSubviewToFront:v40];

    v41 = [(ZWRootViewController *)self kbContext];
    [v41 keyboardFrame];
    [(ZWRootViewController *)self _updateKeyboardFrame:?];
  }

  else
  {
    v12 = [(ZWRootViewController *)self activeLensViewController];
    v13 = [(ZWRootViewController *)self pipLensViewController];

    if (v12 == v13)
    {
      v42 = [(ZWRootViewController *)self view];
      [v42 zw_convertRectToScreenCoordinates:{x, y, 2.0, 2.0}];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;

      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = __62__ZWRootViewController_zoomInToPoint_withZoomFactor_animated___block_invoke_2;
      v52[3] = &unk_793B0;
      v52[4] = self;
      *&v52[5] = v44;
      *&v52[6] = v46;
      *&v52[7] = v48;
      *&v52[8] = v50;
      *&v52[9] = a4;
      v53 = v5;
      [(ZWRootViewController *)self _focusLensOnRect:0 panLensContent:1 recentreLens:0 animated:v52 completion:v44, v46, v48, v50];
    }

    else
    {
      v14 = [(ZWRootViewController *)self activeLensViewController];
      v15 = [(ZWRootViewController *)self dockedLensViewController];

      if (v14 == v15)
      {
        [(ZWRootViewController *)self _physicalScreenPointForVirtualScreenPoint:x, y];
        v17 = v16;
        v19 = v18;
        v20 = [(ZWRootViewController *)self dockedLensViewController];
        [v20 moveDockedZoomToPhysicalScreenPoint:0 animated:{v17, v19}];

        v21 = +[AXSettings sharedInstance];
        v22 = [v21 zoomCurrentLensEffect];

        v23 = [(ZWRootViewController *)self activeLensViewController];
        [(ZWRootViewController *)self zoomPanOffset];
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = __62__ZWRootViewController_zoomInToPoint_withZoomFactor_animated___block_invoke_4;
        v51[3] = &unk_78D00;
        v51[4] = self;
        [v23 updateStandbyMode:0 zoomFactor:v22 panOffset:1 lensEffect:v51 animated:a4 completion:{v24, v25}];
      }
    }
  }
}

id __62__ZWRootViewController_zoomInToPoint_withZoomFactor_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateSystemGestureDisablingAssertions];
  v2 = *(a1 + 32);

  return [v2 _updateMinimapStatus];
}

void __62__ZWRootViewController_zoomInToPoint_withZoomFactor_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  [v2 zw_convertRectFromScreenCoordinates:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [*(a1 + 32) activeLensViewController];
  [v11 offsetByPanningToRect:v4 zoomFactor:{v6, v8, v10, *(a1 + 72)}];
  v13 = v12;
  v15 = v14;

  [*(a1 + 32) setZoomPanOffset:{v13, v15}];
  v16 = +[AXSettings sharedInstance];
  v17 = [v16 zoomCurrentLensEffect];

  v18 = [*(a1 + 32) activeLensViewController];
  v19 = *(a1 + 72);
  [*(a1 + 32) zoomPanOffset];
  v20 = *(a1 + 80);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __62__ZWRootViewController_zoomInToPoint_withZoomFactor_animated___block_invoke_3;
  v23[3] = &unk_78D00;
  v23[4] = *(a1 + 32);
  [v18 updateStandbyMode:0 zoomFactor:v17 panOffset:v20 lensEffect:v23 animated:v19 completion:{v21, v22}];
}

id __62__ZWRootViewController_zoomInToPoint_withZoomFactor_animated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _updateSystemGestureDisablingAssertions];
  v2 = *(a1 + 32);

  return [v2 _updateMinimapStatus];
}

id __62__ZWRootViewController_zoomInToPoint_withZoomFactor_animated___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _updateSystemGestureDisablingAssertions];
  v2 = *(a1 + 32);

  return [v2 _updateMinimapStatus];
}

- (void)_initializeEventUIContext:(id *)a3
{
  v5 = [(ZWRootViewController *)self screen];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  v10 = [(ZWRootViewController *)self interfaceOrientation];
  v11 = [(ZWRootViewController *)self cachedValuesSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __50__ZWRootViewController__initializeEventUIContext___block_invoke;
  block[3] = &unk_79068;
  block[6] = v7;
  block[7] = v9;
  block[8] = v10;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(v11, block);
}

void __50__ZWRootViewController__initializeEventUIContext___block_invoke(uint64_t a1)
{
  *(*(a1 + 40) + 16) = *(a1 + 48);
  v2 = *(a1 + 40);
  *v2 = *(a1 + 64);
  *(v2 + 8) = 0;
  origin = CGRectNull.origin;
  size = CGRectNull.size;
  *(v2 + 32) = CGRectNull.origin;
  *(v2 + 48) = size;
  v5 = *(a1 + 40);
  *(v5 + 64) = origin;
  *(v5 + 80) = size;
  v6 = *(a1 + 40);
  *(v6 + 96) = origin;
  *(v6 + 112) = size;
  v7 = *(a1 + 40);
  *(v7 + 208) = origin;
  *(v7 + 224) = size;
  v8 = *(a1 + 40);
  *(v8 + 240) = origin;
  *(v8 + 256) = size;
  v9 = *(a1 + 40);
  *(v9 + 176) = origin;
  *(v9 + 192) = size;
  v10 = *(a1 + 40);
  *(v10 + 144) = origin;
  *(v10 + 160) = size;
  *(*(a1 + 40) + 136) = 0;
  v11 = +[ZWCoalescedSettings sharedInstance];
  [v11 zoomFactor];
  *(*(a1 + 40) + 128) = v12;

  v13 = *(a1 + 40);
  v14 = +[ZWCoalescedSettings sharedInstance];
  [v14 zoomPanOffset];
  *(v13 + 280) = v15;
  *(v13 + 288) = v16;

  *(*(a1 + 40) + 296) &= ~1u;
  *(*(a1 + 40) + 296) &= ~2u;
  *(*(a1 + 40) + 296) &= ~8u;
  v17 = +[AXSettings sharedInstance];
  v18 = [v17 zoomCurrentLensMode];
  if ([v18 isEqualToString:AXZoomLensModeFullscreen])
  {
    v19 = 16;
  }

  else
  {
    v19 = 0;
  }

  *(*(a1 + 40) + 296) = *(*(a1 + 40) + 296) & 0xFFEF | v19;

  v20 = +[AXSettings sharedInstance];
  v21 = [v20 zoomCurrentLensMode];
  if ([v21 isEqualToString:AXZoomLensModeWindowAnchored])
  {
    v22 = 32;
  }

  else
  {
    v22 = 0;
  }

  *(*(a1 + 40) + 296) = *(*(a1 + 40) + 296) & 0xFFDF | v22;

  v23 = [*(a1 + 32) dockedLensViewController];
  if ([v23 zoomRegionVisible])
  {
    v24 = 64;
  }

  else
  {
    v24 = 0;
  }

  *(*(a1 + 40) + 296) = *(*(a1 + 40) + 296) & 0xFFBF | v24;

  *(*(a1 + 40) + 296) &= ~0x80u;
  *(*(a1 + 40) + 296) &= ~0x100u;
  v25 = +[AXSettings sharedInstance];
  v29 = [v25 zoomPreferredCurrentDockPosition];

  if ([v29 isEqualToString:AXZoomDockPositionLeft])
  {
    v26 = *(a1 + 40);
    v27 = 1;
LABEL_16:
    *(v26 + 272) = v27;
    goto LABEL_17;
  }

  if ([v29 isEqualToString:AXZoomDockPositionRight])
  {
    v26 = *(a1 + 40);
    v27 = 2;
    goto LABEL_16;
  }

  v28 = [v29 isEqualToString:AXZoomDockPositionBottom];
  v26 = *(a1 + 40);
  if (v28)
  {
    v27 = 3;
    goto LABEL_16;
  }

  *(v26 + 272) = 0;
LABEL_17:
  *(v26 + 296) &= ~0x1000u;
  *(*(a1 + 40) + 296) &= ~0x2000u;
  *(*(a1 + 40) + 296) &= ~0x4000u;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 != &ZWZoomItemObserverContextID)
  {
    goto LABEL_2;
  }

  v13 = [(ZWRootViewController *)self activeLensViewController];

  if (v13 == v11)
  {
    if (([v10 isEqualToString:@"view.center"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"lensZoomView.center") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"lensZoomView.bounds") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"zoomPanOffset") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"zoomFactor") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"zoomRegionFrame") & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"zoomRegionVisible"))
    {
      v16 = [(ZWRootViewController *)self cachedValuesSerialQueue];
      v17 = v16;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = __71__ZWRootViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v25[3] = &unk_78D00;
      v25[4] = self;
      v18 = v25;
      goto LABEL_19;
    }

    if ([v10 isEqualToString:@"userIsInteractingWithLens"])
    {
      v16 = [(ZWRootViewController *)self cachedValuesSerialQueue];
      v17 = v16;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = __71__ZWRootViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      v24[3] = &unk_78D00;
      v24[4] = self;
      v18 = v24;
      goto LABEL_19;
    }

    if ([v10 isEqualToString:@"inStandbyMode"])
    {
      v16 = [(ZWRootViewController *)self cachedValuesSerialQueue];
      v17 = v16;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = __71__ZWRootViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
      v23[3] = &unk_78D00;
      v23[4] = self;
      v18 = v23;
      goto LABEL_19;
    }
  }

  else
  {
    v14 = [(ZWRootViewController *)self slugViewController];

    if (v14 == v11)
    {
      if (([v10 isEqualToString:@"view.center"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"slugRingView.bounds"))
      {
        v16 = [(ZWRootViewController *)self cachedValuesSerialQueue];
        v17 = v16;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __71__ZWRootViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_4;
        block[3] = &unk_78D00;
        block[4] = self;
        v18 = block;
        goto LABEL_19;
      }

      if ([v10 isEqualToString:@"userIsInteractingWithSlug"])
      {
        v16 = [(ZWRootViewController *)self cachedValuesSerialQueue];
        v17 = v16;
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = __71__ZWRootViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_5;
        v21[3] = &unk_78D00;
        v21[4] = self;
        v18 = v21;
        goto LABEL_19;
      }
    }

    else
    {
      v15 = [(ZWRootViewController *)self menuViewController];

      if (v15 == v11 && [v10 isEqualToString:@"userIsInteractingWithMenu"])
      {
        v16 = [(ZWRootViewController *)self cachedValuesSerialQueue];
        v17 = v16;
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = __71__ZWRootViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_6;
        v20[3] = &unk_78D00;
        v20[4] = self;
        v18 = v20;
LABEL_19:
        dispatch_sync(v16, v18);

        goto LABEL_20;
      }
    }
  }

LABEL_2:
  v19.receiver = self;
  v19.super_class = ZWRootViewController;
  [(ZWRootViewController *)&v19 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_20:
}

void __71__ZWRootViewController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 10;
  v4 = [v2 activeLensViewController];
  v5 = [v4 lensZoomView];
  [v5 zw_convertBoundsToScreenCoordinates];
  v3[4] = v6;
  v3[5] = v7;
  v3[6] = v8;
  v3[7] = v9;

  v10 = [*(a1 + 32) activeLensViewController];
  v11 = [*(a1 + 32) dockedLensViewController];

  if (v10 == v11)
  {
    v12 = [*(a1 + 32) dockedLensViewController];
    [v12 screenShift];
    *(*(a1 + 32) + 216) = v13;

    v14 = *(a1 + 32);
    v15 = v14 + 10;
    v16 = [v14 dockedLensViewController];
    v17 = [v16 dockedLensView];
    [v17 frame];
    v15[18] = v18;
    v15[19] = v19;
    v15[20] = v20;
    v15[21] = v21;

    v22 = *(a1 + 32);
    v23 = v22 + 10;
    v24 = [v22 dockedLensViewController];
    [v24 zoomRegionFrame];
    v23[22] = v25;
    v23[23] = v26;
    v23[24] = v27;
    v23[25] = v28;

    v29 = *(a1 + 32);
    v30 = v29 + 10;
    v31 = [v29 dockedLensViewController];
    v32 = [v31 toggleZoomRegionButton];
    [v32 frame];
    v30[26] = v33;
    v30[27] = v34;
    v30[28] = v35;
    v30[29] = v36;

    v37 = *(a1 + 32);
    v38 = v37 + 10;
    v39 = [v37 dockedLensViewController];
    [v39 frameForResizeDrag];
    v38[30] = v40;
    v38[31] = v41;
    v38[32] = v42;
    v38[33] = v43;

    v45 = [*(a1 + 32) dockedLensViewController];
    if ([v45 zoomRegionVisible])
    {
      v44 = 64;
    }

    else
    {
      v44 = 0;
    }

    *(*(a1 + 32) + 376) = *(*(a1 + 32) + 376) & 0xFFBF | v44;
  }
}

void __71__ZWRootViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) activeLensViewController];
  *(*(a1 + 32) + 376) = *(*(a1 + 32) + 376) & 0xFFFE | [v2 userIsInteractingWithLens];
}

void __71__ZWRootViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) activeLensViewController];
  if ([v3 inStandbyMode])
  {
    v2 = 128;
  }

  else
  {
    v2 = 0;
  }

  *(*(a1 + 32) + 376) = *(*(a1 + 32) + 376) & 0xFF7F | v2;
}

void __71__ZWRootViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1 + 10;
  v7 = [v1 slugViewController];
  [v7 slugRingViewBoundsInScreenCoordinates];
  v2[8] = v3;
  v2[9] = v4;
  v2[10] = v5;
  v2[11] = v6;
}

void __71__ZWRootViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_5(uint64_t a1)
{
  v3 = [*(a1 + 32) slugViewController];
  if ([v3 userIsInteractingWithSlug])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(*(a1 + 32) + 376) = *(*(a1 + 32) + 376) & 0xFFFD | v2;
}

void __71__ZWRootViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_6(uint64_t a1)
{
  v3 = [*(a1 + 32) menuViewController];
  if ([v3 userIsInteractingWithMenu])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(*(a1 + 32) + 376) = *(*(a1 + 32) + 376) & 0xFFF7 | v2;
}

- (void)_disableZoomWindowHitTesting
{
  v4 = [(ZWRootViewController *)self view];
  v2 = [v4 window];
  v3 = [v2 layer];
  [v3 setAllowsHitTesting:0];
}

- (void)_enableZoomWindowHitTesting
{
  v4 = [(ZWRootViewController *)self view];
  v2 = [v4 window];
  v3 = [v2 layer];
  [v3 setAllowsHitTesting:1];
}

- (void)_transitionToLensForMode:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v18 = a3;
  v8 = a5;
  if ([v18 isEqualToString:AXZoomLensModeFullscreen])
  {
    v9 = [(ZWRootViewController *)self fullscreenLensViewController];
LABEL_7:
    v10 = v9;
    goto LABEL_8;
  }

  if ([v18 isEqualToString:AXZoomLensModeWindow])
  {
    v9 = [(ZWRootViewController *)self pipLensViewController];
    goto LABEL_7;
  }

  if ([v18 isEqualToString:AXZoomLensModeWindowAnchored])
  {
    v9 = [(ZWRootViewController *)self dockedLensViewController];
    goto LABEL_7;
  }

  v17 = v18;
  _AXAssert();
  v10 = 0;
LABEL_8:
  v11 = +[AXSettings sharedInstance];
  v12 = [v11 zoomPreferredCurrentLensMode];
  v13 = [v10 identifier];
  v14 = [v12 isEqualToString:v13];

  if ((v14 & 1) == 0)
  {
    v15 = [v10 identifier];
    v16 = +[AXSettings sharedInstance];
    [v16 setZoomPreferredCurrentLensMode:v15];
  }

  [(ZWRootViewController *)self _transitionToLens:v10 animated:v6 completion:v8];
}

- (void)_transitionToLens:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (([(ZWRootViewController *)self isViewLoaded]& 1) != 0)
  {
    [(ZWRootViewController *)self _setPIPLensResizingEnabled:0];
    [(ZWRootViewController *)self _setDockResizingEnabled:0];
    if (![(ZWRootViewController *)self isActiveLensTransitioning])
    {
      [(ZWRootViewController *)self setActiveLensTransitioning:1];
      v10 = [(ZWRootViewController *)self activeLensViewController];
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = __62__ZWRootViewController__transitionToLens_animated_completion___block_invoke;
      v54[3] = &unk_79018;
      v54[4] = self;
      v55 = v9;
      v11 = objc_retainBlock(v54);
      v12 = [(ZWRootViewController *)self pipLensViewController];

      if (v12 != v8)
      {
        [(ZWRootViewController *)self _removePIPSystemGestureDisablingAssertions];
      }

      v13 = [(ZWRootViewController *)self fullscreenLensViewController];

      if (v13 != v8)
      {
        [(ZWRootViewController *)self _removeFullscreenSystemGestureDisablingAssertions];
      }

      v14 = [(ZWRootViewController *)self view];
      [v14 setUserInteractionEnabled:0];

      if (v10 == v8)
      {
        (v11[2])(v11);
      }

      else
      {
        v15 = [(ZWRootViewController *)self pipLensViewController];

        if (v10 == v15)
        {
          [(ZWRootViewController *)self _removePIPSystemGestureDisablingAssertions];
        }

        v16 = [(ZWRootViewController *)self fullscreenLensViewController];

        if (v10 == v16)
        {
          [(ZWRootViewController *)self _removeFullscreenSystemGestureDisablingAssertions];
        }

        v17 = +[AXSettings sharedInstance];
        v18 = [v17 zoomCurrentLensEffect];

        y = CGPointZero.y;
        [(ZWRootViewController *)self zoomFactor];
        [(ZWRootViewController *)self setZoomFactorRespectingUserPreferredMaximumZoom:?];
        v21 = v20;
        v22 = +[ZWCoalescedSettings sharedInstance];
        v23 = [v22 zoomInStandby];

        [(ZWRootViewController *)self setZoomPanOffset:CGPointZero.x, y];
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = __62__ZWRootViewController__transitionToLens_animated_completion___block_invoke_3;
        v44[3] = &unk_79400;
        v44[4] = self;
        v45 = v8;
        v52 = v23;
        v49 = v21;
        x = CGPointZero.x;
        v51 = y;
        v24 = v18;
        v46 = v24;
        v53 = v6;
        v25 = v10;
        v47 = v25;
        v48 = v11;
        v26 = objc_retainBlock(v44);
        v27 = v26;
        if (v25)
        {
          [(ZWRootViewController *)self _endObservingValuesForLens:v25];
          v28 = AXZoomLensEffectNone;
          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = __62__ZWRootViewController__transitionToLens_animated_completion___block_invoke_7;
          v36[3] = &unk_79428;
          v37 = v25;
          v40 = v21;
          v41 = CGPointZero.x;
          v42 = y;
          v38 = v24;
          v43 = v6;
          v39 = v27;
          [v37 updateLensEffect:v28 animated:v6 completion:v36];
        }

        else
        {
          (v26[2])(v26);
        }
      }

      goto LABEL_26;
    }
  }

  else
  {
    v29 = +[AXSubsystemZoom sharedInstance];
    v30 = [v29 ignoreLogging];

    if ((v30 & 1) == 0)
    {
      v31 = +[AXSubsystemZoom identifier];
      v32 = AXLoggerForFacility();

      v33 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = AXColorizeFormatLog();
        v35 = _AXStringForArgs();
        if (os_log_type_enabled(v32, v33))
        {
          *buf = 138543362;
          v57 = v35;
          _os_log_impl(&dword_0, v32, v33, "%{public}@", buf, 0xCu);
        }
      }
    }
  }

  if (v9)
  {
    v9[2](v9);
  }

LABEL_26:
}

void __62__ZWRootViewController__transitionToLens_animated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1152);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __62__ZWRootViewController__transitionToLens_animated_completion___block_invoke_2;
  block[3] = &unk_78D00;
  block[4] = v2;
  dispatch_sync(v3, block);
  v4 = [*(a1 + 32) containerView];
  v5 = [*(a1 + 32) slugViewController];
  v6 = [v5 view];
  [v4 bringSubviewToFront:v6];

  v7 = [*(a1 + 32) containerView];
  v8 = [*(a1 + 32) fakeLaserVC];
  v9 = [v8 view];
  [v7 bringSubviewToFront:v9];

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }

  v11 = [*(a1 + 32) view];
  [v11 setUserInteractionEnabled:1];

  [*(a1 + 32) setActiveLensTransitioning:0];
  v12 = [*(a1 + 32) activeZoomMode];
  v13 = +[AXSettings sharedInstance];
  [v13 setZoomCurrentLensMode:v12];

  v14 = [*(a1 + 32) lensTransitionUnitTestCallback];

  if (v14)
  {
    v15 = [*(a1 + 32) lensTransitionUnitTestCallback];
    v15[2](v15, *(a1 + 32));
  }
}

void __62__ZWRootViewController__transitionToLens_animated_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) activeLensViewController];
  v3 = [*(a1 + 32) fullscreenLensViewController];
  *(*(a1 + 32) + 376) = *(*(a1 + 32) + 376) & 0xFFEF | (16 * (v2 == v3));

  v4 = [*(a1 + 32) activeLensViewController];
  v5 = [*(a1 + 32) dockedLensViewController];
  *(*(a1 + 32) + 376) = *(*(a1 + 32) + 376) & 0xFFDF | (32 * (v4 == v5));

  v7 = [*(a1 + 32) dockedLensViewController];
  if ([v7 zoomRegionVisible])
  {
    v6 = 64;
  }

  else
  {
    v6 = 0;
  }

  *(*(a1 + 32) + 376) = *(*(a1 + 32) + 376) & 0xFFBF | v6;
}

void __62__ZWRootViewController__transitionToLens_animated_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setActiveLensViewController:*(a1 + 40)];
  v2 = *(a1 + 40);
  if (v2)
  {
    if (([v2 inStandbyMode] & 1) == 0)
    {
      _AXAssert();
    }

    [*(a1 + 32) _beginObservingValuesForLens:*(a1 + 40)];
    [*(a1 + 32) addChildViewController:*(a1 + 40)];
    v3 = [*(a1 + 32) containerView];
    v4 = [*(a1 + 40) view];
    [v3 addSubview:v4];

    v5 = [*(a1 + 32) containerView];
    v6 = [*(a1 + 40) view];
    [v5 sendSubviewToBack:v6];

    [*(a1 + 32) _applyInitialConstraintsForLensViewController:*(a1 + 40)];
    [*(a1 + 40) didMoveToParentViewController:*(a1 + 32)];
    v7 = [*(a1 + 32) cachedValuesSerialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __62__ZWRootViewController__transitionToLens_animated_completion___block_invoke_4;
    block[3] = &unk_79170;
    v8 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v24 = v8;
    dispatch_sync(v7, block);

    v9 = *(a1 + 96);
    v10 = *(a1 + 72);
    v11 = *(a1 + 48);
    v12 = *(a1 + 97);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __62__ZWRootViewController__transitionToLens_animated_completion___block_invoke_5;
    v19[3] = &unk_793D8;
    v18 = *(a1 + 32);
    v22 = v9;
    v13 = *(&v18 + 1);
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    v20 = v18;
    v21 = v16;
    [v13 updateStandbyMode:v9 zoomFactor:v11 panOffset:v12 lensEffect:v19 animated:v10 completion:{*(a1 + 80), *(a1 + 88)}];
  }

  else
  {
    v17 = *(*(a1 + 64) + 16);

    v17();
  }
}

void __62__ZWRootViewController__transitionToLens_animated_completion___block_invoke_4(uint64_t a1)
{
  v2 = (*(a1 + 32) + 80);
  v3 = [*(a1 + 40) lensZoomView];
  [v3 zw_convertBoundsToScreenCoordinates];
  v2[4] = v4;
  v2[5] = v5;
  v2[6] = v6;
  v2[7] = v7;

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) dockedLensViewController];

  if (v8 == v9)
  {
    v10 = [*(a1 + 32) dockedLensViewController];
    [v10 screenShift];
    *(*(a1 + 32) + 216) = v11;

    v12 = *(a1 + 32);
    v13 = v12 + 10;
    v14 = [v12 dockedLensViewController];
    v15 = [v14 dockedLensView];
    [v15 frame];
    v13[18] = v16;
    v13[19] = v17;
    v13[20] = v18;
    v13[21] = v19;

    v20 = *(a1 + 32);
    v21 = v20 + 10;
    v22 = [v20 dockedLensViewController];
    [v22 zoomRegionFrame];
    v21[22] = v23;
    v21[23] = v24;
    v21[24] = v25;
    v21[25] = v26;

    v27 = [*(a1 + 32) dockedLensViewController];
    if ([v27 zoomRegionVisible])
    {
      v28 = 64;
    }

    else
    {
      v28 = 0;
    }

    *(*(a1 + 32) + 376) = *(*(a1 + 32) + 376) & 0xFFBF | v28;

    v29 = *(a1 + 32);
    v30 = v29 + 10;
    v31 = [v29 dockedLensViewController];
    v32 = [v31 toggleZoomRegionButton];
    [v32 frame];
    v30[26] = v33;
    v30[27] = v34;
    v30[28] = v35;
    v30[29] = v36;

    v37 = *(a1 + 32);
    v38 = v37 + 10;
    v43 = [v37 dockedLensViewController];
    [v43 frameForResizeDrag];
    v38[30] = v39;
    v38[31] = v40;
    v38[32] = v41;
    v38[33] = v42;
  }
}

void __62__ZWRootViewController__transitionToLens_animated_completion___block_invoke_5(uint64_t a1)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  AXPerformBlockAsynchronouslyOnMainThread();
  (*(*(a1 + 56) + 16))(*(a1 + 56), v2, v3, v4, v5);
}

void __62__ZWRootViewController__transitionToLens_animated_completion___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) _removeAllSystemGestureDisablingAssertions];
  if ((*(a1 + 56) & 1) == 0)
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) pipLensViewController];
    v4 = v3;
    if (v2 == v3)
    {
      v5 = *(a1 + 48);
      v6 = [*(a1 + 32) pipLensViewController];

      if (v5 != v6)
      {
        v7 = [*(a1 + 32) disableNotificationCenterAssertionPIPLens];

        if (v7)
        {
          _AXAssert();
        }

        v8 = [*(a1 + 32) disableControlCenterAssertionPIPLens];

        if (v8)
        {
          _AXAssert();
        }

        [*(a1 + 32) _updateSystemGestureDisablingAssertions];
      }
    }

    else
    {
    }
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) fullscreenLensViewController];
    if (v9 == v10)
    {
      v11 = *(a1 + 48);
      v16 = v10;
      v12 = [*(a1 + 32) fullscreenLensViewController];

      if (v11 != v12)
      {
        v13 = [*(a1 + 32) disableNotificationCenterAssertionFullscreenLens];

        if (v13)
        {
          _AXAssert();
        }

        v14 = [*(a1 + 32) disableControlCenterAssertionFullscreenLens];

        if (v14)
        {
          _AXAssert();
        }

        v15 = *(a1 + 32);

        [v15 _updateSystemGestureDisablingAssertions];
      }
    }

    else
    {
    }
  }
}

void __62__ZWRootViewController__transitionToLens_animated_completion___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 80);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __62__ZWRootViewController__transitionToLens_animated_completion___block_invoke_8;
  v6[3] = &unk_79018;
  v7 = v3;
  v8 = *(a1 + 48);
  [v7 updateStandbyMode:1 zoomFactor:v4 panOffset:v5 lensEffect:v6 animated:v2 completion:{*(a1 + 64), *(a1 + 72)}];
}

uint64_t __62__ZWRootViewController__transitionToLens_animated_completion___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) willMoveToParentViewController:0];
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  [*(a1 + 32) removeFromParentViewController];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)_beginObservingValuesForLens:(id)a3
{
  v6 = a3;
  [v6 addObserver:self forKeyPath:@"lensZoomView.bounds" options:1 context:&ZWZoomItemObserverContextID];
  [v6 addObserver:self forKeyPath:@"view.center" options:1 context:&ZWZoomItemObserverContextID];
  [v6 addObserver:self forKeyPath:@"lensZoomView.center" options:1 context:&ZWZoomItemObserverContextID];
  [v6 addObserver:self forKeyPath:@"userIsInteractingWithLens" options:1 context:&ZWZoomItemObserverContextID];
  [v6 addObserver:self forKeyPath:@"inStandbyMode" options:1 context:&ZWZoomItemObserverContextID];
  [v6 addObserver:self forKeyPath:@"zoomPanOffset" options:1 context:&ZWZoomItemObserverContextID];
  [v6 addObserver:self forKeyPath:@"zoomFactor" options:1 context:&ZWZoomItemObserverContextID];
  v4 = [(ZWRootViewController *)self dockedLensViewController];

  v5 = v6;
  if (v4 == v6)
  {
    [v6 addObserver:self forKeyPath:@"zoomRegionFrame" options:1 context:&ZWZoomItemObserverContextID];
    [v6 addObserver:self forKeyPath:@"zoomRegionVisible" options:1 context:&ZWZoomItemObserverContextID];
    v5 = v6;
  }
}

- (void)_endObservingValuesForLens:(id)a3
{
  v6 = a3;
  [v6 removeObserver:self forKeyPath:@"lensZoomView.bounds" context:&ZWZoomItemObserverContextID];
  [v6 removeObserver:self forKeyPath:@"view.center" context:&ZWZoomItemObserverContextID];
  [v6 removeObserver:self forKeyPath:@"lensZoomView.center" context:&ZWZoomItemObserverContextID];
  [v6 removeObserver:self forKeyPath:@"userIsInteractingWithLens" context:&ZWZoomItemObserverContextID];
  [v6 removeObserver:self forKeyPath:@"inStandbyMode" context:&ZWZoomItemObserverContextID];
  [v6 removeObserver:self forKeyPath:@"zoomPanOffset" context:&ZWZoomItemObserverContextID];
  [v6 removeObserver:self forKeyPath:@"zoomFactor" context:&ZWZoomItemObserverContextID];
  v4 = [(ZWRootViewController *)self dockedLensViewController];

  v5 = v6;
  if (v4 == v6)
  {
    [v6 removeObserver:self forKeyPath:@"zoomRegionFrame" context:&ZWZoomItemObserverContextID];
    [v6 removeObserver:self forKeyPath:@"zoomRegionVisible" context:&ZWZoomItemObserverContextID];
    v5 = v6;
  }
}

- (void)_applyInitialConstraintsForLensViewController:(id)a3
{
  v44 = a3;
  v4 = [(ZWRootViewController *)self containerView];
  v5 = [(ZWRootViewController *)self pipLensViewController];

  v6 = [v44 view];
  if (v5 == v44)
  {
    v13 = [v44 lensZoomView];
    v14 = [v44 lensChromeView];
    v15 = AXResistAllCompressingAndStretching[0];
    v16 = AXResistAllCompressingAndStretching[1];
    v17 = AXResistAllCompressingAndStretching[2];
    v18 = AXResistAllCompressingAndStretching[3];
    LODWORD(v19) = AXResistAllCompressingAndStretching[0];
    LODWORD(v20) = v16;
    LODWORD(v21) = v17;
    LODWORD(v22) = v18;
    [v6 ax_setContentHuggingAndCompressionResistance:{v19, v20, v21, v22}];
    LODWORD(v23) = v15;
    LODWORD(v24) = v16;
    LODWORD(v25) = v17;
    LODWORD(v26) = v18;
    [v13 ax_setContentHuggingAndCompressionResistance:{v23, v24, v25, v26}];
    LODWORD(v27) = v15;
    LODWORD(v28) = v16;
    LODWORD(v29) = v17;
    LODWORD(v30) = v18;
    [v14 ax_setContentHuggingAndCompressionResistance:{v27, v28, v29, v30}];
    v31 = [NSLayoutConstraint constraintWithItem:v14 attribute:3 relatedBy:1 toItem:v4 attribute:3 multiplier:1.0 constant:0.0];
    [v4 addConstraint:v31];

    v32 = [NSLayoutConstraint constraintWithItem:v14 attribute:4 relatedBy:-1 toItem:v4 attribute:4 multiplier:1.0 constant:0.0];
    [v4 addConstraint:v32];

    v33 = [NSLayoutConstraint constraintWithItem:v14 attribute:1 relatedBy:1 toItem:v4 attribute:1 multiplier:1.0 constant:0.0];
    [v4 addConstraint:v33];

    v34 = [NSLayoutConstraint constraintWithItem:v14 attribute:2 relatedBy:-1 toItem:v4 attribute:2 multiplier:1.0 constant:0.0];
    [v4 addConstraint:v34];

    v35 = [NSLayoutConstraint constraintWithItem:v6 attribute:1 relatedBy:0 toItem:v4 attribute:1 multiplier:1.0 constant:0.0];
    LODWORD(v36) = 1148780544;
    [v35 setPriority:v36];
    [(ZWRootViewController *)self setLensDragXConstraint:v35];
    [v4 addConstraint:v35];
    v37 = [NSLayoutConstraint constraintWithItem:v6 attribute:3 relatedBy:0 toItem:v4 attribute:3 multiplier:1.0 constant:0.0];

    LODWORD(v38) = 1148780544;
    [v37 setPriority:v38];
    [(ZWRootViewController *)self setLensDragYConstraint:v37];
    [v4 addConstraint:v37];
    v39 = [(ZWRootViewController *)self lensWidthConstraint];

    if (!v39)
    {
      v40 = [NSLayoutConstraint constraintWithItem:v13 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
      [(ZWRootViewController *)self setLensWidthConstraint:v40];

      v41 = [(ZWRootViewController *)self lensWidthConstraint];
      [v6 addConstraint:v41];

      v42 = [NSLayoutConstraint constraintWithItem:v13 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
      [(ZWRootViewController *)self setLensHeightConstraint:v42];

      v43 = [(ZWRootViewController *)self lensHeightConstraint];
      [v6 addConstraint:v43];
    }

    [(ZWRootViewController *)self _updateLensLayout];
  }

  else
  {
    if (!v6 || !v4)
    {
      _AXAssert();
    }

    v7 = ZWGetTestingScreenSize();
    HIDWORD(v9) = HIDWORD(CGSizeZero.width);
    height = CGSizeZero.height;
    if (v7 == CGSizeZero.width && v8 == height)
    {
      LODWORD(v7) = AXResistAllCompressingAndStretching[0];
      LODWORD(v8) = AXResistAllCompressingAndStretching[1];
      LODWORD(v9) = AXResistAllCompressingAndStretching[2];
      LODWORD(height) = AXResistAllCompressingAndStretching[3];
      [v6 ax_setContentHuggingAndCompressionResistance:{v7, v8, v9, height}];
      v12 = [v6 ax_pinConstraintsInAllDimensionsToView:v4];
    }
  }
}

- (void)setActiveLensViewController:(id)a3
{
  objc_storeStrong(&self->_activeLensViewController, a3);
  v4 = [(ZWRootViewController *)self menuViewController];
  [v4 lensModeDidChange];
}

- (void)_updateKeyboardFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  IsEmpty = CGRectIsEmpty(a3);
  v10 = IsEmpty;
  if (IsEmpty)
  {
    v11 = CGRectNull.origin.x;
    v12 = CGRectNull.origin.y;
    v13 = CGRectNull.size.width;
    v14 = CGRectNull.size.height;
  }

  else
  {
    v3 = [(ZWRootViewController *)self view];
    [v3 zw_convertRectFromScreenCoordinates:{x, y, width, height}];
  }

  [(ZWKeyboardContext *)self->_kbContext setKeyboardFrame:v11, v12, v13, v14];
  if (!v10)
  {
  }

  [(ZWKeyboardContext *)self->_kbContext setUserMovedKeyboardLens:0];
  v15 = +[AXSubsystemZoom sharedInstance];
  v16 = [v15 ignoreLogging];

  if ((v16 & 1) == 0)
  {
    v17 = +[AXSubsystemZoom identifier];
    v18 = AXLoggerForFacility();

    v19 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = AXColorizeFormatLog();
      [(ZWKeyboardContext *)self->_kbContext keyboardFrame];
      v29 = NSStringFromCGRect(v36);
      v21 = _AXStringForArgs();

      if (os_log_type_enabled(v18, v19))
      {
        *buf = 138543362;
        v35 = v21;
        _os_log_impl(&dword_0, v18, v19, "%{public}@", buf, 0xCu);
      }
    }
  }

  v22 = [(ZWRootViewController *)self activeLensViewController];
  if ([(ZWKeyboardContext *)self->_kbContext isKeyboardVisible]&& ![(ZWKeyboardContext *)self->_kbContext userMovedKeyboardLens])
  {
    if (([v22 inStandbyMode] & 1) == 0 && !-[ZWRootViewController _isZoomedToMinimum](self, "_isZoomedToMinimum"))
    {
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = __45__ZWRootViewController__updateKeyboardFrame___block_invoke;
      v33[3] = &unk_78D00;
      v33[4] = self;
      v25 = objc_retainBlock(v33);
      v26 = [(ZWKeyboardContext *)self->_kbContext zoomRepositionsForKeyboard];
      v27 = [(ZWRootViewController *)self pipLensViewController];

      if (v22 == v27)
      {
        if ([(ZWKeyboardContext *)self->_kbContext zoomRepositionsForKeyboard])
        {
          (v25[2])(v25);
        }
      }

      else if (v26)
      {
        v28 = [(ZWRootViewController *)self pipLensViewController];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = __45__ZWRootViewController__updateKeyboardFrame___block_invoke_2;
        v31[3] = &unk_78D50;
        v32 = v25;
        [(ZWRootViewController *)self _transitionToLens:v28 animated:0 completion:v31];
      }
    }
  }

  else
  {
    v23 = +[AXSettings sharedInstance];
    v24 = [v23 zoomPreferredCurrentLensMode];

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = __45__ZWRootViewController__updateKeyboardFrame___block_invoke_3;
    v30[3] = &unk_78D00;
    v30[4] = self;
    [(ZWRootViewController *)self _transitionToLensForMode:v24 animated:1 completion:v30];
  }

  [(ZWRootViewController *)self _updateSlugLayoutAnimated:1];
}

void __45__ZWRootViewController__updateKeyboardFrame___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateLensLayout];
  v2 = [*(a1 + 32) activeLensViewController];
  [v2 updateLensChromeAnimated:1];
}

void __45__ZWRootViewController__updateKeyboardFrame___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _updateLensLayout];
  v2 = [*(a1 + 32) activeLensViewController];
  [v2 updateLensChromeAnimated:1];
}

- (void)_updateLensLayout
{
  [(ZWRootViewController *)self _determineSuitableLensFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(ZWRootViewController *)self lensDragXConstraint];
  [v11 setConstant:v4];

  v12 = [(ZWRootViewController *)self lensDragYConstraint];
  [v12 setConstant:v6];

  v13 = [(ZWRootViewController *)self lensWidthConstraint];
  [v13 setConstant:v8];

  v14 = [(ZWRootViewController *)self lensHeightConstraint];
  [v14 setConstant:v10];
}

- (CGRect)_determineSuitableLensFrame
{
  v3 = [(ZWRootViewController *)self activeLensViewController];
  v4 = [(ZWRootViewController *)self fullscreenLensViewController];

  if (v3 == v4)
  {
    v33 = [(ZWRootViewController *)self containerView];
    [v33 bounds];
    v17 = v34;
    v19 = v35;
    v21 = v36;
    v23 = v37;

    v24 = 0.0;
  }

  else if ([(ZWKeyboardContext *)self->_kbContext isKeyboardVisible]&& ![(ZWKeyboardContext *)self->_kbContext userMovedKeyboardLens]&& [(ZWKeyboardContext *)self->_kbContext zoomRepositionsForKeyboard])
  {
    [(ZWKeyboardContext *)self->_kbContext keyboardFrame];
    v5 = [(ZWRootViewController *)self containerView];
    [v5 frame];
    AX_CGRectBySubtractingRect();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [v3 view];
    v15 = [v3 lensZoomView];
    [v14 convertRect:v15 toView:{v7, v9, v11, v13}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = -18.0;
  }

  else
  {
    v25 = +[ZWCoalescedSettings sharedInstance];
    [v25 zoomWindowFrame];
    v17 = v26;
    v19 = v27;
    v21 = v28;
    v23 = v29;

    v24 = -18.0;
    if (v21 == CGSizeZero.width && v23 == CGSizeZero.height)
    {
      [(ZWRootViewController *)self _lensDefaultSize];
      v21 = v31;
      v23 = v32;
    }
  }

  [(ZWRootViewController *)self _lensMinimumSize];
  v39 = v38;
  v41 = v40;
  [(ZWRootViewController *)self _lensMaximumSize];
  if (v21 >= v39)
  {
    v44 = v21;
  }

  else
  {
    v44 = v39;
  }

  if (v44 >= v42)
  {
    v45 = v42;
  }

  else
  {
    v45 = v44;
  }

  if (v23 >= v41)
  {
    v46 = v23;
  }

  else
  {
    v46 = v41;
  }

  if (v46 >= v43)
  {
    v47 = v43;
  }

  else
  {
    v47 = v46;
  }

  v48 = [(ZWRootViewController *)self containerView];
  [v48 bounds];
  v50 = v49 - v45;

  if (v17 >= v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = v17;
  }

  if (v24 >= v51)
  {
    v52 = v24;
  }

  else
  {
    v52 = v51;
  }

  v53 = [(ZWRootViewController *)self containerView];
  [v53 bounds];
  v55 = v54 - v47;

  if (v19 >= v55)
  {
    v56 = v55;
  }

  else
  {
    v56 = v19;
  }

  if (v24 >= v56)
  {
    v57 = v24;
  }

  else
  {
    v57 = v56;
  }

  v58 = v52;
  v59 = v57;
  v60 = v45;
  v61 = v47;
  result.size.height = v61;
  result.size.width = v60;
  result.origin.y = v59;
  result.origin.x = v58;
  return result;
}

- (CGSize)_lensDefaultSize
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 zoomPreferredCurrentLensMode];

  if ([v4 isEqualToString:AXZoomLensModeWindowAnchored])
  {
    [(ZWRootViewController *)self _lensMaximumSize];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    IsPad = AXDeviceIsPad();
    if (IsPad)
    {
      v8 = 300.0;
    }

    else
    {
      v8 = 200.0;
    }

    if (IsPad)
    {
      v6 = 400.0;
    }

    else
    {
      v6 = 320.0;
    }
  }

  v10 = v6;
  v11 = v8;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)_lensMinimumSize
{
  v3 = [(ZWRootViewController *)self activeLensViewController];
  v4 = [(ZWRootViewController *)self dockedLensViewController];

  v5 = 90.0;
  v6 = 90.0;
  if (v3 == v4)
  {
    v7 = [(ZWRootViewController *)self dockedLensViewController];
    if ([v7 dockPosition])
    {
      v8 = [(ZWRootViewController *)self dockedLensViewController];
      v9 = [v8 dockPosition];

      if (v9 != &dword_0 + 3)
      {
        v10 = [(ZWRootViewController *)self dockedLensViewController];
        v11 = [v10 view];
        [v11 bounds];
        v5 = v12 * 0.1;
        v13 = [(ZWRootViewController *)self dockedLensViewController];
        v14 = [v13 view];
        [v14 bounds];
        v6 = v15;
LABEL_7:

        goto LABEL_8;
      }
    }

    else
    {
    }

    v10 = [(ZWRootViewController *)self dockedLensViewController];
    v11 = [v10 view];
    [v11 bounds];
    v5 = v16;
    v13 = [(ZWRootViewController *)self dockedLensViewController];
    v14 = [v13 view];
    [v14 bounds];
    v6 = v17 * 0.1;
    goto LABEL_7;
  }

LABEL_8:
  v18 = v5;
  v19 = v6;
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGSize)_lensMaximumSize
{
  v3 = [(ZWRootViewController *)self activeLensViewController];
  v4 = [(ZWRootViewController *)self dockedLensViewController];

  if (v3 == v4)
  {
    v7 = [(ZWRootViewController *)self dockedLensViewController];
    if ([v7 dockPosition])
    {
      v8 = [(ZWRootViewController *)self dockedLensViewController];
      v9 = [v8 dockPosition];

      if (v9 != &dword_0 + 3)
      {
        v10 = [(ZWRootViewController *)self dockedLensViewController];
        v11 = [v10 view];
        [v11 bounds];
        v13 = v12 * 0.5;
        v14 = [(ZWRootViewController *)self dockedLensViewController];
        v15 = [v14 view];
        [v15 bounds];
        v17 = v16;
LABEL_10:

        v5 = v13;
        v6 = v17;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v10 = [(ZWRootViewController *)self dockedLensViewController];
    v11 = [v10 view];
    [v11 bounds];
    v13 = v18;
    v14 = [(ZWRootViewController *)self dockedLensViewController];
    v15 = [v14 view];
    [v15 bounds];
    v17 = v19 * 0.5;
    goto LABEL_10;
  }

  [(ZWRootViewController *)self _screenSizeForCurrentOrientation];
LABEL_11:
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGPoint)_slugOriginForNormalizedPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(ZWRootViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = [(ZWRootViewController *)self slugViewController];
  v12 = [v11 view];
  [v12 bounds];
  v14 = v13;
  v16 = v15;

  v17 = x * (v8 - v14);
  v18 = y * (v10 - v16);
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGPoint)_slugNormalizedPositionForCurrentPosition
{
  v3 = [(ZWRootViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [(ZWRootViewController *)self slugViewController];
  v9 = [v8 view];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11 / (v5 - v15);
  v19 = v13 / (v7 - v17);
  result.y = v19;
  result.x = v18;
  return result;
}

- (void)_updateSlugLayoutAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(ZWRootViewController *)self viewIfLoaded];

  if (v5)
  {
    v6 = [(ZWRootViewController *)self containerView];
    v7 = [(ZWRootViewController *)self slugViewController];
    v8 = [v7 view];

    v9 = +[AXSettings sharedInstance];
    if ([v9 zoomShouldShowSlug])
    {
      v10 = [(ZWRootViewController *)self isMainDisplay]^ 1;
    }

    else
    {
      v10 = 1;
    }

    [v8 setHidden:v10];

    v11 = [(ZWRootViewController *)self slugRingDragXConstraint];

    if (!v11)
    {
      v12 = [NSLayoutConstraint constraintWithItem:v8 attribute:1 relatedBy:0 toItem:v6 attribute:1 multiplier:1.0 constant:0.0];
      LODWORD(v13) = 1148780544;
      [v12 setPriority:v13];
      [(ZWRootViewController *)self setSlugRingDragXConstraint:v12];
      [v6 addConstraint:v12];
      v14 = [NSLayoutConstraint constraintWithItem:v8 attribute:3 relatedBy:0 toItem:v6 attribute:3 multiplier:1.0 constant:0.0];

      LODWORD(v15) = 1148780544;
      [v14 setPriority:v15];
      [(ZWRootViewController *)self setSlugRingDragYConstraint:v14];
      [v6 addConstraint:v14];
    }

    v16 = +[ZWCoalescedSettings sharedInstance];
    [v16 zoomSlugNormalizedPosition];
    v18 = v17;
    v20 = v19;

    [(ZWRootViewController *)self _slugOriginForNormalizedPosition:v18, v20];
    v22 = v21;
    v24 = v23;
    if ([(ZWKeyboardContext *)self->_kbContext isKeyboardVisible])
    {
      [(ZWKeyboardContext *)self->_kbContext keyboardFrame];
      y = v33.origin.y;
      v32.x = v22;
      v32.y = v24;
      if (CGRectContainsPoint(v33, v32))
      {
        [v8 bounds];
        v24 = y - v26;
      }
    }

    [(ZWRootViewController *)self _updateSlugConstraintsForOrientation:[(ZWRootViewController *)self interfaceOrientation]];
    if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v22 = 0.0;
    }

    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v24 = 0.0;
    }

    v27 = [(ZWRootViewController *)self slugRingDragXConstraint];
    [v27 setConstant:v22];

    v28 = [(ZWRootViewController *)self slugRingDragYConstraint];
    [v28 setConstant:v24];

    v29 = 0.3;
    if (!v3)
    {
      v29 = 0.0;
    }

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = __50__ZWRootViewController__updateSlugLayoutAnimated___block_invoke;
    v31[3] = &unk_78D00;
    v31[4] = self;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = __50__ZWRootViewController__updateSlugLayoutAnimated___block_invoke_2;
    v30[3] = &unk_79450;
    v30[4] = self;
    [UIView animateWithDuration:v31 animations:v30 completion:v29];
  }
}

void __50__ZWRootViewController__updateSlugLayoutAnimated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

void __50__ZWRootViewController__updateSlugLayoutAnimated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) slugViewController];
  v3 = [v2 view];
  v4 = [v3 isHidden];

  if (v4)
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  else
  {
    v9 = [*(a1 + 32) slugViewController];
    [v9 slugRingViewBoundsInScreenCoordinates];
    x = v10;
    y = v11;
    width = v12;
    height = v13;
  }

  v14 = [*(a1 + 32) cachedValuesSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __50__ZWRootViewController__updateSlugLayoutAnimated___block_invoke_3;
  block[3] = &unk_79068;
  block[4] = *(a1 + 32);
  *&block[5] = x;
  *&block[6] = y;
  *&block[7] = width;
  *&block[8] = height;
  dispatch_sync(v14, block);
}

__n128 __50__ZWRootViewController__updateSlugLayoutAnimated___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32) + 80;
  result = *(a1 + 56);
  *(v1 + 64) = *(a1 + 40);
  *(v1 + 80) = result;
  return result;
}

- (void)_updateZoomFactor:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(ZWRootViewController *)self setZoomFactor:?];
  v7 = [(ZWRootViewController *)self activeLensViewController];
  [(ZWRootViewController *)self zoomPanOffset];
  v9 = v8;
  v11 = v10;
  v12 = +[AXSettings sharedInstance];
  v13 = [v12 zoomCurrentLensEffect];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __51__ZWRootViewController__updateZoomFactor_animated___block_invoke;
  v14[3] = &unk_78D00;
  v14[4] = self;
  [v7 updateStandbyMode:0 zoomFactor:v13 panOffset:v4 lensEffect:v14 animated:a3 completion:{v9, v11}];
}

- (void)zoomLensViewControllerDidChangeStandbyMode:(id)a3
{
  v4 = a3;
  v5 = [(ZWRootViewController *)self slugViewController];
  +[ZWZoomSlugViewController longPressDurationForStandByMode:](ZWZoomSlugViewController, "longPressDurationForStandByMode:", [v4 inStandbyMode]);
  [v5 updateLongPressDuration:?];

  [(ZWRootViewController *)self _setPIPLensResizingEnabled:0];
  [(ZWRootViewController *)self _setDockResizingEnabled:0];
  [(ZWRootViewController *)self stopZoomMovementWithVelocityWithFullscreenEventHandler:0];
  [(ZWRootViewController *)self currentUIContextForEventProcessor:0];
  if (!CGRectIsNull(v15))
  {
    v6 = [(ZWRootViewController *)self menuViewController];
    [v6 standbyModeDidChange];
  }

  v7 = [(ZWRootViewController *)self activeLensViewController];
  v8 = v7;
  if (v7 == v4)
  {
    v9 = [(ZWRootViewController *)self activeLensViewController];
    v10 = [(ZWRootViewController *)self pipLensViewController];

    if (v9 == v10)
    {
      if ([v4 inStandbyMode])
      {
        [(ZWRootViewController *)self _removePIPSystemGestureDisablingAssertions];
      }

      else
      {
        [(ZWRootViewController *)self _updateSystemGestureDisablingAssertions];
      }
    }
  }

  else
  {
  }

  v11 = [(ZWRootViewController *)self activeLensViewController];
  v12 = v11;
  if (v11 == v4)
  {
    v13 = [(ZWRootViewController *)self activeLensViewController];
    v14 = [(ZWRootViewController *)self fullscreenLensViewController];

    if (v13 == v14)
    {
      if ([v4 inStandbyMode])
      {
        [(ZWRootViewController *)self _removeFullscreenSystemGestureDisablingAssertions];
      }

      else
      {
        [(ZWRootViewController *)self _updateSystemGestureDisablingAssertions];
      }
    }
  }

  else
  {
  }
}

- (void)zoomLensViewControllerUpdateUIForStandby:(id)a3 completion:(id)a4
{
  v11 = a4;
  v6 = a3;
  v7 = [(ZWRootViewController *)self dockedLensViewController];

  if (v7 == v6)
  {
    v8 = [(ZWRootViewController *)self activeLensViewController];
    v9 = [(ZWRootViewController *)self dockedLensViewController];

    if (v8 == v9)
    {
      v10 = [(ZWRootViewController *)self dockedLensViewController];
      [v10 showOrHideUIForStandbyModeWithCompletion:v11];

      goto LABEL_7;
    }
  }

  else
  {
  }

  if (v11)
  {
    v11[2]();
  }

LABEL_7:
  [(ZWRootViewController *)self _updateZoomListeners];
}

- (void)didStartAnimation
{
  [(ZWRootViewController *)self setZoomIsAnimating:1];

  [(ZWRootViewController *)self _updateZoomListeners];
}

- (void)didEndAnimation
{
  [(ZWRootViewController *)self setZoomIsAnimating:0];

  [(ZWRootViewController *)self _updateZoomListeners];
}

- (BOOL)_pipLensIsNearTopOfScreen
{
  v2 = [(ZWRootViewController *)self pipLensViewController];
  v3 = [v2 view];
  [v3 frame];
  v5 = v4;

  return v5 < 30.0;
}

- (BOOL)_pipLensIsNearRightOfScreen
{
  v3 = [(ZWRootViewController *)self pipLensViewController];
  v4 = [v3 view];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(ZWRootViewController *)self view];
  [v13 bounds];
  v15 = v14;

  v17.origin.x = v6;
  v17.origin.y = v8;
  v17.size.width = v10;
  v17.size.height = v12;
  return v15 - CGRectGetMaxX(v17) < 30.0;
}

- (BOOL)_pipLensIsNearBottomOfScreen
{
  v3 = [(ZWRootViewController *)self pipLensViewController];
  v4 = [v3 view];
  [v4 frame];
  v6 = v5;
  v8 = v7;

  v9 = [(ZWRootViewController *)self view];
  [v9 bounds];
  v11 = v10;

  return vabdd_f64(v6 + v8, v11) < 30.0;
}

- (void)_resizeZoomLensByDelta:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v18 = [(ZWRootViewController *)self activeLensViewController];
  v6 = [(ZWRootViewController *)self pipLensViewController];
  if (v18 == v6)
  {
  }

  else
  {
    v7 = [(ZWRootViewController *)self dockedLensViewController];

    if (!v7)
    {
      _AXAssert();
    }
  }

  v8 = [(ZWRootViewController *)self activeLensViewController];
  v9 = [(ZWRootViewController *)self pipLensViewController];

  if (v8 != v9)
  {
    v10 = [(ZWRootViewController *)self activeLensViewController];
    v11 = [(ZWRootViewController *)self dockedLensViewController];

    if (v10 != v11)
    {
LABEL_7:
      v12 = x;
      v13 = y;
LABEL_8:
      [(ZWRootViewController *)self _resizeZoomLensWithAdjustment:v12 lensPositionCompensation:v13, x, y];
      goto LABEL_9;
    }

    v15 = [(ZWRootViewController *)self dockedLensViewController];
    v16 = [v15 dockPosition];

    if (v16 <= 1)
    {
      if (v16)
      {
        if (v16 != &dword_0 + 1)
        {
          goto LABEL_7;
        }

LABEL_36:
        v12 = x;
        v13 = y;
        x = CGPointZero.x;
        y = CGPointZero.y;
        goto LABEL_8;
      }

      goto LABEL_29;
    }

    if (v16 != &dword_0 + 2)
    {
      if (v16 != &dword_0 + 3)
      {
        goto LABEL_7;
      }

      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v14 = [v18 activeResizeHandle];
  if (v14 > 4)
  {
    if (v14 <= 6)
    {
      if (v14 == (&dword_4 + 1))
      {
        v12 = x;
        x = CGPointZero.x;
        y = CGPointZero.y;
        v13 = 0.0;
        goto LABEL_8;
      }

      goto LABEL_36;
    }

    if (v14 == (&dword_4 + 3))
    {
LABEL_29:
      v13 = y;
      x = CGPointZero.x;
      y = CGPointZero.y;
      v12 = 0.0;
      goto LABEL_8;
    }

    if (v14 == &dword_8)
    {
      v12 = -x;
      v13 = y;
      goto LABEL_39;
    }

    if (v14 == (&dword_8 + 1))
    {
LABEL_30:
      v12 = -x;
      v13 = 0.0;
LABEL_39:
      y = 0.0;
      goto LABEL_8;
    }
  }

  else
  {
    if (v14 > 2)
    {
      if (v14 != (&dword_0 + 3))
      {
        v13 = -y;
        v12 = x;
LABEL_34:
        x = 0.0;
        goto LABEL_8;
      }

LABEL_33:
      v13 = -y;
      v12 = 0.0;
      goto LABEL_34;
    }

    if (v14 < 2)
    {
      goto LABEL_7;
    }

    if (v14 == (&dword_0 + 2))
    {
      v12 = -x;
      v13 = -y;
      goto LABEL_8;
    }
  }

  v17 = [NSNumber numberWithInteger:v14];
  _AXAssert();

LABEL_9:
}

- (void)_resizeZoomLensWithAdjustment:(CGPoint)a3 lensPositionCompensation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v5 = a3.y;
  v6 = a3.x;
  v70 = [(ZWRootViewController *)self activeLensViewController];
  v8 = [(ZWRootViewController *)self pipLensViewController];
  if (v70 == v8)
  {
  }

  else
  {
    v9 = [(ZWRootViewController *)self dockedLensViewController];

    if (!v9)
    {
      _AXAssert();
    }
  }

  v10 = [v70 lensZoomView];
  [v10 bounds];
  v12 = v11;
  v14 = v13;

  v15 = v6 + v12;
  v16 = v5 + v14;
  [(ZWRootViewController *)self _lensMinimumSize];
  v18 = v17;
  v20 = v19;
  [(ZWRootViewController *)self _lensMaximumSize];
  if (v15 >= v18)
  {
    v23 = v15;
  }

  else
  {
    v23 = v18;
  }

  if (v23 >= v21)
  {
    v24 = v21;
  }

  else
  {
    v24 = v23;
  }

  if (v16 >= v20)
  {
    v25 = v16;
  }

  else
  {
    v25 = v20;
  }

  if (v25 >= v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = v25;
  }

  [(ZWRootViewController *)self zoomFactor];
  v28 = v27;
  [(ZWRootViewController *)self zoomPanOffset];
  v30 = v29;
  v32 = v31;
  v33 = [(ZWRootViewController *)self activeLensViewController];
  v34 = [(ZWRootViewController *)self dockedLensViewController];

  if (v33 == v34)
  {
    v49 = v30;
    [(ZWRootViewController *)self zoomFrame];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v69 = v56;
    v57 = [(ZWRootViewController *)self dockedLensViewController];
    [v57 resizeDock:0 animated:{v24, v26}];

    [(ZWRootViewController *)self zoomFrame];
    v59 = v58;
    [(ZWRootViewController *)self zoomFrame];
    v61 = v60;
    v62 = [(ZWRootViewController *)self dockedLensViewController];
    v63 = [v62 dockPosition];

    if (v63 == &dword_0 + 2)
    {
      v51 = v51 + v55 - v59;
    }

    else
    {
      v64 = [(ZWRootViewController *)self dockedLensViewController];
      v65 = [v64 dockPosition];

      if (v65 == &dword_0 + 3)
      {
        v53 = v53 + v69 - v61;
      }
    }

    [v70 updateZoomFactor:0 panOffset:0 animated:v28 animationDuration:v49 completion:{v32, -1.0}];
    v66 = [(ZWRootViewController *)self view];
    [v66 zw_convertRectToScreenCoordinates:{v51, v53, v59, v61}];
    [(ZWRootViewController *)self _focusLensOnRect:1 panLensContent:1 recentreLens:0 animated:0 completion:?];
  }

  else
  {
    v35 = v26 - v14;
    v36 = v24 - v12;
    if (v26 - v14 < 0.0)
    {
      v35 = -(v26 - v14);
    }

    v37 = -v35;
    if (y >= -v35)
    {
      v37 = y;
    }

    if (v37 < v35)
    {
      v35 = v37;
    }

    v67 = v35;
    v38 = -v36;
    if (v36 >= 0.0)
    {
      v38 = v24 - v12;
    }

    v39 = -v38;
    if (x >= -v38)
    {
      v39 = x;
    }

    if (v39 >= v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = v39;
    }

    v41 = +[ZWCoalescedSettings sharedInstance];
    [v41 zoomWindowFrame];
    v43 = v42;
    v45 = v44;

    v46 = +[ZWCoalescedSettings sharedInstance];
    [v46 setZoomWindowFrame:{v43, v45, v24, v26}];

    v47 = [(ZWRootViewController *)self lensWidthConstraint];
    [v47 setConstant:v24];

    v48 = [(ZWRootViewController *)self lensHeightConstraint];
    [v48 setConstant:v26];

    [v70 updateZoomFactor:0 panOffset:0 animated:v28 animationDuration:v30 completion:{v32, -1.0}];
    [(ZWRootViewController *)self _moveZoomItemWithController:v70 byDelta:0 animated:1 userInitiated:0 shouldUseFullDeltaForDockedMode:0 shouldPan:v40, v67];
  }
}

- (void)_moveZoomItemWithControllerToDodgeJindo:(id)a3 byDelta:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = v7;
  if (y >= 0.0)
  {
    v9 = [v7 view];
    [v9 frame];
    v11 = x + v10;
    v12 = [(ZWRootViewController *)self slugRingDragXConstraint];
    [v12 setConstant:v11];

    [v9 frame];
    v14 = y + v13;
    v15 = [(ZWRootViewController *)self slugRingDragYConstraint];
    [v15 setConstant:v14];

    [v9 setNeedsLayout];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __72__ZWRootViewController__moveZoomItemWithControllerToDodgeJindo_byDelta___block_invoke;
    v19[3] = &unk_78D28;
    v20 = v9;
    v21 = x;
    v22 = y;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __72__ZWRootViewController__moveZoomItemWithControllerToDodgeJindo_byDelta___block_invoke_2;
    v17[3] = &unk_79478;
    v17[4] = self;
    v18 = v8;
    v16 = v9;
    [UIView animateWithDuration:v19 animations:v17 completion:0.2];
  }
}

id __72__ZWRootViewController__moveZoomItemWithControllerToDodgeJindo_byDelta___block_invoke(uint64_t a1)
{
  [*(a1 + 32) frame];
  v3 = v2;
  v5 = v4;
  [*(a1 + 32) frame];
  v7 = *(a1 + 40) + v6;
  [*(a1 + 32) frame];
  v9 = *(a1 + 48) + v8;
  v10 = *(a1 + 32);

  return [v10 setFrame:{v7, v9, v3, v5}];
}

id __72__ZWRootViewController__moveZoomItemWithControllerToDodgeJindo_byDelta___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _slugNormalizedPositionForCurrentPosition];
  v3 = v2;
  v5 = v4;
  v6 = +[ZWCoalescedSettings sharedInstance];
  [v6 setZoomSlugNormalizedPosition:{v3, v5}];

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  return [v7 _updateLensEdgeMaskForZoomController:v8];
}

- (void)_moveZoomItemWithController:(id)a3 byDelta:(CGPoint)a4 animated:(BOOL)a5 userInitiated:(BOOL)a6 shouldUseFullDeltaForDockedMode:(BOOL)a7 shouldPan:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v79 = a5;
  y = a4.y;
  x = a4.x;
  v13 = a3;
  v14 = [v13 view];
  v15 = [(ZWRootViewController *)self activeLensViewController];

  v78 = v15 == v13;
  if (v15 != v13)
  {
    v16 = v14;
    v17 = [(ZWRootViewController *)self slugRingDragXConstraint];
    v18 = [(ZWRootViewController *)self slugRingDragYConstraint];
    LOBYTE(v19) = 0;
    goto LABEL_29;
  }

  if ([(ZWKeyboardContext *)self->_kbContext isKeyboardVisible])
  {
    [(ZWKeyboardContext *)self->_kbContext setUserMovedKeyboardLens:1];
  }

  v20 = [(ZWRootViewController *)self activeLensViewController];
  v21 = [(ZWRootViewController *)self pipLensViewController];
  if (v20 == v21)
  {
    v22 = [(ZWRootViewController *)self pipLensEdgeMask];
  }

  else
  {
    v22 = 15;
  }

  [(ZWRootViewController *)self zoomPanOffset];
  if (!v8)
  {
    goto LABEL_17;
  }

  v25 = v23;
  v26 = v24;
  v27 = [(ZWRootViewController *)self activeLensViewController];
  v8 = [v27 shouldPanZoomContentForAxis:2 delta:v22 edgeMask:{x, y}];

  if (v8)
  {
    v28 = [(ZWRootViewController *)self activeLensViewController];
    [(ZWRootViewController *)self zoomFactor];
    [v28 offsetByPanningWithDelta:2 axis:x zoomFactor:{y, v29}];
    v31 = v30;

    v32 = [(ZWRootViewController *)self activeLensViewController];
    [(ZWRootViewController *)self zoomFactor];
    [v32 offsetIgnoringValidOffsetConstraintsByPanningWithDelta:2 axis:x zoomFacotr:{y, v33}];
    v25 = v34;
  }

  else
  {
    v31 = v25;
  }

  v35 = [(ZWRootViewController *)self activeLensViewController];
  v19 = [v35 shouldPanZoomContentForAxis:4 delta:v22 edgeMask:{x, y}];

  if (!v19)
  {
    if (v8)
    {
      LOBYTE(v8) = 1;
      v42 = v26;
      goto LABEL_16;
    }

LABEL_17:
    LOBYTE(v19) = 0;
    goto LABEL_18;
  }

  v36 = [(ZWRootViewController *)self activeLensViewController];
  [(ZWRootViewController *)self zoomFactor];
  [v36 offsetByPanningWithDelta:4 axis:x zoomFactor:{y, v37}];
  v26 = v38;

  v39 = [(ZWRootViewController *)self activeLensViewController];
  [(ZWRootViewController *)self zoomFactor];
  [v39 offsetIgnoringValidOffsetConstraintsByPanningWithDelta:4 axis:x zoomFacotr:{y, v40}];
  v42 = v41;

LABEL_16:
  v43 = [(ZWRootViewController *)self activeLensViewController];
  [v43 handleAdditionalPanOffsetFromOriginalOffset:v9 validOffset:v25 useFullDelta:{v42, v31, v26}];

  [(ZWRootViewController *)self setZoomPanOffset:v31, v26];
  v44 = [(ZWRootViewController *)self activeLensViewController];
  [(ZWRootViewController *)self zoomFactor];
  [v44 updateZoomFactor:v79 panOffset:0 animated:? animationDuration:? completion:?];

LABEL_18:
  v17 = [(ZWRootViewController *)self lensDragXConstraint];
  v18 = [(ZWRootViewController *)self lensDragYConstraint];
  if (![(ZWKeyboardContext *)self->_kbContext isKeyboardVisible]|| [(ZWKeyboardContext *)self->_kbContext userMovedKeyboardLens])
  {
    if (v8)
    {
      goto LABEL_21;
    }

LABEL_28:
    v16 = v14;
LABEL_29:
    [v17 constant];
    [v17 setConstant:x + v68];
    v46 = 1;
    if (v19)
    {
      v45 = 0;
      goto LABEL_32;
    }

LABEL_31:
    [v18 constant];
    [v18 setConstant:y + v69];
    v45 = 1;
    goto LABEL_32;
  }

  v47 = v8;
  v48 = +[AXSettings sharedInstance];
  v49 = [v48 zoomPreferredCurrentLensMode];
  v50 = [v49 isEqual:AXZoomLensModeWindow];

  if (v50)
  {
    v51 = +[ZWCoalescedSettings sharedInstance];
    [v51 zoomWindowFrame];
    v53 = v52;
    v55 = v54;

    v56 = [(ZWRootViewController *)self lensWidthConstraint];
    [v56 setConstant:v53];

    v57 = [(ZWRootViewController *)self lensHeightConstraint];
    [v57 setConstant:v55];

    v58 = [(ZWRootViewController *)self activeLensViewController];
    v59 = [v58 view];
    [v59 frame];
    v61 = (v60 - v53) * 0.5;
    [v17 constant];
    [v17 setConstant:v62 + v61];

    v63 = [(ZWRootViewController *)self activeLensViewController];
    v64 = [v63 view];
    [v64 frame];
    v66 = v65 - v55;
    [v18 constant];
    [v18 setConstant:v67 + v66];

    if ((v47 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if ((v47 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_21:
  v16 = v14;
  v45 = 0;
  if ((v19 & 1) == 0)
  {
    v46 = 0;
    goto LABEL_31;
  }

  v78 = 1;
  v46 = 0;
LABEL_32:
  v70 = [(ZWRootViewController *)self pipLensViewController];
  v71 = [v70 lensChromeView];
  [v71 updateCornerRadii];

  v72 = [(ZWRootViewController *)self activeLensViewController];
  v73 = [v72 lensZoomView];
  [v73 updateCornerRadii];

  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = __125__ZWRootViewController__moveZoomItemWithController_byDelta_animated_userInitiated_shouldUseFullDeltaForDockedMode_shouldPan___block_invoke;
  v86[3] = &unk_78EE8;
  v74 = v13;
  v87 = v74;
  v88 = self;
  v89 = a6;
  v75 = objc_retainBlock(v86);
  v76 = v75;
  if ((v45 & 1) != 0 || v46)
  {
    [v16 setNeedsLayout];
    if (v79)
    {
      v77 = 0.4;
    }

    else
    {
      v77 = 0.0;
    }

    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = __125__ZWRootViewController__moveZoomItemWithController_byDelta_animated_userInitiated_shouldUseFullDeltaForDockedMode_shouldPan___block_invoke_2;
    v84[3] = &unk_78D00;
    v85 = v16;
    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = __125__ZWRootViewController__moveZoomItemWithController_byDelta_animated_userInitiated_shouldUseFullDeltaForDockedMode_shouldPan___block_invoke_3;
    v81[3] = &unk_794A0;
    v83 = v78;
    v81[4] = self;
    v82 = v76;
    [UIView animateWithDuration:v84 animations:v81 completion:v77];
  }

  else
  {
    (v75[2])(v75);
  }
}

id __125__ZWRootViewController__moveZoomItemWithController_byDelta_animated_userInitiated_shouldUseFullDeltaForDockedMode_shouldPan___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) activeLensViewController];
  if (v2 != v3)
  {
    goto LABEL_4;
  }

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) pipLensViewController];
  if (v4 != v5)
  {

LABEL_4:
    goto LABEL_5;
  }

  v14 = *(a1 + 48);

  if (v14 == 1)
  {
    v15 = [*(a1 + 40) lensDragXConstraint];
    [v15 constant];
    v17 = v16;
    v18 = [*(a1 + 40) lensDragYConstraint];
    [v18 constant];
    v20 = v19;
    v21 = [*(a1 + 40) lensWidthConstraint];
    [v21 constant];
    v23 = v22;
    v24 = [*(a1 + 40) lensHeightConstraint];
    [v24 constant];
    v26 = v25;
    v27 = +[ZWCoalescedSettings sharedInstance];
    [v27 setZoomWindowFrame:{v17, v20, v23, v26}];

    [*(a1 + 40) _updateLensLayout];
    goto LABEL_11;
  }

LABEL_5:
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) slugViewController];
  if (v6 == v7)
  {
    v8 = *(a1 + 48);

    if (v8 == 1)
    {
      [*(a1 + 40) _slugNormalizedPositionForCurrentPosition];
      v10 = v9;
      v12 = v11;
      v13 = +[ZWCoalescedSettings sharedInstance];
      [v13 setZoomSlugNormalizedPosition:{v10, v12}];
    }
  }

  else
  {
  }

LABEL_11:
  v29 = *(a1 + 32);
  v28 = *(a1 + 40);

  return [v28 _updateLensEdgeMaskForZoomController:v29];
}

id __125__ZWRootViewController__moveZoomItemWithController_byDelta_animated_userInitiated_shouldUseFullDeltaForDockedMode_shouldPan___block_invoke_3(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 _updateSystemGestureDisablingAssertions];
  }

  return result;
}

- (void)_updateLensEdgeMaskForZoomController:(id)a3
{
  v50 = a3;
  v4 = [(ZWRootViewController *)self containerView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(ZWRootViewController *)self pipLensViewController];

  if (v13 == v50)
  {
    v23 = [v50 lensChromeView];
    [v23 bounds];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v25 = [(ZWRootViewController *)self containerView];
    v24 = v25;
    v26 = v32;
    v27 = v34;
    v28 = v36;
    v29 = v38;
    v30 = v23;
  }

  else
  {
    v14 = [v50 view];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = [(ZWRootViewController *)self containerView];
    v24 = [v50 view];
    v25 = v23;
    v26 = v16;
    v27 = v18;
    v28 = v20;
    v29 = v22;
    v30 = v24;
  }

  [v25 convertRect:v30 fromView:{v26, v27, v28, v29}];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v47 = vabdd_f64(v42, v12 - v46);
  v48 = (vabdd_f64(v42, v8) < 1.0) | (8 * (vabdd_f64(v40, v6) < 1.0)) | (2 * (vabdd_f64(v40, v10 - v44) < 1.0)) | (4 * (v47 < 1.0));
  v49 = [(ZWRootViewController *)self pipLensViewController];

  if (v49 == v50)
  {
    [(ZWRootViewController *)self setPipLensEdgeMask:v48];
  }

  else
  {
    [(ZWRootViewController *)self setSlugEdgeMask:v48];
  }
}

- (void)_unzoomDueToAppTransitionIfNeeded
{
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v4 = vabdd_f64(v3, self->_lastDeviceUnlockTime);
    v5 = [(ZWRootViewController *)self activeLensViewController];
    v6 = v5;
    if (v4 >= 0.5 && ([v5 inStandbyMode] & 1) == 0)
    {
      v7 = [(ZWRootViewController *)self activeLensViewController];
      v8 = [(ZWRootViewController *)self fullscreenLensViewController];

      if (v7 == v8)
      {
        [(ZWRootViewController *)self setZoomWasUnzoomedDueToAppTransition:1];
        [(ZWRootViewController *)self setZoomIsAnimatingDueToTransition:1];
        [(ZWRootViewController *)self zoomPanOffset];
        [(ZWRootViewController *)self setPanOffsetXBeforeTransition:?];
        v9 = [(ZWRootViewController *)self activeLensViewController];
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = __57__ZWRootViewController__unzoomDueToAppTransitionIfNeeded__block_invoke;
        v10[3] = &unk_78D00;
        v10[4] = self;
        [v9 updateStandbyMode:1 zoomFactor:AXZoomLensEffectNone panOffset:1 lensEffect:v10 animated:AXZoomMinimumZoomLevel completion:{CGPointZero.x, CGPointZero.y}];
      }
    }
  }
}

id __57__ZWRootViewController__unzoomDueToAppTransitionIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setZoomIsAnimatingDueToTransition:0];
  result = [*(a1 + 32) triedToRezoomForDockTransition];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _rezoomDueToDockIfNeeded];
  }

  return result;
}

- (void)_rezoomDueToAppTransitionIfNeeded
{
  if (!UIAccessibilityIsReduceMotionEnabled() && ![(ZWRootViewController *)self triedToRezoomForDockTransition]&& [(ZWRootViewController *)self zoomWasUnzoomedDueToAppTransition])
  {
    [(ZWRootViewController *)self setZoomWasUnzoomedDueToAppTransition:0];
    [(ZWRootViewController *)self zoomPanOffset];
    v4 = v3;
    v6 = v5;
    [(ZWRootViewController *)self zoomFactor];
    v8 = v7;
    v9 = [(ZWRootViewController *)self activeLensViewController];
    v10 = [(ZWRootViewController *)self fullscreenLensViewController];

    if (v9 == v10)
    {
      v11 = [(ZWRootViewController *)self fullscreenLensViewController];
      [v11 maximumPanOffsetWithZoomFactor:v8];
      v13 = v12;

      v6 = -v13;
      v4 = 0.0;
      [(ZWRootViewController *)self setZoomPanOffset:0.0, v6];
    }

    v14 = +[AXSettings sharedInstance];
    v16 = [v14 zoomCurrentLensEffect];

    v15 = [(ZWRootViewController *)self activeLensViewController];
    [v15 updateStandbyMode:0 zoomFactor:v16 panOffset:1 lensEffect:0 animated:v8 completion:{v4, v6}];
  }
}

- (void)_rezoomDueToDockIfNeeded
{
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    if ([(ZWRootViewController *)self zoomIsAnimatingDueToTransition])
    {

      [(ZWRootViewController *)self setTriedToRezoomForDockTransition:1];
    }

    else
    {
      [(ZWRootViewController *)self setTriedToRezoomForDockTransition:0];
      v3 = +[AXSpringBoardServer server];
      v4 = [v3 isDockVisible];

      if (v4)
      {
        if ([(ZWRootViewController *)self zoomWasUnzoomedDueToAppTransition])
        {
          [(ZWRootViewController *)self setZoomWasUnzoomedDueToAppTransition:0];
          [(ZWRootViewController *)self zoomPanOffset];
          v6 = v5;
          v8 = v7;
          [(ZWRootViewController *)self zoomFactor];
          v10 = v9;
          v11 = [(ZWRootViewController *)self activeLensViewController];
          v12 = [(ZWRootViewController *)self fullscreenLensViewController];

          if (v11 == v12)
          {
            v13 = [(ZWRootViewController *)self fullscreenLensViewController];
            [v13 maximumPanOffsetWithZoomFactor:v10];
            v8 = v14;

            [(ZWRootViewController *)self panOffsetXBeforeTransition];
            v6 = v15;
            [(ZWRootViewController *)self setZoomPanOffset:?];
          }

          v16 = +[AXSettings sharedInstance];
          v18 = [v16 zoomCurrentLensEffect];

          v17 = [(ZWRootViewController *)self activeLensViewController];
          [v17 updateStandbyMode:0 zoomFactor:v18 panOffset:1 lensEffect:0 animated:v10 completion:{v6, v8}];
        }
      }

      else
      {

        [(ZWRootViewController *)self _rezoomDueToAppTransitionIfNeeded];
      }
    }
  }
}

- (void)_toggleZoomStandby
{
  if ([(ZWRootViewController *)self zoomIsAnimatingDueToStandbyToggle])
  {

    [(ZWRootViewController *)self setTriedToToggleStandbyDuringAnimation:1];
  }

  else
  {
    [(ZWRootViewController *)self setTriedToToggleStandbyDuringAnimation:0];
    [(ZWRootViewController *)self setZoomIsAnimatingDueToStandbyToggle:1];
    [(ZWRootViewController *)self _updateZoomListeners];
    v3 = [(ZWRootViewController *)self activeLensViewController];
    [(ZWRootViewController *)self zoomFactor];
    v5 = v4;
    if ([(ZWRootViewController *)self _isZoomFactorAtMinimum:?])
    {
      v6 = +[ZWCoalescedSettings sharedInstance];
      [v6 zoomFactor];
      v5 = v7;

      if ([(ZWRootViewController *)self _isZoomFactorAtMinimum:v5])
      {
        v5 = AXZoomDefaultZoomLevel;
      }
    }

    [(ZWRootViewController *)self setZoomFactor:v5];
    [(ZWRootViewController *)self zoomPanOffset];
    v9 = v8;
    v11 = v10;
    if ([v3 inStandbyMode])
    {
      v12 = [(ZWRootViewController *)self smartZoom];
      v13 = [v12 isEnabled];

      if (v13)
      {
        v14 = [(ZWRootViewController *)self smartZoom];
        [v14 focusRect];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v38.origin.x = v16;
        v38.origin.y = v18;
        v38.size.width = v20;
        v38.size.height = v22;
        if (!CGRectIsEmpty(v38))
        {
          v23 = [(ZWRootViewController *)self containerView];
          [v23 zw_convertRectFromScreenCoordinates:{v16, v18, v20, v22}];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;

          [v3 offsetByPanningToRect:v25 zoomFactor:{v27, v29, v31, v5}];
          v9 = v32;
          v11 = v33;
        }
      }
    }

    v34 = +[AXSettings sharedInstance];
    v35 = [v34 zoomCurrentLensEffect];

    [(ZWRootViewController *)self _updateLensLayout];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = __42__ZWRootViewController__toggleZoomStandby__block_invoke;
    v36[3] = &unk_78D00;
    v36[4] = self;
    [v3 updateStandbyMode:objc_msgSend(v3 zoomFactor:"inStandbyMode") ^ 1 panOffset:v35 lensEffect:1 animated:v36 completion:{v5, v9, v11}];
  }
}

id __42__ZWRootViewController__toggleZoomStandby__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateSystemGestureDisablingAssertions];
  [*(a1 + 32) _updateMinimapStatus];
  [*(a1 + 32) setZoomIsAnimatingDueToStandbyToggle:0];
  result = [*(a1 + 32) triedToToggleStandbyDuringAnimation];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _toggleZoomStandby];
  }

  return result;
}

- (void)_setPIPLensResizingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(ZWRootViewController *)self touchTrapView];
  [v5 setEnabled:v3];

  v6 = [(ZWRootViewController *)self pipLensViewController];
  [v6 setInLensResizingMode:v3];

  v7 = [(ZWRootViewController *)self cachedValuesSerialQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __51__ZWRootViewController__setPIPLensResizingEnabled___block_invoke;
  v8[3] = &unk_78BD0;
  v8[4] = self;
  v9 = v3;
  dispatch_sync(v7, v8);
}

- (void)_setDockResizingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(ZWRootViewController *)self touchTrapView];
  [v5 setEnabled:v3];

  v6 = [(ZWRootViewController *)self dockedLensViewController];
  [v6 setInDockResizingMode:v3];

  v7 = [(ZWRootViewController *)self cachedValuesSerialQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __48__ZWRootViewController__setDockResizingEnabled___block_invoke;
  v8[3] = &unk_78BD0;
  v8[4] = self;
  v9 = v3;
  dispatch_sync(v7, v8);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = ZOOMLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(ZWRootViewController *)self view];
    [v9 bounds];
    v52.width = v10;
    v52.height = v11;
    v12 = NSStringFromCGSize(v52);
    v53.width = width;
    v53.height = height;
    v13 = NSStringFromCGSize(v53);
    *buf = 138412546;
    v49 = v12;
    v50 = 2112;
    v51 = v13;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Zoom window will transition from size %@ to %@", buf, 0x16u);
  }

  v14 = [(ZWRootViewController *)self activeLensViewController];
  v15 = [(ZWRootViewController *)self fullscreenLensViewController];

  v16 = v14 == v15;
  if (v14 == v15)
  {
    [UIView setAnimationsEnabled:0];
  }

  v17 = [(ZWRootViewController *)self slugViewController];
  v18 = [v17 view];
  [v18 alpha];
  v20 = v19;

  v21 = [(ZWRootViewController *)self slugViewController];
  v22 = [v21 view];
  [v22 setAlpha:0.0];

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = __75__ZWRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v47[3] = &unk_794C8;
  v47[4] = self;
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = __75__ZWRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v45[3] = &unk_794F0;
  v46 = v16;
  v45[4] = self;
  v45[5] = v20;
  [v7 animateAlongsideTransition:v47 completion:v45];

  v23 = [(ZWRootViewController *)self activeLensViewController];
  v24 = [(ZWRootViewController *)self pipLensViewController];

  if (v23 == v24)
  {
    v43 = width;
    v44 = height;
    v25 = [(ZWRootViewController *)self activeLensViewController];
    v26 = [v25 view];
    [v26 frame];

    UIRectInset();
    x = v54.origin.x;
    y = v54.origin.y;
    v29 = v54.size.width;
    v30 = v54.size.height;
    MinX = CGRectGetMinX(v54);
    v32 = [(ZWRootViewController *)self view];
    [v32 frame];
    v34 = v33;
    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = v29;
    v55.size.height = v30;
    v35 = v34 - CGRectGetMaxX(v55);

    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = v29;
    v56.size.height = v30;
    MinY = CGRectGetMinY(v56);
    v37 = [(ZWRootViewController *)self view];
    [v37 frame];
    v39 = v38;
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = v29;
    v57.size.height = v30;
    v40 = v39 - CGRectGetMaxY(v57);

    if (MinX + v35 > 0.5)
    {
      v41 = [(ZWRootViewController *)self lensDragXConstraint];
      [v41 setConstant:MinX * (v43 - v29) / (MinX + v35) + -18.0];
    }

    if (MinY + v40 > 0.5)
    {
      v42 = [(ZWRootViewController *)self lensDragYConstraint];
      [v42 setConstant:(v44 - v30) * MinY / (MinY + v40) + -18.0];
    }
  }
}

void __75__ZWRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    [UIView setAnimationsEnabled:1];
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __75__ZWRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
  v11[3] = &unk_78E98;
  v11[4] = *(a1 + 32);
  v11[5] = *(a1 + 40);
  [UIView animateWithDuration:v11 animations:0.25];
  v4 = [*(a1 + 32) activeLensViewController];
  v5 = [v4 lensZoomView];
  [v5 zoomPanOffset];
  [*(a1 + 32) setZoomPanOffset:?];

  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3010000000;
  v9[3] = &unk_6F53D;
  v10 = CGSizeZero;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v7[7] = _NSConcreteStackBlock;
  v7[8] = 3221225472;
  v7[9] = __75__ZWRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4;
  v7[10] = &unk_792C0;
  v7[11] = *(a1 + 32);
  v7[12] = v8;
  v7[13] = v9;
  AXPerformBlockSynchronouslyOnMainThread();
  v6 = [*(a1 + 32) cachedValuesSerialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __75__ZWRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_5;
  v7[3] = &unk_792E8;
  v7[4] = *(a1 + 32);
  v7[5] = v8;
  v7[6] = v9;
  dispatch_sync(v6, v7);

  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v9, 8);
}

void __75__ZWRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) slugViewController];
  v2 = [v3 view];
  [v2 setAlpha:v1];
}

void __75__ZWRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 window];
  *(*(*(a1 + 40) + 8) + 24) = [v3 interfaceOrientation];

  v7 = [*(a1 + 32) screen];
  [v7 bounds];
  v4 = *(*(a1 + 48) + 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
}

__n128 __75__ZWRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 10;
  v4 = [v2 activeLensViewController];
  v5 = [v4 lensZoomView];
  [v5 zw_convertBoundsToScreenCoordinates];
  v3[4] = v6;
  v3[5] = v7;
  v3[6] = v8;
  v3[7] = v9;

  v10 = [*(a1 + 32) activeLensViewController];
  v11 = [*(a1 + 32) dockedLensViewController];

  if (v10 == v11)
  {
    v12 = [*(a1 + 32) dockedLensViewController];
    [v12 screenShift];
    *(*(a1 + 32) + 216) = v13;

    v14 = *(a1 + 32);
    v15 = v14 + 10;
    v16 = [v14 dockedLensViewController];
    v17 = [v16 dockedLensView];
    [v17 frame];
    v15[18] = v18;
    v15[19] = v19;
    v15[20] = v20;
    v15[21] = v21;

    v22 = *(a1 + 32);
    v23 = v22 + 10;
    v24 = [v22 dockedLensViewController];
    [v24 zoomRegionFrame];
    v23[22] = v25;
    v23[23] = v26;
    v23[24] = v27;
    v23[25] = v28;

    v29 = *(a1 + 32);
    v30 = v29 + 10;
    v31 = [v29 dockedLensViewController];
    v32 = [v31 toggleZoomRegionButton];
    [v32 frame];
    v30[26] = v33;
    v30[27] = v34;
    v30[28] = v35;
    v30[29] = v36;

    v37 = *(a1 + 32);
    v38 = v37 + 10;
    v39 = [v37 dockedLensViewController];
    [v39 frameForResizeDrag];
    v38[30] = v40;
    v38[31] = v41;
    v38[32] = v42;
    v38[33] = v43;
  }

  *(*(a1 + 32) + 80) = *(*(*(a1 + 40) + 8) + 24);
  *(*(a1 + 32) + 384) = *(*(*(a1 + 40) + 8) + 24);
  *(*(a1 + 32) + 96) = *(*(*(a1 + 48) + 8) + 32);
  result = *(*(*(a1 + 48) + 8) + 32);
  *(*(a1 + 32) + 400) = result;
  return result;
}

- (void)setTestingScreenSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  ZWSetTestingScreenSize(a3.width, a3.height);
  if (width == CGSizeZero.width && height == CGSizeZero.height)
  {
    v7 = +[UIScreen mainScreen];
    [v7 bounds];
    width = v8;
    height = v9;
  }

  v10 = [(ZWRootViewController *)self containerView];
  [v10 setFrame:{0.0, 0.0, width, height}];

  v11 = [(ZWRootViewController *)self activeLensViewController];
  [(ZWRootViewController *)self _applyInitialConstraintsForLensViewController:v11];
}

- (CGSize)_screenSizeForCurrentOrientation
{
  if (!self->_inUnitTestingMode || (ZWGetTestingScreenSize() == CGSizeZero.width ? (v4 = v3 == CGSizeZero.height) : (v4 = 0), v4))
  {
    v7 = [(ZWRootViewController *)self screen];
    [v7 bounds];
    v9 = v8;
    v11 = v10;

    v5 = v9;
    v6 = v11;
  }

  else
  {

    v5 = ZWGetTestingScreenSize();
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (CGPoint)_denormalizePointForCurrentOrientation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(ZWRootViewController *)self _screenSizeForCurrentOrientation];
  v6 = x * v5;
  v8 = y * v7;
  result.y = v8;
  result.x = v6;
  return result;
}

- (CGPoint)_denormalizePoint:(CGPoint)a3 withRespectToFrame:(CGRect)a4
{
  v4 = a4.origin.x + a3.x * a4.size.width;
  v5 = a4.origin.y + a3.y * a4.size.height;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)_normalizePoint:(CGPoint)a3 withRespectToFrame:(CGRect)a4
{
  v4 = (a3.x - a4.origin.x) / a4.size.width;
  v5 = (a3.y - a4.origin.y) / a4.size.height;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)_physicalScreenPointForVirtualScreenPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(ZWRootViewController *)self zoomFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(ZWRootViewController *)self activeLensViewController];
  v15 = [(ZWRootViewController *)self fullscreenLensViewController];

  if (v14 == v15)
  {
    [(ZWRootViewController *)self _screenSizeForCurrentOrientation];
    [(ZWRootViewController *)self _normalizePoint:x withRespectToFrame:y, v7, v9, v11, v13];
    [ZWRootViewController _denormalizePoint:"_denormalizePoint:withRespectToFrame:" withRespectToFrame:?];
    x = v24;
    y = v25;
    goto LABEL_11;
  }

  v16 = [(ZWRootViewController *)self activeLensViewController];
  v17 = [(ZWRootViewController *)self pipLensViewController];

  if (v16 == v17)
  {
    [(ZWRootViewController *)self _normalizePoint:x withRespectToFrame:y, v7, v9, v11, v13];
    v27 = v26;
    v29 = v28;
    v30 = [(ZWRootViewController *)self pipLensViewController];
    v31 = [v30 lensChromeView];
    v32 = [(ZWRootViewController *)self pipLensViewController];
    v33 = [v32 lensChromeView];
    [v33 bounds];
    [v31 convertRect:0 toView:?];
    [(ZWRootViewController *)self _denormalizePoint:v27 withRespectToFrame:v29, v34, v35, v36, v37];
    x = v38;
    y = v39;

LABEL_10:
    goto LABEL_11;
  }

  v18 = [(ZWRootViewController *)self activeLensViewController];
  v19 = [(ZWRootViewController *)self dockedLensViewController];

  if (v18 != v19)
  {
    goto LABEL_11;
  }

  v20 = [(ZWRootViewController *)self dockedLensViewController];
  v21 = [v20 dockPosition];

  if (v21 > 1)
  {
    if (v21 == &dword_0 + 2)
    {
      v30 = [(ZWRootViewController *)self dockedLensViewController];
      [v30 screenShift];
      v49 = v48;
      v44 = [(ZWRootViewController *)self dockedLensViewController];
      v45 = [v44 dockedLensView];
      [v45 bounds];
      x = x + v49 - v50;
    }

    else
    {
      if (v21 != &dword_0 + 3)
      {
        goto LABEL_11;
      }

      v30 = [(ZWRootViewController *)self dockedLensViewController];
      [v30 screenShift];
      v43 = v42;
      v44 = [(ZWRootViewController *)self dockedLensViewController];
      v45 = [v44 dockedLensView];
      [v45 bounds];
      y = y + v43 - v46;
    }

    goto LABEL_10;
  }

  if (!v21)
  {
    v22 = [(ZWRootViewController *)self dockedLensViewController];
    [v22 screenShift];
    y = y + v47;
    goto LABEL_16;
  }

  if (v21 == &dword_0 + 1)
  {
    v22 = [(ZWRootViewController *)self dockedLensViewController];
    [v22 screenShift];
    x = x + v23;
LABEL_16:
  }

LABEL_11:
  v40 = x;
  v41 = y;
  result.y = v41;
  result.x = v40;
  return result;
}

- (CGPoint)_virtualScreenPointForPhysicalScreenPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(ZWRootViewController *)self zoomFrame];
  v7 = v6;
  v9 = v8;
  v10 = [(ZWRootViewController *)self activeLensViewController];
  v11 = [(ZWRootViewController *)self fullscreenLensViewController];

  if (v10 == v11)
  {
    [(ZWRootViewController *)self _screenSizeForCurrentOrientation];
    [(ZWRootViewController *)self _normalizePoint:x withRespectToFrame:y, 0.0, 0.0, v20, v21];
    v22 = self;
LABEL_10:
    [(ZWRootViewController *)v22 _denormalizePoint:v49 withRespectToFrame:v50];
    x = v35;
    y = v36;
    goto LABEL_11;
  }

  v12 = [(ZWRootViewController *)self activeLensViewController];
  v13 = [(ZWRootViewController *)self pipLensViewController];

  if (v12 == v13)
  {
    v23 = [(ZWRootViewController *)self pipLensViewController];
    v24 = [v23 lensChromeView];
    v25 = [(ZWRootViewController *)self pipLensViewController];
    v26 = [v25 lensChromeView];
    [v26 bounds];
    [v24 convertRect:0 toView:?];
    v28 = v27;
    v30 = v29;
    v49 = v7;
    v50 = v9;
    v32 = v31;
    v34 = v33;

    [(ZWRootViewController *)self _normalizePoint:x withRespectToFrame:y, v28, v30, v32, v34];
    v22 = self;
    goto LABEL_10;
  }

  v14 = [(ZWRootViewController *)self activeLensViewController];
  v15 = [(ZWRootViewController *)self dockedLensViewController];

  if (v14 == v15)
  {
    v16 = [(ZWRootViewController *)self dockedLensViewController];
    v17 = [v16 dockPosition];

    if (v17 > 1)
    {
      if (v17 == &dword_0 + 2)
      {
        v39 = [(ZWRootViewController *)self dockedLensViewController];
        [v39 screenShift];
        v47 = v46;
        v42 = [(ZWRootViewController *)self dockedLensViewController];
        v43 = [v42 dockedLensView];
        [v43 bounds];
        x = x - (v47 - v48);
      }

      else
      {
        if (v17 != &dword_0 + 3)
        {
          goto LABEL_11;
        }

        v39 = [(ZWRootViewController *)self dockedLensViewController];
        [v39 screenShift];
        v41 = v40;
        v42 = [(ZWRootViewController *)self dockedLensViewController];
        v43 = [v42 dockedLensView];
        [v43 bounds];
        y = y - (v41 - v44);
      }

      goto LABEL_11;
    }

    if (!v17)
    {
      v18 = [(ZWRootViewController *)self dockedLensViewController];
      [v18 screenShift];
      y = y - v45;
      goto LABEL_16;
    }

    if (v17 == &dword_0 + 1)
    {
      v18 = [(ZWRootViewController *)self dockedLensViewController];
      [v18 screenShift];
      x = x - v19;
LABEL_16:
    }
  }

LABEL_11:
  v37 = x;
  v38 = y;
  result.y = v38;
  result.x = v37;
  return result;
}

- (void)_presentMenuWithAnchorView:(id)a3 animated:(BOOL)a4 ignoreCooldown:(BOOL)a5
{
  v7 = a3;
  v8 = [(ZWRootViewController *)self presentedViewController];
  v9 = [(ZWRootViewController *)self menuViewController];

  if (v8 != v9)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    if (a5 || vabdd_f64(v10, self->_lastMenuDismissalTime) >= 0.75)
    {
      v11 = [(ZWRootViewController *)self traitCollection];
      if (![v11 userInterfaceIdiom])
      {
        v12 = [(ZWRootViewController *)self view];

        v7 = v12;
      }

      [v7 bounds];
      v14 = v13;
      MidY = v15;
      v18 = v17;
      v20 = v19;
      v21 = [(ZWRootViewController *)self view];

      if (v7 == v21)
      {
        v51.origin.x = v14;
        v51.origin.y = MidY;
        v51.size.width = v18;
        v51.size.height = v20;
        MidX = CGRectGetMidX(v51);
        v52.origin.x = v14;
        v52.origin.y = MidY;
        v52.size.width = v18;
        v52.size.height = v20;
        MidY = CGRectGetMidY(v52);
        v22 = 0;
        v20 = 1.0;
        v18 = 1.0;
        v14 = MidX;
      }

      else
      {
        v22 = 15;
      }

      v24 = ZOOMLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v53.origin.x = v14;
        v53.origin.y = MidY;
        v53.size.width = v18;
        v53.size.height = v20;
        v25 = NSStringFromCGRect(v53);
        v26 = [(ZWRootViewController *)self view];
        [v26 bounds];
        v27 = NSStringFromCGRect(v54);
        *buf = 138412802;
        v46 = v25;
        v47 = 2112;
        v48 = v7;
        v49 = 2112;
        v50 = v27;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Displaying Zoom Menu at popover rect: %@, anchor view: %@, view bounds: %@", buf, 0x20u);
      }

      v28 = [(ZWRootViewController *)self slugViewController];
      v29 = [v28 view];
      v30 = [v29 window];

      if (v30)
      {
        v31 = [(ZWRootViewController *)self slugViewController];
        v32 = [v31 view];
        v44 = v32;
        v33 = [NSArray arrayWithObjects:&v44 count:1];
        v34 = [(ZWRootViewController *)self menuViewController];
        v35 = [v34 popoverPresentationController];
        [v35 setPassthroughViews:v33];
      }

      v36 = [(ZWRootViewController *)self menuViewController];
      v37 = [v36 popoverPresentationController];
      [v37 setSourceRect:{v14, MidY, v18, v20}];

      v38 = [(ZWRootViewController *)self menuViewController];
      v39 = [v38 popoverPresentationController];
      [v39 setSourceView:v7];

      v40 = [(ZWRootViewController *)self menuViewController];
      v41 = [v40 popoverPresentationController];
      [v41 setPermittedArrowDirections:v22];

      v42 = [(ZWRootViewController *)self menuViewController];
      v43 = [(ZWRootViewController *)self zoomMenuVisibilityChangedUnitTestCallback];
      [(ZWRootViewController *)self presentViewController:v42 animated:1 completion:v43];
    }
  }
}

- (void)_dismissMenuAnimated:(BOOL)a3
{
  v4 = [(ZWRootViewController *)self presentedViewController];
  v5 = [(ZWRootViewController *)self menuViewController];

  if (v4 == v5)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    self->_lastMenuDismissalTime = v6;
    v7 = [(ZWRootViewController *)self menuViewController];
    v8 = [v7 presentingViewController];
    v9 = [(ZWRootViewController *)self zoomMenuVisibilityChangedUnitTestCallback];
    [v8 dismissViewControllerAnimated:1 completion:v9];

    [(ZWRootViewController *)self _menuDidDisappear];
  }
}

- (void)_menuDidDisappear
{
  v3 = [(ZWRootViewController *)self cachedValuesSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __41__ZWRootViewController__menuDidDisappear__block_invoke;
  block[3] = &unk_78D00;
  block[4] = self;
  dispatch_sync(v3, block);

  LODWORD(v3) = UIAccessibilityLayoutChangedNotification;
  v4 = [(ZWRootViewController *)self menuViewController];
  v5 = [v4 view];
  UIAccessibilityPostNotification(v3, v5);
}

__n128 __41__ZWRootViewController__menuDidDisappear__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32) + 80;
  result = CGRectNull.origin;
  size = CGRectNull.size;
  *(v1 + 96) = CGRectNull.origin;
  *(v1 + 112) = size;
  return result;
}

- (void)willBeginAutopanningLensWithAutopanner:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __63__ZWRootViewController_willBeginAutopanningLensWithAutopanner___block_invoke;
  block[3] = &unk_78D00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

void __63__ZWRootViewController_willBeginAutopanningLensWithAutopanner___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeLensViewController];
  v3 = [v2 inStandbyMode];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) activeLensViewController];
    [v4 updateLensChromeAnimated:1];
  }
}

- (void)didFinishAutopanningLensWithAutopanner:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __63__ZWRootViewController_didFinishAutopanningLensWithAutopanner___block_invoke;
  block[3] = &unk_78D00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

void __63__ZWRootViewController_didFinishAutopanningLensWithAutopanner___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeLensViewController];
  v3 = [v2 inStandbyMode];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) activeLensViewController];
    [v4 updateLensChromeAnimated:1];
  }
}

- (void)autopanner:(id)a3 didAutopanByDelta:(CGPoint)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __53__ZWRootViewController_autopanner_didAutopanByDelta___block_invoke;
  block[3] = &unk_78D28;
  block[4] = self;
  v5 = a4;
  dispatch_async(&_dispatch_main_q, block);
}

void __53__ZWRootViewController_autopanner_didAutopanByDelta___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeLensViewController];
  v3 = [v2 inStandbyMode];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = [v4 activeLensViewController];
    [v4 _moveZoomItemWithController:v5 byDelta:0 animated:1 userInitiated:{*(a1 + 40), *(a1 + 48)}];
  }
}

- (BOOL)_inSpeakUnderFingerMode
{
  v2 = +[AXSpeakFingerManager sharedInstance];
  if ([v2 speakFingerState] == &dword_0 + 1)
  {
    v3 = 1;
  }

  else
  {
    v4 = +[AXSpeakFingerManager sharedInstance];
    v3 = [v4 speakFingerState] == &dword_4;
  }

  return v3;
}

- (void)_updateEventUIContextForSpeakFingerStateChange
{
  v3 = [(ZWRootViewController *)self _inSpeakUnderFingerMode];
  v4 = [(ZWRootViewController *)self cachedValuesSerialQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __70__ZWRootViewController__updateEventUIContextForSpeakFingerStateChange__block_invoke;
  v5[3] = &unk_78BD0;
  v5[4] = self;
  v6 = v3;
  dispatch_sync(v4, v5);
}

- (void)toggleZoomMenu
{
  v3 = [(ZWRootViewController *)self presentedViewController];
  v4 = [(ZWRootViewController *)self menuViewController];

  if (v3 == v4)
  {

    [(ZWRootViewController *)self _dismissMenuAnimated:1];
  }

  else
  {
    if ([(ZWRootViewController *)self isZoomSlugVisible])
    {
      v5 = [(ZWRootViewController *)self slugViewController];
      v6 = [v5 slugRingView];
    }

    else
    {
      v6 = [(ZWRootViewController *)self view];
    }

    [(ZWRootViewController *)self _presentMenuWithAnchorView:v6 animated:1 ignoreCooldown:0];
  }
}

- (void)_handleSlugAction:(int64_t)a3
{
  switch(a3)
  {
    case 3:
      if (!UIAccessibilityIsVoiceOverRunning())
      {
        v18 = [(ZWRootViewController *)self presentedViewController];
        v19 = [(ZWRootViewController *)self menuViewController];

        if (v18 == v19)
        {
          [(ZWRootViewController *)self _dismissMenuAnimated:1];
        }

        v20 = +[AXSpeakFingerManager sharedInstance];
        v21 = [v20 speakFingerState];

        v22 = +[AXSpeakFingerManager sharedInstance];
        v26 = v22;
        if (v21 == &dword_0 + 2)
        {
          [v22 speakUnderFingerModeStarted];
        }

        else
        {
          [v22 userManuallyExitedSpeakUnderFingerMode];
        }

        goto LABEL_31;
      }

      v11 = +[AXSubsystemZoom sharedInstance];
      v12 = [v11 ignoreLogging];

      if ((v12 & 1) == 0)
      {
        v13 = +[AXSubsystemZoom identifier];
        v14 = AXLoggerForFacility();

        v15 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = AXColorizeFormatLog();
          v17 = _AXStringForArgs();
          if (os_log_type_enabled(v14, v15))
          {
            *buf = 138543362;
            v28 = v17;
            _os_log_impl(&dword_0, v14, v15, "%{public}@", buf, 0xCu);
          }
        }
      }

      break;
    case 2:
      v9 = [(ZWRootViewController *)self presentedViewController];
      v10 = [(ZWRootViewController *)self menuViewController];

      if (v9 == v10)
      {
        [(ZWRootViewController *)self _dismissMenuAnimated:1];
      }

      [(ZWRootViewController *)self _toggleZoomStandby];
      break;
    case 1:
      v4 = [(ZWRootViewController *)self presentedViewController];
      v5 = [(ZWRootViewController *)self menuViewController];

      if (v4 != v5)
      {
        v6 = [(ZWRootViewController *)self activeLensViewController];
        v7 = [(ZWRootViewController *)self pipLensViewController];
        v8 = v7;
        if (v6 == v7)
        {
          v23 = [(ZWRootViewController *)self pipLensViewController];
          v24 = [v23 isInLensResizingMode];

          if (v24)
          {
            [(ZWRootViewController *)self toggleLensResizeModeWithMenuViewController:0];
          }
        }

        else
        {
        }

        v26 = [(ZWRootViewController *)self slugViewController];
        v25 = [v26 slugRingView];
        [(ZWRootViewController *)self _presentMenuWithAnchorView:v25 animated:1 ignoreCooldown:0];

LABEL_31:

        return;
      }

      [(ZWRootViewController *)self _dismissMenuAnimated:1];
      break;
    default:
      return;
  }
}

- (void)slugWasSingleTappedWithSlugViewController:(id)a3
{
  v4 = +[AXSpeakFingerManager sharedInstance];
  v5 = [v4 speakFingerState];

  if (v5 == &dword_0 + 2)
  {
    v6 = +[AXSettings sharedInstance];
    -[ZWRootViewController _handleSlugAction:](self, "_handleSlugAction:", [v6 zoomSlugSingleTapAction]);
  }

  else
  {

    [(ZWRootViewController *)self _handleSlugAction:3];
  }
}

- (void)slugWasDoubleTappedWithSlugViewController:(id)a3
{
  v4 = +[AXSettings sharedInstance];
  -[ZWRootViewController _handleSlugAction:](self, "_handleSlugAction:", [v4 zoomSlugDoubleTapAction]);
}

- (void)slugWasTripleTappedWithSlugViewController:(id)a3
{
  v4 = +[AXSettings sharedInstance];
  -[ZWRootViewController _handleSlugAction:](self, "_handleSlugAction:", [v4 zoomSlugTripleTapAction]);
}

- (BOOL)shouldBeginAutopanningLensWithSlugViewController:(id)a3
{
  v3 = [(ZWRootViewController *)self activeLensViewController];
  v4 = [v3 inStandbyMode];

  return v4 ^ 1;
}

- (void)wantsToStartAutopannerWithSlugViewController:(id)a3
{
  v4 = a3;
  v5 = [(ZWRootViewController *)self lensAutopanner];
  [v5 setDataSource:v4];

  v6 = [(ZWRootViewController *)self lensAutopanner];
  [v6 start];
}

- (void)wantsToStopAutopannerWithSlugViewController:(id)a3
{
  v4 = [(ZWRootViewController *)self lensAutopanner];
  [v4 stop];

  v5 = [(ZWRootViewController *)self lensAutopanner];
  [v5 setDataSource:0];

  [(ZWRootViewController *)self _updateSystemGestureDisablingAssertions];
}

- (BOOL)shouldShowSlugWithSlugViewController:(id)a3
{
  v3 = [(ZWRootViewController *)self activeLensViewController];
  v4 = [v3 userIsMovingLens];

  return v4 ^ 1;
}

- (BOOL)attemptOrbZoomIfAppropriateWithSlugViewController:(id)a3
{
  v4 = a3;
  v5 = [(ZWRootViewController *)self activeLensViewController];
  v6 = [v5 inStandbyMode];

  if (v6)
  {
    v7 = [(ZWRootViewController *)self view];
    v8 = [v4 view];
    [v8 center];
    [v7 zw_convertPointToScreenCoordinates:?];
    v10 = v9;
    v12 = v11;

    v13 = [(ZWRootViewController *)self screen];
    [v13 scale];
    v15 = v10 * v14;

    v16 = [(ZWRootViewController *)self screen];
    [v16 scale];
    v18 = v12 * v17;

    *(&self->_eventUIContext + 148) |= 0x800u;
    [(ZWRootViewController *)self fullscreenEventHandler:0 didStartOrbAtLocation:v15, v18];
  }

  return v6;
}

- (void)updateOrbZoomAtPoint:(CGPoint)a3 withSlugViewController:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(ZWRootViewController *)self view];
  [v7 zw_convertPointToScreenCoordinates:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = [(ZWRootViewController *)self screen];
  [v12 scale];
  v14 = v9 * v13;

  v15 = [(ZWRootViewController *)self screen];
  [v15 scale];
  v17 = v11 * v16;

  [(ZWRootViewController *)self fullscreenEventHandler:0 updateOrbMovementAtLocation:v14, v17];
}

- (void)endOrbZoomWithSlugViewController:(id)a3
{
  v4 = a3;
  v5 = [(ZWRootViewController *)self view];
  v6 = [v4 view];

  [v6 center];
  [v5 zw_convertPointToScreenCoordinates:?];
  v8 = v7;
  v10 = v9;

  v11 = [(ZWRootViewController *)self screen];
  [v11 scale];
  v13 = v8 * v12;

  v14 = [(ZWRootViewController *)self screen];
  [v14 scale];
  v16 = v10 * v15;

  *(&self->_eventUIContext + 148) &= ~0x800u;

  [(ZWRootViewController *)self fullscreenEventHandler:0 didEndOrbAtLocation:v13, v16];
}

- (void)zoomLensViewController:(id)a3 didMoveLens:(id)a4 withDelta:(CGPoint)a5
{
  x = a5.x;
  y = a5.y;
  v13 = a3;
  v6.f64[0] = x;
  v6.f64[1] = y;
  self->_lensDeltaSinceInitialMove = vaddq_f64(v6, self->_lensDeltaSinceInitialMove);
  v7 = [(ZWRootViewController *)self pipLensViewController];
  if (v7 == v13)
  {
    v8 = [v13 isInLensResizingMode];

    if (v8)
    {
      if ([v13 activeResizeHandle] == &dword_0 + 1)
      {
        [(ZWRootViewController *)self _moveZoomItemWithController:v13 byDelta:0 animated:1 userInitiated:x, y];
LABEL_10:
        UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
        goto LABEL_12;
      }

LABEL_9:
      [(ZWRootViewController *)self _resizeZoomLensByDelta:x, y, *&x];
      goto LABEL_10;
    }
  }

  else
  {
  }

  v9 = [(ZWRootViewController *)self dockedLensViewController];
  if (v9 == v13)
  {
    v10 = [v13 isInDockResizingMode];

    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_11:
  [(ZWRootViewController *)self _moveZoomItemWithController:v13 byDelta:0 animated:1 userInitiated:x, y];
LABEL_12:
}

- (void)dockedLensViewController:(id)a3 zoomRegionVisibilityWasChanged:(BOOL)a4
{
  v4 = a4;
  v6 = [(ZWRootViewController *)self cachedValuesSerialQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __80__ZWRootViewController_dockedLensViewController_zoomRegionVisibilityWasChanged___block_invoke;
  v8[3] = &unk_78BD0;
  v8[4] = self;
  v9 = v4;
  dispatch_sync(v6, v8);

  v7 = [(ZWRootViewController *)self axuiService];
  [v7 notifyOtherDisplaysOfDockedZoomRegionVisibilityChange:v4];
}

- (BOOL)userIsInteractingWithSlugWithDockedLensViewController:(id)a3
{
  v3 = [(ZWRootViewController *)self slugViewController];
  v4 = [v3 userIsInteractingWithSlug];

  return v4;
}

- (void)updateDockedZoomRegionVisibility:(BOOL)a3
{
  v3 = a3;
  v5 = [(ZWRootViewController *)self dockedLensViewController];
  v6 = [v5 zoomRegionVisible];

  if (v6 != v3)
  {
    v7 = [(ZWRootViewController *)self dockedLensViewController];
    [v7 toggleZoomRegionVisibility];
  }
}

- (void)menuViewController:(id)a3 finishedAdjustingZoomFactor:(double)a4
{
  v7 = a3;
  if (![(ZWRootViewController *)self _isZoomFactorAtMinimum:a4])
  {
    v6 = +[ZWCoalescedSettings sharedInstance];
    [v6 setZoomFactor:a4];
  }

  [(ZWRootViewController *)self menuViewController:v7 adjustZoomFactor:0 animated:a4];
}

- (void)menuViewController:(id)a3 adjustZoomFactor:(double)a4 animated:(BOOL)a5
{
  v5 = a5;
  [(ZWRootViewController *)self _updateZoomFactor:a5 animated:?];
  v14 = [(ZWRootViewController *)self activeLensViewController];
  v8 = [(ZWRootViewController *)self dockedLensViewController];
  if (v14 == v8)
  {
    v9 = [(ZWRootViewController *)self dockedLensViewController];
    v10 = [v9 zoomRegionVisible];

    if (!v10)
    {
      return;
    }

    v14 = [(ZWRootViewController *)self dockedLensViewController];
    v8 = [(ZWRootViewController *)self dockedLensViewController];
    [v8 zoomPanOffset];
    if (v5)
    {
      v13 = 0.3;
    }

    else
    {
      v13 = -1.0;
    }

    [v14 updateZoomFactor:v5 panOffset:0 animated:a4 animationDuration:v11 completion:{v12, v13}];
  }
}

- (void)menuViewController:(id)a3 didChooseLensEffect:(id)a4
{
  v17 = a4;
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 zoomCurrentLensEffect];
  v7 = [v6 isEqualToString:v17];

  if ((v7 & 1) == 0)
  {
    v8 = +[AXSettings sharedInstance];
    [v8 setZoomCurrentLensEffect:v17];
  }

  v9 = [(ZWRootViewController *)self activeLensViewController];
  if ([v9 inStandbyMode])
  {
    v10 = [(ZWRootViewController *)self activeLensViewController];
    pipLensViewController = self->_pipLensViewController;

    if (v10 == pipLensViewController)
    {
      v12 = [(ZWRootViewController *)self activeLensViewController];
      [(ZWRootViewController *)self zoomFactor];
      v14 = v13;
      [(ZWRootViewController *)self zoomPanOffset];
      [v12 updateStandbyMode:0 zoomFactor:v17 panOffset:1 lensEffect:0 animated:v14 completion:{v15, v16}];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v12 = [(ZWRootViewController *)self activeLensViewController];
  [v12 updateLensEffect:v17 animated:1 completion:0];
LABEL_8:
}

- (void)menuViewController:(id)a3 didChooseZoomMode:(id)a4 withCompletion:(id)a5
{
  v11 = a4;
  v6 = a5;
  v7 = +[AXSettings sharedInstance];
  v8 = [v7 zoomCurrentLensMode];
  v9 = [v8 isEqualToString:v11];

  if ((v9 & 1) == 0)
  {
    v10 = +[AXSettings sharedInstance];
    [v10 setZoomPreferredCurrentLensMode:v11];
  }

  if (v6)
  {
    v6[2](v6);
  }
}

- (void)menuViewController:(id)a3 didChooseDockPosition:(id)a4 withCompletion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(ZWRootViewController *)self dockedLensViewController];
  [v9 setDockPositionIsTransitioning:1];

  +[CATransaction begin];
  [CATransaction setCompletionBlock:v8];

  v10 = +[AXSettings sharedInstance];
  v11 = [v10 zoomPreferredCurrentDockPosition];
  v12 = [v11 isEqualToString:v7];

  if ((v12 & 1) == 0)
  {
    v13 = [(ZWRootViewController *)self activeLensViewController];
    v14 = [v13 inStandbyMode];

    if (v14)
    {
      v15 = [(ZWRootViewController *)self dockedLensViewController];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = __80__ZWRootViewController_menuViewController_didChooseDockPosition_withCompletion___block_invoke_5;
      v28[3] = &unk_78D00;
      v28[4] = self;
      [v15 transitionToDockPosition:v7 completion:v28];
    }

    else
    {
      v16 = [(ZWRootViewController *)self activeLensViewController];
      v17 = [(ZWRootViewController *)self activeLensViewController];
      [v17 zoomFactor];
      v19 = v18;
      v20 = [(ZWRootViewController *)self activeLensViewController];
      [v20 zoomPanOffset];
      v22 = v21;
      v24 = v23;
      v25 = +[AXSettings sharedInstance];
      v26 = [v25 zoomCurrentLensEffect];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = __80__ZWRootViewController_menuViewController_didChooseDockPosition_withCompletion___block_invoke;
      v29[3] = &unk_79170;
      v29[4] = self;
      v30 = v7;
      [v16 updateStandbyMode:1 zoomFactor:v26 panOffset:1 lensEffect:v29 animated:v19 completion:{v22, v24}];

      v15 = v30;
    }

    v27 = +[AXSettings sharedInstance];
    [v27 setZoomPreferredCurrentDockPosition:v7];
  }

  +[CATransaction commit];
}

void __80__ZWRootViewController_menuViewController_didChooseDockPosition_withCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateSystemGestureDisablingAssertions];
  v2 = [*(a1 + 32) dockedLensViewController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __80__ZWRootViewController_menuViewController_didChooseDockPosition_withCompletion___block_invoke_2;
  v4[3] = &unk_78D00;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  [v2 transitionToDockPosition:v3 completion:v4];
}

void __80__ZWRootViewController_menuViewController_didChooseDockPosition_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) activeLensViewController];
  v3 = [*(a1 + 32) activeLensViewController];
  [v3 zoomFactor];
  v5 = v4;
  v6 = [*(a1 + 32) activeLensViewController];
  [v6 zoomPanOffset];
  v8 = v7;
  v10 = v9;
  v11 = +[AXSettings sharedInstance];
  v12 = [v11 zoomCurrentLensEffect];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __80__ZWRootViewController_menuViewController_didChooseDockPosition_withCompletion___block_invoke_3;
  v13[3] = &unk_78D00;
  v13[4] = *(a1 + 32);
  [v2 updateStandbyMode:0 zoomFactor:v12 panOffset:1 lensEffect:v13 animated:v5 completion:{v8, v10}];
}

void __80__ZWRootViewController_menuViewController_didChooseDockPosition_withCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) dockedLensViewController];
  [v2 setDockPositionIsTransitioning:0];

  [*(a1 + 32) _updateSystemGestureDisablingAssertions];
  v3 = [*(a1 + 32) cachedValuesSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __80__ZWRootViewController_menuViewController_didChooseDockPosition_withCompletion___block_invoke_4;
  block[3] = &unk_78D00;
  block[4] = *(a1 + 32);
  dispatch_sync(v3, block);
}

void __80__ZWRootViewController_menuViewController_didChooseDockPosition_withCompletion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) dockedLensViewController];
  *(*(a1 + 32) + 352) = [v2 dockPosition];
}

void __80__ZWRootViewController_menuViewController_didChooseDockPosition_withCompletion___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) dockedLensViewController];
  [v2 setDockPositionIsTransitioning:0];

  v3 = [*(a1 + 32) cachedValuesSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __80__ZWRootViewController_menuViewController_didChooseDockPosition_withCompletion___block_invoke_6;
  block[3] = &unk_78D00;
  block[4] = *(a1 + 32);
  dispatch_sync(v3, block);
}

void __80__ZWRootViewController_menuViewController_didChooseDockPosition_withCompletion___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) dockedLensViewController];
  *(*(a1 + 32) + 352) = [v2 dockPosition];
}

- (BOOL)toggleSlugVisibilityWithMenuViewController:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 zoomShouldShowSlug];
  v5 = v4;
  [v3 setZoomShouldShowSlug:v4 ^ 1];

  return v5 ^ 1;
}

- (BOOL)togglePeekZoomWithMenuViewController:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 zoomPeekZoomEnabled];
  v5 = v4;
  [v3 setZoomPeekZoomEnabled:v4 ^ 1];

  return v5 ^ 1;
}

- (void)_exitStandbyIfNecessary
{
  v3 = +[ZWCoalescedSettings sharedInstance];
  v4 = [v3 zoomInStandby];

  if (v4)
  {
    v5 = [(ZWRootViewController *)self activeLensViewController];
    v6 = +[ZWCoalescedSettings sharedInstance];
    [v6 zoomFactor];
    v8 = v7;
    [(ZWRootViewController *)self zoomPanOffset];
    v10 = v9;
    v12 = v11;
    v13 = +[AXSettings sharedInstance];
    v14 = [v13 zoomCurrentLensEffect];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __47__ZWRootViewController__exitStandbyIfNecessary__block_invoke;
    v15[3] = &unk_78D00;
    v15[4] = self;
    [v5 updateStandbyMode:0 zoomFactor:v14 panOffset:1 lensEffect:v15 animated:v8 completion:{v10, v12}];
  }
}

- (void)toggleLensVisibilityWithMenuViewController:(id)a3
{
  [(ZWRootViewController *)self zoomPanOffset];
  v5 = v4;
  v7 = v6;
  v8 = +[ZWCoalescedSettings sharedInstance];
  [v8 zoomFactor];
  v10 = v9;

  [(ZWRootViewController *)self _dismissMenuAnimated:1];
  v11 = +[AXSettings sharedInstance];
  v12 = [v11 zoomCurrentLensEffect];

  v13 = +[ZWCoalescedSettings sharedInstance];
  v14 = [v13 zoomInStandby];

  v15 = +[ZWCoalescedSettings sharedInstance];
  [v15 setZoomInStandby:v14 ^ 1];

  [(ZWRootViewController *)self setZoomFactor:v10];
  v16 = [(ZWRootViewController *)self activeLensViewController];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __67__ZWRootViewController_toggleLensVisibilityWithMenuViewController___block_invoke;
  v18[3] = &unk_78D00;
  v18[4] = self;
  [v16 updateStandbyMode:v14 ^ 1 zoomFactor:v12 panOffset:1 lensEffect:v18 animated:v10 completion:{v5, v7}];

  v17 = [(ZWRootViewController *)self kbContext];
  [v17 keyboardFrame];
  [(ZWRootViewController *)self _updateKeyboardFrame:?];
}

- (void)toggleLensResizeModeWithMenuViewController:(id)a3
{
  [(ZWRootViewController *)self _dismissMenuAnimated:1];
  v4 = [(ZWRootViewController *)self activeLensViewController];
  v5 = [(ZWRootViewController *)self pipLensViewController];

  if (v4 == v5)
  {
    v6 = [(ZWRootViewController *)self pipLensViewController];
    v7 = [v6 isInLensResizingMode];

    [(ZWRootViewController *)self _setPIPLensResizingEnabled:v7 ^ 1];

    [(ZWRootViewController *)self _exitStandbyIfNecessary];
  }
}

- (BOOL)inFullscreenModeForMenuViewController:(id)a3
{
  v3 = self;
  v4 = [(ZWRootViewController *)self activeLensViewController];
  v5 = [(ZWRootViewController *)v3 fullscreenLensViewController];
  LOBYTE(v3) = v4 == v5;

  return v3;
}

- (BOOL)inPIPModeForMenuViewController:(id)a3
{
  v3 = self;
  v4 = [(ZWRootViewController *)self activeLensViewController];
  v5 = [(ZWRootViewController *)v3 pipLensViewController];
  LOBYTE(v3) = v4 == v5;

  return v3;
}

- (BOOL)inDockedModeForMenuViewController:(id)a3
{
  v3 = self;
  v4 = [(ZWRootViewController *)self activeLensViewController];
  v5 = [(ZWRootViewController *)v3 dockedLensViewController];
  LOBYTE(v3) = v4 == v5;

  return v3;
}

- (BOOL)inStandByForMenuViewController:(id)a3
{
  v3 = [(ZWRootViewController *)self activeLensViewController];
  v4 = [v3 inStandbyMode];

  return v4;
}

- (double)zoomFactorForMenuViewController:(id)a3
{
  v4 = [(ZWRootViewController *)self activeLensViewController];
  v5 = [v4 inStandbyMode];

  if (v5)
  {
    return AXZoomMinimumZoomLevel;
  }

  [(ZWRootViewController *)self zoomFactor];
  return result;
}

- (void)menuDidAppear:(id)a3
{
  v4 = a3;
  v5 = [(ZWRootViewController *)self cachedValuesSerialQueue];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = __38__ZWRootViewController_menuDidAppear___block_invoke;
  v11 = &unk_79170;
  v12 = self;
  v13 = v4;
  v6 = v4;
  dispatch_sync(v5, &v8);

  LODWORD(v5) = UIAccessibilityLayoutChangedNotification;
  v7 = [v6 view];
  UIAccessibilityPostNotification(v5, v7);

  [(ZWRootViewController *)self _setPIPLensResizingEnabled:0];
  [(ZWRootViewController *)self _setDockResizingEnabled:0];
}

void __38__ZWRootViewController_menuDidAppear___block_invoke(uint64_t a1)
{
  v1 = (*(a1 + 32) + 80);
  v6 = [*(a1 + 40) view];
  [v6 zw_convertBoundsToScreenCoordinates];
  v1[12] = v2;
  v1[13] = v3;
  v1[14] = v4;
  v1[15] = v5;
}

- (void)externalClientSetZoomFactor:(double)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __52__ZWRootViewController_externalClientSetZoomFactor___block_invoke;
  v7[3] = &unk_78E98;
  v7[4] = self;
  *&v7[5] = a3;
  v4 = objc_retainBlock(v7);
  v5 = v4;
  if (self->_inUnitTestingMode)
  {
    (v4[2])(v4);
  }

  else
  {
    v6 = v4;
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

id __52__ZWRootViewController_externalClientSetZoomFactor___block_invoke(uint64_t a1)
{
  [*(a1 + 32) zoomFactorRespectingUserPreferredMaximumZoom:*(a1 + 40)];
  v3 = v2;
  if (([*(a1 + 32) _isZoomFactorAtMinimum:?] & 1) == 0)
  {
    v4 = +[ZWCoalescedSettings sharedInstance];
    [v4 setZoomFactor:v3];
  }

  v5 = *(a1 + 32);

  return [v5 menuViewController:0 adjustZoomFactor:1 animated:v3];
}

- (void)externalClientSetZoomPanOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(ZWRootViewController *)self zoomPanOffset];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __55__ZWRootViewController_externalClientSetZoomPanOffset___block_invoke;
  v11[3] = &unk_78D28;
  v11[4] = self;
  *&v11[5] = x - v6;
  *&v11[6] = y - v7;
  v8 = objc_retainBlock(v11);
  v9 = v8;
  if (self->_inUnitTestingMode)
  {
    (v8[2])(v8);
  }

  else
  {
    v10 = v8;
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

void __55__ZWRootViewController_externalClientSetZoomPanOffset___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeLensViewController];
  v3 = [v2 inStandbyMode];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = [v4 activeLensViewController];
    [v4 _moveZoomItemWithController:v5 byDelta:1 animated:1 userInitiated:{*(a1 + 40), *(a1 + 48)}];
  }
}

- (void)externalClientWantsToAutopan:(CGPoint)a3 withPanningStyle:(unint64_t)a4
{
  v5 = [(ZWRootViewController *)self activeLensViewController];
  v6 = [v5 inStandbyMode];

  if ((v6 & 1) == 0)
  {
    [(ZWRootViewController *)self zoomFrame];
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

void __70__ZWRootViewController_externalClientWantsToAutopan_withPanningStyle___block_invoke(uint64_t a1)
{
  v62 = 0.0;
  v2 = *(a1 + 40);
  switch(v2)
  {
    case 0:
      v29 = *(a1 + 32);
      [v29 zoomFactor];
      [v29 zoomFrameForPanningContinuouslyToPoint:*(a1 + 48) zoomFactor:{*(a1 + 56), v30}];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v39 = [*(a1 + 32) activeLensViewController];
      v40 = [*(a1 + 32) dockedLensViewController];

      if (v39 != v40)
      {
        v41 = [*(a1 + 32) view];
        v42 = [v41 window];
        v43 = [*(a1 + 32) view];
        v44 = [v43 window];
        [v44 convertRect:0 fromWindow:{v32, v34, v36, v38}];
        [v42 _convertRectToSceneReferenceSpace:?];
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v52 = v51;

        v23 = *(a1 + 32);
        v24 = v46;
        v25 = v48;
        v26 = v50;
        v27 = v52;
        v28 = 0;
        goto LABEL_10;
      }

      AX_CGRectGetCenter();
      v53 = *(a1 + 32);
LABEL_13:
      [v53 _physicalScreenPointForVirtualScreenPoint:{v54, v55}];
      v57 = v56;
      v59 = v58;
      v60 = [*(a1 + 32) dockedLensViewController];
      [v60 moveDockedZoomToPhysicalScreenPoint:0 animated:{v57, v59}];

      break;
    case 1:
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v9 = [*(a1 + 32) activeLensViewController];
      v10 = [*(a1 + 32) dockedLensViewController];

      if (v9 != v10)
      {
        v11 = [*(a1 + 32) view];
        v12 = [v11 window];
        v13 = [*(a1 + 32) view];
        v14 = [v13 window];
        [v14 convertRect:0 fromWindow:{v7 + -1.0, v8 + -1.0, 2.0, 2.0}];
        [v12 _convertRectToSceneReferenceSpace:?];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v23 = *(a1 + 32);
        v24 = v16;
        v25 = v18;
        v26 = v20;
        v27 = v22;
        v28 = 1;
LABEL_10:
        [v23 _focusLensOnRect:1 panLensContent:v28 recentreLens:0 animated:0 completion:{v24, v25, v26, v27}];
        break;
      }

      v53 = *(a1 + 32);
      v54 = *(a1 + 48);
      v55 = *(a1 + 56);
      goto LABEL_13;
    case 2:
      [*(a1 + 32) _normalizePoint:*(a1 + 48) withRespectToFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
      v4 = v3;
      v6 = v5;
      if ([*(a1 + 32) fullscreenEventHandler:0 autopanShouldStartWithPoint:&v62 speedFactor:1 initialSingleFingerLocation:v3 fingerCount:v5 pointHasBeenMapped:{v3, v5, 1.0}])
      {
        [*(a1 + 32) fullscreenEventHandler:0 autopanWithLocation:0 initialSingleFingerLocation:1 distance:v4 animationDuration:v6 useGutterDistance:v4 pointHasBeenMapped:{v6, v62 * 4.0, 0.0166666675}];
      }

      break;
  }

  v61 = [*(a1 + 32) activeLensViewController];
  [v61 zoomMovementDidEnd];
}

- (CGRect)zoomFrameForPanningContinuouslyToPoint:(CGPoint)a3 zoomFactor:(double)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(ZWRootViewController *)self activeLensViewController];
  v9 = [v8 inStandbyMode];
  v10 = 1.0;
  if ((v9 & 1) == 0)
  {
    [(ZWRootViewController *)self zoomFactor];
  }

  v11 = v10 / a4;

  [(ZWRootViewController *)self _screenSizeForCurrentOrientation];
  v13 = v12;
  v15 = v14;
  [(ZWRootViewController *)self zoomFrame];
  v17 = v11 * v16;
  v19 = v11 * v18;
  v20 = x + -x / v13 * v17;
  v21 = y + -y / v15 * v19;
  result.size.height = v19;
  result.size.width = v17;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- ($2F34F6A4A708D3F7715AC605E075D30F)currentUIContextForEventProcessor:(SEL)a3
{
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x15010000000;
  v16 = &unk_6F53D;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  if (self->_inStandbyForFluidSwitcherGesture)
  {
    v7 = [(ZWRootViewController *)self cachedValuesSerialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __58__ZWRootViewController_currentUIContextForEventProcessor___block_invoke;
    block[3] = &unk_79310;
    block[4] = self;
    block[5] = &v13;
    dispatch_sync(v7, block);
  }

  else
  {
    v8 = [(ZWRootViewController *)self cachedValuesSerialQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __58__ZWRootViewController_currentUIContextForEventProcessor___block_invoke_2;
    v11[3] = &unk_79310;
    v11[4] = self;
    v11[5] = &v13;
    dispatch_sync(v8, v11);

    v9 = v14;
    if ((v14[41] & 0x80) != 0)
    {
      *(v14 + 39) = CGPointZero;
      v9[20] = AXZoomMinimumZoomLevel;
    }
  }

  memcpy(retstr, v14 + 4, sizeof($2F34F6A4A708D3F7715AC605E075D30F));
  _Block_object_dispose(&v13, 8);

  return result;
}

- (int64_t)currentInterfaceOrientationForEventProcessor:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(ZWRootViewController *)self cachedValuesSerialQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __69__ZWRootViewController_currentInterfaceOrientationForEventProcessor___block_invoke;
  v8[3] = &unk_79310;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(v5, v8);

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (CGSize)currentScreenSizeForEventProcessor:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3010000000;
  v14 = &unk_6F53D;
  v15 = CGSizeZero;
  v5 = [(ZWRootViewController *)self cachedValuesSerialQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __59__ZWRootViewController_currentScreenSizeForEventProcessor___block_invoke;
  v10[3] = &unk_79310;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(v5, v10);

  v6 = v12[4];
  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  v8 = v6;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

__n128 __59__ZWRootViewController_currentScreenSizeForEventProcessor___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 96);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

- (unsigned)currentWindowContextIdForEventProcessor:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = [(ZWRootViewController *)self cachedValuesSerialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __64__ZWRootViewController_currentWindowContextIdForEventProcessor___block_invoke;
  v7[3] = &unk_79310;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v5, v7);

  LODWORD(self) = *(v9 + 6);
  _Block_object_dispose(&v8, 8);

  return self;
}

- (unsigned)currentDisplayIdForEventProcessor:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = [(ZWRootViewController *)self cachedValuesSerialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __58__ZWRootViewController_currentDisplayIdForEventProcessor___block_invoke;
  v7[3] = &unk_79310;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v5, v7);

  LODWORD(self) = *(v9 + 6);
  _Block_object_dispose(&v8, 8);

  return self;
}

- (void)eventProcessor:(id)a3 didGetFirstTouchAtLocation:(CGPoint)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __66__ZWRootViewController_eventProcessor_didGetFirstTouchAtLocation___block_invoke;
  block[3] = &unk_78D28;
  block[4] = self;
  v5 = a4;
  dispatch_async(&_dispatch_main_q, block);
}

void __66__ZWRootViewController_eventProcessor_didGetFirstTouchAtLocation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) idleTouchTimer];
  [v2 cancel];

  v3 = [*(a1 + 32) slugViewController];
  v4 = [*(a1 + 32) slugViewController];
  v5 = [v4 view];
  [v5 zw_convertPointFromScreenCoordinates:{*(a1 + 40), *(a1 + 48)}];
  [v3 userInteractionHasBecomeActiveWithFirstTouchAtLocation:?];

  v6 = [*(a1 + 32) activeLensViewController];
  v7 = [*(a1 + 32) activeLensViewController];
  v8 = [v7 view];
  [v8 zw_convertPointFromScreenCoordinates:{*(a1 + 40), *(a1 + 48)}];
  [v6 userInteractionHasBecomeActiveWithFirstTouchAtLocation:?];

  v11 = [*(a1 + 32) menuViewController];
  v9 = [*(a1 + 32) menuViewController];
  v10 = [v9 view];
  [v10 zw_convertPointFromScreenCoordinates:{*(a1 + 40), *(a1 + 48)}];
  [v11 userInteractionHasBecomeActiveWithFirstTouchAtLocation:?];
}

- (void)eventProcessor:(id)a3 didGetTouchInSpeakFingerMode:(CGPoint)a4 firstTouchWentIntoLens:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v9 = [(ZWRootViewController *)self activeLensViewController];
  v10 = [(ZWRootViewController *)self pipLensViewController];
  if (v9 != v10 || v5)
  {
    goto LABEL_6;
  }

  v11 = [(ZWRootViewController *)self activeLensViewController];
  v12 = [v11 inStandbyMode];

  if ((v12 & 1) == 0)
  {
    [(ZWRootViewController *)self _determineSuitableLensFrame];
    v20.x = x;
    v20.y = y;
    if (!CGRectContainsPoint(v21, v20))
    {
      self->_pipWasOnBeforeSpeakFingerStarted = 1;
      v13 = +[AXSettings sharedInstance];
      v9 = [v13 zoomCurrentLensEffect];

      v10 = [(ZWRootViewController *)self activeLensViewController];
      [(ZWRootViewController *)self zoomFactor];
      v15 = v14;
      [(ZWRootViewController *)self zoomPanOffset];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = __91__ZWRootViewController_eventProcessor_didGetTouchInSpeakFingerMode_firstTouchWentIntoLens___block_invoke;
      v19[3] = &unk_78D00;
      v19[4] = self;
      [v10 updateStandbyMode:1 zoomFactor:v9 panOffset:0 lensEffect:v19 animated:v15 completion:{v16, v17}];
LABEL_6:
    }
  }

  v18 = +[AXSpeakFingerManager sharedInstance];
  [v18 speakElementAtLocation:{x, y}];
}

- (BOOL)eventProcessor:(id)a3 didGetWheelEventWithDelta:(int64_t)a4
{
  [(ZWRootViewController *)self zoomFactor];
  if (v6 <= AXZoomMinimumZoomLevel)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(ZWRootViewController *)self activeLensViewController];
    v8 = [v7 inStandbyMode] ^ 1;
  }

  v9 = self->_snarfingWheelEventsForZoom || [(ZWRootViewController *)self lastKeyboardCommand]== &dword_C + 2;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __65__ZWRootViewController_eventProcessor_didGetWheelEventWithDelta___block_invoke;
  v21[3] = &unk_78D00;
  v21[4] = self;
  v10 = objc_retainBlock(v21);
  if (!v8 || !self->_snarfingWheelEventsForPan && !v9 || [(ZWRootViewController *)self carouselLockActive])
  {
    if (self->_inUnitTestingMode)
    {
      (v10[2])(v10);
      if (!v9)
      {
LABEL_13:
        v11 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __65__ZWRootViewController_eventProcessor_didGetWheelEventWithDelta___block_invoke_2;
      block[3] = &unk_78D50;
      v20 = v10;
      dispatch_async(&_dispatch_main_q, block);

      if (!v9)
      {
        goto LABEL_13;
      }
    }
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __65__ZWRootViewController_eventProcessor_didGetWheelEventWithDelta___block_invoke_3;
  v17[3] = &unk_79518;
  v18 = v9;
  v17[4] = self;
  v17[5] = a4;
  v12 = objc_retainBlock(v17);
  v13 = v12;
  if (self->_inUnitTestingMode)
  {
    (v12[2])(v12);
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __65__ZWRootViewController_eventProcessor_didGetWheelEventWithDelta___block_invoke_4;
    v15[3] = &unk_78D50;
    v16 = v12;
    dispatch_async(&_dispatch_main_q, v15);
  }

  v11 = 1;
LABEL_19:

  return v11;
}

id __65__ZWRootViewController_eventProcessor_didGetWheelEventWithDelta___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2 == 1)
  {
    [v3 _handleZoomWheelEventWithDelta:v4];
  }

  else
  {
    [v3 _handlePanWheelEventWithDelta:v4];
  }

  [*(a1 + 32) sendUserEventOccurred];
  v5 = *(a1 + 32);

  return [v5 _updateMinimapStatus];
}

- (void)eventProcessor:(id)a3 didGetPanEventWithDelta:(int64_t)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __63__ZWRootViewController_eventProcessor_didGetPanEventWithDelta___block_invoke;
  v4[3] = &unk_78E98;
  v4[4] = self;
  v4[5] = a4;
  dispatch_async(&_dispatch_main_q, v4);
}

id __63__ZWRootViewController_eventProcessor_didGetPanEventWithDelta___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) snarfingWheelEventsForPan];
  [*(a1 + 32) setSnarfingWheelEventsForPan:1];
  [*(a1 + 32) _handlePanWheelEventWithDelta:*(a1 + 40) animated:1 animationDuration:0.3];
  [*(a1 + 32) sendUserEventOccurred];
  [*(a1 + 32) _updateMinimapStatus];
  v3 = *(a1 + 32);

  return [v3 setSnarfingWheelEventsForPan:v2];
}

- (void)moveCursorToCurrentFakeCursorLocation
{
  v3 = [(ZWRootViewController *)self fakeLaserVC];
  v4 = [v3 fingerController];
  v5 = [v4 fingerContainerView];
  v6 = [(ZWRootViewController *)self fakeLaserVC];
  v7 = [v6 fingerController];
  v8 = [v7 fingerModels];
  v9 = [v8 firstObject];
  [v9 location];
  [v5 convertPoint:0 toView:?];
  v11 = v10;
  v13 = v12;

  [(ZWRootViewController *)self _virtualScreenPointForPhysicalScreenPoint:v11, v13];
  v15 = v14;
  v17 = v16;
  v22 = +[BKSMousePointerService sharedInstance];
  v18 = [BKSContextRelativePoint alloc];
  v19 = [(ZWRootViewController *)self view];
  v20 = [v19 window];
  v21 = [v18 initWithPoint:objc_msgSend(v20 contextID:{"_contextId"), v15, v17}];
  [v22 setContextRelativePointerPosition:v21 onDisplay:0 withAnimationParameters:0 restrictingToPID:0xFFFFFFFFLL];
}

- (void)eventProcessor:(id)a3 didGetPointerEventAtLocation:(CGPoint)a4 withEventRep:(id)a5
{
  v6 = a5;
  v5 = v6;
  AXPerformBlockOnMainThread();
}

void __81__ZWRootViewController_eventProcessor_didGetPointerEventAtLocation_withEventRep___block_invoke(uint64_t a1)
{
  if (ZWLaserIsEnabled())
  {
    v130 = [*(a1 + 32) pointerControllerInfo];
    [v130 pointerButtonMask];
    if (v2 <= 0.0)
    {
      [v130 pointerButtonClickCount];
      v3 = v4 > 0.0;
    }

    else
    {
      v3 = 1;
    }

    v136 = 0;
    v137 = &v136;
    v138 = 0x2020000000;
    v139 = 0;
    v5 = *(a1 + 40);
    v6 = *(v5 + 1152);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __81__ZWRootViewController_eventProcessor_didGetPointerEventAtLocation_withEventRep___block_invoke_2;
    block[3] = &unk_79310;
    block[4] = v5;
    block[5] = &v136;
    dispatch_sync(v6, block);
    v129 = v3;
    if (!v3)
    {
      v7 = [*(a1 + 40) redirectPointerAssertion];
      if (v7 && ([*(a1 + 40) redirectPointerLocation], vabdd_f64(v8, *(a1 + 48)) < 0.001))
      {
        [*(a1 + 40) redirectPointerLocation];
        v10 = vabdd_f64(v9, *(a1 + 56)) < 0.001;

        if (v10)
        {
LABEL_84:
          _Block_object_dispose(&v136, 8);

          return;
        }
      }

      else
      {
      }
    }

    [*(a1 + 40) setLastPointerLocation:{*(a1 + 48), *(a1 + 56)}];
    if (!v129)
    {
      goto LABEL_17;
    }

    if ((v137[3] & 1) == 0)
    {
      v11 = [*(a1 + 40) presentedViewController];
      v12 = [*(a1 + 40) menuViewController];
      v13 = v11 == v12;

      if (v13)
      {
        [*(a1 + 40) _dismissMenuAnimated:1];
      }
    }

    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = [*(a1 + 40) redirectPointerAssertion];
    v17 = v16 == 0;

    if (v17)
    {
LABEL_17:
      [*(a1 + 40) _physicalScreenPointForVirtualScreenPoint:{*(a1 + 48), *(a1 + 56)}];
      v14 = v18;
      v15 = v19;
      v128 = 0;
    }

    else
    {
      v128 = 1;
    }

    v20 = [*(a1 + 40) view];
    v21 = [v20 window];
    v22 = [v21 hitTest:0 withEvent:{v14, v15}];

    v23 = v15;
    v24 = v14;
    for (i = *(a1 + 40); ; i = v28)
    {
      v26 = [i presentedViewController];
      v27 = v26 == 0;

      if (v27)
      {
        break;
      }

      v28 = [i presentedViewController];
    }

    if (i == *(a1 + 40))
    {
      v29 = 0;
    }

    else
    {
      v29 = i;
    }

    v30 = v29;

    v133[0] = _NSConcreteStackBlock;
    v133[1] = 3221225472;
    v133[2] = __81__ZWRootViewController_eventProcessor_didGetPointerEventAtLocation_withEventRep___block_invoke_3;
    v133[3] = &unk_79540;
    v133[4] = *(a1 + 40);
    v31 = v30;
    v134 = v31;
    v32 = [v22 _accessibilityFindAncestor:v133 startWithSelf:1];
    if (v32)
    {
      v33 = [*(a1 + 40) slugViewController];
      v34 = [v33 view];
      if (v32 != v34)
      {
        v35 = [v31 view];
        if (v32 != v35)
        {
          if (v129)
          {
            v36 = *(v137 + 24);

            if ((v36 & 1) == 0)
            {
              if (v137[3])
              {
                v37 = 0;
                goto LABEL_68;
              }

              goto LABEL_59;
            }

LABEL_36:
            v38 = [*(a1 + 40) lastHoveredView];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v40 = [*(a1 + 40) lastHoveredView];
              [v40 setHighlighted:0];
            }

            v41 = [v31 view];
            if (v32)
            {
              v42 = v32 == v41;
            }

            else
            {
              v42 = 0;
            }

            v43 = v42;

            if (v43)
            {
              v44 = [v22 _accessibilityFindAncestor:&__block_literal_global_6 startWithSelf:1];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v44 setHighlighted:1];
                v45 = v44;

                v22 = v45;
              }

              v46 = [v31 view];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v47 = [v46 contentView];

                v46 = v47;
              }

              v48 = [*(a1 + 40) fakeLaserVC];
              v49 = [v48 parentViewController];
              v50 = v49 == v31;

              if (!v50)
              {
                v51 = [*(a1 + 40) fakeLaserVC];
                v52 = [v51 view];
                [v52 removeFromSuperview];

                v53 = [*(a1 + 40) fakeLaserVC];
                [v53 removeFromParentViewController];

                v54 = [*(a1 + 40) fakeLaserVC];
                [v31 addChildViewController:v54];

                v55 = [*(a1 + 40) fakeLaserVC];
                v56 = [v55 view];
                [v46 addSubview:v56];

                v57 = [*(a1 + 40) fakeLaserVC];
                [v57 didMoveToParentViewController:v31];

                v58 = [*(a1 + 40) fakeLaserVC];
                v59 = [v58 view];
                [v46 bringSubviewToFront:v59];
              }

              v60 = [*(a1 + 40) view];
              [v60 convertPoint:v46 toView:{v14, v15}];
              v14 = v61;
              v15 = v62;
            }

            else
            {
              v63 = [*(a1 + 40) fakeLaserVC];
              v64 = [v63 parentViewController];
              v65 = v64 == *(a1 + 40);

              if (v65)
              {
LABEL_55:
                v77 = [*(a1 + 40) hidePointerAssertion];
                v78 = v77 == 0;

                if (v78)
                {
                  v79 = [*(*(a1 + 40) + 1200) persistentlyHidePointerAssertionForReason:3];
                  [*(a1 + 40) setHidePointerAssertion:v79];
                }

                v80 = [*(a1 + 40) redirectPointerAssertion];
                v81 = +[BKSMousePointerService sharedInstance];
                v82 = [BKSContextRelativePoint alloc];
                v83 = [*(a1 + 40) view];
                v84 = [v83 window];
                v85 = [v82 initWithPoint:objc_msgSend(v84 contextID:{"_contextId"), v24, v23}];
                v86 = [v81 acquireButtonDownPointerRepositionAssertionForReason:@"Pointer is over Zoom UI" contextRelativePointerPosition:v85 onDisplay:0 restrictingToPID:0xFFFFFFFFLL];
                [*(a1 + 40) setRedirectPointerAssertion:v86];

                [*(a1 + 40) setRedirectPointerLocation:{v24, v23}];
                [v80 invalidate];
                v87 = [*(a1 + 40) fakeLaserVC];
                v88 = [v87 fingerController];
                v89 = [AXPIFingerModel fingerModelForLocation:v14, v15];
                v140 = v89;
                v90 = [NSArray arrayWithObjects:&v140 count:1];
                [v88 showFingerModels:v90 animated:0 startPointForAnimation:{v14, v15}];

                v91 = *(a1 + 40);
                v92 = *(v91 + 1152);
                v132[0] = _NSConcreteStackBlock;
                v132[1] = 3221225472;
                v132[2] = __81__ZWRootViewController_eventProcessor_didGetPointerEventAtLocation_withEventRep___block_invoke_5;
                v132[3] = &unk_78D00;
                v132[4] = v91;
                dispatch_sync(v92, v132);

                v37 = 0;
LABEL_67:
                if (!v129)
                {
                  v116 = [*(a1 + 40) fakeLaserVC];
                  v117 = [v116 fingerController];
                  v118 = [v117 fingerModels];
                  v119 = [v118 firstObject];
                  v120 = [v119 isPressed];

                  if (!v120)
                  {
                    goto LABEL_77;
                  }

                  v114 = [*(a1 + 40) fakeLaserVC];
                  v115 = [v114 fingerController];
                  [v115 liftFingersUpAnimated:1 sendTouchEvents:0];
                  goto LABEL_76;
                }

LABEL_68:
                [v130 pointerButtonMask];
                if (v106 == 0.0 && *(v137 + 24) == 1)
                {
                  v107 = [*(a1 + 40) redirectPointerAssertion];
                  v108 = v107 == 0;

                  if (!v108)
                  {
                    [*(a1 + 40) moveCursorToCurrentFakeCursorLocation];
                    v37 = 1;
                  }
                }

                v109 = [*(a1 + 40) fakeLaserVC];
                v110 = [v109 fingerController];
                v111 = [v110 fingerModels];
                v112 = [v111 firstObject];
                v113 = [v112 isPressed];

                if (v113)
                {
LABEL_77:
                  v121 = [*(a1 + 40) lastHoveredView];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v122 = [*(a1 + 40) lastHoveredView];
                    v123 = v122 == v22;

                    if (v123)
                    {
LABEL_81:
                      [*(a1 + 40) setLastHoveredView:v22];
                      v124 = [*(a1 + 40) slugViewController];
                      v125 = [v124 userIsInteractingWithSlug];

                      if (((v128 | v125 | v37) & 1) == 0)
                      {
                        v126 = *(a1 + 40);
                        v127 = +[AXSettings sharedInstance];
                        [v126 externalClientWantsToAutopan:objc_msgSend(v127 withPanningStyle:{"laserZoomPanningStyle"), *(a1 + 48), *(a1 + 56)}];
                      }

                      goto LABEL_84;
                    }

                    v121 = [*(a1 + 40) lastHoveredView];
                    [v121 setHighlighted:0];
                  }

                  goto LABEL_81;
                }

                v114 = [*(a1 + 40) fakeLaserVC];
                v115 = [v114 fingerController];
                [v115 pressFingersDownAnimated:1 sendTouchEvents:0];
LABEL_76:

                goto LABEL_77;
              }

              v66 = [*(a1 + 40) fakeLaserVC];
              v67 = [v66 view];
              [v67 removeFromSuperview];

              v68 = [*(a1 + 40) fakeLaserVC];
              [v68 removeFromParentViewController];

              v69 = *(a1 + 40);
              v70 = [v69 fakeLaserVC];
              [v69 addChildViewController:v70];

              v71 = [*(a1 + 40) containerView];
              v72 = [*(a1 + 40) fakeLaserVC];
              v73 = [v72 view];
              [v71 addSubview:v73];

              v74 = [*(a1 + 40) containerView];
              v75 = [*(a1 + 40) fakeLaserVC];
              v76 = [v75 view];
              [v74 bringSubviewToFront:v76];

              v44 = [*(a1 + 40) fakeLaserVC];
              [v44 didMoveToParentViewController:*(a1 + 40)];
            }

            goto LABEL_55;
          }

LABEL_59:
          v93 = [*(a1 + 40) redirectPointerAssertion];
          v94 = v93 == 0;

          if (!v94)
          {
            v95 = [*(a1 + 40) redirectPointerAssertion];
            [v95 invalidate];

            [*(a1 + 40) setRedirectPointerAssertion:0];
          }

          v96 = [*(a1 + 40) hidePointerAssertion];
          v97 = v96 == 0;

          if (v97)
          {
            v37 = 0;
          }

          else
          {
            v98 = [*(a1 + 40) fakeLaserVC];
            v99 = [v98 fingerController];
            v100 = [v99 fingerModels];
            v37 = [v100 count] != 0;

            if (v37)
            {
              [*(a1 + 40) moveCursorToCurrentFakeCursorLocation];
            }

            v101 = [*(a1 + 40) hidePointerAssertion];
            [v101 invalidate];

            [*(a1 + 40) setHidePointerAssertion:0];
          }

          v102 = [*(a1 + 40) fakeLaserVC];
          v103 = [v102 fingerController];
          [v103 clearAllFingersAnimated:0 endPointForAnimation:{CGPointZero.x, CGPointZero.y}];

          v104 = *(a1 + 40);
          v105 = *(v104 + 1152);
          v131[0] = _NSConcreteStackBlock;
          v131[1] = 3221225472;
          v131[2] = __81__ZWRootViewController_eventProcessor_didGetPointerEventAtLocation_withEventRep___block_invoke_6;
          v131[3] = &unk_78D00;
          v131[4] = v104;
          dispatch_sync(v105, v131);
          goto LABEL_67;
        }
      }

      goto LABEL_36;
    }

    if (v129 && (v137[3] & 1) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_59;
  }
}

BOOL __81__ZWRootViewController_eventProcessor_didGetPointerEventAtLocation_withEventRep___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) slugViewController];
  v5 = [v4 view];
  if (v5 == v3)
  {
    v7 = 1;
  }

  else
  {
    v6 = [*(a1 + 40) view];
    v7 = v6 == v3;
  }

  return v7;
}

BOOL __81__ZWRootViewController_eventProcessor_didGetPointerEventAtLocation_withEventRep___block_invoke_4(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)sendUserEventOccurred
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - self->_lastEventTime > 1.5)
  {
    v4 = +[AXUserEventTimer sharedInstance];
    [v4 userEventOccurred];

    self->_lastEventTime = Current;
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  [(ZWRootViewController *)self setScrollBeganWhileSnarfingScrolls:[(ZWRootViewController *)self lastKeyboardCommand]== &dword_C + 2];
  [(ZWRootViewController *)self setLastScrollTrapOffset:5000.0];
  [v4 setContentOffset:{5000.0, 5000.0}];
}

- (void)scrollViewDidScroll:(id)a3
{
  v13 = a3;
  if ([(ZWRootViewController *)self scrollBeganWhileSnarfingScrolls])
  {
    [v13 contentOffset];
    v5 = v4;
    [(ZWRootViewController *)self lastScrollTrapOffset];
    v7 = v5 - v6;
    [v13 contentOffset];
    [(ZWRootViewController *)self setLastScrollTrapOffset:v8];
    v9 = +[BKSMousePointerService sharedInstance];
    v10 = [v9 globalDevicePreferences];
    v11 = [v10 enableNaturalScrolling];

    v12 = -v7;
    if (v11)
    {
      v12 = v7;
    }

    [(ZWRootViewController *)self _handleZoomWheelEventWithDelta:v12];
  }
}

- (CGPoint)pointerLocationToZoomInToWithZoomFactor:(double)a3
{
  [(ZWRootViewController *)self lastPointerLocation];
  v6 = v5;
  v8 = v7;
  v9 = +[AXSettings sharedInstance];
  v10 = [v9 laserZoomPanningStyle];

  if (v10)
  {
    v11 = v6;
    v12 = v8;
  }

  else
  {
    [(ZWRootViewController *)self zoomFrameForPanningContinuouslyToPoint:v6 zoomFactor:v8, a3];

    AX_CGRectGetCenter();
  }

  result.y = v12;
  result.x = v11;
  return result;
}

- (void)_handleZoomWheelEventWithDelta:(int64_t)a3
{
  v5 = [(ZWRootViewController *)self activeLensViewController];
  v6 = 1.0;
  if (([v5 inStandbyMode] & 1) == 0)
  {
    [(ZWRootViewController *)self zoomFactor];
    v6 = v7;
  }

  [(ZWRootViewController *)self _screenSizeForCurrentOrientation];
  v9 = v6 * (v8 / (v8 - a3));
  if (v9 < AXZoomMinimumZoomLevel)
  {
    v9 = AXZoomMinimumZoomLevel;
  }

  [(ZWRootViewController *)self setZoomFactorRespectingUserPreferredMaximumZoom:v9];
  [(ZWRootViewController *)self pointerLocationToZoomInToWithZoomFactor:?];
  [ZWRootViewController zoomInToPoint:"zoomInToPoint:withZoomFactor:animated:" withZoomFactor:0 animated:?];
  self->_lastWheelDelta = a3;
}

- (void)_handlePanWheelEventWithDelta:(int64_t)a3 animated:(BOOL)a4 animationDuration:(double)a5
{
  v5 = a4;
  v7 = (a3 * 0.7);
  lastWheelDelta = self->_lastWheelDelta;
  if (lastWheelDelta > 0.0 && v7 < 0 || (lastWheelDelta < 0.0 ? (v9 = v7 < 1) : (v9 = 1), !v9))
  {
    self->_lastWheelDelta = 0.0;
    lastWheelDelta = 0.0;
  }

  v69 = v7;
  v10 = vcvtd_n_f64_s64(v7, 1uLL) + lastWheelDelta;
  [(ZWRootViewController *)self zoomPanOffset];
  [(ZWRootViewController *)self mirrorPanOffsetForRTLIfNecessary:?];
  v12 = v11;
  v14 = v13;
  [(ZWRootViewController *)self zoomFactor];
  v16 = v15;
  v17 = [(ZWRootViewController *)self activeLensViewController];
  [(ZWRootViewController *)self zoomFactor];
  [v17 maximumPanOffsetWithZoomFactor:?];
  v19 = v18;
  v21 = v20;

  v22 = [(ZWRootViewController *)self activeLensViewController];
  v23 = [v22 view];
  [v23 bounds];
  v25 = v24;
  [(ZWRootViewController *)self zoomFactor];
  v27 = v25 / v26 * 0.67;

  if ([(ZWRootViewController *)self _watchUIInverted])
  {
    v28 = -1.0;
  }

  else
  {
    v28 = 1.0;
  }

  if (!self->_isSweepingToNextZoomRow)
  {
    v34 = v27 * 0.5;
    v35 = v10 + v12;
    if (v10 > 0.0 && v35 > v19)
    {
      v42 = v35 - v19 + self->_accruedOvershoot;
      self->_accruedOvershoot = v42;
      if (fabs(v42) > 3.75 && !self->_haveTriedScrollingDuringZoomSweep && v14 > v21 + v34 * -2.0)
      {
        if (self->_inUnitTestingMode)
        {
          v43 = v34;
          if (([(ZWRootViewController_UnitTestDelegate *)self->_unitTestDelegate scrollContentWithAmount:v34]& 1) == 0)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v43 = v34;
          v47 = +[AXElement systemWideElement];
          v48 = [v47 systemApplication];
          v49 = [v48 currentApplications];
          v68 = [v49 firstObject];

          v50 = [v68 uiElement];
          v73 = @"scrollAmount";
          v51 = [NSNumber numberWithDouble:v28 * v43];
          v74 = v51;
          v52 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];
          v53 = [v50 performAXAction:2047 withValue:v52];

          if (!v53)
          {
LABEL_37:
            if (v14 >= v21)
            {
              goto LABEL_56;
            }

            goto LABEL_38;
          }
        }

        v14 = v14 - v43;
      }

LABEL_53:
      if (fabs(self->_accruedOvershoot) > 15.0)
      {
        self->_isSweepingToNextZoomRow = 1;
        self->_accruedOvershoot = 0.0;
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    if (v10 > 0.0)
    {
      if (v7 >= 1)
      {
        v37 = vabdd_f64(v14, v21);
        if (v35 > v19 && v37 <= 2.0)
        {
          +[NSDate timeIntervalSinceReferenceDate];
          v40 = v39;
          if (v39 - self->_lastEdgePanHapticTime > 1.5)
          {
            AudioServicesPlaySystemSound(0x581u);
            self->_lastEdgePanHapticTime = v40;
          }
        }
      }

      goto LABEL_50;
    }

    if (v35 >= -v19)
    {
LABEL_50:
      v12 = v35;
      goto LABEL_56;
    }

    v44 = -v19 - v35 + self->_accruedOvershoot;
    self->_accruedOvershoot = v44;
    v45 = fabs(v44) > 3.75 && v14 < -(v21 - v34 * 2.0);
    if (!v45 || self->_haveTriedScrollingDuringZoomSweep)
    {
      goto LABEL_53;
    }

    if (self->_inUnitTestingMode)
    {
      v46 = v34;
      if (([(ZWRootViewController_UnitTestDelegate *)self->_unitTestDelegate scrollContentWithAmount:-v34]& 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v46 = v34;
      v61 = +[AXElement systemWideElement];
      v62 = [v61 systemApplication];
      v63 = [v62 currentApplications];
      v68 = [v63 firstObject];

      v64 = [v68 uiElement];
      v71 = @"scrollAmount";
      v65 = [NSNumber numberWithDouble:-(v46 * v28)];
      v72 = v65;
      v66 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      v67 = [v64 performAXAction:2047 withValue:v66];

      if (!v67)
      {
LABEL_48:
        if (v14 <= -v21)
        {
          goto LABEL_56;
        }

LABEL_38:
        self->_haveTriedScrollingDuringZoomSweep = 1;
        goto LABEL_53;
      }
    }

    v14 = v14 + v46;
    goto LABEL_53;
  }

  v29 = [(ZWRootViewController *)self activeLensViewController];
  v30 = [v29 view];
  [v30 bounds];
  v32 = v27 / v31;

  v12 = v12 - v10 * 4.0;
  v14 = v14 + v10 * v32 * 4.0;
  if (v10 <= 0.0)
  {
    if (v12 <= v19)
    {
      goto LABEL_56;
    }

    v33 = v12 - v19;
    v12 = v12 - (v12 - v19);
  }

  else
  {
    if (v12 >= -v19)
    {
      goto LABEL_56;
    }

    v33 = v12 + v19;
    v12 = v12 + v12 + v19;
  }

  v14 = v14 + v33 * v32;
  v41 = v33 + self->_accruedOvershoot;
  self->_accruedOvershoot = v41;
  if (fabs(v41) > 60.0)
  {
    self->_isSweepingToNextZoomRow = 0;
    self->_accruedOvershoot = 0.0;
LABEL_55:
    self->_haveTriedScrollingDuringZoomSweep = 0;
  }

LABEL_56:
  v54 = [(ZWRootViewController *)self activeLensViewController];
  [(ZWRootViewController *)self mirrorPanOffsetForRTLIfNecessary:v12, v14];
  [v54 validPanOffsetForProposedOffset:? proposedZoomFactor:?];
  v56 = v55;
  v58 = v57;

  v59 = [(ZWRootViewController *)self activeLensViewController];
  [(ZWRootViewController *)self mirrorPanOffsetForRTLIfNecessary:v12, v14];
  [v59 handleAdditionalPanOffsetFromOriginalOffset:0 validOffset:? useFullDelta:?];

  [(ZWRootViewController *)self setZoomPanOffset:v56, v58];
  v60 = [(ZWRootViewController *)self activeLensViewController];
  [v60 updateZoomFactor:v5 panOffset:0 animated:v16 animationDuration:v56 completion:{v58, a5}];

  self->_lastWheelDelta = v69;
}

- (void)_handleKeyboardCommand:(int64_t)a3 isRepeatCommand:(BOOL)a4
{
  v4 = a4;
  if (!a4)
  {
    [(AXDispatchTimer *)self->_keyRepeatTimer cancel];
  }

  if ([(ZWRootViewController *)self lastKeyboardCommand]== &dword_0 + 3 && [(ZWRootViewController *)self toggleStandbyOnNextCommandChange])
  {
    [(ZWRootViewController *)self setToggleStandbyOnNextCommandChange:0];
    [(ZWRootViewController *)self _toggleZoomStandby];
  }

  if ([(ZWRootViewController *)self lastKeyboardCommand]== &dword_C + 2)
  {
    self->_lastWheelDelta = 0.0;
    v7 = [(ZWRootViewController *)self scrollTrapView];
    [v7 setAlpha:0.0];

    cachedValuesSerialQueue = self->_cachedValuesSerialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __63__ZWRootViewController__handleKeyboardCommand_isRepeatCommand___block_invoke;
    block[3] = &unk_78D00;
    block[4] = self;
    dispatch_sync(cachedValuesSerialQueue, block);
  }

  if (a3 > 9)
  {
    if ((a3 - 10) >= 4)
    {
      if ((a3 - 15) < 2)
      {
        v29 = [(ZWRootViewController *)self keyRepeatTimer];
        [v29 cancel];
LABEL_80:

        goto LABEL_81;
      }

      v9 = v4;
      if (a3 != 14)
      {
        goto LABEL_82;
      }

      v43 = [(ZWRootViewController *)self scrollTrapView];
      [v43 setAlpha:0.01];

      v44 = self->_cachedValuesSerialQueue;
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = __63__ZWRootViewController__handleKeyboardCommand_isRepeatCommand___block_invoke_2;
      v64[3] = &unk_78D00;
      v64[4] = self;
      dispatch_sync(v44, v64);
      a3 = 14;
LABEL_81:
      v9 = v4;
      goto LABEL_82;
    }

    v12 = [(ZWRootViewController *)self activeLensViewController];
    if ([v12 inStandbyMode])
    {

LABEL_77:
      v9 = 1;
      goto LABEL_82;
    }

    v35 = [(ZWRootViewController *)self activeLensViewController];
    v36 = [(ZWRootViewController *)self fullscreenLensViewController];

    if (v35 == v36)
    {
      goto LABEL_77;
    }

    v37 = [(ZWRootViewController *)self activeLensViewController];
    v38 = [(ZWRootViewController *)self dockedLensViewController];

    if (v37 == v38)
    {
      v51 = [(ZWRootViewController *)self dockedLensViewController];
      v52 = [v51 dockPosition];

      if (v52)
      {
        v53 = [(ZWRootViewController *)self dockedLensViewController];
        v54 = [v53 dockPosition];

        if (v54 == &dword_0 + 2)
        {
          if (a3 == 12)
          {
            [(ZWRootViewController *)self _lensMinimumSize];
            v42 = 0.0;
            a3 = 10;
            goto LABEL_76;
          }

          if (a3 == 10)
          {
            [(ZWRootViewController *)self _lensMinimumSize];
            goto LABEL_75;
          }
        }
      }

      else
      {
        if (a3 == 13)
        {
          [(ZWRootViewController *)self _lensMinimumSize];
          v41 = v62;
          goto LABEL_55;
        }

        if (a3 == 11)
        {
          [(ZWRootViewController *)self _lensMinimumSize];
          v41 = v61;
          goto LABEL_67;
        }
      }
    }

    [(ZWRootViewController *)self _lensMinimumSize];
    v41 = v40;
    if (a3 <= 11)
    {
      v42 = 0.0;
      if (a3 == 10)
      {
LABEL_76:
        [(ZWRootViewController *)self _resizeZoomLensWithAdjustment:v39 lensPositionCompensation:v42, v39 * -0.5, v42 * -0.5];
        goto LABEL_77;
      }

LABEL_55:
      v39 = 0.0;
      a3 = 11;
      v42 = v41;
      goto LABEL_76;
    }

    if (a3 == 13)
    {
LABEL_67:
      v42 = -v41;
      v39 = 0.0;
      a3 = 13;
      goto LABEL_76;
    }

LABEL_75:
    v39 = -v39;
    v42 = 0.0;
    a3 = 12;
    goto LABEL_76;
  }

  if (a3 > 5)
  {
    v13 = [(ZWRootViewController *)self activeLensViewController];
    v14 = [v13 inStandbyMode];

    if ((v14 & 1) == 0)
    {
      [(ZWRootViewController *)self zoomFrame];
      y = CGPointZero.y;
      if (v15 >= v16)
      {
        v18 = v15;
      }

      else
      {
        v18 = v16;
      }

      v19 = v18 / 5.0;
      v20 = y - v19;
      if (y - v19 < v16 * -0.5)
      {
        v20 = v16 * -0.5;
      }

      v21 = v16 * 0.5;
      if (y + v19 < v21)
      {
        v21 = y + v19;
      }

      if (a3 == 8)
      {
        v21 = v20;
      }

      v22 = CGPointZero.x - v19;
      if (CGPointZero.x - v19 < v15 * -0.5)
      {
        v22 = v15 * -0.5;
      }

      v23 = CGPointZero.x + v19;
      v24 = v15 * 0.5;
      if (v23 < v24)
      {
        v24 = v23;
      }

      if (a3 == 6)
      {
        v24 = v22;
      }

      if (a3 <= 7)
      {
        v25 = CGPointZero.y;
      }

      else
      {
        v25 = v21;
      }

      if (a3 <= 7)
      {
        x = v24;
      }

      else
      {
        x = CGPointZero.x;
      }

      v27 = [(ZWRootViewController *)self activeLensViewController];
      v9 = 1;
      [(ZWRootViewController *)self _moveZoomItemWithController:v27 byDelta:0 animated:1 userInitiated:1 shouldUseFullDeltaForDockedMode:1 shouldPan:x, v25];

      v28 = [(ZWRootViewController *)self activeLensViewController];
      [v28 zoomMovementDidEnd];

      goto LABEL_82;
    }

    goto LABEL_81;
  }

  if (a3 > 2)
  {
    if ((a3 - 4) >= 2)
    {
      v9 = v4;
      if (a3 == 3)
      {
        if (![(ZWRootViewController *)self zoomIsAnimatingDueToStandbyToggle])
        {
          [(ZWRootViewController *)self setToggleStandbyOnNextCommandChange:1];
          [(ZWRootViewController *)self _toggleZoomStandby];
        }

        a3 = 3;
        goto LABEL_81;
      }

      goto LABEL_82;
    }

    v30 = [(ZWRootViewController *)self activeLensViewController];
    v31 = [v30 inStandbyMode];

    if ((v31 & 1) == 0)
    {
      v29 = AXZoomUserSelectableLensModes();
      v32 = [(ZWRootViewController *)self activeZoomMode];
      v33 = [v29 indexOfObject:v32];

      if (a3 == 4)
      {
        if (v33 + 1 < [v29 count])
        {
          v34 = v33 + 1;
        }

        else
        {
          v34 = 0;
        }
      }

      else if (v33)
      {
        v34 = v33 - 1;
      }

      else
      {
        v34 = [v29 count] - 1;
      }

      v55 = [v29 objectAtIndex:v34];
      [(ZWRootViewController *)self _transitionToLensForMode:v55 animated:1 completion:0];

      goto LABEL_80;
    }

    goto LABEL_81;
  }

  if (!a3)
  {
    [(ZWRootViewController *)self zoomFactor];
    v47 = v46;
    v48 = [(ZWRootViewController *)self activeLensViewController];
    v49 = [v48 inStandbyMode];

    v50 = AXZoomMinimumZoomLevel;
    if (!v49)
    {
      v50 = v47;
    }

    [(ZWRootViewController *)self fullscreenEventHandler:0 setZoomLevel:v50 * 1.1 duration:0.0];
    a3 = 0;
    goto LABEL_77;
  }

  if (a3 == 1)
  {
    [(ZWRootViewController *)self zoomFactor];
    [(ZWRootViewController *)self fullscreenEventHandler:0 setZoomLevel:v45 * 0.9 duration:0.0];
    goto LABEL_77;
  }

  v9 = v4;
  if (a3 == 2)
  {
    v10 = [(ZWRootViewController *)self presentedViewController];
    v11 = [(ZWRootViewController *)self menuViewController];

    if (v10 == v11)
    {
      [(ZWRootViewController *)self _dismissMenuAnimated:1];
    }

    [(ZWRootViewController *)self _toggleZoomStandby];
    a3 = 2;
    goto LABEL_81;
  }

LABEL_82:
  v56 = _AXSKeyRepeatEnabled();
  if (v9 && v56)
  {
    if (v4)
    {
      _AXSKeyRepeatInterval();
    }

    else
    {
      _AXSKeyRepeatDelay();
    }

    v58 = v57;
    v59 = [(ZWRootViewController *)self keyRepeatTimer];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = __63__ZWRootViewController__handleKeyboardCommand_isRepeatCommand___block_invoke_3;
    v63[3] = &unk_78E98;
    v63[4] = self;
    v63[5] = a3;
    [v59 afterDelay:v63 processBlock:v58];
  }

  v60 = [(ZWRootViewController *)self shouldSuppressKeyCommandHUD];
  [(ZWRootViewController *)self setShouldSuppressKeyCommandHUD:a3 != 16];
  if (v60 != [(ZWRootViewController *)self shouldSuppressKeyCommandHUD])
  {
    [(ZWRootViewController *)self _updateZoomListeners];
  }

  [(ZWRootViewController *)self setLastKeyboardCommand:a3];
}

- (CGPoint)mirrorPanOffsetForRTLIfNecessary:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [UIApp userInterfaceLayoutDirection];
  v6 = -x;
  if (v5 != &dword_0 + 1)
  {
    v6 = x;
  }

  v7 = y;
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)lastFingerWasLiftedWithEventProcessor:(id)a3 firstTouchWentIntoSlug:(BOOL)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __85__ZWRootViewController_lastFingerWasLiftedWithEventProcessor_firstTouchWentIntoSlug___block_invoke;
  v4[3] = &unk_78BD0;
  v4[4] = self;
  v5 = a4;
  dispatch_async(&_dispatch_main_q, v4);
}

void __85__ZWRootViewController_lastFingerWasLiftedWithEventProcessor_firstTouchWentIntoSlug___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _enableZoomWindowHitTesting];
  v2 = [*(a1 + 32) idleTouchTimer];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __85__ZWRootViewController_lastFingerWasLiftedWithEventProcessor_firstTouchWentIntoSlug___block_invoke_2;
  v21[3] = &unk_78D00;
  v21[4] = *(a1 + 32);
  [v2 afterDelay:v21 processBlock:2.0];

  v3 = [*(a1 + 32) presentedViewController];
  v4 = [*(a1 + 32) menuViewController];

  if (v3 != v4)
  {
    v5 = [*(a1 + 32) cachedValuesSerialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __85__ZWRootViewController_lastFingerWasLiftedWithEventProcessor_firstTouchWentIntoSlug___block_invoke_3;
    block[3] = &unk_78D00;
    block[4] = *(a1 + 32);
    dispatch_sync(v5, block);
  }

  v6 = +[AXSpeakFingerManager sharedInstance];
  if ([v6 speakFingerState] != &dword_4)
  {
    goto LABEL_10;
  }

  v7 = [*(a1 + 32) activeLensViewController];
  v8 = [*(a1 + 32) pipLensViewController];
  if (v7 != v8)
  {
    goto LABEL_9;
  }

  v9 = [*(a1 + 32) activeLensViewController];
  if (![v9 inStandbyMode])
  {

LABEL_9:
    goto LABEL_10;
  }

  v10 = *(*(a1 + 32) + 815);

  if (v10 != 1)
  {
    goto LABEL_11;
  }

  v11 = +[AXSettings sharedInstance];
  v6 = [v11 zoomCurrentLensEffect];

  v12 = [*(a1 + 32) activeLensViewController];
  [*(a1 + 32) zoomFactor];
  v14 = v13;
  [*(a1 + 32) zoomPanOffset];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __85__ZWRootViewController_lastFingerWasLiftedWithEventProcessor_firstTouchWentIntoSlug___block_invoke_4;
  v19[3] = &unk_78D00;
  v19[4] = *(a1 + 32);
  [v12 updateStandbyMode:0 zoomFactor:v6 panOffset:1 lensEffect:v19 animated:v14 completion:{v15, v16}];

  *(*(a1 + 32) + 815) = 0;
LABEL_10:

LABEL_11:
  v17 = +[AXSpeakFingerManager sharedInstance];
  if ([v17 speakFingerState] == &dword_4)
  {
    v18 = *(a1 + 40);

    if (v18)
    {
      return;
    }

    v17 = +[AXSpeakFingerManager sharedInstance];
    [v17 fingerWasLiftedInSpeakUnderFingerMode];
  }
}

void __85__ZWRootViewController_lastFingerWasLiftedWithEventProcessor_firstTouchWentIntoSlug___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) slugViewController];
  [v2 userInteractionHasBecomeIdle];

  v3 = [*(a1 + 32) activeLensViewController];
  [v3 userInteractionHasBecomeIdle];

  v4 = [*(a1 + 32) menuViewController];
  [v4 userInteractionHasBecomeIdle];
}

__n128 __85__ZWRootViewController_lastFingerWasLiftedWithEventProcessor_firstTouchWentIntoSlug___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32) + 80;
  result = CGRectNull.origin;
  size = CGRectNull.size;
  *(v1 + 96) = CGRectNull.origin;
  *(v1 + 112) = size;
  return result;
}

- (void)didGetToggleZoomGestureWithEventProcessor:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __66__ZWRootViewController_didGetToggleZoomGestureWithEventProcessor___block_invoke;
  block[3] = &unk_78D00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didGetTogglePanningModeGestureWithATVEventProcessor:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __76__ZWRootViewController_didGetTogglePanningModeGestureWithATVEventProcessor___block_invoke;
  block[3] = &unk_78D00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)wantsToStartAutopannerWithATVEventProcessor:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __68__ZWRootViewController_wantsToStartAutopannerWithATVEventProcessor___block_invoke;
  v4[3] = &unk_79170;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

void __68__ZWRootViewController_wantsToStartAutopannerWithATVEventProcessor___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) lensAutopanner];
  [v3 setDataSource:v2];

  v4 = [*(a1 + 32) lensAutopanner];
  [v4 start];
}

- (void)wantsToStopAutopannerWithATVEventProcessor:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __67__ZWRootViewController_wantsToStopAutopannerWithATVEventProcessor___block_invoke;
  block[3] = &unk_78D00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

void __67__ZWRootViewController_wantsToStopAutopannerWithATVEventProcessor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lensAutopanner];
  [v2 stop];

  v3 = [*(a1 + 32) lensAutopanner];
  [v3 setDataSource:0];
}

- (void)didGetSpeakContentGestureWithATVEventProcessor:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __71__ZWRootViewController_didGetSpeakContentGestureWithATVEventProcessor___block_invoke;
  block[3] = &unk_78D00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

void __71__ZWRootViewController_didGetSpeakContentGestureWithATVEventProcessor___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) smartZoom];
  [v1 speakContent];
}

- (void)atvEventProcessor:(id)a3 adjustZoomLevelWithDelta:(CGPoint)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __67__ZWRootViewController_atvEventProcessor_adjustZoomLevelWithDelta___block_invoke;
  block[3] = &unk_78D28;
  block[4] = self;
  v5 = a4;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)shouldSendTapEventWithATVEventProcessor:(id)a3
{
  if (-[ZWRootViewController _isZoomedToMinimum](self, "_isZoomedToMinimum", a3) || (-[ZWRootViewController activeLensViewController](self, "activeLensViewController"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 inStandbyMode], v4, (v5 & 1) != 0) || -[ZWRootViewController _smartZoomFocusedElementIsBeingSampled](self, "_smartZoomFocusedElementIsBeingSampled"))
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v8 = [(ZWRootViewController *)self smartZoom];
    v9 = [(ZWRootViewController *)self activeLensViewController];
    v10 = [v9 lensZoomView];
    [v10 sampleRect];
    v6 = [v8 setNativeFocusOnBestElementNearRect:?] ^ 1;
  }

  return v6;
}

- (void)blockHomeGestureIfNeededWithEventProcessor:(id)a3
{
  v4 = [(ZWRootViewController *)self disableHomeGestureAssertion];

  if (!v4)
  {
    v5 = [AXAssertion assertionWithType:AXAssertionTypeDisableSystemGestures identifier:@"Interacting with Zoom UI"];
    [(ZWRootViewController *)self setDisableHomeGestureAssertion:v5];
  }
}

- (void)didGetTouchOutsideZoomMenuWithEventProcessor:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __69__ZWRootViewController_didGetTouchOutsideZoomMenuWithEventProcessor___block_invoke;
  block[3] = &unk_78D00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didGetTouchOutsideLensChromeWithEventProcessor:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __71__ZWRootViewController_didGetTouchOutsideLensChromeWithEventProcessor___block_invoke;
  block[3] = &unk_78D00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

id __71__ZWRootViewController_didGetTouchOutsideLensChromeWithEventProcessor___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setDockResizingEnabled:0];
  v2 = *(a1 + 32);

  return [v2 _setPIPLensResizingEnabled:0];
}

- (void)fullscreenEventHandler:(id)a3 didReceiveThreeFingerDoubleTapAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(ZWRootViewController *)self _dismissMenuAnimated:1];
  [(ZWRootViewController *)self zoomFactor];
  v8 = v7;
  v9 = [(ZWRootViewController *)self activeLensViewController];
  v10 = v9;
  v11 = y == -1.0 && x == -1.0;
  v12 = [v9 inStandbyMode];
  v13 = [(ZWRootViewController *)self fullscreenLensViewController];

  if (v10 == v13 && vabdd_f64(v8, AXZoomMinimumZoomLevel) < 0.0001)
  {
    v14 = +[ZWCoalescedSettings sharedInstance];
    [v14 zoomFactor];
    v8 = v15;

    if ([(ZWRootViewController *)self _isZoomFactorAtMinimum:v8])
    {
      v8 = AXZoomDefaultZoomLevel;
    }

    v12 = 1;
  }

  if (!v11)
  {
    v34 = [(ZWRootViewController *)self view];
    v17 = ZWConvertPointInScreenPixelsToViewCoordinates(v34, x, y);
    v19 = v35;

    if (!v12)
    {
      goto LABEL_11;
    }

LABEL_16:
    [(ZWRootViewController *)self zoomInToPoint:1 withZoomFactor:v17 animated:v19, v8];
    goto LABEL_21;
  }

  [(ZWRootViewController *)self pointerLocationToZoomInToWithZoomFactor:v8];
  v17 = v16;
  v19 = v18;
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_11:
  v20 = [(ZWRootViewController *)self fullscreenLensViewController];

  if (v10 == v20)
  {
    [(ZWRootViewController *)self setZoomFactorRespectingUserPreferredMaximumZoom:v8];
    v37 = v36;
    v38 = +[AXSettings sharedInstance];
    v24 = [v38 zoomCurrentLensEffect];

    v39 = [(ZWRootViewController *)self activeLensViewController];
    [(ZWRootViewController *)self zoomPanOffset];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = __88__ZWRootViewController_fullscreenEventHandler_didReceiveThreeFingerDoubleTapAtLocation___block_invoke;
    v51[3] = &unk_78D00;
    v51[4] = self;
    [v39 updateStandbyMode:1 zoomFactor:v24 panOffset:1 lensEffect:v51 animated:v37 completion:{v40, v41}];

    v42 = +[ZWCoalescedSettings sharedInstance];
    [v42 setZoomInStandby:1];

    v43 = [(ZWRootViewController *)self containerView];
    v44 = [(ZWRootViewController *)self minimapView];
    [v43 bringSubviewToFront:v44];

    v25 = [(ZWRootViewController *)self kbContext];
    [v25 keyboardFrame];
    [(ZWRootViewController *)self _updateKeyboardFrame:?];
LABEL_20:

    goto LABEL_21;
  }

  v21 = [(ZWRootViewController *)self pipLensViewController];

  if (v10 == v21)
  {
    v45 = +[AXSettings sharedInstance];
    v24 = [v45 zoomCurrentLensEffect];

    v25 = [(ZWRootViewController *)self activeLensViewController];
    v26 = [(ZWRootViewController *)self activeLensViewController];
    v46 = [v26 inStandbyMode];
    [(ZWRootViewController *)self zoomPanOffset];
    v29 = v47;
    v31 = v48;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = __88__ZWRootViewController_fullscreenEventHandler_didReceiveThreeFingerDoubleTapAtLocation___block_invoke_2;
    v50[3] = &unk_78D00;
    v50[4] = self;
    v32 = v46 ^ 1;
    v33 = v50;
    goto LABEL_19;
  }

  v22 = [(ZWRootViewController *)self dockedLensViewController];

  if (v10 == v22)
  {
    v23 = +[AXSettings sharedInstance];
    v24 = [v23 zoomCurrentLensEffect];

    v25 = [(ZWRootViewController *)self activeLensViewController];
    v26 = [(ZWRootViewController *)self activeLensViewController];
    v27 = [v26 inStandbyMode];
    [(ZWRootViewController *)self zoomPanOffset];
    v29 = v28;
    v31 = v30;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = __88__ZWRootViewController_fullscreenEventHandler_didReceiveThreeFingerDoubleTapAtLocation___block_invoke_3;
    v49[3] = &unk_78D00;
    v49[4] = self;
    v32 = v27 ^ 1;
    v33 = v49;
LABEL_19:
    [v25 updateStandbyMode:v32 zoomFactor:v24 panOffset:1 lensEffect:v33 animated:v8 completion:{v29, v31}];

    goto LABEL_20;
  }

LABEL_21:
}

id __88__ZWRootViewController_fullscreenEventHandler_didReceiveThreeFingerDoubleTapAtLocation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateSystemGestureDisablingAssertions];
  v2 = *(a1 + 32);

  return [v2 _updateMinimapStatus];
}

id __88__ZWRootViewController_fullscreenEventHandler_didReceiveThreeFingerDoubleTapAtLocation___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateSystemGestureDisablingAssertions];
  v2 = *(a1 + 32);

  return [v2 _updateMinimapStatus];
}

id __88__ZWRootViewController_fullscreenEventHandler_didReceiveThreeFingerDoubleTapAtLocation___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _updateSystemGestureDisablingAssertions];
  v2 = *(a1 + 32);

  return [v2 _updateMinimapStatus];
}

- (void)fullscreenEventHandler:(id)a3 didReceiveThreeFingerTripleTapAtLocation:(CGPoint)a4
{
  if ((AXDeviceIsTV() & 1) == 0)
  {

    [(ZWRootViewController *)self toggleZoomMenu];
  }
}

- (void)_updateOrbLocation:(CGPoint)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  y = a3.y;
  x = a3.x;
  v9 = a5;
  *(&self->_eventUIContext + 148) |= 0x200u;
  v10 = [(ZWRootViewController *)self slugViewController];
  [v10 setShouldHideWhileOrbing:1];

  v11 = [(ZWRootViewController *)self activeLensViewController];
  v12 = [(ZWRootViewController *)self pipLensViewController];

  if (v11 == v12)
  {
    v30 = [(ZWRootViewController *)self screen];
    [v30 scale];
    v32 = ZWConvertPointInScreenPixelsToScreenCoordinates(x, y, v31);
    v34 = v33;

    v35 = [(ZWRootViewController *)self pipLensViewController];
    v36 = [v35 lensChromeView];
    [v36 bounds];
    v38 = v37 * 0.5 - ZWZoomEdgeSlackAmount();

    v39 = v34 - v38;
    if ((*(&self->_eventUIContext + 148) & 0x400) != 0)
    {
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = __63__ZWRootViewController__updateOrbLocation_animated_completion___block_invoke;
      v45[3] = &unk_795D0;
      v45[4] = self;
      v47 = v32;
      v48 = v39;
      __asm { FMOV            V0.2D, #2.0 }

      v49 = _Q0;
      v46 = v9;
      [(ZWRootViewController *)self _focusLensOnRect:0 panLensContent:1 recentreLens:v5 animated:v45 completion:v32, v39, 2.0, 2.0];
    }

    else
    {
      [(ZWRootViewController *)self _focusLensOnRect:1 panLensContent:1 recentreLens:v5 animated:v9 completion:v32, v39, 2.0, 2.0];
    }
  }

  else
  {
    v13 = [(ZWRootViewController *)self view];
    v14 = ZWConvertPointInScreenPixelsToViewCoordinates(v13, x, y);
    v16 = v15;

    v17 = [(ZWRootViewController *)self slugViewController];
    v18 = [v17 view];
    [v18 frame];
    AX_CGRectGetCenter();
    v20 = v19;
    v22 = v21;

    v23 = (v14 - v20) * 3.5;
    v24 = (v16 - v22) * 3.5;
    [(ZWRootViewController *)self lastOrbLocation];
    v26 = v25;
    [(ZWRootViewController *)self lastOrbLocation];
    v28 = v27;
    [(ZWRootViewController *)self setLastOrbLocation:v23, v24];
    if ((*(&self->_eventUIContext + 148) & 0x400) == 0)
    {
      v29 = [(ZWRootViewController *)self activeLensViewController];
      [(ZWRootViewController *)self _moveZoomItemWithController:v29 byDelta:0 animated:1 userInitiated:v23 - v26, v24 - v28];
    }

    if (v9)
    {
      v9[2](v9);
    }
  }
}

uint64_t __63__ZWRootViewController__updateOrbLocation_animated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeLensViewController];
  [*(a1 + 32) zoomFactor];
  [v2 offsetByPanningToRect:*(a1 + 48) zoomFactor:{*(a1 + 56), *(a1 + 64), *(a1 + 72), v3}];
  [*(a1 + 32) setZoomPanOffset:?];

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)fullscreenEventHandler:(id)a3 didStartOrbAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(UIImpactFeedbackGenerator *)self->_feedbackGenerator impactOccurred];
  *(&self->_eventUIContext + 148) |= 0x400u;
  v7 = [(ZWRootViewController *)self activeLensViewController];
  [(ZWRootViewController *)self _transitionToLens:v7 animated:1 completion:&__block_literal_global_547];

  v8 = [(ZWRootViewController *)self activeLensViewController];
  v9 = [(ZWRootViewController *)self pipLensViewController];

  if (v8 == v9)
  {
    v10 = [(ZWRootViewController *)self pipLensViewController];
    [v10 setOffsetZoomWindow:1];
  }

  v11 = CGPointZero.y;
  [(ZWRootViewController *)self setLastOrbLocation:CGPointZero.x, v11];
  [(ZWRootViewController *)self setZoomPanOffset:CGPointZero.x, v11];
  v12 = +[AXSettings sharedInstance];
  v13 = [v12 zoomCurrentLensEffect];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __69__ZWRootViewController_fullscreenEventHandler_didStartOrbAtLocation___block_invoke_2;
  v15[3] = &unk_79170;
  v15[4] = self;
  v16 = v13;
  v14 = v13;
  [(ZWRootViewController *)self _updateOrbLocation:0 animated:v15 completion:x, y];
}

void __69__ZWRootViewController_fullscreenEventHandler_didStartOrbAtLocation___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) activeLensViewController];
  v3 = [*(a1 + 32) activeLensViewController];
  [v3 zoomFactor];
  v5 = v4;
  [*(a1 + 32) zoomPanOffset];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __69__ZWRootViewController_fullscreenEventHandler_didStartOrbAtLocation___block_invoke_3;
  v9[3] = &unk_78D00;
  v6 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  [v2 updateStandbyMode:0 zoomFactor:v6 panOffset:1 lensEffect:v9 animated:v5 completion:{v7, v8}];
}

- (void)fullscreenEventHandler:(id)a3 didEndOrbAtLocation:(CGPoint)a4
{
  [(UIImpactFeedbackGenerator *)self->_feedbackGenerator impactOccurred:a3];
  *(&self->_eventUIContext + 148) &= ~0x200u;
  v5 = [(ZWRootViewController *)self slugViewController];
  [v5 setShouldHideWhileOrbing:0];

  v6 = [(ZWRootViewController *)self activeLensViewController];
  v7 = +[AXSettings sharedInstance];
  v8 = [v7 zoomCurrentLensEffect];

  [(ZWRootViewController *)self zoomFactor];
  v10 = v9;
  [(ZWRootViewController *)self zoomPanOffset];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __67__ZWRootViewController_fullscreenEventHandler_didEndOrbAtLocation___block_invoke;
  v16[3] = &unk_78D00;
  v16[4] = self;
  [v6 updateStandbyMode:1 zoomFactor:v8 panOffset:1 lensEffect:v16 animated:v10 completion:{v11, v12}];
  v13 = [(ZWRootViewController *)self activeLensViewController];
  v14 = [(ZWRootViewController *)self pipLensViewController];

  if (v13 == v14)
  {
    v15 = [(ZWRootViewController *)self pipLensViewController];
    [v15 setOffsetZoomWindow:0];
  }
}

- (void)fullscreenEventHandler:(id)a3 updateOrbMovementAtLocation:(CGPoint)a4
{
  if ((*(&self->_eventUIContext + 148) & 0x400) == 0)
  {
    [(ZWRootViewController *)self _updateOrbLocation:1 animated:0 completion:a4.x, a4.y];
  }
}

- (void)fullscreenEventHandler:(id)a3 didThreeFingerOrbAtLocation:(CGPoint)a4
{
  v5 = [AXSettings sharedInstance:a3];
  v6 = [v5 zoomPeekZoomEnabled];

  v7 = +[AXSettings sharedInstance];
  [v7 setZoomPeekZoomEnabled:v6 ^ 1];

  v8 = [(ZWRootViewController *)self zoomAlertManager];
  v9 = v8;
  if (v6)
  {
    [v8 showOrbZoomToggleOff];
  }

  else
  {
    [v8 showOrbZoomToggleOn];
  }
}

- (void)fullscreenEventHandler:(id)a3 didReceiveThreeFingerSingleTapAtLocation:(CGPoint)a4
{
  v8 = [(ZWRootViewController *)self activeLensViewController:a3];
  if ([v8 inStandbyMode])
  {
  }

  else
  {
    [(ZWRootViewController *)self zoomFactor];
    v6 = v5;
    v7 = AXZoomMinimumZoomLevel;

    if (v6 > v7)
    {

      [(ZWRootViewController *)self _updateMinimapStatus];
    }
  }
}

- (void)fullscreenEventHandler:(id)a3 didReceiveOneFingerDownAtLocation:(CGPoint)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __81__ZWRootViewController_fullscreenEventHandler_didReceiveOneFingerDownAtLocation___block_invoke;
  block[3] = &unk_78D28;
  block[4] = self;
  v5 = a4;
  dispatch_async(&_dispatch_main_q, block);
}

void __81__ZWRootViewController_fullscreenEventHandler_didReceiveOneFingerDownAtLocation___block_invoke(uint64_t a1)
{
  v13 = [*(a1 + 32) activeLensViewController];
  v2 = [*(a1 + 32) dockedLensViewController];
  if (v13 == v2)
  {
    v3 = [*(a1 + 32) dockedLensViewController];
    v4 = [v3 zoomRegionVisible];

    if (v4)
    {
      [*(a1 + 32) _denormalizePointForCurrentOrientation:{*(a1 + 40), *(a1 + 48)}];
      v6 = v5;
      v8 = v7;
      v9 = [*(a1 + 32) dockedLensViewController];
      v10 = [v9 dockedLensView];
      [v10 frame];
      v16.x = v6;
      v16.y = v8;
      v11 = CGRectContainsPoint(v17, v16);

      if (!v11)
      {
        +[CATransaction begin];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = __81__ZWRootViewController_fullscreenEventHandler_didReceiveOneFingerDownAtLocation___block_invoke_2;
        v14[3] = &unk_78D00;
        v14[4] = *(a1 + 32);
        [CATransaction setCompletionBlock:v14];
        v12 = [*(a1 + 32) dockedLensViewController];
        [v12 interceptFingerDownAtLocation:{v6, v8}];

        +[CATransaction commit];
      }
    }
  }

  else
  {
  }
}

void __81__ZWRootViewController_fullscreenEventHandler_didReceiveOneFingerDownAtLocation___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1152);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __81__ZWRootViewController_fullscreenEventHandler_didReceiveOneFingerDownAtLocation___block_invoke_3;
  block[3] = &unk_78D00;
  block[4] = v1;
  dispatch_sync(v2, block);
}

void __81__ZWRootViewController_fullscreenEventHandler_didReceiveOneFingerDownAtLocation___block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) dockedLensViewController];
  if ([v3 zoomRegionVisible])
  {
    v2 = 64;
  }

  else
  {
    v2 = 0;
  }

  *(*(a1 + 32) + 376) = *(*(a1 + 32) + 376) & 0xFFBF | v2;
}

- (double)zoomLevelWithFullscreenEventHandler:(id)a3
{
  v4 = [(ZWRootViewController *)self activeLensViewController];
  v5 = [v4 inStandbyMode];

  if (v5)
  {
    return AXZoomMinimumZoomLevel;
  }

  [(ZWRootViewController *)self zoomFactor];
  return result;
}

- (void)fullscreenEventHandler:(id)a3 setZoomLevel:(double)a4 duration:(double)a5
{
  [(ZWRootViewController *)self setZoomFactor:a3, a4, a5];
  [(ZWRootViewController *)self zoomPanOffset];
  x = v7;
  y = v9;
  if (vabdd_f64(a4, AXZoomMinimumZoomLevel) <= 0.0001 || AXZoomMinimumZoomLevel >= a4)
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
    [(ZWRootViewController *)self setZoomPanOffset:CGPointZero.x, y];
  }

  [(ZWRootViewController *)self setZoomFactorRespectingUserPreferredMaximumZoom:a4];
  v13 = v12;
  v14 = [(ZWRootViewController *)self activeLensViewController];
  if ([v14 inStandbyMode])
  {
    v15 = +[AXSettings sharedInstance];
    v16 = [v15 zoomCurrentLensEffect];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __69__ZWRootViewController_fullscreenEventHandler_setZoomLevel_duration___block_invoke;
    v17[3] = &unk_78D00;
    v17[4] = self;
    [v14 updateStandbyMode:0 zoomFactor:v16 panOffset:0 lensEffect:v17 animated:v13 completion:{x, y}];
  }

  else
  {
    [v14 updateZoomFactor:0 panOffset:0 animated:v13 animationDuration:x completion:{y, -1.0}];
  }
}

- (void)fullscreenEventHandler:(id)a3 setZoomLevelFromTrackpadGesture:(double)a4
{
  [(ZWRootViewController *)self zoomFactorRespectingUserPreferredMaximumZoom:a3, a4];
  [(ZWRootViewController *)self pointerLocationToZoomInToWithZoomFactor:?];

  [ZWRootViewController zoomInToPoint:"zoomInToPoint:withZoomFactor:animated:" withZoomFactor:0 animated:?];
}

- (void)fullscreenEventHandler:(id)a3 updateZoomMovementWithPoint:(CGPoint)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __75__ZWRootViewController_fullscreenEventHandler_updateZoomMovementWithPoint___block_invoke;
  block[3] = &unk_78D28;
  block[4] = self;
  v5 = a4;
  dispatch_async(&_dispatch_main_q, block);
}

void __75__ZWRootViewController_fullscreenEventHandler_updateZoomMovementWithPoint___block_invoke(uint64_t a1)
{
  v34 = [*(a1 + 32) activeLensViewController];
  if (([v34 inStandbyMode] & 1) == 0)
  {
    [*(a1 + 32) _dismissMenuAnimated:1];
    v2 = [*(a1 + 32) view];
    v3 = [v2 window];
    [v3 _convertPointFromSceneReferenceSpace:{*(a1 + 40), *(a1 + 48)}];
    v5 = v4;
    v7 = v6;

    *(*(a1 + 32) + 688) = 1;
    v8 = v5 / ZOTMainScreenScaleFactor();
    v9 = v7 / ZOTMainScreenScaleFactor();
    v10 = [*(a1 + 32) activeLensViewController];
    v11 = [*(a1 + 32) dockedLensViewController];
    v12 = v11;
    if (v10 == v11)
    {
      v14 = [*(a1 + 32) dockedLensViewController];
      v15 = [v14 zoomRegionVisible];

      v13 = -v8;
      if (v15)
      {
        v9 = -v9;
        v8 = -v8;
      }
    }

    else
    {
    }

    [*(a1 + 32) zoomFactor];
    v17 = v16;
    [*(a1 + 32) zoomPanOffset];
    v20 = *(a1 + 32);
    v21 = v20[87];
    v22 = v20[88];
    if (CGPointZero.x == v21 && CGPointZero.y == v22)
    {
      v20[87] = v8;
      v20[88] = v9;
      v23 = (*(a1 + 32) + 712);
      *v23 = v18;
      v23[1] = v19;
      goto LABEL_11;
    }

    v24 = (v22 - v9) / v17;
    v25 = (v21 - v8) / v17 + v20[89];
    v26 = v24 + v20[90];
    v27 = [v20 activeLensViewController];
    [v27 validPanOffsetForProposedOffset:v25 proposedZoomFactor:{v26, v17}];
    v29 = v28;
    v31 = v30;

    v32 = [*(a1 + 32) activeLensViewController];
    [v32 handleAdditionalPanOffsetFromOriginalOffset:0 validOffset:v25 useFullDelta:{v26, v29, v31}];

    [*(a1 + 32) setZoomPanOffset:{v29, v31}];
    v33 = [*(a1 + 32) activeLensViewController];
    [v33 updateZoomFactor:1 panOffset:0 animated:v17 animationDuration:v29 completion:{v31, 0.1}];

    *(*(a1 + 32) + 688) = 0;
  }

  [*(a1 + 32) _updateMinimapStatus];
LABEL_11:
}

- (void)stopZoomMovementWithVelocityWithFullscreenEventHandler:(id)a3
{
  movementTimer = self->_movementTimer;
  if (movementTimer)
  {
    [(CADisplayLink *)movementTimer invalidate];
    v5 = self->_movementTimer;
    self->_movementTimer = 0;
  }

  self->_fullScreenZoomVelocity = 0.0;

  [(ZWRootViewController *)self _updateSystemGestureDisablingAssertions];
}

- (void)endZoomMovementWithFullscreenEventHandler:(id)a3
{
  self->_fullScreenZoomStartPosition = CGPointZero;
  v3 = [(ZWRootViewController *)self activeLensViewController];
  [v3 zoomMovementDidEnd];
}

- (void)fullscreenEventHandler:(id)a3 continueZoomMovementWithVelocity:(double)a4 angle:(double)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __86__ZWRootViewController_fullscreenEventHandler_continueZoomMovementWithVelocity_angle___block_invoke;
  v8[3] = &unk_795A8;
  v8[4] = self;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, v8);
}

void __86__ZWRootViewController_fullscreenEventHandler_continueZoomMovementWithVelocity_angle___block_invoke(uint64_t a1)
{
  v14 = [*(a1 + 32) activeLensViewController];
  if (([v14 inStandbyMode] & 1) == 0)
  {
    [*(a1 + 32) stopZoomMovementWithVelocityWithFullscreenEventHandler:*(a1 + 40)];
    if (*(a1 + 48) >= 125.0)
    {
      [*(a1 + 32) _interfaceAwareAdjustedAngleForScreenAngle:*(a1 + 56)];
      v3 = v2;
      v4 = 1;
      *(*(a1 + 32) + 688) = 1;
      v5 = *(a1 + 32) + 736;
      *v5 = ZOTCalculateDistanceForAngle(v2);
      *(v5 + 8) = v6;
      *(*(a1 + 32) + 728) = ZOTNormalizeVelocity(*(a1 + 48));
      if (v3 <= 60.0 || v3 >= 120.0)
      {
        v4 = v3 < 300.0 && v3 > 240.0;
      }

      *(*(a1 + 32) + 753) = v4;
      v8 = 1;
      if (v3 >= 30.0 && v3 <= 330.0)
      {
        v8 = v3 > 150.0;
        if (v3 >= 210.0)
        {
          v8 = 0;
        }
      }

      *(*(a1 + 32) + 752) = v8;
      *(*(a1 + 32) + 760) = CFAbsoluteTimeGetCurrent();
      v9 = [CADisplayLink displayLinkWithTarget:*(a1 + 32) selector:"_zoomMovementHeartbeat"];
      v10 = *(a1 + 32);
      v11 = *(v10 + 768);
      *(v10 + 768) = v9;

      v12 = *(*(a1 + 32) + 768);
      v13 = +[NSRunLoop mainRunLoop];
      [v12 addToRunLoop:v13 forMode:NSRunLoopCommonModes];

      *(*(a1 + 32) + 688) = 0;
    }
  }
}

- (void)blockNotificationCenterGestureIfNeededWithFullscreenEventHandler:(id)a3
{
  v4 = [(ZWRootViewController *)self _shouldBlockShowNotificationGesture];
  v5 = [(ZWRootViewController *)self disableNotificationCenterAssertionFullscreenLens];

  if (!v4 || v5)
  {
    if ((v4 & 1) == 0)
    {

      [(ZWRootViewController *)self setDisableNotificationCenterAssertionFullscreenLens:0];
    }
  }

  else
  {
    v6 = [AXAssertion assertionWithType:AXAssertionTypeDisableNotificationCenterGesture identifier:@"Zoom: Fullscreen lens not on edge"];
    [(ZWRootViewController *)self setDisableNotificationCenterAssertionFullscreenLens:v6];
  }
}

- (void)blockControlCenterGestureIfNeededWithFullscreenEventHandler:(id)a3
{
  v4 = [(ZWRootViewController *)self _shouldBlockShowControlCenterGesture];
  v5 = [(ZWRootViewController *)self disableControlCenterAssertionFullscreenLens];

  if (!v4 || v5)
  {
    if ((v4 & 1) == 0)
    {

      [(ZWRootViewController *)self setDisableControlCenterAssertionFullscreenLens:0];
    }
  }

  else
  {
    v6 = [AXAssertion assertionWithType:AXAssertionTypeDisableControlCenterGesture identifier:@"Zoom: Fullscreen lens not on edge"];
    [(ZWRootViewController *)self setDisableControlCenterAssertionFullscreenLens:v6];
  }
}

- (double)storedZoomLevelWithFullscreenEventHandler:(id)a3
{
  v3 = +[ZWCoalescedSettings sharedInstance];
  [v3 zoomFactor];
  v5 = v4;

  return v5;
}

- (CGPoint)zoomLocationWithFullscreenEventHandler:(id)a3
{
  v3 = +[ZWCoalescedSettings sharedInstance];
  [v3 zoomPanOffset];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)fullscreenEventHandler:(id)a3 storeZoomLevel:(double)a4 location:(CGPoint)a5 zoomed:(BOOL)a6 forKey:(id)a7
{
  y = a5.y;
  x = a5.x;
  v10 = [ZWCoalescedSettings sharedInstance:a3];
  v11 = [v10 zoomInStandby];

  if ((v11 & 1) == 0)
  {
    [(ZWRootViewController *)self zoomFactor];
    v12 = [(ZWRootViewController *)self _isZoomFactorAtMinimum:?];
    v13 = +[ZWCoalescedSettings sharedInstance];
    v14 = v13;
    if (v12)
    {
      [v13 setZoomInStandby:1];
    }

    else
    {
      [v13 setZoomInStandby:0];

      [(ZWRootViewController *)self zoomFactor];
      v16 = v15;
      v14 = +[ZWCoalescedSettings sharedInstance];
      [v14 setZoomFactor:v16];
    }
  }

  v17 = +[ZWCoalescedSettings sharedInstance];
  [v17 setZoomPanOffset:{x, y}];
}

- (void)setGutterDistanceForUnitTests:(double)a3 scaleFactor:(double)a4
{
  if (self->_inUnitTestingMode)
  {
    ZOTSetGutterDistanceForUnitTests(a3);

    ZOTSetUnitTestScaleFactor(a4);
  }
}

- (BOOL)fullscreenEventHandler:(id)a3 autopanWithLocation:(CGPoint)a4 initialSingleFingerLocation:(CGPoint)a5 distance:(double)a6 animationDuration:(double)a7 useGutterDistance:(BOOL)a8 pointHasBeenMapped:(BOOL)a9
{
  v9 = a9;
  v10 = a8;
  v99 = a7;
  y = a4.y;
  x = a4.x;
  v15 = a3;
  if (v9)
  {
    [(ZWRootViewController *)self zoomFrame];
    v17 = v16;
    v19 = v18;
    width = v20;
    height = v22;
    [(ZWRootViewController *)self zoomFrame];
    [(ZWRootViewController *)self _denormalizePoint:x withRespectToFrame:y, v24, v25, v26, v27];
  }

  else
  {
    v30 = [(ZWRootViewController *)self activeLensViewController];
    v31 = [(ZWRootViewController *)self fullscreenLensViewController];

    if (v30 == v31)
    {
      [(ZWRootViewController *)self _screenSizeForCurrentOrientation];
      width = v36;
      height = v37;
      [(ZWRootViewController *)self _denormalizePointForCurrentOrientation:x, y];
      x = v38;
      y = v39;
      v19 = 0.0;
      v17 = 0.0;
      goto LABEL_12;
    }

    v32 = [(ZWRootViewController *)self activeLensViewController];
    v33 = [(ZWRootViewController *)self pipLensViewController];

    if (v32 == v33)
    {
      v40 = [(ZWRootViewController *)self pipLensViewController];
      v41 = [v40 view];
      v42 = [(ZWRootViewController *)self pipLensViewController];
      v43 = [v42 view];
      [v43 bounds];
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v52 = [(ZWRootViewController *)self containerView];
      [v41 convertRect:v52 toView:{v45, v47, v49, v51}];

      UIRectInset();
      v17 = v53;
      v19 = v54;
      width = v55;
      height = v56;
    }

    else
    {
      v34 = [(ZWRootViewController *)self activeLensViewController];
      v35 = [(ZWRootViewController *)self dockedLensViewController];

      if (v34 != v35)
      {
        v17 = CGRectZero.origin.x;
        v19 = CGRectZero.origin.y;
        width = CGRectZero.size.width;
        height = CGRectZero.size.height;
        goto LABEL_12;
      }

      v57 = [(ZWRootViewController *)self dockedLensViewController];
      v58 = [v57 dockedLensView];
      [v58 frame];
      v17 = v59;
      v19 = v60;
      width = v61;
      height = v62;
    }

    [(ZWRootViewController *)self _denormalizePointForCurrentOrientation:x, y, *&v99];
  }

  x = v28;
  y = v29;
LABEL_12:
  v63 = ZOTScreenRegionForPoint(v10, x, y, v17, v19, width, height);
  if (self->_usingRelativePushPanning)
  {
    v63 = ZOTScreenRegionForRelativePushPan([(ZWRootViewController *)self interfaceOrientation]);
  }

  if (v63)
  {
    v64 = CGPointZero.y;
    v65 = v64 - a6;
    if ((v63 & 4) == 0)
    {
      v65 = CGPointZero.y;
    }

    v66 = v64 + a6;
    if ((v63 & 8) != 0)
    {
      v67 = 1;
    }

    else
    {
      v67 = (v63 & 4) >> 2;
    }

    if ((v63 & 8) != 0)
    {
      v68 = v66;
    }

    else
    {
      v68 = v65;
    }

    v69 = CGPointZero.x - a6;
    if ((v63 & 1) == 0)
    {
      v69 = CGPointZero.x;
    }

    v70 = (v63 & 2) == 0 && (v63 & 1) == 0;
    if ((v63 & 2) != 0)
    {
      v71 = CGPointZero.x + a6;
    }

    else
    {
      v71 = v69;
    }

    [(ZWRootViewController *)self zoomFactor:CGPointZero.x + a6];
    v73 = v72;
    [(ZWRootViewController *)self zoomPanOffset];
    v75 = v71 + v74;
    v77 = v68 + v76;
    v78 = [(ZWRootViewController *)self activeLensViewController];
    [v78 validPanOffsetForProposedOffset:v75 proposedZoomFactor:{v77, v73}];
    v80 = v79;
    v82 = v81;

    v83 = [(ZWRootViewController *)self activeLensViewController];
    [v83 handleAdditionalPanOffsetFromOriginalOffset:1 validOffset:v75 useFullDelta:{v77, v80, v82}];

    v84 = vabdd_f64(v80, v75);
    v85 = vabdd_f64(v82, v77);
    v86 = [(ZWRootViewController *)self activeLensViewController];
    [v86 offsetByPanningWithDelta:6 axis:v71 zoomFactor:{v68, v73}];
    v88 = v87;
    v90 = v89;

    [(ZWRootViewController *)self zoomPanOffset];
    v93 = v88 == v92 && v90 == v91;
    if (!v93 || ([(ZWRootViewController *)self activeLensViewController], v94 = objc_claimAutoreleasedReturnValue(), [(ZWRootViewController *)self fullscreenLensViewController], v95 = objc_claimAutoreleasedReturnValue(), v95, v94, v94 == v95))
    {
      [(ZWRootViewController *)self setZoomPanOffset:v88, v90];
      v96 = block;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __159__ZWRootViewController_fullscreenEventHandler_autopanWithLocation_initialSingleFingerLocation_distance_animationDuration_useGutterDistance_pointHasBeenMapped___block_invoke_2;
      block[3] = &unk_79068;
      block[4] = self;
      *&block[5] = v73;
      *&block[6] = v88;
      *&block[7] = v90;
      block[8] = v100;
    }

    else
    {
      v96 = v102;
      v102[0] = _NSConcreteStackBlock;
      v102[1] = 3221225472;
      v102[2] = __159__ZWRootViewController_fullscreenEventHandler_autopanWithLocation_initialSingleFingerLocation_distance_animationDuration_useGutterDistance_pointHasBeenMapped___block_invoke;
      v102[3] = &unk_78D28;
      v102[4] = self;
      *&v102[5] = v71;
      *&v102[6] = v68;
    }

    dispatch_async(&_dispatch_main_q, v96);
    v97 = v67 & (v85 < 2.22044605e-16) | (v84 < 2.22044605e-16) & ~v70;
  }

  else
  {
    v97 = 0;
  }

  return v97;
}

id __159__ZWRootViewController_fullscreenEventHandler_autopanWithLocation_initialSingleFingerLocation_distance_animationDuration_useGutterDistance_pointHasBeenMapped___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeLensViewController];
  [v2 _moveZoomItemWithController:v3 byDelta:0 animated:1 userInitiated:{*(a1 + 40), *(a1 + 48)}];

  v4 = *(a1 + 32);

  return [v4 _updateMinimapStatus];
}

id __159__ZWRootViewController_fullscreenEventHandler_autopanWithLocation_initialSingleFingerLocation_distance_animationDuration_useGutterDistance_pointHasBeenMapped___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) activeLensViewController];
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) fullscreenZoomDidAutopanUnitTestCallback];
  [v2 updateZoomFactor:1 panOffset:v5 animated:v3 animationDuration:*(a1 + 48) completion:{*(a1 + 56), v4}];

  v6 = *(a1 + 32);

  return [v6 _updateMinimapStatus];
}

- (BOOL)fullscreenEventHandler:(id)a3 autopanShouldStartWithPoint:(CGPoint)a4 speedFactor:(double *)a5 initialSingleFingerLocation:(CGPoint)a6 fingerCount:(double)a7 pointHasBeenMapped:(BOOL)a8
{
  v8 = a8;
  y = a6.y;
  x = a6.x;
  v12 = a4.y;
  v13 = a4.x;
  [(ZWRootViewController *)self zoomFactor];
  v63 = v15;
  v16 = [(ZWRootViewController *)self activeLensViewController];
  if (v8)
  {
    [(ZWRootViewController *)self zoomFrame];
    v18 = v17;
    v20 = v19;
    width = v21;
    height = v23;
    [(ZWRootViewController *)self _denormalizePoint:v13 withRespectToFrame:v12, v17, v19, v21, v23];
    v13 = v25;
    v12 = v26;
    [ZWRootViewController _denormalizePoint:"_denormalizePoint:withRespectToFrame:" withRespectToFrame:?];
  }

  else
  {
    v29 = [(ZWRootViewController *)self activeLensViewController];
    v30 = [(ZWRootViewController *)self fullscreenLensViewController];

    if (v29 == v30)
    {
      [(ZWRootViewController *)self _screenSizeForCurrentOrientation];
      width = v33;
      height = v34;
      [(ZWRootViewController *)self _denormalizePointForCurrentOrientation:v13, v12];
      v13 = v35;
      v12 = v36;
      [(ZWRootViewController *)self _denormalizePointForCurrentOrientation:x, y];
      x = v37;
      y = v38;
      v20 = 0.0;
      v18 = 0.0;
      goto LABEL_8;
    }

    v31 = [(ZWRootViewController *)self activeLensViewController];
    v32 = [(ZWRootViewController *)self pipLensViewController];

    if (v31 != v32)
    {
      v18 = CGRectZero.origin.x;
      v20 = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      goto LABEL_8;
    }

    v43 = [(ZWRootViewController *)self pipLensViewController];
    v44 = [v43 view];
    v45 = [(ZWRootViewController *)self pipLensViewController];
    v46 = [v45 view];
    [v46 bounds];
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = [(ZWRootViewController *)self containerView];
    [v44 convertRect:v55 toView:{v48, v50, v52, v54}];

    UIRectInset();
    v18 = v56;
    v20 = v57;
    width = v58;
    height = v59;
    [(ZWRootViewController *)self _denormalizePointForCurrentOrientation:v13, v12];
    v13 = v60;
    v12 = v61;
    [(ZWRootViewController *)self _denormalizePointForCurrentOrientation:x, y];
  }

  x = v27;
  y = v28;
LABEL_8:
  started = 0;
  if (([v16 inStandbyMode] & 1) == 0 && v63 > AXZoomMinimumZoomLevel)
  {
    usingRelativePushPanning = self->_usingRelativePushPanning;
    started = ZOTShouldStartAutopan(a5, &usingRelativePushPanning, v13, v12, a7, x, y, v63, v39, v40, v18, v20, width, height);
    self->_usingRelativePushPanning = usingRelativePushPanning;
  }

  return started;
}

- (int64_t)interfaceOrientationWithFullscreenEventHandler:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(ZWRootViewController *)self cachedValuesSerialQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __71__ZWRootViewController_interfaceOrientationWithFullscreenEventHandler___block_invoke;
  v8[3] = &unk_79310;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(v5, v8);

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)touchTrapView:(id)a3 didTrapTouches:(id)a4 withEvent:(id)a5
{
  v9 = a3;
  v6 = [(ZWRootViewController *)self pipLensViewController];
  if ([v6 isInLensResizingMode])
  {
  }

  else
  {
    v7 = [(ZWRootViewController *)self dockedLensViewController];
    v8 = [v7 isInDockResizingMode];

    if ((v8 & 1) == 0)
    {
      _AXAssert();
    }
  }

  [(ZWRootViewController *)self touchTrapViewActivated:v9];
}

- (void)touchTrapViewActivated:(id)a3
{
  [(ZWRootViewController *)self _setPIPLensResizingEnabled:0];

  [(ZWRootViewController *)self _setDockResizingEnabled:0];
}

- (BOOL)touchTrapView:(id)a3 shouldReportSelfInHitTestAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(ZWRootViewController *)self activeLensViewController];
  v9 = [(ZWRootViewController *)self fullscreenLensViewController];

  if (v8 == v9)
  {
    goto LABEL_12;
  }

  v10 = [(ZWRootViewController *)self activeLensViewController];
  v11 = [(ZWRootViewController *)self pipLensViewController];
  v12 = v11;
  if (v10 == v11)
  {
    v13 = [(ZWRootViewController *)self pipLensViewController];
    v14 = [v13 isInLensResizingMode];

    if (!v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v15 = [(ZWRootViewController *)self activeLensViewController];
  v16 = [(ZWRootViewController *)self dockedLensViewController];
  v17 = v16;
  if (v15 == v16)
  {
    v18 = [(ZWRootViewController *)self dockedLensViewController];
    v19 = [v18 isInDockResizingMode];

    if (!v19)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v20 = [(ZWRootViewController *)self activeLensViewController];
  v21 = [v20 view];
  [v7 convertPoint:v21 toView:{x, y}];
  v23 = v22;
  v25 = v24;

  v26 = [(ZWRootViewController *)self activeLensViewController];
  v27 = [(ZWRootViewController *)self dockedLensViewController];
  v28 = v27;
  if (v26 != v27)
  {

    goto LABEL_11;
  }

  v29 = [(ZWRootViewController *)self dockedLensViewController];
  v30 = [v29 toggleZoomRegionButton];
  [v30 frame];
  v43.x = v23;
  v43.y = v25;
  v31 = CGRectContainsPoint(v44, v43);

  if (v31)
  {
LABEL_12:
    v34 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v32 = [(ZWRootViewController *)self pipLensViewController];
  v33 = [v32 lensEdgeForTouchAtLocation:{v23, v25}];

  if (v33 > 1)
  {
    goto LABEL_12;
  }

  v36 = [(ZWRootViewController *)self slugViewController];
  v37 = [v36 view];
  if ([v37 isHidden])
  {

    v34 = 1;
  }

  else
  {
    v38 = [(ZWRootViewController *)self slugViewController];
    v39 = [v38 view];
    v40 = [(ZWRootViewController *)self slugViewController];
    v41 = [v40 view];
    [v7 convertPoint:v41 toView:{x, y}];
    v42 = [v39 pointInside:0 withEvent:?];

    v34 = v42 ^ 1;
  }

LABEL_13:

  return v34 & 1;
}

- (void)_updateSystemGestureDisablingAssertionsForFullscreenZoom
{
  [(ZWRootViewController *)self blockControlCenterGestureIfNeededWithFullscreenEventHandler:0];

  [(ZWRootViewController *)self blockNotificationCenterGestureIfNeededWithFullscreenEventHandler:0];
}

- (void)_zoomMovementHeartbeat
{
  v3 = CFAbsoluteTimeGetCurrent() - self->_lastUpdateVelocityTime;

  [(ZWRootViewController *)self _zoomMovementHeartbeat:0 fullscreenEventHandler:v3];
}

- (void)_zoomMovementHeartbeat:(double)a3 fullscreenEventHandler:(id)a4
{
  v41 = a4;
  [(ZWRootViewController *)self zoomFactor];
  v7 = v6;
  [(ZWRootViewController *)self zoomPanOffset];
  v9 = v8;
  v11 = v10;
  ZOTDistanceForTimeAndVelocityWithMaxDistance(a3);
  v13 = v12;
  v15 = v14;
  v16 = fabs(v14);
  if (fabs(v12) >= 1.0 || v16 >= 1.0)
  {
    self->_validatePanOffsetWithFullscreen = 1;
    v18 = v9 + v12;
    v19 = v11 + v15;
    v20 = [(ZWRootViewController *)self activeLensViewController];
    [v20 validPanOffsetForProposedOffset:v18 proposedZoomFactor:{v11 + v15, v7}];
    v22 = v21;
    v24 = v23;

    v25 = [(ZWRootViewController *)self activeLensViewController];
    [v25 handleAdditionalPanOffsetFromOriginalOffset:0 validOffset:v18 useFullDelta:{v19, v22, v24}];

    v26 = [(ZWRootViewController *)self activeLensViewController];
    [v26 offsetByPanningWithDelta:6 axis:v13 zoomFactor:{v15, v7}];
    v28 = v27;
    v30 = v29;

    [(ZWRootViewController *)self setZoomPanOffset:v28, v30];
    v31 = [(ZWRootViewController *)self activeLensViewController];
    [v31 updateZoomFactor:0 panOffset:0 animated:v7 animationDuration:v28 completion:{v30, -1.0}];

    self->_validatePanOffsetWithFullscreen = 0;
    if (v22 == v28 && v24 == v30)
    {
      v33 = vabdd_f64(v24, v19);
      v34 = [(ZWRootViewController *)self activeLensViewController];
      v35 = [(ZWRootViewController *)self dockedLensViewController];

      if (v34 != v35)
      {
LABEL_22:
        if ((v33 < 2.22044605e-16 || !self->_careBorderY) && (vabdd_f64(v22, v18) < 2.22044605e-16 || !self->_careBorderX))
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      v36 = [(ZWRootViewController *)self dockedLensViewController];
      if ([v36 dockPosition])
      {
        v37 = [(ZWRootViewController *)self dockedLensViewController];
        v38 = [v37 dockPosition];

        if (v38 != &dword_0 + 3)
        {
          v39 = 752;
          goto LABEL_19;
        }
      }

      else
      {
      }

      v39 = 753;
LABEL_19:
      if (*(&self->super.super.super.isa + v39))
      {
        v40 = [(ZWRootViewController *)self dockedLensViewController];
        *(&self->super.super.super.isa + v39) = [v40 zoomRegionOnScreenReplicatorEdge];
      }

      else
      {
        *(&self->super.super.super.isa + v39) = 0;
      }

      goto LABEL_22;
    }
  }

LABEL_9:
  [(ZWRootViewController *)self stopZoomMovementWithVelocityWithFullscreenEventHandler:v41];
LABEL_10:
}

- (BOOL)_shouldBlockShowNotificationGesture
{
  v3 = [(ZWRootViewController *)self activeLensViewController];
  v4 = [(ZWRootViewController *)self fullscreenLensViewController];

  if (v3 != v4)
  {
    return 0;
  }

  v5 = [(ZWRootViewController *)self activeLensViewController];
  if ([v5 inStandbyMode])
  {

    return 0;
  }

  v6 = [(ZWRootViewController *)self _isZoomedToMinimum];

  if (v6)
  {
    return 0;
  }

  v8 = [(ZWRootViewController *)self activeLensViewController];
  v9 = [v8 lensZoomView];
  v10 = [v9 zoomReplicatorLayer];
  [v10 position];
  v12 = v11;

  v13 = [(ZWRootViewController *)self activeLensViewController];
  v14 = [v13 lensZoomView];
  v15 = [v14 zoomReplicatorLayer];
  [v15 bounds];
  v17 = v16;

  return v12 + v17 * -0.5 >= 15.0;
}

- (BOOL)_shouldBlockShowControlCenterGesture
{
  v3 = [(ZWRootViewController *)self activeLensViewController];
  if ([v3 inStandbyMode])
  {

    return 0;
  }

  v4 = [(ZWRootViewController *)self _isZoomedToMinimum];

  if (v4)
  {
    return 0;
  }

  v5 = [(ZWRootViewController *)self activeLensViewController];
  [v5 zoomPanOffset];
  v7 = v6;

  v8 = [(ZWRootViewController *)self activeLensViewController];
  v9 = [(ZWRootViewController *)self activeLensViewController];
  [v9 zoomFactor];
  [v8 maximumPanOffsetWithZoomFactor:?];
  v11 = v10;

  if (!AXDeviceHasHomeButton() || !AXDeviceIsPhoneIdiom())
  {
    return v7 + v11 >= 30.0;
  }

  v12 = [(ZWRootViewController *)self activeLensViewController];
  v13 = [(ZWRootViewController *)self fullscreenLensViewController];

  result = 0;
  if (v12 == v13 && v11 - v7 >= 30.0)
  {
    return 1;
  }

  return result;
}

- (double)_interfaceAwareAdjustedAngleForScreenAngle:(double)a3
{
  v4 = [(ZWRootViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 interfaceOrientation];

  result = 0.0;
  if (v6 > 2)
  {
    if (v6 == (&dword_0 + 3))
    {
      result = a3 + -270.0;
      if (a3 + -270.0 >= 0.0)
      {
        return result;
      }

      v8 = 90.0;
      return a3 + v8;
    }

    if (v6 == &dword_4)
    {
      result = a3 + -90.0;
      if (a3 + -90.0 < 0.0)
      {
        v8 = 270.0;
        return a3 + v8;
      }
    }
  }

  else
  {
    if (v6 < 2)
    {
      return a3;
    }

    if (v6 == (&dword_0 + 2))
    {
      result = a3 + -180.0;
      if (a3 + -180.0 < 0.0)
      {
        v8 = 180.0;
        return a3 + v8;
      }
    }
  }

  return result;
}

- (CGPoint)_convertPointFromNormalizedToWindow:(CGPoint)a3
{
  v4 = ZOTDenormalizePoint(a3.x);
  v6 = v5;
  v7 = [(ZWRootViewController *)self view];
  v8 = [v7 window];
  v9 = ZWConvertPointInScreenPixelsToViewCoordinates(v8, v4, v6);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)handleReachabilityToggled:(double)a3
{
  v5 = [(ZWRootViewController *)self activeLensViewController];
  v6 = [v5 inStandbyMode];

  if ((v6 & 1) == 0)
  {
    [(ZWRootViewController *)self reachabilityOffset];
    v8 = v7;
    if (vabdd_f64(a3, v7) >= 0.00000011920929)
    {
      v9 = [(ZWRootViewController *)self activeLensViewController];
      v10 = [(ZWRootViewController *)self pipLensViewController];

      if (v9 == v10)
      {
        v11 = [(ZWRootViewController *)self activeLensViewController];
        [(ZWRootViewController *)self _moveZoomItemWithController:v11 byDelta:0 animated:0 userInitiated:0.0, a3 - v8];
      }

      [(ZWRootViewController *)self setReachabilityOffset:a3];
    }
  }
}

- (void)didAnimateForReachabilityToOffset:(double)a3
{
  v4 = [(ZWRootViewController *)self cachedValuesSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __58__ZWRootViewController_didAnimateForReachabilityToOffset___block_invoke;
  block[3] = &unk_78D00;
  block[4] = self;
  dispatch_sync(v4, block);
}

void __58__ZWRootViewController_didAnimateForReachabilityToOffset___block_invoke(uint64_t a1)
{
  if (!CGRectIsNull(*(*(a1 + 32) + 112)))
  {
    v2 = *(a1 + 32);
    v3 = v2 + 10;
    v4 = [v2 activeLensViewController];
    v5 = [v4 lensZoomView];
    [v5 zw_convertBoundsToScreenCoordinates];
    v3[4] = v6;
    v3[5] = v7;
    v3[6] = v8;
    v3[7] = v9;
  }

  if (!CGRectIsNull(*(*(a1 + 32) + 176)))
  {
    v10 = *(a1 + 32);
    v11 = v10 + 10;
    v12 = [v10 menuViewController];
    v13 = [v12 view];
    [v13 zw_convertBoundsToScreenCoordinates];
    v11[12] = v14;
    v11[13] = v15;
    v11[14] = v16;
    v11[15] = v17;
  }

  if (!CGRectIsNull(*(*(a1 + 32) + 144)))
  {
    v18 = *(a1 + 32);
    v19 = v18 + 10;
    v20 = [v18 slugViewController];
    [v20 slugRingViewBoundsInScreenCoordinates];
    v19[8] = v21;
    v19[9] = v22;
    v19[10] = v23;
    v19[11] = v24;
  }

  if (!CGRectIsNull(*(*(a1 + 32) + 224)))
  {
    v25 = *(a1 + 32);
    v26 = v25 + 10;
    v27 = [v25 dockedLensViewController];
    v28 = [v27 dockedLensView];
    [v28 frame];
    v26[18] = v29;
    v26[19] = v30;
    v26[20] = v31;
    v26[21] = v32;
  }

  if (!CGRectIsNull(*(*(a1 + 32) + 256)))
  {
    v33 = *(a1 + 32);
    v34 = v33 + 10;
    v35 = [v33 dockedLensViewController];
    [v35 zoomRegionFrame];
    v34[22] = v36;
    v34[23] = v37;
    v34[24] = v38;
    v34[25] = v39;
  }

  if (!CGRectIsNull(*(*(a1 + 32) + 288)))
  {
    v40 = *(a1 + 32);
    v41 = v40 + 10;
    v42 = [v40 dockedLensViewController];
    v43 = [v42 toggleZoomRegionButton];
    [v43 frame];
    v41[26] = v44;
    v41[27] = v45;
    v41[28] = v46;
    v41[29] = v47;
  }

  if (!CGRectIsNull(*(*(a1 + 32) + 320)))
  {
    v48 = *(a1 + 32);
    v49 = v48 + 10;
    v54 = [v48 dockedLensViewController];
    [v54 frameForResizeDrag];
    v49[30] = v50;
    v49[31] = v51;
    v49[32] = v52;
    v49[33] = v53;
  }
}

- (void)_updateZoomListeners
{
  v23[0] = ZWAttributeKeyAppActivationAnimationStartDelay;
  [(ZWRootViewController *)self handleAppActivationAnimationDelay];
  v22 = [NSNumber numberWithDouble:?];
  v24[0] = v22;
  v23[1] = ZWAttributeKeyAppDeactivationAnimationStartDelay;
  [(ZWRootViewController *)self handleAppDeactivationAnimationDelay];
  v21 = [NSNumber numberWithDouble:?];
  v24[1] = v21;
  v23[2] = ZWAttributeKeyAppSwitcherRevealAnimationStartDelay;
  [(ZWRootViewController *)self handleAppSwitcherRevealAnimationDelay];
  v20 = [NSNumber numberWithDouble:?];
  v24[2] = v20;
  v23[3] = ZWAttributeKeyReachabilityScaleFactor;
  [(ZWRootViewController *)self reachabilityScaleFactor];
  v19 = [NSNumber numberWithDouble:?];
  v24[3] = v19;
  v23[4] = ZWAttributeKeyZoomLevel;
  [(ZWRootViewController *)self zoomLevel];
  v18 = [NSNumber numberWithDouble:?];
  v24[4] = v18;
  v23[5] = ZWAttributeKeyZoomFrame;
  [(ZWRootViewController *)self zoomFrame];
  v17 = NSStringFromCGRect(v25);
  v24[5] = v17;
  v23[6] = ZWAttributeKeyActiveZoomMode;
  v16 = [(ZWRootViewController *)self activeZoomMode];
  v24[6] = v16;
  v23[7] = ZWAttributeKeyInStandbyMode;
  v15 = [(ZWRootViewController *)self activeLensViewController];
  v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v15 inStandbyMode]);
  v24[7] = v14;
  v23[8] = ZWAttributeKeyShouldSuppressKeyCommandHUD;
  v3 = [NSNumber numberWithBool:[(ZWRootViewController *)self shouldSuppressKeyCommandHUD]];
  v24[8] = v3;
  v23[9] = ZWAttributeKeyIsAnimating;
  v4 = [(ZWRootViewController *)self zoomIsAnimatingDueToTransition]|| [(ZWRootViewController *)self zoomIsAnimatingDueToStandbyToggle]|| [(ZWRootViewController *)self zoomIsAnimating];
  v5 = [NSNumber numberWithInt:v4];
  v24[9] = v5;
  v23[10] = ZWAttributeKeyDisplayID;
  v6 = [(ZWRootViewController *)self view];
  v7 = [v6 window];
  v8 = [v7 screen];
  v9 = [v8 displayIdentity];
  v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v9 displayID]);
  v24[10] = v10;
  v23[11] = ZWAttributeKeyIsMainDisplay;
  v11 = [NSNumber numberWithBool:[(ZWRootViewController *)self isMainDisplay]];
  v24[11] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:12];

  v13 = [(ZWRootViewController *)self axuiService];
  [v13 updateZoomListeners:v12];
}

- (void)updateFocusWithSmartZoom:(id)a3
{
  v6 = a3;
  AXDeviceIsTV();
  if ([(ZWKeyboardContext *)self->_kbContext zoomFollowsFocus])
  {
    v4 = [(ZWRootViewController *)self lensAutopanner];
    v5 = [v4 isAutomovingLens];

    if ((v5 & 1) == 0)
    {
      [v6 focusRect];
      [(ZWRootViewController *)self _focusLensOnRect:1 panLensContent:1 recentreLens:0 animated:0 completion:?];
    }
  }
}

- (BOOL)isZoomInStandByModeWithSmartZoom:(id)a3
{
  v3 = [(ZWRootViewController *)self activeLensViewController];
  v4 = [v3 inStandbyMode];

  return v4;
}

- (id)getLastSpeakUnderFingerPhrase
{
  v2 = +[AXSpeakFingerManager sharedInstance];
  v3 = [v2 getLastSpeakUnderFingerPhrase];

  return v3;
}

- (AXUIService)axuiService
{
  WeakRetained = objc_loadWeakRetained(&self->_axuiService);

  return WeakRetained;
}

- (CGPoint)lastOrbLocation
{
  x = self->_lastOrbLocation.x;
  y = self->_lastOrbLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)redirectPointerLocation
{
  x = self->_redirectPointerLocation.x;
  y = self->_redirectPointerLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)lastPointerLocation
{
  x = self->_lastPointerLocation.x;
  y = self->_lastPointerLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end