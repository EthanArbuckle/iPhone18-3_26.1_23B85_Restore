@interface HNDRocker
+ (CGSize)initialRockerSize;
+ (CGSize)nubbitSize;
- (BOOL)_angleIndicatesReturnToCenter:(double)a3;
- (BOOL)_backButtonShouldBeHidden;
- (BOOL)_expectsSecureIntent;
- (BOOL)_includeRingerButtonInHardware;
- (BOOL)_replaceRingerWithOrientationLock;
- (BOOL)accessibilityPerformEscape;
- (BOOL)activateMenuItemDown:(id)a3 fromButtonPress:(BOOL)a4;
- (BOOL)activateMenuItemUp:(id)a3 fromButtonPress:(BOOL)a4;
- (BOOL)customizationMapAllowInstanceActivation:(id)a3;
- (CGPoint)_initialPointForGesture;
- (CGPoint)onScreenLocation;
- (CGRect)onScreenFrameForRockerButton:(id)a3;
- (HNDDisplayManager)displayManager;
- (HNDRocker)initWithFrame:(CGRect)a3;
- (double)_cornerRadiusForCurrentDevice;
- (id)_adjustMainScreenCustomizationForDeviceSupport:(id)a3;
- (id)_dockSpecificMenuItems;
- (id)_rockerButtonForLocation:(id)a3 buttonType:(id)a4;
- (id)_rockerItemsByLocation;
- (id)accessibilityPath;
- (id)animationEndButtonForButtonTag:(int)a3;
- (id)currentlyVisibleRockerItems;
- (id)rockerHitTest:(CGPoint)a3;
- (int64_t)_indexForAngle:(double)a3;
- (void)_accessibilityReaderPressed;
- (void)_actionButtonPressed;
- (void)_activateLockButton;
- (void)_addFavoriteBoxPressed;
- (void)_addNewButtonsToView;
- (void)_applePayButtonPressed:(id)a3;
- (void)_armApplePay;
- (void)_assignLocationsToRockerItems;
- (void)_autoHideForEyeTrackingToggled;
- (void)_backgroundSoundsPressed;
- (void)_bubbleModeToggled;
- (void)_calibrateEyeTrackingPressed;
- (void)_cameraButtonDoubleLightPressed;
- (void)_cameraButtonLightPressed;
- (void)_cameraButtonPressed;
- (void)_cameraPressed;
- (void)_centerBackButtonToView:(id)a3;
- (void)_commandAndControlPressed;
- (void)_confirmApplePay;
- (void)_continuousScrollPressed:(id)a3 fromButtonPress:(BOOL)a4 inDirection:(unint64_t)a5 iconType:(id)a6;
- (void)_controlCenterPressed;
- (void)_customGesturePressed:(id)a3 fromButtonPress:(BOOL)a4;
- (void)_decreaseDwellTimePressed;
- (void)_detectionModePresssed;
- (void)_disableUserInterfaceClient;
- (void)_dockPressed;
- (void)_doubleTapPressed:(id)a3 fromButtonPress:(BOOL)a4;
- (void)_dragAndDropPressed:(id)a3 fromButtonPress:(BOOL)a4 dragMenu:(BOOL)a5;
- (void)_enableDockIconActivationMode:(unint64_t)a3;
- (void)_frontFacingCameraPressed;
- (void)_goBackInMenuState:(int)a3;
- (void)_handleTouch:(int64_t)a3;
- (void)_hapticMusicPressed;
- (void)_highlightRockerButtonAtAngle:(double)a3;
- (void)_homeButton:(BOOL)a3;
- (void)_increaseDwellTimePressed;
- (void)_initializeNubbit;
- (void)_layoutButtonsWithViewForCenteringAtStart:(id)a3 includingBackButton:(BOOL)a4;
- (void)_layoutForegroundImageView;
- (void)_layoutMenuItems:(BOOL)a3 oldRockers:(id)a4 viewForCenteringAtStart:(id)a5 shouldUpdateKeyboardFocusIfNeeded:(BOOL)a6;
- (void)_layoutMenuItemsInReverse:(BOOL)a3 oldRockers:(id)a4 animateToIcon:(id)a5 shouldUpdateKeyboardFocusIfNeeded:(BOOL)a6;
- (void)_liveCaptionsPressed;
- (void)_liveSpeechPressed;
- (void)_loadDwellMenuItems;
- (void)_loadFavoritesMenuItems;
- (void)_loadGesturesMenuItems;
- (void)_loadHardwareMenuItems;
- (void)_loadInitialMenuItems;
- (void)_loadMenuItems:(BOOL)a3 viewForCenteringAtStart:(id)a4 goBackwards:(BOOL)a5 originalState:(int64_t)a6 shouldUpdateKeyboardFocusIfNeeded:(BOOL)a7;
- (void)_loadMoreMenuItems;
- (void)_loadRotateMenuItems;
- (void)_loadScrollMenuItems;
- (void)_loadSecureIntentMenuItems;
- (void)_loadSideAppMenuItems;
- (void)_loadSideAppMoreMenuItems;
- (void)_loadSiriShortcutsMenuItems;
- (void)_lockButton:(BOOL)a3;
- (void)_lockDwellControlAction:(BOOL)a3;
- (void)_longPressPressed:(id)a3 fromButtonPress:(BOOL)a4;
- (void)_menuBarPressed;
- (void)_menuExited;
- (void)_motionCuesPressed;
- (void)_mutePressed;
- (void)_nearbyDeviceControlPressed;
- (void)_notificationCenterPressed;
- (void)_openVisualIntelligence;
- (void)_orbPressed:(id)a3 fromButtonPress:(BOOL)a4;
- (void)_pinchPressed:(id)a3 mode:(unint64_t)a4;
- (void)_preloadDwellMenuItems;
- (void)_preloadInitialMenuItems;
- (void)_reachabilityPressed;
- (void)_rebootDevicePressed;
- (void)_resetForegroundImage;
- (void)_resetHoverCircleLocation;
- (void)_resetVisibility:(BOOL)a3;
- (void)_ringerSwitchPressed:(BOOL)a3;
- (void)_rotationLockPressed;
- (void)_screenshotPressed;
- (void)_scrollPressed:(id)a3 fromButtonPress:(BOOL)a4 vertical:(BOOL)a5 forward:(BOOL)a6 max:(BOOL)a7;
- (void)_setBackgroundWithType:(int)a3;
- (void)_setMaskViewMenuRadius;
- (void)_setMaskViewNubbitRadius;
- (void)_setRingerSwitchIcon:(id)a3;
- (void)_setRotationLockIcon:(id)a3;
- (void)_shakePressed;
- (void)_shortcutsDidUpdate;
- (void)_siriButtonPressed;
- (void)_sosPressed;
- (void)_speakScreenPressed;
- (void)_spotlightPressed:(id)a3;
- (void)_swapArmApplePayWithConfirmApplePayIfNeeded;
- (void)_sysdiagnosePressed;
- (void)_tapPressed:(id)a3 fromButtonPress:(BOOL)a4;
- (void)_toggleAppSwitcher;
- (void)_toggleAssistiveAccess;
- (void)_toggleDwellControlPause:(BOOL)a3;
- (void)_toggleDwellKeyboardContinuousPath;
- (void)_toggleNeedsToShowZoomWindow;
- (void)_toggleOnDeviceEyeTracking;
- (void)_trackpadPressed;
- (void)_tripleClickHomePressed;
- (void)_typeToSiriButtonPressed;
- (void)_updateBackButtonVisibility;
- (void)_updateHapticMusicIcon:(id)a3;
- (void)_updateKeyboardFocusIfNeeded;
- (void)_updateMotionCuesIcon:(id)a3;
- (void)_updateNubbitFadedProperties;
- (void)_updateProgress:(id)a3;
- (void)_updateRockerItemIfNeededForItem:(id)a3;
- (void)_updateSelectedButton;
- (void)_updateSelectedButton:(id)a3;
- (void)_updateVolumeDisplay;
- (void)_voiceControlPressed;
- (void)_volumeDown:(BOOL)a3;
- (void)_volumeUp:(BOOL)a3;
- (void)_watchRemoteScreenPressed;
- (void)dealloc;
- (void)didFailToFloatApp;
- (void)didFailToPinApp;
- (void)didMoveToWindow;
- (void)fadeNubbit;
- (void)forceReloadScrollMenuItems;
- (void)handleRealDownEvent:(CGPoint)a3;
- (void)handleRealMoveEvent:(CGPoint)a3 maxOrb:(double)a4 currentForce:(double)a5;
- (void)handleRealUpEvent:(CGPoint)a3 maxOrb:(double)a4;
- (void)highlightNubbit;
- (void)hoveredTo:(CGPoint)a3;
- (void)performPress:(int)a3 type:(int)a4 source:(int)a5;
- (void)reloadDwellMenu;
- (void)setFrame:(CGRect)a3;
- (void)setFullMenuVisible:(BOOL)a3 atPoint:(CGPoint)a4;
- (void)setNubbitVisible:(BOOL)a3;
- (void)setStyle:(int)a3;
- (void)showBannerWithText:(id)a3;
- (void)showNubbitPressedState:(BOOL)a3;
- (void)showVolumeBar:(BOOL)a3 withProgress:(double)a4;
- (void)showVolumeDisplayImmediately;
- (void)transitionMenuToNubbit:(CGPoint)a3 changeAlpha:(BOOL)a4 animate:(BOOL)a5;
- (void)transitionNubbitToMenu:(CGPoint)a3 concurrentAnimation:(id)a4 animationCompleted:(id)a5;
- (void)updateForegroundImageForAction:(id)a3;
- (void)updateRingerSwitch;
- (void)updateRockersForSubstantialTransition;
- (void)updateRotationLockSwitch;
- (void)volumeChanged;
@end

@implementation HNDRocker

- (void)setStyle:(int)a3
{
  self->_style = a3;
  if (a3)
  {
    v4 = [(HNDRocker *)self disableDashBoardGesturesAssertion];

    if (!v4)
    {
      v5 = [AXAssertion assertionWithType:AXAssertionTypeDisableDashboardSystemGestures identifier:@"AST menu active"];
      [(HNDRocker *)self setDisableDashBoardGesturesAssertion:v5];
    }
  }

  else
  {

    [(HNDRocker *)self setDisableDashBoardGesturesAssertion:0];
  }
}

- (HNDRocker)initWithFrame:(CGRect)a3
{
  v94.receiver = self;
  v94.super_class = HNDRocker;
  v3 = [(HNDView *)&v94 initWithFrame:?];
  [(HNDRocker *)v3 setAlpha:0.0];
  v4 = +[UIColor clearColor];
  [(HNDRocker *)v3 setBackgroundColor:v4];

  v5 = [(HNDRocker *)v3 layer];
  [v5 setMasksToBounds:0];

  [(HNDRocker *)v3 setClipsToBounds:0];
  [(HNDRocker *)v3 setAutoresizesSubviews:1];
  v6 = [(HNDRocker *)v3 layer];
  [v6 setDisableUpdateMask:32];

  v7 = [UIImage imageNamed:@"NubbitCenter"];
  v8 = [v7 imageWithRenderingMode:2];
  nubbitImage = v3->_nubbitImage;
  v3->_nubbitImage = v8;

  v77 = [UIBlurEffect effectWithStyle:1203];
  if (_UISolariumEnabled())
  {

    v77 = 0;
  }

  v10 = [[UIVisualEffectView alloc] initWithEffect:v77];
  backdropView = v3->_backdropView;
  v3->_backdropView = v10;

  [(HNDRocker *)v3 _setOverrideUserInterfaceStyle:2];
  v12 = [UIView alloc];
  [(UIVisualEffectView *)v3->_backdropView bounds];
  v13 = [v12 initWithFrame:?];
  maskImageView = v3->_maskImageView;
  v3->_maskImageView = v13;

  v15 = +[UIColor blackColor];
  [(UIView *)v3->_maskImageView setBackgroundColor:v15];

  v16 = [(UIView *)v3->_maskImageView layer];
  [v16 setCornerCurve:kCACornerCurveContinuous];

  [(HNDRocker *)v3 _setMaskViewNubbitRadius];
  [(HNDRocker *)v3 ax_setWantsFlexibleGlassAppearance:1];
  [(UIView *)v3->_maskImageView setAutoresizingMask:18];
  v17 = objc_alloc_init(NSMutableArray);
  stackState = v3->_stackState;
  v3->_stackState = v17;

  [(UIVisualEffectView *)v3->_backdropView setMaskView:v3->_maskImageView];
  [(HNDRocker *)v3 addSubview:v3->_backdropView];
  v19 = objc_alloc_init(AXAssistiveTouchLayoutView);
  layoutView = v3->_layoutView;
  v3->_layoutView = v19;

  [(AXAssistiveTouchLayoutView *)v3->_layoutView setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [(HNDRocker *)v3 _contentView];
  [v21 addSubview:v3->_layoutView];

  objc_initWeak(&location, v3);
  v91[0] = _NSConcreteStackBlock;
  v91[1] = 3221225472;
  v91[2] = sub_10004C064;
  v91[3] = &unk_1001D4C10;
  objc_copyWeak(&v92, &location);
  v22 = [HNDRockerButton buttonWithTitle:0 imageName:@"BackArrow" downBlock:0 upBlock:v91 showWithGuidedAccess:1 showWithAssistiveAccess:1];
  backButton = v3->_backButton;
  v3->_backButton = v22;

  [(HNDRockerButton *)v3->_backButton setIsBackButton:1];
  [(HNDRockerButton *)v3->_backButton setAlpha:0.0];
  v24 = v3->_backButton;
  v25 = sub_100042B24(@"BACK");
  [(HNDRockerButton *)v24 setAccessibilityLabel:v25];

  v26 = [(HNDRocker *)v3 _contentView];
  [v26 addSubview:v3->_backButton];

  v27 = [objc_allocWithZone(NSMutableArray) init];
  rockerItems = v3->_rockerItems;
  v3->_rockerItems = v27;

  v3->_state = 1;
  v29 = +[AXSettings sharedInstance];
  v89[0] = _NSConcreteStackBlock;
  v89[1] = 3221225472;
  v89[2] = sub_10004C0A8;
  v89[3] = &unk_1001D3460;
  objc_copyWeak(&v90, &location);
  v30 = objc_loadWeakRetained(&location);
  [v29 registerUpdateBlock:v89 forRetrieveSelector:"assistiveTouchIdleOpacity" withListener:v30];

  objc_destroyWeak(&v90);
  v31 = +[NSNotificationCenter defaultCenter];
  [v31 addObserver:v3 selector:"_siriPrefsChanged:" name:AFPreferencesDidChangeNotification object:0];

  v32 = +[NSNotificationCenter defaultCenter];
  [v32 addObserver:v3 selector:"_siriPrefsChanged:" name:kAXSHomeButtonAssistantChangedNotification object:0];

  [(HNDRocker *)v3 setAutoresizesSubviews:1];
  v76 = AXPIDefaultAppearanceForDevice();
  [v76 fingerWidth];
  v34 = v33;
  AX_CGRectGetCenter();
  v37 = [[AXPIFingerView alloc] initWithFrame:v76 appearanceDelegate:{v35 - v34 * 0.5, v36 - v34 * 0.5, v34, v34}];
  middleCircle = v3->_middleCircle;
  v3->_middleCircle = v37;

  [(AXPIFingerView *)v3->_middleCircle setHidden:1];
  v39 = [(HNDRocker *)v3 _contentView];
  [v39 addSubview:v3->_middleCircle];

  v40 = objc_allocWithZone(AXDispatchTimer);
  v41 = &_dispatch_main_q;
  v42 = [v40 initWithTargetSerialQueue:&_dispatch_main_q];
  volumeUpdateTimer = v3->_volumeUpdateTimer;
  v3->_volumeUpdateTimer = v42;

  v44 = +[HNDHandManager sharedManager];
  v3->_isNubbitVisible = [v44 alwaysShowMenu];

  v45 = [objc_allocWithZone(AXDispatchTimer) initWithTargetSerialQueue:&_dispatch_main_q];
  homeButtonDismissTimer = v3->_homeButtonDismissTimer;
  v3->_homeButtonDismissTimer = v45;

  v87[1] = _NSConcreteStackBlock;
  v87[2] = 3221225472;
  v87[3] = sub_10004C11C;
  v87[4] = &unk_1001D3488;
  v47 = v3;
  v88 = v47;
  AXPerformBlockAsynchronouslyOnMainThread();
  v48 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
  nubbitFadeTimer = v47->_nubbitFadeTimer;
  v47->_nubbitFadeTimer = v48;

  v50 = +[AXSettings sharedInstance];
  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = sub_10004C158;
  v86[3] = &unk_1001D3460;
  objc_copyWeak(v87, &location);
  [v50 registerUpdateBlock:v86 forRetrieveSelector:"assistiveTouchMainScreenCustomization" withListener:v47];

  objc_destroyWeak(v87);
  v51 = +[AXSettings sharedInstance];
  v84[0] = _NSConcreteStackBlock;
  v84[1] = 3221225472;
  v84[2] = sub_10004C19C;
  v84[3] = &unk_1001D3460;
  objc_copyWeak(&v85, &location);
  [v51 registerUpdateBlock:v84 forRetrieveSelector:"assistiveTouchMouseDwellControlEnabled" withListener:v47];

  objc_destroyWeak(&v85);
  v52 = +[AXSettings sharedInstance];
  v82[0] = _NSConcreteStackBlock;
  v82[1] = 3221225472;
  v82[2] = sub_10004C1DC;
  v82[3] = &unk_1001D3460;
  objc_copyWeak(&v83, &location);
  [v52 registerUpdateBlock:v82 forRetrieveSelector:"assistiveTouchMouseDwellControlAutorevertEnabled" withListener:v47];

  objc_destroyWeak(&v83);
  v53 = +[AXSettings sharedInstance];
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_10004C21C;
  v80[3] = &unk_1001D3460;
  objc_copyWeak(&v81, &location);
  [v53 registerUpdateBlock:v80 forRetrieveSelector:"assistiveTouchAlwaysShowMenuEnabled" withListener:v47];

  objc_destroyWeak(&v81);
  v54 = +[AXSiriShortcutsManager sharedManager];
  v78[0] = _NSConcreteStackBlock;
  v78[1] = 3221225472;
  v78[2] = sub_10004C25C;
  v78[3] = &unk_1001D4C38;
  objc_copyWeak(&v79, &location);
  v55 = [v54 registerShortcutsDidChangeBlock:v78];
  shortcutsUpdateToken = v47->_shortcutsUpdateToken;
  v47->_shortcutsUpdateToken = v55;

  v74 = [(AXAssistiveTouchLayoutView *)v3->_layoutView topAnchor];
  v75 = [(UIVisualEffectView *)v3->_backdropView contentView];
  v73 = [v75 topAnchor];
  v72 = [v74 constraintEqualToAnchor:v73];
  v95[0] = v72;
  v70 = [(AXAssistiveTouchLayoutView *)v3->_layoutView bottomAnchor];
  v71 = [(UIVisualEffectView *)v3->_backdropView contentView];
  v69 = [v71 bottomAnchor];
  v68 = [v70 constraintEqualToAnchor:v69];
  v95[1] = v68;
  v57 = [(AXAssistiveTouchLayoutView *)v3->_layoutView leadingAnchor];
  v58 = [(UIVisualEffectView *)v3->_backdropView contentView];
  v59 = [v58 leadingAnchor];
  v60 = [v57 constraintEqualToAnchor:v59];
  v95[2] = v60;
  v61 = [(AXAssistiveTouchLayoutView *)v3->_layoutView trailingAnchor];
  v62 = [(UIVisualEffectView *)v3->_backdropView contentView];
  v63 = [v62 trailingAnchor];
  v64 = [v61 constraintEqualToAnchor:v63];
  v95[3] = v64;
  v65 = [NSArray arrayWithObjects:v95 count:4];
  [NSLayoutConstraint activateConstraints:v65];

  v66 = v47;
  objc_destroyWeak(&v79);

  objc_destroyWeak(&v92);
  objc_destroyWeak(&location);

  return v66;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kAXSTripleHomeEnabledNotification, 0);
  v4 = +[AXSiriShortcutsManager sharedManager];
  [v4 unregisterShortcutsDidChangeBlock:self->_shortcutsUpdateToken];

  v5 = [(HNDRocker *)self hitTestCategoryAssertion];
  [v5 invalidate];

  v6.receiver = self;
  v6.super_class = HNDRocker;
  [(HNDRocker *)&v6 dealloc];
}

