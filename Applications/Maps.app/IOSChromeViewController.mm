@interface IOSChromeViewController
- (BOOL)_internal_createPostMapFullyDrawnOverlaysIfNeeded;
- (BOOL)isDisplayingNavigation;
- (IOSChromeViewController)init;
- (UIEdgeInsets)mapAttributionInsets;
- (id)allComponents;
- (id)keyCommands;
- (id)preferredFocusEnvironments;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (int)navigationApplicationState;
- (int64_t)preferredUserInterfaceStyle;
- (void)_acquireChromeDeactivationTokenForLuminanceIfNeeded;
- (void)_updateOverlayVisibilityWithCurrentContainerStyle:(unint64_t)style progress:(double)progress;
- (void)_updateRecenterButtonWithAnimation:(id)animation;
- (void)_updateStaleMapEffectViewForLuminanceChange;
- (void)_updateStaleMapEffectWithAnimation:(id)animation;
- (void)chromeNavigationDisplay:(id)display didChangePanning:(BOOL)panning animated:(BOOL)animated;
- (void)contextStackDidUpdateFrom:(id)from to:(id)to withAnimation:(id)animation;
- (void)contextStackWillUpdateFrom:(id)from to:(id)to withAnimation:(id)animation;
- (void)decrementForToken:(id)token;
- (void)didBecomeInactive:(BOOL)inactive;
- (void)handleMoveToOrFromSecureLockscreenUI:(BOOL)i;
- (void)incrementForToken:(id)token;
- (void)initKeyCommand;
- (void)lightLevelController:(id)controller didUpdateLightLevel:(int64_t)level;
- (void)mapView:(id)view didUpdateUserLocation:(id)location;
- (void)mapViewDidChangeVisibleRegion:(id)region;
- (void)recenterButtonTappedInOverlay:(id)overlay;
- (void)traitCollectionDidChange:(id)change;
- (void)updateComponent:(id)component forTiming:(unint64_t)timing withAnimation:(id)animation;
- (void)userDefaultsDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation IOSChromeViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = IOSChromeViewController;
  [(IOSBasedChromeViewController *)&v5 viewDidLoad];
  v3 = +[NSUserDefaults standardUserDefaults];
  self->_forceStaleMapEffect = [v3 BOOLForKey:@"__internal_MapsDebugForceChromeStaleMapEffect"];

  v4 = +[MapsLightLevelController sharedController];
  [v4 addObserver:self];

  [(IOSChromeViewController *)self initKeyCommand];
}

- (void)initKeyCommand
{
  v3 = [UIKeyCommand keyCommandWithInput:@"_" modifierFlags:0x100000 action:"zoomOut"];
  [(IOSChromeViewController *)self addKeyCommand:v3];
  v4 = [UIKeyCommand keyCommandWithInput:@"=" modifierFlags:0x100000 action:"zoomIn"];

  [(IOSChromeViewController *)self addKeyCommand:v4];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = IOSChromeViewController;
  [(IOSBasedChromeViewController *)&v4 viewDidLayoutSubviews];
  view = [(IOSChromeViewController *)self view];
  [view bounds];
  [(UIView *)self->_staleMapEffectDimmingOverlayView setFrame:?];
}

- (id)allComponents
{
  v6.receiver = self;
  v6.super_class = IOSChromeViewController;
  allComponents = [(IOSBasedChromeViewController *)&v6 allComponents];
  v7[0] = @"StaleMapEffect";
  v7[1] = @"RecenterButton";
  v3 = [NSArray arrayWithObjects:v7 count:2];
  v4 = [allComponents arrayByAddingObjectsFromArray:v3];

  return v4;
}

