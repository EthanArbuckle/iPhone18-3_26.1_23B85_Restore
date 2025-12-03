@interface ZWRootViewController
- ($2F34F6A4A708D3F7715AC605E075D30F)currentUIContextForEventProcessor:(SEL)processor;
- (AXUIService)axuiService;
- (BOOL)_inSpeakUnderFingerMode;
- (BOOL)_pipLensIsNearBottomOfScreen;
- (BOOL)_pipLensIsNearRightOfScreen;
- (BOOL)_pipLensIsNearTopOfScreen;
- (BOOL)_shouldBlockShowControlCenterGesture;
- (BOOL)_shouldBlockShowNotificationGesture;
- (BOOL)_smartZoomFocusedElementIsBeingSampled;
- (BOOL)attemptOrbZoomIfAppropriateWithSlugViewController:(id)controller;
- (BOOL)eventProcessor:(id)processor didGetWheelEventWithDelta:(int64_t)delta;
- (BOOL)fullscreenEventHandler:(id)handler autopanShouldStartWithPoint:(CGPoint)point speedFactor:(double *)factor initialSingleFingerLocation:(CGPoint)location fingerCount:(double)count pointHasBeenMapped:(BOOL)mapped;
- (BOOL)fullscreenEventHandler:(id)handler autopanWithLocation:(CGPoint)location initialSingleFingerLocation:(CGPoint)fingerLocation distance:(double)distance animationDuration:(double)duration useGutterDistance:(BOOL)gutterDistance pointHasBeenMapped:(BOOL)mapped;
- (BOOL)inDockedModeForMenuViewController:(id)controller;
- (BOOL)inFullscreenModeForMenuViewController:(id)controller;
- (BOOL)inPIPModeForMenuViewController:(id)controller;
- (BOOL)inStandByForMenuViewController:(id)controller;
- (BOOL)isZoomInStandByModeWithSmartZoom:(id)zoom;
- (BOOL)isZoomLensVisible;
- (BOOL)isZoomSlugVisible;
- (BOOL)shouldBeginAutopanningLensWithSlugViewController:(id)controller;
- (BOOL)shouldSendTapEventWithATVEventProcessor:(id)processor;
- (BOOL)shouldShowSlugWithSlugViewController:(id)controller;
- (BOOL)togglePeekZoomWithMenuViewController:(id)controller;
- (BOOL)toggleSlugVisibilityWithMenuViewController:(id)controller;
- (BOOL)touchTrapView:(id)view shouldReportSelfInHitTestAtLocation:(CGPoint)location;
- (BOOL)userIsInteractingWithSlugWithDockedLensViewController:(id)controller;
- (CGPoint)_convertPointFromNormalizedToWindow:(CGPoint)window;
- (CGPoint)_denormalizePoint:(CGPoint)point withRespectToFrame:(CGRect)frame;
- (CGPoint)_denormalizePointForCurrentOrientation:(CGPoint)orientation;
- (CGPoint)_normalizePoint:(CGPoint)point withRespectToFrame:(CGRect)frame;
- (CGPoint)_physicalScreenPointForVirtualScreenPoint:(CGPoint)point;
- (CGPoint)_slugNormalizedPositionForCurrentPosition;
- (CGPoint)_slugOriginForNormalizedPosition:(CGPoint)position;
- (CGPoint)_virtualScreenPointForPhysicalScreenPoint:(CGPoint)point;
- (CGPoint)lastOrbLocation;
- (CGPoint)lastPointerLocation;
- (CGPoint)mirrorPanOffsetForRTLIfNecessary:(CGPoint)necessary;
- (CGPoint)pointerLocationToZoomInToWithZoomFactor:(double)factor;
- (CGPoint)redirectPointerLocation;
- (CGPoint)zoomLocationWithFullscreenEventHandler:(id)handler;
- (CGPoint)zoomPanOffset;
- (CGRect)_determineSuitableLensFrame;
- (CGRect)zoomFrame;
- (CGRect)zoomFrameForPanningContinuouslyToPoint:(CGPoint)point zoomFactor:(double)factor;
- (CGSize)_lensDefaultSize;
- (CGSize)_lensMaximumSize;
- (CGSize)_lensMinimumSize;
- (CGSize)_screenSizeForCurrentOrientation;
- (CGSize)currentScreenSizeForEventProcessor:(id)processor;
- (UIScreen)screen;
- (ZWRootViewController)initWithAXUIService:(id)service onScreen:(id)screen isMainDisplay:(BOOL)display;
- (double)_interfaceAwareAdjustedAngleForScreenAngle:(double)angle;
- (double)reachabilityScaleFactor;
- (double)setZoomFactorRespectingUserPreferredMaximumZoom:(double)zoom;
- (double)storedZoomLevelWithFullscreenEventHandler:(id)handler;
- (double)zoomFactor;
- (double)zoomFactorForMenuViewController:(id)controller;
- (double)zoomFactorRespectingUserPreferredMaximumZoom:(double)zoom;
- (double)zoomLevelWithFullscreenEventHandler:(id)handler;
- (id)activeZoomMode;
- (id)getLastSpeakUnderFingerPhrase;
- (int64_t)currentInterfaceOrientationForEventProcessor:(id)processor;
- (int64_t)interfaceOrientationWithFullscreenEventHandler:(id)handler;
- (unsigned)currentDisplayIdForEventProcessor:(id)processor;
- (unsigned)currentWindowContextIdForEventProcessor:(id)processor;
- (void)_applyInitialConstraintsForLensViewController:(id)controller;
- (void)_beginObservingValuesForLens:(id)lens;
- (void)_disableZoomWindowHitTesting;
- (void)_dismissMenuAnimated:(BOOL)animated;
- (void)_enableZoomWindowHitTesting;
- (void)_endObservingValuesForLens:(id)lens;
- (void)_exitStandbyIfNecessary;
- (void)_focusLensOnRect:(CGRect)rect panLensContent:(BOOL)content recentreLens:(BOOL)lens animated:(BOOL)animated completion:(id)completion;
- (void)_handleKeyboardCommand:(int64_t)command isRepeatCommand:(BOOL)repeatCommand;
- (void)_handlePanWheelEventWithDelta:(int64_t)delta animated:(BOOL)animated animationDuration:(double)duration;
- (void)_handleSlugAction:(int64_t)action;
- (void)_handleZoomLevelAdjustmentViaGesture:(CGPoint)gesture;
- (void)_handleZoomWheelEventWithDelta:(int64_t)delta;
- (void)_initializeEventUIContext:(id *)context;
- (void)_initializeZoomSettingsIfNeeded;
- (void)_loadZoomTouchExtras;
- (void)_menuDidDisappear;
- (void)_moveZoomItemWithController:(id)controller byDelta:(CGPoint)delta animated:(BOOL)animated userInitiated:(BOOL)initiated shouldUseFullDeltaForDockedMode:(BOOL)mode shouldPan:(BOOL)pan;
- (void)_moveZoomItemWithControllerToDodgeJindo:(id)jindo byDelta:(CGPoint)delta;
- (void)_prepareToHandleZoomLevelAdjustmentViaGesture;
- (void)_presentMenuWithAnchorView:(id)view animated:(BOOL)animated ignoreCooldown:(BOOL)cooldown;
- (void)_removeAllSystemGestureDisablingAssertions;
- (void)_removeFullscreenSystemGestureDisablingAssertions;
- (void)_removePIPSystemGestureDisablingAssertions;
- (void)_resizeZoomLensByDelta:(CGPoint)delta;
- (void)_resizeZoomLensWithAdjustment:(CGPoint)adjustment lensPositionCompensation:(CGPoint)compensation;
- (void)_rezoomDueToAppTransitionIfNeeded;
- (void)_rezoomDueToDockIfNeeded;
- (void)_setDockResizingEnabled:(BOOL)enabled;
- (void)_setPIPLensResizingEnabled:(BOOL)enabled;
- (void)_toggleZoomStandby;
- (void)_transitionToLens:(id)lens animated:(BOOL)animated completion:(id)completion;
- (void)_transitionToLensForMode:(id)mode animated:(BOOL)animated completion:(id)completion;
- (void)_unzoomDueToAppTransitionIfNeeded;
- (void)_updateEventUIContextForSpeakFingerStateChange;
- (void)_updateKeyboardFrame:(CGRect)frame;
- (void)_updateLensEdgeMaskForZoomController:(id)controller;
- (void)_updateLensLayout;
- (void)_updateOrbLocation:(CGPoint)location animated:(BOOL)animated completion:(id)completion;
- (void)_updateSlugConstraintsForOrientation:(int64_t)orientation;
- (void)_updateSlugLayoutAnimated:(BOOL)animated;
- (void)_updateSystemGestureDisablingAssertions;
- (void)_updateSystemGestureDisablingAssertionsForFullscreenZoom;
- (void)_updateSystemGestureDisablingAssertionsForPipLensPosition;
- (void)_updateZoomFactor:(double)factor animated:(BOOL)animated;
- (void)_updateZoomListeners;
- (void)_zoomMovementHeartbeat;
- (void)_zoomMovementHeartbeat:(double)heartbeat fullscreenEventHandler:(id)handler;
- (void)atvEventProcessor:(id)processor adjustZoomLevelWithDelta:(CGPoint)delta;
- (void)autopanner:(id)autopanner didAutopanByDelta:(CGPoint)delta;
- (void)blockControlCenterGestureIfNeededWithFullscreenEventHandler:(id)handler;
- (void)blockHomeGestureIfNeededWithEventProcessor:(id)processor;
- (void)blockNotificationCenterGestureIfNeededWithFullscreenEventHandler:(id)handler;
- (void)dealloc;
- (void)didAnimateForReachabilityToOffset:(double)offset;
- (void)didEndAnimation;
- (void)didFinishAutopanningLensWithAutopanner:(id)autopanner;
- (void)didGetSpeakContentGestureWithATVEventProcessor:(id)processor;
- (void)didGetTogglePanningModeGestureWithATVEventProcessor:(id)processor;
- (void)didGetToggleZoomGestureWithEventProcessor:(id)processor;
- (void)didGetTouchOutsideLensChromeWithEventProcessor:(id)processor;
- (void)didGetTouchOutsideZoomMenuWithEventProcessor:(id)processor;
- (void)didMoveToParentViewController:(id)controller;
- (void)didStartAnimation;
- (void)dockedLensViewController:(id)controller zoomRegionVisibilityWasChanged:(BOOL)changed;
- (void)endOrbZoomWithSlugViewController:(id)controller;
- (void)endZoomMovementWithFullscreenEventHandler:(id)handler;
- (void)eventProcessor:(id)processor didGetFirstTouchAtLocation:(CGPoint)location;
- (void)eventProcessor:(id)processor didGetPanEventWithDelta:(int64_t)delta;
- (void)eventProcessor:(id)processor didGetPointerEventAtLocation:(CGPoint)location withEventRep:(id)rep;
- (void)eventProcessor:(id)processor didGetTouchInSpeakFingerMode:(CGPoint)mode firstTouchWentIntoLens:(BOOL)lens;
- (void)externalClientSetZoomFactor:(double)factor;
- (void)externalClientSetZoomPanOffset:(CGPoint)offset;
- (void)externalClientWantsToAutopan:(CGPoint)autopan withPanningStyle:(unint64_t)style;
- (void)fullscreenEventHandler:(id)handler continueZoomMovementWithVelocity:(double)velocity angle:(double)angle;
- (void)fullscreenEventHandler:(id)handler didEndOrbAtLocation:(CGPoint)location;
- (void)fullscreenEventHandler:(id)handler didReceiveOneFingerDownAtLocation:(CGPoint)location;
- (void)fullscreenEventHandler:(id)handler didReceiveThreeFingerDoubleTapAtLocation:(CGPoint)location;
- (void)fullscreenEventHandler:(id)handler didReceiveThreeFingerSingleTapAtLocation:(CGPoint)location;
- (void)fullscreenEventHandler:(id)handler didReceiveThreeFingerTripleTapAtLocation:(CGPoint)location;
- (void)fullscreenEventHandler:(id)handler didStartOrbAtLocation:(CGPoint)location;
- (void)fullscreenEventHandler:(id)handler didThreeFingerOrbAtLocation:(CGPoint)location;
- (void)fullscreenEventHandler:(id)handler setZoomLevel:(double)level duration:(double)duration;
- (void)fullscreenEventHandler:(id)handler setZoomLevelFromTrackpadGesture:(double)gesture;
- (void)fullscreenEventHandler:(id)handler storeZoomLevel:(double)level location:(CGPoint)location zoomed:(BOOL)zoomed forKey:(id)key;
- (void)fullscreenEventHandler:(id)handler updateOrbMovementAtLocation:(CGPoint)location;
- (void)fullscreenEventHandler:(id)handler updateZoomMovementWithPoint:(CGPoint)point;
- (void)handleAppActivationAnimationDidFinish;
- (void)handleAppActivationAnimationWillBegin;
- (void)handleAppDeactivationAnimationWillBegin;
- (void)handleAppDidBecomeActiveWithID:(id)d initialKeyboardFrame:(CGRect)frame;
- (void)handleAppDidEnterBackgroundWithID:(id)d;
- (void)handleAppSwitcherRevealAnimationWillBegin;
- (void)handleCarouselLockBegan;
- (void)handleDeviceReturnedToClockAtIdle;
- (void)handleDeviceWillWake;
- (void)handleDragWillEnd;
- (void)handleDragWillStart;
- (void)handleFluidSwitcherGestureDidFinish;
- (void)handleFluidSwitcherGestureDidFinishWithDock;
- (void)handleFluidSwitcherGestureWillBegin;
- (void)handleFocusChangedWithType:(int64_t)type rect:(CGRect)rect keyboardFrame:(CGRect)frame contextId:(unsigned int)id appID:(id)d;
- (void)handleKeyboardWillAppearWithFrame:(CGRect)frame inAppWithBundleID:(id)d;
- (void)handleKeyboardWillHideInAppWithBundleID:(id)d;
- (void)handleLockButtonWasPressed;
- (void)handleReachabilityToggled:(double)toggled;
- (void)handleSettingsAppDidUpdateIdleSlugOpacity:(double)opacity;
- (void)handleSettingsAppDidUpdatePreferredDockPosition:(id)position;
- (void)handleSubstantialAppTransition;
- (void)hideZoomSlugAndLens:(BOOL)lens completion:(id)completion;
- (void)lastFingerWasLiftedWithEventProcessor:(id)processor firstTouchWentIntoSlug:(BOOL)slug;
- (void)loadView;
- (void)menuDidAppear:(id)appear;
- (void)menuViewController:(id)controller adjustZoomFactor:(double)factor animated:(BOOL)animated;
- (void)menuViewController:(id)controller didChooseDockPosition:(id)position withCompletion:(id)completion;
- (void)menuViewController:(id)controller didChooseLensEffect:(id)effect;
- (void)menuViewController:(id)controller didChooseZoomMode:(id)mode withCompletion:(id)completion;
- (void)menuViewController:(id)controller finishedAdjustingZoomFactor:(double)factor;
- (void)moveCursorToCurrentFakeCursorLocation;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)sendUserEventOccurred;
- (void)setActiveLensViewController:(id)controller;
- (void)setGutterDistanceForUnitTests:(double)tests scaleFactor:(double)factor;
- (void)setTestingScreenSize:(CGSize)size;
- (void)setZoomFactor:(double)factor;
- (void)setZoomPanOffset:(CGPoint)offset;
- (void)showZoomSlugAndLens:(BOOL)lens completion:(id)completion;
- (void)slugWasDoubleTappedWithSlugViewController:(id)controller;
- (void)slugWasSingleTappedWithSlugViewController:(id)controller;
- (void)slugWasTripleTappedWithSlugViewController:(id)controller;
- (void)stopZoomMovementWithVelocityWithFullscreenEventHandler:(id)handler;
- (void)toggleLensResizeModeWithMenuViewController:(id)controller;
- (void)toggleLensVisibilityWithMenuViewController:(id)controller;
- (void)toggleZoomMenu;
- (void)touchTrapView:(id)view didTrapTouches:(id)touches withEvent:(id)event;
- (void)touchTrapViewActivated:(id)activated;
- (void)updateDockedZoomRegionVisibility:(BOOL)visibility;
- (void)updateFocusWithSmartZoom:(id)zoom;
- (void)updateOrbZoomAtPoint:(CGPoint)point withSlugViewController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)wantsToStartAutopannerWithATVEventProcessor:(id)processor;
- (void)wantsToStartAutopannerWithSlugViewController:(id)controller;
- (void)wantsToStopAutopannerWithATVEventProcessor:(id)processor;
- (void)wantsToStopAutopannerWithSlugViewController:(id)controller;
- (void)willBeginAutopanningLensWithAutopanner:(id)autopanner;
- (void)zoomInToPoint:(CGPoint)point withZoomFactor:(double)factor animated:(BOOL)animated;
- (void)zoomLensViewController:(id)controller didMoveLens:(id)lens withDelta:(CGPoint)delta;
- (void)zoomLensViewControllerDidChangeStandbyMode:(id)mode;
- (void)zoomLensViewControllerUpdateUIForStandby:(id)standby completion:(id)completion;
- (void)zoomListenerRegisteredForAllAttributeUpdatesCoalesced:(BOOL)coalesced clientIdentifier:(id)identifier;
- (void)zoomListenerRegisteredForAttributeUpdatesImmediately:(id)immediately registered:(BOOL)registered clientIdentifier:(id)identifier;
@end

@implementation ZWRootViewController

- (UIScreen)screen
{
  WeakRetained = objc_loadWeakRetained(&self->_screen);

  return WeakRetained;
}

- (ZWRootViewController)initWithAXUIService:(id)service onScreen:(id)screen isMainDisplay:(BOOL)display
{
  displayCopy = display;
  serviceCopy = service;
  screenCopy = screen;
  v107.receiver = self;
  v107.super_class = ZWRootViewController;
  v10 = [(ZWRootViewController *)&v107 initWithNibName:0 bundle:0];
  if (v10)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSZoomTouchReadyForObserversNotification, 0, 0, 1u);
    objc_storeWeak(&v10->_axuiService, serviceCopy);
    [(ZWRootViewController *)v10 _loadZoomTouchExtras];
    [(ZWRootViewController *)v10 _initializeZoomSettingsIfNeeded];
    v12 = objc_alloc_init(ZWAlertManager);
    [(ZWRootViewController *)v10 setZoomAlertManager:v12];

    [(ZWRootViewController *)v10 setIsMainDisplay:displayCopy];
    [(ZWRootViewController *)v10 setScreen:screenCopy];
    v13 = +[ZWEventProcessor defaultEventProcessor];
    [(ZWRootViewController *)v10 setEventManager:v13];
    if (displayCopy)
    {
      [v13 setMainDisplayDelegate:v10];
    }

    else
    {
      externalDisplayDelegates = [v13 externalDisplayDelegates];
      [externalDisplayDelegates addPointer:v10];
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
    v76 = serviceCopy;

    v31 = +[AXSettings sharedInstance];
    zoomCurrentLensEffect = [v31 zoomCurrentLensEffect];

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
    v35 = [(ZWZoomLensViewController *)[ZWZoomPIPLensViewController alloc] initWithZoomFactor:zoomCurrentLensEffect zoomPanOffset:screenCopy lensEffect:v25 screen:v28, v30];
    [(ZWRootViewController *)v10 setPipLensViewController:v35];
    [(ZWZoomLensViewController *)v35 setDelegate:v10];
    [(ZWZoomPIPLensViewController *)v35 setPipDelegate:v10];
    v36 = [(ZWZoomLensViewController *)[ZWZoomDockedLensViewController alloc] initWithZoomFactor:zoomCurrentLensEffect zoomPanOffset:screenCopy lensEffect:v25 screen:v28, v30];
    [(ZWRootViewController *)v10 setDockedLensViewController:v36];
    [(ZWZoomLensViewController *)v36 setDelegate:v10];
    [(ZWZoomDockedLensViewController *)v36 setDockedDelegate:v10];
    v37 = [(ZWZoomLensViewController *)[ZWZoomFullscreenLensViewController alloc] initWithZoomFactor:zoomCurrentLensEffect zoomPanOffset:screenCopy lensEffect:v25 screen:v28, v30];
    [(ZWRootViewController *)v10 setFullscreenLensViewController:v37];
    [(ZWZoomLensViewController *)v37 setDelegate:v10];
    v74 = v37;
    v80 = [[ZWMenuViewController alloc] initWithNibName:0 bundle:0];
    [(ZWRootViewController *)v10 setMenuViewController:v80];
    menuViewController = [(ZWRootViewController *)v10 menuViewController];
    [menuViewController setModalPresentationStyle:7];

    menuViewController2 = [(ZWRootViewController *)v10 menuViewController];
    popoverPresentationController = [menuViewController2 popoverPresentationController];
    [popoverPresentationController setDelegate:v10];

    [(ZWMenuViewController *)v80 setDelegate:v10];
    [(ZWRootViewController *)v10 eventManager];
    if (displayCopy)
      v41 = {;
      fullscreenEventHandler = [v41 fullscreenEventHandler];
      [fullscreenEventHandler setZoomDelegate:v10];
    }

    else
      v41 = {;
      fullscreenEventHandler = [v41 fullscreenEventHandler];
      externalDisplayZoomDelegates = [fullscreenEventHandler externalDisplayZoomDelegates];
      [externalDisplayZoomDelegates addPointer:v10];
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
      isBrailleInputUIShowing = [v57 isBrailleInputUIShowing];
    }

    else
    {
      isBrailleInputUIShowing = 0;
    }

    [(ZWRootViewController *)v10 setBrailleInputUIIsShowing:isBrailleInputUIShowing];
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

    keyRepeatTimer = [(ZWRootViewController *)v10 keyRepeatTimer];
    [keyRepeatTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];

    [(ZWRootViewController *)v10 setLastKeyboardCommand:16];
    v71 = [[ZWFakeLaserViewController alloc] initWithZoomRootVC:v10];
    [(ZWRootViewController *)v10 setFakeLaserVC:v71];

    v72 = objc_opt_new();
    [(ZWRootViewController *)v10 setPointerClientController:v72];

    [(ZWRootViewController *)v10 setZoomIsAnimating:0];
    objc_destroyWeak(&v83);

    objc_destroyWeak(&v105);
    objc_destroyWeak(&location);

    serviceCopy = v76;
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
  eventManager = [(ZWRootViewController *)self eventManager];
  [eventManager cleanup];

  [(ZWRootViewController *)self _removeAllSystemGestureDisablingAssertions];
  smartZoom = [(ZWRootViewController *)self smartZoom];
  [smartZoom disableSmartZoom];

  smartZoom2 = [(ZWRootViewController *)self smartZoom];
  [smartZoom2 setDelegate:0];

  if (self->_voiceOverStatusChangedNotificationObserverToken)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self->_voiceOverStatusChangedNotificationObserverToken name:UIAccessibilityVoiceOverStatusDidChangeNotification object:0];

    voiceOverStatusChangedNotificationObserverToken = self->_voiceOverStatusChangedNotificationObserverToken;
    self->_voiceOverStatusChangedNotificationObserverToken = 0;
  }

  if ([(ZWRootViewController *)self isViewLoaded])
  {
    slugViewController = [(ZWRootViewController *)self slugViewController];
    [slugViewController removeObserver:self forKeyPath:@"slugRingView.bounds" context:&ZWZoomItemObserverContextID];

    slugViewController2 = [(ZWRootViewController *)self slugViewController];
    [slugViewController2 removeObserver:self forKeyPath:@"view.center" context:&ZWZoomItemObserverContextID];

    slugViewController3 = [(ZWRootViewController *)self slugViewController];
    [slugViewController3 removeObserver:self forKeyPath:@"userIsInteractingWithSlug" context:&ZWZoomItemObserverContextID];

    menuViewController = [(ZWRootViewController *)self menuViewController];
    [menuViewController removeObserver:self forKeyPath:@"userIsInteractingWithMenu" context:&ZWZoomItemObserverContextID];
  }

  lensAutopanner = [(ZWRootViewController *)self lensAutopanner];
  [lensAutopanner setDelegate:0];

  LOBYTE(lensAutopanner) = [(ZWRootViewController *)self isMainDisplay];
  eventManager2 = [(ZWRootViewController *)self eventManager];
  eventManager5 = eventManager2;
  if (lensAutopanner)
  {
    [eventManager2 setMainDisplayDelegate:0];
LABEL_13:

    goto LABEL_14;
  }

  externalDisplayDelegates = [eventManager2 externalDisplayDelegates];
  v16 = [externalDisplayDelegates count];

  if (v16)
  {
    v17 = 0;
    while (1)
    {
      eventManager3 = [(ZWRootViewController *)self eventManager];
      externalDisplayDelegates2 = [eventManager3 externalDisplayDelegates];
      v20 = [externalDisplayDelegates2 pointerAtIndex:v17];

      if (v20 == self)
      {
        break;
      }

      ++v17;
      eventManager4 = [(ZWRootViewController *)self eventManager];
      externalDisplayDelegates3 = [eventManager4 externalDisplayDelegates];
      v23 = [externalDisplayDelegates3 count];

      if (v23 <= v17)
      {
        goto LABEL_14;
      }
    }

    eventManager5 = [(ZWRootViewController *)self eventManager];
    externalDisplayDelegates4 = [eventManager5 externalDisplayDelegates];
    [externalDisplayDelegates4 removePointerAtIndex:v17];

    goto LABEL_13;
  }