- (void)setFrame:(CGRect)a3
{
  rect = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *&v43.size.width = self;
  *&v43.size.height = HNDRocker;
  [(CGSize *)&v43.size setFrame:?];
  v7 = [(HNDRocker *)self displayManager];
  [v7 screenBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  +[HNDRocker nubbitSize];
  v17 = v16 / -3.0;
  v19 = v18 / -3.0;
  v44.origin.x = v9;
  v44.origin.y = v11;
  v44.size.width = v13;
  v44.size.height = v15;
  v45 = CGRectInset(v44, v17, v19);
  v20 = v45.origin.x;
  v21 = v45.origin.y;
  v22 = v45.size.width;
  height = v45.size.height;
  [v7 foreheadRect];
  [v7 convertFrameToInterfaceOrientation:?];
  v39 = v24;
  v40 = v23;
  v37 = v26;
  v38 = v25;
  v43.origin.x = x;
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = rect;
  MaxX = CGRectGetMaxX(v46);
  v28 = v20;
  v47.origin.x = v20;
  v47.origin.y = v21;
  v47.size.width = v22;
  v47.size.height = height;
  if (MaxX > CGRectGetMaxX(v47))
  {
    v29 = y;
    v30 = rect;
LABEL_6:
    v33 = height;
    v34 = 0;
    goto LABEL_7;
  }

  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = rect;
  MaxY = CGRectGetMaxY(v48);
  v49.origin.x = v20;
  v49.origin.y = v21;
  v49.size.width = v22;
  v49.size.height = height;
  if (MaxY > CGRectGetMaxY(v49) || (v50.origin.x = x, v50.origin.y = y, v50.size.width = width, v50.size.height = rect, MinX = CGRectGetMinX(v50), v51.origin.x = v20, v51.origin.y = v21, v51.size.width = v22, v51.size.height = height, MinX < CGRectGetMinX(v51)))
  {
    v29 = y;
    v30 = rect;
    goto LABEL_6;
  }

  v54.origin.x = x;
  v29 = y;
  v54.origin.y = y;
  v54.size.width = width;
  v30 = rect;
  v54.size.height = rect;
  MinY = CGRectGetMinY(v54);
  v55.origin.x = v20;
  v55.origin.y = v21;
  v55.size.height = height;
  v55.size.width = v22;
  v33 = height;
  v34 = MinY >= CGRectGetMinX(v55);
LABEL_7:
  if (AXDeviceHasJindo())
  {
    v52.origin.y = v39;
    v52.origin.x = v40;
    v52.size.height = v37;
    v52.size.width = v38;
    v56.origin.x = v43.origin.x;
    v56.origin.y = v29;
    v56.size.width = width;
    v56.size.height = v30;
    v53 = CGRectIntersection(v52, v56);
    if (v34 & CGRectIsNull(v53))
    {
      goto LABEL_14;
    }
  }

  else if (v34)
  {
    goto LABEL_14;
  }

  v35 = ASTLogCommon();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
  {
    sub_1001296C0(v35, v43.origin.x, v29, width, v30, v28, v21, v22, v33);
  }

LABEL_14:
}

- (void)_setMaskViewNubbitRadius
{
  [(HNDRocker *)self _cornerRadiusForCurrentDevice];
  v4 = v3;
  v5 = [(UIView *)self->_maskImageView layer];
  [v5 setCornerRadius:v4];

  v6 = [(UIView *)self->_maskImageView layer];
  [v6 cornerRadius];
  v8 = v7;
  v9 = [(UIVisualEffectView *)self->_backdropView layer];
  [v9 setCornerRadius:v8];

  v13 = [(UIVisualEffectView *)self->_backdropView layer];
  [v13 cornerRadius];
  v11 = v10;
  v12 = [(HNDRocker *)self layer];
  [v12 setCornerRadius:v11];
}

- (void)_setMaskViewMenuRadius
{
  AXCornerRadiusForBackground();
  v4 = v3;
  v5 = [(UIView *)self->_maskImageView layer];
  [v5 setCornerRadius:v4];

  v6 = [(UIView *)self->_maskImageView layer];
  [v6 cornerRadius];
  v8 = v7;
  v9 = [(UIVisualEffectView *)self->_backdropView layer];
  [v9 setCornerRadius:v8];

  v13 = [(UIView *)self->_maskImageView layer];
  [v13 cornerRadius];
  v11 = v10;
  v12 = [(HNDRocker *)self layer];
  [v12 setCornerRadius:v11];
}

- (double)_cornerRadiusForCurrentDevice
{
  if (AXDeviceHasHomeButton())
  {
    +[HNDRocker nubbitSize];
    v3 = 0.25;
    return v2 * v3;
  }

  if (!AXDeviceIsPad())
  {
    +[HNDRocker nubbitSize];
    v3 = 0.5;
    return v2 * v3;
  }

  +[HNDHandManager displayCornerRadius];
  return result;
}

- (BOOL)_backButtonShouldBeHidden
{
  if (self->_state == 1 || self->_volumeBar || !self->_backgroundType)
  {
    return 1;
  }

  else
  {
    return [(HNDRocker *)self shouldForciblyHideBackButtonForAnimation];
  }
}

- (void)_updateBackButtonVisibility
{
  v3 = [(HNDRocker *)self _backButtonShouldBeHidden];
  v4 = 1.0;
  if (v3)
  {
    v4 = 0.0;
  }

  [(HNDRockerButton *)self->_backButton setAlpha:v4];
  backButton = self->_backButton;

  [(HNDRockerButton *)backButton setUserInteractionEnabled:v3 ^ 1];
}

- (void)_updateProgress:(id)a3
{
  v4 = a3;
  if (self->_startInterval == 0.0)
  {
    self->_startInterval = CFAbsoluteTimeGetCurrent();
    [(HNDRocker *)self _loadMenuItems:1 viewForCenteringAtStart:0 goBackwards:0 originalState:self->_state];
  }

  self->_progress = (CFAbsoluteTimeGetCurrent() - self->_startInterval) / 0.2;
  [(HNDRocker *)self setNeedsDisplay];
  progress = self->_progress;
  if ((progress >= 0.5 || !self->_useCircle) && !self->_sentRockers)
  {
    self->_sentRockers = 1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004CA94;
    v7[3] = &unk_1001D3488;
    v7[4] = self;
    [UIView animateWithDuration:v7 animations:0.2];
    progress = self->_progress;
  }

  if (progress >= 1.0)
  {
    self->_progress = 1.0;
    [(HNDRocker *)self setNeedsDisplay];
    self->_linkRunning = 0;
    v6 = +[NSRunLoop currentRunLoop];
    [v4 removeFromRunLoop:v6 forMode:NSDefaultRunLoopMode];
  }
}

- (BOOL)_replaceRingerWithOrientationLock
{
  if (AXDeviceIsPad() && !j__AXDeviceIsRingerSwitchAvailable())
  {
    return AXAssistiveAccessEnabled() ^ 1;
  }

  else
  {
    v2 = +[HNDEventManager sharedManager];
    if ([v2 sideSwitchUsedForOrientation])
    {
      v3 = AXAssistiveAccessEnabled() ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)_includeRingerButtonInHardware
{
  if (AXDeviceIsPad())
  {
    return 1;
  }

  return j__AXDeviceIsRingerSwitchAvailable();
}

- (int64_t)_indexForAngle:(double)a3
{
  v4 = [(NSMutableArray *)self->_rockerItems count];
  if (v4 == 6)
  {
    result = 0;
    if (a3 < 315.0 && a3 >= 0.0)
    {
      if (a3 >= 45.0)
      {
        if (a3 >= 135.0)
        {
          if (a3 < 180.0)
          {
            return 3;
          }

          if (a3 < 225.0)
          {
            return 4;
          }

          v6 = a3 >= 315.0 || a3 < 225.0;
          v7 = 5;
          goto LABEL_11;
        }

        return 2;
      }

      return 1;
    }
  }

  else
  {
    if (v4 != 4)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    result = 0;
    if (a3 < 315.0 && a3 >= 45.0)
    {
      if (a3 >= 135.0)
      {
        if (a3 >= 225.0)
        {
          v6 = a3 >= 315.0 || a3 < 225.0;
          v7 = 3;
LABEL_11:
          if (v6)
          {
            return 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            return v7;
          }
        }

        return 2;
      }

      return 1;
    }
  }

  return result;
}

- (void)_highlightRockerButtonAtAngle:(double)a3
{
  v4 = [(HNDRocker *)self _indexForAngle:a3];
  self->_selectedButtonIndex = v4;
  [(HNDRockerButton *)self->_selectedButton setSelected:0];
  v5 = [(NSMutableArray *)self->_rockerItems objectAtIndex:v4];
  selectedButton = self->_selectedButton;
  self->_selectedButton = v5;

  [(HNDRockerButton *)self->_selectedButton setSelected:1];
  middleCircle = self->_middleCircle;

  [(AXPIFingerView *)middleCircle setSelected:0];
}

- (BOOL)_angleIndicatesReturnToCenter:(double)a3
{
  v5 = [(NSMutableArray *)self->_rockerItems count];
  if (v5 == 6)
  {
    selectedButtonIndex = self->_selectedButtonIndex;
    if (a3 >= 225.0 || (a3 >= 135.0 ? (v13 = selectedButtonIndex == 0) : (v13 = 0), !v13))
    {
      if (a3 >= 225.0 || (a3 >= 135.0 ? (v14 = selectedButtonIndex == 1) : (v14 = 0), !v14))
      {
        if (a3 >= 315.0 || (a3 >= 225.0 ? (v15 = selectedButtonIndex == 2) : (v15 = 0), !v15))
        {
          v17 = a3 >= 315.0 && (selectedButtonIndex - 3) < 2;
          result = 1;
          if (a3 >= 45.0 && !v17 && (a3 >= 135.0 || a3 < 45.0 || selectedButtonIndex != 5))
          {
            return 0;
          }

          return result;
        }
      }
    }

    return 1;
  }

  if (v5 != 4)
  {
    return 0;
  }

  v6 = self->_selectedButtonIndex;
  if (a3 < 225.0 && a3 >= 135.0 && v6 == 0)
  {
    return 1;
  }

  if (a3 < 315.0 && a3 >= 225.0 && v6 == 1)
  {
    return 1;
  }

  v10 = a3 >= 315.0 && v6 == 2;
  result = 1;
  if (a3 >= 45.0 && !v10 && (a3 >= 135.0 || a3 < 45.0 || v6 != 3))
  {
    return 0;
  }

  return result;
}

- (id)rockerHitTest:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10004D0B4;
  v16 = sub_10004D0C4;
  v17 = 0;
  v6 = self->_rockerItems;
  [(HNDRockerButton *)self->_backButton alpha];
  if (v7 == 1.0)
  {
    v8 = [(NSMutableArray *)v6 arrayByAddingObject:self->_backButton];

    v6 = v8;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004D0CC;
  v11[3] = &unk_1001D4C60;
  *&v11[6] = x;
  *&v11[7] = y;
  v11[4] = self;
  v11[5] = &v12;
  [(NSMutableArray *)v6 enumerateObjectsUsingBlock:v11];
  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

- (void)_updateSelectedButton
{
  if (([(AXPIFingerView *)self->_middleCircle isHidden]& 1) == 0)
  {
    [(AXPIFingerView *)self->_middleCircle bounds];
    AX_CGRectGetCenter();
    [(AXPIFingerView *)self->_middleCircle convertPoint:self toView:?];

    [(HNDRocker *)self hoveredTo:?];
  }
}

- (void)_updateSelectedButton:(id)a3
{
  v5 = a3;
  selectedButton = self->_selectedButton;
  if (selectedButton != v5)
  {
    v7 = v5;
    [(HNDRockerButton *)selectedButton setSelected:0];
    [(HNDRockerButton *)self->_selectedButton setHighlighted:0];
    objc_storeStrong(&self->_selectedButton, a3);
    [(HNDRockerButton *)self->_selectedButton setSelected:1];
    selectedButton = [(NSMutableArray *)self->_rockerItems indexOfObject:self->_selectedButton];
    v5 = v7;
    self->_selectedButtonIndex = selectedButton;
  }

  _objc_release_x1(selectedButton, v5);
}

- (void)hoveredTo:(CGPoint)a3
{
  v4 = [(HNDRocker *)self rockerHitTest:a3.x, a3.y];
  [(HNDRocker *)self hoveredToRockerButton:v4];
}

- (CGRect)onScreenFrameForRockerButton:(id)a3
{
  v4 = a3;
  v5 = [v4 imageView];
  [v5 frame];
  x = v6;
  y = v8;
  width = v10;
  height = v12;

  v14 = [v4 label];

  if (v14)
  {
    v15 = [v4 imageView];
    [v15 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [v4 label];
    [v24 frame];
    v44.origin.x = v25;
    v44.origin.y = v26;
    v44.size.width = v27;
    v44.size.height = v28;
    v41.origin.x = v17;
    v41.origin.y = v19;
    v41.size.width = v21;
    v41.size.height = v23;
    v42 = CGRectUnion(v41, v44);
    x = v42.origin.x;
    y = v42.origin.y;
    width = v42.size.width;
    height = v42.size.height;
  }

  [(HNDRocker *)self convertRect:v4 fromView:x, y, width, height];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v37 = v30;
  v38 = v32;
  v39 = v34;
  v40 = v36;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (id)currentlyVisibleRockerItems
{
  v3 = [(NSMutableArray *)self->_rockerItems copy];
  [(HNDRockerButton *)self->_backButton alpha];
  if (v4 == 1.0)
  {
    v5 = [v3 arrayByAddingObject:self->_backButton];

    v3 = v5;
  }

  return v3;
}

- (void)volumeChanged
{
  if ([(HNDRocker *)self isFullMenuVisible])
  {
    v3 = +[HNDHandManager sharedManager];
    [v3 volumeLevel];
    [(HNDRocker *)self showVolumeBar:1 withProgress:?];
  }
}

- (void)showVolumeBar:(BOOL)a3 withProgress:(double)a4
{
  if (a3)
  {
    v6 = +[AXSettings sharedInstance];
    v7 = [v6 assistiveTouchMainScreenCustomization];
    v8 = [v7 allValues];

    if ([v8 containsObject:AXAssistiveTouchIconTypeVolumeUp])
    {
      v9 = 1;
    }

    else
    {
      v9 = [v8 containsObject:AXAssistiveTouchIconTypeVolumeDown];
    }

    state = self->_state;
    v13 = state != 2 && ((state == 1) & v9) == 0;
    if (!v13 && self->_style == 1)
    {
      [(HNDRocker *)self _updateBackButtonVisibility];
      volumeBar = self->_volumeBar;
      if (!volumeBar)
      {
        v15 = objc_opt_new();
        v16 = self->_volumeBar;
        self->_volumeBar = v15;

        [(HNDVolumeBar *)self->_volumeBar setTranslatesAutoresizingMaskIntoConstraints:0];
        v17 = [(HNDRocker *)self _contentView];
        [v17 addSubview:self->_volumeBar];
        v28 = [(HNDVolumeBar *)self->_volumeBar centerXAnchor];
        v18 = [v17 centerXAnchor];
        v19 = [v28 constraintEqualToAnchor:v18];
        v34[0] = v19;
        v20 = [(HNDVolumeBar *)self->_volumeBar centerYAnchor];
        v21 = [v17 centerYAnchor];
        v22 = [v20 constraintEqualToAnchor:v21];
        v34[1] = v22;
        v23 = [NSArray arrayWithObjects:v34 count:2];
        [NSLayoutConstraint activateConstraints:v23];

        volumeBar = self->_volumeBar;
      }

      [(HNDVolumeBar *)volumeBar setProgress:a4];
      [(HNDVolumeBar *)self->_volumeBar setNeedsDisplay];
      volumeHideTimer = self->_volumeHideTimer;
      if (!volumeHideTimer)
      {
        v25 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
        v26 = self->_volumeHideTimer;
        self->_volumeHideTimer = v25;

        volumeHideTimer = self->_volumeHideTimer;
      }

      [(AXDispatchTimer *)volumeHideTimer cancel];
      v27 = self->_volumeHideTimer;
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10004DA68;
      v29[3] = &unk_1001D3488;
      v29[4] = self;
      [(AXDispatchTimer *)v27 afterDelay:v29 processBlock:1.5];
    }
  }

  else
  {
    [(AXDispatchTimer *)self->_volumeHideTimer cancel];
    v10 = self->_volumeHideTimer;
    self->_volumeHideTimer = 0;

    if ([(HNDRocker *)self style])
    {
      v11 = 0.5;
    }

    else
    {
      v11 = 0.0;
    }

    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x3032000000;
    v32[3] = sub_10004D0B4;
    v32[4] = sub_10004D0C4;
    v33 = self->_volumeBar;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10004D954;
    v31[3] = &unk_1001D3488;
    v31[4] = self;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10004D9A8;
    v30[3] = &unk_1001D4C88;
    v30[4] = self;
    v30[5] = v32;
    [UIView animateWithDuration:v31 animations:v30 completion:v11];
    _Block_object_dispose(v32, 8);
  }
}

- (void)_goBackInMenuState:(int)a3
{
  state = self->_state;
  if (state <= 6)
  {
    if (state <= 3)
    {
      if ((state - 2) >= 2)
      {
        if (state == 1 && a3 == 3)
        {

          [(HNDRocker *)self _menuExited];
        }

        return;
      }

      goto LABEL_27;
    }

    if (state == 5)
    {
      if (a3 != 3)
      {
        return;
      }

      if (j__AXDeviceIsSiriAvailable())
      {
        v7 = 6;
      }

      else if (j__AXDeviceIsVoiceControlAvailable())
      {
        v7 = 6;
      }

      else
      {
        v7 = 1;
      }

      goto LABEL_29;
    }

LABEL_22:
    if (a3 != 3)
    {
      return;
    }

    v7 = 2;
    goto LABEL_29;
  }

  if (state <= 8)
  {
    if (state != 7)
    {
      if (a3 != 3)
      {
        return;
      }

      v7 = 7;
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if ((state - 9) >= 2)
  {
    if (state != 11)
    {
      if (state != 12 || a3 != 3)
      {
        return;
      }

      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_27:
  if (a3 != 3)
  {
    return;
  }

LABEL_28:
  v7 = 1;
LABEL_29:
  if ([(NSMutableArray *)self->_stackState count])
  {
    v8 = [(NSMutableArray *)self->_stackState lastObject];
    v9 = [v8 intValue];
    v10 = self->_state;

    if (v10 != v9)
    {
      _AXAssert();
    }

    [(NSMutableArray *)self->_stackState removeLastObject];
    v11 = [(NSMutableArray *)self->_stackState lastObject];
    v7 = [v11 intValue];
  }

  self->_state = v7;

  [(HNDRocker *)self _loadMenuItems:1 viewForCenteringAtStart:0 goBackwards:1 originalState:state];
}

- (void)performPress:(int)a3 type:(int)a4 source:(int)a5
{
  v7 = *&a3;
  [(AXPIFingerView *)self->_middleCircle setPressed:a3 == 2 animated:1];
  if (a4 == 2)
  {
LABEL_2:

    [(HNDRocker *)self _goBackInMenuState:v7];
    return;
  }

  selectedButton = self->_selectedButton;
  if (!selectedButton)
  {
    if (a5 == 2 && a4 == 1)
    {
      return;
    }

    goto LABEL_2;
  }

  [(HNDRockerButton *)selectedButton performPress:v7 == 2];
}

- (void)handleRealDownEvent:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  self->_farthestTrackingDistance = 0.0;
  p_windowDownStartPoint = &self->_windowDownStartPoint;
  v7 = [(HNDRocker *)self window];
  [v7 convertPoint:self fromView:{x, y}];
  p_windowDownStartPoint->x = v8;
  p_windowDownStartPoint->y = v9;

  if (!self->_style)
  {
    [(AXDispatchTimer *)self->_nubbitFadeTimer cancel];
    v10 = [(HNDView *)self controlDelegate];
    [v10 viewPressedDown:self];
  }
}

- (void)handleRealMoveEvent:(CGPoint)a3 maxOrb:(double)a4 currentForce:(double)a5
{
  y = a3.y;
  x = a3.x;
  if ([(HNDRocker *)self pointInside:0 withEvent:a3.x, a3.y, a4, a5]&& AXForceTouchAvailableAndEnabled())
  {
    v9 = [(HNDRocker *)self window];
    [v9 convertPoint:self fromView:{x, y}];
    SCRCMathGetDistanceBetweenPoints();
    v11 = v10;

    farthestTrackingDistance = self->_farthestTrackingDistance;
    if (v11 >= farthestTrackingDistance)
    {
      farthestTrackingDistance = v11;
    }

    self->_farthestTrackingDistance = farthestTrackingDistance;
    if (!self->_activatedOrbAction)
    {
      AXForceTouchThresholdPeek();
      if (v13 < a4 && self->_farthestTrackingDistance < 15.0)
      {
        v14 = ASTLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Reached orb threshold, triggered orb action", v16, 2u);
        }

        self->_orbActionThresholdReached = 1;
        v15 = [(HNDView *)self controlDelegate];
        [v15 viewOrbActionTriggered:self];

        [(HNDRocker *)self fadeNubbit];
        self->_activatedOrbAction = 1;
      }
    }
  }
}

- (void)handleRealUpEvent:(CGPoint)a3 maxOrb:(double)a4
{
  style = self->_style;
  v7 = [(HNDRocker *)self pointInside:0 withEvent:a3.x, a3.y];
  if (style)
  {
    if (v7 && !self->_selectedButton)
    {
      [(HNDRocker *)self performPress:3 type:1 source:1];
    }
  }

  else
  {
    if (v7)
    {
      v8 = [(HNDRocker *)self displayManager];
      if ([v8 playedHapticForCurrentEvent])
      {
        orbActionThresholdReached = self->_orbActionThresholdReached;

        if (orbActionThresholdReached)
        {
          sub_100043CB4(2);
          self->_orbActionThresholdReached = 0;
        }
      }

      else
      {
      }

      if (!AXForceTouchAvailableAndEnabled() || (AXForceTouchThresholdPeek(), v10 >= a4))
      {
        v11 = [(HNDView *)self controlDelegate];
        [v11 viewPressedUp:self];
      }
    }

    [(HNDRocker *)self fadeNubbit];
  }

  [(HNDRocker *)self resetOrbAction];
}

- (void)updateRockersForSubstantialTransition
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(HNDRocker *)self initialItems];
  v4 = [(HNDRocker *)self touchItems];
  v5 = [(HNDRocker *)self hardwareItems];
  v6 = [(HNDRocker *)self rotateItems];
  v7 = [(HNDRocker *)self moreItems];
  v8 = [(HNDRocker *)self scrollItems];
  v9 = [(HNDRocker *)self dwellItems];
  v10 = [NSArray axArrayWithPossiblyNilArrays:8, v3, v4, v5, v6, v7, v8, v9, self->_rockerItems];

  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [v15 substantialTransitionOccurredBlock];

        if (v16)
        {
          v17 = objc_autoreleasePoolPush();
          v18 = [v15 substantialTransitionOccurredBlock];
          v18[2]();

          objc_autoreleasePoolPop(v17);
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }
}

- (id)_rockerButtonForLocation:(id)a3 buttonType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_100218A88 != -1)
  {
    sub_1001297AC();
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeDwellPauseToggle])
  {
    v8 = +[HNDHandManager sharedManager];
    v9 = [v8 dwellControlPaused];

    v10 = &AXAssistiveTouchIconTypeDwellResume;
    if (!v9)
    {
      v10 = &AXAssistiveTouchIconTypeDwellPause;
    }
  }

  else
  {
    if (![v7 isEqualToString:AXAssistiveTouchIconTypeDwellLockToggle])
    {
      goto LABEL_11;
    }

    v11 = +[HNDHandManager sharedManager];
    v12 = [v11 dwellControlAutorevertEnabled];

    v10 = &AXAssistiveTouchIconTypeDwellUnlock;
    if (v12)
    {
      v10 = &AXAssistiveTouchIconTypeDwellLock;
    }
  }

  v13 = *v10;

  v7 = v13;
LABEL_11:
  v14 = [qword_100218A78 containsObject:v7];
  v15 = [qword_100218A80 containsObject:v7];
  v16 = AXUIAssistiveTouchImageNameForName();
  v17 = AXUIAssistiveTouchStringForName();
  v18 = [HNDRockerButton buttonWithTitle:v17 imageName:v16 downBlock:0 upBlock:0 showWithGuidedAccess:v14 ^ 1 showWithAssistiveAccess:v15 ^ 1];

  [v18 setType:v7];
  v19 = AXAssistiveTouchIconTypeTripleClick;
  if ([v7 isEqualToString:AXAssistiveTouchIconTypeTripleClick])
  {
    v20 = self->_tripleClickButton == 0;
    objc_storeStrong(&self->_tripleClickButton, v18);
    if (v20)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100052224, kAXSTripleHomeEnabledNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    v22 = +[AXSpringBoardServer server];
    v23 = [v22 visibleTripleClickItems];

    if ([v23 count] == 1)
    {
      v24 = [v23 firstObject];
      v25 = +[AXTripleClickHelpers localizedTitleForAccessibilityShortcutOption:](AXTripleClickHelpers, "localizedTitleForAccessibilityShortcutOption:", [v24 intValue]);

      if (v25)
      {
        [v18 setTitle:v25];
      }

      else
      {
        v26 = [v18 title];
        [v18 setTitle:v26];
      }
    }
  }

  objc_initWeak(&location, self);
  if ([v7 isEqualToString:AXAssistiveTouchIconTypeNotificationCenter])
  {
    v247[0] = _NSConcreteStackBlock;
    v247[1] = 3221225472;
    v247[2] = sub_1000522B8;
    v247[3] = &unk_1001D4C10;
    objc_copyWeak(&v248, &location);
    [v18 setUpBlock:v247];
    objc_destroyWeak(&v248);
LABEL_52:
    [v18 setLocation:v6];
    v27 = v18;
LABEL_53:
    v28 = v27;
    v18 = v28;
    goto LABEL_54;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypePinch])
  {
    v245[0] = _NSConcreteStackBlock;
    v245[1] = 3221225472;
    v245[2] = sub_10005230C;
    v245[3] = &unk_1001D4C10;
    objc_copyWeak(&v246, &location);
    [v18 setUpBlock:v245];
    objc_destroyWeak(&v246);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeRotate])
  {
    v243[0] = _NSConcreteStackBlock;
    v243[1] = 3221225472;
    v243[2] = sub_10005236C;
    v243[3] = &unk_1001D4C10;
    objc_copyWeak(&v244, &location);
    [v18 setUpBlock:v243];
    objc_destroyWeak(&v244);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypePinchAndRotate])
  {
    v241[0] = _NSConcreteStackBlock;
    v241[1] = 3221225472;
    v241[2] = sub_1000523CC;
    v241[3] = &unk_1001D4C10;
    objc_copyWeak(&v242, &location);
    [v18 setUpBlock:v241];
    objc_destroyWeak(&v242);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeDoubleTap])
  {
    v239[0] = _NSConcreteStackBlock;
    v239[1] = 3221225472;
    v239[2] = sub_10005242C;
    v239[3] = &unk_1001D4C10;
    objc_copyWeak(&v240, &location);
    [v18 setUpBlock:v239];
    objc_destroyWeak(&v240);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeLongPress])
  {
    v237[0] = _NSConcreteStackBlock;
    v237[1] = 3221225472;
    v237[2] = sub_10005248C;
    v237[3] = &unk_1001D4C10;
    objc_copyWeak(&v238, &location);
    [v18 setUpBlock:v237];
    objc_destroyWeak(&v238);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeDragAndDrop])
  {
    v235[0] = _NSConcreteStackBlock;
    v235[1] = 3221225472;
    v235[2] = sub_1000524EC;
    v235[3] = &unk_1001D4C10;
    objc_copyWeak(&v236, &location);
    [v18 setUpBlock:v235];
    objc_destroyWeak(&v236);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeMoveMenu])
  {
    v233[0] = _NSConcreteStackBlock;
    v233[1] = 3221225472;
    v233[2] = sub_100052550;
    v233[3] = &unk_1001D4C10;
    objc_copyWeak(&v234, &location);
    [v18 setUpBlock:v233];
    objc_destroyWeak(&v234);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeSpotlight])
  {
    v231[0] = _NSConcreteStackBlock;
    v231[1] = 3221225472;
    v231[2] = sub_1000525B4;
    v231[3] = &unk_1001D4C10;
    objc_copyWeak(&v232, &location);
    [v18 setUpBlock:v231];
    objc_destroyWeak(&v232);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeForceTap])
  {
    v229[0] = _NSConcreteStackBlock;
    v229[1] = 3221225472;
    v229[2] = sub_100052610;
    v229[3] = &unk_1001D4C10;
    objc_copyWeak(&v230, &location);
    [v18 setUpBlock:v229];
    objc_destroyWeak(&v230);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeLockScreen])
  {
    [v18 setDownBlock:0];
    v227[0] = _NSConcreteStackBlock;
    v227[1] = 3221225472;
    v227[2] = sub_100052670;
    v227[3] = &unk_1001D4C10;
    objc_copyWeak(&v228, &location);
    [v18 setUpBlock:v227];
    [v18 setIsModalDown:1];
    objc_destroyWeak(&v228);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeVolumeDown])
  {
    v225[0] = _NSConcreteStackBlock;
    v225[1] = 3221225472;
    v225[2] = sub_1000526B0;
    v225[3] = &unk_1001D4C10;
    objc_copyWeak(&v226, &location);
    [v18 setDownBlock:v225];
    v223[0] = _NSConcreteStackBlock;
    v223[1] = 3221225472;
    v223[2] = sub_1000526F4;
    v223[3] = &unk_1001D4C10;
    objc_copyWeak(&v224, &location);
    [v18 setUpBlock:v223];
    [v18 setIsModalDown:1];
    objc_destroyWeak(&v224);
    objc_destroyWeak(&v226);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeVolumeUp])
  {
    v221[0] = _NSConcreteStackBlock;
    v221[1] = 3221225472;
    v221[2] = sub_100052738;
    v221[3] = &unk_1001D4C10;
    objc_copyWeak(&v222, &location);
    [v18 setDownBlock:v221];
    v219[0] = _NSConcreteStackBlock;
    v219[1] = 3221225472;
    v219[2] = sub_10005277C;
    v219[3] = &unk_1001D4C10;
    objc_copyWeak(&v220, &location);
    [v18 setUpBlock:v219];
    [v18 setIsModalDown:1];
    objc_destroyWeak(&v220);
    objc_destroyWeak(&v222);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:v19])
  {
    v217[0] = _NSConcreteStackBlock;
    v217[1] = 3221225472;
    v217[2] = sub_1000527C0;
    v217[3] = &unk_1001D4C10;
    objc_copyWeak(&v218, &location);
    [v18 setUpBlock:v217];
    [v18 setTag:111];
    objc_destroyWeak(&v218);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeRotateScreen])
  {
    v215[0] = _NSConcreteStackBlock;
    v215[1] = 3221225472;
    v215[2] = sub_100052800;
    v215[3] = &unk_1001D4C10;
    objc_copyWeak(&v216, &location);
    [v18 setUpBlock:v215];
    [v18 setTag:108];
    objc_destroyWeak(&v216);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeMute])
  {
    v213[0] = _NSConcreteStackBlock;
    v213[1] = 3221225472;
    v213[2] = sub_10005285C;
    v213[3] = &unk_1001D4C10;
    objc_copyWeak(&v214, &location);
    [v18 setUpBlock:v213];
    [v18 setTag:100];
    [(HNDRocker *)self _setRingerSwitchIcon:v18];
    objc_destroyWeak(&v214);
    goto LABEL_52;
  }

  if (AXDeviceHasStaccato() && [v7 isEqualToString:AXAssistiveTouchIconTypeActionButton])
  {
    v211[0] = _NSConcreteStackBlock;
    v211[1] = 3221225472;
    v211[2] = sub_1000528A0;
    v211[3] = &unk_1001D4C10;
    objc_copyWeak(&v212, &location);
    [v18 setUpBlock:v211];
    [v18 setTag:100];
    [(HNDRocker *)self _setRingerSwitchIcon:v18];
    objc_destroyWeak(&v212);
    goto LABEL_52;
  }

  if (AXDeviceSupportsCameraButton() && [v7 isEqualToString:AXAssistiveTouchIconTypeCameraButton])
  {
    v209[0] = _NSConcreteStackBlock;
    v209[1] = 3221225472;
    v209[2] = sub_1000528E0;
    v209[3] = &unk_1001D4C10;
    objc_copyWeak(&v210, &location);
    [v18 setUpBlock:v209];
    objc_destroyWeak(&v210);
    goto LABEL_52;
  }

  if (AXDeviceSupportsCameraButton() && [v7 isEqualToString:AXAssistiveTouchIconTypeCameraButtonLightPress])
  {
    v207[0] = _NSConcreteStackBlock;
    v207[1] = 3221225472;
    v207[2] = sub_100052920;
    v207[3] = &unk_1001D4C10;
    objc_copyWeak(&v208, &location);
    [v18 setUpBlock:v207];
    objc_destroyWeak(&v208);
    goto LABEL_52;
  }

  if (AXDeviceSupportsCameraButton() && [v7 isEqualToString:AXAssistiveTouchIconTypeCameraButtonDoubleLightPress])
  {
    v205[0] = _NSConcreteStackBlock;
    v205[1] = 3221225472;
    v205[2] = sub_100052960;
    v205[3] = &unk_1001D4C10;
    objc_copyWeak(&v206, &location);
    [v18 setUpBlock:v205];
    objc_destroyWeak(&v206);
    goto LABEL_52;
  }

  if (AXDeviceIsPhone() && AXDeviceHasGreyMatterEnabled() && [v7 isEqualToString:AXAssistiveTouchIconTypeVisualIntelligence])
  {
    v203[0] = _NSConcreteStackBlock;
    v203[1] = 3221225472;
    v203[2] = sub_1000529A0;
    v203[3] = &unk_1001D4C10;
    objc_copyWeak(&v204, &location);
    [v18 setUpBlock:v203];
    objc_destroyWeak(&v204);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeOrientation])
  {
    v201[0] = _NSConcreteStackBlock;
    v201[1] = 3221225472;
    v201[2] = sub_1000529E0;
    v201[3] = &unk_1001D4C10;
    objc_copyWeak(&v202, &location);
    [v18 setUpBlock:v201];
    [v18 setTag:112];
    [(HNDRocker *)self _setRotationLockIcon:v18];
    objc_destroyWeak(&v202);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeScreenshot])
  {
    v199[0] = _NSConcreteStackBlock;
    v199[1] = 3221225472;
    v199[2] = sub_100052A20;
    v199[3] = &unk_1001D4C10;
    objc_copyWeak(&v200, &location);
    [v18 setUpBlock:v199];
    objc_destroyWeak(&v200);
    goto LABEL_52;
  }

  if (AXDeviceSupportsVirtualTrackpad() && [v7 isEqualToString:AXAssistiveTouchIconTypeTrackpad])
  {
    v197[0] = _NSConcreteStackBlock;
    v197[1] = 3221225472;
    v197[2] = sub_100052A60;
    v197[3] = &unk_1001D4C10;
    objc_copyWeak(&v198, &location);
    [v18 setUpBlock:v197];
    objc_destroyWeak(&v198);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeMenuBar])
  {
    v195[0] = _NSConcreteStackBlock;
    v195[1] = 3221225472;
    v195[2] = sub_100052AA0;
    v195[3] = &unk_1001D4C10;
    objc_copyWeak(&v196, &location);
    [v18 setUpBlock:v195];
    objc_destroyWeak(&v196);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeShake])
  {
    v193[0] = _NSConcreteStackBlock;
    v193[1] = 3221225472;
    v193[2] = sub_100052AE0;
    v193[3] = &unk_1001D4C10;
    objc_copyWeak(&v194, &location);
    [v18 setUpBlock:v193];
    objc_destroyWeak(&v194);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeAppSwitcher])
  {
    v191[0] = _NSConcreteStackBlock;
    v191[1] = 3221225472;
    v191[2] = sub_100052B20;
    v191[3] = &unk_1001D4C10;
    objc_copyWeak(&v192, &location);
    [v18 setUpBlock:v191];
    objc_destroyWeak(&v192);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeDevice])
  {
    v189[0] = _NSConcreteStackBlock;
    v189[1] = 3221225472;
    v189[2] = sub_100052B60;
    v189[3] = &unk_1001D4C10;
    objc_copyWeak(&v190, &location);
    [v18 setUpBlock:v189];
    [v18 setTag:104];
    objc_destroyWeak(&v190);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeControlCenter])
  {
    v187[0] = _NSConcreteStackBlock;
    v187[1] = 3221225472;
    v187[2] = sub_100052BD0;
    v187[3] = &unk_1001D4C10;
    objc_copyWeak(&v188, &location);
    [v18 setUpBlock:v187];
    [v18 setTag:106];
    objc_destroyWeak(&v188);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeHome])
  {
    v185[0] = _NSConcreteStackBlock;
    v185[1] = 3221225472;
    v185[2] = sub_100052C24;
    v185[3] = &unk_1001D4C10;
    objc_copyWeak(&v186, &location);
    [v18 setDownBlock:v185];
    v183[0] = _NSConcreteStackBlock;
    v183[1] = 3221225472;
    v183[2] = sub_100052C68;
    v183[3] = &unk_1001D4C10;
    objc_copyWeak(&v184, &location);
    [v18 setUpBlock:v183];
    [v18 setIsModalDown:1];
    [v18 setTag:103];
    objc_destroyWeak(&v184);
    objc_destroyWeak(&v186);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeCustom])
  {
    v181[0] = _NSConcreteStackBlock;
    v181[1] = 3221225472;
    v181[2] = sub_100052CAC;
    v181[3] = &unk_1001D4C10;
    objc_copyWeak(&v182, &location);
    [v18 setUpBlock:v181];
    [v18 setTag:107];
    objc_destroyWeak(&v182);
    goto LABEL_52;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeSiri])
  {
    if (j__AXDeviceIsSiriAvailable())
    {
      v179[0] = _NSConcreteStackBlock;
      v179[1] = 3221225472;
      v179[2] = sub_100052D40;
      v179[3] = &unk_1001D4C10;
      objc_copyWeak(&v180, &location);
      [v18 setUpBlock:v179];
      [v18 setTag:101];
      v173 = 0;
      v174 = &v173;
      v175 = 0x3032000000;
      v176 = sub_10004D0B4;
      v177 = sub_10004D0C4;
      v18 = v18;
      v178 = v18;
      v172[0] = _NSConcreteStackBlock;
      v172[1] = 3221225472;
      v172[2] = sub_100052D94;
      v172[3] = &unk_1001D4B88;
      v172[4] = &v173;
      [v18 setSubstantialTransitionOccurredBlock:v172];
      v31 = [v18 substantialTransitionOccurredBlock];
      v31[2]();

      _Block_object_dispose(&v173, 8);
      objc_destroyWeak(&v180);
      goto LABEL_52;
    }

    v33 = AXAssistiveTouchIconTypeVoiceControl;
    v27 = [(HNDRocker *)self _rockerButtonForLocation:v6 buttonType:AXAssistiveTouchIconTypeVoiceControl];

    v34 = [v27 type];
    LODWORD(v33) = [v34 isEqualToString:v33];

    if (!v33)
    {
      goto LABEL_53;
    }

LABEL_101:
    [v27 setDisabled:_AXSHomeButtonAssistant() != 1];
    goto LABEL_53;
  }

  if ([v7 isEqualToString:AXAssistiveTouchIconTypeTypeToSiri])
  {
    if (j__AXDeviceIsSiriAvailable())
    {
      v170[0] = _NSConcreteStackBlock;
      v170[1] = 3221225472;
      v170[2] = sub_100052DEC;
      v170[3] = &unk_1001D4C10;
      objc_copyWeak(&v171, &location);
      [v18 setUpBlock:v170];
      [v18 setTag:102];
      v173 = 0;
      v174 = &v173;
      v175 = 0x3032000000;
      v176 = sub_10004D0B4;
      v177 = sub_10004D0C4;
      v18 = v18;
      v178 = v18;
      v169[0] = _NSConcreteStackBlock;
      v169[1] = 3221225472;
      v169[2] = sub_100052E40;
      v169[3] = &unk_1001D4B88;
      v169[4] = &v173;
      [v18 setSubstantialTransitionOccurredBlock:v169];
      v32 = [v18 substantialTransitionOccurredBlock];
      v32[2]();

      _Block_object_dispose(&v173, 8);
      objc_destroyWeak(&v171);
      goto LABEL_52;
    }

    v35 = AXAssistiveTouchIconTypeVoiceControl;
    v27 = [(HNDRocker *)self _rockerButtonForLocation:v6 buttonType:AXAssistiveTouchIconTypeVoiceControl];

    v36 = [v27 type];
    LODWORD(v35) = [v36 isEqualToString:v35];

    if (!v35)
    {
      goto LABEL_53;
    }

    goto LABEL_101;
  }

  if (![v7 isEqualToString:AXAssistiveTouchIconTypeVoiceControl])
  {
    if ([v7 isEqualToString:AXAssistiveTouchIconTypeCommandAndControl])
    {
      v165[0] = _NSConcreteStackBlock;
      v165[1] = 3221225472;
      v165[2] = sub_100052EEC;
      v165[3] = &unk_1001D4C10;
      objc_copyWeak(&v166, &location);
      [v18 setUpBlock:v165];
      objc_destroyWeak(&v166);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeGestures])
    {
      v163[0] = _NSConcreteStackBlock;
      v163[1] = 3221225472;
      v163[2] = sub_100052F2C;
      v163[3] = &unk_1001D4C10;
      objc_copyWeak(&v164, &location);
      [v18 setUpBlock:v163];
      [v18 setTag:110];
      objc_destroyWeak(&v164);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeSOS])
    {
      v161[0] = _NSConcreteStackBlock;
      v161[1] = 3221225472;
      v161[2] = sub_100052F9C;
      v161[3] = &unk_1001D4C10;
      objc_copyWeak(&v162, &location);
      [v18 setUpBlock:v161];
      objc_destroyWeak(&v162);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeDetectionMode])
    {
      v159[0] = _NSConcreteStackBlock;
      v159[1] = 3221225472;
      v159[2] = sub_100052FDC;
      v159[3] = &unk_1001D4C10;
      objc_copyWeak(&v160, &location);
      [v18 setUpBlock:v159];
      objc_destroyWeak(&v160);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeWatchRemoteScreen])
    {
      v157[0] = _NSConcreteStackBlock;
      v157[1] = 3221225472;
      v157[2] = sub_10005301C;
      v157[3] = &unk_1001D4C10;
      objc_copyWeak(&v158, &location);
      [v18 setUpBlock:v157];
      objc_destroyWeak(&v158);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeBackgroundSounds])
    {
      v155[0] = _NSConcreteStackBlock;
      v155[1] = 3221225472;
      v155[2] = sub_10005305C;
      v155[3] = &unk_1001D4C10;
      objc_copyWeak(&v156, &location);
      [v18 setUpBlock:v155];
      objc_destroyWeak(&v156);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeLiveCaptions])
    {
      v153[0] = _NSConcreteStackBlock;
      v153[1] = 3221225472;
      v153[2] = sub_10005309C;
      v153[3] = &unk_1001D4C10;
      objc_copyWeak(&v154, &location);
      [v18 setUpBlock:v153];
      objc_destroyWeak(&v154);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeLiveSpeech])
    {
      v151[0] = _NSConcreteStackBlock;
      v151[1] = 3221225472;
      v151[2] = sub_1000530DC;
      v151[3] = &unk_1001D4C10;
      objc_copyWeak(&v152, &location);
      [v18 setUpBlock:v151];
      objc_destroyWeak(&v152);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeDimFlashingLights])
    {
      v149[0] = _NSConcreteStackBlock;
      v149[1] = 3221225472;
      v149[2] = sub_10005311C;
      v149[3] = &unk_1001D4C10;
      objc_copyWeak(&v150, &location);
      [v18 setUpBlock:v149];
      objc_destroyWeak(&v150);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeHapticMusic])
    {
      v147[0] = _NSConcreteStackBlock;
      v147[1] = 3221225472;
      v147[2] = sub_10005315C;
      v147[3] = &unk_1001D4C10;
      objc_copyWeak(&v148, &location);
      [v18 setUpBlock:v147];
      [(HNDRocker *)self _updateHapticMusicIcon:v18];
      objc_destroyWeak(&v148);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeMotionCues])
    {
      v145[0] = _NSConcreteStackBlock;
      v145[1] = 3221225472;
      v145[2] = sub_10005319C;
      v145[3] = &unk_1001D4C10;
      objc_copyWeak(&v146, &location);
      [v18 setUpBlock:v145];
      [(HNDRocker *)self _updateMotionCuesIcon:v18];
      objc_destroyWeak(&v146);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeNearbyDeviceControl])
    {
      v143[0] = _NSConcreteStackBlock;
      v143[1] = 3221225472;
      v143[2] = sub_1000531DC;
      v143[3] = &unk_1001D4C10;
      objc_copyWeak(&v144, &location);
      [v18 setUpBlock:v143];
      objc_destroyWeak(&v144);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeAccessibilityReader])
    {
      v141[0] = _NSConcreteStackBlock;
      v141[1] = 3221225472;
      v141[2] = sub_10005321C;
      v141[3] = &unk_1001D4C10;
      objc_copyWeak(&v142, &location);
      [v18 setUpBlock:v141];
      objc_destroyWeak(&v142);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeRebootDevice])
    {
      v139[0] = _NSConcreteStackBlock;
      v139[1] = 3221225472;
      v139[2] = sub_10005325C;
      v139[3] = &unk_1001D4C10;
      objc_copyWeak(&v140, &location);
      [v18 setUpBlock:v139];
      objc_destroyWeak(&v140);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeReachability])
    {
      v137[0] = _NSConcreteStackBlock;
      v137[1] = 3221225472;
      v137[2] = sub_10005329C;
      v137[3] = &unk_1001D4C10;
      objc_copyWeak(&v138, &location);
      [v18 setUpBlock:v137];
      objc_destroyWeak(&v138);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeSpeakScreen])
    {
      v135[0] = _NSConcreteStackBlock;
      v135[1] = 3221225472;
      v135[2] = sub_1000532DC;
      v135[3] = &unk_1001D4C10;
      objc_copyWeak(&v136, &location);
      [v18 setUpBlock:v135];
      objc_destroyWeak(&v136);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeSysdiagnose])
    {
      v133[0] = _NSConcreteStackBlock;
      v133[1] = 3221225472;
      v133[2] = sub_10005331C;
      v133[3] = &unk_1001D4C10;
      objc_copyWeak(&v134, &location);
      [v18 setUpBlock:v133];
      objc_destroyWeak(&v134);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeToggleDock])
    {
      v131[0] = _NSConcreteStackBlock;
      v131[1] = 3221225472;
      v131[2] = sub_10005335C;
      v131[3] = &unk_1001D4C10;
      objc_copyWeak(&v132, &location);
      [v18 setUpBlock:v131];
      objc_destroyWeak(&v132);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeConfirmApplePay] && -[HNDRocker _expectsSecureIntent](self, "_expectsSecureIntent"))
    {
      v129[0] = _NSConcreteStackBlock;
      v129[1] = 3221225472;
      v129[2] = sub_10005339C;
      v129[3] = &unk_1001D4C10;
      objc_copyWeak(&v130, &location);
      [v18 setUpBlock:v129];
      objc_destroyWeak(&v130);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeArmApplePay])
    {
      v127[0] = _NSConcreteStackBlock;
      v127[1] = 3221225472;
      v127[2] = sub_1000533DC;
      v127[3] = &unk_1001D4C10;
      objc_copyWeak(&v128, &location);
      [v18 setUpBlock:v127];
      [v18 setTag:117];
      objc_destroyWeak(&v128);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeDwell])
    {
      v125[0] = _NSConcreteStackBlock;
      v125[1] = 3221225472;
      v125[2] = sub_100053438;
      v125[3] = &unk_1001D4C10;
      objc_copyWeak(&v126, &location);
      [v18 setUpBlock:v125];
      [v18 setTag:116];
      objc_destroyWeak(&v126);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeDwellResume])
    {
      v123[0] = _NSConcreteStackBlock;
      v123[1] = 3221225472;
      v123[2] = sub_1000534A8;
      v123[3] = &unk_1001D4C10;
      objc_copyWeak(&v124, &location);
      [v18 setUpBlock:v123];
      objc_destroyWeak(&v124);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeDwellPause])
    {
      v121[0] = _NSConcreteStackBlock;
      v121[1] = 3221225472;
      v121[2] = sub_1000534EC;
      v121[3] = &unk_1001D4C10;
      objc_copyWeak(&v122, &location);
      [v18 setUpBlock:v121];
      objc_destroyWeak(&v122);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeDwellLock])
    {
      v119[0] = _NSConcreteStackBlock;
      v119[1] = 3221225472;
      v119[2] = sub_100053530;
      v119[3] = &unk_1001D4C10;
      objc_copyWeak(&v120, &location);
      [v18 setUpBlock:v119];
      objc_destroyWeak(&v120);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeDwellUnlock])
    {
      v117[0] = _NSConcreteStackBlock;
      v117[1] = 3221225472;
      v117[2] = sub_100053574;
      v117[3] = &unk_1001D4C10;
      objc_copyWeak(&v118, &location);
      [v18 setUpBlock:v117];
      objc_destroyWeak(&v118);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeDwellClick])
    {
      v115[0] = _NSConcreteStackBlock;
      v115[1] = 3221225472;
      v115[2] = sub_1000535B8;
      v115[3] = &unk_1001D4C10;
      objc_copyWeak(&v116, &location);
      [v18 setUpBlock:v115];
      objc_destroyWeak(&v116);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeDwellIncreaseTime])
    {
      v113[0] = _NSConcreteStackBlock;
      v113[1] = 3221225472;
      v113[2] = sub_100053618;
      v113[3] = &unk_1001D4C10;
      objc_copyWeak(&v114, &location);
      [v18 setUpBlock:v113];
      objc_destroyWeak(&v114);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeDwellDecreaseTime])
    {
      v111[0] = _NSConcreteStackBlock;
      v111[1] = 3221225472;
      v111[2] = sub_100053658;
      v111[3] = &unk_1001D4C10;
      objc_copyWeak(&v112, &location);
      [v18 setUpBlock:v111];
      objc_destroyWeak(&v112);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeScroll])
    {
      v109[0] = _NSConcreteStackBlock;
      v109[1] = 3221225472;
      v109[2] = sub_100053698;
      v109[3] = &unk_1001D4C10;
      objc_copyWeak(&v110, &location);
      [v18 setUpBlock:v109];
      [v18 setTag:115];
      objc_destroyWeak(&v110);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeScrollUp])
    {
      v107[0] = _NSConcreteStackBlock;
      v107[1] = 3221225472;
      v107[2] = sub_100053708;
      v107[3] = &unk_1001D4C10;
      objc_copyWeak(&v108, &location);
      [v18 setUpBlock:v107];
      objc_destroyWeak(&v108);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeScrollDown])
    {
      v105[0] = _NSConcreteStackBlock;
      v105[1] = 3221225472;
      v105[2] = sub_100053774;
      v105[3] = &unk_1001D4C10;
      objc_copyWeak(&v106, &location);
      [v18 setUpBlock:v105];
      objc_destroyWeak(&v106);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeScrollLeft])
    {
      v103[0] = _NSConcreteStackBlock;
      v103[1] = 3221225472;
      v103[2] = sub_1000537E0;
      v103[3] = &unk_1001D4C10;
      objc_copyWeak(&v104, &location);
      [v18 setUpBlock:v103];
      objc_destroyWeak(&v104);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeScrollRight])
    {
      v101[0] = _NSConcreteStackBlock;
      v101[1] = 3221225472;
      v101[2] = sub_10005384C;
      v101[3] = &unk_1001D4C10;
      objc_copyWeak(&v102, &location);
      [v18 setUpBlock:v101];
      objc_destroyWeak(&v102);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeScrollToTop])
    {
      v99[0] = _NSConcreteStackBlock;
      v99[1] = 3221225472;
      v99[2] = sub_1000538B8;
      v99[3] = &unk_1001D4C10;
      objc_copyWeak(&v100, &location);
      [v18 setUpBlock:v99];
      objc_destroyWeak(&v100);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeScrollToBottom])
    {
      v97[0] = _NSConcreteStackBlock;
      v97[1] = 3221225472;
      v97[2] = sub_100053924;
      v97[3] = &unk_1001D4C10;
      objc_copyWeak(&v98, &location);
      [v18 setUpBlock:v97];
      objc_destroyWeak(&v98);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeContinuousScrollHorizontal])
    {
      v94[0] = _NSConcreteStackBlock;
      v94[1] = 3221225472;
      v94[2] = sub_100053990;
      v94[3] = &unk_1001D4CD0;
      objc_copyWeak(&v96, &location);
      v95 = v7;
      [v18 setUpBlock:v94];

      objc_destroyWeak(&v96);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeContinuousScrollVertical])
    {
      v91[0] = _NSConcreteStackBlock;
      v91[1] = 3221225472;
      v91[2] = sub_1000539F8;
      v91[3] = &unk_1001D4CD0;
      objc_copyWeak(&v93, &location);
      v92 = v7;
      [v18 setUpBlock:v91];

      objc_destroyWeak(&v93);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeEyeTrackingBubbleMode])
    {
      v89[0] = _NSConcreteStackBlock;
      v89[1] = 3221225472;
      v89[2] = sub_100053A60;
      v89[3] = &unk_1001D4C10;
      objc_copyWeak(&v90, &location);
      [v18 setUpBlock:v89];
      objc_destroyWeak(&v90);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeEyeTrackingAutoHide])
    {
      v87[0] = _NSConcreteStackBlock;
      v87[1] = 3221225472;
      v87[2] = sub_100053AA0;
      v87[3] = &unk_1001D4C10;
      objc_copyWeak(&v88, &location);
      [v18 setUpBlock:v87];
      objc_destroyWeak(&v88);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeHeadTrackingBubbleMode])
    {
      v85[0] = _NSConcreteStackBlock;
      v85[1] = 3221225472;
      v85[2] = sub_100053AE0;
      v85[3] = &unk_1001D4C10;
      objc_copyWeak(&v86, &location);
      [v18 setUpBlock:v85];
      objc_destroyWeak(&v86);
    }

    else if (AXDeviceSupportsOnDeviceEyeTracking() && [v7 isEqualToString:AXAssistiveTouchIconTypeCalibrateOnDeviceEyeTracking])
    {
      v83[0] = _NSConcreteStackBlock;
      v83[1] = 3221225472;
      v83[2] = sub_100053B20;
      v83[3] = &unk_1001D4C10;
      objc_copyWeak(&v84, &location);
      [v18 setUpBlock:v83];
      objc_destroyWeak(&v84);
    }

    else if (AXDeviceSupportsOnDeviceEyeTracking() && [v7 isEqualToString:AXAssistiveTouchIconTypeOnDeviceEyeTrackingZoomScreen])
    {
      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3221225472;
      v81[2] = sub_100053B60;
      v81[3] = &unk_1001D4C10;
      objc_copyWeak(&v82, &location);
      [v18 setUpBlock:v81];
      objc_destroyWeak(&v82);
    }

    else if (AXDeviceSupportsOnDeviceEyeTracking() && [v7 isEqualToString:AXAssistiveTouchIconTypeOnDeviceEyeTracking])
    {
      v79[0] = _NSConcreteStackBlock;
      v79[1] = 3221225472;
      v79[2] = sub_100053BA0;
      v79[3] = &unk_1001D4C10;
      objc_copyWeak(&v80, &location);
      [v18 setUpBlock:v79];
      objc_destroyWeak(&v80);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeDwellToggleKeyboardContinuousPath])
    {
      v77[0] = _NSConcreteStackBlock;
      v77[1] = 3221225472;
      v77[2] = sub_100053BE0;
      v77[3] = &unk_1001D4C10;
      objc_copyWeak(&v78, &location);
      [v18 setUpBlock:v77];
      objc_destroyWeak(&v78);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeAssistiveAccess])
    {
      v75[0] = _NSConcreteStackBlock;
      v75[1] = 3221225472;
      v75[2] = sub_100053C20;
      v75[3] = &unk_1001D4C10;
      objc_copyWeak(&v76, &location);
      [v18 setUpBlock:v75];
      objc_destroyWeak(&v76);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeCamera])
    {
      v73[0] = _NSConcreteStackBlock;
      v73[1] = 3221225472;
      v73[2] = sub_100053C60;
      v73[3] = &unk_1001D4C10;
      objc_copyWeak(&v74, &location);
      [v18 setUpBlock:v73];
      objc_destroyWeak(&v74);
    }

    else if ([v7 isEqualToString:AXAssistiveTouchIconTypeFrontFacingCamera])
    {
      v71[0] = _NSConcreteStackBlock;
      v71[1] = 3221225472;
      v71[2] = sub_100053CA0;
      v71[3] = &unk_1001D4C10;
      objc_copyWeak(&v72, &location);
      [v18 setUpBlock:v71];
      objc_destroyWeak(&v72);
    }

    else if ([v7 hasPrefix:@"CustomGesture-"])
    {
      v58 = [v7 stringByReplacingOccurrencesOfString:@"CustomGesture-" withString:&stru_1001DB590];
      v37 = +[HNDHandManager sharedManager];
      v38 = [v37 customGestures];

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      obj = v38;
      v39 = [obj countByEnumeratingWithState:&v67 objects:v250 count:16];
      if (v39)
      {
        v57 = *v68;
        while (2)
        {
          for (i = 0; i != v39; i = i + 1)
          {
            if (*v68 != v57)
            {
              objc_enumerationMutation(obj);
            }

            v41 = *(*(&v67 + 1) + 8 * i);
            v42 = [v41 name];
            v43 = [v42 isEqualToString:v58];

            if (v43)
            {
              v56 = [v41 name];
              v65[0] = _NSConcreteStackBlock;
              v65[1] = 3221225472;
              v65[2] = sub_100053CE0;
              v65[3] = &unk_1001D4CD0;
              objc_copyWeak(&v66, &location);
              v65[4] = v41;
              v44 = [HNDRockerButton buttonWithTitle:v56 imageName:@"IconFavorites" downBlock:0 upBlock:v65 showWithGuidedAccess:1 showWithAssistiveAccess:1];

              [v44 setCustomTitle:1];
              objc_destroyWeak(&v66);
              goto LABEL_219;
            }
          }

          v39 = [obj countByEnumeratingWithState:&v67 objects:v250 count:16];
          if (v39)
          {
            continue;
          }

          break;
        }
      }

      v44 = v18;
LABEL_219:

      v18 = v44;
    }

    else
    {
      v45 = AXASTSiriShortcutPrefixName;
      if ([v7 hasPrefix:AXASTSiriShortcutPrefixName])
      {
        v46 = [NSString stringWithFormat:@"%@-", v45];
        v47 = [v7 rangeOfString:v46];
        v49 = [v7 substringFromIndex:&v47[v48]];

        v50 = +[AXSiriShortcutsManager sharedManager];
        v51 = [v50 shortcutForIdentifier:v49];

        v52 = [v51 shortcutName];
        v53 = AXUIAssistiveTouchImageNameForName();
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = sub_100053D34;
        v62[3] = &unk_1001D4CF8;
        v54 = v51;
        v63 = v54;
        v64 = self;
        v55 = [HNDRockerButton buttonWithTitle:v52 imageName:v53 downBlock:0 upBlock:v62 showWithGuidedAccess:0 showWithAssistiveAccess:0];

        [v55 setCustomTitle:1];
        v18 = v55;
      }

      else if ([v7 isEqualToString:AXAssistiveTouchIconTypeSiriShortcutsMenu])
      {
        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = sub_100053D88;
        v60[3] = &unk_1001D4C10;
        objc_copyWeak(&v61, &location);
        [v18 setUpBlock:v60];
        [v18 setTag:118];
        objc_destroyWeak(&v61);
      }
    }

    goto LABEL_52;
  }

  if (j__AXDeviceIsVoiceControlAvailable())
  {
    v167[0] = _NSConcreteStackBlock;
    v167[1] = 3221225472;
    v167[2] = sub_100052E98;
    v167[3] = &unk_1001D4C10;
    objc_copyWeak(&v168, &location);
    [v18 setUpBlock:v167];
    [v18 setDisabled:_AXSHomeButtonAssistant() != 1];
    objc_destroyWeak(&v168);
    goto LABEL_52;
  }

  v28 = [(HNDRocker *)self _rockerButtonForLocation:v6 buttonType:AXAssistiveTouchIconTypeGestures];