- (UIEdgeInsets)mapAttributionInsets
{
  topIOSBasedContext = [(IOSBasedChromeViewController *)self topIOSBasedContext];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_5;
  }

  topIOSBasedContext2 = [(IOSBasedChromeViewController *)self topIOSBasedContext];
  customContainerViewController = [topIOSBasedContext2 customContainerViewController];

  if (!customContainerViewController)
  {
LABEL_5:
    topIOSBasedContext3 = [(IOSBasedChromeViewController *)self topIOSBasedContext];
    if (objc_opt_respondsToSelector())
    {
      topIOSBasedContext4 = [(IOSBasedChromeViewController *)self topIOSBasedContext];
      customContainerViewController = [topIOSBasedContext4 fullscreenViewController];
    }

    else
    {
      customContainerViewController = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (customContainerViewController)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    goto LABEL_13;
  }

LABEL_10:
  [customContainerViewController mapAttributionInsets];
  top = v8;
  left = v10;
  bottom = v12;
  right = v14;

LABEL_13:
  v16 = top;
  v17 = left;
  v18 = bottom;
  v19 = right;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (void)userDefaultsDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = IOSChromeViewController;
  [(ChromeViewController *)&v6 userDefaultsDidChange:change];
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"__internal_MapsDebugForceChromeStaleMapEffect"];

  if (self->_forceStaleMapEffect != v5)
  {
    self->_forceStaleMapEffect = v5;
    [(ChromeViewController *)self setNeedsUpdateComponent:@"StaleMapEffect" animated:1];
  }
}

- (void)decrementForToken:(id)token
{
  tokenCopy = token;
  tokenGroupName = [tokenCopy tokenGroupName];
  v6 = [tokenGroupName isEqual:@"ChromeAttributionBadgeSuspension"];

  if (v6)
  {
    if (![(MapsTokenStorage *)self->_attributionBadgeSuppressionTokens count])
    {
      originalCanShowAttributionBadge = self->_originalCanShowAttributionBadge;
      mapView = [(ChromeViewController *)self mapView];
      [mapView setCanShowAttributionBadge:originalCanShowAttributionBadge];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = IOSChromeViewController;
    [(IOSBasedChromeViewController *)&v9 decrementForToken:tokenCopy];
  }
}

- (void)incrementForToken:(id)token
{
  tokenCopy = token;
  tokenGroupName = [tokenCopy tokenGroupName];
  v6 = [tokenGroupName isEqual:@"ChromeAttributionBadgeSuspension"];

  if (v6)
  {
    if ([(MapsTokenStorage *)self->_attributionBadgeSuppressionTokens count]== 1)
    {
      mapView = [(ChromeViewController *)self mapView];
      self->_originalCanShowAttributionBadge = [mapView canShowAttributionBadge];

      mapView2 = [(ChromeViewController *)self mapView];
      [mapView2 setCanShowAttributionBadge:0];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = IOSChromeViewController;
    [(IOSBasedChromeViewController *)&v9 incrementForToken:tokenCopy];
  }
}

- (void)chromeNavigationDisplay:(id)display didChangePanning:(BOOL)panning animated:(BOOL)animated
{
  v6.receiver = self;
  v6.super_class = IOSChromeViewController;
  [(ChromeViewController *)&v6 chromeNavigationDisplay:display didChangePanning:panning animated:animated];
  [(ChromeViewController *)self setNeedsUpdateComponent:@"RecenterButton" animated:1];
}

- (void)mapView:(id)view didUpdateUserLocation:(id)location
{
  v7.receiver = self;
  v7.super_class = IOSChromeViewController;
  [(IOSChromeViewController *)&v7 mapView:view didUpdateUserLocation:location];
  if (+[VLFSessionTask isVLFModeSupported])
  {
    floatingControlsOverlay = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
    floatingControlsViewController = [floatingControlsOverlay floatingControlsViewController];
    [VLFCalloutVisibilityHelper updateVLFBannerVisibilityWithChromeViewController:self floatingControlsViewController:floatingControlsViewController];
  }
}

- (void)mapViewDidChangeVisibleRegion:(id)region
{
  if (+[VLFSessionTask isVLFModeSupported])
  {
    floatingControlsOverlay = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
    floatingControlsViewController = [floatingControlsOverlay floatingControlsViewController];
    [VLFCalloutVisibilityHelper updateVLFBannerVisibilityWithChromeViewController:self floatingControlsViewController:floatingControlsViewController];
  }
}

- (void)lightLevelController:(id)controller didUpdateLightLevel:(int64_t)level
{
  v5 = sub_100014EFC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = v6;
    traitCollection = [(IOSChromeViewController *)self traitCollection];
    v9 = 138412802;
    v10 = v6;
    v11 = 2048;
    selfCopy = self;
    v13 = 2048;
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "<%@:%p>: current interface style is %ld", &v9, 0x20u);
  }

  [(IOSBasedChromeViewController *)self updateThemeViewAndControllers];
}