LABEL_14:
  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];
  [pipLensViewController setDelegate:0];

  dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];
  [dockedLensViewController setDelegate:0];

  fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];
  [fullscreenLensViewController setDelegate:0];

  slugViewController4 = [(ZWRootViewController *)self slugViewController];
  [slugViewController4 setDelegate:0];

  keyRepeatTimer = [(ZWRootViewController *)self keyRepeatTimer];
  [keyRepeatTimer cancel];

  hitTestCategoryAssertion = [(ZWRootViewController *)self hitTestCategoryAssertion];
  [hitTestCategoryAssertion invalidate];

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
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];

  if (activeLensViewController != fullscreenLensViewController && ([(ZWRootViewController *)self activeLensViewController], v5 = objc_claimAutoreleasedReturnValue(), [(ZWRootViewController *)self pipLensViewController], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v5 == v6))
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
    disableNotificationCenterAssertionPIPLens = [(ZWRootViewController *)self disableNotificationCenterAssertionPIPLens];

    if (!disableNotificationCenterAssertionPIPLens)
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

  disableControlCenterAssertionPIPLens = [(ZWRootViewController *)self disableControlCenterAssertionPIPLens];

  if (!disableControlCenterAssertionPIPLens)
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
    zoomPreferredCurrentLensMode = [v3 zoomPreferredCurrentLensMode];
    v14 = [zoomPreferredCurrentLensMode isEqualToString:AXZoomLensModeWindow];

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

  layer = [v45 layer];
  [layer setDisableUpdateMask:v8];

  [(ZWRootViewController *)self setView:v45];
  v10 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(ZWRootViewController *)self setContainerView:v10];

  containerView = [(ZWRootViewController *)self containerView];
  [containerView setAutoresizingMask:18];

  containerView2 = [(ZWRootViewController *)self containerView];
  [v45 addSubview:containerView2];

  height = [[ZWTouchTrapView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(ZWRootViewController *)self setTouchTrapView:height];

  touchTrapView = [(ZWRootViewController *)self touchTrapView];
  [touchTrapView setAutoresizingMask:18];

  touchTrapView2 = [(ZWRootViewController *)self touchTrapView];
  [v45 addSubview:touchTrapView2];

  touchTrapView3 = [(ZWRootViewController *)self touchTrapView];
  [touchTrapView3 setDelegate:self];

  fakeLaserVC = [(ZWRootViewController *)self fakeLaserVC];
  [(ZWRootViewController *)self addChildViewController:fakeLaserVC];

  containerView3 = [(ZWRootViewController *)self containerView];
  fakeLaserVC2 = [(ZWRootViewController *)self fakeLaserVC];
  view = [fakeLaserVC2 view];
  [containerView3 addSubview:view];

  containerView4 = [(ZWRootViewController *)self containerView];
  fakeLaserVC3 = [(ZWRootViewController *)self fakeLaserVC];
  view2 = [fakeLaserVC3 view];
  [containerView4 bringSubviewToFront:view2];

  v24 = objc_alloc_init(UIScrollView);
  v25 = [[UIView alloc] initWithFrame:{0.0, 0.0, 10000.0, 10000.0}];
  [(ZWRootViewController *)self setScrollTrapView:v25];

  v26 = +[UIColor clearColor];
  scrollTrapView = [(ZWRootViewController *)self scrollTrapView];
  [scrollTrapView setBackgroundColor:v26];

  scrollTrapView2 = [(ZWRootViewController *)self scrollTrapView];
  [scrollTrapView2 setAlpha:0.0];

  scrollTrapView3 = [(ZWRootViewController *)self scrollTrapView];
  layer2 = [scrollTrapView3 layer];
  [layer2 setHitTestsAsOpaque:1];

  containerView5 = [(ZWRootViewController *)self containerView];
  [containerView5 addSubview:v24];

  containerView6 = [(ZWRootViewController *)self containerView];
  scrollTrapView4 = [(ZWRootViewController *)self scrollTrapView];
  [containerView6 addSubview:scrollTrapView4];

  [v24 setDelegate:self];
  [v24 setBounces:0];
  [v24 setHidden:1];
  [v24 setContentSize:{10000.0, 10000.0}];
  [v24 setContentOffset:{5000.0, 5000.0}];
  containerView7 = [(ZWRootViewController *)self containerView];
  panGestureRecognizer = [v24 panGestureRecognizer];
  [containerView7 addGestureRecognizer:panGestureRecognizer];

  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  containerView8 = [(ZWRootViewController *)self containerView];
  v37 = [v24 ax_pinConstraintsInAllDimensionsToView:containerView8];

  scrollTrapView5 = [(ZWRootViewController *)self scrollTrapView];
  containerView9 = [(ZWRootViewController *)self containerView];
  v40 = [scrollTrapView5 ax_pinConstraintsInAllDimensionsToView:containerView9];

  [v45 setHidden:1];
  slugViewController = [(ZWRootViewController *)self slugViewController];
  [slugViewController addObserver:self forKeyPath:@"view.center" options:1 context:&ZWZoomItemObserverContextID];

  slugViewController2 = [(ZWRootViewController *)self slugViewController];
  [slugViewController2 addObserver:self forKeyPath:@"slugRingView.bounds" options:1 context:&ZWZoomItemObserverContextID];

  slugViewController3 = [(ZWRootViewController *)self slugViewController];
  [slugViewController3 addObserver:self forKeyPath:@"userIsInteractingWithSlug" options:1 context:&ZWZoomItemObserverContextID];

  menuViewController = [(ZWRootViewController *)self menuViewController];
  [menuViewController addObserver:self forKeyPath:@"userIsInteractingWithMenu" options:1 context:&ZWZoomItemObserverContextID];
}