LABEL_54:
  v29 = v28;
  objc_destroyWeak(&location);

  return v29;
}

- (void)_preloadInitialMenuItems
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchMainScreenCustomization];
  v5 = [v4 mutableCopy];

  if (self->_didPerformInitialDeviceCompatibilityCheck)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(HNDRocker *)self _adjustMainScreenCustomizationForDeviceSupport:v5];
    v7 = [v6 objectForKeyedSubscript:@"didAdjustMap"];
    v8 = [v7 BOOLValue];

    [(HNDRocker *)self setDidPerformInitialDeviceCompatibilityCheck:1];
    if (v8)
    {
      v9 = [v6 objectForKeyedSubscript:@"adjustedMap"];
      v10 = +[AXSettings sharedInstance];
      [v10 setAssistiveTouchMainScreenCustomization:v9];

      v11 = [v9 mutableCopy];
      v5 = v11;
    }
  }

  v12 = [objc_allocWithZone(NSMutableArray) init];
  [(HNDRocker *)self setInitialItems:v12];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = [v13 objectForKeyedSubscript:{v18, v24}];
        v20 = [(HNDRocker *)self _rockerButtonForLocation:v18 buttonType:v19];

        v21 = [(HNDRocker *)self initialItems];
        [v21 addObject:v20];
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  v22 = [(HNDRocker *)self initialItems];
  v23 = [(HNDRocker *)self _filteredItems:v22];
  [(HNDRocker *)self setInitialItems:v23];
}