- (id)preferredFocusEnvironments
{
  mapView = [(ChromeViewController *)self mapView];
  v5 = mapView;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)_updateOverlayVisibilityWithCurrentContainerStyle:(unint64_t)style progress:(double)progress
{
  if ((style & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    mapView = [(ChromeViewController *)self mapView];
    if ([mapView userTrackingMode] == 1)
    {
      [mapView setUserTrackingMode:0];
    }

    v7 = 1.0;
    v8 = 1.0 - progress;
    topIOSBasedContext = [(IOSBasedChromeViewController *)self topIOSBasedContext];
    if (objc_opt_respondsToSelector())
    {
      topIOSBasedContext2 = [(IOSBasedChromeViewController *)self topIOSBasedContext];
      shouldResizingCardDimFloatingControls = [topIOSBasedContext2 shouldResizingCardDimFloatingControls];

      if (shouldResizingCardDimFloatingControls)
      {
        v7 = v8;
      }

      else
      {
        v7 = 1.0;
      }
    }

    else
    {
    }

    floatingControlsOverlay = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
    [floatingControlsOverlay setAlpha:v7];

    weatherOverlay = [(IOSBasedChromeViewController *)self weatherOverlay];
    [weatherOverlay setAlpha:v8];

    lookAroundOverlay = [(IOSBasedChromeViewController *)self lookAroundOverlay];
    [lookAroundOverlay setAlpha:v8];

    redoSearchOverlay = [(IOSBasedChromeViewController *)self redoSearchOverlay];
    [redoSearchOverlay setAlpha:v8];

    userLocationView = [(IOSBasedChromeViewController *)self userLocationView];
    [userLocationView setVlfCalloutAlpha:v8];
  }

  else
  {
    weatherOverlay2 = [(IOSBasedChromeViewController *)self weatherOverlay];
    [weatherOverlay2 setAlpha:1.0];

    lookAroundOverlay2 = [(IOSBasedChromeViewController *)self lookAroundOverlay];
    [lookAroundOverlay2 setAlpha:1.0];

    redoSearchOverlay2 = [(IOSBasedChromeViewController *)self redoSearchOverlay];
    [redoSearchOverlay2 setAlpha:1.0];

    floatingControlsOverlay2 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
    [floatingControlsOverlay2 setAlpha:1.0];

    mapView = [(IOSBasedChromeViewController *)self userLocationView];
    [mapView setVlfCalloutAlpha:1.0];
  }

  if (+[VLFSessionTask isVLFModeSupported])
  {
    floatingControlsOverlay3 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
    floatingControlsViewController = [floatingControlsOverlay3 floatingControlsViewController];
    [VLFCalloutVisibilityHelper updateVLFBannerVisibilityWithChromeViewController:self floatingControlsViewController:floatingControlsViewController];
  }
}

- (int)navigationApplicationState
{
  pendingContexts = [(ChromeViewController *)self pendingContexts];
  v4 = pendingContexts;
  if (pendingContexts)
  {
    contexts = pendingContexts;
  }

  else
  {
    contexts = [(ChromeViewController *)self contexts];
  }

  v6 = contexts;

  v7 = [v6 _maps_firstContextOfClass:objc_opt_class()];
  if (v7)
  {
  }

  else
  {
    v8 = [v6 _maps_firstContextOfClass:objc_opt_class()];

    if (!v8)
    {
      v11.receiver = self;
      v11.super_class = IOSChromeViewController;
      navigationApplicationState = [(ChromeViewController *)&v11 navigationApplicationState];
      goto LABEL_8;
    }
  }

  navigationApplicationState = 3;
LABEL_8:

  return navigationApplicationState;
}

- (BOOL)isDisplayingNavigation
{
  pendingContexts = [(ChromeViewController *)self pendingContexts];
  v4 = pendingContexts;
  if (pendingContexts)
  {
    contexts = pendingContexts;
  }

  else
  {
    contexts = [(ChromeViewController *)self contexts];
  }

  v6 = contexts;

  v7 = [v6 _maps_firstContextOfClass:objc_opt_class()];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v6 _maps_firstContextOfClass:objc_opt_class()];
    v8 = v9 != 0;
  }

  return v8;
}

