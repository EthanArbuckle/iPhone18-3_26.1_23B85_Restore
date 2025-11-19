@interface IOSChromeViewController
- (BOOL)_internal_createPostMapFullyDrawnOverlaysIfNeeded;
- (BOOL)isDisplayingNavigation;
- (IOSChromeViewController)init;
- (UIEdgeInsets)mapAttributionInsets;
- (id)allComponents;
- (id)keyCommands;
- (id)preferredFocusEnvironments;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (int)navigationApplicationState;
- (int64_t)preferredUserInterfaceStyle;
- (void)_acquireChromeDeactivationTokenForLuminanceIfNeeded;
- (void)_updateOverlayVisibilityWithCurrentContainerStyle:(unint64_t)a3 progress:(double)a4;
- (void)_updateRecenterButtonWithAnimation:(id)a3;
- (void)_updateStaleMapEffectViewForLuminanceChange;
- (void)_updateStaleMapEffectWithAnimation:(id)a3;
- (void)chromeNavigationDisplay:(id)a3 didChangePanning:(BOOL)a4 animated:(BOOL)a5;
- (void)contextStackDidUpdateFrom:(id)a3 to:(id)a4 withAnimation:(id)a5;
- (void)contextStackWillUpdateFrom:(id)a3 to:(id)a4 withAnimation:(id)a5;
- (void)decrementForToken:(id)a3;
- (void)didBecomeInactive:(BOOL)a3;
- (void)handleMoveToOrFromSecureLockscreenUI:(BOOL)a3;
- (void)incrementForToken:(id)a3;
- (void)initKeyCommand;
- (void)lightLevelController:(id)a3 didUpdateLightLevel:(int64_t)a4;
- (void)mapView:(id)a3 didUpdateUserLocation:(id)a4;
- (void)mapViewDidChangeVisibleRegion:(id)a3;
- (void)recenterButtonTappedInOverlay:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateComponent:(id)a3 forTiming:(unint64_t)a4 withAnimation:(id)a5;
- (void)userDefaultsDidChange:(id)a3;
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
  v3 = [(IOSChromeViewController *)self view];
  [v3 bounds];
  [(UIView *)self->_staleMapEffectDimmingOverlayView setFrame:?];
}

- (id)allComponents
{
  v6.receiver = self;
  v6.super_class = IOSChromeViewController;
  v2 = [(IOSBasedChromeViewController *)&v6 allComponents];
  v7[0] = @"StaleMapEffect";
  v7[1] = @"RecenterButton";
  v3 = [NSArray arrayWithObjects:v7 count:2];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  return v4;
}

- (UIEdgeInsets)mapAttributionInsets
{
  v3 = [(IOSBasedChromeViewController *)self topIOSBasedContext];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_5;
  }

  v4 = [(IOSBasedChromeViewController *)self topIOSBasedContext];
  v5 = [v4 customContainerViewController];

  if (!v5)
  {
LABEL_5:
    v6 = [(IOSBasedChromeViewController *)self topIOSBasedContext];
    if (objc_opt_respondsToSelector())
    {
      v7 = [(IOSBasedChromeViewController *)self topIOSBasedContext];
      v5 = [v7 fullscreenViewController];
    }

    else
    {
      v5 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v5)
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
  [v5 mapAttributionInsets];
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

- (void)userDefaultsDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = IOSChromeViewController;
  [(ChromeViewController *)&v6 userDefaultsDidChange:a3];
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"__internal_MapsDebugForceChromeStaleMapEffect"];

  if (self->_forceStaleMapEffect != v5)
  {
    self->_forceStaleMapEffect = v5;
    [(ChromeViewController *)self setNeedsUpdateComponent:@"StaleMapEffect" animated:1];
  }
}