- (id)_adjustMainScreenCustomizationForDeviceSupport:(id)a3
{
  v3 = a3;
  v4 = [v3 mutableCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_19;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v22;
  v10 = AXAssistiveTouchIconTypeActionButton;
  v20 = AXAssistiveTouchIconTypeMute;
  v11 = AXAssistiveTouchIconTypeCameraButton;
  v19 = AXAssistiveTouchIconTypeCameraButtonLightPress;
  v18 = AXAssistiveTouchIconTypeCameraButtonDoubleLightPress;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v13 = *(*(&v21 + 1) + 8 * i);
      v14 = [v5 objectForKeyedSubscript:v13];
      if ([v14 isEqualToString:v10] && (AXDeviceHasStaccato() & 1) == 0)
      {
        [v4 setObject:v20 forKeyedSubscript:v13];
        goto LABEL_14;
      }

      if ((AXDeviceSupportsCameraButton() & 1) == 0 && (([v14 isEqualToString:v11] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", v19) & 1) != 0 || objc_msgSend(v14, "isEqualToString:", v18)))
      {
        [v4 removeObjectForKey:v13];
LABEL_14:
        v8 = 1;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
  }

  while (v7);
LABEL_19:

  v25[0] = @"didAdjustMap";
  v15 = [NSNumber numberWithBool:v8 & 1];
  v25[1] = @"adjustedMap";
  v26[0] = v15;
  v26[1] = v4;
  v16 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];

  return v16;
}

- (void)_loadInitialMenuItems
{
  v3 = [(HNDRocker *)self initialItems];

  if (!v3)
  {
    [(HNDRocker *)self _preloadInitialMenuItems];
  }

  rockerItems = self->_rockerItems;
  v5 = [(HNDRocker *)self initialItems];
  [(NSMutableArray *)rockerItems addObjectsFromArray:v5];

  [(HNDRocker *)self _swapArmApplePayWithConfirmApplePayIfNeeded];
  [(HNDRocker *)self updateRotationLockSwitch];

  [(HNDRocker *)self updateRingerSwitch];
}

- (void)_loadMoreMenuItems
{
  IsSOSAvailable = AXDeviceIsSOSAvailable();
  if (MGGetBoolAnswer())
  {
    v4 = SBSIsReachabilityEnabled() != 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(HNDRocker *)self moreItems];

  if (!v5)
  {
    v6 = [objc_allocWithZone(NSMutableArray) init];
    [(HNDRocker *)self setMoreItems:v6];

    v7 = [(HNDRocker *)self _rockerButtonForLocation:0 buttonType:AXAssistiveTouchIconTypeAppSwitcher];
    v8 = [(HNDRocker *)self moreItems];
    [v8 addObject:v7];

    v9 = [(HNDRocker *)self _rockerButtonForLocation:0 buttonType:AXAssistiveTouchIconTypeScreenshot];

    v10 = [(HNDRocker *)self moreItems];
    [v10 addObject:v9];

    if (IsSOSAvailable)
    {
      v11 = [(HNDRocker *)self _rockerButtonForLocation:0 buttonType:AXAssistiveTouchIconTypeSOS];

      v12 = [(HNDRocker *)self moreItems];
      [v12 addObject:v11];

      v9 = v11;
    }

    v13 = [(HNDRocker *)self _rockerButtonForLocation:0 buttonType:AXAssistiveTouchIconTypeShake];

    v14 = [(HNDRocker *)self moreItems];
    [v14 addObject:v13];

    v15 = [(HNDRocker *)self _rockerButtonForLocation:0 buttonType:AXAssistiveTouchIconTypeRebootDevice];

    v16 = [(HNDRocker *)self moreItems];
    [v16 addObject:v15];

    if (AXDeviceSupportsSideApp())
    {
      v17 = [(HNDRocker *)self _rockerButtonForLocation:0 buttonType:AXAssistiveTouchIconTypeToggleDock];

      v18 = [(HNDRocker *)self moreItems];
      [v18 addObject:v17];

      v15 = v17;
    }

    v19 = [(HNDRocker *)self moreItems];
    v20 = [(HNDRocker *)self _filteredItems:v19];
    [(HNDRocker *)self setMoreItems:v20];
  }

  rockerItems = self->_rockerItems;
  v22 = [(HNDRocker *)self moreItems];
  [(NSMutableArray *)rockerItems addObjectsFromArray:v22];

  if (AXDeviceCanArmApplePay())
  {
LABEL_11:
    if ([(HNDRocker *)self _expectsSecureIntent])
    {
      v23 = [(HNDRocker *)self confirmApplePayButton];

      if (!v23)
      {
        v24 = [(HNDRocker *)self _rockerButtonForLocation:0 buttonType:AXAssistiveTouchIconTypeConfirmApplePay];
        [(HNDRocker *)self setConfirmApplePayButton:v24];
      }

      v25 = [(NSMutableArray *)self->_rockerItems indexOfObjectPassingTest:&stru_1001D4D38];
      v26 = self->_rockerItems;
      v27 = [(HNDRocker *)self confirmApplePayButton];
    }

    else
    {
      v30 = [(HNDRocker *)self applePayButton];

      if (!v30)
      {
        v31 = [(HNDRocker *)self _rockerButtonForLocation:0 buttonType:AXAssistiveTouchIconTypeArmApplePay];
        [(HNDRocker *)self setApplePayButton:v31];
      }

      v25 = [(NSMutableArray *)self->_rockerItems indexOfObjectPassingTest:&stru_1001D4D58];
      v26 = self->_rockerItems;
      v27 = [(HNDRocker *)self applePayButton];
    }

    v28 = v27;
    if (v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)v26 addObject:v27];
    }

    else
    {
      [(NSMutableArray *)v26 replaceObjectAtIndex:v25 withObject:v27];
    }

    goto LABEL_24;
  }

  v28 = +[HNDSecureIntentManager sharedInstance];
  if ([v28 waitingForSecureIntent])
  {
    v29 = sub_100042534();

    if (!v29)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

LABEL_24:

LABEL_25:
  if ((j__AXDeviceIsSiriAvailable() & 1) != 0 || j__AXDeviceIsVoiceControlAvailable())
  {
    v32 = [(HNDRocker *)self gesturesButton];

    if (!v32)
    {
      v33 = [(HNDRocker *)self _rockerButtonForLocation:0 buttonType:AXAssistiveTouchIconTypeGestures];
      [(HNDRocker *)self setGesturesButton:v33];
    }

    v34 = self->_rockerItems;
    v35 = [(HNDRocker *)self gesturesButton];
  }

  else
  {
    v36 = [(HNDRocker *)self tripleClickHomeButton];

    if (!v36)
    {
      v37 = [(HNDRocker *)self _rockerButtonForLocation:0 buttonType:AXAssistiveTouchIconTypeTripleClick];
      [(HNDRocker *)self setTripleClickHomeButton:v37];
    }

    v34 = self->_rockerItems;
    v35 = [(HNDRocker *)self tripleClickHomeButton];
  }

  v38 = v35;
  [(NSMutableArray *)v34 addObject:v35];

  if (v4)
  {
    v39 = [(HNDRocker *)self reachabilityButton];

    if (!v39)
    {
      v40 = [(HNDRocker *)self _rockerButtonForLocation:0 buttonType:AXAssistiveTouchIconTypeReachability];
      [(HNDRocker *)self setReachabilityButton:v40];
    }

    v41 = self->_rockerItems;
    v42 = [(HNDRocker *)self reachabilityButton];
    [(NSMutableArray *)v41 addObject:v42];
  }

  if (_AXSSpeakThisEnabled())
  {
    v43 = [(HNDRocker *)self speakScreenButton];

    if (!v43)
    {
      v44 = [(HNDRocker *)self _rockerButtonForLocation:0 buttonType:AXAssistiveTouchIconTypeSpeakScreen];
      [(HNDRocker *)self setSpeakScreenButton:v44];
    }

    v45 = self->_rockerItems;
    v46 = [(HNDRocker *)self speakScreenButton];
    [(NSMutableArray *)v45 addObject:v46];
  }

  [(HNDRocker *)self _assignLocationsToRockerItems];
}

- (void)_assignLocationsToRockerItems
{
  [(NSMutableArray *)self->_rockerItems count];
  if (!AXAssistiveTouchNamedLayout() && [(NSMutableArray *)self->_rockerItems count]>= 9)
  {
    [(NSMutableArray *)self->_rockerItems removeObjectsInRange:8, [(NSMutableArray *)self->_rockerItems count]- 8];
    [(NSMutableArray *)self->_rockerItems count];
    AXAssistiveTouchNamedLayout();
  }

  v3 = AXAssistiveTouchLocationsForLayout();
  rockerItems = self->_rockerItems;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100054ABC;
  v6[3] = &unk_1001D4D80;
  v7 = v3;
  v5 = v3;
  [(NSMutableArray *)rockerItems enumerateObjectsUsingBlock:v6];
}

- (void)_loadGesturesMenuItems
{
  v3 = [(HNDRocker *)self touchItems];

  if (!v3)
  {
    v4 = [objc_allocWithZone(NSMutableArray) init];
    [(HNDRocker *)self setTouchItems:v4];

    objc_initWeak(location, self);
    v5 = sub_100042B24(@"NUMBER_OF_FINGERS");
    v6 = [NSString localizedStringWithFormat:v5, 4];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100055024;
    v28[3] = &unk_1001D4C10;
    objc_copyWeak(&v29, location);
    v7 = [HNDRockerButton buttonWithTitle:v6 imageName:@"IconFingers4" downBlock:0 upBlock:v28 showWithGuidedAccess:1 showWithAssistiveAccess:1];

    [v7 setLocation:AXAssistiveTouchIconLocationBottomMiddle];
    v8 = [(HNDRocker *)self touchItems];
    [v8 addObject:v7];

    v9 = [NSString localizedStringWithFormat:v5, 3];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100055068;
    v26[3] = &unk_1001D4C10;
    objc_copyWeak(&v27, location);
    v10 = [HNDRockerButton buttonWithTitle:v9 imageName:@"IconFingers3" downBlock:0 upBlock:v26 showWithGuidedAccess:1 showWithAssistiveAccess:1];

    [v10 setLocation:AXAssistiveTouchIconLocationMidRight];
    v11 = [(HNDRocker *)self touchItems];
    [v11 addObject:v10];

    v12 = [NSString localizedStringWithFormat:v5, 2];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000550AC;
    v24[3] = &unk_1001D4C10;
    objc_copyWeak(&v25, location);
    v13 = [HNDRockerButton buttonWithTitle:v12 imageName:@"IconFingers2" downBlock:0 upBlock:v24 showWithGuidedAccess:1 showWithAssistiveAccess:1];

    [v13 setLocation:AXAssistiveTouchIconLocationTopMiddle];
    v14 = [(HNDRocker *)self touchItems];
    [v14 addObject:v13];

    v15 = [NSString localizedStringWithFormat:v5, 5];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000550F0;
    v22[3] = &unk_1001D4C10;
    objc_copyWeak(&v23, location);
    v16 = [HNDRockerButton buttonWithTitle:v15 imageName:@"IconFingers5" downBlock:0 upBlock:v22 showWithGuidedAccess:1 showWithAssistiveAccess:1];

    [v16 setLocation:AXAssistiveTouchIconLocationMidLeft];
    v17 = [(HNDRocker *)self touchItems];
    [v17 addObject:v16];

    v18 = [(HNDRocker *)self touchItems];
    v19 = [(HNDRocker *)self _filteredItems:v18];
    [(HNDRocker *)self setTouchItems:v19];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);

    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);

    objc_destroyWeak(location);
  }

  rockerItems = self->_rockerItems;
  v21 = [(HNDRocker *)self touchItems];
  [(NSMutableArray *)rockerItems addObjectsFromArray:v21];
}

- (void)_loadRotateMenuItems
{
  v3 = [(HNDRocker *)self rotateItems];

  if (!v3)
  {
    v4 = [objc_allocWithZone(NSMutableArray) init];
    [(HNDRocker *)self setRotateItems:v4];

    v5 = sub_100042B24(@"ORIENTATION-UPSIDE-DOWN");
    v6 = [NSString at_deviceIconNameForIdentifier:@"IconUpsideDown"];
    v7 = [HNDRockerButton buttonWithTitle:v5 imageName:v6 downBlock:0 upBlock:&stru_1001D4DC0 showWithGuidedAccess:1 showWithAssistiveAccess:1];

    [v7 setLocation:AXAssistiveTouchIconLocationBottomMiddle];
    v8 = [(HNDRocker *)self rotateItems];
    [v8 addObject:v7];

    v9 = sub_100042B24(@"ORIENTATION-LANDSCAPE-RIGHT");
    v10 = [NSString at_deviceIconNameForIdentifier:@"IconRight"];
    v11 = [HNDRockerButton buttonWithTitle:v9 imageName:v10 downBlock:0 upBlock:&stru_1001D4DE0 showWithGuidedAccess:1 showWithAssistiveAccess:1];

    [v11 setLocation:AXAssistiveTouchIconLocationMidRight];
    v12 = [(HNDRocker *)self rotateItems];
    [v12 addObject:v11];

    v13 = sub_100042B24(@"ORIENTATION-PORTRAIT");
    v14 = [NSString at_deviceIconNameForIdentifier:@"IconDevice"];
    v15 = [HNDRockerButton buttonWithTitle:v13 imageName:v14 downBlock:0 upBlock:&stru_1001D4E00 showWithGuidedAccess:1 showWithAssistiveAccess:1];

    [v15 setLocation:AXAssistiveTouchIconLocationTopMiddle];
    v16 = [(HNDRocker *)self rotateItems];
    [v16 addObject:v15];

    v17 = sub_100042B24(@"ORIENTATION-LANDSCAPE-LEFT");
    v18 = [NSString at_deviceIconNameForIdentifier:@"IconLeft"];
    v19 = [HNDRockerButton buttonWithTitle:v17 imageName:v18 downBlock:0 upBlock:&stru_1001D4E20 showWithGuidedAccess:1 showWithAssistiveAccess:1];

    [v19 setLocation:AXAssistiveTouchIconLocationMidLeft];
    v20 = [(HNDRocker *)self rotateItems];
    [v20 addObject:v19];

    v21 = [(HNDRocker *)self rotateItems];
    v22 = [(HNDRocker *)self _filteredItems:v21];
    [(HNDRocker *)self setRotateItems:v22];
  }

  rockerItems = self->_rockerItems;
  v24 = [(HNDRocker *)self rotateItems];
  [(NSMutableArray *)rockerItems addObjectsFromArray:v24];
}

- (void)_loadScrollMenuItems
{
  v3 = [(HNDRocker *)self scrollItems];

  if (!v3)
  {
    v4 = [objc_allocWithZone(NSMutableArray) init];
    [(HNDRocker *)self setScrollItems:v4];

    v5 = AXAssistiveTouchIconLocationTopLeft;
    v6 = AXAssistiveTouchIconLocationTopMiddle;
    v29[0] = AXAssistiveTouchIconLocationTopLeft;
    v29[1] = AXAssistiveTouchIconLocationTopMiddle;
    v7 = AXAssistiveTouchIconLocationTopRight;
    v8 = AXAssistiveTouchIconLocationMidLeft;
    v29[2] = AXAssistiveTouchIconLocationTopRight;
    v29[3] = AXAssistiveTouchIconLocationMidLeft;
    v9 = AXAssistiveTouchIconLocationMidRight;
    v10 = AXAssistiveTouchIconLocationBottomMiddle;
    v29[4] = AXAssistiveTouchIconLocationMidRight;
    v29[5] = AXAssistiveTouchIconLocationBottomMiddle;
    v11 = [NSArray arrayWithObjects:v29 count:6];
    v12 = +[HNDDeviceManager sharedManager];
    v13 = [v12 mainDeviceIsMotionTracker];

    if (v13)
    {
      v28[0] = v5;
      v28[1] = v6;
      v28[2] = v7;
      v28[3] = v8;
      v28[4] = v9;
      v28[5] = AXAssistiveTouchIconLocationBottomLeft;
      v28[6] = v10;
      v28[7] = AXAssistiveTouchIconLocationBottomRight;
      v14 = [NSArray arrayWithObjects:v28 count:8];

      if (!_AXSApplicationAccessibilityEnabled())
      {
        _AXSSetAccessibilityEnabled();
        _AXSApplicationAccessibilitySetEnabled();
      }
    }

    else
    {
      v14 = v11;
    }

    v15 = AXAssistiveTouchScrollIcons();
    v16 = [NSMutableArray arrayWithArray:v15];

    if ((v13 & 1) == 0)
    {
      [v16 removeObject:AXAssistiveTouchIconTypeContinuousScrollHorizontal];
      [v16 removeObject:AXAssistiveTouchIconTypeContinuousScrollVertical];
      [v16 removeObject:AXAssistiveTouchIconTypeEyeTrackingBubbleMode];
      [v16 removeObject:AXAssistiveTouchIconTypeEyeTrackingAutoHide];
    }

    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_10005589C;
    v25 = &unk_1001D4E48;
    v26 = self;
    v27 = v14;
    v17 = v14;
    [v16 enumerateObjectsUsingBlock:&v22];
    v18 = [(HNDRocker *)self scrollItems:v22];
    v19 = [(HNDRocker *)self _filteredItems:v18];
    [(HNDRocker *)self setScrollItems:v19];
  }

  rockerItems = self->_rockerItems;
  v21 = [(HNDRocker *)self scrollItems];
  [(NSMutableArray *)rockerItems addObjectsFromArray:v21];
}

- (void)forceReloadScrollMenuItems
{
  [(HNDRocker *)self setScrollItems:0];

  [(HNDRocker *)self _loadScrollMenuItems];
}

- (void)_shortcutsDidUpdate
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchMainScreenCustomization];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = AXASTSiriShortcutPrefixName;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v14 + 1) + 8 * v10) hasPrefix:v9])
        {
          v11 = 1;
          goto LABEL_11;
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = ASTLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromBOOL();
    *buf = 138412290;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Shortcuts did update. Menu needs reload: %@", buf, 0xCu);
  }

  if (v11)
  {
    [(HNDRocker *)self _preloadInitialMenuItems];
  }
}

- (void)reloadDwellMenu
{
  [(HNDRocker *)self _preloadDwellMenuItems];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchMainScreenCustomization];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100055C3C;
  v5[3] = &unk_1001D4E70;
  v5[4] = &v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
  if (*(v7 + 24) == 1)
  {
    [(HNDRocker *)self _preloadInitialMenuItems];
  }

  _Block_object_dispose(&v6, 8);
}

- (void)_preloadDwellMenuItems
{
  v3 = [objc_allocWithZone(NSMutableArray) init];
  [(HNDRocker *)self setDwellItems:v3];

  if ([UIApp userInterfaceLayoutDirection] == 1)
  {
    v15 = AXAssistiveTouchIconLocationMidRight;
    v4 = &AXAssistiveTouchIconLocationMidLeft;
    v5 = &v15;
  }

  else
  {
    v14 = AXAssistiveTouchIconLocationMidLeft;
    v4 = &AXAssistiveTouchIconLocationMidRight;
    v5 = &v14;
  }

  v6 = *v4;
  v5[1] = AXAssistiveTouchIconLocationTopMiddle;
  v5[2] = v6;
  v5[3] = AXAssistiveTouchIconLocationBottomMiddle;
  v7 = [NSArray arrayWithObjects:"arrayWithObjects:count:" count:?];
  v8 = AXAssistiveTouchDwellIcons();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100055E8C;
  v12[3] = &unk_1001D4E48;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  [v8 enumerateObjectsUsingBlock:v12];
  v10 = [(HNDRocker *)self dwellItems];
  v11 = [(HNDRocker *)self _filteredItems:v10];
  [(HNDRocker *)self setDwellItems:v11];
}

- (void)_loadDwellMenuItems
{
  v3 = [(HNDRocker *)self dwellItems];

  if (!v3)
  {
    [(HNDRocker *)self _preloadDwellMenuItems];
  }

  rockerItems = self->_rockerItems;
  v5 = [(HNDRocker *)self dwellItems];
  [(NSMutableArray *)rockerItems addObjectsFromArray:v5];

  if (AXRuntimeCheck_DwellKeyboardSwipe())
  {

    [(HNDRocker *)self _assignLocationsToRockerItems];
  }
}

- (BOOL)_expectsSecureIntent
{
  v2 = sub_100042534();
  if (v2)
  {
    v3 = +[HNDSecureIntentManager sharedInstance];
    v4 = [v3 waitingForSecureIntent];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (void)_swapArmApplePayWithConfirmApplePayIfNeeded
{
  if ([(HNDRocker *)self _expectsSecureIntent])
  {
    v3 = [(HNDRocker *)self confirmApplePayButton];

    if (!v3)
    {
      v4 = [(HNDRocker *)self _rockerButtonForLocation:0 buttonType:AXAssistiveTouchIconTypeConfirmApplePay];
      [(HNDRocker *)self setConfirmApplePayButton:v4];
    }

    v5 = [(NSMutableArray *)self->_rockerItems indexOfObjectPassingTest:&stru_1001D4E90];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v5;
      v11 = [(NSMutableArray *)self->_rockerItems objectAtIndex:v5];
      v7 = [v11 location];
      v8 = [(HNDRocker *)self confirmApplePayButton];
      [v8 setLocation:v7];

      rockerItems = self->_rockerItems;
      v10 = [(HNDRocker *)self confirmApplePayButton];
      [(NSMutableArray *)rockerItems replaceObjectAtIndex:v6 withObject:v10];
    }
  }
}

- (void)_loadSecureIntentMenuItems
{
  confirmApplePayButton = self->_confirmApplePayButton;
  if (!confirmApplePayButton)
  {
    objc_initWeak(&location, self);
    v4 = sub_100042B24(@"APPLE_PAY_CONFIRM");
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10005634C;
    v10 = &unk_1001D4C10;
    objc_copyWeak(&v11, &location);
    v5 = [HNDRockerButton buttonWithTitle:v4 imageName:@"SCATIcon_device_faceID" downBlock:0 upBlock:&v7 showWithGuidedAccess:0 showWithAssistiveAccess:0];
    v6 = self->_confirmApplePayButton;
    self->_confirmApplePayButton = v5;

    [(HNDRockerButton *)self->_confirmApplePayButton setLocation:AXAssistiveTouchIconLocationBottomMiddle, v7, v8, v9, v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    confirmApplePayButton = self->_confirmApplePayButton;
  }

  [(NSMutableArray *)self->_rockerItems addObject:confirmApplePayButton];
}

- (void)_loadSiriShortcutsMenuItems
{
  v3 = +[AXSiriShortcutsManager sharedManager];
  v4 = [v3 shortcuts];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000564E8;
  v9[3] = &unk_1001D4EE0;
  v5 = v3;
  v10 = v5;
  v6 = [v4 ax_mappedArrayUsingBlock:v9];
  v7 = [v6 mutableCopy];

  if ([v7 count] == 1)
  {
    v8 = [HNDRockerButton buttonWithTitle:&stru_1001DB590 imageName:&stru_1001DB590 downBlock:0 upBlock:0 showWithGuidedAccess:0 showWithAssistiveAccess:0];
    [v8 setIsAccessibilityElement:0];
    [v7 addObject:v8];
  }

  [(HNDRocker *)self setSiriShortcutsItems:v7];
  [(NSMutableArray *)self->_rockerItems addObjectsFromArray:v7];
  [(HNDRocker *)self _assignLocationsToRockerItems];
}

- (void)_updateHapticMusicIcon:(id)a3
{
  v4 = a3;
  v5 = AXUIAssistiveTouchImageNameForName();
  if (!_AXSHapticMusicEnabled() || (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 hapticMusicActive], v6, (v7 & 1) == 0))
  {
    v8 = [v5 stringByAppendingString:@".slash"];

    v5 = v8;
  }

  [v4 setImageName:v5];
  [(HNDRocker *)self setHapticMusicButton:v4];
  if (![(HNDRocker *)self registeredForHapticMusicChanges])
  {
    objc_initWeak(&location, self);
    v9 = +[AXSettings sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100056874;
    v11[3] = &unk_1001D3438;
    objc_copyWeak(&v13, &location);
    v12 = v4;
    [v9 registerUpdateBlock:v11 forRetrieveSelector:"hapticMusicActive" withListener:self];

    objc_destroyWeak(&v13);
    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(DistributedCenter, self, sub_1000568C4, kAXSHapticMusicPreferenceDidChangeNotification, 0, 1028);
    [(HNDRocker *)self setRegisteredForHapticMusicChanges:1];
    objc_destroyWeak(&location);
  }
}

- (void)_updateMotionCuesIcon:(id)a3
{
  object = a3;
  v4 = AXUIAssistiveTouchImageNameForName();
  if (([AXTripleClickHelpers valueForAccessibilityShortcutOption:36]& 1) == 0)
  {
    v5 = [v4 stringByAppendingString:@".slash"];

    v4 = v5;
  }

  [object setImageName:v4];
  if (![(HNDRocker *)self registeredForMotionCuesChanges])
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, self, sub_100056A0C, kAXSMotionCuesPreferenceDidChangeNotification, object, 1028);
    [(HNDRocker *)self setRegisteredForMotionCuesChanges:1];
  }
}