- (void)recenterButtonTappedInOverlay:(id)overlay
{
  navigationDisplay = [(ChromeViewController *)self navigationDisplay];
  if ([navigationDisplay isCameraPanning])
  {
    isNonDefaultZoom = 1;
  }

  else
  {
    navigationDisplay2 = [(ChromeViewController *)self navigationDisplay];
    isNonDefaultZoom = [navigationDisplay2 isNonDefaultZoom];
  }

  if ([(ChromeViewController *)self isRunningNavigationDisplay]&& isNonDefaultZoom)
  {
    topContext = [(ChromeViewController *)self topContext];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([topContext handleRecenterButton] & 1) == 0)
    {
      mapView = [(ChromeViewController *)self mapView];
      [mapView navigationCameraReturnToPuck];
    }
  }
}

- (void)handleMoveToOrFromSecureLockscreenUI:(BOOL)i
{
  staleMapEffectView = self->_staleMapEffectView;
  if (staleMapEffectView)
  {
    v6 = !i;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    if (+[UIView areAnimationsEnabled])
    {
      v7 = +[NSNotificationCenter defaultCenter];
      v10 = @"kBacklightLuminanceInitialSetupDoneKey";
      v11 = &__kCFBooleanTrue;
      v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      [v7 postNotificationName:@"BacklightLuminanceDidChangeNotification" object:self userInfo:v8];

      return;
    }

    staleMapEffectView = self->_staleMapEffectView;
  }

  if ((!staleMapEffectView || !i) && !+[UIView areAnimationsEnabled])
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"BacklightLuminanceDidChangeNotification" object:self];
  }
}

- (void)_acquireChromeDeactivationTokenForLuminanceIfNeeded
{
  traitCollection = [(IOSChromeViewController *)self traitCollection];
  isLuminanceReduced = [traitCollection isLuminanceReduced];

  luminanceChromeDeactivationToken = self->_luminanceChromeDeactivationToken;
  if (isLuminanceReduced)
  {
    if (luminanceChromeDeactivationToken)
    {
      return;
    }

    v6 = [(ChromeViewController *)self acquireChromeDeactivationTokenForReason:@"reduced"];
    luminanceChromeDeactivationToken = self->_luminanceChromeDeactivationToken;
  }

  else
  {
    if (!luminanceChromeDeactivationToken)
    {
      return;
    }

    v6 = 0;
  }

  self->_luminanceChromeDeactivationToken = v6;
}