- (void)decrementForToken:(id)a3
{
  v4 = a3;
  v5 = [v4 tokenGroupName];
  v6 = [v5 isEqual:@"ChromeAttributionBadgeSuspension"];

  if (v6)
  {
    if (![(MapsTokenStorage *)self->_attributionBadgeSuppressionTokens count])
    {
      originalCanShowAttributionBadge = self->_originalCanShowAttributionBadge;
      v8 = [(ChromeViewController *)self mapView];
      [v8 setCanShowAttributionBadge:originalCanShowAttributionBadge];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = IOSChromeViewController;
    [(IOSBasedChromeViewController *)&v9 decrementForToken:v4];
  }
}

- (void)incrementForToken:(id)a3
{
  v4 = a3;
  v5 = [v4 tokenGroupName];
  v6 = [v5 isEqual:@"ChromeAttributionBadgeSuspension"];

  if (v6)
  {
    if ([(MapsTokenStorage *)self->_attributionBadgeSuppressionTokens count]== 1)
    {
      v7 = [(ChromeViewController *)self mapView];
      self->_originalCanShowAttributionBadge = [v7 canShowAttributionBadge];

      v8 = [(ChromeViewController *)self mapView];
      [v8 setCanShowAttributionBadge:0];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = IOSChromeViewController;
    [(IOSBasedChromeViewController *)&v9 incrementForToken:v4];
  }
}

- (void)chromeNavigationDisplay:(id)a3 didChangePanning:(BOOL)a4 animated:(BOOL)a5
{
  v6.receiver = self;
  v6.super_class = IOSChromeViewController;
  [(ChromeViewController *)&v6 chromeNavigationDisplay:a3 didChangePanning:a4 animated:a5];
  [(ChromeViewController *)self setNeedsUpdateComponent:@"RecenterButton" animated:1];
}

- (void)mapView:(id)a3 didUpdateUserLocation:(id)a4
{
  v7.receiver = self;
  v7.super_class = IOSChromeViewController;
  [(IOSChromeViewController *)&v7 mapView:a3 didUpdateUserLocation:a4];
  if (+[VLFSessionTask isVLFModeSupported])
  {
    v5 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
    v6 = [v5 floatingControlsViewController];
    [VLFCalloutVisibilityHelper updateVLFBannerVisibilityWithChromeViewController:self floatingControlsViewController:v6];
  }
}

- (void)mapViewDidChangeVisibleRegion:(id)a3
{
  if (+[VLFSessionTask isVLFModeSupported])
  {
    v5 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
    v4 = [v5 floatingControlsViewController];
    [VLFCalloutVisibilityHelper updateVLFBannerVisibilityWithChromeViewController:self floatingControlsViewController:v4];
  }
}

- (void)lightLevelController:(id)a3 didUpdateLightLevel:(int64_t)a4
{
  v5 = sub_100014EFC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [(IOSChromeViewController *)self traitCollection];
    v9 = 138412802;
    v10 = v6;
    v11 = 2048;
    v12 = self;
    v13 = 2048;
    v14 = [v8 userInterfaceStyle];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "<%@:%p>: current interface style is %ld", &v9, 0x20u);
  }

  [(IOSBasedChromeViewController *)self updateThemeViewAndControllers];
}

- (id)preferredFocusEnvironments
{
  v2 = [(ChromeViewController *)self mapView];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)_updateOverlayVisibilityWithCurrentContainerStyle:(unint64_t)a3 progress:(double)a4
{
  if ((a3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = [(ChromeViewController *)self mapView];
    if ([v6 userTrackingMode] == 1)
    {
      [v6 setUserTrackingMode:0];
    }

    v7 = 1.0;
    v8 = 1.0 - a4;
    v9 = [(IOSBasedChromeViewController *)self topIOSBasedContext];
    if (objc_opt_respondsToSelector())
    {
      v10 = [(IOSBasedChromeViewController *)self topIOSBasedContext];
      v11 = [v10 shouldResizingCardDimFloatingControls];

      if (v11)
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

    v16 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
    [v16 setAlpha:v7];

    v17 = [(IOSBasedChromeViewController *)self weatherOverlay];
    [v17 setAlpha:v8];

    v18 = [(IOSBasedChromeViewController *)self lookAroundOverlay];
    [v18 setAlpha:v8];

    v19 = [(IOSBasedChromeViewController *)self redoSearchOverlay];
    [v19 setAlpha:v8];

    v20 = [(IOSBasedChromeViewController *)self userLocationView];
    [v20 setVlfCalloutAlpha:v8];
  }

  else
  {
    v12 = [(IOSBasedChromeViewController *)self weatherOverlay];
    [v12 setAlpha:1.0];

    v13 = [(IOSBasedChromeViewController *)self lookAroundOverlay];
    [v13 setAlpha:1.0];

    v14 = [(IOSBasedChromeViewController *)self redoSearchOverlay];
    [v14 setAlpha:1.0];

    v15 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
    [v15 setAlpha:1.0];

    v6 = [(IOSBasedChromeViewController *)self userLocationView];
    [v6 setVlfCalloutAlpha:1.0];
  }

  if (+[VLFSessionTask isVLFModeSupported])
  {
    v22 = [(IOSBasedChromeViewController *)self floatingControlsOverlay];
    v21 = [v22 floatingControlsViewController];
    [VLFCalloutVisibilityHelper updateVLFBannerVisibilityWithChromeViewController:self floatingControlsViewController:v21];
  }
}

- (int)navigationApplicationState
{
  v3 = [(ChromeViewController *)self pendingContexts];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(ChromeViewController *)self contexts];
  }

  v6 = v5;

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
      v9 = [(ChromeViewController *)&v11 navigationApplicationState];
      goto LABEL_8;
    }
  }

  v9 = 3;