- (void)_setRingerSwitchIcon:(id)a3
{
  v8 = a3;
  if (sub_100042494())
  {
    v3 = @"MUTE";
  }

  else
  {
    v3 = @"UNMUTE";
  }

  v4 = sub_100042B24(v3);
  if (AXDeviceHasStaccato())
  {
    v5 = sub_100042C9C(@"ACTION_BUTTON");
    [v8 setTitle:v5];

    v6 = AXUIAssistiveTouchImageNameForName();
    [v8 setImageName:v6];
  }

  else
  {
    [v8 setTitle:v4];
    if (sub_100042494())
    {
      v7 = @"IconMuted";
    }

    else
    {
      v7 = @"IconUnmuted";
    }

    [v8 setImageName:v7];
  }
}

- (void)updateRingerSwitch
{
  v3 = [(NSMutableArray *)self->_rockerItems indexOfObjectPassingTest:&stru_1001D4F20];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(NSMutableArray *)self->_rockerItems objectAtIndex:v3];
    if ([(HNDRocker *)self _replaceRingerWithOrientationLock])
    {
      [(HNDRocker *)self _setRotationLockIcon:v4];
    }

    else
    {
      [(HNDRocker *)self _setRingerSwitchIcon:v4];
    }
  }
}

- (void)updateRotationLockSwitch
{
  v3 = [(NSMutableArray *)self->_rockerItems axFilterObjectsUsingBlock:&stru_1001D4F60];
  v5 = [v3 firstObject];

  v4 = v5;
  if (v5)
  {
    [(HNDRocker *)self _setRotationLockIcon:v5];
    v4 = v5;
  }
}

- (void)_setRotationLockIcon:(id)a3
{
  v8 = a3;
  v3 = +[HNDEventManager sharedManager];
  v4 = [v3 orientationLocked];

  if (v4)
  {
    v5 = @"IconRotationUnlock";
  }

  else
  {
    v5 = @"IconRotationLock";
  }

  if (v4)
  {
    v6 = @"ORIENTATION_UNLOCKED";
  }

  else
  {
    v6 = @"ORIENTATION_LOCKED";
  }

  [v8 setImageName:v5];
  v7 = sub_100042B24(v6);
  [v8 setTitle:v7];
}

- (void)_loadHardwareMenuItems
{
  v3 = [(HNDRocker *)self hardwareItems];

  if (v3)
  {
    goto LABEL_13;
  }

  v4 = [objc_allocWithZone(NSMutableArray) init];
  [(HNDRocker *)self setHardwareItems:v4];

  if ([(HNDRocker *)self _includeRingerButtonInHardware])
  {
    v35 = AXAssistiveTouchIconLocationTopLeft;
    v5 = AXAssistiveTouchIconLocationTopRight;
    v6 = AXAssistiveTouchIconLocationMidLeft;
  }

  else
  {
    if (!AXDeviceHasStaccato())
    {
      v35 = AXAssistiveTouchIconLocationTopMiddle;
      v7 = AXAssistiveTouchIconLocationMidLeft;
      v36 = AXAssistiveTouchIconLocationBottomLeft;
      v9 = AXAssistiveTouchIconLocationBottomRight;
      v10 = AXAssistiveTouchIconLocationMidRight;
      v8 = AXAssistiveTouchIconLocationMidRight;
      goto LABEL_8;
    }

    v35 = AXAssistiveTouchIconLocationTopLeft;
    v6 = AXAssistiveTouchIconLocationMidLeft;
    v5 = AXAssistiveTouchIconLocationTopRight;
  }

  v7 = v5;
  v36 = AXAssistiveTouchIconLocationBottomLeft;
  v8 = AXAssistiveTouchIconLocationBottomRight;
  v9 = v6;
  v10 = AXAssistiveTouchIconLocationMidRight;
LABEL_8:
  v11 = v8;
  v12 = v10;
  v13 = [(HNDRocker *)self hardwareItems];
  v34 = v7;
  v14 = [(HNDRocker *)self _rockerButtonForLocation:v7 buttonType:AXAssistiveTouchIconTypeRotateScreen];
  [v13 addObject:v14];

  objc_initWeak(location, self);
  if ([(HNDRocker *)self _includeRingerButtonInHardware])
  {
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100057328;
    v40[3] = &unk_1001D4C10;
    objc_copyWeak(&v41, location);
    v15 = [HNDRockerButton buttonWithTitle:0 imageName:0 downBlock:0 upBlock:v40 showWithGuidedAccess:1 showWithAssistiveAccess:1];
    [v15 setTag:100];
    [v15 setLocation:v12];
    v16 = [(HNDRocker *)self hardwareItems];
    [v16 addObject:v15];

    objc_destroyWeak(&v41);
  }

  else if (AXDeviceHasStaccato())
  {
    v17 = AXUIAssistiveTouchImageNameForName();
    v18 = sub_100042C9C(@"ACTION_BUTTON");
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10005736C;
    v39[3] = &unk_1001D4EB8;
    v39[4] = self;
    v19 = [HNDRockerButton buttonWithTitle:v18 imageName:v17 downBlock:0 upBlock:v39 showWithGuidedAccess:0 showWithAssistiveAccess:1];

    [v19 setLocation:v12];
    v20 = [(HNDRocker *)self hardwareItems];
    [v20 addObject:v19];
  }

  v21 = sub_100042B24(@"MORE");
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100057374;
  v37[3] = &unk_1001D4C10;
  objc_copyWeak(&v38, location);
  v22 = [HNDRockerButton buttonWithTitle:v21 imageName:@"IconMore" downBlock:0 upBlock:v37 showWithGuidedAccess:1 showWithAssistiveAccess:1];

  [v22 setTag:109];
  [v22 setLocation:v11];
  v23 = [(HNDRocker *)self hardwareItems];
  [v23 addObject:v22];

  v24 = [(HNDRocker *)self hardwareItems];
  v25 = [(HNDRocker *)self _rockerButtonForLocation:v36 buttonType:AXAssistiveTouchIconTypeVolumeDown];
  [v24 addObject:v25];

  v26 = [(HNDRocker *)self hardwareItems];
  v27 = [(HNDRocker *)self _rockerButtonForLocation:v9 buttonType:AXAssistiveTouchIconTypeVolumeUp];
  [v26 addObject:v27];

  v28 = [(HNDRocker *)self hardwareItems];
  v29 = [(HNDRocker *)self _rockerButtonForLocation:v35 buttonType:AXAssistiveTouchIconTypeLockScreen];
  [v28 addObject:v29];

  v30 = [(HNDRocker *)self hardwareItems];
  v31 = [(HNDRocker *)self _filteredItems:v30];
  [(HNDRocker *)self setHardwareItems:v31];

  objc_destroyWeak(&v38);
  objc_destroyWeak(location);

LABEL_13:
  rockerItems = self->_rockerItems;
  v33 = [(HNDRocker *)self hardwareItems];
  [(NSMutableArray *)rockerItems addObjectsFromArray:v33];

  [(HNDRocker *)self updateRingerSwitch];
}

- (void)_customGesturePressed:(id)a3 fromButtonPress:(BOOL)a4
{
  v4 = a4;
  v6 = AXAssistiveTouchIconTypeCustom;
  v7 = a3;
  [(HNDRocker *)self updateForegroundImageForAction:v6];
  v8 = +[HNDHandManager sharedManager];
  v9 = [(HNDRocker *)self hardwareIdentifier];
  [v8 prepareGesture:v7 onDisplay:v9];

  if (v4)
  {
    v11 = +[HNDHandManager sharedManager];
    v10 = [(HNDRocker *)self hardwareIdentifier];
    [v11 performPreparedGestureOnDisplay:v10];
  }
}

- (void)_addFavoriteBoxPressed
{
  if (![(AXDispatchTimer *)self->_homeButtonDismissTimer isPending]|| [(AXDispatchTimer *)self->_homeButtonDismissTimer isCancelled])
  {
    v3 = +[AXSpringBoardServer server];
    v4 = [v3 isControlCenterVisible];

    if (v4)
    {
      v5 = +[AXPISystemActionHelper sharedInstance];
      [v5 toggleControlCenter];
    }

    v6 = +[AXSpringBoardServer server];
    v7 = [v6 isNotificationCenterVisible];

    if (v7)
    {
      v8 = +[AXSpringBoardServer server];
      [v8 toggleNotificationCenter];
    }

    v9 = +[HNDEventManager sharedManager];
    [v9 openCreateCustomGestureForAST];

    homeButtonDismissTimer = self->_homeButtonDismissTimer;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100057610;
    v11[3] = &unk_1001D3488;
    v11[4] = self;
    [(AXDispatchTimer *)homeButtonDismissTimer afterDelay:v11 processBlock:1.5];
  }
}

- (void)_loadFavoritesMenuItems
{
  [(NSMutableArray *)self->_rockerItems removeAllObjects];
  v2 = [objc_allocWithZone(NSMutableArray) init];
  if ([UIApp userInterfaceLayoutDirection] == 1)
  {
    v3 = &AXAssistiveTouchIconLocationBottomLeft;
    v4 = &AXAssistiveTouchIconLocationBottomRight;
    v5 = &AXAssistiveTouchIconLocationMidLeft;
    v50 = AXAssistiveTouchIconLocationTopRight;
    v6 = &AXAssistiveTouchIconLocationMidRight;
    v7 = &AXAssistiveTouchIconLocationTopLeft;
    v8 = &v50;
  }

  else
  {
    v3 = &AXAssistiveTouchIconLocationBottomRight;
    v4 = &AXAssistiveTouchIconLocationBottomLeft;
    v5 = &AXAssistiveTouchIconLocationMidRight;
    v49 = AXAssistiveTouchIconLocationTopLeft;
    v6 = &AXAssistiveTouchIconLocationMidLeft;
    v7 = &AXAssistiveTouchIconLocationTopRight;
    v8 = &v49;
  }

  v9 = *v7;
  v8[1] = AXAssistiveTouchIconLocationTopMiddle;
  v8[2] = v9;
  v10 = *v5;
  v8[3] = *v6;
  v8[4] = v10;
  v11 = AXAssistiveTouchIconLocationBottomMiddle;
  v8[5] = *v4;
  v8[6] = v11;
  v8[7] = *v3;
  v12 = [NSArray arrayWithObjects:"arrayWithObjects:count:" count:?];
  v13 = +[HNDDeviceManager sharedManager];
  v14 = [v13 mainDeviceIsMotionTracker];

  v15 = [v12 firstObject];
  if (v14)
  {
    v16 = [(HNDRocker *)self _rockerButtonForLocation:v15 buttonType:AXAssistiveTouchIconTypePinch];
    [v2 addObject:v16];

    v15 = [v12 objectAtIndexedSubscript:{objc_msgSend(v2, "count")}];
    v17 = &AXAssistiveTouchIconTypeRotate;
  }

  else
  {
    v17 = &AXAssistiveTouchIconTypePinchAndRotate;
  }

  v18 = [(HNDRocker *)self _rockerButtonForLocation:v15 buttonType:*v17];
  [v2 addObject:v18];

  v19 = +[HNDHandManager sharedManager];
  v40 = [v19 customGestures];

  v20 = [v2 count];
  if (&v20[[v40 count]] <= 7)
  {
    v21 = AXForceTouchAvailableAndEnabled();
    v22 = &AXAssistiveTouchIconTypeForceTap;
    if (!v21)
    {
      v22 = &AXAssistiveTouchIconTypeLongPress;
    }

    v23 = *v22;
    v24 = [v12 objectAtIndexedSubscript:{objc_msgSend(v2, "count")}];
    v25 = [(HNDRocker *)self _rockerButtonForLocation:v24 buttonType:v23];
    [v2 addObject:v25];
  }

  v26 = [v2 count];
  if (&v26[[v40 count]] <= 7)
  {
    v27 = [v12 objectAtIndexedSubscript:{objc_msgSend(v2, "count")}];
    v28 = [(HNDRocker *)self _rockerButtonForLocation:v27 buttonType:AXAssistiveTouchIconTypeDoubleTap];
    [v2 addObject:v28];
  }

  v29 = [v2 count];
  if (&v29[[v40 count]] <= 7)
  {
    v30 = [v12 objectAtIndexedSubscript:{objc_msgSend(v2, "count")}];
    v31 = [(HNDRocker *)self _rockerButtonForLocation:v30 buttonType:AXAssistiveTouchIconTypeDragAndDrop];
    [v2 addObject:v31];
  }

  objc_initWeak(&location, self);
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100057C68;
  v44[3] = &unk_1001D4F88;
  v32 = v2;
  v45 = v32;
  objc_copyWeak(&v47, &location);
  v33 = v12;
  v46 = v33;
  [v40 enumerateObjectsUsingBlock:v44];
  v34 = [v32 count];
  if (v34 <= 7)
  {
    v35 = v34 - 8;
    do
    {
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100057E30;
      v42[3] = &unk_1001D4C10;
      objc_copyWeak(&v43, &location);
      v36 = [HNDRockerButton buttonWithTitle:&stru_1001DB590 imageName:@"AddFavoritesBox" downBlock:0 upBlock:v42 showWithGuidedAccess:0 showWithAssistiveAccess:0];
      [v36 setContinueHighlightAfterTouch:1];
      [v36 setIsEmptyFavorite:1];
      v37 = [v33 objectAtIndexedSubscript:{objc_msgSend(v32, "count")}];
      [v36 setLocation:v37];

      [v32 addObject:v36];
      objc_destroyWeak(&v43);
    }

    while (!__CFADD__(v35++, 1));
  }

  v39 = [(HNDRocker *)self _filteredItems:v32];

  [(NSMutableArray *)self->_rockerItems addObjectsFromArray:v39];
  objc_destroyWeak(&v47);

  objc_destroyWeak(&location);
}

+ (CGSize)initialRockerSize
{
  +[AXAssistiveTouchLayoutView defaultSideLength];
  [AXAssistiveTouchLayoutView layoutViewSideLengthScaledFromDefaultLength:?];
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)nubbitSize
{
  IsPad = AXDeviceIsPad();
  v3 = 60.0;
  if (IsPad)
  {
    v3 = 76.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_setBackgroundWithType:(int)a3
{
  y = CGPointZero.y;
  if (a3 == 1)
  {
    +[HNDRocker initialRockerSize];
  }

  else
  {
    +[HNDRocker nubbitSize];
  }

  [(UIVisualEffectView *)self->_backdropView setFrame:CGPointZero.x, y, v6, v7];
  [(UIVisualEffectView *)self->_backdropView bounds];
  [(UIView *)self->_maskImageView setFrame:?];
  [(UIVisualEffectView *)self->_backdropView setMaskView:self->_maskImageView];
  self->_backgroundType = a3;
}

- (void)_addNewButtonsToView
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_rockerItems;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        [v8 setSelected:{0, v11}];
        v9 = [(HNDRocker *)self _contentView];
        [v9 addSubview:v8];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = [(HNDRocker *)self _contentView];
  [v10 bringSubviewToFront:self->_middleCircle];
}

- (void)_centerBackButtonToView:(id)a3
{
  v4 = a3;
  v5 = [(HNDRocker *)self backButtonConstraints];

  if (v5)
  {
    v6 = [(HNDRocker *)self backButtonConstraints];
    [NSLayoutConstraint deactivateConstraints:v6];
  }

  if (v4)
  {
    v16 = [(HNDRockerButton *)self->_backButton imageView];
    v7 = [v16 centerXAnchor];
    v8 = [v4 centerXAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v17[0] = v9;
    v10 = [(HNDRockerButton *)self->_backButton imageView];
    v11 = [v10 centerYAnchor];
    v12 = [v4 centerYAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v17[1] = v13;
    v14 = [NSArray arrayWithObjects:v17 count:2];
    [(HNDRocker *)self setBackButtonConstraints:v14];

    v15 = [(HNDRocker *)self backButtonConstraints];
    [NSLayoutConstraint activateConstraints:v15];
  }

  else
  {
    v15 = ASTLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1001297C0(v15);
    }
  }
}

- (void)_layoutMenuItemsInReverse:(BOOL)a3 oldRockers:(id)a4 animateToIcon:(id)a5 shouldUpdateKeyboardFocusIfNeeded:(BOOL)a6
{
  v8 = a3;
  v10 = a4;
  v11 = a5;
  [v10 enumerateObjectsUsingBlock:&stru_1001D4FC8];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10005858C;
  v35[3] = &unk_1001D3C80;
  v12 = v10;
  v36 = v12;
  v37 = self;
  v13 = v11;
  v38 = v13;
  v14 = objc_retainBlock(v35);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100058610;
  v31[3] = &unk_1001D5030;
  v15 = v12;
  v32 = v15;
  v33 = self;
  v34 = a6;
  v16 = objc_retainBlock(v31);
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_100058690;
  v28 = &unk_1001D36E8;
  v29 = self;
  v17 = v15;
  v30 = v17;
  v18 = objc_retainBlock(&v25);
  if (v8)
  {
    LODWORD(v19) = 1048233745;
    LODWORD(v21) = 1061244476;
    LODWORD(v22) = 1065096357;
    LODWORD(v20) = 1048233745;
    v23 = [CAMediaTimingFunction functionWithControlPoints:v19];
    v24 = [HNDSpringAnimationFactory factoryWithMass:0.5 stiffness:300.0 damping:400.0];
    [v24 setTimingFunction:v23];
    [UIView _animateWithDuration:0 delay:v24 options:v14 factory:v16 animations:0.61 completion:0.0];
    [UIView animateWithDuration:2 delay:v18 options:0 animations:0.2 completion:0.25];
  }

  else
  {
    (v14[2])(v14);
    (v18[2])(v18);
    (v16[2])(v16, 1);
  }
}

- (void)_layoutMenuItems:(BOOL)a3 oldRockers:(id)a4 viewForCenteringAtStart:(id)a5 shouldUpdateKeyboardFocusIfNeeded:(BOOL)a6
{
  v8 = a3;
  v10 = a4;
  v11 = a5;
  [(HNDRocker *)self _addNewButtonsToView];
  if (self->_state != 1)
  {
    [(HNDRockerButton *)self->_backButton setSelected:0];
  }

  v12 = [(HNDRocker *)self _contentView];
  [v12 bringSubviewToFront:self->_middleCircle];

  [v10 enumerateObjectsUsingBlock:&stru_1001D5050];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100058AF4;
  v31[3] = &unk_1001D3C80;
  v13 = v10;
  v32 = v13;
  v33 = self;
  v14 = v11;
  v34 = v14;
  v15 = objc_retainBlock(v31);
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_100058C10;
  v27 = &unk_1001D5030;
  v16 = v13;
  v30 = a6;
  v28 = v16;
  v29 = self;
  v17 = objc_retainBlock(&v24);
  if (v8)
  {
    LODWORD(v18) = 1048233745;
    LODWORD(v20) = 1061244476;
    LODWORD(v21) = 1065096357;
    LODWORD(v19) = 1048233745;
    v22 = [CAMediaTimingFunction functionWithControlPoints:v18];
    v23 = [HNDSpringAnimationFactory factoryWithMass:0.5 stiffness:300.0 damping:400.0];
    [v23 setTimingFunction:v22];
    [UIView _animateWithDuration:2 delay:v23 options:v15 factory:v17 animations:0.61 completion:0.0];
  }

  else
  {
    (v15[2])(v15);
    (v17[2])(v17, 1);
  }
}

- (BOOL)activateMenuItemDown:(id)a3 fromButtonPress:(BOOL)a4
{
  v5 = a3;
  if ([v5 isEqualToString:AXAssistiveTouchIconTypeHome])
  {
    [(HNDRocker *)self _homeButton:1];
  }

  else if ([v5 isEqualToString:AXAssistiveTouchIconTypeLockScreen])
  {
    [(HNDRocker *)self _lockButton:1];
  }

  else if ([v5 isEqualToString:AXAssistiveTouchIconTypeVolumeUp])
  {
    [(HNDRocker *)self _volumeUp:1];
  }

  else
  {
    if (![v5 isEqualToString:AXAssistiveTouchIconTypeVolumeDown])
    {
      v7 = 0;
      goto LABEL_12;
    }

    [(HNDRocker *)self _volumeDown:1];
  }

  v6 = ASTLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Activate menu item down: %@", &v9, 0xCu);
  }

  v7 = 1;
LABEL_12:

  return v7;
}

- (BOOL)activateMenuItemUp:(id)a3 fromButtonPress:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 isEqualToString:AXAssistiveTouchIconTypeOrientation])
  {
    [(HNDRocker *)self _rotationLockPressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeOpenMenu])
  {
    v7 = [(HNDRocker *)self displayManager];
    [v7 showMenu:1];
LABEL_5:

    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeNotificationCenter])
  {
    [(HNDRocker *)self _notificationCenterPressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeControlCenter])
  {
    [(HNDRocker *)self _controlCenterPressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeHome])
  {
    [(HNDRocker *)self _homeButton:0];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeSiri])
  {
    if (j__AXDeviceIsSiriAvailable())
    {
      [(HNDRocker *)self _siriButtonPressed];
    }

    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeTypeToSiri])
  {
    if (j__AXDeviceIsSiriAvailable())
    {
      [(HNDRocker *)self _typeToSiriButtonPressed];
    }

    goto LABEL_12;
  }

  v11 = AXAssistiveTouchIconTypeVoiceControl;
  if ([v6 isEqualToString:AXAssistiveTouchIconTypeVoiceControl])
  {
    if (!j__AXDeviceIsVoiceControlAvailable())
    {
      goto LABEL_12;
    }

LABEL_24:
    [(HNDRocker *)self _voiceControlPressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeCommandAndControl])
  {
    [(HNDRocker *)self _commandAndControlPressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeLockScreen])
  {
    [(HNDRocker *)self _lockButton:0];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeVolumeUp])
  {
    [(HNDRocker *)self _volumeUp:0];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeVolumeDown])
  {
    [(HNDRocker *)self _volumeDown:0];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeMute])
  {
    [(HNDRocker *)self _ringerPressed:1];
    goto LABEL_12;
  }

  if (AXDeviceHasStaccato() && [v6 isEqualToString:AXAssistiveTouchIconTypeActionButton])
  {
    [(HNDRocker *)self _actionButtonPressed];
    goto LABEL_12;
  }

  if (AXDeviceSupportsCameraButton() && [v6 isEqualToString:AXAssistiveTouchIconTypeCameraButton])
  {
    [(HNDRocker *)self _cameraButtonPressed];
    goto LABEL_12;
  }

  if (AXDeviceSupportsCameraButton() && [v6 isEqualToString:AXAssistiveTouchIconTypeCameraButtonLightPress])
  {
    [(HNDRocker *)self _cameraButtonLightPressed];
    goto LABEL_12;
  }

  if (AXDeviceSupportsCameraButton() && [v6 isEqualToString:AXAssistiveTouchIconTypeCameraButtonDoubleLightPress])
  {
    [(HNDRocker *)self _cameraButtonDoubleLightPressed];
    goto LABEL_12;
  }

  if (AXDeviceHasGreyMatterEnabled() && AXDeviceIsPhone() && [v6 isEqualToString:AXAssistiveTouchIconTypeVisualIntelligence])
  {
    [(HNDRocker *)self _openVisualIntelligence];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeShake])
  {
    [(HNDRocker *)self _shakePressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeAppSwitcher])
  {
    [(HNDRocker *)self _toggleAppSwitcher];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeScreenshot])
  {
    [(HNDRocker *)self _screenshotPressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeHoverTextTyping])
  {
    [(HNDRocker *)self _toggleHoverTextTyping];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeTrackpad])
  {
    [(HNDRocker *)self _trackpadPressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:v11])
  {
    goto LABEL_24;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypePinch])
  {
    v12 = self;
    v13 = 1;
LABEL_68:
    [(HNDRocker *)v12 _pinchPressed:0 mode:v13];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeRotate])
  {
    v12 = self;
    v13 = 0;
    goto LABEL_68;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypePinchAndRotate])
  {
    v12 = self;
    v13 = 2;
    goto LABEL_68;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeTap])
  {
LABEL_70:
    [(HNDRocker *)self _tapPressed:0 fromButtonPress:v4];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeDoubleTap])
  {
    [(HNDRocker *)self _doubleTapPressed:0 fromButtonPress:v4];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeLongPress])
  {
    [(HNDRocker *)self _longPressPressed:0 fromButtonPress:v4];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeDragAndDrop])
  {
    v14 = self;
    v15 = v4;
    v16 = 0;
LABEL_79:
    [(HNDRocker *)v14 _dragAndDropPressed:0 fromButtonPress:v15 dragMenu:v16];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeMoveMenu])
  {
    v14 = self;
    v15 = v4;
    v16 = 1;
    goto LABEL_79;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeSpotlight])
  {
    [(HNDRocker *)self _spotlightPressed:0];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeTripleClick])
  {
    [(HNDRocker *)self _tripleClickHomePressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeForceTap])
  {
    [(HNDRocker *)self _orbPressed:0 fromButtonPress:v4];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeSOS])
  {
    [(HNDRocker *)self _sosPressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeDetectionMode])
  {
    [(HNDRocker *)self _detectionModePresssed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeWatchRemoteScreen])
  {
    [(HNDRocker *)self _watchRemoteScreenPressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeBackgroundSounds])
  {
    [(HNDRocker *)self _backgroundSoundsPressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeLiveCaptions])
  {
    [(HNDRocker *)self _liveCaptionsPressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeDimFlashingLights])
  {
    [(HNDRocker *)self _dimFlashingLightsPressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeHapticMusic])
  {
    [(HNDRocker *)self _hapticMusicPressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeMotionCues])
  {
    [(HNDRocker *)self _motionCuesPressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeLiveSpeech])
  {
    [(HNDRocker *)self _liveSpeechPressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeNearbyDeviceControl])
  {
    [(HNDRocker *)self _nearbyDeviceControlPressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeAccessibilityReader])
  {
    [(HNDRocker *)self _accessibilityReaderPressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeSysdiagnose])
  {
    [(HNDRocker *)self _sysdiagnosePressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeRebootDevice])
  {
    [(HNDRocker *)self _rebootDevicePressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeReachability])
  {
    [(HNDRocker *)self _reachabilityPressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeSpeakScreen])
  {
    [(HNDRocker *)self _speakScreenPressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeToggleDock])
  {
    [(HNDRocker *)self _dockPressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeArmApplePay])
  {
    [(HNDRocker *)self _applePayButtonPressed:0];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeDwellResume])
  {
    v17 = self;
    v18 = 0;
LABEL_124:
    [(HNDRocker *)v17 _toggleDwellControlPause:v18];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeDwellPause])
  {
    v17 = self;
    v18 = 1;
    goto LABEL_124;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeDwellPauseToggle])
  {
    v7 = +[HNDHandManager sharedManager];
    -[HNDRocker _toggleDwellControlPause:](self, "_toggleDwellControlPause:", [v7 dwellControlPaused] ^ 1);
    goto LABEL_5;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeDwellLock])
  {
    v19 = self;
    v20 = 1;
LABEL_133:
    [(HNDRocker *)v19 _lockDwellControlAction:v20];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeDwellUnlock])
  {
    v19 = self;
    v20 = 0;
    goto LABEL_133;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeDwellLockToggle])
  {
    v21 = +[HNDHandManager sharedManager];
    v22 = [v21 dwellControlAutorevertEnabled];

    v19 = self;
    v20 = v22;
    goto LABEL_133;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeDwellClick])
  {
    goto LABEL_70;
  }

  v23 = AXAssistiveTouchIconTypeDwellIncreaseTime;
  if ([v6 isEqualToString:AXAssistiveTouchIconTypeDwellIncreaseTime])
  {
    [(HNDRocker *)self _increaseDwellTimePressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:v23])
  {
    [(HNDRocker *)self _decreaseDwellTimePressed];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeScrollUp])
  {
    v24 = self;
    v25 = v4;
    v26 = 1;
LABEL_145:
    v27 = 0;
LABEL_149:
    v28 = 0;
LABEL_155:
    [(HNDRocker *)v24 _scrollPressed:0 fromButtonPress:v25 vertical:v26 forward:v27 max:v28];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeScrollDown])
  {
    v24 = self;
    v25 = v4;
    v26 = 1;
LABEL_148:
    v27 = 1;
    goto LABEL_149;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeScrollLeft])
  {
    v24 = self;
    v25 = v4;
    v26 = 0;
    goto LABEL_145;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeScrollRight])
  {
    v24 = self;
    v25 = v4;
    v26 = 0;
    goto LABEL_148;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeScrollToTop])
  {
    v24 = self;
    v25 = v4;
    v26 = 1;
    v27 = 0;
LABEL_154:
    v28 = 1;
    goto LABEL_155;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeScrollToBottom])
  {
    v24 = self;
    v25 = v4;
    v26 = 1;
    v27 = 1;
    goto LABEL_154;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeContinuousScrollHorizontal])
  {
    v29 = self;
    v30 = v4;
    v31 = 1;
LABEL_160:
    [(HNDRocker *)v29 _continuousScrollPressed:0 fromButtonPress:v30 inDirection:v31 iconType:v6];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeContinuousScrollVertical])
  {
    v29 = self;
    v30 = v4;
    v31 = 0;
    goto LABEL_160;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeEyeTrackingBubbleMode])
  {
    goto LABEL_165;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeEyeTrackingAutoHide])
  {
    [(HNDRocker *)self _autoHideForEyeTrackingToggled];
    goto LABEL_12;
  }

  if ([v6 isEqualToString:AXAssistiveTouchIconTypeHeadTrackingBubbleMode])
  {
LABEL_165:
    [(HNDRocker *)self _bubbleModeToggled];
    goto LABEL_12;
  }

  if (AXDeviceSupportsOnDeviceEyeTracking() && [v6 isEqualToString:AXAssistiveTouchIconTypeCalibrateOnDeviceEyeTracking])
  {
    [(HNDRocker *)self _calibrateEyeTrackingPressed];
  }

  else if (AXDeviceSupportsOnDeviceEyeTracking() && [v6 isEqualToString:AXAssistiveTouchIconTypeOnDeviceEyeTrackingZoomScreen])
  {
    [(HNDRocker *)self _toggleNeedsToShowZoomWindow];
  }

  else if (AXDeviceSupportsOnDeviceEyeTracking() && [v6 isEqualToString:AXAssistiveTouchIconTypeOnDeviceEyeTracking])
  {
    [(HNDRocker *)self _toggleOnDeviceEyeTracking];
  }

  else if ([v6 isEqualToString:AXAssistiveTouchIconTypeDwellToggleKeyboardContinuousPath])
  {
    [(HNDRocker *)self _toggleDwellKeyboardContinuousPath];
  }

  else if ([v6 isEqualToString:AXAssistiveTouchIconTypeAssistiveAccess])
  {
    [(HNDRocker *)self _toggleAssistiveAccess];
  }

  else
  {
    v32 = AXAssistiveTouchIconTypeCamera;
    if ([v6 isEqualToString:AXAssistiveTouchIconTypeCamera])
    {
      [(HNDRocker *)self _cameraPressed];
    }

    else if ([v6 isEqualToString:v32])
    {
      [(HNDRocker *)self _frontFacingCameraPressed];
    }

    else if ([v6 hasPrefix:@"CustomGesture-"])
    {
      v51 = [v6 stringByReplacingOccurrencesOfString:@"CustomGesture-" withString:&stru_1001DB590];
      v33 = +[HNDHandManager sharedManager];
      v34 = [v33 customGestures];

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v35 = v34;
      v36 = [v35 countByEnumeratingWithState:&v54 objects:v60 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v55;
        while (2)
        {
          for (i = 0; i != v37; i = i + 1)
          {
            if (*v55 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v54 + 1) + 8 * i);
            v41 = [v40 name];
            v42 = [v41 isEqualToString:v51];

            if (v42)
            {
              [(HNDRocker *)self _customGesturePressed:v40 fromButtonPress:v4];
              goto LABEL_196;
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v54 objects:v60 count:16];
          if (v37)
          {
            continue;
          }

          break;
        }
      }

LABEL_196:
    }

    else
    {
      v43 = AXASTSiriShortcutPrefixName;
      if ([v6 hasPrefix:AXASTSiriShortcutPrefixName])
      {
        v44 = [NSString stringWithFormat:@"%@-", v43];
        v45 = [v6 rangeOfString:v44];
        v47 = [v6 substringFromIndex:&v45[v46]];

        v48 = +[AXSiriShortcutsManager sharedManager];
        v49 = [v48 shortcutForIdentifier:v47];

        v50 = +[AXSiriShortcutsManager sharedManager];
        [v50 performShortcut:v49];

        [(HNDRocker *)self _menuExited];
      }

      else
      {
        if (![v6 isEqualToString:AXAssistiveTouchIconTypePassThroughToApp])
        {
          v9 = 0;
          goto LABEL_15;
        }

        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_100059DF8;
        v53[3] = &unk_1001D3488;
        v53[4] = self;
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_100059E40;
        v52[3] = &unk_1001D3750;
        v52[4] = self;
        [UIView animateWithDuration:v53 animations:v52 completion:0.15];
      }
    }
  }