- (void)_updateStaleMapEffectViewForLuminanceChange
{
  if (!self->_staleMapEffectView)
  {
    v10 = sub_10000B11C();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    selfCopy = self;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(IOSChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v13, selfCopy, v15];

        goto LABEL_16;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v13, selfCopy];
LABEL_16:

    *buf = 138543362;
    v31 = selfCopy;
    v17 = "[%{public}@] No stale map effect";
    v18 = v10;
    v19 = 12;
LABEL_24:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, v17, buf, v19);

    goto LABEL_25;
  }

  traitCollection = [(IOSChromeViewController *)self traitCollection];
  isLuminanceReduced = [traitCollection isLuminanceReduced];

  if (isLuminanceReduced)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  [(StaleMapEffectView *)self->_staleMapEffectView alpha];
  if (vabdd_f64(v5, v6) <= 2.22044605e-16)
  {
    v10 = sub_10000B11C();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    selfCopy2 = self;
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    if (objc_opt_respondsToSelector())
    {
      v23 = [(IOSChromeViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v24 = v23;
      if (v23 && ![v23 isEqualToString:v22])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v22, selfCopy2, v24];

        goto LABEL_23;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v22, selfCopy2];
LABEL_23:

    v25 = selfCopy2->_luminanceChromeDeactivationToken != 0;
    *buf = 138543874;
    v31 = selfCopy;
    v32 = 2048;
    v33 = v5;
    v34 = 1024;
    v35 = v25;
    v17 = "[%{public}@] Stale map effect alpha already equals: %f, hasDeactivationToken: %d";
    v18 = v10;
    v19 = 28;
    goto LABEL_24;
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100FFAA84;
  v29[3] = &unk_101661650;
  v29[4] = self;
  *&v29[5] = v5;
  v7 = objc_retainBlock(v29);
  if (isLuminanceReduced)
  {
    v8 = 1000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = dispatch_time(0, v8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FFAAE0;
  block[3] = &unk_101661678;
  v28 = isLuminanceReduced;
  block[4] = self;
  v27 = v7;
  v10 = v7;
  dispatch_after(v9, &_dispatch_main_q, block);

LABEL_25:
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = IOSChromeViewController;
  changeCopy = change;
  [(IOSChromeViewController *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(IOSChromeViewController *)self traitCollection:v9.receiver];
  v6 = sub_100017FE8(changeCopy, v5);

  if (v6)
  {
    traitCollection = [(IOSChromeViewController *)self traitCollection];
    self->_hasReducedLuminance = [traitCollection isLuminanceReduced];

    [(IOSBasedChromeViewController *)self setNeedsUserInterfaceAppearanceUpdate];
    superview = [(StaleMapEffectView *)self->_staleMapEffectView superview];

    if (superview)
    {
      [(IOSChromeViewController *)self _updateStaleMapEffectViewForLuminanceChange];
    }
  }
}

- (void)didBecomeInactive:(BOOL)inactive
{
  v4.receiver = self;
  v4.super_class = IOSChromeViewController;
  [(ChromeViewController *)&v4 didBecomeInactive:inactive];
  [(ChromeViewController *)self setNeedsUpdateComponent:@"StaleMapEffect" animated:0];
}

- (void)_updateRecenterButtonWithAnimation:(id)animation
{
  animationCopy = animation;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100FFAD2C;
  v5[3] = &unk_101661AE0;
  v5[4] = self;
  isAnimated = [animationCopy isAnimated];
  [animationCopy addAnimations:v5];
}

- (void)_updateStaleMapEffectWithAnimation:(id)animation
{
  animationCopy = animation;
  v5 = sub_10000B11C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(IOSChromeViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543874;
    *&buf[4] = selfCopy;
    *&buf[12] = 2080;
    *&buf[14] = "[IOSChromeViewController _updateStaleMapEffectWithAnimation:]";
    *&buf[22] = 2114;
    v16 = animationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] %s %{public}@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v16) = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100FFB3B8;
  v14[3] = &unk_101661600;
  v14[4] = self;
  v14[5] = buf;
  [animationCopy addPreparation:v14];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100FFB8D0;
  v13[3] = &unk_101661600;
  v13[4] = self;
  v13[5] = buf;
  [animationCopy addAnimations:v13];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100FFBB58;
  v12[3] = &unk_101661628;
  v12[4] = self;
  v12[5] = buf;
  [animationCopy addCompletion:v12];
  _Block_object_dispose(buf, 8);
}

- (void)updateComponent:(id)component forTiming:(unint64_t)timing withAnimation:(id)animation
{
  componentCopy = component;
  animationCopy = animation;
  if (componentCopy == @"StaleMapEffect")
  {
    [(IOSChromeViewController *)self _updateStaleMapEffectWithAnimation:animationCopy];
  }

  else if (componentCopy == @"RecenterButton")
  {
    [(IOSChromeViewController *)self _updateRecenterButtonWithAnimation:animationCopy];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = IOSChromeViewController;
    [(IOSBasedChromeViewController *)&v10 updateComponent:componentCopy forTiming:timing withAnimation:animationCopy];
  }
}

- (void)contextStackDidUpdateFrom:(id)from to:(id)to withAnimation:(id)animation
{
  v14.receiver = self;
  v14.super_class = IOSChromeViewController;
  animationCopy = animation;
  toCopy = to;
  [(IOSBasedChromeViewController *)&v14 contextStackDidUpdateFrom:from to:toCopy withAnimation:animationCopy];
  lastObject = [toCopy lastObject];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100FFC004;
  v12[3] = &unk_101661570;
  v12[4] = self;
  v13 = lastObject;
  v11 = lastObject;
  [animationCopy addCompletion:v12];
}

- (void)contextStackWillUpdateFrom:(id)from to:(id)to withAnimation:(id)animation
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100FFC224;
  v12[3] = &unk_101661B18;
  v12[4] = self;
  animationCopy = animation;
  toCopy = to;
  fromCopy = from;
  [animationCopy addPreparation:v12];
  v11.receiver = self;
  v11.super_class = IOSChromeViewController;
  [(IOSBasedChromeViewController *)&v11 contextStackWillUpdateFrom:fromCopy to:toCopy withAnimation:animationCopy];
}

- (int64_t)preferredUserInterfaceStyle
{
  if (self->_hasReducedLuminance)
  {
    return 2;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = IOSChromeViewController;
  return [(IOSBasedChromeViewController *)&v5 preferredUserInterfaceStyle];
}

- (BOOL)_internal_createPostMapFullyDrawnOverlaysIfNeeded
{
  v10.receiver = self;
  v10.super_class = IOSChromeViewController;
  _internal_createPostMapFullyDrawnOverlaysIfNeeded = [(IOSBasedChromeViewController *)&v10 _internal_createPostMapFullyDrawnOverlaysIfNeeded];
  if (_internal_createPostMapFullyDrawnOverlaysIfNeeded && !self->_recenterButtonOverlay)
  {
    v4 = objc_alloc_init(_TtC4Maps24IOSRecenterButtonOverlay);
    recenterButtonOverlay = self->_recenterButtonOverlay;
    self->_recenterButtonOverlay = v4;

    [(IOSRecenterButtonOverlay *)self->_recenterButtonOverlay setDelegate:self];
    overlayController = [(ChromeViewController *)self overlayController];
    v7 = self->_recenterButtonOverlay;
    innerLayoutGuide = [(IOSBasedChromeViewController *)self innerLayoutGuide];
    [overlayController addOverlay:v7 inLayoutGuide:innerLayoutGuide];

    [(ChromeViewController *)self setNeedsUpdateComponent:@"RecenterButton" animated:0];
  }

  return _internal_createPostMapFullyDrawnOverlaysIfNeeded;
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  topContext = [(ChromeViewController *)self topContext];
  if (objc_opt_respondsToSelector())
  {
    topContext2 = [(ChromeViewController *)self topContext];
    fullscreenViewController = [topContext2 fullscreenViewController];
  }

  else
  {
    fullscreenViewController = 0;
  }

  v10 = [fullscreenViewController targetForAction:action withSender:senderCopy];
  if (!v10)
  {
    v12.receiver = self;
    v12.super_class = IOSChromeViewController;
    v10 = [(IOSChromeViewController *)&v12 targetForAction:action withSender:senderCopy];
  }

  return v10;
}

- (id)keyCommands
{
  v16.receiver = self;
  v16.super_class = IOSChromeViewController;
  keyCommands = [(IOSChromeViewController *)&v16 keyCommands];
  v4 = keyCommands;
  if (keyCommands)
  {
    v5 = keyCommands;
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  v6 = v5;

  mapView = [(ChromeViewController *)self mapView];
  isFocused = [mapView isFocused];

  if (isFocused)
  {
    topContext = [(ChromeViewController *)self topContext];
    if (objc_opt_respondsToSelector())
    {
      topContext2 = [(ChromeViewController *)self topContext];
      fullscreenViewController = [topContext2 fullscreenViewController];
    }

    else
    {
      fullscreenViewController = 0;
    }

    keyCommands2 = [fullscreenViewController keyCommands];
    v13 = keyCommands2;
    if (!keyCommands2)
    {
      keyCommands2 = &__NSArray0__struct;
    }

    v14 = [keyCommands2 arrayByAddingObjectsFromArray:v6];

    v6 = v14;
  }

  return v6;
}

- (IOSChromeViewController)init
{
  v6.receiver = self;
  v6.super_class = IOSChromeViewController;
  v2 = [(IOSBasedChromeViewController *)&v6 init];
  if (v2)
  {
    v3 = [[MapsTokenStorage alloc] initWithDelegate:v2 tokenGroupName:@"ChromeAttributionBadgeSuspension" callbackQueue:&_dispatch_main_q];
    attributionBadgeSuppressionTokens = v2->_attributionBadgeSuppressionTokens;
    v2->_attributionBadgeSuppressionTokens = v3;
  }

  return v2;
}

@end