LABEL_8:

  return v9;
}

- (BOOL)isDisplayingNavigation
{
  v3 = [(ChromeViewController *)self pendingContexts];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(ChromeViewController *)self contexts];
  }

  v6 = v5;

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

- (void)recenterButtonTappedInOverlay:(id)a3
{
  v4 = [(ChromeViewController *)self navigationDisplay];
  if ([v4 isCameraPanning])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(ChromeViewController *)self navigationDisplay];
    v5 = [v6 isNonDefaultZoom];
  }

  if ([(ChromeViewController *)self isRunningNavigationDisplay]&& v5)
  {
    v8 = [(ChromeViewController *)self topContext];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v8 handleRecenterButton] & 1) == 0)
    {
      v7 = [(ChromeViewController *)self mapView];
      [v7 navigationCameraReturnToPuck];
    }
  }
}

- (void)handleMoveToOrFromSecureLockscreenUI:(BOOL)a3
{
  staleMapEffectView = self->_staleMapEffectView;
  if (staleMapEffectView)
  {
    v6 = !a3;
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

  if ((!staleMapEffectView || !a3) && !+[UIView areAnimationsEnabled])
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"BacklightLuminanceDidChangeNotification" object:self];
  }
}

- (void)_acquireChromeDeactivationTokenForLuminanceIfNeeded
{
  v3 = [(IOSChromeViewController *)self traitCollection];
  v4 = [v3 isLuminanceReduced];

  luminanceChromeDeactivationToken = self->_luminanceChromeDeactivationToken;
  if (v4)
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

    v11 = self;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(IOSChromeViewController *)v11 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

        goto LABEL_16;
      }
    }

    v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_16:

    *buf = 138543362;
    v31 = v16;
    v17 = "[%{public}@] No stale map effect";
    v18 = v10;
    v19 = 12;
LABEL_24:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, v17, buf, v19);

    goto LABEL_25;
  }

  v3 = [(IOSChromeViewController *)self traitCollection];
  v4 = [v3 isLuminanceReduced];

  if (v4)
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

    v20 = self;
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    if (objc_opt_respondsToSelector())
    {
      v23 = [(IOSChromeViewController *)v20 performSelector:"accessibilityIdentifier"];
      v24 = v23;
      if (v23 && ![v23 isEqualToString:v22])
      {
        v16 = [NSString stringWithFormat:@"%@<%p, %@>", v22, v20, v24];

        goto LABEL_23;
      }
    }

    v16 = [NSString stringWithFormat:@"%@<%p>", v22, v20];
LABEL_23:

    v25 = v20->_luminanceChromeDeactivationToken != 0;
    *buf = 138543874;
    v31 = v16;
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
  if (v4)
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
  v28 = v4;
  block[4] = self;
  v27 = v7;
  v10 = v7;
  dispatch_after(v9, &_dispatch_main_q, block);

LABEL_25:
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = IOSChromeViewController;
  v4 = a3;
  [(IOSChromeViewController *)&v9 traitCollectionDidChange:v4];
  v5 = [(IOSChromeViewController *)self traitCollection:v9.receiver];
  v6 = sub_100017FE8(v4, v5);

  if (v6)
  {
    v7 = [(IOSChromeViewController *)self traitCollection];
    self->_hasReducedLuminance = [v7 isLuminanceReduced];

    [(IOSBasedChromeViewController *)self setNeedsUserInterfaceAppearanceUpdate];
    v8 = [(StaleMapEffectView *)self->_staleMapEffectView superview];

    if (v8)
    {
      [(IOSChromeViewController *)self _updateStaleMapEffectViewForLuminanceChange];
    }
  }
}

- (void)didBecomeInactive:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = IOSChromeViewController;
  [(ChromeViewController *)&v4 didBecomeInactive:a3];
  [(ChromeViewController *)self setNeedsUpdateComponent:@"StaleMapEffect" animated:0];
}

- (void)_updateRecenterButtonWithAnimation:(id)a3
{
  v4 = a3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100FFAD2C;
  v5[3] = &unk_101661AE0;
  v5[4] = self;
  v6 = [v4 isAnimated];
  [v4 addAnimations:v5];
}