LABEL_12:
  [(HNDRocker *)self setLastMenuItemActivated:v6];
  v8 = ASTLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v59 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Activate menu item up: %@", buf, 0xCu);
  }

  v9 = 1;
LABEL_15:

  return v9;
}

- (void)showNubbitPressedState:(BOOL)a3
{
  v3 = 0.65;
  if (!a3)
  {
    v3 = 1.0;
  }

  [(HNDRocker *)self setAlpha:v3];
}

- (BOOL)customizationMapAllowInstanceActivation:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = AXAssistiveTouchLocationsForLayout();
    v5 = [v4 firstObject];
    v6 = [v3 objectForKeyedSubscript:v5];

    if (!v6 || ([v6 isEqualToString:AXAssistiveTouchIconTypeCustom] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", AXAssistiveTouchIconTypeDevice) & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", AXAssistiveTouchIconTypeGestures) & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", AXAssistiveTouchIconTypeOrientation) & 1) != 0)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v7 = [v6 isEqualToString:AXAssistiveTouchIconTypeRotateScreen] ^ 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)_rockerItemsByLocation
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:[(NSMutableArray *)self->_rockerItems count]];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_rockerItems;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 location];
        [v3 setObject:v9 forKeyedSubscript:v10];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_layoutButtonsWithViewForCenteringAtStart:(id)a3 includingBackButton:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(HNDRocker *)self _setBackgroundWithType:1];
  v7 = [(HNDRocker *)self _rockerItemsByLocation];
  v8 = v7;
  v9 = "tonNumber:";
  if (v6)
  {
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_10005AA8C;
    v59[3] = &unk_1001D50B8;
    v59[4] = self;
    v60 = v7;
    v61 = v6;
    v62 = v4;
    [UIView performWithoutAnimation:v59];
  }

  v10 = &selRef_repeatItemWithDismissTimer;
  if (self->_state != 2)
  {
    goto LABEL_11;
  }

  if ([(NSMutableArray *)self->_rockerItems count]== 6)
  {
    layoutView = self->_layoutView;
    v11 = AXAssistiveTouchIconLocationTopLeft;
    v77[0] = AXAssistiveTouchIconLocationTopLeft;
    v52 = [NSValue valueWithCGPoint:0.331, 0.127];
    v78[0] = v52;
    v77[1] = AXAssistiveTouchIconLocationTopRight;
    v12 = AXAssistiveTouchIconLocationTopRight;
    v51 = [NSValue valueWithCGPoint:0.669, 0.127];
    v78[1] = v51;
    v53 = v4;
    v77[2] = AXAssistiveTouchIconLocationMidLeft;
    v13 = AXAssistiveTouchIconLocationMidLeft;
    v36 = AXAssistiveTouchIconLocationMidLeft;
    v49 = [NSValue valueWithCGPoint:0.161, 0.475];
    v78[2] = v49;
    v56 = v8;
    v14 = AXAssistiveTouchIconLocationMidRight;
    v77[3] = AXAssistiveTouchIconLocationMidRight;
    v45 = [NSValue valueWithCGPoint:0.854, 0.475];
    v78[3] = v45;
    v15 = AXAssistiveTouchIconLocationBottomLeft;
    v77[4] = AXAssistiveTouchIconLocationBottomLeft;
    v43 = [NSValue valueWithCGPoint:0.331, 0.753];
    v78[4] = v43;
    v16 = AXAssistiveTouchIconLocationBottomRight;
    v77[5] = AXAssistiveTouchIconLocationBottomRight;
    v41 = [NSValue valueWithCGPoint:0.669, 0.753];
    v78[5] = v41;
    v38 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:6];
    v75[0] = v11;
    v75[1] = v12;
    v40 = [NSArray arrayWithObjects:v75 count:2];
    v76[0] = v40;
    v74[0] = v13;
    v74[1] = v14;
    v39 = [NSArray arrayWithObjects:v74 count:2];
    v76[1] = v39;
    v73[0] = v15;
    v73[1] = v16;
    v37 = [NSArray arrayWithObjects:v73 count:2];
    v76[2] = v37;
    v35 = [NSArray arrayWithObjects:v76 count:3];
    v71[0] = v11;
    v71[1] = v15;
    v17 = [NSArray arrayWithObjects:v71 count:2];
    v72[0] = v17;
    v70[0] = v12;
    v70[1] = v16;
    v18 = v12;
    v19 = [NSArray arrayWithObjects:v70 count:2];
    v72[1] = v19;
    v20 = [NSArray arrayWithObjects:v72 count:2];
    v69[0] = v11;
    v69[1] = v18;
    v69[2] = v14;
    v69[3] = v14;
    v69[4] = v16;
    v69[5] = v15;
    v69[6] = v36;
    v69[7] = v36;
    v4 = v53;
    v8 = v56;
    v21 = [NSArray arrayWithObjects:v69 count:8];
    [(AXAssistiveTouchLayoutView *)layoutView layoutItemsByLocation:v56 positions:v38 rows:v35 columns:v20 clockwiseOctagonalLocations:v21 horizontallyCenteredLocation:0];

    v10 = &selRef_repeatItemWithDismissTimer;
    v22 = v49;
    goto LABEL_8;
  }

  if ([(NSMutableArray *)self->_rockerItems count]== 5)
  {
    v50 = self->_layoutView;
    v57 = v8;
    v23 = AXAssistiveTouchIconLocationTopMiddle;
    v67[0] = AXAssistiveTouchIconLocationTopMiddle;
    v52 = [NSValue valueWithCGPoint:0.5, 0.127];
    v68[0] = v52;
    v55 = v6;
    v24 = AXAssistiveTouchIconLocationMidLeft;
    v67[1] = AXAssistiveTouchIconLocationMidLeft;
    v51 = [NSValue valueWithCGPoint:0.161, 0.475];
    v68[1] = v51;
    v54 = v4;
    v25 = AXAssistiveTouchIconLocationMidRight;
    v67[2] = AXAssistiveTouchIconLocationMidRight;
    v48 = [NSValue valueWithCGPoint:0.854, 0.475];
    v68[2] = v48;
    v26 = AXAssistiveTouchIconLocationBottomLeft;
    v67[3] = AXAssistiveTouchIconLocationBottomLeft;
    v46 = [NSValue valueWithCGPoint:0.331, 0.753];
    v68[3] = v46;
    v27 = AXAssistiveTouchIconLocationBottomRight;
    v67[4] = AXAssistiveTouchIconLocationBottomRight;
    v44 = [NSValue valueWithCGPoint:0.669, 0.753];
    v68[4] = v44;
    v42 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:5];
    v65[0] = v24;
    v65[1] = v25;
    v28 = [NSArray arrayWithObjects:v65 count:2];
    v66[0] = v28;
    v64[0] = v26;
    v64[1] = v27;
    v29 = [NSArray arrayWithObjects:v64 count:2];
    v66[1] = v29;
    v30 = [NSArray arrayWithObjects:v66 count:2];
    v63[0] = v23;
    v63[1] = v23;
    v63[2] = v25;
    v63[3] = v25;
    v4 = v54;
    v63[4] = v27;
    v63[5] = v26;
    v63[6] = v24;
    v63[7] = v24;
    v6 = v55;
    v10 = &selRef_repeatItemWithDismissTimer;
    v31 = [NSArray arrayWithObjects:v63 count:8];
    v32 = v23;
    v8 = v57;
    [(AXAssistiveTouchLayoutView *)v50 layoutItemsByLocation:v57 positions:v42 rows:v30 columns:&__NSArray0__struct clockwiseOctagonalLocations:v31 horizontallyCenteredLocation:v32];

    v22 = v48;
LABEL_8:

    v9 = "updateSignalQuality:forButtonNumber:" + 26;
    if (!v4)
    {
      goto LABEL_13;
    }

LABEL_12:
    v33 = [(HNDRocker *)self _contentView];
    [(HNDRocker *)self _centerBackButtonToView:v33];

    goto LABEL_13;
  }

  if (_AXSMossdeepEnabled())
  {
LABEL_11:
    [(AXAssistiveTouchLayoutView *)self->_layoutView layoutItemsByLocation:v8 hasBackButton:[(HNDRocker *)self _backButtonShouldBeHidden]^ 1];
    if (!v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  _AXAssert();
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_13:
  [(HNDRocker *)self layoutIfNeeded];
  v34 = *(&self->super.super.super.super.isa + *(v10 + 792));
  v58[0] = _NSConcreteStackBlock;
  v58[1] = *(v9 + 470);
  v58[2] = sub_10005AB10;
  v58[3] = &unk_1001D50E0;
  v58[4] = self;
  [v34 enumerateObjectsUsingBlock:v58];
  if (v4)
  {
    [(HNDRocker *)self _updateBackButtonVisibility];
  }
}

- (void)_resetHoverCircleLocation
{
  [(HNDRocker *)self bounds];
  AX_CGRectGetCenter();
  v4 = v3;
  v6 = v5;
  [(AXPIFingerView *)self->_middleCircle frame];
  v9 = sub_10004240C(v4 - v7 * 0.5, v6 - v8 * 0.5);
  middleCircle = self->_middleCircle;

  [(AXPIFingerView *)middleCircle setFrame:v9];
}

- (void)_updateKeyboardFocusIfNeeded
{
  if (_AXSFullKeyboardAccessEnabled())
  {
    [(HNDRocker *)self setNeedsFocusUpdate];

    [(HNDRocker *)self updateFocusIfNeeded];
  }
}

- (void)_loadMenuItems:(BOOL)a3 viewForCenteringAtStart:(id)a4 goBackwards:(BOOL)a5 originalState:(int64_t)a6 shouldUpdateKeyboardFocusIfNeeded:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v10 = a3;
  v12 = a4;
  [(AXPIFingerView *)self->_middleCircle setSelected:1];
  [(HNDRockerButton *)self->_selectedButton setSelected:0];
  selectedButton = self->_selectedButton;
  self->_selectedButton = 0;

  if (!v9)
  {
    v14 = [(NSMutableArray *)self->_stackState count];
    if (a6 != 1 || v14 != 1)
    {
      v15 = [(NSMutableArray *)self->_stackState lastObject];
      v16 = [v15 intValue];

      if (v16 != a6)
      {
        stackState = self->_stackState;
        v18 = [NSNumber numberWithInteger:a6];
        [(NSMutableArray *)stackState addObject:v18];
      }
    }
  }

  [(HNDRocker *)self showVolumeBar:0 withProgress:0.0];
  v19 = [(NSMutableArray *)self->_rockerItems copy];
  [(NSMutableArray *)self->_rockerItems removeAllObjects];
  state = self->_state;
  if (state > 6)
  {
    if (state > 9)
    {
      switch(state)
      {
        case 10:
          [(HNDRocker *)self _loadDwellMenuItems];
          break;
        case 11:
          [(HNDRocker *)self _loadSecureIntentMenuItems];
          break;
        case 12:
          [(HNDRocker *)self _loadSiriShortcutsMenuItems];
          break;
      }
    }

    else if (state == 7)
    {
      [(HNDRocker *)self _loadSideAppMenuItems];
    }

    else if (state == 8)
    {
      [(HNDRocker *)self _loadSideAppMoreMenuItems];
    }

    else
    {
      [(HNDRocker *)self _loadScrollMenuItems];
    }
  }

  else if (state > 3)
  {
    if (state == 4)
    {
      [(HNDRocker *)self _loadRotateMenuItems];
    }

    else if (state == 5)
    {
      [(HNDRocker *)self _loadGesturesMenuItems];
    }

    else
    {
      [(HNDRocker *)self _loadMoreMenuItems];
    }
  }

  else
  {
    switch(state)
    {
      case 1:
        [(HNDRocker *)self _loadInitialMenuItems];
        break;
      case 2:
        [(HNDRocker *)self _loadHardwareMenuItems];
        break;
      case 3:
        [(HNDRocker *)self _loadFavoritesMenuItems];
        break;
    }
  }

  v21 = +[AXBackBoardServer server];
  v22 = [v21 isGuidedAccessActive];

  v23 = AXAssistiveAccessEnabled();
  rockerItems = self->_rockerItems;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10005B0F8;
  v32[3] = &unk_1001D5100;
  v33 = v22;
  v34 = v23;
  [(NSMutableArray *)rockerItems enumerateObjectsUsingBlock:v32];
  [(NSMutableArray *)self->_rockerItems enumerateObjectsUsingBlock:&stru_1001D5140];
  if (qword_100218A98 != -1)
  {
    sub_100129804();
  }

  v25 = +[AXSpringBoardServer server];
  v26 = [v25 isPurpleBuddyAppFrontmost];

  v27 = self->_rockerItems;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10005B364;
  v30[3] = &unk_1001D5180;
  v31 = v26;
  [(NSMutableArray *)v27 enumerateObjectsUsingBlock:v30];
  if (v9)
  {
    [(HNDRocker *)self _addNewButtonsToView];
    if ((a6 - 2) >= 0xB)
    {
      _AXAssert();
    }

    else
    {
      v28 = [(HNDRocker *)self animationEndButtonForButtonTag:dword_1001BD248[a6 - 2]];
      if (v28)
      {
LABEL_40:
        [(HNDRocker *)self _removeAllAnimations:1, v29];
        [(HNDRocker *)self _layoutMenuItemsInReverse:v10 oldRockers:v19 animateToIcon:v28 shouldUpdateKeyboardFocusIfNeeded:v7];

        goto LABEL_41;
      }
    }

    v29 = [NSNumber numberWithInteger:a6];
    _AXAssert();

    v28 = 0;
    goto LABEL_40;
  }

  [(HNDRocker *)self _removeAllAnimations:1];
  [(HNDRocker *)self _layoutMenuItems:v10 oldRockers:v19 viewForCenteringAtStart:v12 shouldUpdateKeyboardFocusIfNeeded:v7];
LABEL_41:
  [(HNDRocker *)self _resetHoverCircleLocation];
  [(NSMutableArray *)self->_rockerItems enumerateObjectsUsingBlock:&stru_1001D51C0];
  [(HNDRocker *)self _updateSelectedButton];
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

- (id)animationEndButtonForButtonTag:(int)a3
{
  rockerItems = self->_rockerItems;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005B4D4;
  v8[3] = &unk_1001D51E0;
  v9 = a3;
  v5 = [(NSMutableArray *)rockerItems indexOfObjectPassingTest:v8];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    _AXAssert();
    v5 = 0;
  }

  v6 = [(NSMutableArray *)self->_rockerItems objectAtIndex:v5];

  return v6;
}

- (void)_applePayButtonPressed:(id)a3
{
  if ([(HNDRocker *)self _expectsSecureIntent])
  {

    [(HNDRocker *)self _confirmApplePay];
  }

  else
  {

    [(HNDRocker *)self _armApplePay];
  }
}

- (CGPoint)_initialPointForGesture
{
  v3 = +[HNDDeviceManager sharedManager];
  v4 = [v3 mainDeviceIsPointer];

  if (!v4 || ((+[HNDHandManager sharedManager](HNDHandManager, "sharedManager"), v5 = objc_claimAutoreleasedReturnValue(), [v5 currentPointForPointer], v7 = v6, v9 = v8, v5, v7 == CGPointZero.x) ? (v10 = v9 == CGPointZero.y) : (v10 = 0), v10))
  {
    if (self->_style)
    {
      [(AXPIFingerView *)self->_middleCircle frame];
      AX_CGRectGetCenter();
      v12 = v11;
      v14 = v13;
      v15 = [(HNDRocker *)self superview];
      [(HNDRocker *)self convertPoint:v15 toView:v12, v14];
      v7 = v16;
      v9 = v17;
    }

    else
    {
      v18 = [(HNDRocker *)self window];
      [v18 bounds];
      MidX = CGRectGetMidX(v28);
      v20 = [(HNDRocker *)self window];
      [v20 bounds];
      MidY = CGRectGetMidY(v29);

      v15 = [(HNDRocker *)self window];
      v22 = [(HNDRocker *)self superview];
      [v15 convertPoint:v22 toView:{MidX, MidY}];
      v7 = v23;
      v9 = v24;
    }
  }

  v25 = v7;
  v26 = v9;
  result.y = v26;
  result.x = v25;
  return result;
}

- (void)_orbPressed:(id)a3 fromButtonPress:(BOOL)a4
{
  v4 = a4;
  [(HNDRocker *)self updateForegroundImageForAction:AXAssistiveTouchIconTypeForceTap];
  [(HNDRocker *)self _initialPointForGesture];
  v10 = [AXNamedReplayableGesture forceTouchGestureAtPoint:?];
  v6 = +[HNDHandManager sharedManager];
  v7 = [(HNDRocker *)self hardwareIdentifier];
  [v6 prepareGesture:v10 onDisplay:v7];

  if (v4)
  {
    v8 = +[HNDHandManager sharedManager];
    v9 = [(HNDRocker *)self hardwareIdentifier];
    [v8 performPreparedGestureOnDisplay:v9];
  }
}

- (void)_longPressPressed:(id)a3 fromButtonPress:(BOOL)a4
{
  v4 = a4;
  [(HNDRocker *)self updateForegroundImageForAction:AXAssistiveTouchIconTypeLongPress];
  [(HNDRocker *)self _initialPointForGesture];
  v10 = [AXNamedReplayableGesture longPressGestureAtPoint:?];
  v6 = +[HNDHandManager sharedManager];
  v7 = [(HNDRocker *)self hardwareIdentifier];
  [v6 prepareGesture:v10 onDisplay:v7];

  if (v4)
  {
    v8 = +[HNDHandManager sharedManager];
    v9 = [(HNDRocker *)self hardwareIdentifier];
    [v8 performPreparedGestureOnDisplay:v9];
  }
}

- (void)_tapPressed:(id)a3 fromButtonPress:(BOOL)a4
{
  v4 = a4;
  [(HNDRocker *)self updateForegroundImageForAction:AXAssistiveTouchIconTypeDwellClick];
  [(HNDRocker *)self _initialPointForGesture];
  v10 = [AXNamedReplayableGesture tapGestureAtPoint:0 isDoubleTap:1 numberOfFingers:?];
  v6 = +[HNDHandManager sharedManager];
  v7 = [(HNDRocker *)self hardwareIdentifier];
  [v6 prepareGesture:v10 onDisplay:v7];

  if (v4)
  {
    v8 = +[HNDHandManager sharedManager];
    v9 = [(HNDRocker *)self hardwareIdentifier];
    [v8 performPreparedGestureOnDisplay:v9];
  }
}