- (void)viewDidLoad
{
  v47.receiver = self;
  v47.super_class = ZWRootViewController;
  [(ZWRootViewController *)&v47 viewDidLoad];
  [(ZWRootViewController *)self _updateZoomListeners];
  slugViewController = [(ZWRootViewController *)self slugViewController];
  [(ZWRootViewController *)self addChildViewController:slugViewController];

  containerView = [(ZWRootViewController *)self containerView];
  slugViewController2 = [(ZWRootViewController *)self slugViewController];
  view = [slugViewController2 view];
  [containerView addSubview:view];

  slugViewController3 = [(ZWRootViewController *)self slugViewController];
  [slugViewController3 didMoveToParentViewController:self];

  containerView2 = [(ZWRootViewController *)self containerView];
  slugViewController4 = [(ZWRootViewController *)self slugViewController];
  view2 = [slugViewController4 view];

  slugViewController5 = [(ZWRootViewController *)self slugViewController];
  slugRingView = [slugViewController5 slugRingView];

  v12 = AXResistAllCompressingAndStretching[0];
  v13 = AXResistAllCompressingAndStretching[1];
  v14 = AXResistAllCompressingAndStretching[2];
  v15 = AXResistAllCompressingAndStretching[3];
  LODWORD(v16) = AXResistAllCompressingAndStretching[0];
  LODWORD(v17) = v13;
  LODWORD(v18) = v14;
  LODWORD(v19) = v15;
  [view2 ax_setContentHuggingAndCompressionResistance:{v16, v17, v18, v19}];
  LODWORD(v20) = v12;
  LODWORD(v21) = v13;
  LODWORD(v22) = v14;
  LODWORD(v23) = v15;
  [slugRingView ax_setContentHuggingAndCompressionResistance:{v20, v21, v22, v23}];
  safeAreaLayoutGuide = [containerView2 safeAreaLayoutGuide];
  leadingAnchor = [slugRingView leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v27 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  [(ZWRootViewController *)self setSlugRingLeadingConstraint:v27];

  trailingAnchor = [slugRingView trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  v30 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  [(ZWRootViewController *)self setSlugRingTrailingConstraint:v30];

  topAnchor = [slugRingView topAnchor];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  HasJindo = AXDeviceHasJindo();
  v34 = 0.0;
  if (HasJindo)
  {
    v34 = 5.0;
  }

  v35 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:v34];
  [(ZWRootViewController *)self setSlugRingTopConstraint:v35];

  bottomAnchor = [slugRingView bottomAnchor];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v38 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  [(ZWRootViewController *)self setSlugRingBottomConstraint:v38];

  slugRingLeadingConstraint = [(ZWRootViewController *)self slugRingLeadingConstraint];
  v48[0] = slugRingLeadingConstraint;
  slugRingTrailingConstraint = [(ZWRootViewController *)self slugRingTrailingConstraint];
  v48[1] = slugRingTrailingConstraint;
  slugRingTopConstraint = [(ZWRootViewController *)self slugRingTopConstraint];
  v48[2] = slugRingTopConstraint;
  slugRingBottomConstraint = [(ZWRootViewController *)self slugRingBottomConstraint];
  v48[3] = slugRingBottomConstraint;
  v43 = [NSArray arrayWithObjects:v48 count:4];
  [NSLayoutConstraint activateConstraints:v43];

  v44 = +[AXSettings sharedInstance];
  zoomPreferredCurrentLensMode = [v44 zoomPreferredCurrentLensMode];
  [(ZWRootViewController *)self _transitionToLensForMode:zoomPreferredCurrentLensMode animated:0 completion:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ZWRootViewController;
  [(ZWRootViewController *)&v4 viewDidAppear:appear];
  [(ZWRootViewController *)self focusZoomOnPreferenceSwitchIfNecessary];
  [(ZWRootViewController *)self _updateZoomListeners];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = ZWRootViewController;
  [(ZWRootViewController *)&v4 viewWillDisappear:disappear];
  [(ZWRootViewController *)self _removeAllSystemGestureDisablingAssertions];
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = ZWRootViewController;
  [(ZWRootViewController *)&v10 viewWillAppear:appear];
  containerView = [(ZWRootViewController *)self containerView];
  slugViewController = [(ZWRootViewController *)self slugViewController];
  view = [slugViewController view];
  [containerView bringSubviewToFront:view];

  [(ZWRootViewController *)self _updateSlugLayoutAnimated:0];
  containerView2 = [(ZWRootViewController *)self containerView];
  fakeLaserVC = [(ZWRootViewController *)self fakeLaserVC];
  view2 = [fakeLaserVC view];
  [containerView2 bringSubviewToFront:view2];
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  v39.receiver = self;
  v39.super_class = ZWRootViewController;
  [(ZWRootViewController *)&v39 didMoveToParentViewController:controllerCopy];
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
  cachedValuesSerialQueue = [(ZWRootViewController *)self cachedValuesSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __54__ZWRootViewController_didMoveToParentViewController___block_invoke_2;
  block[3] = &unk_792E8;
  block[4] = self;
  block[5] = v38;
  block[6] = v36;
  dispatch_sync(cachedValuesSerialQueue, block);

  view = [controllerCopy view];
  window = [view window];

  _contextId = [window _contextId];
  v9 = [NSNumber numberWithUnsignedInt:_contextId];
  v41 = v9;
  v10 = [NSArray arrayWithObjects:&v41 count:1];
  BKSHIDServicesExcludeCAContextsFromHitTestingForZoomSenders();

  hitTestCategoryAssertion = [(ZWRootViewController *)self hitTestCategoryAssertion];
  [hitTestCategoryAssertion invalidate];

  if (_contextId)
  {
    v12 = +[BKSTouchEventService sharedInstance];
    v13 = [NSNumber numberWithUnsignedInt:_contextId];
    v40 = v13;
    v14 = [NSArray arrayWithObjects:&v40 count:1];
    v15 = [v12 setContextIDs:v14 forHitTestContextCategory:1];
    [(ZWRootViewController *)self setHitTestCategoryAssertion:v15];
  }

  if (ZWLaserIsEnabled())
  {
    if (window && _contextId)
    {
      if (self->_pointerEventStream)
      {
        pointerEventStream = [(ZWRootViewController *)self pointerEventStream];
        [pointerEventStream invalidate];
      }

      v30 = +[BKSMousePointerService sharedInstance];
      view2 = [(ZWRootViewController *)self view];
      window2 = [view2 window];
      screen = [window2 screen];
      displayConfiguration = [screen displayConfiguration];
      hardwareIdentifier = [displayConfiguration hardwareIdentifier];
      v22 = [v30 requestGlobalMouseEventsForDisplay:hardwareIdentifier targetContextID:_contextId];
      [(ZWRootViewController *)self setPointerEventStream:v22];

      view3 = [(ZWRootViewController *)self view];
      window3 = [view3 window];
      screen2 = [window3 screen];
      displayIdentity = [screen2 displayIdentity];
      LODWORD(view2) = [displayIdentity displayID];

      cachedValuesSerialQueue2 = [(ZWRootViewController *)self cachedValuesSerialQueue];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = __54__ZWRootViewController_didMoveToParentViewController___block_invoke_3;
      v32[3] = &unk_78E98;
      v32[4] = self;
      v33 = _contextId;
      v34 = view2;
      v28 = v32;
    }

    else
    {
      pointerEventStream2 = [(ZWRootViewController *)self pointerEventStream];
      [pointerEventStream2 invalidate];

      [(ZWRootViewController *)self setPointerEventStream:0];
      cachedValuesSerialQueue2 = [(ZWRootViewController *)self cachedValuesSerialQueue];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = __54__ZWRootViewController_didMoveToParentViewController___block_invoke_4;
      v31[3] = &unk_78D00;
      v31[4] = self;
      v28 = v31;
    }

    dispatch_sync(cachedValuesSerialQueue2, v28);
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
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  inStandbyMode = [activeLensViewController inStandbyMode];

  if (inStandbyMode)
  {
    v5 = AXZoomMinimumZoomLevel;
  }

  else
  {
    [(ZWRootViewController *)self zoomFactor];
  }

  self->_zoomFactorBeforeUserAdjustingGesture = v5;
}

- (void)_handleZoomLevelAdjustmentViaGesture:(CGPoint)gesture
{
  if (self->_zoomFactorBeforeUserAdjustingGesture + gesture.y * -0.02 >= AXZoomMinimumZoomLevel)
  {
    v4 = self->_zoomFactorBeforeUserAdjustingGesture + gesture.y * -0.02;
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

- (void)_updateSlugConstraintsForOrientation:(int64_t)orientation
{
  if ((AXDeviceHasHomeButton() & 1) == 0 && (AXDeviceIsPad() & 1) == 0)
  {
    view = [(ZWRootViewController *)self view];
    [view safeAreaInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    if ((orientation - 1) > 1)
    {
      if (orientation == 3)
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

        slugRingLeadingConstraint = [(ZWRootViewController *)self slugRingLeadingConstraint];
        [slugRingLeadingConstraint setConstant:v7];

        slugRingTrailingConstraint = [(ZWRootViewController *)self slugRingTrailingConstraint];
        [slugRingTrailingConstraint setConstant:-5.0];

        v14 = 5.0 - v7;
      }

      else
      {
        if (orientation != 4)
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

        slugRingLeadingConstraint2 = [(ZWRootViewController *)self slugRingLeadingConstraint];
        [slugRingLeadingConstraint2 setConstant:5.0];

        slugRingTrailingConstraint2 = [(ZWRootViewController *)self slugRingTrailingConstraint];
        [slugRingTrailingConstraint2 setConstant:v17];

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

      slugRingLeadingConstraint3 = [(ZWRootViewController *)self slugRingLeadingConstraint];
      v14 = 0.0;
      [slugRingLeadingConstraint3 setConstant:0.0];

      slugRingTrailingConstraint3 = [(ZWRootViewController *)self slugRingTrailingConstraint];
      [slugRingTrailingConstraint3 setConstant:0.0];

      if (AXDeviceHasJindo())
      {
        v14 = 5.0;
      }
    }

    slugRingTopConstraint = [(ZWRootViewController *)self slugRingTopConstraint];
    [slugRingTopConstraint setConstant:v14];
  }
}

- (BOOL)isZoomLensVisible
{
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  isViewLoaded = [activeLensViewController isViewLoaded];

  if (isViewLoaded)
  {
    activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
    view = [activeLensViewController2 view];

    window = [view window];
    if (window && ([view alpha], v8 > 0.0))
    {
      isViewLoaded = [view isHidden] ^ 1;
    }

    else
    {
      LOBYTE(isViewLoaded) = 0;
    }
  }

  return isViewLoaded;
}

- (BOOL)isZoomSlugVisible
{
  slugViewController = [(ZWRootViewController *)self slugViewController];
  isViewLoaded = [slugViewController isViewLoaded];

  if (isViewLoaded)
  {
    slugViewController2 = [(ZWRootViewController *)self slugViewController];
    view = [slugViewController2 view];

    window = [view window];
    if (window && ([view alpha], v8 > 0.0))
    {
      isViewLoaded = [view isHidden] ^ 1;
    }

    else
    {
      LOBYTE(isViewLoaded) = 0;
    }
  }

  return isViewLoaded;
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

- (void)setZoomFactor:(double)factor
{
  cachedValuesSerialQueue = self->_cachedValuesSerialQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __38__ZWRootViewController_setZoomFactor___block_invoke;
  v11[3] = &unk_78E98;
  v11[4] = self;
  *&v11[5] = factor;
  dispatch_sync(cachedValuesSerialQueue, v11);
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  [(ZWRootViewController *)self zoomPanOffset];
  [activeLensViewController validPanOffsetForProposedOffset:? proposedZoomFactor:?];
  v7 = v6;
  v9 = v8;

  activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
  [(ZWRootViewController *)self zoomPanOffset];
  [activeLensViewController2 handleAdditionalPanOffsetFromOriginalOffset:0 validOffset:? useFullDelta:?];

  [(ZWRootViewController *)self setZoomPanOffset:v7, v9];
  [(ZWRootViewController *)self _updateZoomListeners];
}

double __38__ZWRootViewController_setZoomFactor___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 208) = result;
  return result;
}

- (double)zoomFactorRespectingUserPreferredMaximumZoom:(double)zoom
{
  v4 = +[AXSettings sharedInstance];
  [v4 zoomPreferredMaximumZoomScale];
  v6 = v5;

  return fmin(zoom, v6);
}

- (double)setZoomFactorRespectingUserPreferredMaximumZoom:(double)zoom
{
  if (AXZoomMinimumZoomLevel > zoom)
  {
    zoom = AXZoomMinimumZoomLevel;
  }

  [(ZWRootViewController *)self zoomFactorRespectingUserPreferredMaximumZoom:zoom];
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

- (void)setZoomPanOffset:(CGPoint)offset
{
  cachedValuesSerialQueue = self->_cachedValuesSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __41__ZWRootViewController_setZoomPanOffset___block_invoke;
  block[3] = &unk_78D28;
  block[4] = self;
  offsetCopy = offset;
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
  smartZoom = [(ZWRootViewController *)self smartZoom];
  [smartZoom focusRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  lensZoomView = [activeLensViewController lensZoomView];
  [lensZoomView sampleRect];
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

- (void)showZoomSlugAndLens:(BOOL)lens completion:(id)completion
{
  completionCopy = completion;
  view = [(ZWRootViewController *)self view];
  [view setHidden:0];

  zoomAlertManager = [(ZWRootViewController *)self zoomAlertManager];
  [zoomAlertManager showZoomEnabledAlertIfAppropriate];

  v9 = +[AXSettings sharedInstance];
  zoomPreferredCurrentLensMode = [v9 zoomPreferredCurrentLensMode];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __55__ZWRootViewController_showZoomSlugAndLens_completion___block_invoke;
  v12[3] = &unk_78F80;
  lensCopy = lens;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [(ZWRootViewController *)self _transitionToLensForMode:zoomPreferredCurrentLensMode animated:1 completion:v12];
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

- (void)hideZoomSlugAndLens:(BOOL)lens completion:(id)completion
{
  completionCopy = completion;
  [(ZWRootViewController *)self _removeAllSystemGestureDisablingAssertions];
  zoomAlertManager = [(ZWRootViewController *)self zoomAlertManager];
  [zoomAlertManager showZoomDisabledAlertIfAppropriate];

  v8 = +[ZWCoalescedSettings sharedInstance];
  zoomInStandby = [v8 zoomInStandby];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __55__ZWRootViewController_hideZoomSlugAndLens_completion___block_invoke;
  v11[3] = &unk_79338;
  v13 = zoomInStandby;
  lensCopy = lens;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
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

- (void)handleKeyboardWillAppearWithFrame:(CGRect)frame inAppWithBundleID:(id)d
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  dCopy = d;
  v10 = +[AXSubsystemZoom sharedInstance];
  ignoreLogging = [v10 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
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
      v22 = dCopy;
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
  v18 = [v17 containsObject:dCopy];

  if ((v18 & 1) == 0)
  {
    v19 = +[NSDate distantPast];
    [v19 timeIntervalSinceReferenceDate];
    self->_lastKeyboardDismissal = v20;

    [(ZWRootViewController *)self _updateKeyboardFrame:x, y, width, height];
  }
}

- (void)handleKeyboardWillHideInAppWithBundleID:(id)d
{
  dCopy = d;
  v5 = +[AXSubsystemZoom sharedInstance];
  ignoreLogging = [v5 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    v7 = +[AXSubsystemZoom identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v15 = dCopy;
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v17 = v11;
        _os_log_impl(&dword_0, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  deactivatedAppIDs = [(ZWRootViewController *)self deactivatedAppIDs];
  v13 = [deactivatedAppIDs containsObject:dCopy];

  if ((v13 & 1) == 0)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    self->_lastKeyboardDismissal = v14;
    [(ZWRootViewController *)self _updateKeyboardFrame:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
  }
}

- (void)zoomListenerRegisteredForAllAttributeUpdatesCoalesced:(BOOL)coalesced clientIdentifier:(id)identifier
{
  coalescedCopy = coalesced;
  identifierCopy = identifier;
  v7 = +[AXSubsystemZoom sharedInstance];
  ignoreLogging = [v7 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    v9 = +[AXSubsystemZoom identifier];
    v10 = AXLoggerForFacility();

    v11 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = AXColorizeFormatLog();
      v14 = identifierCopy;
      v15 = coalescedCopy;
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

- (void)zoomListenerRegisteredForAttributeUpdatesImmediately:(id)immediately registered:(BOOL)registered clientIdentifier:(id)identifier
{
  registeredCopy = registered;
  immediatelyCopy = immediately;
  v8 = +[AXSubsystemZoom sharedInstance];
  ignoreLogging = [v8 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    v10 = +[AXSubsystemZoom identifier];
    v11 = AXLoggerForFacility();

    v12 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = AXColorizeFormatLog();
      v15 = immediatelyCopy;
      v16 = registeredCopy;
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

- (void)handleFocusChangedWithType:(int64_t)type rect:(CGRect)rect keyboardFrame:(CGRect)frame contextId:(unsigned int)id appID:(id)d
{
  v7 = *&id;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12 = rect.size.height;
  v13 = rect.size.width;
  v14 = rect.origin.y;
  v15 = rect.origin.x;
  dCopy = d;
  if (dCopy)
  {
    deactivatedAppIDs = [(ZWRootViewController *)self deactivatedAppIDs];
    v20 = [deactivatedAppIDs containsObject:dCopy];

    if ((v20 & 1) == 0)
    {
      if (v7)
      {
        v21 = +[AXBackBoardServer server];
        view = [(ZWRootViewController *)self view];
        window = [view window];
        [v21 convertFrame:v7 fromContextId:objc_msgSend(window toContextId:{"_contextId"), v15, v14, v13, v12}];

        view2 = [(ZWRootViewController *)self view];
        window2 = [view2 window];
        AXUIConvertRectFromContextToScreenSpace();
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;

        view3 = [(ZWRootViewController *)self view];
        window3 = [view3 window];
        [window3 convertRect:0 fromWindow:{v27, v29, v31, v33}];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;

        view4 = [(ZWRootViewController *)self view];
        window4 = [view4 window];
        [window4 _convertRectToSceneReferenceSpace:{v37, v39, v41, v43}];
        v15 = v46;
        v14 = v47;
        v13 = v48;
        v12 = v49;
      }

      v50 = +[AXSubsystemZoom sharedInstance];
      ignoreLogging = [v50 ignoreLogging];

      if ((ignoreLogging & 1) == 0)
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
          typeCopy = type;
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

      if ((type - 1) > 1 || _AXSVoiceOverTouchEnabled())
      {
        if (type == 5)
        {
          if (!_AXSFullKeyboardAccessEnabled())
          {
            goto LABEL_34;
          }
        }

        else if (type == 3 && !_AXSAssistiveTouchScannerEnabled())
        {
          goto LABEL_34;
        }

        v58 = [(ZWRootViewController *)self eventManager:typeCopy];
        fullscreenEventHandler = [v58 fullscreenEventHandler];
        anyFingerDown = [fullscreenEventHandler anyFingerDown];

        if (!type || (anyFingerDown & 1) == 0)
        {
          view5 = [(ZWRootViewController *)self view];
          window5 = [view5 window];
          _contextId = [window5 _contextId];

          if (_contextId != v7)
          {
            activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
            inStandbyMode = [activeLensViewController inStandbyMode];

            +[NSDate timeIntervalSinceReferenceDate];
            v67 = v66;
            if (type)
            {
              inStandbyMode |= vabdd_f64(v66, self->_lastTypingFocusChangeTime) < 0.2;
              if (type == 2 && [(ZWKeyboardContext *)self->_kbContext isKeyboardVisible])
              {
                if (([(ZWKeyboardContext *)self->_kbContext zoomRepositionsForKeyboard]| inStandbyMode))
                {
                  goto LABEL_34;
                }

                goto LABEL_33;
              }

LABEL_32:
              if (inStandbyMode)
              {
                goto LABEL_34;
              }

LABEL_33:
              [(ZWRootViewController *)self _focusLensOnRect:1 panLensContent:type != 0 recentreLens:type == 0 animated:0 completion:v15, v14, v13, v12];
              goto LABEL_34;
            }

            self->_lastTypingFocusChangeTime = v66;
            activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
            fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];
            if (activeLensViewController2 == fullscreenLensViewController && ![(ZWKeyboardContext *)self->_kbContext zoomRepositionsForKeyboard])
            {
              zoomFollowsFocus = [(ZWKeyboardContext *)self->_kbContext zoomFollowsFocus];

              LOBYTE(inStandbyMode) = zoomFollowsFocus ^ 1 | inStandbyMode;
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
  ignoreLogging = [v3 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
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

  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];

  if (activeLensViewController == pipLensViewController)
  {
    [(ZWRootViewController *)self _setPIPLensResizingEnabled:0];
  }

  else
  {
    activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
    dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];

    if (activeLensViewController2 == dockedLensViewController)
    {
      [(ZWRootViewController *)self _setDockResizingEnabled:0];
    }
  }

  [(ZWRootViewController *)self _dismissMenuAnimated:0];
}

- (void)handleDeviceWillWake
{
  slugViewController = [(ZWRootViewController *)self slugViewController];
  [slugViewController wakeSlug];
}

- (void)handleSettingsAppDidUpdatePreferredDockPosition:(id)position
{
  positionCopy = position;
  dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];
  [dockedLensViewController setDockPositionIsTransitioning:1];

  dockedLensViewController2 = [(ZWRootViewController *)self dockedLensViewController];
  stringForCurrentDockPosition = [dockedLensViewController2 stringForCurrentDockPosition];
  v8 = [stringForCurrentDockPosition isEqualToString:positionCopy];

  if ((v8 & 1) == 0)
  {
    activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
    inStandbyMode = [activeLensViewController inStandbyMode];

    if (inStandbyMode)
    {
      dockedLensViewController3 = [(ZWRootViewController *)self dockedLensViewController];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = __72__ZWRootViewController_handleSettingsAppDidUpdatePreferredDockPosition___block_invoke_5;
      v23[3] = &unk_78D00;
      v23[4] = self;
      [dockedLensViewController3 transitionToDockPosition:positionCopy completion:v23];
    }

    else
    {
      activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
      activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
      [activeLensViewController3 zoomFactor];
      v15 = v14;
      activeLensViewController4 = [(ZWRootViewController *)self activeLensViewController];
      [activeLensViewController4 zoomPanOffset];
      v18 = v17;
      v20 = v19;
      v21 = +[AXSettings sharedInstance];
      zoomCurrentLensEffect = [v21 zoomCurrentLensEffect];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = __72__ZWRootViewController_handleSettingsAppDidUpdatePreferredDockPosition___block_invoke;
      v24[3] = &unk_79170;
      v24[4] = self;
      v25 = positionCopy;
      [activeLensViewController2 updateStandbyMode:1 zoomFactor:zoomCurrentLensEffect panOffset:1 lensEffect:v24 animated:v15 completion:{v18, v20}];

      dockedLensViewController3 = v25;
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

- (void)handleSettingsAppDidUpdateIdleSlugOpacity:(double)opacity
{
  slugViewController = [(ZWRootViewController *)self slugViewController];
  [slugViewController updateIdleSlugOpacityAndPreviewImmediately:opacity];
}

- (void)handleFluidSwitcherGestureWillBegin
{
  v3 = +[AXSubsystemZoom sharedInstance];
  ignoreLogging = [v3 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
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

  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  [activeLensViewController handleFluidSwitcherGestureWillBegin];

  activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
  if ([activeLensViewController2 inStandbyMode])
  {
  }

  else
  {
    activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
    fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];

    if (activeLensViewController3 == fullscreenLensViewController)
    {
      activeLensViewController4 = [(ZWRootViewController *)self activeLensViewController];
      [activeLensViewController4 zoomFactor];
      v16 = v15;

      activeLensViewController5 = [(ZWRootViewController *)self activeLensViewController];
      [activeLensViewController5 zoomPanOffset];
      v19 = v18;
      v21 = v20;

      activeLensViewController6 = [(ZWRootViewController *)self activeLensViewController];
      lensZoomView = [activeLensViewController6 lensZoomView];
      [lensZoomView zw_convertBoundsToScreenCoordinates];
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
  ignoreLogging = [v3 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
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
  ignoreLogging = [v3 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
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
  ignoreLogging = [v3 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
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
  ignoreLogging = [v3 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
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
  ignoreLogging = [v3 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
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
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  [activeLensViewController updateStandbyMode:1 zoomFactor:AXZoomLensEffectNone panOffset:1 lensEffect:0 animated:AXZoomMinimumZoomLevel completion:{CGPointZero.x, CGPointZero.y}];
}

- (void)handleCarouselLockBegan
{
  [(ZWRootViewController *)self setCarouselLockActive:1];
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  [activeLensViewController updateStandbyMode:1 zoomFactor:AXZoomLensEffectNone panOffset:1 lensEffect:0 animated:AXZoomMinimumZoomLevel completion:{CGPointZero.x, CGPointZero.y}];
}

- (void)handleSubstantialAppTransition
{
  v2 = +[AXSubsystemZoom sharedInstance];
  ignoreLogging = [v2 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
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

- (void)handleAppDidBecomeActiveWithID:(id)d initialKeyboardFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  dCopy = d;
  if ([(ZWRootViewController *)self isViewLoaded])
  {
    deactivatedAppIDs = [(ZWRootViewController *)self deactivatedAppIDs];
    [deactivatedAppIDs removeObject:dCopy];

    v11 = +[AXSubsystemZoom sharedInstance];
    ignoreLogging = [v11 ignoreLogging];

    if ((ignoreLogging & 1) == 0)
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
        v19 = v18 = dCopy;
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

- (void)handleAppDidEnterBackgroundWithID:(id)d
{
  dCopy = d;
  v5 = +[AXSubsystemZoom sharedInstance];
  ignoreLogging = [v5 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    v7 = +[AXSubsystemZoom identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v15 = dCopy;
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
    deactivatedAppIDs = [(ZWRootViewController *)self deactivatedAppIDs];
    v13 = [deactivatedAppIDs containsObject:dCopy];

    if ((v13 & 1) == 0)
    {
      [(ZWRootViewController *)self _updateKeyboardFrame:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
    }

    deactivatedAppIDs2 = [(ZWRootViewController *)self deactivatedAppIDs];
    [deactivatedAppIDs2 addObject:dCopy];
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
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];

  if (activeLensViewController == fullscreenLensViewController)
  {
    v10 = &AXZoomLensModeFullscreen;
  }

  else
  {
    activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
    pipLensViewController = [(ZWRootViewController *)self pipLensViewController];

    if (activeLensViewController2 == pipLensViewController)
    {
      v10 = &AXZoomLensModeWindow;
    }

    else
    {
      activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
      dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];

      if (activeLensViewController3 != dockedLensViewController)
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
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  lensZoomView = [activeLensViewController lensZoomView];
  [lensZoomView effectiveZoomViewFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];

  if (activeLensViewController2 == pipLensViewController)
  {
    view = [(ZWRootViewController *)self view];
    pipLensViewController2 = [(ZWRootViewController *)self pipLensViewController];
    lensChromeView = [pipLensViewController2 lensChromeView];
    [view convertRect:lensChromeView fromView:{v6, v8, v10, v12}];
    v6 = v28;
    v8 = v29;
    v10 = v30;
    v12 = v31;

    goto LABEL_8;
  }

  activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
  dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];

  if (activeLensViewController3 == dockedLensViewController)
  {
    dockedLensViewController2 = [(ZWRootViewController *)self dockedLensViewController];
    [dockedLensViewController2 zoomRegionFrame];
    v6 = v18;
    v8 = v19;
    v10 = v20;
    v12 = v21;

    dockedLensViewController3 = [(ZWRootViewController *)self dockedLensViewController];
    dockPosition = [dockedLensViewController3 dockPosition];

    if (dockPosition > 1)
    {
      if (dockPosition == &dword_0 + 2)
      {
        view = [(ZWRootViewController *)self dockedLensViewController];
        dockedLensView = [view dockedLensView];
        [dockedLensView bounds];
        v43 = v42;
        dockedLensViewController4 = [(ZWRootViewController *)self dockedLensViewController];
        [dockedLensViewController4 screenShift];
        v6 = v6 + v43 - v44;
      }

      else
      {
        if (dockPosition != &dword_0 + 3)
        {
          goto LABEL_9;
        }

        view = [(ZWRootViewController *)self dockedLensViewController];
        dockedLensView = [view dockedLensView];
        [dockedLensView bounds];
        v38 = v37;
        dockedLensViewController4 = [(ZWRootViewController *)self dockedLensViewController];
        [dockedLensViewController4 screenShift];
        v8 = v8 + v38 - v40;
      }

      goto LABEL_8;
    }

    if (!dockPosition)
    {
      view = [(ZWRootViewController *)self dockedLensViewController];
      [view screenShift];
      v8 = v8 - v41;
      goto LABEL_8;
    }

    if (dockPosition == &dword_0 + 1)
    {
      view = [(ZWRootViewController *)self dockedLensViewController];
      [view screenShift];
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
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];
  v5 = 1.0;
  if (activeLensViewController == fullscreenLensViewController)
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

- (void)_focusLensOnRect:(CGRect)rect panLensContent:(BOOL)content recentreLens:(BOOL)lens animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  lensCopy = lens;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  completionCopy = completion;
  containerView = [(ZWRootViewController *)self containerView];
  [containerView zw_convertRectFromScreenCoordinates:{x, y, width, height}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = +[AXSettings sharedInstance];
  zoomDebugShowExternalFocusRect = [v25 zoomDebugShowExternalFocusRect];

  if (zoomDebugShowExternalFocusRect)
  {
    debugFocusView = [(ZWRootViewController *)self debugFocusView];

    if (!debugFocusView)
    {
      v28 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [(ZWRootViewController *)self setDebugFocusView:v28];
      containerView2 = [(ZWRootViewController *)self containerView];
      [containerView2 addSubview:v28];

      v30 = +[UIColor greenColor];
      [v28 setBackgroundColor:v30];
    }

    debugFocusView2 = [(ZWRootViewController *)self debugFocusView];
    [debugFocusView2 setFrame:{v18, v20, v22, v24}];

    containerView3 = [(ZWRootViewController *)self containerView];
    debugFocusView3 = [(ZWRootViewController *)self debugFocusView];
    [containerView3 bringSubviewToFront:debugFocusView3];
  }

  [(ZWRootViewController *)self activeLensViewController];
  v95[0] = _NSConcreteStackBlock;
  v95[1] = 3221225472;
  v95[2] = __89__ZWRootViewController__focusLensOnRect_panLensContent_recentreLens_animated_completion___block_invoke;
  v95[3] = &unk_79388;
  v34 = v103 = content;
  v96 = v34;
  selfCopy = self;
  v99 = v18;
  v100 = v20;
  v101 = v22;
  v102 = v24;
  v104 = animatedCopy;
  v35 = completionCopy;
  v98 = v35;
  v105 = lensCopy;
  v36 = objc_retainBlock(v95);
  v92 = v22;
  v93 = v24;
  v94 = v20;
  if ([(ZWKeyboardContext *)self->_kbContext isKeyboardVisible])
  {
    zoomRepositionsForKeyboard = [(ZWKeyboardContext *)self->_kbContext zoomRepositionsForKeyboard];
  }

  else
  {
    zoomRepositionsForKeyboard = 0;
  }

  view = [v34 view];
  view2 = [v34 view];
  [view2 bounds];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  containerView4 = [(ZWRootViewController *)self containerView];
  [view convertRect:containerView4 toView:{v41, v43, v45, v47}];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];

  if (activeLensViewController == pipLensViewController)
  {
    UIRectInset();
    v50 = v59;
    v52 = v60;
    v54 = v61;
    v56 = v62;
  }

  v63 = CGPointZero.x;
  v64 = CGPointZero.y;
  if (((zoomRepositionsForKeyboard | !lensCopy) & 1) == 0)
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
    fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];

    if (v34 == fullscreenLensViewController)
    {
      [(ZWRootViewController *)self zoomPanOffset];
      v63 = v68 - MidX - v79;
      v64 = v69 - MidY - v80;
    }

    else
    {
      pipLensViewController2 = [(ZWRootViewController *)self pipLensViewController];

      if (v34 == pipLensViewController2)
      {
        [(ZWRootViewController *)self zoomFrame];
        v81 = CGRectGetMidX(v111);
        [(ZWRootViewController *)self zoomFrame];
        v63 = v68 - v81;
        v64 = v69 - CGRectGetMidY(v112);
      }

      else
      {
        dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];

        v64 = v90;
        v63 = CGPointZero.x;
        if (v34 == dockedLensViewController)
        {
          dockedLensViewController2 = [(ZWRootViewController *)self dockedLensViewController];
          v74 = dockedLensViewController2;
          v75 = v18;
          v76 = v94;
          v77 = v92;
          v78 = v93;
LABEL_29:
          [dockedLensViewController2 deltaForDockedZoomMovementToRect:{v75, v76, v77, v78, *&v90, *&v91}];
          v63 = v88;
          v64 = v89;
        }
      }
    }

LABEL_30:
    [(ZWRootViewController *)self _moveZoomItemWithController:v34 byDelta:animatedCopy animated:1 userInitiated:1 shouldUseFullDeltaForDockedMode:1 shouldPan:v63, v64, *&v90, *&v91];
    goto LABEL_31;
  }

  v65 = v94;
  if ((zoomRepositionsForKeyboard & 1) == 0)
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

      dockedLensViewController3 = [(ZWRootViewController *)self dockedLensViewController];

      if (v34 != dockedLensViewController3)
      {
        goto LABEL_30;
      }

      dockedLensViewController2 = [(ZWRootViewController *)self dockedLensViewController];
      v74 = dockedLensViewController2;
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

- (void)zoomInToPoint:(CGPoint)point withZoomFactor:(double)factor animated:(BOOL)animated
{
  animatedCopy = animated;
  y = point.y;
  x = point.x;
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];

  if (activeLensViewController == fullscreenLensViewController)
  {
    view = [(ZWRootViewController *)self view];
    [view frame];
    AX_CGRectGetCenter();
    v28 = v27;
    v30 = v29;

    [(ZWRootViewController *)self setZoomPanOffset:x - v28, y - v30];
    [(ZWRootViewController *)self setZoomFactorRespectingUserPreferredMaximumZoom:factor];
    v32 = v31;
    v33 = +[AXSettings sharedInstance];
    zoomCurrentLensEffect = [v33 zoomCurrentLensEffect];

    activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
    [(ZWRootViewController *)self zoomPanOffset];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = __62__ZWRootViewController_zoomInToPoint_withZoomFactor_animated___block_invoke;
    v54[3] = &unk_78D00;
    v54[4] = self;
    [activeLensViewController2 updateStandbyMode:0 zoomFactor:zoomCurrentLensEffect panOffset:animatedCopy lensEffect:v54 animated:v32 completion:{v36, v37}];

    [(ZWRootViewController *)self _updateZoomListeners];
    v38 = +[ZWCoalescedSettings sharedInstance];
    [v38 setZoomInStandby:0];

    containerView = [(ZWRootViewController *)self containerView];
    minimapView = [(ZWRootViewController *)self minimapView];
    [containerView bringSubviewToFront:minimapView];

    kbContext = [(ZWRootViewController *)self kbContext];
    [kbContext keyboardFrame];
    [(ZWRootViewController *)self _updateKeyboardFrame:?];
  }

  else
  {
    activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
    pipLensViewController = [(ZWRootViewController *)self pipLensViewController];

    if (activeLensViewController3 == pipLensViewController)
    {
      view2 = [(ZWRootViewController *)self view];
      [view2 zw_convertRectToScreenCoordinates:{x, y, 2.0, 2.0}];
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
      *&v52[9] = factor;
      v53 = animatedCopy;
      [(ZWRootViewController *)self _focusLensOnRect:0 panLensContent:1 recentreLens:0 animated:v52 completion:v44, v46, v48, v50];
    }

    else
    {
      activeLensViewController4 = [(ZWRootViewController *)self activeLensViewController];
      dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];

      if (activeLensViewController4 == dockedLensViewController)
      {
        [(ZWRootViewController *)self _physicalScreenPointForVirtualScreenPoint:x, y];
        v17 = v16;
        v19 = v18;
        dockedLensViewController2 = [(ZWRootViewController *)self dockedLensViewController];
        [dockedLensViewController2 moveDockedZoomToPhysicalScreenPoint:0 animated:{v17, v19}];

        v21 = +[AXSettings sharedInstance];
        zoomCurrentLensEffect2 = [v21 zoomCurrentLensEffect];

        activeLensViewController5 = [(ZWRootViewController *)self activeLensViewController];
        [(ZWRootViewController *)self zoomPanOffset];
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = __62__ZWRootViewController_zoomInToPoint_withZoomFactor_animated___block_invoke_4;
        v51[3] = &unk_78D00;
        v51[4] = self;
        [activeLensViewController5 updateStandbyMode:0 zoomFactor:zoomCurrentLensEffect2 panOffset:1 lensEffect:v51 animated:factor completion:{v24, v25}];
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

- (void)_initializeEventUIContext:(id *)context
{
  screen = [(ZWRootViewController *)self screen];
  [screen bounds];
  v7 = v6;
  v9 = v8;

  interfaceOrientation = [(ZWRootViewController *)self interfaceOrientation];
  cachedValuesSerialQueue = [(ZWRootViewController *)self cachedValuesSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __50__ZWRootViewController__initializeEventUIContext___block_invoke;
  block[3] = &unk_79068;
  block[6] = v7;
  block[7] = v9;
  block[8] = interfaceOrientation;
  block[4] = self;
  block[5] = context;
  dispatch_sync(cachedValuesSerialQueue, block);
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context != &ZWZoomItemObserverContextID)
  {
    goto LABEL_2;
  }

  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];

  if (activeLensViewController == objectCopy)
  {
    if (([pathCopy isEqualToString:@"view.center"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"lensZoomView.center") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"lensZoomView.bounds") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"zoomPanOffset") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"zoomFactor") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"zoomRegionFrame") & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"zoomRegionVisible"))
    {
      cachedValuesSerialQueue = [(ZWRootViewController *)self cachedValuesSerialQueue];
      v17 = cachedValuesSerialQueue;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = __71__ZWRootViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v25[3] = &unk_78D00;
      v25[4] = self;
      v18 = v25;
      goto LABEL_19;
    }

    if ([pathCopy isEqualToString:@"userIsInteractingWithLens"])
    {
      cachedValuesSerialQueue = [(ZWRootViewController *)self cachedValuesSerialQueue];
      v17 = cachedValuesSerialQueue;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = __71__ZWRootViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      v24[3] = &unk_78D00;
      v24[4] = self;
      v18 = v24;
      goto LABEL_19;
    }

    if ([pathCopy isEqualToString:@"inStandbyMode"])
    {
      cachedValuesSerialQueue = [(ZWRootViewController *)self cachedValuesSerialQueue];
      v17 = cachedValuesSerialQueue;
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
    slugViewController = [(ZWRootViewController *)self slugViewController];

    if (slugViewController == objectCopy)
    {
      if (([pathCopy isEqualToString:@"view.center"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"slugRingView.bounds"))
      {
        cachedValuesSerialQueue = [(ZWRootViewController *)self cachedValuesSerialQueue];
        v17 = cachedValuesSerialQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __71__ZWRootViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_4;
        block[3] = &unk_78D00;
        block[4] = self;
        v18 = block;
        goto LABEL_19;
      }

      if ([pathCopy isEqualToString:@"userIsInteractingWithSlug"])
      {
        cachedValuesSerialQueue = [(ZWRootViewController *)self cachedValuesSerialQueue];
        v17 = cachedValuesSerialQueue;
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
      menuViewController = [(ZWRootViewController *)self menuViewController];

      if (menuViewController == objectCopy && [pathCopy isEqualToString:@"userIsInteractingWithMenu"])
      {
        cachedValuesSerialQueue = [(ZWRootViewController *)self cachedValuesSerialQueue];
        v17 = cachedValuesSerialQueue;
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = __71__ZWRootViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_6;
        v20[3] = &unk_78D00;
        v20[4] = self;
        v18 = v20;
LABEL_19:
        dispatch_sync(cachedValuesSerialQueue, v18);

        goto LABEL_20;
      }
    }
  }

LABEL_2:
  v19.receiver = self;
  v19.super_class = ZWRootViewController;
  [(ZWRootViewController *)&v19 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
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
  view = [(ZWRootViewController *)self view];
  window = [view window];
  layer = [window layer];
  [layer setAllowsHitTesting:0];
}

- (void)_enableZoomWindowHitTesting
{
  view = [(ZWRootViewController *)self view];
  window = [view window];
  layer = [window layer];
  [layer setAllowsHitTesting:1];
}

- (void)_transitionToLensForMode:(id)mode animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  modeCopy = mode;
  completionCopy = completion;
  if ([modeCopy isEqualToString:AXZoomLensModeFullscreen])
  {
    fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];
LABEL_7:
    v10 = fullscreenLensViewController;
    goto LABEL_8;
  }

  if ([modeCopy isEqualToString:AXZoomLensModeWindow])
  {
    fullscreenLensViewController = [(ZWRootViewController *)self pipLensViewController];
    goto LABEL_7;
  }

  if ([modeCopy isEqualToString:AXZoomLensModeWindowAnchored])
  {
    fullscreenLensViewController = [(ZWRootViewController *)self dockedLensViewController];
    goto LABEL_7;
  }

  v17 = modeCopy;
  _AXAssert();
  v10 = 0;
LABEL_8:
  v11 = +[AXSettings sharedInstance];
  zoomPreferredCurrentLensMode = [v11 zoomPreferredCurrentLensMode];
  identifier = [v10 identifier];
  v14 = [zoomPreferredCurrentLensMode isEqualToString:identifier];

  if ((v14 & 1) == 0)
  {
    identifier2 = [v10 identifier];
    v16 = +[AXSettings sharedInstance];
    [v16 setZoomPreferredCurrentLensMode:identifier2];
  }

  [(ZWRootViewController *)self _transitionToLens:v10 animated:animatedCopy completion:completionCopy];
}

- (void)_transitionToLens:(id)lens animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  lensCopy = lens;
  completionCopy = completion;
  if (([(ZWRootViewController *)self isViewLoaded]& 1) != 0)
  {
    [(ZWRootViewController *)self _setPIPLensResizingEnabled:0];
    [(ZWRootViewController *)self _setDockResizingEnabled:0];
    if (![(ZWRootViewController *)self isActiveLensTransitioning])
    {
      [(ZWRootViewController *)self setActiveLensTransitioning:1];
      activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = __62__ZWRootViewController__transitionToLens_animated_completion___block_invoke;
      v54[3] = &unk_79018;
      v54[4] = self;
      v55 = completionCopy;
      v11 = objc_retainBlock(v54);
      pipLensViewController = [(ZWRootViewController *)self pipLensViewController];

      if (pipLensViewController != lensCopy)
      {
        [(ZWRootViewController *)self _removePIPSystemGestureDisablingAssertions];
      }

      fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];

      if (fullscreenLensViewController != lensCopy)
      {
        [(ZWRootViewController *)self _removeFullscreenSystemGestureDisablingAssertions];
      }

      view = [(ZWRootViewController *)self view];
      [view setUserInteractionEnabled:0];

      if (activeLensViewController == lensCopy)
      {
        (v11[2])(v11);
      }

      else
      {
        pipLensViewController2 = [(ZWRootViewController *)self pipLensViewController];

        if (activeLensViewController == pipLensViewController2)
        {
          [(ZWRootViewController *)self _removePIPSystemGestureDisablingAssertions];
        }

        fullscreenLensViewController2 = [(ZWRootViewController *)self fullscreenLensViewController];

        if (activeLensViewController == fullscreenLensViewController2)
        {
          [(ZWRootViewController *)self _removeFullscreenSystemGestureDisablingAssertions];
        }

        v17 = +[AXSettings sharedInstance];
        zoomCurrentLensEffect = [v17 zoomCurrentLensEffect];

        y = CGPointZero.y;
        [(ZWRootViewController *)self zoomFactor];
        [(ZWRootViewController *)self setZoomFactorRespectingUserPreferredMaximumZoom:?];
        v21 = v20;
        v22 = +[ZWCoalescedSettings sharedInstance];
        zoomInStandby = [v22 zoomInStandby];

        [(ZWRootViewController *)self setZoomPanOffset:CGPointZero.x, y];
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = __62__ZWRootViewController__transitionToLens_animated_completion___block_invoke_3;
        v44[3] = &unk_79400;
        v44[4] = self;
        v45 = lensCopy;
        v52 = zoomInStandby;
        v49 = v21;
        x = CGPointZero.x;
        v51 = y;
        v24 = zoomCurrentLensEffect;
        v46 = v24;
        v53 = animatedCopy;
        v25 = activeLensViewController;
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
          v43 = animatedCopy;
          v39 = v27;
          [v37 updateLensEffect:v28 animated:animatedCopy completion:v36];
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
    ignoreLogging = [v29 ignoreLogging];

    if ((ignoreLogging & 1) == 0)
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

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
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

- (void)_beginObservingValuesForLens:(id)lens
{
  lensCopy = lens;
  [lensCopy addObserver:self forKeyPath:@"lensZoomView.bounds" options:1 context:&ZWZoomItemObserverContextID];
  [lensCopy addObserver:self forKeyPath:@"view.center" options:1 context:&ZWZoomItemObserverContextID];
  [lensCopy addObserver:self forKeyPath:@"lensZoomView.center" options:1 context:&ZWZoomItemObserverContextID];
  [lensCopy addObserver:self forKeyPath:@"userIsInteractingWithLens" options:1 context:&ZWZoomItemObserverContextID];
  [lensCopy addObserver:self forKeyPath:@"inStandbyMode" options:1 context:&ZWZoomItemObserverContextID];
  [lensCopy addObserver:self forKeyPath:@"zoomPanOffset" options:1 context:&ZWZoomItemObserverContextID];
  [lensCopy addObserver:self forKeyPath:@"zoomFactor" options:1 context:&ZWZoomItemObserverContextID];
  dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];

  v5 = lensCopy;
  if (dockedLensViewController == lensCopy)
  {
    [lensCopy addObserver:self forKeyPath:@"zoomRegionFrame" options:1 context:&ZWZoomItemObserverContextID];
    [lensCopy addObserver:self forKeyPath:@"zoomRegionVisible" options:1 context:&ZWZoomItemObserverContextID];
    v5 = lensCopy;
  }
}

- (void)_endObservingValuesForLens:(id)lens
{
  lensCopy = lens;
  [lensCopy removeObserver:self forKeyPath:@"lensZoomView.bounds" context:&ZWZoomItemObserverContextID];
  [lensCopy removeObserver:self forKeyPath:@"view.center" context:&ZWZoomItemObserverContextID];
  [lensCopy removeObserver:self forKeyPath:@"lensZoomView.center" context:&ZWZoomItemObserverContextID];
  [lensCopy removeObserver:self forKeyPath:@"userIsInteractingWithLens" context:&ZWZoomItemObserverContextID];
  [lensCopy removeObserver:self forKeyPath:@"inStandbyMode" context:&ZWZoomItemObserverContextID];
  [lensCopy removeObserver:self forKeyPath:@"zoomPanOffset" context:&ZWZoomItemObserverContextID];
  [lensCopy removeObserver:self forKeyPath:@"zoomFactor" context:&ZWZoomItemObserverContextID];
  dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];

  v5 = lensCopy;
  if (dockedLensViewController == lensCopy)
  {
    [lensCopy removeObserver:self forKeyPath:@"zoomRegionFrame" context:&ZWZoomItemObserverContextID];
    [lensCopy removeObserver:self forKeyPath:@"zoomRegionVisible" context:&ZWZoomItemObserverContextID];
    v5 = lensCopy;
  }
}

- (void)_applyInitialConstraintsForLensViewController:(id)controller
{
  controllerCopy = controller;
  containerView = [(ZWRootViewController *)self containerView];
  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];

  view = [controllerCopy view];
  if (pipLensViewController == controllerCopy)
  {
    lensZoomView = [controllerCopy lensZoomView];
    lensChromeView = [controllerCopy lensChromeView];
    v15 = AXResistAllCompressingAndStretching[0];
    v16 = AXResistAllCompressingAndStretching[1];
    v17 = AXResistAllCompressingAndStretching[2];
    v18 = AXResistAllCompressingAndStretching[3];
    LODWORD(v19) = AXResistAllCompressingAndStretching[0];
    LODWORD(v20) = v16;
    LODWORD(v21) = v17;
    LODWORD(v22) = v18;
    [view ax_setContentHuggingAndCompressionResistance:{v19, v20, v21, v22}];
    LODWORD(v23) = v15;
    LODWORD(v24) = v16;
    LODWORD(v25) = v17;
    LODWORD(v26) = v18;
    [lensZoomView ax_setContentHuggingAndCompressionResistance:{v23, v24, v25, v26}];
    LODWORD(v27) = v15;
    LODWORD(v28) = v16;
    LODWORD(v29) = v17;
    LODWORD(v30) = v18;
    [lensChromeView ax_setContentHuggingAndCompressionResistance:{v27, v28, v29, v30}];
    v31 = [NSLayoutConstraint constraintWithItem:lensChromeView attribute:3 relatedBy:1 toItem:containerView attribute:3 multiplier:1.0 constant:0.0];
    [containerView addConstraint:v31];

    v32 = [NSLayoutConstraint constraintWithItem:lensChromeView attribute:4 relatedBy:-1 toItem:containerView attribute:4 multiplier:1.0 constant:0.0];
    [containerView addConstraint:v32];

    v33 = [NSLayoutConstraint constraintWithItem:lensChromeView attribute:1 relatedBy:1 toItem:containerView attribute:1 multiplier:1.0 constant:0.0];
    [containerView addConstraint:v33];

    v34 = [NSLayoutConstraint constraintWithItem:lensChromeView attribute:2 relatedBy:-1 toItem:containerView attribute:2 multiplier:1.0 constant:0.0];
    [containerView addConstraint:v34];

    v35 = [NSLayoutConstraint constraintWithItem:view attribute:1 relatedBy:0 toItem:containerView attribute:1 multiplier:1.0 constant:0.0];
    LODWORD(v36) = 1148780544;
    [v35 setPriority:v36];
    [(ZWRootViewController *)self setLensDragXConstraint:v35];
    [containerView addConstraint:v35];
    v37 = [NSLayoutConstraint constraintWithItem:view attribute:3 relatedBy:0 toItem:containerView attribute:3 multiplier:1.0 constant:0.0];

    LODWORD(v38) = 1148780544;
    [v37 setPriority:v38];
    [(ZWRootViewController *)self setLensDragYConstraint:v37];
    [containerView addConstraint:v37];
    lensWidthConstraint = [(ZWRootViewController *)self lensWidthConstraint];

    if (!lensWidthConstraint)
    {
      v40 = [NSLayoutConstraint constraintWithItem:lensZoomView attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
      [(ZWRootViewController *)self setLensWidthConstraint:v40];

      lensWidthConstraint2 = [(ZWRootViewController *)self lensWidthConstraint];
      [view addConstraint:lensWidthConstraint2];

      v42 = [NSLayoutConstraint constraintWithItem:lensZoomView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
      [(ZWRootViewController *)self setLensHeightConstraint:v42];

      lensHeightConstraint = [(ZWRootViewController *)self lensHeightConstraint];
      [view addConstraint:lensHeightConstraint];
    }

    [(ZWRootViewController *)self _updateLensLayout];
  }

  else
  {
    if (!view || !containerView)
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
      [view ax_setContentHuggingAndCompressionResistance:{v7, v8, v9, height}];
      v12 = [view ax_pinConstraintsInAllDimensionsToView:containerView];
    }
  }
}

- (void)setActiveLensViewController:(id)controller
{
  objc_storeStrong(&self->_activeLensViewController, controller);
  menuViewController = [(ZWRootViewController *)self menuViewController];
  [menuViewController lensModeDidChange];
}

- (void)_updateKeyboardFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  IsEmpty = CGRectIsEmpty(frame);
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
    view = [(ZWRootViewController *)self view];
    [view zw_convertRectFromScreenCoordinates:{x, y, width, height}];
  }

  [(ZWKeyboardContext *)self->_kbContext setKeyboardFrame:v11, v12, v13, v14];
  if (!v10)
  {
  }

  [(ZWKeyboardContext *)self->_kbContext setUserMovedKeyboardLens:0];
  v15 = +[AXSubsystemZoom sharedInstance];
  ignoreLogging = [v15 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
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

  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  if ([(ZWKeyboardContext *)self->_kbContext isKeyboardVisible]&& ![(ZWKeyboardContext *)self->_kbContext userMovedKeyboardLens])
  {
    if (([activeLensViewController inStandbyMode] & 1) == 0 && !-[ZWRootViewController _isZoomedToMinimum](self, "_isZoomedToMinimum"))
    {
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = __45__ZWRootViewController__updateKeyboardFrame___block_invoke;
      v33[3] = &unk_78D00;
      v33[4] = self;
      v25 = objc_retainBlock(v33);
      zoomRepositionsForKeyboard = [(ZWKeyboardContext *)self->_kbContext zoomRepositionsForKeyboard];
      pipLensViewController = [(ZWRootViewController *)self pipLensViewController];

      if (activeLensViewController == pipLensViewController)
      {
        if ([(ZWKeyboardContext *)self->_kbContext zoomRepositionsForKeyboard])
        {
          (v25[2])(v25);
        }
      }

      else if (zoomRepositionsForKeyboard)
      {
        pipLensViewController2 = [(ZWRootViewController *)self pipLensViewController];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = __45__ZWRootViewController__updateKeyboardFrame___block_invoke_2;
        v31[3] = &unk_78D50;
        v32 = v25;
        [(ZWRootViewController *)self _transitionToLens:pipLensViewController2 animated:0 completion:v31];
      }
    }
  }

  else
  {
    v23 = +[AXSettings sharedInstance];
    zoomPreferredCurrentLensMode = [v23 zoomPreferredCurrentLensMode];

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = __45__ZWRootViewController__updateKeyboardFrame___block_invoke_3;
    v30[3] = &unk_78D00;
    v30[4] = self;
    [(ZWRootViewController *)self _transitionToLensForMode:zoomPreferredCurrentLensMode animated:1 completion:v30];
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
  lensDragXConstraint = [(ZWRootViewController *)self lensDragXConstraint];
  [lensDragXConstraint setConstant:v4];

  lensDragYConstraint = [(ZWRootViewController *)self lensDragYConstraint];
  [lensDragYConstraint setConstant:v6];

  lensWidthConstraint = [(ZWRootViewController *)self lensWidthConstraint];
  [lensWidthConstraint setConstant:v8];

  lensHeightConstraint = [(ZWRootViewController *)self lensHeightConstraint];
  [lensHeightConstraint setConstant:v10];
}

- (CGRect)_determineSuitableLensFrame
{
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];

  if (activeLensViewController == fullscreenLensViewController)
  {
    containerView = [(ZWRootViewController *)self containerView];
    [containerView bounds];
    v17 = v34;
    v19 = v35;
    v21 = v36;
    v23 = v37;

    v24 = 0.0;
  }

  else if ([(ZWKeyboardContext *)self->_kbContext isKeyboardVisible]&& ![(ZWKeyboardContext *)self->_kbContext userMovedKeyboardLens]&& [(ZWKeyboardContext *)self->_kbContext zoomRepositionsForKeyboard])
  {
    [(ZWKeyboardContext *)self->_kbContext keyboardFrame];
    containerView2 = [(ZWRootViewController *)self containerView];
    [containerView2 frame];
    AX_CGRectBySubtractingRect();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    view = [activeLensViewController view];
    lensZoomView = [activeLensViewController lensZoomView];
    [view convertRect:lensZoomView toView:{v7, v9, v11, v13}];
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

  containerView3 = [(ZWRootViewController *)self containerView];
  [containerView3 bounds];
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

  containerView4 = [(ZWRootViewController *)self containerView];
  [containerView4 bounds];
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
  zoomPreferredCurrentLensMode = [v3 zoomPreferredCurrentLensMode];

  if ([zoomPreferredCurrentLensMode isEqualToString:AXZoomLensModeWindowAnchored])
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
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];

  v5 = 90.0;
  v6 = 90.0;
  if (activeLensViewController == dockedLensViewController)
  {
    dockedLensViewController2 = [(ZWRootViewController *)self dockedLensViewController];
    if ([dockedLensViewController2 dockPosition])
    {
      dockedLensViewController3 = [(ZWRootViewController *)self dockedLensViewController];
      dockPosition = [dockedLensViewController3 dockPosition];

      if (dockPosition != &dword_0 + 3)
      {
        dockedLensViewController4 = [(ZWRootViewController *)self dockedLensViewController];
        view = [dockedLensViewController4 view];
        [view bounds];
        v5 = v12 * 0.1;
        dockedLensViewController5 = [(ZWRootViewController *)self dockedLensViewController];
        view2 = [dockedLensViewController5 view];
        [view2 bounds];
        v6 = v15;
LABEL_7:

        goto LABEL_8;
      }
    }

    else
    {
    }

    dockedLensViewController4 = [(ZWRootViewController *)self dockedLensViewController];
    view = [dockedLensViewController4 view];
    [view bounds];
    v5 = v16;
    dockedLensViewController5 = [(ZWRootViewController *)self dockedLensViewController];
    view2 = [dockedLensViewController5 view];
    [view2 bounds];
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
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];

  if (activeLensViewController == dockedLensViewController)
  {
    dockedLensViewController2 = [(ZWRootViewController *)self dockedLensViewController];
    if ([dockedLensViewController2 dockPosition])
    {
      dockedLensViewController3 = [(ZWRootViewController *)self dockedLensViewController];
      dockPosition = [dockedLensViewController3 dockPosition];

      if (dockPosition != &dword_0 + 3)
      {
        dockedLensViewController4 = [(ZWRootViewController *)self dockedLensViewController];
        view = [dockedLensViewController4 view];
        [view bounds];
        v13 = v12 * 0.5;
        dockedLensViewController5 = [(ZWRootViewController *)self dockedLensViewController];
        view2 = [dockedLensViewController5 view];
        [view2 bounds];
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

    dockedLensViewController4 = [(ZWRootViewController *)self dockedLensViewController];
    view = [dockedLensViewController4 view];
    [view bounds];
    v13 = v18;
    dockedLensViewController5 = [(ZWRootViewController *)self dockedLensViewController];
    view2 = [dockedLensViewController5 view];
    [view2 bounds];
    v17 = v19 * 0.5;
    goto LABEL_10;
  }

  [(ZWRootViewController *)self _screenSizeForCurrentOrientation];
LABEL_11:
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGPoint)_slugOriginForNormalizedPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  view = [(ZWRootViewController *)self view];
  [view bounds];
  v8 = v7;
  v10 = v9;

  slugViewController = [(ZWRootViewController *)self slugViewController];
  view2 = [slugViewController view];
  [view2 bounds];
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
  view = [(ZWRootViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  slugViewController = [(ZWRootViewController *)self slugViewController];
  view2 = [slugViewController view];
  [view2 frame];
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

- (void)_updateSlugLayoutAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewIfLoaded = [(ZWRootViewController *)self viewIfLoaded];

  if (viewIfLoaded)
  {
    containerView = [(ZWRootViewController *)self containerView];
    slugViewController = [(ZWRootViewController *)self slugViewController];
    view = [slugViewController view];

    v9 = +[AXSettings sharedInstance];
    if ([v9 zoomShouldShowSlug])
    {
      v10 = [(ZWRootViewController *)self isMainDisplay]^ 1;
    }

    else
    {
      v10 = 1;
    }

    [view setHidden:v10];

    slugRingDragXConstraint = [(ZWRootViewController *)self slugRingDragXConstraint];

    if (!slugRingDragXConstraint)
    {
      v12 = [NSLayoutConstraint constraintWithItem:view attribute:1 relatedBy:0 toItem:containerView attribute:1 multiplier:1.0 constant:0.0];
      LODWORD(v13) = 1148780544;
      [v12 setPriority:v13];
      [(ZWRootViewController *)self setSlugRingDragXConstraint:v12];
      [containerView addConstraint:v12];
      v14 = [NSLayoutConstraint constraintWithItem:view attribute:3 relatedBy:0 toItem:containerView attribute:3 multiplier:1.0 constant:0.0];

      LODWORD(v15) = 1148780544;
      [v14 setPriority:v15];
      [(ZWRootViewController *)self setSlugRingDragYConstraint:v14];
      [containerView addConstraint:v14];
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
        [view bounds];
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

    slugRingDragXConstraint2 = [(ZWRootViewController *)self slugRingDragXConstraint];
    [slugRingDragXConstraint2 setConstant:v22];

    slugRingDragYConstraint = [(ZWRootViewController *)self slugRingDragYConstraint];
    [slugRingDragYConstraint setConstant:v24];

    v29 = 0.3;
    if (!animatedCopy)
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

- (void)_updateZoomFactor:(double)factor animated:(BOOL)animated
{
  animatedCopy = animated;
  [(ZWRootViewController *)self setZoomFactor:?];
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  [(ZWRootViewController *)self zoomPanOffset];
  v9 = v8;
  v11 = v10;
  v12 = +[AXSettings sharedInstance];
  zoomCurrentLensEffect = [v12 zoomCurrentLensEffect];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __51__ZWRootViewController__updateZoomFactor_animated___block_invoke;
  v14[3] = &unk_78D00;
  v14[4] = self;
  [activeLensViewController updateStandbyMode:0 zoomFactor:zoomCurrentLensEffect panOffset:animatedCopy lensEffect:v14 animated:factor completion:{v9, v11}];
}

- (void)zoomLensViewControllerDidChangeStandbyMode:(id)mode
{
  modeCopy = mode;
  slugViewController = [(ZWRootViewController *)self slugViewController];
  +[ZWZoomSlugViewController longPressDurationForStandByMode:](ZWZoomSlugViewController, "longPressDurationForStandByMode:", [modeCopy inStandbyMode]);
  [slugViewController updateLongPressDuration:?];

  [(ZWRootViewController *)self _setPIPLensResizingEnabled:0];
  [(ZWRootViewController *)self _setDockResizingEnabled:0];
  [(ZWRootViewController *)self stopZoomMovementWithVelocityWithFullscreenEventHandler:0];
  [(ZWRootViewController *)self currentUIContextForEventProcessor:0];
  if (!CGRectIsNull(v15))
  {
    menuViewController = [(ZWRootViewController *)self menuViewController];
    [menuViewController standbyModeDidChange];
  }

  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  v8 = activeLensViewController;
  if (activeLensViewController == modeCopy)
  {
    activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
    pipLensViewController = [(ZWRootViewController *)self pipLensViewController];

    if (activeLensViewController2 == pipLensViewController)
    {
      if ([modeCopy inStandbyMode])
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

  activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
  v12 = activeLensViewController3;
  if (activeLensViewController3 == modeCopy)
  {
    activeLensViewController4 = [(ZWRootViewController *)self activeLensViewController];
    fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];

    if (activeLensViewController4 == fullscreenLensViewController)
    {
      if ([modeCopy inStandbyMode])
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

- (void)zoomLensViewControllerUpdateUIForStandby:(id)standby completion:(id)completion
{
  completionCopy = completion;
  standbyCopy = standby;
  dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];

  if (dockedLensViewController == standbyCopy)
  {
    activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
    dockedLensViewController2 = [(ZWRootViewController *)self dockedLensViewController];

    if (activeLensViewController == dockedLensViewController2)
    {
      dockedLensViewController3 = [(ZWRootViewController *)self dockedLensViewController];
      [dockedLensViewController3 showOrHideUIForStandbyModeWithCompletion:completionCopy];

      goto LABEL_7;
    }
  }

  else
  {
  }

  if (completionCopy)
  {
    completionCopy[2]();
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
  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];
  view = [pipLensViewController view];
  [view frame];
  v5 = v4;

  return v5 < 30.0;
}

- (BOOL)_pipLensIsNearRightOfScreen
{
  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];
  view = [pipLensViewController view];
  [view frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  view2 = [(ZWRootViewController *)self view];
  [view2 bounds];
  v15 = v14;

  v17.origin.x = v6;
  v17.origin.y = v8;
  v17.size.width = v10;
  v17.size.height = v12;
  return v15 - CGRectGetMaxX(v17) < 30.0;
}

- (BOOL)_pipLensIsNearBottomOfScreen
{
  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];
  view = [pipLensViewController view];
  [view frame];
  v6 = v5;
  v8 = v7;

  view2 = [(ZWRootViewController *)self view];
  [view2 bounds];
  v11 = v10;

  return vabdd_f64(v6 + v8, v11) < 30.0;
}

- (void)_resizeZoomLensByDelta:(CGPoint)delta
{
  y = delta.y;
  x = delta.x;
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];
  if (activeLensViewController == pipLensViewController)
  {
  }

  else
  {
    dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];

    if (!dockedLensViewController)
    {
      _AXAssert();
    }
  }

  activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
  pipLensViewController2 = [(ZWRootViewController *)self pipLensViewController];

  if (activeLensViewController2 != pipLensViewController2)
  {
    activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
    dockedLensViewController2 = [(ZWRootViewController *)self dockedLensViewController];

    if (activeLensViewController3 != dockedLensViewController2)
    {
LABEL_7:
      v12 = x;
      v13 = y;
LABEL_8:
      [(ZWRootViewController *)self _resizeZoomLensWithAdjustment:v12 lensPositionCompensation:v13, x, y];
      goto LABEL_9;
    }

    dockedLensViewController3 = [(ZWRootViewController *)self dockedLensViewController];
    dockPosition = [dockedLensViewController3 dockPosition];

    if (dockPosition <= 1)
    {
      if (dockPosition)
      {
        if (dockPosition != &dword_0 + 1)
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

    if (dockPosition != &dword_0 + 2)
    {
      if (dockPosition != &dword_0 + 3)
      {
        goto LABEL_7;
      }

      goto LABEL_33;
    }

    goto LABEL_30;
  }

  activeResizeHandle = [activeLensViewController activeResizeHandle];
  if (activeResizeHandle > 4)
  {
    if (activeResizeHandle <= 6)
    {
      if (activeResizeHandle == (&dword_4 + 1))
      {
        v12 = x;
        x = CGPointZero.x;
        y = CGPointZero.y;
        v13 = 0.0;
        goto LABEL_8;
      }

      goto LABEL_36;
    }

    if (activeResizeHandle == (&dword_4 + 3))
    {
LABEL_29:
      v13 = y;
      x = CGPointZero.x;
      y = CGPointZero.y;
      v12 = 0.0;
      goto LABEL_8;
    }

    if (activeResizeHandle == &dword_8)
    {
      v12 = -x;
      v13 = y;
      goto LABEL_39;
    }

    if (activeResizeHandle == (&dword_8 + 1))
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
    if (activeResizeHandle > 2)
    {
      if (activeResizeHandle != (&dword_0 + 3))
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

    if (activeResizeHandle < 2)
    {
      goto LABEL_7;
    }

    if (activeResizeHandle == (&dword_0 + 2))
    {
      v12 = -x;
      v13 = -y;
      goto LABEL_8;
    }
  }

  v17 = [NSNumber numberWithInteger:activeResizeHandle];
  _AXAssert();

LABEL_9:
}

- (void)_resizeZoomLensWithAdjustment:(CGPoint)adjustment lensPositionCompensation:(CGPoint)compensation
{
  y = compensation.y;
  x = compensation.x;
  v5 = adjustment.y;
  v6 = adjustment.x;
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];
  if (activeLensViewController == pipLensViewController)
  {
  }

  else
  {
    dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];

    if (!dockedLensViewController)
    {
      _AXAssert();
    }
  }

  lensZoomView = [activeLensViewController lensZoomView];
  [lensZoomView bounds];
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
  activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
  dockedLensViewController2 = [(ZWRootViewController *)self dockedLensViewController];

  if (activeLensViewController2 == dockedLensViewController2)
  {
    v49 = v30;
    [(ZWRootViewController *)self zoomFrame];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v69 = v56;
    dockedLensViewController3 = [(ZWRootViewController *)self dockedLensViewController];
    [dockedLensViewController3 resizeDock:0 animated:{v24, v26}];

    [(ZWRootViewController *)self zoomFrame];
    v59 = v58;
    [(ZWRootViewController *)self zoomFrame];
    v61 = v60;
    dockedLensViewController4 = [(ZWRootViewController *)self dockedLensViewController];
    dockPosition = [dockedLensViewController4 dockPosition];

    if (dockPosition == &dword_0 + 2)
    {
      v51 = v51 + v55 - v59;
    }

    else
    {
      dockedLensViewController5 = [(ZWRootViewController *)self dockedLensViewController];
      dockPosition2 = [dockedLensViewController5 dockPosition];

      if (dockPosition2 == &dword_0 + 3)
      {
        v53 = v53 + v69 - v61;
      }
    }

    [activeLensViewController updateZoomFactor:0 panOffset:0 animated:v28 animationDuration:v49 completion:{v32, -1.0}];
    view = [(ZWRootViewController *)self view];
    [view zw_convertRectToScreenCoordinates:{v51, v53, v59, v61}];
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

    lensWidthConstraint = [(ZWRootViewController *)self lensWidthConstraint];
    [lensWidthConstraint setConstant:v24];

    lensHeightConstraint = [(ZWRootViewController *)self lensHeightConstraint];
    [lensHeightConstraint setConstant:v26];

    [activeLensViewController updateZoomFactor:0 panOffset:0 animated:v28 animationDuration:v30 completion:{v32, -1.0}];
    [(ZWRootViewController *)self _moveZoomItemWithController:activeLensViewController byDelta:0 animated:1 userInitiated:0 shouldUseFullDeltaForDockedMode:0 shouldPan:v40, v67];
  }
}

- (void)_moveZoomItemWithControllerToDodgeJindo:(id)jindo byDelta:(CGPoint)delta
{
  y = delta.y;
  x = delta.x;
  jindoCopy = jindo;
  v8 = jindoCopy;
  if (y >= 0.0)
  {
    view = [jindoCopy view];
    [view frame];
    v11 = x + v10;
    slugRingDragXConstraint = [(ZWRootViewController *)self slugRingDragXConstraint];
    [slugRingDragXConstraint setConstant:v11];

    [view frame];
    v14 = y + v13;
    slugRingDragYConstraint = [(ZWRootViewController *)self slugRingDragYConstraint];
    [slugRingDragYConstraint setConstant:v14];

    [view setNeedsLayout];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __72__ZWRootViewController__moveZoomItemWithControllerToDodgeJindo_byDelta___block_invoke;
    v19[3] = &unk_78D28;
    v20 = view;
    v21 = x;
    v22 = y;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __72__ZWRootViewController__moveZoomItemWithControllerToDodgeJindo_byDelta___block_invoke_2;
    v17[3] = &unk_79478;
    v17[4] = self;
    v18 = v8;
    v16 = view;
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

- (void)_moveZoomItemWithController:(id)controller byDelta:(CGPoint)delta animated:(BOOL)animated userInitiated:(BOOL)initiated shouldUseFullDeltaForDockedMode:(BOOL)mode shouldPan:(BOOL)pan
{
  panCopy = pan;
  modeCopy = mode;
  animatedCopy = animated;
  y = delta.y;
  x = delta.x;
  controllerCopy = controller;
  view = [controllerCopy view];
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];

  v78 = activeLensViewController == controllerCopy;
  if (activeLensViewController != controllerCopy)
  {
    v16 = view;
    slugRingDragXConstraint = [(ZWRootViewController *)self slugRingDragXConstraint];
    slugRingDragYConstraint = [(ZWRootViewController *)self slugRingDragYConstraint];
    LOBYTE(v19) = 0;
    goto LABEL_29;
  }

  if ([(ZWKeyboardContext *)self->_kbContext isKeyboardVisible])
  {
    [(ZWKeyboardContext *)self->_kbContext setUserMovedKeyboardLens:1];
  }

  activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];
  if (activeLensViewController2 == pipLensViewController)
  {
    pipLensEdgeMask = [(ZWRootViewController *)self pipLensEdgeMask];
  }

  else
  {
    pipLensEdgeMask = 15;
  }

  [(ZWRootViewController *)self zoomPanOffset];
  if (!panCopy)
  {
    goto LABEL_17;
  }

  v25 = v23;
  v26 = v24;
  activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
  panCopy = [activeLensViewController3 shouldPanZoomContentForAxis:2 delta:pipLensEdgeMask edgeMask:{x, y}];

  if (panCopy)
  {
    activeLensViewController4 = [(ZWRootViewController *)self activeLensViewController];
    [(ZWRootViewController *)self zoomFactor];
    [activeLensViewController4 offsetByPanningWithDelta:2 axis:x zoomFactor:{y, v29}];
    v31 = v30;

    activeLensViewController5 = [(ZWRootViewController *)self activeLensViewController];
    [(ZWRootViewController *)self zoomFactor];
    [activeLensViewController5 offsetIgnoringValidOffsetConstraintsByPanningWithDelta:2 axis:x zoomFacotr:{y, v33}];
    v25 = v34;
  }

  else
  {
    v31 = v25;
  }

  activeLensViewController6 = [(ZWRootViewController *)self activeLensViewController];
  v19 = [activeLensViewController6 shouldPanZoomContentForAxis:4 delta:pipLensEdgeMask edgeMask:{x, y}];

  if (!v19)
  {
    if (panCopy)
    {
      LOBYTE(panCopy) = 1;
      v42 = v26;
      goto LABEL_16;
    }

LABEL_17:
    LOBYTE(v19) = 0;
    goto LABEL_18;
  }

  activeLensViewController7 = [(ZWRootViewController *)self activeLensViewController];
  [(ZWRootViewController *)self zoomFactor];
  [activeLensViewController7 offsetByPanningWithDelta:4 axis:x zoomFactor:{y, v37}];
  v26 = v38;

  activeLensViewController8 = [(ZWRootViewController *)self activeLensViewController];
  [(ZWRootViewController *)self zoomFactor];
  [activeLensViewController8 offsetIgnoringValidOffsetConstraintsByPanningWithDelta:4 axis:x zoomFacotr:{y, v40}];
  v42 = v41;

LABEL_16:
  activeLensViewController9 = [(ZWRootViewController *)self activeLensViewController];
  [activeLensViewController9 handleAdditionalPanOffsetFromOriginalOffset:modeCopy validOffset:v25 useFullDelta:{v42, v31, v26}];

  [(ZWRootViewController *)self setZoomPanOffset:v31, v26];
  activeLensViewController10 = [(ZWRootViewController *)self activeLensViewController];
  [(ZWRootViewController *)self zoomFactor];
  [activeLensViewController10 updateZoomFactor:animatedCopy panOffset:0 animated:? animationDuration:? completion:?];

LABEL_18:
  slugRingDragXConstraint = [(ZWRootViewController *)self lensDragXConstraint];
  slugRingDragYConstraint = [(ZWRootViewController *)self lensDragYConstraint];
  if (![(ZWKeyboardContext *)self->_kbContext isKeyboardVisible]|| [(ZWKeyboardContext *)self->_kbContext userMovedKeyboardLens])
  {
    if (panCopy)
    {
      goto LABEL_21;
    }

LABEL_28:
    v16 = view;
LABEL_29:
    [slugRingDragXConstraint constant];
    [slugRingDragXConstraint setConstant:x + v68];
    v46 = 1;
    if (v19)
    {
      v45 = 0;
      goto LABEL_32;
    }

LABEL_31:
    [slugRingDragYConstraint constant];
    [slugRingDragYConstraint setConstant:y + v69];
    v45 = 1;
    goto LABEL_32;
  }

  v47 = panCopy;
  v48 = +[AXSettings sharedInstance];
  zoomPreferredCurrentLensMode = [v48 zoomPreferredCurrentLensMode];
  v50 = [zoomPreferredCurrentLensMode isEqual:AXZoomLensModeWindow];

  if (v50)
  {
    v51 = +[ZWCoalescedSettings sharedInstance];
    [v51 zoomWindowFrame];
    v53 = v52;
    v55 = v54;

    lensWidthConstraint = [(ZWRootViewController *)self lensWidthConstraint];
    [lensWidthConstraint setConstant:v53];

    lensHeightConstraint = [(ZWRootViewController *)self lensHeightConstraint];
    [lensHeightConstraint setConstant:v55];

    activeLensViewController11 = [(ZWRootViewController *)self activeLensViewController];
    view2 = [activeLensViewController11 view];
    [view2 frame];
    v61 = (v60 - v53) * 0.5;
    [slugRingDragXConstraint constant];
    [slugRingDragXConstraint setConstant:v62 + v61];

    activeLensViewController12 = [(ZWRootViewController *)self activeLensViewController];
    view3 = [activeLensViewController12 view];
    [view3 frame];
    v66 = v65 - v55;
    [slugRingDragYConstraint constant];
    [slugRingDragYConstraint setConstant:v67 + v66];

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
  v16 = view;
  v45 = 0;
  if ((v19 & 1) == 0)
  {
    v46 = 0;
    goto LABEL_31;
  }

  v78 = 1;
  v46 = 0;
LABEL_32:
  pipLensViewController2 = [(ZWRootViewController *)self pipLensViewController];
  lensChromeView = [pipLensViewController2 lensChromeView];
  [lensChromeView updateCornerRadii];

  activeLensViewController13 = [(ZWRootViewController *)self activeLensViewController];
  lensZoomView = [activeLensViewController13 lensZoomView];
  [lensZoomView updateCornerRadii];

  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = __125__ZWRootViewController__moveZoomItemWithController_byDelta_animated_userInitiated_shouldUseFullDeltaForDockedMode_shouldPan___block_invoke;
  v86[3] = &unk_78EE8;
  v74 = controllerCopy;
  v87 = v74;
  selfCopy = self;
  initiatedCopy = initiated;
  v75 = objc_retainBlock(v86);
  v76 = v75;
  if ((v45 & 1) != 0 || v46)
  {
    [v16 setNeedsLayout];
    if (animatedCopy)
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

- (void)_updateLensEdgeMaskForZoomController:(id)controller
{
  controllerCopy = controller;
  containerView = [(ZWRootViewController *)self containerView];
  [containerView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];

  if (pipLensViewController == controllerCopy)
  {
    lensChromeView = [controllerCopy lensChromeView];
    [lensChromeView bounds];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    containerView2 = [(ZWRootViewController *)self containerView];
    view2 = containerView2;
    v26 = v32;
    v27 = v34;
    v28 = v36;
    v29 = v38;
    v30 = lensChromeView;
  }

  else
  {
    view = [controllerCopy view];
    [view bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    lensChromeView = [(ZWRootViewController *)self containerView];
    view2 = [controllerCopy view];
    containerView2 = lensChromeView;
    v26 = v16;
    v27 = v18;
    v28 = v20;
    v29 = v22;
    v30 = view2;
  }

  [containerView2 convertRect:v30 fromView:{v26, v27, v28, v29}];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v47 = vabdd_f64(v42, v12 - v46);
  v48 = (vabdd_f64(v42, v8) < 1.0) | (8 * (vabdd_f64(v40, v6) < 1.0)) | (2 * (vabdd_f64(v40, v10 - v44) < 1.0)) | (4 * (v47 < 1.0));
  pipLensViewController2 = [(ZWRootViewController *)self pipLensViewController];

  if (pipLensViewController2 == controllerCopy)
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
    activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
    v6 = activeLensViewController;
    if (v4 >= 0.5 && ([activeLensViewController inStandbyMode] & 1) == 0)
    {
      activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
      fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];

      if (activeLensViewController2 == fullscreenLensViewController)
      {
        [(ZWRootViewController *)self setZoomWasUnzoomedDueToAppTransition:1];
        [(ZWRootViewController *)self setZoomIsAnimatingDueToTransition:1];
        [(ZWRootViewController *)self zoomPanOffset];
        [(ZWRootViewController *)self setPanOffsetXBeforeTransition:?];
        activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = __57__ZWRootViewController__unzoomDueToAppTransitionIfNeeded__block_invoke;
        v10[3] = &unk_78D00;
        v10[4] = self;
        [activeLensViewController3 updateStandbyMode:1 zoomFactor:AXZoomLensEffectNone panOffset:1 lensEffect:v10 animated:AXZoomMinimumZoomLevel completion:{CGPointZero.x, CGPointZero.y}];
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
    activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
    fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];

    if (activeLensViewController == fullscreenLensViewController)
    {
      fullscreenLensViewController2 = [(ZWRootViewController *)self fullscreenLensViewController];
      [fullscreenLensViewController2 maximumPanOffsetWithZoomFactor:v8];
      v13 = v12;

      v6 = -v13;
      v4 = 0.0;
      [(ZWRootViewController *)self setZoomPanOffset:0.0, v6];
    }

    v14 = +[AXSettings sharedInstance];
    zoomCurrentLensEffect = [v14 zoomCurrentLensEffect];

    activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
    [activeLensViewController2 updateStandbyMode:0 zoomFactor:zoomCurrentLensEffect panOffset:1 lensEffect:0 animated:v8 completion:{v4, v6}];
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
      isDockVisible = [v3 isDockVisible];

      if (isDockVisible)
      {
        if ([(ZWRootViewController *)self zoomWasUnzoomedDueToAppTransition])
        {
          [(ZWRootViewController *)self setZoomWasUnzoomedDueToAppTransition:0];
          [(ZWRootViewController *)self zoomPanOffset];
          v6 = v5;
          v8 = v7;
          [(ZWRootViewController *)self zoomFactor];
          v10 = v9;
          activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
          fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];

          if (activeLensViewController == fullscreenLensViewController)
          {
            fullscreenLensViewController2 = [(ZWRootViewController *)self fullscreenLensViewController];
            [fullscreenLensViewController2 maximumPanOffsetWithZoomFactor:v10];
            v8 = v14;

            [(ZWRootViewController *)self panOffsetXBeforeTransition];
            v6 = v15;
            [(ZWRootViewController *)self setZoomPanOffset:?];
          }

          v16 = +[AXSettings sharedInstance];
          zoomCurrentLensEffect = [v16 zoomCurrentLensEffect];

          activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
          [activeLensViewController2 updateStandbyMode:0 zoomFactor:zoomCurrentLensEffect panOffset:1 lensEffect:0 animated:v10 completion:{v6, v8}];
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
    activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
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
    if ([activeLensViewController inStandbyMode])
    {
      smartZoom = [(ZWRootViewController *)self smartZoom];
      isEnabled = [smartZoom isEnabled];

      if (isEnabled)
      {
        smartZoom2 = [(ZWRootViewController *)self smartZoom];
        [smartZoom2 focusRect];
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
          containerView = [(ZWRootViewController *)self containerView];
          [containerView zw_convertRectFromScreenCoordinates:{v16, v18, v20, v22}];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;

          [activeLensViewController offsetByPanningToRect:v25 zoomFactor:{v27, v29, v31, v5}];
          v9 = v32;
          v11 = v33;
        }
      }
    }

    v34 = +[AXSettings sharedInstance];
    zoomCurrentLensEffect = [v34 zoomCurrentLensEffect];

    [(ZWRootViewController *)self _updateLensLayout];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = __42__ZWRootViewController__toggleZoomStandby__block_invoke;
    v36[3] = &unk_78D00;
    v36[4] = self;
    [activeLensViewController updateStandbyMode:objc_msgSend(activeLensViewController zoomFactor:"inStandbyMode") ^ 1 panOffset:zoomCurrentLensEffect lensEffect:1 animated:v36 completion:{v5, v9, v11}];
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

- (void)_setPIPLensResizingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  touchTrapView = [(ZWRootViewController *)self touchTrapView];
  [touchTrapView setEnabled:enabledCopy];

  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];
  [pipLensViewController setInLensResizingMode:enabledCopy];

  cachedValuesSerialQueue = [(ZWRootViewController *)self cachedValuesSerialQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __51__ZWRootViewController__setPIPLensResizingEnabled___block_invoke;
  v8[3] = &unk_78BD0;
  v8[4] = self;
  v9 = enabledCopy;
  dispatch_sync(cachedValuesSerialQueue, v8);
}

- (void)_setDockResizingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  touchTrapView = [(ZWRootViewController *)self touchTrapView];
  [touchTrapView setEnabled:enabledCopy];

  dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];
  [dockedLensViewController setInDockResizingMode:enabledCopy];

  cachedValuesSerialQueue = [(ZWRootViewController *)self cachedValuesSerialQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __48__ZWRootViewController__setDockResizingEnabled___block_invoke;
  v8[3] = &unk_78BD0;
  v8[4] = self;
  v9 = enabledCopy;
  dispatch_sync(cachedValuesSerialQueue, v8);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v8 = ZOOMLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    view = [(ZWRootViewController *)self view];
    [view bounds];
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

  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];

  v16 = activeLensViewController == fullscreenLensViewController;
  if (activeLensViewController == fullscreenLensViewController)
  {
    [UIView setAnimationsEnabled:0];
  }

  slugViewController = [(ZWRootViewController *)self slugViewController];
  view2 = [slugViewController view];
  [view2 alpha];
  v20 = v19;

  slugViewController2 = [(ZWRootViewController *)self slugViewController];
  view3 = [slugViewController2 view];
  [view3 setAlpha:0.0];

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
  [coordinatorCopy animateAlongsideTransition:v47 completion:v45];

  activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];

  if (activeLensViewController2 == pipLensViewController)
  {
    v43 = width;
    v44 = height;
    activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
    view4 = [activeLensViewController3 view];
    [view4 frame];

    UIRectInset();
    x = v54.origin.x;
    y = v54.origin.y;
    v29 = v54.size.width;
    v30 = v54.size.height;
    MinX = CGRectGetMinX(v54);
    view5 = [(ZWRootViewController *)self view];
    [view5 frame];
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
    view6 = [(ZWRootViewController *)self view];
    [view6 frame];
    v39 = v38;
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = v29;
    v57.size.height = v30;
    v40 = v39 - CGRectGetMaxY(v57);

    if (MinX + v35 > 0.5)
    {
      lensDragXConstraint = [(ZWRootViewController *)self lensDragXConstraint];
      [lensDragXConstraint setConstant:MinX * (v43 - v29) / (MinX + v35) + -18.0];
    }

    if (MinY + v40 > 0.5)
    {
      lensDragYConstraint = [(ZWRootViewController *)self lensDragYConstraint];
      [lensDragYConstraint setConstant:(v44 - v30) * MinY / (MinY + v40) + -18.0];
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

- (void)setTestingScreenSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  ZWSetTestingScreenSize(size.width, size.height);
  if (width == CGSizeZero.width && height == CGSizeZero.height)
  {
    v7 = +[UIScreen mainScreen];
    [v7 bounds];
    width = v8;
    height = v9;
  }

  containerView = [(ZWRootViewController *)self containerView];
  [containerView setFrame:{0.0, 0.0, width, height}];

  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  [(ZWRootViewController *)self _applyInitialConstraintsForLensViewController:activeLensViewController];
}

- (CGSize)_screenSizeForCurrentOrientation
{
  if (!self->_inUnitTestingMode || (ZWGetTestingScreenSize() == CGSizeZero.width ? (v4 = v3 == CGSizeZero.height) : (v4 = 0), v4))
  {
    screen = [(ZWRootViewController *)self screen];
    [screen bounds];
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

- (CGPoint)_denormalizePointForCurrentOrientation:(CGPoint)orientation
{
  y = orientation.y;
  x = orientation.x;
  [(ZWRootViewController *)self _screenSizeForCurrentOrientation];
  v6 = x * v5;
  v8 = y * v7;
  result.y = v8;
  result.x = v6;
  return result;
}

- (CGPoint)_denormalizePoint:(CGPoint)point withRespectToFrame:(CGRect)frame
{
  v4 = frame.origin.x + point.x * frame.size.width;
  v5 = frame.origin.y + point.y * frame.size.height;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)_normalizePoint:(CGPoint)point withRespectToFrame:(CGRect)frame
{
  v4 = (point.x - frame.origin.x) / frame.size.width;
  v5 = (point.y - frame.origin.y) / frame.size.height;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)_physicalScreenPointForVirtualScreenPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(ZWRootViewController *)self zoomFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];

  if (activeLensViewController == fullscreenLensViewController)
  {
    [(ZWRootViewController *)self _screenSizeForCurrentOrientation];
    [(ZWRootViewController *)self _normalizePoint:x withRespectToFrame:y, v7, v9, v11, v13];
    [ZWRootViewController _denormalizePoint:"_denormalizePoint:withRespectToFrame:" withRespectToFrame:?];
    x = v24;
    y = v25;
    goto LABEL_11;
  }

  activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];

  if (activeLensViewController2 == pipLensViewController)
  {
    [(ZWRootViewController *)self _normalizePoint:x withRespectToFrame:y, v7, v9, v11, v13];
    v27 = v26;
    v29 = v28;
    pipLensViewController2 = [(ZWRootViewController *)self pipLensViewController];
    lensChromeView = [pipLensViewController2 lensChromeView];
    pipLensViewController3 = [(ZWRootViewController *)self pipLensViewController];
    lensChromeView2 = [pipLensViewController3 lensChromeView];
    [lensChromeView2 bounds];
    [lensChromeView convertRect:0 toView:?];
    [(ZWRootViewController *)self _denormalizePoint:v27 withRespectToFrame:v29, v34, v35, v36, v37];
    x = v38;
    y = v39;

LABEL_10:
    goto LABEL_11;
  }

  activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
  dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];

  if (activeLensViewController3 != dockedLensViewController)
  {
    goto LABEL_11;
  }

  dockedLensViewController2 = [(ZWRootViewController *)self dockedLensViewController];
  dockPosition = [dockedLensViewController2 dockPosition];

  if (dockPosition > 1)
  {
    if (dockPosition == &dword_0 + 2)
    {
      pipLensViewController2 = [(ZWRootViewController *)self dockedLensViewController];
      [pipLensViewController2 screenShift];
      v49 = v48;
      dockedLensViewController3 = [(ZWRootViewController *)self dockedLensViewController];
      dockedLensView = [dockedLensViewController3 dockedLensView];
      [dockedLensView bounds];
      x = x + v49 - v50;
    }

    else
    {
      if (dockPosition != &dword_0 + 3)
      {
        goto LABEL_11;
      }

      pipLensViewController2 = [(ZWRootViewController *)self dockedLensViewController];
      [pipLensViewController2 screenShift];
      v43 = v42;
      dockedLensViewController3 = [(ZWRootViewController *)self dockedLensViewController];
      dockedLensView = [dockedLensViewController3 dockedLensView];
      [dockedLensView bounds];
      y = y + v43 - v46;
    }

    goto LABEL_10;
  }

  if (!dockPosition)
  {
    dockedLensViewController4 = [(ZWRootViewController *)self dockedLensViewController];
    [dockedLensViewController4 screenShift];
    y = y + v47;
    goto LABEL_16;
  }

  if (dockPosition == &dword_0 + 1)
  {
    dockedLensViewController4 = [(ZWRootViewController *)self dockedLensViewController];
    [dockedLensViewController4 screenShift];
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

- (CGPoint)_virtualScreenPointForPhysicalScreenPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(ZWRootViewController *)self zoomFrame];
  v7 = v6;
  v9 = v8;
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];

  if (activeLensViewController == fullscreenLensViewController)
  {
    [(ZWRootViewController *)self _screenSizeForCurrentOrientation];
    [(ZWRootViewController *)self _normalizePoint:x withRespectToFrame:y, 0.0, 0.0, v20, v21];
    selfCopy2 = self;
LABEL_10:
    [(ZWRootViewController *)selfCopy2 _denormalizePoint:v49 withRespectToFrame:v50];
    x = v35;
    y = v36;
    goto LABEL_11;
  }

  activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];

  if (activeLensViewController2 == pipLensViewController)
  {
    pipLensViewController2 = [(ZWRootViewController *)self pipLensViewController];
    lensChromeView = [pipLensViewController2 lensChromeView];
    pipLensViewController3 = [(ZWRootViewController *)self pipLensViewController];
    lensChromeView2 = [pipLensViewController3 lensChromeView];
    [lensChromeView2 bounds];
    [lensChromeView convertRect:0 toView:?];
    v28 = v27;
    v30 = v29;
    v49 = v7;
    v50 = v9;
    v32 = v31;
    v34 = v33;

    [(ZWRootViewController *)self _normalizePoint:x withRespectToFrame:y, v28, v30, v32, v34];
    selfCopy2 = self;
    goto LABEL_10;
  }

  activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
  dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];

  if (activeLensViewController3 == dockedLensViewController)
  {
    dockedLensViewController2 = [(ZWRootViewController *)self dockedLensViewController];
    dockPosition = [dockedLensViewController2 dockPosition];

    if (dockPosition > 1)
    {
      if (dockPosition == &dword_0 + 2)
      {
        dockedLensViewController3 = [(ZWRootViewController *)self dockedLensViewController];
        [dockedLensViewController3 screenShift];
        v47 = v46;
        dockedLensViewController4 = [(ZWRootViewController *)self dockedLensViewController];
        dockedLensView = [dockedLensViewController4 dockedLensView];
        [dockedLensView bounds];
        x = x - (v47 - v48);
      }

      else
      {
        if (dockPosition != &dword_0 + 3)
        {
          goto LABEL_11;
        }

        dockedLensViewController3 = [(ZWRootViewController *)self dockedLensViewController];
        [dockedLensViewController3 screenShift];
        v41 = v40;
        dockedLensViewController4 = [(ZWRootViewController *)self dockedLensViewController];
        dockedLensView = [dockedLensViewController4 dockedLensView];
        [dockedLensView bounds];
        y = y - (v41 - v44);
      }

      goto LABEL_11;
    }

    if (!dockPosition)
    {
      dockedLensViewController5 = [(ZWRootViewController *)self dockedLensViewController];
      [dockedLensViewController5 screenShift];
      y = y - v45;
      goto LABEL_16;
    }

    if (dockPosition == &dword_0 + 1)
    {
      dockedLensViewController5 = [(ZWRootViewController *)self dockedLensViewController];
      [dockedLensViewController5 screenShift];
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

- (void)_presentMenuWithAnchorView:(id)view animated:(BOOL)animated ignoreCooldown:(BOOL)cooldown
{
  viewCopy = view;
  presentedViewController = [(ZWRootViewController *)self presentedViewController];
  menuViewController = [(ZWRootViewController *)self menuViewController];

  if (presentedViewController != menuViewController)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    if (cooldown || vabdd_f64(v10, self->_lastMenuDismissalTime) >= 0.75)
    {
      traitCollection = [(ZWRootViewController *)self traitCollection];
      if (![traitCollection userInterfaceIdiom])
      {
        view = [(ZWRootViewController *)self view];

        viewCopy = view;
      }

      [viewCopy bounds];
      v14 = v13;
      MidY = v15;
      v18 = v17;
      v20 = v19;
      view2 = [(ZWRootViewController *)self view];

      if (viewCopy == view2)
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
        view3 = [(ZWRootViewController *)self view];
        [view3 bounds];
        v27 = NSStringFromCGRect(v54);
        *buf = 138412802;
        v46 = v25;
        v47 = 2112;
        v48 = viewCopy;
        v49 = 2112;
        v50 = v27;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Displaying Zoom Menu at popover rect: %@, anchor view: %@, view bounds: %@", buf, 0x20u);
      }

      slugViewController = [(ZWRootViewController *)self slugViewController];
      view4 = [slugViewController view];
      window = [view4 window];

      if (window)
      {
        slugViewController2 = [(ZWRootViewController *)self slugViewController];
        view5 = [slugViewController2 view];
        v44 = view5;
        v33 = [NSArray arrayWithObjects:&v44 count:1];
        menuViewController2 = [(ZWRootViewController *)self menuViewController];
        popoverPresentationController = [menuViewController2 popoverPresentationController];
        [popoverPresentationController setPassthroughViews:v33];
      }

      menuViewController3 = [(ZWRootViewController *)self menuViewController];
      popoverPresentationController2 = [menuViewController3 popoverPresentationController];
      [popoverPresentationController2 setSourceRect:{v14, MidY, v18, v20}];

      menuViewController4 = [(ZWRootViewController *)self menuViewController];
      popoverPresentationController3 = [menuViewController4 popoverPresentationController];
      [popoverPresentationController3 setSourceView:viewCopy];

      menuViewController5 = [(ZWRootViewController *)self menuViewController];
      popoverPresentationController4 = [menuViewController5 popoverPresentationController];
      [popoverPresentationController4 setPermittedArrowDirections:v22];

      menuViewController6 = [(ZWRootViewController *)self menuViewController];
      zoomMenuVisibilityChangedUnitTestCallback = [(ZWRootViewController *)self zoomMenuVisibilityChangedUnitTestCallback];
      [(ZWRootViewController *)self presentViewController:menuViewController6 animated:1 completion:zoomMenuVisibilityChangedUnitTestCallback];
    }
  }
}

- (void)_dismissMenuAnimated:(BOOL)animated
{
  presentedViewController = [(ZWRootViewController *)self presentedViewController];
  menuViewController = [(ZWRootViewController *)self menuViewController];

  if (presentedViewController == menuViewController)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    self->_lastMenuDismissalTime = v6;
    menuViewController2 = [(ZWRootViewController *)self menuViewController];
    presentingViewController = [menuViewController2 presentingViewController];
    zoomMenuVisibilityChangedUnitTestCallback = [(ZWRootViewController *)self zoomMenuVisibilityChangedUnitTestCallback];
    [presentingViewController dismissViewControllerAnimated:1 completion:zoomMenuVisibilityChangedUnitTestCallback];

    [(ZWRootViewController *)self _menuDidDisappear];
  }
}

- (void)_menuDidDisappear
{
  cachedValuesSerialQueue = [(ZWRootViewController *)self cachedValuesSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __41__ZWRootViewController__menuDidDisappear__block_invoke;
  block[3] = &unk_78D00;
  block[4] = self;
  dispatch_sync(cachedValuesSerialQueue, block);

  LODWORD(cachedValuesSerialQueue) = UIAccessibilityLayoutChangedNotification;
  menuViewController = [(ZWRootViewController *)self menuViewController];
  view = [menuViewController view];
  UIAccessibilityPostNotification(cachedValuesSerialQueue, view);
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

- (void)willBeginAutopanningLensWithAutopanner:(id)autopanner
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

- (void)didFinishAutopanningLensWithAutopanner:(id)autopanner
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

- (void)autopanner:(id)autopanner didAutopanByDelta:(CGPoint)delta
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __53__ZWRootViewController_autopanner_didAutopanByDelta___block_invoke;
  block[3] = &unk_78D28;
  block[4] = self;
  deltaCopy = delta;
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
  _inSpeakUnderFingerMode = [(ZWRootViewController *)self _inSpeakUnderFingerMode];
  cachedValuesSerialQueue = [(ZWRootViewController *)self cachedValuesSerialQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __70__ZWRootViewController__updateEventUIContextForSpeakFingerStateChange__block_invoke;
  v5[3] = &unk_78BD0;
  v5[4] = self;
  v6 = _inSpeakUnderFingerMode;
  dispatch_sync(cachedValuesSerialQueue, v5);
}

- (void)toggleZoomMenu
{
  presentedViewController = [(ZWRootViewController *)self presentedViewController];
  menuViewController = [(ZWRootViewController *)self menuViewController];

  if (presentedViewController == menuViewController)
  {

    [(ZWRootViewController *)self _dismissMenuAnimated:1];
  }

  else
  {
    if ([(ZWRootViewController *)self isZoomSlugVisible])
    {
      slugViewController = [(ZWRootViewController *)self slugViewController];
      slugRingView = [slugViewController slugRingView];
    }

    else
    {
      slugRingView = [(ZWRootViewController *)self view];
    }

    [(ZWRootViewController *)self _presentMenuWithAnchorView:slugRingView animated:1 ignoreCooldown:0];
  }
}

- (void)_handleSlugAction:(int64_t)action
{
  switch(action)
  {
    case 3:
      if (!UIAccessibilityIsVoiceOverRunning())
      {
        presentedViewController = [(ZWRootViewController *)self presentedViewController];
        menuViewController = [(ZWRootViewController *)self menuViewController];

        if (presentedViewController == menuViewController)
        {
          [(ZWRootViewController *)self _dismissMenuAnimated:1];
        }

        v20 = +[AXSpeakFingerManager sharedInstance];
        speakFingerState = [v20 speakFingerState];

        v22 = +[AXSpeakFingerManager sharedInstance];
        slugViewController = v22;
        if (speakFingerState == &dword_0 + 2)
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
      ignoreLogging = [v11 ignoreLogging];

      if ((ignoreLogging & 1) == 0)
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
      presentedViewController2 = [(ZWRootViewController *)self presentedViewController];
      menuViewController2 = [(ZWRootViewController *)self menuViewController];

      if (presentedViewController2 == menuViewController2)
      {
        [(ZWRootViewController *)self _dismissMenuAnimated:1];
      }

      [(ZWRootViewController *)self _toggleZoomStandby];
      break;
    case 1:
      presentedViewController3 = [(ZWRootViewController *)self presentedViewController];
      menuViewController3 = [(ZWRootViewController *)self menuViewController];

      if (presentedViewController3 != menuViewController3)
      {
        activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
        pipLensViewController = [(ZWRootViewController *)self pipLensViewController];
        v8 = pipLensViewController;
        if (activeLensViewController == pipLensViewController)
        {
          pipLensViewController2 = [(ZWRootViewController *)self pipLensViewController];
          isInLensResizingMode = [pipLensViewController2 isInLensResizingMode];

          if (isInLensResizingMode)
          {
            [(ZWRootViewController *)self toggleLensResizeModeWithMenuViewController:0];
          }
        }

        else
        {
        }

        slugViewController = [(ZWRootViewController *)self slugViewController];
        slugRingView = [slugViewController slugRingView];
        [(ZWRootViewController *)self _presentMenuWithAnchorView:slugRingView animated:1 ignoreCooldown:0];

LABEL_31:

        return;
      }

      [(ZWRootViewController *)self _dismissMenuAnimated:1];
      break;
    default:
      return;
  }
}

- (void)slugWasSingleTappedWithSlugViewController:(id)controller
{
  v4 = +[AXSpeakFingerManager sharedInstance];
  speakFingerState = [v4 speakFingerState];

  if (speakFingerState == &dword_0 + 2)
  {
    v6 = +[AXSettings sharedInstance];
    -[ZWRootViewController _handleSlugAction:](self, "_handleSlugAction:", [v6 zoomSlugSingleTapAction]);
  }

  else
  {

    [(ZWRootViewController *)self _handleSlugAction:3];
  }
}

- (void)slugWasDoubleTappedWithSlugViewController:(id)controller
{
  v4 = +[AXSettings sharedInstance];
  -[ZWRootViewController _handleSlugAction:](self, "_handleSlugAction:", [v4 zoomSlugDoubleTapAction]);
}

- (void)slugWasTripleTappedWithSlugViewController:(id)controller
{
  v4 = +[AXSettings sharedInstance];
  -[ZWRootViewController _handleSlugAction:](self, "_handleSlugAction:", [v4 zoomSlugTripleTapAction]);
}

- (BOOL)shouldBeginAutopanningLensWithSlugViewController:(id)controller
{
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  inStandbyMode = [activeLensViewController inStandbyMode];

  return inStandbyMode ^ 1;
}

- (void)wantsToStartAutopannerWithSlugViewController:(id)controller
{
  controllerCopy = controller;
  lensAutopanner = [(ZWRootViewController *)self lensAutopanner];
  [lensAutopanner setDataSource:controllerCopy];

  lensAutopanner2 = [(ZWRootViewController *)self lensAutopanner];
  [lensAutopanner2 start];
}

- (void)wantsToStopAutopannerWithSlugViewController:(id)controller
{
  lensAutopanner = [(ZWRootViewController *)self lensAutopanner];
  [lensAutopanner stop];

  lensAutopanner2 = [(ZWRootViewController *)self lensAutopanner];
  [lensAutopanner2 setDataSource:0];

  [(ZWRootViewController *)self _updateSystemGestureDisablingAssertions];
}

- (BOOL)shouldShowSlugWithSlugViewController:(id)controller
{
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  userIsMovingLens = [activeLensViewController userIsMovingLens];

  return userIsMovingLens ^ 1;
}

- (BOOL)attemptOrbZoomIfAppropriateWithSlugViewController:(id)controller
{
  controllerCopy = controller;
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  inStandbyMode = [activeLensViewController inStandbyMode];

  if (inStandbyMode)
  {
    view = [(ZWRootViewController *)self view];
    view2 = [controllerCopy view];
    [view2 center];
    [view zw_convertPointToScreenCoordinates:?];
    v10 = v9;
    v12 = v11;

    screen = [(ZWRootViewController *)self screen];
    [screen scale];
    v15 = v10 * v14;

    screen2 = [(ZWRootViewController *)self screen];
    [screen2 scale];
    v18 = v12 * v17;

    *(&self->_eventUIContext + 148) |= 0x800u;
    [(ZWRootViewController *)self fullscreenEventHandler:0 didStartOrbAtLocation:v15, v18];
  }

  return inStandbyMode;
}

- (void)updateOrbZoomAtPoint:(CGPoint)point withSlugViewController:(id)controller
{
  y = point.y;
  x = point.x;
  view = [(ZWRootViewController *)self view];
  [view zw_convertPointToScreenCoordinates:{x, y}];
  v9 = v8;
  v11 = v10;

  screen = [(ZWRootViewController *)self screen];
  [screen scale];
  v14 = v9 * v13;

  screen2 = [(ZWRootViewController *)self screen];
  [screen2 scale];
  v17 = v11 * v16;

  [(ZWRootViewController *)self fullscreenEventHandler:0 updateOrbMovementAtLocation:v14, v17];
}

- (void)endOrbZoomWithSlugViewController:(id)controller
{
  controllerCopy = controller;
  view = [(ZWRootViewController *)self view];
  view2 = [controllerCopy view];

  [view2 center];
  [view zw_convertPointToScreenCoordinates:?];
  v8 = v7;
  v10 = v9;

  screen = [(ZWRootViewController *)self screen];
  [screen scale];
  v13 = v8 * v12;

  screen2 = [(ZWRootViewController *)self screen];
  [screen2 scale];
  v16 = v10 * v15;

  *(&self->_eventUIContext + 148) &= ~0x800u;

  [(ZWRootViewController *)self fullscreenEventHandler:0 didEndOrbAtLocation:v13, v16];
}

- (void)zoomLensViewController:(id)controller didMoveLens:(id)lens withDelta:(CGPoint)delta
{
  x = delta.x;
  y = delta.y;
  controllerCopy = controller;
  v6.f64[0] = x;
  v6.f64[1] = y;
  self->_lensDeltaSinceInitialMove = vaddq_f64(v6, self->_lensDeltaSinceInitialMove);
  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];
  if (pipLensViewController == controllerCopy)
  {
    isInLensResizingMode = [controllerCopy isInLensResizingMode];

    if (isInLensResizingMode)
    {
      if ([controllerCopy activeResizeHandle] == &dword_0 + 1)
      {
        [(ZWRootViewController *)self _moveZoomItemWithController:controllerCopy byDelta:0 animated:1 userInitiated:x, y];
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

  dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];
  if (dockedLensViewController == controllerCopy)
  {
    isInDockResizingMode = [controllerCopy isInDockResizingMode];

    if (!isInDockResizingMode)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_11:
  [(ZWRootViewController *)self _moveZoomItemWithController:controllerCopy byDelta:0 animated:1 userInitiated:x, y];
LABEL_12:
}

- (void)dockedLensViewController:(id)controller zoomRegionVisibilityWasChanged:(BOOL)changed
{
  changedCopy = changed;
  cachedValuesSerialQueue = [(ZWRootViewController *)self cachedValuesSerialQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __80__ZWRootViewController_dockedLensViewController_zoomRegionVisibilityWasChanged___block_invoke;
  v8[3] = &unk_78BD0;
  v8[4] = self;
  v9 = changedCopy;
  dispatch_sync(cachedValuesSerialQueue, v8);

  axuiService = [(ZWRootViewController *)self axuiService];
  [axuiService notifyOtherDisplaysOfDockedZoomRegionVisibilityChange:changedCopy];
}

- (BOOL)userIsInteractingWithSlugWithDockedLensViewController:(id)controller
{
  slugViewController = [(ZWRootViewController *)self slugViewController];
  userIsInteractingWithSlug = [slugViewController userIsInteractingWithSlug];

  return userIsInteractingWithSlug;
}

- (void)updateDockedZoomRegionVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];
  zoomRegionVisible = [dockedLensViewController zoomRegionVisible];

  if (zoomRegionVisible != visibilityCopy)
  {
    dockedLensViewController2 = [(ZWRootViewController *)self dockedLensViewController];
    [dockedLensViewController2 toggleZoomRegionVisibility];
  }
}

- (void)menuViewController:(id)controller finishedAdjustingZoomFactor:(double)factor
{
  controllerCopy = controller;
  if (![(ZWRootViewController *)self _isZoomFactorAtMinimum:factor])
  {
    v6 = +[ZWCoalescedSettings sharedInstance];
    [v6 setZoomFactor:factor];
  }

  [(ZWRootViewController *)self menuViewController:controllerCopy adjustZoomFactor:0 animated:factor];
}

- (void)menuViewController:(id)controller adjustZoomFactor:(double)factor animated:(BOOL)animated
{
  animatedCopy = animated;
  [(ZWRootViewController *)self _updateZoomFactor:animated animated:?];
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];
  if (activeLensViewController == dockedLensViewController)
  {
    dockedLensViewController2 = [(ZWRootViewController *)self dockedLensViewController];
    zoomRegionVisible = [dockedLensViewController2 zoomRegionVisible];

    if (!zoomRegionVisible)
    {
      return;
    }

    activeLensViewController = [(ZWRootViewController *)self dockedLensViewController];
    dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];
    [dockedLensViewController zoomPanOffset];
    if (animatedCopy)
    {
      v13 = 0.3;
    }

    else
    {
      v13 = -1.0;
    }

    [activeLensViewController updateZoomFactor:animatedCopy panOffset:0 animated:factor animationDuration:v11 completion:{v12, v13}];
  }
}

- (void)menuViewController:(id)controller didChooseLensEffect:(id)effect
{
  effectCopy = effect;
  v5 = +[AXSettings sharedInstance];
  zoomCurrentLensEffect = [v5 zoomCurrentLensEffect];
  v7 = [zoomCurrentLensEffect isEqualToString:effectCopy];

  if ((v7 & 1) == 0)
  {
    v8 = +[AXSettings sharedInstance];
    [v8 setZoomCurrentLensEffect:effectCopy];
  }

  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  if ([activeLensViewController inStandbyMode])
  {
    activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
    pipLensViewController = self->_pipLensViewController;

    if (activeLensViewController2 == pipLensViewController)
    {
      activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
      [(ZWRootViewController *)self zoomFactor];
      v14 = v13;
      [(ZWRootViewController *)self zoomPanOffset];
      [activeLensViewController3 updateStandbyMode:0 zoomFactor:effectCopy panOffset:1 lensEffect:0 animated:v14 completion:{v15, v16}];
      goto LABEL_8;
    }
  }

  else
  {
  }

  activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
  [activeLensViewController3 updateLensEffect:effectCopy animated:1 completion:0];
LABEL_8:
}

- (void)menuViewController:(id)controller didChooseZoomMode:(id)mode withCompletion:(id)completion
{
  modeCopy = mode;
  completionCopy = completion;
  v7 = +[AXSettings sharedInstance];
  zoomCurrentLensMode = [v7 zoomCurrentLensMode];
  v9 = [zoomCurrentLensMode isEqualToString:modeCopy];

  if ((v9 & 1) == 0)
  {
    v10 = +[AXSettings sharedInstance];
    [v10 setZoomPreferredCurrentLensMode:modeCopy];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)menuViewController:(id)controller didChooseDockPosition:(id)position withCompletion:(id)completion
{
  positionCopy = position;
  completionCopy = completion;
  dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];
  [dockedLensViewController setDockPositionIsTransitioning:1];

  +[CATransaction begin];
  [CATransaction setCompletionBlock:completionCopy];

  v10 = +[AXSettings sharedInstance];
  zoomPreferredCurrentDockPosition = [v10 zoomPreferredCurrentDockPosition];
  v12 = [zoomPreferredCurrentDockPosition isEqualToString:positionCopy];

  if ((v12 & 1) == 0)
  {
    activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
    inStandbyMode = [activeLensViewController inStandbyMode];

    if (inStandbyMode)
    {
      dockedLensViewController2 = [(ZWRootViewController *)self dockedLensViewController];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = __80__ZWRootViewController_menuViewController_didChooseDockPosition_withCompletion___block_invoke_5;
      v28[3] = &unk_78D00;
      v28[4] = self;
      [dockedLensViewController2 transitionToDockPosition:positionCopy completion:v28];
    }

    else
    {
      activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
      activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
      [activeLensViewController3 zoomFactor];
      v19 = v18;
      activeLensViewController4 = [(ZWRootViewController *)self activeLensViewController];
      [activeLensViewController4 zoomPanOffset];
      v22 = v21;
      v24 = v23;
      v25 = +[AXSettings sharedInstance];
      zoomCurrentLensEffect = [v25 zoomCurrentLensEffect];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = __80__ZWRootViewController_menuViewController_didChooseDockPosition_withCompletion___block_invoke;
      v29[3] = &unk_79170;
      v29[4] = self;
      v30 = positionCopy;
      [activeLensViewController2 updateStandbyMode:1 zoomFactor:zoomCurrentLensEffect panOffset:1 lensEffect:v29 animated:v19 completion:{v22, v24}];

      dockedLensViewController2 = v30;
    }

    v27 = +[AXSettings sharedInstance];
    [v27 setZoomPreferredCurrentDockPosition:positionCopy];
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

- (BOOL)toggleSlugVisibilityWithMenuViewController:(id)controller
{
  v3 = +[AXSettings sharedInstance];
  zoomShouldShowSlug = [v3 zoomShouldShowSlug];
  v5 = zoomShouldShowSlug;
  [v3 setZoomShouldShowSlug:zoomShouldShowSlug ^ 1];

  return v5 ^ 1;
}

- (BOOL)togglePeekZoomWithMenuViewController:(id)controller
{
  v3 = +[AXSettings sharedInstance];
  zoomPeekZoomEnabled = [v3 zoomPeekZoomEnabled];
  v5 = zoomPeekZoomEnabled;
  [v3 setZoomPeekZoomEnabled:zoomPeekZoomEnabled ^ 1];

  return v5 ^ 1;
}

- (void)_exitStandbyIfNecessary
{
  v3 = +[ZWCoalescedSettings sharedInstance];
  zoomInStandby = [v3 zoomInStandby];

  if (zoomInStandby)
  {
    activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
    v6 = +[ZWCoalescedSettings sharedInstance];
    [v6 zoomFactor];
    v8 = v7;
    [(ZWRootViewController *)self zoomPanOffset];
    v10 = v9;
    v12 = v11;
    v13 = +[AXSettings sharedInstance];
    zoomCurrentLensEffect = [v13 zoomCurrentLensEffect];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __47__ZWRootViewController__exitStandbyIfNecessary__block_invoke;
    v15[3] = &unk_78D00;
    v15[4] = self;
    [activeLensViewController updateStandbyMode:0 zoomFactor:zoomCurrentLensEffect panOffset:1 lensEffect:v15 animated:v8 completion:{v10, v12}];
  }
}

- (void)toggleLensVisibilityWithMenuViewController:(id)controller
{
  [(ZWRootViewController *)self zoomPanOffset];
  v5 = v4;
  v7 = v6;
  v8 = +[ZWCoalescedSettings sharedInstance];
  [v8 zoomFactor];
  v10 = v9;

  [(ZWRootViewController *)self _dismissMenuAnimated:1];
  v11 = +[AXSettings sharedInstance];
  zoomCurrentLensEffect = [v11 zoomCurrentLensEffect];

  v13 = +[ZWCoalescedSettings sharedInstance];
  zoomInStandby = [v13 zoomInStandby];

  v15 = +[ZWCoalescedSettings sharedInstance];
  [v15 setZoomInStandby:zoomInStandby ^ 1];

  [(ZWRootViewController *)self setZoomFactor:v10];
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __67__ZWRootViewController_toggleLensVisibilityWithMenuViewController___block_invoke;
  v18[3] = &unk_78D00;
  v18[4] = self;
  [activeLensViewController updateStandbyMode:zoomInStandby ^ 1 zoomFactor:zoomCurrentLensEffect panOffset:1 lensEffect:v18 animated:v10 completion:{v5, v7}];

  kbContext = [(ZWRootViewController *)self kbContext];
  [kbContext keyboardFrame];
  [(ZWRootViewController *)self _updateKeyboardFrame:?];
}

- (void)toggleLensResizeModeWithMenuViewController:(id)controller
{
  [(ZWRootViewController *)self _dismissMenuAnimated:1];
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];

  if (activeLensViewController == pipLensViewController)
  {
    pipLensViewController2 = [(ZWRootViewController *)self pipLensViewController];
    isInLensResizingMode = [pipLensViewController2 isInLensResizingMode];

    [(ZWRootViewController *)self _setPIPLensResizingEnabled:isInLensResizingMode ^ 1];

    [(ZWRootViewController *)self _exitStandbyIfNecessary];
  }
}

- (BOOL)inFullscreenModeForMenuViewController:(id)controller
{
  selfCopy = self;
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  fullscreenLensViewController = [(ZWRootViewController *)selfCopy fullscreenLensViewController];
  LOBYTE(selfCopy) = activeLensViewController == fullscreenLensViewController;

  return selfCopy;
}

- (BOOL)inPIPModeForMenuViewController:(id)controller
{
  selfCopy = self;
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  pipLensViewController = [(ZWRootViewController *)selfCopy pipLensViewController];
  LOBYTE(selfCopy) = activeLensViewController == pipLensViewController;

  return selfCopy;
}

- (BOOL)inDockedModeForMenuViewController:(id)controller
{
  selfCopy = self;
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  dockedLensViewController = [(ZWRootViewController *)selfCopy dockedLensViewController];
  LOBYTE(selfCopy) = activeLensViewController == dockedLensViewController;

  return selfCopy;
}

- (BOOL)inStandByForMenuViewController:(id)controller
{
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  inStandbyMode = [activeLensViewController inStandbyMode];

  return inStandbyMode;
}

- (double)zoomFactorForMenuViewController:(id)controller
{
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  inStandbyMode = [activeLensViewController inStandbyMode];

  if (inStandbyMode)
  {
    return AXZoomMinimumZoomLevel;
  }

  [(ZWRootViewController *)self zoomFactor];
  return result;
}

- (void)menuDidAppear:(id)appear
{
  appearCopy = appear;
  cachedValuesSerialQueue = [(ZWRootViewController *)self cachedValuesSerialQueue];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = __38__ZWRootViewController_menuDidAppear___block_invoke;
  v11 = &unk_79170;
  selfCopy = self;
  v13 = appearCopy;
  v6 = appearCopy;
  dispatch_sync(cachedValuesSerialQueue, &v8);

  LODWORD(cachedValuesSerialQueue) = UIAccessibilityLayoutChangedNotification;
  view = [v6 view];
  UIAccessibilityPostNotification(cachedValuesSerialQueue, view);

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

- (void)externalClientSetZoomFactor:(double)factor
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __52__ZWRootViewController_externalClientSetZoomFactor___block_invoke;
  v7[3] = &unk_78E98;
  v7[4] = self;
  *&v7[5] = factor;
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

- (void)externalClientSetZoomPanOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
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

- (void)externalClientWantsToAutopan:(CGPoint)autopan withPanningStyle:(unint64_t)style
{
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  inStandbyMode = [activeLensViewController inStandbyMode];

  if ((inStandbyMode & 1) == 0)
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

- (CGRect)zoomFrameForPanningContinuouslyToPoint:(CGPoint)point zoomFactor:(double)factor
{
  y = point.y;
  x = point.x;
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  inStandbyMode = [activeLensViewController inStandbyMode];
  v10 = 1.0;
  if ((inStandbyMode & 1) == 0)
  {
    [(ZWRootViewController *)self zoomFactor];
  }

  v11 = v10 / factor;

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

- ($2F34F6A4A708D3F7715AC605E075D30F)currentUIContextForEventProcessor:(SEL)processor
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
    cachedValuesSerialQueue = [(ZWRootViewController *)self cachedValuesSerialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __58__ZWRootViewController_currentUIContextForEventProcessor___block_invoke;
    block[3] = &unk_79310;
    block[4] = self;
    block[5] = &v13;
    dispatch_sync(cachedValuesSerialQueue, block);
  }

  else
  {
    cachedValuesSerialQueue2 = [(ZWRootViewController *)self cachedValuesSerialQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __58__ZWRootViewController_currentUIContextForEventProcessor___block_invoke_2;
    v11[3] = &unk_79310;
    v11[4] = self;
    v11[5] = &v13;
    dispatch_sync(cachedValuesSerialQueue2, v11);

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

- (int64_t)currentInterfaceOrientationForEventProcessor:(id)processor
{
  processorCopy = processor;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  cachedValuesSerialQueue = [(ZWRootViewController *)self cachedValuesSerialQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __69__ZWRootViewController_currentInterfaceOrientationForEventProcessor___block_invoke;
  v8[3] = &unk_79310;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(cachedValuesSerialQueue, v8);

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (CGSize)currentScreenSizeForEventProcessor:(id)processor
{
  processorCopy = processor;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3010000000;
  v14 = &unk_6F53D;
  v15 = CGSizeZero;
  cachedValuesSerialQueue = [(ZWRootViewController *)self cachedValuesSerialQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __59__ZWRootViewController_currentScreenSizeForEventProcessor___block_invoke;
  v10[3] = &unk_79310;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(cachedValuesSerialQueue, v10);

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

- (unsigned)currentWindowContextIdForEventProcessor:(id)processor
{
  processorCopy = processor;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  cachedValuesSerialQueue = [(ZWRootViewController *)self cachedValuesSerialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __64__ZWRootViewController_currentWindowContextIdForEventProcessor___block_invoke;
  v7[3] = &unk_79310;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(cachedValuesSerialQueue, v7);

  LODWORD(self) = *(v9 + 6);
  _Block_object_dispose(&v8, 8);

  return self;
}

- (unsigned)currentDisplayIdForEventProcessor:(id)processor
{
  processorCopy = processor;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  cachedValuesSerialQueue = [(ZWRootViewController *)self cachedValuesSerialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __58__ZWRootViewController_currentDisplayIdForEventProcessor___block_invoke;
  v7[3] = &unk_79310;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(cachedValuesSerialQueue, v7);

  LODWORD(self) = *(v9 + 6);
  _Block_object_dispose(&v8, 8);

  return self;
}

- (void)eventProcessor:(id)processor didGetFirstTouchAtLocation:(CGPoint)location
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __66__ZWRootViewController_eventProcessor_didGetFirstTouchAtLocation___block_invoke;
  block[3] = &unk_78D28;
  block[4] = self;
  locationCopy = location;
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

- (void)eventProcessor:(id)processor didGetTouchInSpeakFingerMode:(CGPoint)mode firstTouchWentIntoLens:(BOOL)lens
{
  lensCopy = lens;
  y = mode.y;
  x = mode.x;
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];
  if (activeLensViewController != pipLensViewController || lensCopy)
  {
    goto LABEL_6;
  }

  activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
  inStandbyMode = [activeLensViewController2 inStandbyMode];

  if ((inStandbyMode & 1) == 0)
  {
    [(ZWRootViewController *)self _determineSuitableLensFrame];
    v20.x = x;
    v20.y = y;
    if (!CGRectContainsPoint(v21, v20))
    {
      self->_pipWasOnBeforeSpeakFingerStarted = 1;
      v13 = +[AXSettings sharedInstance];
      activeLensViewController = [v13 zoomCurrentLensEffect];

      pipLensViewController = [(ZWRootViewController *)self activeLensViewController];
      [(ZWRootViewController *)self zoomFactor];
      v15 = v14;
      [(ZWRootViewController *)self zoomPanOffset];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = __91__ZWRootViewController_eventProcessor_didGetTouchInSpeakFingerMode_firstTouchWentIntoLens___block_invoke;
      v19[3] = &unk_78D00;
      v19[4] = self;
      [pipLensViewController updateStandbyMode:1 zoomFactor:activeLensViewController panOffset:0 lensEffect:v19 animated:v15 completion:{v16, v17}];
LABEL_6:
    }
  }

  v18 = +[AXSpeakFingerManager sharedInstance];
  [v18 speakElementAtLocation:{x, y}];
}

- (BOOL)eventProcessor:(id)processor didGetWheelEventWithDelta:(int64_t)delta
{
  [(ZWRootViewController *)self zoomFactor];
  if (v6 <= AXZoomMinimumZoomLevel)
  {
    v8 = 0;
  }

  else
  {
    activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
    v8 = [activeLensViewController inStandbyMode] ^ 1;
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
  v17[5] = delta;
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

- (void)eventProcessor:(id)processor didGetPanEventWithDelta:(int64_t)delta
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __63__ZWRootViewController_eventProcessor_didGetPanEventWithDelta___block_invoke;
  v4[3] = &unk_78E98;
  v4[4] = self;
  v4[5] = delta;
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
  fakeLaserVC = [(ZWRootViewController *)self fakeLaserVC];
  fingerController = [fakeLaserVC fingerController];
  fingerContainerView = [fingerController fingerContainerView];
  fakeLaserVC2 = [(ZWRootViewController *)self fakeLaserVC];
  fingerController2 = [fakeLaserVC2 fingerController];
  fingerModels = [fingerController2 fingerModels];
  firstObject = [fingerModels firstObject];
  [firstObject location];
  [fingerContainerView convertPoint:0 toView:?];
  v11 = v10;
  v13 = v12;

  [(ZWRootViewController *)self _virtualScreenPointForPhysicalScreenPoint:v11, v13];
  v15 = v14;
  v17 = v16;
  v22 = +[BKSMousePointerService sharedInstance];
  v18 = [BKSContextRelativePoint alloc];
  view = [(ZWRootViewController *)self view];
  window = [view window];
  v21 = [v18 initWithPoint:objc_msgSend(window contextID:{"_contextId"), v15, v17}];
  [v22 setContextRelativePointerPosition:v21 onDisplay:0 withAnimationParameters:0 restrictingToPID:0xFFFFFFFFLL];
}

- (void)eventProcessor:(id)processor didGetPointerEventAtLocation:(CGPoint)location withEventRep:(id)rep
{
  repCopy = rep;
  v5 = repCopy;
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

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  [(ZWRootViewController *)self setScrollBeganWhileSnarfingScrolls:[(ZWRootViewController *)self lastKeyboardCommand]== &dword_C + 2];
  [(ZWRootViewController *)self setLastScrollTrapOffset:5000.0];
  [draggingCopy setContentOffset:{5000.0, 5000.0}];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if ([(ZWRootViewController *)self scrollBeganWhileSnarfingScrolls])
  {
    [scrollCopy contentOffset];
    v5 = v4;
    [(ZWRootViewController *)self lastScrollTrapOffset];
    v7 = v5 - v6;
    [scrollCopy contentOffset];
    [(ZWRootViewController *)self setLastScrollTrapOffset:v8];
    v9 = +[BKSMousePointerService sharedInstance];
    globalDevicePreferences = [v9 globalDevicePreferences];
    enableNaturalScrolling = [globalDevicePreferences enableNaturalScrolling];

    v12 = -v7;
    if (enableNaturalScrolling)
    {
      v12 = v7;
    }

    [(ZWRootViewController *)self _handleZoomWheelEventWithDelta:v12];
  }
}

- (CGPoint)pointerLocationToZoomInToWithZoomFactor:(double)factor
{
  [(ZWRootViewController *)self lastPointerLocation];
  v6 = v5;
  v8 = v7;
  v9 = +[AXSettings sharedInstance];
  laserZoomPanningStyle = [v9 laserZoomPanningStyle];

  if (laserZoomPanningStyle)
  {
    v11 = v6;
    v12 = v8;
  }

  else
  {
    [(ZWRootViewController *)self zoomFrameForPanningContinuouslyToPoint:v6 zoomFactor:v8, factor];

    AX_CGRectGetCenter();
  }

  result.y = v12;
  result.x = v11;
  return result;
}

- (void)_handleZoomWheelEventWithDelta:(int64_t)delta
{
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  v6 = 1.0;
  if (([activeLensViewController inStandbyMode] & 1) == 0)
  {
    [(ZWRootViewController *)self zoomFactor];
    v6 = v7;
  }

  [(ZWRootViewController *)self _screenSizeForCurrentOrientation];
  v9 = v6 * (v8 / (v8 - delta));
  if (v9 < AXZoomMinimumZoomLevel)
  {
    v9 = AXZoomMinimumZoomLevel;
  }

  [(ZWRootViewController *)self setZoomFactorRespectingUserPreferredMaximumZoom:v9];
  [(ZWRootViewController *)self pointerLocationToZoomInToWithZoomFactor:?];
  [ZWRootViewController zoomInToPoint:"zoomInToPoint:withZoomFactor:animated:" withZoomFactor:0 animated:?];
  self->_lastWheelDelta = delta;
}

- (void)_handlePanWheelEventWithDelta:(int64_t)delta animated:(BOOL)animated animationDuration:(double)duration
{
  animatedCopy = animated;
  v7 = (delta * 0.7);
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
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  [(ZWRootViewController *)self zoomFactor];
  [activeLensViewController maximumPanOffsetWithZoomFactor:?];
  v19 = v18;
  v21 = v20;

  activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
  view = [activeLensViewController2 view];
  [view bounds];
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
          systemApplication = [v47 systemApplication];
          currentApplications = [systemApplication currentApplications];
          firstObject = [currentApplications firstObject];

          uiElement = [firstObject uiElement];
          v73 = @"scrollAmount";
          v51 = [NSNumber numberWithDouble:v28 * v43];
          v74 = v51;
          v52 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];
          v53 = [uiElement performAXAction:2047 withValue:v52];

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
      systemApplication2 = [v61 systemApplication];
      currentApplications2 = [systemApplication2 currentApplications];
      firstObject = [currentApplications2 firstObject];

      uiElement2 = [firstObject uiElement];
      v71 = @"scrollAmount";
      v65 = [NSNumber numberWithDouble:-(v46 * v28)];
      v72 = v65;
      v66 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      v67 = [uiElement2 performAXAction:2047 withValue:v66];

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

  activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
  view2 = [activeLensViewController3 view];
  [view2 bounds];
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
  activeLensViewController4 = [(ZWRootViewController *)self activeLensViewController];
  [(ZWRootViewController *)self mirrorPanOffsetForRTLIfNecessary:v12, v14];
  [activeLensViewController4 validPanOffsetForProposedOffset:? proposedZoomFactor:?];
  v56 = v55;
  v58 = v57;

  activeLensViewController5 = [(ZWRootViewController *)self activeLensViewController];
  [(ZWRootViewController *)self mirrorPanOffsetForRTLIfNecessary:v12, v14];
  [activeLensViewController5 handleAdditionalPanOffsetFromOriginalOffset:0 validOffset:? useFullDelta:?];

  [(ZWRootViewController *)self setZoomPanOffset:v56, v58];
  activeLensViewController6 = [(ZWRootViewController *)self activeLensViewController];
  [activeLensViewController6 updateZoomFactor:animatedCopy panOffset:0 animated:v16 animationDuration:v56 completion:{v58, duration}];

  self->_lastWheelDelta = v69;
}

- (void)_handleKeyboardCommand:(int64_t)command isRepeatCommand:(BOOL)repeatCommand
{
  repeatCommandCopy = repeatCommand;
  if (!repeatCommand)
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
    scrollTrapView = [(ZWRootViewController *)self scrollTrapView];
    [scrollTrapView setAlpha:0.0];

    cachedValuesSerialQueue = self->_cachedValuesSerialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __63__ZWRootViewController__handleKeyboardCommand_isRepeatCommand___block_invoke;
    block[3] = &unk_78D00;
    block[4] = self;
    dispatch_sync(cachedValuesSerialQueue, block);
  }

  if (command > 9)
  {
    if ((command - 10) >= 4)
    {
      if ((command - 15) < 2)
      {
        keyRepeatTimer = [(ZWRootViewController *)self keyRepeatTimer];
        [keyRepeatTimer cancel];
LABEL_80:

        goto LABEL_81;
      }

      v9 = repeatCommandCopy;
      if (command != 14)
      {
        goto LABEL_82;
      }

      scrollTrapView2 = [(ZWRootViewController *)self scrollTrapView];
      [scrollTrapView2 setAlpha:0.01];

      v44 = self->_cachedValuesSerialQueue;
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = __63__ZWRootViewController__handleKeyboardCommand_isRepeatCommand___block_invoke_2;
      v64[3] = &unk_78D00;
      v64[4] = self;
      dispatch_sync(v44, v64);
      command = 14;
LABEL_81:
      v9 = repeatCommandCopy;
      goto LABEL_82;
    }

    activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
    if ([activeLensViewController inStandbyMode])
    {

LABEL_77:
      v9 = 1;
      goto LABEL_82;
    }

    activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
    fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];

    if (activeLensViewController2 == fullscreenLensViewController)
    {
      goto LABEL_77;
    }

    activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
    dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];

    if (activeLensViewController3 == dockedLensViewController)
    {
      dockedLensViewController2 = [(ZWRootViewController *)self dockedLensViewController];
      dockPosition = [dockedLensViewController2 dockPosition];

      if (dockPosition)
      {
        dockedLensViewController3 = [(ZWRootViewController *)self dockedLensViewController];
        dockPosition2 = [dockedLensViewController3 dockPosition];

        if (dockPosition2 == &dword_0 + 2)
        {
          if (command == 12)
          {
            [(ZWRootViewController *)self _lensMinimumSize];
            v42 = 0.0;
            command = 10;
            goto LABEL_76;
          }

          if (command == 10)
          {
            [(ZWRootViewController *)self _lensMinimumSize];
            goto LABEL_75;
          }
        }
      }

      else
      {
        if (command == 13)
        {
          [(ZWRootViewController *)self _lensMinimumSize];
          v41 = v62;
          goto LABEL_55;
        }

        if (command == 11)
        {
          [(ZWRootViewController *)self _lensMinimumSize];
          v41 = v61;
          goto LABEL_67;
        }
      }
    }

    [(ZWRootViewController *)self _lensMinimumSize];
    v41 = v40;
    if (command <= 11)
    {
      v42 = 0.0;
      if (command == 10)
      {
LABEL_76:
        [(ZWRootViewController *)self _resizeZoomLensWithAdjustment:v39 lensPositionCompensation:v42, v39 * -0.5, v42 * -0.5];
        goto LABEL_77;
      }

LABEL_55:
      v39 = 0.0;
      command = 11;
      v42 = v41;
      goto LABEL_76;
    }

    if (command == 13)
    {
LABEL_67:
      v42 = -v41;
      v39 = 0.0;
      command = 13;
      goto LABEL_76;
    }

LABEL_75:
    v39 = -v39;
    v42 = 0.0;
    command = 12;
    goto LABEL_76;
  }

  if (command > 5)
  {
    activeLensViewController4 = [(ZWRootViewController *)self activeLensViewController];
    inStandbyMode = [activeLensViewController4 inStandbyMode];

    if ((inStandbyMode & 1) == 0)
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

      if (command == 8)
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

      if (command == 6)
      {
        v24 = v22;
      }

      if (command <= 7)
      {
        v25 = CGPointZero.y;
      }

      else
      {
        v25 = v21;
      }

      if (command <= 7)
      {
        x = v24;
      }

      else
      {
        x = CGPointZero.x;
      }

      activeLensViewController5 = [(ZWRootViewController *)self activeLensViewController];
      v9 = 1;
      [(ZWRootViewController *)self _moveZoomItemWithController:activeLensViewController5 byDelta:0 animated:1 userInitiated:1 shouldUseFullDeltaForDockedMode:1 shouldPan:x, v25];

      activeLensViewController6 = [(ZWRootViewController *)self activeLensViewController];
      [activeLensViewController6 zoomMovementDidEnd];

      goto LABEL_82;
    }

    goto LABEL_81;
  }

  if (command > 2)
  {
    if ((command - 4) >= 2)
    {
      v9 = repeatCommandCopy;
      if (command == 3)
      {
        if (![(ZWRootViewController *)self zoomIsAnimatingDueToStandbyToggle])
        {
          [(ZWRootViewController *)self setToggleStandbyOnNextCommandChange:1];
          [(ZWRootViewController *)self _toggleZoomStandby];
        }

        command = 3;
        goto LABEL_81;
      }

      goto LABEL_82;
    }

    activeLensViewController7 = [(ZWRootViewController *)self activeLensViewController];
    inStandbyMode2 = [activeLensViewController7 inStandbyMode];

    if ((inStandbyMode2 & 1) == 0)
    {
      keyRepeatTimer = AXZoomUserSelectableLensModes();
      activeZoomMode = [(ZWRootViewController *)self activeZoomMode];
      v33 = [keyRepeatTimer indexOfObject:activeZoomMode];

      if (command == 4)
      {
        if (v33 + 1 < [keyRepeatTimer count])
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
        v34 = [keyRepeatTimer count] - 1;
      }

      v55 = [keyRepeatTimer objectAtIndex:v34];
      [(ZWRootViewController *)self _transitionToLensForMode:v55 animated:1 completion:0];

      goto LABEL_80;
    }

    goto LABEL_81;
  }

  if (!command)
  {
    [(ZWRootViewController *)self zoomFactor];
    v47 = v46;
    activeLensViewController8 = [(ZWRootViewController *)self activeLensViewController];
    inStandbyMode3 = [activeLensViewController8 inStandbyMode];

    v50 = AXZoomMinimumZoomLevel;
    if (!inStandbyMode3)
    {
      v50 = v47;
    }

    [(ZWRootViewController *)self fullscreenEventHandler:0 setZoomLevel:v50 * 1.1 duration:0.0];
    command = 0;
    goto LABEL_77;
  }

  if (command == 1)
  {
    [(ZWRootViewController *)self zoomFactor];
    [(ZWRootViewController *)self fullscreenEventHandler:0 setZoomLevel:v45 * 0.9 duration:0.0];
    goto LABEL_77;
  }

  v9 = repeatCommandCopy;
  if (command == 2)
  {
    presentedViewController = [(ZWRootViewController *)self presentedViewController];
    menuViewController = [(ZWRootViewController *)self menuViewController];

    if (presentedViewController == menuViewController)
    {
      [(ZWRootViewController *)self _dismissMenuAnimated:1];
    }

    [(ZWRootViewController *)self _toggleZoomStandby];
    command = 2;
    goto LABEL_81;
  }

LABEL_82:
  v56 = _AXSKeyRepeatEnabled();
  if (v9 && v56)
  {
    if (repeatCommandCopy)
    {
      _AXSKeyRepeatInterval();
    }

    else
    {
      _AXSKeyRepeatDelay();
    }

    v58 = v57;
    keyRepeatTimer2 = [(ZWRootViewController *)self keyRepeatTimer];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = __63__ZWRootViewController__handleKeyboardCommand_isRepeatCommand___block_invoke_3;
    v63[3] = &unk_78E98;
    v63[4] = self;
    v63[5] = command;
    [keyRepeatTimer2 afterDelay:v63 processBlock:v58];
  }

  shouldSuppressKeyCommandHUD = [(ZWRootViewController *)self shouldSuppressKeyCommandHUD];
  [(ZWRootViewController *)self setShouldSuppressKeyCommandHUD:command != 16];
  if (shouldSuppressKeyCommandHUD != [(ZWRootViewController *)self shouldSuppressKeyCommandHUD])
  {
    [(ZWRootViewController *)self _updateZoomListeners];
  }

  [(ZWRootViewController *)self setLastKeyboardCommand:command];
}

- (CGPoint)mirrorPanOffsetForRTLIfNecessary:(CGPoint)necessary
{
  y = necessary.y;
  x = necessary.x;
  userInterfaceLayoutDirection = [UIApp userInterfaceLayoutDirection];
  v6 = -x;
  if (userInterfaceLayoutDirection != &dword_0 + 1)
  {
    v6 = x;
  }

  v7 = y;
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)lastFingerWasLiftedWithEventProcessor:(id)processor firstTouchWentIntoSlug:(BOOL)slug
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __85__ZWRootViewController_lastFingerWasLiftedWithEventProcessor_firstTouchWentIntoSlug___block_invoke;
  v4[3] = &unk_78BD0;
  v4[4] = self;
  slugCopy = slug;
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

- (void)didGetToggleZoomGestureWithEventProcessor:(id)processor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __66__ZWRootViewController_didGetToggleZoomGestureWithEventProcessor___block_invoke;
  block[3] = &unk_78D00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didGetTogglePanningModeGestureWithATVEventProcessor:(id)processor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __76__ZWRootViewController_didGetTogglePanningModeGestureWithATVEventProcessor___block_invoke;
  block[3] = &unk_78D00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)wantsToStartAutopannerWithATVEventProcessor:(id)processor
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __68__ZWRootViewController_wantsToStartAutopannerWithATVEventProcessor___block_invoke;
  v4[3] = &unk_79170;
  v4[4] = self;
  processorCopy = processor;
  v3 = processorCopy;
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

- (void)wantsToStopAutopannerWithATVEventProcessor:(id)processor
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

- (void)didGetSpeakContentGestureWithATVEventProcessor:(id)processor
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

- (void)atvEventProcessor:(id)processor adjustZoomLevelWithDelta:(CGPoint)delta
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __67__ZWRootViewController_atvEventProcessor_adjustZoomLevelWithDelta___block_invoke;
  block[3] = &unk_78D28;
  block[4] = self;
  deltaCopy = delta;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)shouldSendTapEventWithATVEventProcessor:(id)processor
{
  if (-[ZWRootViewController _isZoomedToMinimum](self, "_isZoomedToMinimum", processor) || (-[ZWRootViewController activeLensViewController](self, "activeLensViewController"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 inStandbyMode], v4, (v5 & 1) != 0) || -[ZWRootViewController _smartZoomFocusedElementIsBeingSampled](self, "_smartZoomFocusedElementIsBeingSampled"))
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    smartZoom = [(ZWRootViewController *)self smartZoom];
    activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
    lensZoomView = [activeLensViewController lensZoomView];
    [lensZoomView sampleRect];
    v6 = [smartZoom setNativeFocusOnBestElementNearRect:?] ^ 1;
  }

  return v6;
}

- (void)blockHomeGestureIfNeededWithEventProcessor:(id)processor
{
  disableHomeGestureAssertion = [(ZWRootViewController *)self disableHomeGestureAssertion];

  if (!disableHomeGestureAssertion)
  {
    v5 = [AXAssertion assertionWithType:AXAssertionTypeDisableSystemGestures identifier:@"Interacting with Zoom UI"];
    [(ZWRootViewController *)self setDisableHomeGestureAssertion:v5];
  }
}

- (void)didGetTouchOutsideZoomMenuWithEventProcessor:(id)processor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __69__ZWRootViewController_didGetTouchOutsideZoomMenuWithEventProcessor___block_invoke;
  block[3] = &unk_78D00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didGetTouchOutsideLensChromeWithEventProcessor:(id)processor
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

- (void)fullscreenEventHandler:(id)handler didReceiveThreeFingerDoubleTapAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(ZWRootViewController *)self _dismissMenuAnimated:1];
  [(ZWRootViewController *)self zoomFactor];
  v8 = v7;
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  v10 = activeLensViewController;
  v11 = y == -1.0 && x == -1.0;
  inStandbyMode = [activeLensViewController inStandbyMode];
  fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];

  if (v10 == fullscreenLensViewController && vabdd_f64(v8, AXZoomMinimumZoomLevel) < 0.0001)
  {
    v14 = +[ZWCoalescedSettings sharedInstance];
    [v14 zoomFactor];
    v8 = v15;

    if ([(ZWRootViewController *)self _isZoomFactorAtMinimum:v8])
    {
      v8 = AXZoomDefaultZoomLevel;
    }

    inStandbyMode = 1;
  }

  if (!v11)
  {
    view = [(ZWRootViewController *)self view];
    v17 = ZWConvertPointInScreenPixelsToViewCoordinates(view, x, y);
    v19 = v35;

    if (!inStandbyMode)
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
  if (inStandbyMode)
  {
    goto LABEL_16;
  }

LABEL_11:
  fullscreenLensViewController2 = [(ZWRootViewController *)self fullscreenLensViewController];

  if (v10 == fullscreenLensViewController2)
  {
    [(ZWRootViewController *)self setZoomFactorRespectingUserPreferredMaximumZoom:v8];
    v37 = v36;
    v38 = +[AXSettings sharedInstance];
    zoomCurrentLensEffect = [v38 zoomCurrentLensEffect];

    activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
    [(ZWRootViewController *)self zoomPanOffset];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = __88__ZWRootViewController_fullscreenEventHandler_didReceiveThreeFingerDoubleTapAtLocation___block_invoke;
    v51[3] = &unk_78D00;
    v51[4] = self;
    [activeLensViewController2 updateStandbyMode:1 zoomFactor:zoomCurrentLensEffect panOffset:1 lensEffect:v51 animated:v37 completion:{v40, v41}];

    v42 = +[ZWCoalescedSettings sharedInstance];
    [v42 setZoomInStandby:1];

    containerView = [(ZWRootViewController *)self containerView];
    minimapView = [(ZWRootViewController *)self minimapView];
    [containerView bringSubviewToFront:minimapView];

    kbContext = [(ZWRootViewController *)self kbContext];
    [kbContext keyboardFrame];
    [(ZWRootViewController *)self _updateKeyboardFrame:?];
LABEL_20:

    goto LABEL_21;
  }

  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];

  if (v10 == pipLensViewController)
  {
    v45 = +[AXSettings sharedInstance];
    zoomCurrentLensEffect = [v45 zoomCurrentLensEffect];

    kbContext = [(ZWRootViewController *)self activeLensViewController];
    activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
    inStandbyMode2 = [activeLensViewController3 inStandbyMode];
    [(ZWRootViewController *)self zoomPanOffset];
    v29 = v47;
    v31 = v48;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = __88__ZWRootViewController_fullscreenEventHandler_didReceiveThreeFingerDoubleTapAtLocation___block_invoke_2;
    v50[3] = &unk_78D00;
    v50[4] = self;
    v32 = inStandbyMode2 ^ 1;
    v33 = v50;
    goto LABEL_19;
  }

  dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];

  if (v10 == dockedLensViewController)
  {
    v23 = +[AXSettings sharedInstance];
    zoomCurrentLensEffect = [v23 zoomCurrentLensEffect];

    kbContext = [(ZWRootViewController *)self activeLensViewController];
    activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
    inStandbyMode3 = [activeLensViewController3 inStandbyMode];
    [(ZWRootViewController *)self zoomPanOffset];
    v29 = v28;
    v31 = v30;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = __88__ZWRootViewController_fullscreenEventHandler_didReceiveThreeFingerDoubleTapAtLocation___block_invoke_3;
    v49[3] = &unk_78D00;
    v49[4] = self;
    v32 = inStandbyMode3 ^ 1;
    v33 = v49;
LABEL_19:
    [kbContext updateStandbyMode:v32 zoomFactor:zoomCurrentLensEffect panOffset:1 lensEffect:v33 animated:v8 completion:{v29, v31}];

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

- (void)fullscreenEventHandler:(id)handler didReceiveThreeFingerTripleTapAtLocation:(CGPoint)location
{
  if ((AXDeviceIsTV() & 1) == 0)
  {

    [(ZWRootViewController *)self toggleZoomMenu];
  }
}

- (void)_updateOrbLocation:(CGPoint)location animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  y = location.y;
  x = location.x;
  completionCopy = completion;
  *(&self->_eventUIContext + 148) |= 0x200u;
  slugViewController = [(ZWRootViewController *)self slugViewController];
  [slugViewController setShouldHideWhileOrbing:1];

  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];

  if (activeLensViewController == pipLensViewController)
  {
    screen = [(ZWRootViewController *)self screen];
    [screen scale];
    v32 = ZWConvertPointInScreenPixelsToScreenCoordinates(x, y, v31);
    v34 = v33;

    pipLensViewController2 = [(ZWRootViewController *)self pipLensViewController];
    lensChromeView = [pipLensViewController2 lensChromeView];
    [lensChromeView bounds];
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
      v46 = completionCopy;
      [(ZWRootViewController *)self _focusLensOnRect:0 panLensContent:1 recentreLens:animatedCopy animated:v45 completion:v32, v39, 2.0, 2.0];
    }

    else
    {
      [(ZWRootViewController *)self _focusLensOnRect:1 panLensContent:1 recentreLens:animatedCopy animated:completionCopy completion:v32, v39, 2.0, 2.0];
    }
  }

  else
  {
    view = [(ZWRootViewController *)self view];
    v14 = ZWConvertPointInScreenPixelsToViewCoordinates(view, x, y);
    v16 = v15;

    slugViewController2 = [(ZWRootViewController *)self slugViewController];
    view2 = [slugViewController2 view];
    [view2 frame];
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
      activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
      [(ZWRootViewController *)self _moveZoomItemWithController:activeLensViewController2 byDelta:0 animated:1 userInitiated:v23 - v26, v24 - v28];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
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

- (void)fullscreenEventHandler:(id)handler didStartOrbAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(UIImpactFeedbackGenerator *)self->_feedbackGenerator impactOccurred];
  *(&self->_eventUIContext + 148) |= 0x400u;
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  [(ZWRootViewController *)self _transitionToLens:activeLensViewController animated:1 completion:&__block_literal_global_547];

  activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];

  if (activeLensViewController2 == pipLensViewController)
  {
    pipLensViewController2 = [(ZWRootViewController *)self pipLensViewController];
    [pipLensViewController2 setOffsetZoomWindow:1];
  }

  v11 = CGPointZero.y;
  [(ZWRootViewController *)self setLastOrbLocation:CGPointZero.x, v11];
  [(ZWRootViewController *)self setZoomPanOffset:CGPointZero.x, v11];
  v12 = +[AXSettings sharedInstance];
  zoomCurrentLensEffect = [v12 zoomCurrentLensEffect];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __69__ZWRootViewController_fullscreenEventHandler_didStartOrbAtLocation___block_invoke_2;
  v15[3] = &unk_79170;
  v15[4] = self;
  v16 = zoomCurrentLensEffect;
  v14 = zoomCurrentLensEffect;
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

- (void)fullscreenEventHandler:(id)handler didEndOrbAtLocation:(CGPoint)location
{
  [(UIImpactFeedbackGenerator *)self->_feedbackGenerator impactOccurred:handler];
  *(&self->_eventUIContext + 148) &= ~0x200u;
  slugViewController = [(ZWRootViewController *)self slugViewController];
  [slugViewController setShouldHideWhileOrbing:0];

  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  v7 = +[AXSettings sharedInstance];
  zoomCurrentLensEffect = [v7 zoomCurrentLensEffect];

  [(ZWRootViewController *)self zoomFactor];
  v10 = v9;
  [(ZWRootViewController *)self zoomPanOffset];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __67__ZWRootViewController_fullscreenEventHandler_didEndOrbAtLocation___block_invoke;
  v16[3] = &unk_78D00;
  v16[4] = self;
  [activeLensViewController updateStandbyMode:1 zoomFactor:zoomCurrentLensEffect panOffset:1 lensEffect:v16 animated:v10 completion:{v11, v12}];
  activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];

  if (activeLensViewController2 == pipLensViewController)
  {
    pipLensViewController2 = [(ZWRootViewController *)self pipLensViewController];
    [pipLensViewController2 setOffsetZoomWindow:0];
  }
}

- (void)fullscreenEventHandler:(id)handler updateOrbMovementAtLocation:(CGPoint)location
{
  if ((*(&self->_eventUIContext + 148) & 0x400) == 0)
  {
    [(ZWRootViewController *)self _updateOrbLocation:1 animated:0 completion:location.x, location.y];
  }
}

- (void)fullscreenEventHandler:(id)handler didThreeFingerOrbAtLocation:(CGPoint)location
{
  v5 = [AXSettings sharedInstance:handler];
  zoomPeekZoomEnabled = [v5 zoomPeekZoomEnabled];

  v7 = +[AXSettings sharedInstance];
  [v7 setZoomPeekZoomEnabled:zoomPeekZoomEnabled ^ 1];

  zoomAlertManager = [(ZWRootViewController *)self zoomAlertManager];
  v9 = zoomAlertManager;
  if (zoomPeekZoomEnabled)
  {
    [zoomAlertManager showOrbZoomToggleOff];
  }

  else
  {
    [zoomAlertManager showOrbZoomToggleOn];
  }
}

- (void)fullscreenEventHandler:(id)handler didReceiveThreeFingerSingleTapAtLocation:(CGPoint)location
{
  v8 = [(ZWRootViewController *)self activeLensViewController:handler];
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

- (void)fullscreenEventHandler:(id)handler didReceiveOneFingerDownAtLocation:(CGPoint)location
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __81__ZWRootViewController_fullscreenEventHandler_didReceiveOneFingerDownAtLocation___block_invoke;
  block[3] = &unk_78D28;
  block[4] = self;
  locationCopy = location;
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

- (double)zoomLevelWithFullscreenEventHandler:(id)handler
{
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  inStandbyMode = [activeLensViewController inStandbyMode];

  if (inStandbyMode)
  {
    return AXZoomMinimumZoomLevel;
  }

  [(ZWRootViewController *)self zoomFactor];
  return result;
}

- (void)fullscreenEventHandler:(id)handler setZoomLevel:(double)level duration:(double)duration
{
  [(ZWRootViewController *)self setZoomFactor:handler, level, duration];
  [(ZWRootViewController *)self zoomPanOffset];
  x = v7;
  y = v9;
  if (vabdd_f64(level, AXZoomMinimumZoomLevel) <= 0.0001 || AXZoomMinimumZoomLevel >= level)
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
    [(ZWRootViewController *)self setZoomPanOffset:CGPointZero.x, y];
  }

  [(ZWRootViewController *)self setZoomFactorRespectingUserPreferredMaximumZoom:level];
  v13 = v12;
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  if ([activeLensViewController inStandbyMode])
  {
    v15 = +[AXSettings sharedInstance];
    zoomCurrentLensEffect = [v15 zoomCurrentLensEffect];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __69__ZWRootViewController_fullscreenEventHandler_setZoomLevel_duration___block_invoke;
    v17[3] = &unk_78D00;
    v17[4] = self;
    [activeLensViewController updateStandbyMode:0 zoomFactor:zoomCurrentLensEffect panOffset:0 lensEffect:v17 animated:v13 completion:{x, y}];
  }

  else
  {
    [activeLensViewController updateZoomFactor:0 panOffset:0 animated:v13 animationDuration:x completion:{y, -1.0}];
  }
}

- (void)fullscreenEventHandler:(id)handler setZoomLevelFromTrackpadGesture:(double)gesture
{
  [(ZWRootViewController *)self zoomFactorRespectingUserPreferredMaximumZoom:handler, gesture];
  [(ZWRootViewController *)self pointerLocationToZoomInToWithZoomFactor:?];

  [ZWRootViewController zoomInToPoint:"zoomInToPoint:withZoomFactor:animated:" withZoomFactor:0 animated:?];
}

- (void)fullscreenEventHandler:(id)handler updateZoomMovementWithPoint:(CGPoint)point
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __75__ZWRootViewController_fullscreenEventHandler_updateZoomMovementWithPoint___block_invoke;
  block[3] = &unk_78D28;
  block[4] = self;
  pointCopy = point;
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

- (void)stopZoomMovementWithVelocityWithFullscreenEventHandler:(id)handler
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

- (void)endZoomMovementWithFullscreenEventHandler:(id)handler
{
  self->_fullScreenZoomStartPosition = CGPointZero;
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  [activeLensViewController zoomMovementDidEnd];
}

- (void)fullscreenEventHandler:(id)handler continueZoomMovementWithVelocity:(double)velocity angle:(double)angle
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __86__ZWRootViewController_fullscreenEventHandler_continueZoomMovementWithVelocity_angle___block_invoke;
  v8[3] = &unk_795A8;
  v8[4] = self;
  handlerCopy = handler;
  velocityCopy = velocity;
  angleCopy = angle;
  v7 = handlerCopy;
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

- (void)blockNotificationCenterGestureIfNeededWithFullscreenEventHandler:(id)handler
{
  _shouldBlockShowNotificationGesture = [(ZWRootViewController *)self _shouldBlockShowNotificationGesture];
  disableNotificationCenterAssertionFullscreenLens = [(ZWRootViewController *)self disableNotificationCenterAssertionFullscreenLens];

  if (!_shouldBlockShowNotificationGesture || disableNotificationCenterAssertionFullscreenLens)
  {
    if ((_shouldBlockShowNotificationGesture & 1) == 0)
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

- (void)blockControlCenterGestureIfNeededWithFullscreenEventHandler:(id)handler
{
  _shouldBlockShowControlCenterGesture = [(ZWRootViewController *)self _shouldBlockShowControlCenterGesture];
  disableControlCenterAssertionFullscreenLens = [(ZWRootViewController *)self disableControlCenterAssertionFullscreenLens];

  if (!_shouldBlockShowControlCenterGesture || disableControlCenterAssertionFullscreenLens)
  {
    if ((_shouldBlockShowControlCenterGesture & 1) == 0)
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

- (double)storedZoomLevelWithFullscreenEventHandler:(id)handler
{
  v3 = +[ZWCoalescedSettings sharedInstance];
  [v3 zoomFactor];
  v5 = v4;

  return v5;
}

- (CGPoint)zoomLocationWithFullscreenEventHandler:(id)handler
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

- (void)fullscreenEventHandler:(id)handler storeZoomLevel:(double)level location:(CGPoint)location zoomed:(BOOL)zoomed forKey:(id)key
{
  y = location.y;
  x = location.x;
  v10 = [ZWCoalescedSettings sharedInstance:handler];
  zoomInStandby = [v10 zoomInStandby];

  if ((zoomInStandby & 1) == 0)
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

- (void)setGutterDistanceForUnitTests:(double)tests scaleFactor:(double)factor
{
  if (self->_inUnitTestingMode)
  {
    ZOTSetGutterDistanceForUnitTests(tests);

    ZOTSetUnitTestScaleFactor(factor);
  }
}

- (BOOL)fullscreenEventHandler:(id)handler autopanWithLocation:(CGPoint)location initialSingleFingerLocation:(CGPoint)fingerLocation distance:(double)distance animationDuration:(double)duration useGutterDistance:(BOOL)gutterDistance pointHasBeenMapped:(BOOL)mapped
{
  mappedCopy = mapped;
  gutterDistanceCopy = gutterDistance;
  durationCopy = duration;
  y = location.y;
  x = location.x;
  handlerCopy = handler;
  if (mappedCopy)
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
    activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
    fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];

    if (activeLensViewController == fullscreenLensViewController)
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

    activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
    pipLensViewController = [(ZWRootViewController *)self pipLensViewController];

    if (activeLensViewController2 == pipLensViewController)
    {
      pipLensViewController2 = [(ZWRootViewController *)self pipLensViewController];
      view = [pipLensViewController2 view];
      pipLensViewController3 = [(ZWRootViewController *)self pipLensViewController];
      view2 = [pipLensViewController3 view];
      [view2 bounds];
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;
      containerView = [(ZWRootViewController *)self containerView];
      [view convertRect:containerView toView:{v45, v47, v49, v51}];

      UIRectInset();
      v17 = v53;
      v19 = v54;
      width = v55;
      height = v56;
    }

    else
    {
      activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
      dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];

      if (activeLensViewController3 != dockedLensViewController)
      {
        v17 = CGRectZero.origin.x;
        v19 = CGRectZero.origin.y;
        width = CGRectZero.size.width;
        height = CGRectZero.size.height;
        goto LABEL_12;
      }

      dockedLensViewController2 = [(ZWRootViewController *)self dockedLensViewController];
      dockedLensView = [dockedLensViewController2 dockedLensView];
      [dockedLensView frame];
      v17 = v59;
      v19 = v60;
      width = v61;
      height = v62;
    }

    [(ZWRootViewController *)self _denormalizePointForCurrentOrientation:x, y, *&durationCopy];
  }

  x = v28;
  y = v29;
LABEL_12:
  v63 = ZOTScreenRegionForPoint(gutterDistanceCopy, x, y, v17, v19, width, height);
  if (self->_usingRelativePushPanning)
  {
    v63 = ZOTScreenRegionForRelativePushPan([(ZWRootViewController *)self interfaceOrientation]);
  }

  if (v63)
  {
    v64 = CGPointZero.y;
    v65 = v64 - distance;
    if ((v63 & 4) == 0)
    {
      v65 = CGPointZero.y;
    }

    v66 = v64 + distance;
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

    v69 = CGPointZero.x - distance;
    if ((v63 & 1) == 0)
    {
      v69 = CGPointZero.x;
    }

    v70 = (v63 & 2) == 0 && (v63 & 1) == 0;
    if ((v63 & 2) != 0)
    {
      v71 = CGPointZero.x + distance;
    }

    else
    {
      v71 = v69;
    }

    [(ZWRootViewController *)self zoomFactor:CGPointZero.x + distance];
    v73 = v72;
    [(ZWRootViewController *)self zoomPanOffset];
    v75 = v71 + v74;
    v77 = v68 + v76;
    activeLensViewController4 = [(ZWRootViewController *)self activeLensViewController];
    [activeLensViewController4 validPanOffsetForProposedOffset:v75 proposedZoomFactor:{v77, v73}];
    v80 = v79;
    v82 = v81;

    activeLensViewController5 = [(ZWRootViewController *)self activeLensViewController];
    [activeLensViewController5 handleAdditionalPanOffsetFromOriginalOffset:1 validOffset:v75 useFullDelta:{v77, v80, v82}];

    v84 = vabdd_f64(v80, v75);
    v85 = vabdd_f64(v82, v77);
    activeLensViewController6 = [(ZWRootViewController *)self activeLensViewController];
    [activeLensViewController6 offsetByPanningWithDelta:6 axis:v71 zoomFactor:{v68, v73}];
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

- (BOOL)fullscreenEventHandler:(id)handler autopanShouldStartWithPoint:(CGPoint)point speedFactor:(double *)factor initialSingleFingerLocation:(CGPoint)location fingerCount:(double)count pointHasBeenMapped:(BOOL)mapped
{
  mappedCopy = mapped;
  y = location.y;
  x = location.x;
  v12 = point.y;
  v13 = point.x;
  [(ZWRootViewController *)self zoomFactor];
  v63 = v15;
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  if (mappedCopy)
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
    activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
    fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];

    if (activeLensViewController2 == fullscreenLensViewController)
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

    activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
    pipLensViewController = [(ZWRootViewController *)self pipLensViewController];

    if (activeLensViewController3 != pipLensViewController)
    {
      v18 = CGRectZero.origin.x;
      v20 = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      goto LABEL_8;
    }

    pipLensViewController2 = [(ZWRootViewController *)self pipLensViewController];
    view = [pipLensViewController2 view];
    pipLensViewController3 = [(ZWRootViewController *)self pipLensViewController];
    view2 = [pipLensViewController3 view];
    [view2 bounds];
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    containerView = [(ZWRootViewController *)self containerView];
    [view convertRect:containerView toView:{v48, v50, v52, v54}];

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
  if (([activeLensViewController inStandbyMode] & 1) == 0 && v63 > AXZoomMinimumZoomLevel)
  {
    usingRelativePushPanning = self->_usingRelativePushPanning;
    started = ZOTShouldStartAutopan(factor, &usingRelativePushPanning, v13, v12, count, x, y, v63, v39, v40, v18, v20, width, height);
    self->_usingRelativePushPanning = usingRelativePushPanning;
  }

  return started;
}

- (int64_t)interfaceOrientationWithFullscreenEventHandler:(id)handler
{
  handlerCopy = handler;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  cachedValuesSerialQueue = [(ZWRootViewController *)self cachedValuesSerialQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __71__ZWRootViewController_interfaceOrientationWithFullscreenEventHandler___block_invoke;
  v8[3] = &unk_79310;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(cachedValuesSerialQueue, v8);

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)touchTrapView:(id)view didTrapTouches:(id)touches withEvent:(id)event
{
  viewCopy = view;
  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];
  if ([pipLensViewController isInLensResizingMode])
  {
  }

  else
  {
    dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];
    isInDockResizingMode = [dockedLensViewController isInDockResizingMode];

    if ((isInDockResizingMode & 1) == 0)
    {
      _AXAssert();
    }
  }

  [(ZWRootViewController *)self touchTrapViewActivated:viewCopy];
}

- (void)touchTrapViewActivated:(id)activated
{
  [(ZWRootViewController *)self _setPIPLensResizingEnabled:0];

  [(ZWRootViewController *)self _setDockResizingEnabled:0];
}

- (BOOL)touchTrapView:(id)view shouldReportSelfInHitTestAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];

  if (activeLensViewController == fullscreenLensViewController)
  {
    goto LABEL_12;
  }

  activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
  pipLensViewController = [(ZWRootViewController *)self pipLensViewController];
  v12 = pipLensViewController;
  if (activeLensViewController2 == pipLensViewController)
  {
    pipLensViewController2 = [(ZWRootViewController *)self pipLensViewController];
    isInLensResizingMode = [pipLensViewController2 isInLensResizingMode];

    if (!isInLensResizingMode)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
  dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];
  v17 = dockedLensViewController;
  if (activeLensViewController3 == dockedLensViewController)
  {
    dockedLensViewController2 = [(ZWRootViewController *)self dockedLensViewController];
    isInDockResizingMode = [dockedLensViewController2 isInDockResizingMode];

    if (!isInDockResizingMode)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  activeLensViewController4 = [(ZWRootViewController *)self activeLensViewController];
  view = [activeLensViewController4 view];
  [viewCopy convertPoint:view toView:{x, y}];
  v23 = v22;
  v25 = v24;

  activeLensViewController5 = [(ZWRootViewController *)self activeLensViewController];
  dockedLensViewController3 = [(ZWRootViewController *)self dockedLensViewController];
  v28 = dockedLensViewController3;
  if (activeLensViewController5 != dockedLensViewController3)
  {

    goto LABEL_11;
  }

  dockedLensViewController4 = [(ZWRootViewController *)self dockedLensViewController];
  toggleZoomRegionButton = [dockedLensViewController4 toggleZoomRegionButton];
  [toggleZoomRegionButton frame];
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
  pipLensViewController3 = [(ZWRootViewController *)self pipLensViewController];
  v33 = [pipLensViewController3 lensEdgeForTouchAtLocation:{v23, v25}];

  if (v33 > 1)
  {
    goto LABEL_12;
  }

  slugViewController = [(ZWRootViewController *)self slugViewController];
  view2 = [slugViewController view];
  if ([view2 isHidden])
  {

    v34 = 1;
  }

  else
  {
    slugViewController2 = [(ZWRootViewController *)self slugViewController];
    view3 = [slugViewController2 view];
    slugViewController3 = [(ZWRootViewController *)self slugViewController];
    view4 = [slugViewController3 view];
    [viewCopy convertPoint:view4 toView:{x, y}];
    v42 = [view3 pointInside:0 withEvent:?];

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

- (void)_zoomMovementHeartbeat:(double)heartbeat fullscreenEventHandler:(id)handler
{
  handlerCopy = handler;
  [(ZWRootViewController *)self zoomFactor];
  v7 = v6;
  [(ZWRootViewController *)self zoomPanOffset];
  v9 = v8;
  v11 = v10;
  ZOTDistanceForTimeAndVelocityWithMaxDistance(heartbeat);
  v13 = v12;
  v15 = v14;
  v16 = fabs(v14);
  if (fabs(v12) >= 1.0 || v16 >= 1.0)
  {
    self->_validatePanOffsetWithFullscreen = 1;
    v18 = v9 + v12;
    v19 = v11 + v15;
    activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
    [activeLensViewController validPanOffsetForProposedOffset:v18 proposedZoomFactor:{v11 + v15, v7}];
    v22 = v21;
    v24 = v23;

    activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
    [activeLensViewController2 handleAdditionalPanOffsetFromOriginalOffset:0 validOffset:v18 useFullDelta:{v19, v22, v24}];

    activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
    [activeLensViewController3 offsetByPanningWithDelta:6 axis:v13 zoomFactor:{v15, v7}];
    v28 = v27;
    v30 = v29;

    [(ZWRootViewController *)self setZoomPanOffset:v28, v30];
    activeLensViewController4 = [(ZWRootViewController *)self activeLensViewController];
    [activeLensViewController4 updateZoomFactor:0 panOffset:0 animated:v7 animationDuration:v28 completion:{v30, -1.0}];

    self->_validatePanOffsetWithFullscreen = 0;
    if (v22 == v28 && v24 == v30)
    {
      v33 = vabdd_f64(v24, v19);
      activeLensViewController5 = [(ZWRootViewController *)self activeLensViewController];
      dockedLensViewController = [(ZWRootViewController *)self dockedLensViewController];

      if (activeLensViewController5 != dockedLensViewController)
      {
LABEL_22:
        if ((v33 < 2.22044605e-16 || !self->_careBorderY) && (vabdd_f64(v22, v18) < 2.22044605e-16 || !self->_careBorderX))
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      dockedLensViewController2 = [(ZWRootViewController *)self dockedLensViewController];
      if ([dockedLensViewController2 dockPosition])
      {
        dockedLensViewController3 = [(ZWRootViewController *)self dockedLensViewController];
        dockPosition = [dockedLensViewController3 dockPosition];

        if (dockPosition != &dword_0 + 3)
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
        dockedLensViewController4 = [(ZWRootViewController *)self dockedLensViewController];
        *(&self->super.super.super.isa + v39) = [dockedLensViewController4 zoomRegionOnScreenReplicatorEdge];
      }

      else
      {
        *(&self->super.super.super.isa + v39) = 0;
      }

      goto LABEL_22;
    }
  }

LABEL_9:
  [(ZWRootViewController *)self stopZoomMovementWithVelocityWithFullscreenEventHandler:handlerCopy];
LABEL_10:
}

- (BOOL)_shouldBlockShowNotificationGesture
{
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];

  if (activeLensViewController != fullscreenLensViewController)
  {
    return 0;
  }

  activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
  if ([activeLensViewController2 inStandbyMode])
  {

    return 0;
  }

  _isZoomedToMinimum = [(ZWRootViewController *)self _isZoomedToMinimum];

  if (_isZoomedToMinimum)
  {
    return 0;
  }

  activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
  lensZoomView = [activeLensViewController3 lensZoomView];
  zoomReplicatorLayer = [lensZoomView zoomReplicatorLayer];
  [zoomReplicatorLayer position];
  v12 = v11;

  activeLensViewController4 = [(ZWRootViewController *)self activeLensViewController];
  lensZoomView2 = [activeLensViewController4 lensZoomView];
  zoomReplicatorLayer2 = [lensZoomView2 zoomReplicatorLayer];
  [zoomReplicatorLayer2 bounds];
  v17 = v16;

  return v12 + v17 * -0.5 >= 15.0;
}

- (BOOL)_shouldBlockShowControlCenterGesture
{
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  if ([activeLensViewController inStandbyMode])
  {

    return 0;
  }

  _isZoomedToMinimum = [(ZWRootViewController *)self _isZoomedToMinimum];

  if (_isZoomedToMinimum)
  {
    return 0;
  }

  activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
  [activeLensViewController2 zoomPanOffset];
  v7 = v6;

  activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
  activeLensViewController4 = [(ZWRootViewController *)self activeLensViewController];
  [activeLensViewController4 zoomFactor];
  [activeLensViewController3 maximumPanOffsetWithZoomFactor:?];
  v11 = v10;

  if (!AXDeviceHasHomeButton() || !AXDeviceIsPhoneIdiom())
  {
    return v7 + v11 >= 30.0;
  }

  activeLensViewController5 = [(ZWRootViewController *)self activeLensViewController];
  fullscreenLensViewController = [(ZWRootViewController *)self fullscreenLensViewController];

  result = 0;
  if (activeLensViewController5 == fullscreenLensViewController && v11 - v7 >= 30.0)
  {
    return 1;
  }

  return result;
}

- (double)_interfaceAwareAdjustedAngleForScreenAngle:(double)angle
{
  view = [(ZWRootViewController *)self view];
  window = [view window];
  interfaceOrientation = [window interfaceOrientation];

  result = 0.0;
  if (interfaceOrientation > 2)
  {
    if (interfaceOrientation == (&dword_0 + 3))
    {
      result = angle + -270.0;
      if (angle + -270.0 >= 0.0)
      {
        return result;
      }

      v8 = 90.0;
      return angle + v8;
    }

    if (interfaceOrientation == &dword_4)
    {
      result = angle + -90.0;
      if (angle + -90.0 < 0.0)
      {
        v8 = 270.0;
        return angle + v8;
      }
    }
  }

  else
  {
    if (interfaceOrientation < 2)
    {
      return angle;
    }

    if (interfaceOrientation == (&dword_0 + 2))
    {
      result = angle + -180.0;
      if (angle + -180.0 < 0.0)
      {
        v8 = 180.0;
        return angle + v8;
      }
    }
  }

  return result;
}

- (CGPoint)_convertPointFromNormalizedToWindow:(CGPoint)window
{
  v4 = ZOTDenormalizePoint(window.x);
  v6 = v5;
  view = [(ZWRootViewController *)self view];
  window = [view window];
  v9 = ZWConvertPointInScreenPixelsToViewCoordinates(window, v4, v6);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)handleReachabilityToggled:(double)toggled
{
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  inStandbyMode = [activeLensViewController inStandbyMode];

  if ((inStandbyMode & 1) == 0)
  {
    [(ZWRootViewController *)self reachabilityOffset];
    v8 = v7;
    if (vabdd_f64(toggled, v7) >= 0.00000011920929)
    {
      activeLensViewController2 = [(ZWRootViewController *)self activeLensViewController];
      pipLensViewController = [(ZWRootViewController *)self pipLensViewController];

      if (activeLensViewController2 == pipLensViewController)
      {
        activeLensViewController3 = [(ZWRootViewController *)self activeLensViewController];
        [(ZWRootViewController *)self _moveZoomItemWithController:activeLensViewController3 byDelta:0 animated:0 userInitiated:0.0, toggled - v8];
      }

      [(ZWRootViewController *)self setReachabilityOffset:toggled];
    }
  }
}

- (void)didAnimateForReachabilityToOffset:(double)offset
{
  cachedValuesSerialQueue = [(ZWRootViewController *)self cachedValuesSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __58__ZWRootViewController_didAnimateForReachabilityToOffset___block_invoke;
  block[3] = &unk_78D00;
  block[4] = self;
  dispatch_sync(cachedValuesSerialQueue, block);
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
  activeZoomMode = [(ZWRootViewController *)self activeZoomMode];
  v24[6] = activeZoomMode;
  v23[7] = ZWAttributeKeyInStandbyMode;
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [activeLensViewController inStandbyMode]);
  v24[7] = v14;
  v23[8] = ZWAttributeKeyShouldSuppressKeyCommandHUD;
  v3 = [NSNumber numberWithBool:[(ZWRootViewController *)self shouldSuppressKeyCommandHUD]];
  v24[8] = v3;
  v23[9] = ZWAttributeKeyIsAnimating;
  zoomIsAnimating = [(ZWRootViewController *)self zoomIsAnimatingDueToTransition]|| [(ZWRootViewController *)self zoomIsAnimatingDueToStandbyToggle]|| [(ZWRootViewController *)self zoomIsAnimating];
  v5 = [NSNumber numberWithInt:zoomIsAnimating];
  v24[9] = v5;
  v23[10] = ZWAttributeKeyDisplayID;
  view = [(ZWRootViewController *)self view];
  window = [view window];
  screen = [window screen];
  displayIdentity = [screen displayIdentity];
  v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [displayIdentity displayID]);
  v24[10] = v10;
  v23[11] = ZWAttributeKeyIsMainDisplay;
  v11 = [NSNumber numberWithBool:[(ZWRootViewController *)self isMainDisplay]];
  v24[11] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:12];

  axuiService = [(ZWRootViewController *)self axuiService];
  [axuiService updateZoomListeners:v12];
}

- (void)updateFocusWithSmartZoom:(id)zoom
{
  zoomCopy = zoom;
  AXDeviceIsTV();
  if ([(ZWKeyboardContext *)self->_kbContext zoomFollowsFocus])
  {
    lensAutopanner = [(ZWRootViewController *)self lensAutopanner];
    isAutomovingLens = [lensAutopanner isAutomovingLens];

    if ((isAutomovingLens & 1) == 0)
    {
      [zoomCopy focusRect];
      [(ZWRootViewController *)self _focusLensOnRect:1 panLensContent:1 recentreLens:0 animated:0 completion:?];
    }
  }
}

- (BOOL)isZoomInStandByModeWithSmartZoom:(id)zoom
{
  activeLensViewController = [(ZWRootViewController *)self activeLensViewController];
  inStandbyMode = [activeLensViewController inStandbyMode];

  return inStandbyMode;
}

- (id)getLastSpeakUnderFingerPhrase
{
  v2 = +[AXSpeakFingerManager sharedInstance];
  getLastSpeakUnderFingerPhrase = [v2 getLastSpeakUnderFingerPhrase];

  return getLastSpeakUnderFingerPhrase;
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