- (void)_updateStaleMapEffectWithAnimation:(id)a3
{
  v4 = a3;
  v5 = sub_10000B11C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(IOSChromeViewController *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    *buf = 138543874;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = "[IOSChromeViewController _updateStaleMapEffectWithAnimation:]";
    *&buf[22] = 2114;
    v16 = v4;
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
  [v4 addPreparation:v14];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100FFB8D0;
  v13[3] = &unk_101661600;
  v13[4] = self;
  v13[5] = buf;
  [v4 addAnimations:v13];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100FFBB58;
  v12[3] = &unk_101661628;
  v12[4] = self;
  v12[5] = buf;
  [v4 addCompletion:v12];
  _Block_object_dispose(buf, 8);
}

- (void)updateComponent:(id)a3 forTiming:(unint64_t)a4 withAnimation:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8 == @"StaleMapEffect")
  {
    [(IOSChromeViewController *)self _updateStaleMapEffectWithAnimation:v9];
  }

  else if (v8 == @"RecenterButton")
  {
    [(IOSChromeViewController *)self _updateRecenterButtonWithAnimation:v9];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = IOSChromeViewController;
    [(IOSBasedChromeViewController *)&v10 updateComponent:v8 forTiming:a4 withAnimation:v9];
  }
}

- (void)contextStackDidUpdateFrom:(id)a3 to:(id)a4 withAnimation:(id)a5
{
  v14.receiver = self;
  v14.super_class = IOSChromeViewController;
  v8 = a5;
  v9 = a4;
  [(IOSBasedChromeViewController *)&v14 contextStackDidUpdateFrom:a3 to:v9 withAnimation:v8];
  v10 = [v9 lastObject];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100FFC004;
  v12[3] = &unk_101661570;
  v12[4] = self;
  v13 = v10;
  v11 = v10;
  [v8 addCompletion:v12];
}

- (void)contextStackWillUpdateFrom:(id)a3 to:(id)a4 withAnimation:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100FFC224;
  v12[3] = &unk_101661B18;
  v12[4] = self;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [v8 addPreparation:v12];
  v11.receiver = self;
  v11.super_class = IOSChromeViewController;
  [(IOSBasedChromeViewController *)&v11 contextStackWillUpdateFrom:v10 to:v9 withAnimation:v8];
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
  v3 = [(IOSBasedChromeViewController *)&v10 _internal_createPostMapFullyDrawnOverlaysIfNeeded];
  if (v3 && !self->_recenterButtonOverlay)
  {
    v4 = objc_alloc_init(_TtC4Maps24IOSRecenterButtonOverlay);
    recenterButtonOverlay = self->_recenterButtonOverlay;
    self->_recenterButtonOverlay = v4;

    [(IOSRecenterButtonOverlay *)self->_recenterButtonOverlay setDelegate:self];
    v6 = [(ChromeViewController *)self overlayController];
    v7 = self->_recenterButtonOverlay;
    v8 = [(IOSBasedChromeViewController *)self innerLayoutGuide];
    [v6 addOverlay:v7 inLayoutGuide:v8];

    [(ChromeViewController *)self setNeedsUpdateComponent:@"RecenterButton" animated:0];
  }

  return v3;
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(ChromeViewController *)self topContext];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(ChromeViewController *)self topContext];
    v9 = [v8 fullscreenViewController];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 targetForAction:a3 withSender:v6];
  if (!v10)
  {
    v12.receiver = self;
    v12.super_class = IOSChromeViewController;
    v10 = [(IOSChromeViewController *)&v12 targetForAction:a3 withSender:v6];
  }

  return v10;
}

- (id)keyCommands
{
  v16.receiver = self;
  v16.super_class = IOSChromeViewController;
  v3 = [(IOSChromeViewController *)&v16 keyCommands];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  v6 = v5;

  v7 = [(ChromeViewController *)self mapView];
  v8 = [v7 isFocused];

  if (v8)
  {
    v9 = [(ChromeViewController *)self topContext];
    if (objc_opt_respondsToSelector())
    {
      v10 = [(ChromeViewController *)self topContext];
      v11 = [v10 fullscreenViewController];
    }

    else
    {
      v11 = 0;
    }

    v12 = [v11 keyCommands];
    v13 = v12;
    if (!v12)
    {
      v12 = &__NSArray0__struct;
    }

    v14 = [v12 arrayByAddingObjectsFromArray:v6];

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