- (void)_doubleTapPressed:(id)a3 fromButtonPress:(BOOL)a4
{
  v4 = a4;
  [(HNDRocker *)self updateForegroundImageForAction:AXAssistiveTouchIconTypeDoubleTap];
  [(HNDRocker *)self _initialPointForGesture];
  v10 = [AXNamedReplayableGesture tapGestureAtPoint:1 isDoubleTap:1 numberOfFingers:?];
  v6 = +[HNDHandManager sharedManager];
  v7 = [(HNDRocker *)self hardwareIdentifier];
  [v6 prepareGesture:v10 onDisplay:v7];

  if (v4)
  {
    v8 = +[HNDHandManager sharedManager];
    v9 = [(HNDRocker *)self hardwareIdentifier];
    [v8 performPreparedGestureOnDisplay:v9];
  }
}

- (void)_dragAndDropPressed:(id)a3 fromButtonPress:(BOOL)a4 dragMenu:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_displayManager);
  v9 = [WeakRetained rocker];
  v10 = [v9 isNubbitVisible];

  if (!v5 || (v10 & 1) != 0)
  {
    if (v5)
    {
      v12 = 0;
    }

    else
    {
      v12 = AXAssistiveTouchIconTypeDragAndDrop;
    }

    [(HNDRocker *)self updateForegroundImageForAction:v12];
    [(HNDRocker *)self _initialPointForGesture];
    v14 = v13;
    v16 = v15;
    v17 = +[HNDHandManager sharedManager];
    v18 = [v17 inDragMode];

    v21 = +[HNDHandManager sharedManager];
    v19 = [(HNDRocker *)self hardwareIdentifier];
    if (v18)
    {
      [v21 endDragModeAtPoint:v19 onDisplay:1 completed:{v14, v16}];
    }

    else
    {
      [v21 startDragModeOnDisplay:v19];

      if (!v6 || v5)
      {
        if (!v5)
        {
          return;
        }

        v21 = +[HNDHandManager sharedManager];
        v20 = [(HNDRocker *)self hardwareIdentifier];
        [v21 beginDragMenuAtPoint:v20 onDisplay:{v14, v16}];
      }

      else
      {
        v21 = +[HNDHandManager sharedManager];
        v20 = [(HNDRocker *)self hardwareIdentifier];
        [v21 beginDragAtPoint:v20 onDisplay:{v14, v16}];
      }
    }
  }

  else
  {
    v11 = ASTLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Skipping _dragAndDropPressed w/ dragMenu because nubbit is not visible", buf, 2u);
    }
  }
}

- (void)_pinchPressed:(id)a3 mode:(unint64_t)a4
{
  v17 = a3;
  if (a4 <= 2)
  {
    [(HNDRocker *)self updateForegroundImageForAction:**(&off_1001D5548 + a4)];
  }

  v6 = +[HNDHandManager sharedManager];
  [(AXPIFingerView *)self->_middleCircle frame];
  AX_CGRectGetCenter();
  v8 = v7;
  v10 = v9;
  v11 = [(HNDRocker *)self superview];
  [(HNDRocker *)self convertPoint:v11 toView:v8, v10];
  v13 = v12;
  v15 = v14;
  v16 = [(HNDRocker *)self hardwareIdentifier];
  [v6 startPinchModeWithPoint:v16 onDisplay:a4 mode:{v13, v15}];
}

- (void)_scrollPressed:(id)a3 fromButtonPress:(BOOL)a4 vertical:(BOOL)a5 forward:(BOOL)a6 max:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v12 = &AXAssistiveTouchIconTypeScrollDown;
  if (!a5)
  {
    v12 = &AXAssistiveTouchIconTypeScrollRight;
  }

  v13 = &AXAssistiveTouchIconTypeScrollUp;
  if (!a5)
  {
    v13 = &AXAssistiveTouchIconTypeScrollLeft;
  }

  if (!a6)
  {
    v12 = v13;
  }

  [(HNDRocker *)self updateForegroundImageForAction:*v12];
  [(HNDRocker *)self _initialPointForGesture];
  v15 = v14;
  v17 = v16;
  v18 = +[HNDHandManager sharedManager];
  v19 = [(HNDRocker *)self hardwareIdentifier];
  [v18 prepareScrollAtPoint:v19 onDisplay:v9 vertical:v8 forward:v7 max:{v15, v17}];

  if (v10)
  {
    v21 = +[HNDHandManager sharedManager];
    v20 = [(HNDRocker *)self hardwareIdentifier];
    [v21 performPreparedGestureOnDisplay:v20];
  }
}

- (void)_continuousScrollPressed:(id)a3 fromButtonPress:(BOOL)a4 inDirection:(unint64_t)a5 iconType:(id)a6
{
  [(HNDRocker *)self updateForegroundImageForAction:a6, a4];
  v8 = +[HNDHandManager sharedManager];
  v9 = [v8 inContinuousScrollMode];

  v11 = +[HNDHandManager sharedManager];
  v10 = [(HNDRocker *)self hardwareIdentifier];
  if (v9)
  {
    [v11 endContinuousScrollingOnDisplay:v10 withCompletion:0];
  }

  else
  {
    [v11 beginContinuousScrollingInDirection:a5 onDisplay:v10];
  }
}

- (void)_bubbleModeToggled
{
  v2 = +[HNDHandManager sharedManager];
  v3 = [v2 bubbleModeAllowed];

  if (v3)
  {
    v6 = +[AXSettings sharedInstance];
    v4 = [v6 assistiveTouchBubbleModeEnabled];
    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchBubbleModeEnabled:v4 ^ 1];
  }
}

- (void)_autoHideForEyeTrackingToggled
{
  v2 = +[HNDHandManager sharedManager];
  v3 = [v2 eyeTrackingAutoHideAllowed];

  if (v3)
  {
    v6 = +[AXSettings sharedInstance];
    v4 = [v6 assistiveTouchEyeTrackingAutoHideEnabled];
    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchEyeTrackingAutoHideEnabled:v4 ^ 1];
  }
}

- (void)_toggleDwellControlPause:(BOOL)a3
{
  v3 = a3;
  v5 = &AXAssistiveTouchIconTypeDwellPause;
  if (!a3)
  {
    v5 = &AXAssistiveTouchIconTypeDwellClick;
  }

  [(HNDRocker *)self updateForegroundImageForAction:*v5];
  [(HNDRocker *)self _menuExited];
  v6 = +[HNDHandManager sharedManager];
  [v6 setDwellControlPaused:v3];
}

- (void)_lockDwellControlAction:(BOOL)a3
{
  v3 = a3;
  [(HNDRocker *)self _menuExited];
  v4 = +[HNDHandManager sharedManager];
  [v4 setDwellControlAutorevertEnabled:!v3];
}

- (void)_increaseDwellTimePressed
{
  [(HNDRocker *)self _menuExited];
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchMouseDwellControlActivationTimeout];
  [v3 setAssistiveTouchMouseDwellControlActivationTimeout:v2 + 0.25];
}

- (void)_decreaseDwellTimePressed
{
  [(HNDRocker *)self _menuExited];
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchMouseDwellControlActivationTimeout];
  [v3 setAssistiveTouchMouseDwellControlActivationTimeout:v2 + -0.25];
}

- (void)_resetForegroundImage
{
  [(UIImageView *)self->_nubbitForeground setImage:self->_nubbitImage];
  [(HNDRocker *)self setAccessibilityValue:0];
  [(HNDRocker *)self setForegroundImageAction:0];

  [(HNDRocker *)self _layoutForegroundImageView];
}

- (void)_layoutForegroundImageView
{
  [(UIVisualEffectView *)self->_backdropView frame];
  v4 = v3;
  v6 = v5;
  v7 = [(UIImageView *)self->_nubbitForeground image];
  [v7 size];
  v9 = v8;
  v11 = v10;

  v14.origin.x = (v4 - v9) * 0.5;
  v14.origin.y = (v6 - v11) * 0.5;
  v14.size.width = v9;
  v14.size.height = v11;
  v15 = CGRectIntegral(v14);
  nubbitForeground = self->_nubbitForeground;

  [(UIImageView *)nubbitForeground setFrame:v15.origin.x, v15.origin.y, v15.size.width, v15.size.height];
}

- (void)updateForegroundImageForAction:(id)a3
{
  v4 = a3;
  if ([(HNDRocker *)self style]== 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_displayManager);
    v6 = [WeakRetained usesSeparateRockerForFullMenu];

    if (v6)
    {
      v7 = [(HNDRocker *)self displayManager];
      [v7 updateNubbitForegroundImageForAction:v4];

      goto LABEL_12;
    }
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  v8 = +[HNDHandManager sharedManager];
  if (([v8 dwellControlEnabled] & 1) == 0)
  {

    goto LABEL_11;
  }

  v9 = +[HNDDeviceManager sharedManager];
  v10 = [v9 mainDeviceIsPointer];

  if ((v10 & 1) == 0)
  {
LABEL_11:
    [(HNDRocker *)self _resetForegroundImage];
    goto LABEL_12;
  }

  v11 = [(HNDRocker *)self foregroundImageAction];
  v12 = [v11 isEqualToString:v4];

  if ((v12 & 1) == 0)
  {
    [(HNDRocker *)self setForegroundImageAction:v4];
    [(HNDRocker *)self setAccessibilityValue:v4];
    v13 = [(HNDRocker *)self isFullMenuVisible];
    if (self->_nubbitForeground)
    {
      v14 = v13 ^ 1;
    }

    else
    {
      [(HNDRocker *)self _initializeNubbit];
      v14 = 0;
    }

    v15 = AXUIAssistiveTouchImageForName();
    v16 = +[UIColor whiteColor];
    v17 = [v15 imageWithTintColor:v16];

    if (v14)
    {
      nubbitForeground = self->_nubbitForeground;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10005C77C;
      v24[3] = &unk_1001D36E8;
      v24[4] = self;
      v25 = v17;
      [UIView transitionWithView:nubbitForeground duration:5242880 options:v24 animations:0 completion:0.3];
      v19 = self->_nubbitForeground;
      v20 = *&CGAffineTransformIdentity.c;
      v23[0] = *&CGAffineTransformIdentity.a;
      v23[1] = v20;
      v23[2] = *&CGAffineTransformIdentity.tx;
      [(UIImageView *)v19 setTransform:v23];
      v21[4] = self;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10005C790;
      v22[3] = &unk_1001D3488;
      v22[4] = self;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10005C7F4;
      v21[3] = &unk_1001D3750;
      [UIView animateWithDuration:0x10000 delay:v22 options:v21 animations:0.15 completion:0.0];
    }

    else
    {
      [(UIImageView *)self->_nubbitForeground setImage:v17];
      [(HNDRocker *)self _layoutForegroundImageView];
    }
  }

LABEL_12:
}

- (void)_voiceControlPressed
{
  [(HNDRocker *)self _menuExited];

  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)_siriButtonPressed
{
  [(HNDRocker *)self _menuExited];

  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)_typeToSiriButtonPressed
{
  [(HNDRocker *)self _menuExited];

  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)_tripleClickHomePressed
{
  [(HNDRocker *)self _menuExited];
  v2 = +[AXSpringBoardServer server];
  v6 = [v2 visibleTripleClickItems];

  if ([v6 count] == 1 && (objc_msgSend(v6, "firstObject"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "intValue"), v3, v4 == 6))
  {
    v5 = +[AXSpringBoardServer server];
    [v5 showAlert:10 withHandler:&stru_1001D5260];
  }

  else
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)_notificationCenterPressed
{
  [(HNDRocker *)self _menuExited];
  [AXAssertion ensureAssertionsHaveBeenProcessedWithCompletion:&stru_1001D52A0];
  v2 = AXAssistiveTouchIconTypeNotificationCenter;

  sub_1000428A0(v2);
}

- (void)_controlCenterPressed
{
  [(HNDRocker *)self _menuExited];
  [AXAssertion ensureAssertionsHaveBeenProcessedWithCompletion:&stru_1001D52E0];
  v2 = AXAssistiveTouchIconTypeControlCenter;

  sub_1000428A0(v2);
}

- (void)_screenshotPressed
{
  [(HNDRocker *)self _menuExited];

  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)_trackpadPressed
{
  [(HNDRocker *)self _menuExited];
  v3 = [(HNDRocker *)self displayManager];
  [v3 toggleVirtualTrackpad];
}

- (void)_menuBarPressed
{
  v3 = +[AXSBMenuBarManager sharedInstance];
  [v3 toggleMenuBar];

  [(HNDRocker *)self _menuExited];
}

- (void)_calibrateEyeTrackingPressed
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchMouseOnDeviceEyeTrackingEnabled];

  if (v4)
  {
    v5 = [(HNDRocker *)self displayManager];
    [(HNDRocker *)self _menuExited];
    [v5 setNeedsRecalibration:1];
  }
}

- (void)_toggleNeedsToShowZoomWindow
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchMouseOnDeviceEyeTrackingEnabled];

  if (v4)
  {
    v5 = [(HNDRocker *)self displayManager];
    v6 = [v5 needsToShowZoomWindow];

    v7 = [(HNDRocker *)self displayManager];
    [v7 setNeedsToShowZoomWindow:v6 ^ 1];

    [(HNDRocker *)self _menuExited];
  }
}

- (void)_toggleOnDeviceEyeTracking
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchMouseOnDeviceEyeTrackingEnabled];

  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchMouseOnDeviceEyeTrackingEnabled:v4 ^ 1];

  [(HNDRocker *)self _menuExited];
}

- (void)_toggleDwellKeyboardContinuousPath
{
  v4 = +[AXSettings sharedInstance];
  v2 = [v4 assistiveTouchDwellKeyboardContinuousPathEnabled];
  v3 = +[AXSettings sharedInstance];
  [v3 setAssistiveTouchDwellKeyboardContinuousPathEnabled:v2 ^ 1];
}

- (void)showBannerWithText:(id)a3
{
  v4 = a3;
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_disableUserInterfaceClient" object:0];
  v5 = [(HNDRocker *)self displayManager];
  [v5 addUserInterfaceClientEnabler:@"AssistiveTouchRocker"];

  v6 = [(HNDRocker *)self displayManager];
  v7 = sub_100042B24(@"ASSISTIVE_TOUCH");
  [v6 showSimpleBannerWithTitle:v7 text:v4];

  [(HNDRocker *)self performSelector:"_disableUserInterfaceClient" withObject:0 afterDelay:15.0];
}

- (void)_disableUserInterfaceClient
{
  v2 = [(HNDRocker *)self displayManager];
  [v2 removeUserInterfaceClientEnabler:@"AssistiveTouchRocker"];
}

- (void)_spotlightPressed:(id)a3
{
  v4 = +[AXBackBoardServer server];
  v5 = [v4 isGuidedAccessActive];

  if (v5)
  {
    v6 = ASTLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v7 = "Not triggering spotlight because GAX is active";
      v8 = &v11;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (AXAssistiveAccessEnabled())
  {
    v6 = ASTLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v7 = "Not triggering spotlight because Assistive Access is active";
      v8 = &v10;
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  v9 = +[AXPISystemActionHelper sharedInstance];
  [v9 toggleSpotlight];

  [(HNDRocker *)self _menuExited];
}

- (void)_watchRemoteScreenPressed
{
  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 toggleWatchRemoteScreen];

  [(HNDRocker *)self _menuExited];
}

- (void)_detectionModePresssed
{
  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 activateDetectionMode];

  [(HNDRocker *)self _menuExited];
}

- (void)_backgroundSoundsPressed
{
  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 toggleBackgroundSounds];

  [(HNDRocker *)self _menuExited];
}

- (void)_liveCaptionsPressed
{
  if (AXHasCapability())
  {
    v3 = +[AXPISystemActionHelper sharedInstance];
    [v3 toggleLiveCaptions];

    [(HNDRocker *)self _menuExited];
  }
}

- (void)_hapticMusicPressed
{
  if (_AXSHapticMusicEnabled())
  {
    v4 = +[AXSettings sharedInstance];
    v2 = [v4 hapticMusicActive];
    v3 = +[AXSettings sharedInstance];
    [v3 setHapticMusicActive:v2 ^ 1];
  }

  else
  {
    _AXSSetHapticMusicEnabled();
    v4 = +[AXSettings sharedInstance];
    [v4 setHapticMusicActive:1];
  }
}

- (void)_motionCuesPressed
{
  [AXTripleClickHelpers toggleAccessibilityShortcutOption:36];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_rockerItems;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = AXAssistiveTouchIconTypeMotionCues;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 type];
        v11 = [v10 isEqualToString:v7];

        if (v11)
        {
          [(HNDRocker *)self _updateMotionCuesIcon:v9];
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_liveSpeechPressed
{
  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 toggleLiveSpeech];

  [(HNDRocker *)self _menuExited];
}

- (void)_nearbyDeviceControlPressed
{
  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 toggleNearbyDeviceControlPicker];

  [(HNDRocker *)self _menuExited];
}

- (void)_accessibilityReaderPressed
{
  if (AXHasCapability())
  {
    v3 = +[AXPISystemActionHelper sharedInstance];
    [v3 launchAccessibilityReader];

    [(HNDRocker *)self _menuExited];
  }
}

- (void)_sosPressed
{
  v3 = +[AXBackBoardServer server];
  v4 = [v3 isGuidedAccessActive];

  if (v4)
  {
    v5 = ASTLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v6 = "Not triggering SOS because GAX is active";
      v7 = &v10;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (AXAssistiveAccessEnabled())
  {
    v5 = ASTLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v6 = "Not triggering SOS because Assistive Access is active";
      v7 = &v9;
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  v8 = +[AXPISystemActionHelper sharedInstance];
  [v8 activateSOSMode];

  [(HNDRocker *)self _menuExited];
}

- (void)_commandAndControlPressed
{
  [(HNDRocker *)self _menuExited];
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 toggleCommandAndControl];

  v3 = AXAssistiveTouchIconTypeCommandAndControl;

  sub_1000428A0(v3);
}

- (void)_sysdiagnosePressed
{
  [(HNDRocker *)self _menuExited];
  v3 = +[AXPISystemActionHelper sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005D9C8;
  v4[3] = &unk_1001D3AB0;
  v4[4] = self;
  [v3 performSysdiagnoseWithStatusUpdateHandler:v4];
}

- (void)_speakScreenPressed
{
  [(HNDRocker *)self _menuExited];
  if (!_AXSSpeakThisEnabled())
  {
    _AXSSetSpeakThisEnabled();
    CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.5, 0);
  }

  v3 = +[SpeakThisServices sharedInstance];
  [(HNDRocker *)self frame];
  AX_CGRectGetCenter();
  [v3 speakThisWithOptions:12 useAppAtPoint:&stru_1001D5360 errorHandler:?];

  v4 = AXAssistiveTouchIconTypeSpeakScreen;

  sub_1000428A0(v4);
}

- (void)_reachabilityPressed
{
  [(HNDRocker *)self _menuExited];
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 toggleReachability];

  v3 = AXAssistiveTouchIconTypeReachability;

  sub_1000428A0(v3);
}

- (void)_rebootDevicePressed
{
  [(HNDRocker *)self _menuExited];
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 rebootDevice];

  v3 = AXAssistiveTouchIconTypeRebootDevice;

  sub_1000428A0(v3);
}

- (void)_dockPressed
{
  [(HNDRocker *)self _menuExited];
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 toggleDock];
}

- (void)_armApplePay
{
  [(HNDRocker *)self _menuExited];
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 armApplePay];
}

- (void)_confirmApplePay
{
  [(HNDRocker *)self _menuExited];
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 confirmApplePay];
}

- (void)_toggleAppSwitcher
{
  [(HNDRocker *)self _menuExited];
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 pressHomeButtonDown];
  [v2 liftHomeButtonUp];
  [v2 pressHomeButtonDown];
  [v2 liftHomeButtonUp];
}

- (void)_handleTouch:(int64_t)a3
{
  middleCircle = self->_middleCircle;
  if (middleCircle && ([(AXPIFingerView *)middleCircle isHidden]& 1) == 0)
  {
    [(AXPIFingerView *)self->_middleCircle frame];
    AX_CGRectGetCenter();
    v9 = v8;
    v11 = v10;
    v12 = [(HNDRocker *)self superview];
    [(HNDRocker *)self convertPoint:v12 toView:v9, v11];
    x = v13;
    y = v14;
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  v16 = +[HNDHandManager sharedManager];
  v15 = [(HNDRocker *)self hardwareIdentifier];
  [v16 handleMultiTouchStandard:a3 onDisplay:v15 withExistingFingerMidPoint:{x, y}];
}

- (void)_activateLockButton
{
  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 activateLockButton];

  [(HNDRocker *)self _menuExited];
  v4 = AXAssistiveTouchIconTypeLockScreen;

  sub_1000428A0(v4);
}

- (void)_lockButton:(BOOL)a3
{
  v5 = +[AXPISystemActionHelper sharedInstance];
  v6 = v5;
  if (a3)
  {
    [v5 pressLockButtonDown];

    v7 = AXAssistiveTouchIconTypeLockScreen;

    sub_1000428A0(v7);
  }

  else
  {
    [v5 liftLockButtonUp];

    [(HNDRocker *)self _menuExited];
  }
}

- (void)_updateVolumeDisplay
{
  volumeUpdateTimer = self->_volumeUpdateTimer;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10005DF9C;
  v3[3] = &unk_1001D3488;
  v3[4] = self;
  [(AXDispatchTimer *)volumeUpdateTimer afterDelay:v3 processBlock:0.05];
}

- (void)showVolumeDisplayImmediately
{
  [(AXDispatchTimer *)self->_volumeUpdateTimer cancel];
  v3 = +[HNDHandManager sharedManager];
  [v3 volumeLevel];
  [(HNDRocker *)self showVolumeBar:1 withProgress:?];
}

- (void)_volumeUp:(BOOL)a3
{
  v3 = a3;
  v5 = +[AXPISystemActionHelper sharedInstance];
  v6 = v5;
  if (v3)
  {
    [v5 pressVolumeUpButtonDown];

    [(HNDRocker *)self _updateVolumeDisplay];
    v7 = AXAssistiveTouchIconTypeVolumeUp;

    sub_1000428A0(v7);
  }

  else
  {
    [v5 liftVolumeUpButtonUp];

    [(HNDRocker *)self showVolumeDisplayImmediately];
  }
}

- (void)_volumeDown:(BOOL)a3
{
  v3 = a3;
  v5 = +[AXPISystemActionHelper sharedInstance];
  v6 = v5;
  if (v3)
  {
    [v5 pressVolumeDownButtonDown];

    [(HNDRocker *)self _updateVolumeDisplay];
    v7 = AXAssistiveTouchIconTypeVolumeDown;

    sub_1000428A0(v7);
  }

  else
  {
    [v5 liftVolumeDownButtonUp];

    [(HNDRocker *)self showVolumeDisplayImmediately];
  }
}

- (void)_mutePressed
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 toggleMute];
}

- (void)_rotationLockPressed
{
  v2 = +[HNDEventManager sharedManager];
  v3 = [v2 orientationLocked];

  v4 = +[HNDEventManager sharedManager];
  [v4 setOrientationLocked:v3 ^ 1];

  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)_ringerSwitchPressed:(BOOL)a3
{
  if (![(HNDRocker *)self _replaceRingerWithOrientationLock]|| a3)
  {
    v5 = !sub_100042494();
  }

  else
  {
    v4 = +[HNDEventManager sharedManager];
    v5 = [v4 orientationLocked];
  }

  if (j__AXDeviceIsRingerSwitchAvailable())
  {
    v6 = +[AXPISystemActionHelper sharedInstance];
    [v6 toggleRingerSwitch:v5];

    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    v7 = +[HNDEventManager sharedManager];
    v8 = [v7 orientationLocked];

    v9 = +[HNDEventManager sharedManager];
    [v9 setOrientationLocked:v8 ^ 1];
  }
}

- (void)_actionButtonPressed
{
  if (AXDeviceHasStaccato())
  {
    [(HNDRocker *)self _menuExited];
    v3 = +[AXPISystemActionHelper sharedInstance];
    [v3 pressStaccato];
  }
}

- (void)_cameraButtonPressed
{
  if (AXDeviceSupportsCameraButton())
  {
    v3 = +[AXPISystemActionHelper sharedInstance];
    [v3 pressCameraButton];
  }

  [(HNDRocker *)self _menuExited];
}

- (void)_cameraButtonLightPressed
{
  if (AXDeviceSupportsCameraButton())
  {
    v3 = +[AXPISystemActionHelper sharedInstance];
    [v3 lightPressCameraButton];
  }

  [(HNDRocker *)self _menuExited];
}

- (void)_cameraButtonDoubleLightPressed
{
  if (AXDeviceSupportsCameraButton())
  {
    v3 = +[AXPISystemActionHelper sharedInstance];
    [v3 doubleLightPressCameraButton];
  }

  [(HNDRocker *)self _menuExited];
}

- (void)_openVisualIntelligence
{
  if (AXDeviceSupportsCameraButton())
  {
    v3 = +[AXPISystemActionHelper sharedInstance];
    [v3 openVisualIntelligence];
  }

  [(HNDRocker *)self _menuExited];
}

- (void)_shakePressed
{
  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 shake];

  homeButtonDismissTimer = self->_homeButtonDismissTimer;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005E6B0;
  v5[3] = &unk_1001D3488;
  v5[4] = self;
  [(AXDispatchTimer *)homeButtonDismissTimer afterDelay:v5 processBlock:0.5];
}

- (void)_homeButton:(BOOL)a3
{
  v3 = a3;
  if ([(HNDRocker *)self shouldIgnoreNextHome]|| (sub_1000424B4() & 1) != 0)
  {
    if ([(HNDRocker *)self shouldIgnoreNextHome])
    {
      v5 = self;
      v6 = 0;
    }

    else
    {
      v5 = self;
      v6 = 1;
    }

    [(HNDRocker *)v5 setShouldIgnoreNextHome:v6];
  }

  else
  {
    v7 = +[AXPISystemActionHelper sharedInstance];
    v8 = v7;
    if (v3)
    {
      [v7 pressHomeButtonDown];

      [(AXDispatchTimer *)self->_homeButtonDismissTimer cancel];
      v9 = +[AXSpringBoardServer server];
      [v9 setCancelGestureActivation:8 cancelEnabled:1];

      v10 = AXAssistiveTouchIconTypeHome;

      sub_1000428A0(v10);
    }

    else
    {
      [v7 liftHomeButtonUp];

      [(AXDispatchTimer *)self->_homeButtonDismissTimer cancel];
      v11 = +[AXSpringBoardServer server];
      [v11 setCancelGestureActivation:8 cancelEnabled:0];

      homeButtonDismissTimer = self->_homeButtonDismissTimer;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10005E86C;
      v13[3] = &unk_1001D3488;
      v13[4] = self;
      [(AXDispatchTimer *)homeButtonDismissTimer afterDelay:v13 processBlock:0.5];
    }
  }
}

- (void)_toggleAssistiveAccess
{
  [(HNDRocker *)self _menuExited];
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 performActionForSystemAction:AXAssistiveTouchIconTypeAssistiveAccess];
}

- (void)_cameraPressed
{
  [(HNDRocker *)self _menuExited];
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 performActionForSystemAction:AXAssistiveTouchIconTypeCamera];
}

- (void)_frontFacingCameraPressed
{
  [(HNDRocker *)self _menuExited];
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 performActionForSystemAction:AXAssistiveTouchIconTypeFrontFacingCamera];
}

- (CGPoint)onScreenLocation
{
  [(AXPIFingerView *)self->_middleCircle frame];
  AX_CGRectGetCenter();
  v4 = v3;
  v6 = v5;
  v7 = [(HNDRocker *)self window];
  v8 = [v7 subviews];
  v9 = [v8 firstObject];
  [(HNDRocker *)self convertPoint:v9 toView:v4, v6];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)setFullMenuVisible:(BOOL)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3;
  v8 = ASTLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v23.x = x;
    v23.y = y;
    v9 = NSStringFromCGPoint(v23);
    *buf = 67109378;
    v20 = v6;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "setFullMenuVisible: %d, atPoint: %@", buf, 0x12u);
  }

  if (self->_isFullMenuVisible == v6)
  {
    v10 = ASTLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Skipping setFullMenuVisible due to no change in visibility state", buf, 2u);
    }
  }

  else
  {
    self->_isFullMenuVisible = v6;
    self->_progress = 0.1;
    [(HNDRocker *)self frame];
    if (v6)
    {
      v13 = v11;
      v14 = v12;
      +[CATransaction begin];
      v15 = x - v13 * 0.5;
      v16 = y - v14 * 0.5;
      [(HNDRocker *)self setFrame:roundf(v15), roundf(v16), v13, v14];
      [(HNDRocker *)self _resetHoverCircleLocation];
      [(HNDRocker *)self setAlpha:1.0];
      +[CATransaction commit];
      self->_startInterval = 0.0;
      v17 = +[HNDEventManager sharedManager];
      [v17 manipulateDimTimer:0];

      self->_state = 1;
      [(HNDRocker *)self _loadMenuItems:0 viewForCenteringAtStart:self goBackwards:0 originalState:1];
      [(HNDRocker *)self _setBackgroundWithType:0];
      self->_sentRockers = 0;
      self->_linkRunning = 1;
      [(NSMutableArray *)self->_rockerItems enumerateObjectsUsingBlock:&stru_1001D5380];
      [(HNDRocker *)self _updateBackButtonVisibility];
      [(HNDRocker *)self setAlpha:0.0];
      [(HNDRocker *)self _updateProgress:0];
    }

    else
    {
      self->_startInterval = 0.0;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10005ED40;
      v18[3] = &unk_1001D3488;
      v18[4] = self;
      [UIView animateWithDuration:v18 animations:&stru_1001D53C0 completion:0.2];
    }
  }
}

- (void)_enableDockIconActivationMode:(unint64_t)a3
{
  [(HNDRocker *)self _dockPressed];
  v5 = sub_100042B24(@"DOCK_INSTRUCTIONS");
  [(HNDRocker *)self showBannerWithText:v5];

  v6 = +[AXSpringBoardServer server];
  [v6 setDockIconActivationMode:a3];
}

- (id)_dockSpecificMenuItems
{
  v3 = +[AXSpringBoardServer server];
  v4 = [v3 canSetDockIconActivationMode];

  if (v4)
  {
    v5 = [UIApp userInterfaceLayoutDirection];
    v6 = [(HNDRocker *)self dockSpecificButtons];

    if (!v6)
    {
      objc_initWeak(&location, self);
      if (v5 == 1)
      {
        v17 = sub_100042B24(@"PIN_APP_RIGHT");
        v7 = @"AT_LaunchPinFromDockRight";
      }

      else
      {
        v17 = sub_100042B24(@"PIN_APP_LEFT");
        v7 = @"AT_LaunchPinFromDockLeft";
      }

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10005F1B0;
      v25[3] = &unk_1001D4C10;
      objc_copyWeak(&v26, &location);
      v9 = [HNDRockerButton buttonWithTitle:v17 imageName:v7 downBlock:0 upBlock:v25 showWithGuidedAccess:0 showWithAssistiveAccess:0];
      v28[0] = v9;
      if (v5 == 1)
      {
        v10 = sub_100042B24(@"PIN_APP_LEFT");
        v11 = @"AT_LaunchPinFromDockLeft";
      }

      else
      {
        v10 = sub_100042B24(@"PIN_APP_RIGHT");
        v11 = @"AT_LaunchPinFromDockRight";
      }

      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10005F1F4;
      v23[3] = &unk_1001D4C10;
      objc_copyWeak(&v24, &location);
      v12 = [HNDRockerButton buttonWithTitle:v10 imageName:v11 downBlock:0 upBlock:v23 showWithGuidedAccess:0 showWithAssistiveAccess:0];
      v28[1] = v12;
      v13 = sub_100042B24(@"FLOAT_APP");
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_10005F238;
      v21 = &unk_1001D4C10;
      objc_copyWeak(&v22, &location);
      v14 = [HNDRockerButton buttonWithTitle:v13 imageName:@"AT_LaunchFloatFromDock" downBlock:0 upBlock:&v18 showWithGuidedAccess:0 showWithAssistiveAccess:0];
      v28[2] = v14;
      v15 = [NSArray arrayWithObjects:v28 count:3];
      [(HNDRocker *)self setDockSpecificButtons:v15];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&v24);
      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }

    v8 = [(HNDRocker *)self dockSpecificButtons:v17];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_loadSideAppMenuItems
{
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v3 = +[AXSpringBoardServer server];
  v4 = [v3 allowedMedusaGestures];

  v5 = [v4 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v5)
  {
    v6 = *v43;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v43 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v42 + 1) + 8 * i);
        v9 = [(HNDRocker *)self buttonsByMedusaGesture];
        v10 = v9 == 0;

        if (v10)
        {
          v11 = +[NSMutableDictionary dictionary];
          [(HNDRocker *)self setButtonsByMedusaGesture:v11];
        }

        v12 = [(HNDRocker *)self buttonsByMedusaGesture];
        v13 = [v12 objectForKeyedSubscript:v8];

        if (!v13)
        {
          v14 = [v8 unsignedIntegerValue];
          v15 = sub_1000429E0(v14);
          if (v14 > 0x10)
          {
            v16 = 0;
          }

          else
          {
            v16 = *(&off_1001D5560 + v14);
          }

          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_10005F7E8;
          v41[3] = &unk_1001D53E8;
          v41[4] = self;
          v41[5] = v14;
          v13 = [HNDRockerButton buttonWithTitle:v15 imageName:v16 downBlock:0 upBlock:v41 showWithGuidedAccess:0 showWithAssistiveAccess:0];

          v17 = [(HNDRocker *)self buttonsByMedusaGesture];
          [v17 setObject:v13 forKeyedSubscript:v8];
        }

        [(NSMutableArray *)self->_rockerItems addObject:v13];
      }

      v5 = [v4 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v5);
  }

  rockerItems = self->_rockerItems;
  v19 = [(HNDRocker *)self _dockSpecificMenuItems];
  [(NSMutableArray *)rockerItems addObjectsFromArray:v19];

  if ([(NSMutableArray *)self->_rockerItems count]<= 1)
  {
    v20 = [(HNDRocker *)self toggleDockButton];
    v21 = v20 == 0;

    if (v21)
    {
      v22 = [(HNDRocker *)self _rockerButtonForLocation:0 buttonType:AXAssistiveTouchIconTypeToggleDock];
      [(HNDRocker *)self setToggleDockButton:v22];
    }

    v23 = self->_rockerItems;
    v24 = [(HNDRocker *)self toggleDockButton];
    [(NSMutableArray *)v23 addObject:v24];
  }

  if ([(NSMutableArray *)self->_rockerItems count]<= 1)
  {
    v25 = [(HNDRocker *)self appSwitcherButton];
    v26 = v25 == 0;

    if (v26)
    {
      v27 = [(HNDRocker *)self _rockerButtonForLocation:0 buttonType:AXAssistiveTouchIconTypeAppSwitcher];
      [(HNDRocker *)self setAppSwitcherButton:v27];
    }

    v28 = self->_rockerItems;
    v29 = [(HNDRocker *)self appSwitcherButton];
    [(NSMutableArray *)v28 addObject:v29];
  }

  if ([(NSMutableArray *)self->_rockerItems count]< 9)
  {
    [(HNDRocker *)self setSideAppMoreRockerItems:0];
  }

  else
  {
    v30 = [(NSMutableArray *)self->_rockerItems count]- 7;
    v31 = [(NSMutableArray *)self->_rockerItems subarrayWithRange:7, v30];
    [(HNDRocker *)self setSideAppMoreRockerItems:v31];

    [(NSMutableArray *)self->_rockerItems removeObjectsInRange:7, v30];
    v32 = [(HNDRocker *)self moreButton];
    LODWORD(v30) = v32 == 0;

    if (v30)
    {
      objc_initWeak(&location, self);
      v33 = sub_100042B24(@"MORE");
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10005F848;
      v38[3] = &unk_1001D4C10;
      objc_copyWeak(&v39, &location);
      v34 = [HNDRockerButton buttonWithTitle:v33 imageName:@"IconMore" downBlock:0 upBlock:v38 showWithGuidedAccess:1 showWithAssistiveAccess:1];
      [(HNDRocker *)self setMoreButton:v34];

      v35 = [(HNDRocker *)self moreButton];
      [v35 setTag:114];

      objc_destroyWeak(&v39);
      objc_destroyWeak(&location);
    }

    v36 = self->_rockerItems;
    v37 = [(HNDRocker *)self moreButton];
    [(NSMutableArray *)v36 addObject:v37];
  }

  [(HNDRocker *)self _assignLocationsToRockerItems];
}

- (void)_loadSideAppMoreMenuItems
{
  rockerItems = self->_rockerItems;
  v4 = [(HNDRocker *)self sideAppMoreRockerItems];
  [(NSMutableArray *)rockerItems addObjectsFromArray:v4];

  [(HNDRocker *)self _assignLocationsToRockerItems];
}

- (void)didFailToPinApp
{
  v3 = sub_100042B24(@"PIN_ERROR");
  [(HNDRocker *)self showBannerWithText:v3];
}

- (void)didFailToFloatApp
{
  v3 = sub_100042B24(@"FLOAT_ERROR");
  [(HNDRocker *)self showBannerWithText:v3];
}

- (void)_initializeNubbit
{
  [(HNDRocker *)self bounds];
  v4 = v3;
  v6 = v5;
  if (!self->_isFullMenuVisible)
  {
    [(NSMutableArray *)self->_rockerItems enumerateObjectsUsingBlock:&stru_1001D5408];
  }

  +[HNDRocker nubbitSize];
  [(HNDRocker *)self setBounds:v4, v6, v7, v8];
  [(HNDRocker *)self _setBackgroundWithType:0];
  nubbitForeground = self->_nubbitForeground;
  if (!nubbitForeground)
  {
    v10 = [[UIImageView alloc] initWithImage:self->_nubbitImage];
    v11 = self->_nubbitForeground;
    self->_nubbitForeground = v10;

    v12 = +[UIColor whiteColor];
    [(UIImageView *)self->_nubbitForeground setTintColor:v12];

    [(UIImageView *)self->_nubbitForeground setAutoresizingMask:0];
    [(HNDRocker *)self addSubview:self->_nubbitForeground];
    nubbitForeground = self->_nubbitForeground;
  }

  [(UIImageView *)nubbitForeground setAlpha:1.0];
  [(HNDRocker *)self _layoutForegroundImageView];

  [(HNDRocker *)self _updateBackButtonVisibility];
}

- (void)_updateNubbitFadedProperties
{
  if (_UISolariumEnabled())
  {
    [(HNDRocker *)self alpha];
    if (v3 <= 0.0)
    {
      return;
    }

    v8 = +[AXSettings sharedInstance];
    [v8 assistiveTouchIdleOpacity];
    backdropView = self;
  }

  else
  {
    v6 = +[AXSettings sharedInstance];
    [v6 assistiveTouchIdleOpacity];
    [(UIImageView *)self->_nubbitForeground setAlpha:?];

    v8 = +[AXSettings sharedInstance];
    [v8 assistiveTouchIdleOpacity];
    v4 = v7 + -0.1;
    backdropView = self->_backdropView;
  }

  [backdropView setAlpha:v4];
}

- (void)_resetVisibility:(BOOL)a3
{
  v3 = a3;
  if (![(HNDRocker *)self style])
  {
    if (v3)
    {
      if (_UISolariumEnabled())
      {
        v5 = 1.0;
        nubbitForeground = self;
      }

      else
      {
        [(UIVisualEffectView *)self->_backdropView setAlpha:1.0];
        nubbitForeground = self->_nubbitForeground;
        v5 = 1.0;
      }

      [nubbitForeground setAlpha:v5];
    }

    else
    {

      [(HNDRocker *)self _updateNubbitFadedProperties];
    }
  }
}

- (void)fadeNubbit
{
  v3 = +[HNDHandManager sharedManager];
  v4 = [v3 alwaysShowMenu];

  if (v4)
  {
    if (!self->_nubbitDimmed)
    {
      [(AXDispatchTimer *)self->_nubbitFadeTimer cancel];
      nubbitFadeTimer = self->_nubbitFadeTimer;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10005FD54;
      v6[3] = &unk_1001D3488;
      v6[4] = self;
      [(AXDispatchTimer *)nubbitFadeTimer afterDelay:v6 processBlock:4.0];
    }
  }
}

- (void)highlightNubbit
{
  if (self->_nubbitDimmed)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10005FED8;
    v3[3] = &unk_1001D3488;
    v3[4] = self;
    [UIView animateWithDuration:v3 animations:0.15];
    self->_nubbitDimmed = 0;
    [(HNDRocker *)self fadeNubbit];
  }

  else
  {
    [(AXDispatchTimer *)self->_nubbitFadeTimer cancel];

    [(HNDRocker *)self fadeNubbit];
  }
}

- (void)transitionMenuToNubbit:(CGPoint)a3 changeAlpha:(BOOL)a4 animate:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  y = a3.y;
  x = a3.x;
  v10 = ASTLogRocker();
  v11 = os_signpost_id_generate(v10);

  v12 = ASTLogRocker();
  v13 = v12;
  v14 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "Transition Menu to Nubbit", "", buf, 2u);
  }

  v15 = [(HNDRocker *)self displayManager];
  v16 = [v15 userInteractionEnabledOnRockerDismissView];

  if (v16)
  {
    v17 = ASTLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10012982C(v17);
    }
  }

  v18 = ASTLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v56.x = x;
    v56.y = y;
    v19 = NSStringFromCGPoint(v56);
    *buf = 138412802;
    v53 = v19;
    v54 = 1024;
    *v55 = v6;
    *&v55[4] = 1024;
    *&v55[6] = v5;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "transitionMenuToNubbit point: %@, changeAlpha: %i, animate: %i", buf, 0x18u);
  }

  if (!self->_isNubbitVisible)
  {
    v23 = ASTLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Skipping transitionMenuToNubbit because nubbit is not visible", buf, 2u);
    }

    v24 = ASTLogRocker();
    v22 = v24;
    if (v14 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v24))
    {
      goto LABEL_23;
    }

    *buf = 0;
    goto LABEL_22;
  }

  if (self->_animatingNubbit)
  {
    v20 = ASTLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Skipping transitionMenuToNubbit because nubbit is still animating", buf, 2u);
    }

    v21 = ASTLogRocker();
    v22 = v21;
    if (v14 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v21))
    {
      goto LABEL_23;
    }

    *buf = 0;
LABEL_22:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, v11, "Transition Menu to Nubbit", "", buf, 2u);
LABEL_23:

    return;
  }

  [(HNDRocker *)self frame];
  if (v26 == x && v25 == y)
  {
    [(HNDRocker *)self bounds];
    v28 = v27;
    v30 = v29;
    +[HNDRocker nubbitSize];
    if (v28 == v32 && v30 == v31)
    {
      v33 = ASTLogCommon();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v57.x = x;
        v57.y = y;
        v34 = NSStringFromCGPoint(v57);
        +[HNDRocker nubbitSize];
        v35 = NSStringFromCGSize(v58);
        *buf = 138412546;
        v53 = v34;
        v54 = 2112;
        *v55 = v35;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Skipping transitionMenuToNubbit because current origin == %@ and size == %@", buf, 0x16u);
      }

      [(HNDRocker *)self highlightNubbit];
      v36 = ASTLogRocker();
      v22 = v36;
      if (v14 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v36))
      {
        goto LABEL_23;
      }

      *buf = 0;
      goto LABEL_22;
    }
  }

  [(NSMutableArray *)self->_rockerItems enumerateObjectsUsingBlock:&stru_1001D5428];
  nubbitForeground = self->_nubbitForeground;
  if (!nubbitForeground)
  {
    [(HNDRocker *)self _initializeNubbit];
  }

  self->_isFullMenuVisible = 0;
  [(HNDRocker *)self setStyle:0];
  [(AXDispatchTimer *)self->_homeButtonDismissTimer cancel];
  [(HNDRocker *)self showVolumeBar:0 withProgress:0.0];
  [(HNDRocker *)self alpha];
  if (v38 == 0.0)
  {
    if (v6)
    {
      [(HNDRocker *)self setAlpha:1.0];
    }

    +[CATransaction begin];
    [(HNDRocker *)self _setBackgroundWithType:0];
    [(HNDRocker *)self frame];
    [(HNDRocker *)self setFrame:x, y];
    +[CATransaction commit];
  }

  if (v6)
  {
    [(AXPIFingerView *)self->_middleCircle setAlpha:0.0];
  }

  v39 = 0.0;
  if (nubbitForeground && v5)
  {
    if (sub_100042D94())
    {
      v39 = 0.25;
    }

    else
    {
      v39 = 0.349999994;
    }
  }

  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1000605D4;
  v50[3] = &unk_1001D5470;
  v50[4] = self;
  v50[5] = v11;
  *&v50[6] = x;
  *&v50[7] = y;
  v51 = v6;
  v40 = objc_retainBlock(v50);
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100060768;
  v48[3] = &unk_1001D54B8;
  v49 = v6;
  v48[4] = self;
  v48[5] = v11;
  v41 = objc_retainBlock(v48);
  v42 = [(HNDRocker *)self displayManager];
  v43 = [v42 usesSeparateRockerForFullMenu];

  if (v43)
  {
    (v40[2])(v40);
    (v41[2])(v41, 1);
  }

  else
  {
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000608B0;
    v46[3] = &unk_1001D3F90;
    v47 = v40;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000608C0;
    v44[3] = &unk_1001D3CD0;
    v45 = v41;
    [UIView animateWithDuration:2 delay:v46 options:v44 animations:v39 completion:0.0];
  }
}

- (void)transitionNubbitToMenu:(CGPoint)a3 concurrentAnimation:(id)a4 animationCompleted:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  v11 = ASTLogRocker();
  v12 = os_signpost_id_generate(v11);

  v13 = ASTLogRocker();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Transition Nubbit to Menu", "", buf, 2u);
  }

  v15 = ASTLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v49.x = x;
    v49.y = y;
    v16 = NSStringFromCGPoint(v49);
    *buf = 138412290;
    v48 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "transitionNubbitToMenu: %@", buf, 0xCu);
  }

  if (self->_animatingNubbit)
  {
    v17 = ASTLogRocker();
    v18 = v17;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v12, "Transition Nubbit to Menu", "", buf, 2u);
    }

    v19 = ASTLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Skipping transitionNubbitToMenu due to animating nubbit", buf, 2u);
    }
  }

  else
  {
    v20 = +[HNDEventManager sharedManager];
    [v20 manipulateDimTimer:1];

    self->_state = 1;
    [(HNDRocker *)self _loadMenuItems:0 viewForCenteringAtStart:self goBackwards:0 originalState:1 shouldUpdateKeyboardFocusIfNeeded:0];
    [(HNDRocker *)self _setBackgroundWithType:0];
    [(HNDRocker *)self frame];
    v22 = v21;
    v24 = v23;
    [(UIVisualEffectView *)self->_backdropView bounds];
    [(HNDRocker *)self setFrame:v22, v24];
    [(HNDRocker *)self setAlpha:1.0];
    [(HNDRocker *)self setStyle:1];
    [(NSMutableArray *)self->_rockerItems enumerateObjectsUsingBlock:&stru_1001D54D8];
    [(HNDRocker *)self _updateBackButtonVisibility];
    [(AXAssistiveTouchLayoutView *)self->_layoutView centerItems:self->_rockerItems];
    [(HNDRocker *)self layoutIfNeeded];
    self->_isFullMenuVisible = 1;
    [(AXPIFingerView *)self->_middleCircle setAlpha:0.0];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100060DB4;
    v42[3] = &unk_1001D5500;
    v42[4] = self;
    v44 = v12;
    v45 = x;
    v46 = y;
    v43 = v9;
    v25 = objc_retainBlock(v42);
    v35 = _NSConcreteStackBlock;
    v36 = 3221225472;
    v37 = sub_1000611DC;
    v38 = &unk_1001D5528;
    v39 = self;
    v40 = v10;
    v41 = v12;
    v26 = objc_retainBlock(&v35);
    v27 = [(HNDRocker *)self displayManager:v35];
    v28 = [v27 usesSeparateRockerForFullMenu];

    if (v28)
    {
      (v25[2])(v25);
      (v26[2])(v26, 1);
    }

    else
    {
      LODWORD(v29) = 1048233745;
      LODWORD(v30) = 1024060595;
      LODWORD(v31) = 1061244476;
      LODWORD(v32) = 1065096357;
      v33 = [CAMediaTimingFunction functionWithControlPoints:v29];
      v34 = [HNDSpringAnimationFactory factoryWithMass:0.5 stiffness:300.0 damping:400.0];
      [v34 setTimingFunction:v33];
      [UIView _animateWithDuration:2 delay:v34 options:v25 factory:v26 animations:0.61 completion:0.0];
    }
  }
}

- (void)setNubbitVisible:(BOOL)a3
{
  if (self->_isNubbitVisible != a3)
  {
    self->_isNubbitVisible = a3;
    nubbitForeground = self->_nubbitForeground;
    if (a3)
    {
      v6 = 1.0;
      if (!nubbitForeground)
      {
        [(HNDRocker *)self _initializeNubbit];
      }
    }

    else
    {
      [(UIImageView *)nubbitForeground removeFromSuperview];
      v7 = self->_nubbitForeground;
      self->_nubbitForeground = 0;

      v6 = 0.0;
    }

    [(HNDRocker *)self setAlpha:v6];
  }
}

- (void)_menuExited
{
  v4 = +[HNDHandManager sharedManager];
  v3 = [(HNDRocker *)self hardwareIdentifier];
  [v4 menuExitedOnDisplay:v3];
}

- (BOOL)accessibilityPerformEscape
{
  v3 = [(HNDRocker *)self isAccessibilityElement];
  if ((v3 & 1) == 0)
  {
    [(HNDRocker *)self _menuExited];
  }

  return v3 ^ 1;
}

- (id)accessibilityPath
{
  [(UIView *)self->_maskImageView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UIView *)self->_maskImageView layer];
  [v11 cornerRadius];
  v13 = [UIBezierPath bezierPathWithRoundedRect:v4 cornerRadius:v6, v8, v10, v12];
  v14 = UIAccessibilityConvertPathToScreenCoordinates(v13, self->_maskImageView);

  return v14;
}

- (void)didMoveToWindow
{
  v11.receiver = self;
  v11.super_class = HNDRocker;
  [(HNDRocker *)&v11 didMoveToWindow];
  v3 = +[AXPerformanceTestReportingServer server];
  [v3 assistiveTouchDidLaunch];

  v4 = [(HNDRocker *)self window];
  v5 = [v4 _contextId];

  v6 = [(HNDRocker *)self hitTestCategoryAssertion];
  [v6 invalidate];

  if (v5)
  {
    v7 = +[BKSTouchEventService sharedInstance];
    v8 = [NSNumber numberWithUnsignedInt:v5];
    v12 = v8;
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    v10 = [v7 setContextIDs:v9 forHitTestContextCategory:1];
    [(HNDRocker *)self setHitTestCategoryAssertion:v10];
  }
}

- (void)_updateRockerItemIfNeededForItem:(id)a3
{
  v4 = a3;
  if (![(NSMutableArray *)self->_rockerItems count])
  {
    goto LABEL_12;
  }

  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v6 = [v5 type];
  v7 = [v6 isEqualToString:AXAssistiveTouchIconTypeSpotlight];

  if (v7)
  {
    objc_opt_class();
    v8 = __UIAccessibilityCastAsClass();
    v9 = +[HNDHandManager sharedManager];
    v10 = [v9 currentDisplayManager];
    v11 = [v10 isCurrentOrientationLandscape];

    [v8 setDisabled:AXDeviceIsPhone() & v11];
  }

  if (AXDeviceSupportsOnDeviceEyeTracking())
  {
    v12 = [v5 type];
    if ([v12 isEqualToString:AXAssistiveTouchIconTypeCalibrateOnDeviceEyeTracking])
    {

LABEL_8:
      v15 = +[AXSettings sharedInstance];
      [v5 setDisabled:{objc_msgSend(v15, "assistiveTouchMouseOnDeviceEyeTrackingEnabled") ^ 1}];

      goto LABEL_9;
    }

    v13 = [v5 type];
    v14 = [v13 isEqualToString:AXAssistiveTouchIconTypeOnDeviceEyeTrackingZoomScreen];

    if (v14)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  v16 = [v5 type];
  v17 = [v16 isEqualToString:AXAssistiveTouchIconTypeMenuBar];

  if (v17)
  {
    objc_opt_class();
    v18 = __UIAccessibilityCastAsClass();
    v19 = +[AXSBMenuBarManager sharedInstance];
    [v18 setDisabled:{objc_msgSend(v19, "isMenuBarSupported") ^ 1}];
  }

LABEL_12:
}

- (HNDDisplayManager)displayManager
{
  WeakRetained = objc_loadWeakRetained(&self->_displayManager);

  return WeakRetained;
}

@end