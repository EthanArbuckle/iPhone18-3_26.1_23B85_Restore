@interface PhoneRootViewController
- (BOOL)isFaceTimeLaunchPageEnabled;
- (BOOL)isIPad;
- (BOOL)needsSplitView;
- (BOOL)sideBarShouldBeFloating;
- (PHLocalVideoViewController)localVideoViewController;
- (UIView)contentView;
- (double)_contentViewWidthForApplicationBoundsSize:(CGSize)a3;
- (id)_childViewControllerForWhitePointAdaptivityStyle;
- (id)buttonViewController;
- (id)dimmingView;
- (id)makeDimmingView;
- (id)makeViewControllerWithIsFrontFacingOrExternal:(id)a3 updateVideoLayers:(id)a4;
- (void)_constrainRegistrationView;
- (void)_destroyFirstRunController;
- (void)_ensureProperPositionForContentView;
- (void)_getRotationContentSettings:(id *)a3;
- (void)createFaceTimeFirstRunViewIfNeeded;
- (void)displayUIAnimated:(BOOL)a3;
- (void)ensureBaseViewControllerIsShowing;
- (void)handleApplicationWillEnterForegroundNotification:(id)a3;
- (void)handleOrientationNotification:(id)a3;
- (void)hideContentViewAnimated:(BOOL)a3 completionBlock:(id)a4;
- (void)hideDetailsViewController;
- (void)hideVideoConferenceBackgroundViewAnimated:(BOOL)a3;
- (void)loadView;
- (void)lockoutViewControllerDidFinishDismissing:(id)a3;
- (void)setContentViewHiddenPosition;
- (void)setContentViewNormalPosition;
- (void)setupContentViewFullSize;
- (void)setupContentViewSidebar;
- (void)showContentViewAnimated:(BOOL)a3 completionBlock:(id)a4;
- (void)showDetailsViewController;
- (void)showFaceTimeFirstRunViewIfNeeded;
- (void)showScreenTimeShieldForRequest:(id)a3;
- (void)showVideoConferenceBackgroundViewAnimated:(BOOL)a3;
- (void)startPreviewIfNeeded;
- (void)updateVideoViewControllerWithOrientationMonitor:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PhoneRootViewController

- (void)loadView
{
  v4 = objc_alloc_init(PhoneRootView);
  v3 = +[UIColor clearColor];
  [(PhoneRootView *)v4 setBackgroundColor:v3];

  [(PhoneRootView *)v4 setOpaque:0];
  [(PhoneRootViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = PhoneRootViewController;
  [(PhoneRootViewController *)&v2 viewDidLoad];
}

- (void)startPreviewIfNeeded
{
  if ([UIApp alwaysShowLocalVideo] && (objc_msgSend(UIApp, "inCall") & 1) == 0 && (objc_msgSend(UIApp, "isSuspended") & 1) == 0 && !-[PhoneRootViewController shouldHideSelfBlurView](self, "shouldHideSelfBlurView"))
  {
    v3 = sub_100003B9C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting preview via PhoneRootViewController viewWillAppear", v5, 2u);
    }

    v4 = [(PhoneRootViewController *)self localVideoViewController];
    [v4 startPreview];
  }
}

- (id)_childViewControllerForWhitePointAdaptivityStyle
{
  if ([UIApp alwaysShowLocalVideo])
  {
    v3 = [(PhoneRootViewController *)self localVideoViewController];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isFaceTimeLaunchPageEnabled
{
  v2 = +[CNKFeatures sharedInstance];
  v3 = [v2 isFaceTimeLaunchPageEnabled];

  return v3;
}

- (BOOL)isIPad
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

- (BOOL)needsSplitView
{
  v2 = +[UIDevice currentDevice];
  if ([v2 userInterfaceIdiom] == 1)
  {
    v3 = _UISolariumEnabled();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PHLocalVideoViewController)localVideoViewController
{
  localVideoViewController = self->_localVideoViewController;
  if (!localVideoViewController)
  {
    v4 = objc_alloc_init(PHLocalVideoViewController);
    v5 = self->_localVideoViewController;
    self->_localVideoViewController = v4;

    [(PhoneRootViewController *)self addChildViewController:self->_localVideoViewController];
    localVideoViewController = self->_localVideoViewController;
  }

  return localVideoViewController;
}

- (UIView)contentView
{
  if ([(PhoneRootViewController *)self needsSplitView])
  {
    v3 = 0;
  }

  else
  {
    contentView = self->_contentView;
    if (!contentView)
    {
      [UIView setAnimationsEnabled:0];
      v5 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      v6 = self->_contentView;
      self->_contentView = v5;

      [(UIView *)self->_contentView setContentMode:3];
      [(UIView *)self->_contentView setAutoresizesSubviews:1];
      if ([UIApp tabBarFillsScreen])
      {
        [(PhoneRootViewController *)self setupContentViewFullSize];
      }

      else
      {
        [(PhoneRootViewController *)self setupContentViewSidebar];
      }

      if ([UIApp userInterfaceStyle] == 1)
      {
        if (!self->_backdropView)
        {
          v7 = [_UIVisualEffectBackdropView alloc];
          [(UIView *)self->_contentView bounds];
          v8 = [v7 initWithFrame:?];
          backdropView = self->_backdropView;
          self->_backdropView = v8;

          [(_UIVisualEffectBackdropView *)self->_backdropView setAutoresizingMask:18];
          [(_UIVisualEffectBackdropView *)self->_backdropView setRenderMode:1];
          v10 = [(_UIVisualEffectBackdropView *)self->_backdropView captureGroup];
          [v10 setGroupName:@"RootControllerBackgroundBackdrop"];
        }

        if (!self->_backgroundBlurView)
        {
          v11 = [UIVisualEffectView alloc];
          v12 = [UIBlurEffect effectWithStyle:2];
          v13 = [v11 initWithEffect:v12];
          backgroundBlurView = self->_backgroundBlurView;
          self->_backgroundBlurView = v13;

          [(UIView *)self->_contentView bounds];
          [(UIVisualEffectView *)self->_backgroundBlurView setFrame:?];
          [(UIVisualEffectView *)self->_backgroundBlurView setAutoresizingMask:18];
          v15 = [(_UIVisualEffectBackdropView *)self->_backdropView captureGroup];
          v16 = [v15 groupName];
          [(UIVisualEffectView *)self->_backgroundBlurView _setGroupName:v16];

          [(UIVisualEffectView *)self->_backgroundBlurView _setCaptureView:self->_backdropView];
        }

        [(UIView *)self->_contentView addSubview:self->_backdropView];
        [(UIView *)self->_contentView addSubview:self->_backgroundBlurView];
      }

      if ([UIApp usesUnifiedInterface])
      {
        v17 = objc_alloc_init(FTRecentsContainerViewController);
        faceTimeContainerViewController = self->_faceTimeContainerViewController;
        self->_faceTimeContainerViewController = v17;

        objc_storeStrong(&self->_detailsViewController, v17);
        v19 = [(UIViewController *)self->_detailsViewController view];
      }

      else
      {
        v20 = [(PhoneRootViewController *)self baseViewController];
        v19 = [v20 view];
      }

      v21 = [UIApp tabBarFillsScreen];
      [(UIView *)self->_contentView bounds];
      v23 = v22;
      if (v21)
      {
        [v19 setFrame:?];
      }

      else
      {
        [(UIView *)self->_contentView bounds];
        [v19 setBounds:{0.0, 0.0, v23}];
        [(UIView *)self->_contentView bounds];
        MaxX = CGRectGetMaxX(v33);
        [v19 bounds];
        v26 = MaxX - floor(v25 * 0.5);
        [(UIView *)self->_contentView bounds];
        [v19 setCenter:{v26, floor(v27 * 0.5)}];
      }

      [v19 setAutoresizingMask:18];
      v28 = [(PhoneRootViewController *)self detailsViewController];

      if (v28)
      {
        v29 = [(PhoneRootViewController *)self detailsViewController];
        [(PhoneRootViewController *)self addChildViewController:v29];

        [(UIView *)self->_contentView addSubview:v19];
        v30 = [(PhoneRootViewController *)self detailsViewController];
        [v30 didMoveToParentViewController:self];
      }

      else
      {
        [(UIView *)self->_contentView addSubview:v19];
      }

      [UIView setAnimationsEnabled:1];

      contentView = self->_contentView;
    }

    v3 = contentView;
  }

  return v3;
}

- (void)setupContentViewFullSize
{
  if (![(PhoneRootViewController *)self needsSplitView])
  {
    [(UIView *)self->_contentView setOpaque:0];
    v3 = +[UIColor clearColor];
    [(UIView *)self->_contentView setBackgroundColor:v3];

    [(UIView *)self->_contentView setAutoresizingMask:18];

    [(PhoneRootViewController *)self _ensureProperPositionForContentView];
  }
}

- (void)_ensureProperPositionForContentView
{
  v3 = [UIApp tabBarFillsScreen];
  v4 = [(PhoneRootViewController *)self view];
  [v4 bounds];
  v9 = v7;
  v10 = v8;
  if (v3)
  {
    x = v5;
    y = v6;

    v13 = [(PhoneRootViewController *)self view];
    [v13 center];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    [(PhoneRootViewController *)self _contentViewWidthForApplicationBoundsSize:v7, v8];
    v9 = v18;

    v19 = [(PhoneRootViewController *)self view];
    [v19 bounds];
    v10 = v20;

    if ([UIApp userInterfaceLayoutDirection])
    {
      v21 = [(PhoneRootViewController *)self view];
      [v21 bounds];
      v15 = floor(v22 + v9 * -0.5);
    }

    else
    {
      v15 = floor(v9 * 0.5);
    }

    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    if ([(PhoneRootViewController *)self sideBarShouldBeFloating])
    {
      v15 = v15 + 10.0;
      v10 = v10 + -20.0;
    }

    v13 = [(PhoneRootViewController *)self view];
    [v13 bounds];
    v17 = floor(v23 * 0.5);
  }

  [(UIView *)self->_contentView setBounds:x, y, v9, v10];
  [(UIView *)self->_contentView setCenter:v15, v17];
  if ([(PhoneRootViewController *)self sideBarShouldBeFloating]&& ![(PhoneRootViewController *)self needsSplitView])
  {
    [(UIView *)self->_contentView bounds];
    [(UIVisualEffectView *)self->_backgroundBlurView setFrame:?];
    [(UIView *)self->_contentView bounds];
    backdropView = self->_backdropView;

    [(_UIVisualEffectBackdropView *)backdropView setFrame:?];
  }
}

- (BOOL)sideBarShouldBeFloating
{
  v3 = +[CNKFeatures sharedInstance];
  v4 = [v3 isFaceTimeLaunchPageEnabled];

  if (!v4)
  {
    return 0;
  }

  return [(PhoneRootViewController *)self isIPad];
}

- (void)showFaceTimeFirstRunViewIfNeeded
{
  if (+[PHRegistrationViewController shouldShowRegistration])
  {
    if ([UIApp isSuspended])
    {
      v3 = sub_100003B9C();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Skipping showFaceTimeFirstRunViewIfNeeded since PhoneApp isSuspended.", buf, 2u);
      }
    }

    else
    {
      [(PhoneRootViewController *)self createFaceTimeFirstRunViewIfNeeded];
      v7 = [(PHRegistrationViewController *)self->_registrationController view];
      v4 = [(PhoneRootViewController *)self contentView];
      if (!self->_faceTimeRegistrationViewIsShowing)
      {
        [(PhoneRootViewController *)self hideDetailsViewController];
        if (![(PhoneRootViewController *)self needsSplitView])
        {
          [v4 bounds];
          [v7 setFrame:?];
          [v7 setAutoresizingMask:{objc_msgSend(v4, "autoresizingMask")}];
          [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
        }

        detailsViewController = self->_detailsViewController;
        if (detailsViewController)
        {
          v6 = [(UIViewController *)detailsViewController presentedViewController];

          if (v6)
          {
            [(UIViewController *)self->_detailsViewController dismissViewControllerAnimated:0 completion:0];
          }
        }

        [(PhoneRootViewController *)self _constrainRegistrationView];
        self->_faceTimeRegistrationViewIsShowing = 1;
      }

      [v4 bringSubviewToFront:v7];
    }
  }

  else
  {
    [(FTRecentsContainerViewControllerProtocol *)self->_faceTimeContainerViewController showContent];

    [(PhoneRootViewController *)self _destroyFirstRunController];
  }
}

- (void)_destroyFirstRunController
{
  v3 = [(PhoneRootViewController *)self faceTimeContainerViewController];
  v4 = [v3 hasRecentsListViewController];

  if (v4)
  {
    v5 = sub_100003B9C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100009A44(v5);
    }
  }

  if (self->_registrationController)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:UIApplicationDidChangeStatusBarFrameNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    v8 = +[PHOrientationMonitorKeys notificationEvent];
    [v7 removeObserver:self name:v8 object:0];

    v9 = objc_opt_new();
    v10 = [v9 compose];
    [v10 setOrientationEventsEnabled:0];

    if ([(PHRegistrationViewController *)self->_registrationController isViewLoaded])
    {
      v11 = [(PHRegistrationViewController *)self->_registrationController view];
      [v11 removeFromSuperview];
    }

    registrationController = self->_registrationController;
    self->_registrationController = 0;

    self->_faceTimeRegistrationViewIsShowing = 0;
    [(PhoneRootViewController *)self showDetailsViewController];
  }
}

- (void)setContentViewNormalPosition
{
  if ([(PhoneRootViewController *)self isContentViewLoaded])
  {
    v3 = [(PhoneRootViewController *)self contentView];
    if ([UIApp contentViewAnimationsFadeInsteadOfMove])
    {
      [v3 setAlpha:1.0];
    }

    else
    {
      v4 = *&CGAffineTransformIdentity.c;
      v5[0] = *&CGAffineTransformIdentity.a;
      v5[1] = v4;
      v5[2] = *&CGAffineTransformIdentity.tx;
      [v3 setTransform:v5];
    }
  }
}

- (id)buttonViewController
{
  if (-[PhoneRootViewController isFaceTimeLaunchPageEnabled](self, "isFaceTimeLaunchPageEnabled") && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 userInterfaceIdiom], v3, v4))
  {
    buttonViewController = self->_buttonViewController;
    if (!buttonViewController)
    {
      objc_initWeak(&location, self);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100037564;
      v12[3] = &unk_10010B5E0;
      objc_copyWeak(&v13, &location);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000375D8;
      v10[3] = &unk_10010B608;
      objc_copyWeak(&v11, &location);
      v6 = [(PhoneRootViewController *)self makeViewControllerWithIsFrontFacingOrExternal:v12 updateVideoLayers:v10];
      v7 = self->_buttonViewController;
      self->_buttonViewController = v6;

      objc_destroyWeak(&v11);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
      buttonViewController = self->_buttonViewController;
    }

    v8 = buttonViewController;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)dimmingView
{
  if ([(PhoneRootViewController *)self isFaceTimeLaunchPageEnabled])
  {
    dimmingView = self->_dimmingView;
    if (!dimmingView)
    {
      v4 = [(PhoneRootViewController *)self makeDimmingView];
      v5 = self->_dimmingView;
      self->_dimmingView = v4;

      dimmingView = self->_dimmingView;
    }

    v6 = dimmingView;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003776C;
  v9[3] = &unk_10010B630;
  v9[4] = self;
  v7 = a4;
  [v7 animateAlongsideTransition:v9 completion:0];
  v8.receiver = self;
  v8.super_class = PhoneRootViewController;
  [(PhoneRootViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)_getRotationContentSettings:(id *)a3
{
  v7.receiver = self;
  v7.super_class = PhoneRootViewController;
  [(PhoneRootViewController *)&v7 _getRotationContentSettings:?];
  v5 = [(PhoneRootViewController *)self baseViewController];
  v6 = [v5 shouldDisableEdgeClip];

  if (v6)
  {
    a3->var6 = 0;
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if ([UIApp alwaysShowLocalVideo])
  {
    v5 = sub_100003B9C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopping preview via PhoneRootViewController viewDidDisappear", buf, 2u);
    }

    v6 = [(PhoneRootViewController *)self localVideoViewController];
    [v6 stopPreview];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self];

  v8.receiver = self;
  v8.super_class = PhoneRootViewController;
  [(PhoneRootViewController *)&v8 viewDidDisappear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PhoneRootViewController;
  [(PhoneRootViewController *)&v3 viewWillDisappear:a3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PhoneRootViewController;
  [(PhoneRootViewController *)&v4 viewDidAppear:a3];
  [(PhoneRootViewController *)self setNeedsStatusBarAppearanceUpdate];
  [(PhoneRootViewController *)self startPreviewIfNeeded];
}

- (void)viewWillAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = PhoneRootViewController;
  [(PhoneRootViewController *)&v12 viewWillAppear:a3];
  [(PhoneRootViewController *)self startPreviewIfNeeded];
  v4 = sub_100003B9C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Observing foreground notifications via PhoneRootViewController viewWillAppear", v11, 2u);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"handleApplicationWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];

  if ([UIApp alwaysShowLocalVideo])
  {
    v6 = sub_100003B9C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Observing orientation notifications via PhoneRootViewController viewWillAppear", v11, 2u);
    }

    v7 = +[NSNotificationCenter defaultCenter];
    v8 = +[PHOrientationMonitorKeys notificationEvent];
    [v7 addObserver:self selector:"handleOrientationNotification:" name:v8 object:0];

    v9 = objc_opt_new();
    v10 = [v9 compose];
    [v10 setOrientationEventsEnabled:1];
  }
}

- (void)handleApplicationWillEnterForegroundNotification:(id)a3
{
  v4 = sub_100003B9C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PhoneRootViewController handleApplicationWillEnterForegroundNotification", v5, 2u);
  }

  [(PhoneRootViewController *)self showFaceTimeFirstRunViewIfNeeded];
}

- (void)handleOrientationNotification:(id)a3
{
  v4 = [(PhoneRootViewController *)self view];
  v5 = [v4 _screen];

  v6 = +[UIScreen mainScreen];
  if ([UIApp alwaysShowLocalVideo])
  {
    v7 = v5 == v6;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = sub_100003B9C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PhoneRootViewController handleOrientationNotification", buf, 2u);
    }

    v9 = objc_opt_new();
    v10 = [v9 compose];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100037CEC;
    v12[3] = &unk_10010B008;
    v12[4] = self;
    v13 = v10;
    v11 = v10;
    [UIView animateWithDuration:v12 animations:0.300000012];
  }
}

- (void)updateVideoViewControllerWithOrientationMonitor:(id)a3
{
  v4 = a3;
  if ([UIApp alwaysShowLocalVideo])
  {
    v5 = [(PhoneRootViewController *)self view];
    v6 = [v5 window];
    v7 = [v6 windowScene];

    if (v7)
    {
      v8 = [v4 makeInterfaceOrientationFrom:objc_msgSend(v4 whenFailing:{"lastValidInterfaceOrientation"), objc_msgSend(v7, "interfaceOrientation")}];
      v9 = [(PhoneRootViewController *)self localVideoViewController];
      [v9 updateViewControllerForOrientation:v8];
    }

    else
    {
      v9 = sub_100003B9C();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to orient video view controller because there's no window scene to determine a valid fallback orientation", v10, 2u);
      }
    }
  }
}

- (double)_contentViewWidthForApplicationBoundsSize:(CGSize)a3
{
  if ([(PhoneRootViewController *)self isFaceTimeLaunchPageEnabled:a3.width])
  {
    return 400.0;
  }

  v4 = +[PHUIConfiguration contentViewSizeForFaceTime];
  if (v4 <= 2)
  {
    return dbl_1000D6BF8[v4];
  }

  return 320.0;
}

- (void)setupContentViewSidebar
{
  if (![(PhoneRootViewController *)self needsSplitView])
  {
    v3 = +[UIColor clearColor];
    [(UIView *)self->_contentView setBackgroundColor:v3];

    [(UIView *)self->_contentView setAutoresizingMask:20];
    [(PhoneRootViewController *)self _ensureProperPositionForContentView];
    if ([(PhoneRootViewController *)self sideBarShouldBeFloating])
    {
      v4 = [(UIView *)self->_contentView layer];
      [v4 setCornerRadius:10.0];

      v5 = [(UIView *)self->_contentView layer];
      [v5 setMasksToBounds:1];
    }

    if (([UIApp tabBarFillsScreen] & 1) == 0)
    {
      [(PhoneRootViewController *)self setContentViewHiddenPosition];
      contentView = self->_contentView;

      [(UIView *)contentView setHidden:1];
    }
  }
}

- (void)showContentViewAnimated:(BOOL)a3 completionBlock:(id)a4
{
  v4 = a3;
  v7 = a4;
  if (([UIApp tabBarCanSlide] & 1) == 0)
  {
    sub_1000C4DEC(a2, self);
  }

  v8 = [(PhoneRootViewController *)self contentView];
  [v8 setHidden:0];
  v9 = [(PhoneRootViewController *)self view];
  v10 = [v8 superview];

  if (v10 != v9)
  {
    +[UIView disableAnimation];
    [(PhoneRootViewController *)self _ensureProperPositionForContentView];
    [v9 addSubview:v8];
    +[UIView enableAnimation];
  }

  [(PhoneRootViewController *)self showFaceTimeFirstRunViewIfNeeded];
  v11 = [(PhoneRootViewController *)self view];
  v12 = [v11 window];
  v13 = [v12 _rootSheetPresentationController];
  [v13 _setShouldScaleDownBehindDescendantSheets:0];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000381B0;
  v20[3] = &unk_10010B658;
  v21 = v8;
  v22 = v7;
  v14 = v7;
  v15 = v8;
  v16 = objc_retainBlock(v20);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10003822C;
  v19[3] = &unk_10010AD48;
  v19[4] = self;
  v17 = objc_retainBlock(v19);
  if (v4)
  {
    v18 = 0.300000012;
  }

  else
  {
    v18 = 0.0;
  }

  [UIView animateWithDuration:v17 animations:v16 completion:v18];
  [UIView animateWithDuration:0 delay:v17 options:v16 animations:v18 completion:0.0];
}

- (void)setContentViewHiddenPosition
{
  if ([(PhoneRootViewController *)self isContentViewLoaded])
  {
    v3 = [(PhoneRootViewController *)self contentView];
    if ([UIApp contentViewAnimationsFadeInsteadOfMove])
    {
      [v3 setAlpha:0.0];
    }

    else
    {
      v4 = [UIApp userInterfaceLayoutDirection];
      v5 = [UIApp contentViewOffscreenEdge];
      [v3 bounds];
      if (v5 == 1)
      {
        Height = CGRectGetHeight(*&v6);
        v11 = Height;
      }

      else
      {
        Height = CGRectGetWidth(*&v6);
        v11 = 0.0;
      }

      if (v4 != 1)
      {
        Height = -Height;
      }

      memset(&v13.c, 0, 32);
      if (v5 == 1)
      {
        Height = 0.0;
      }

      *&v13.a = 0uLL;
      CGAffineTransformMakeTranslation(&v13, Height, v11);
      v12 = v13;
      [v3 setTransform:&v12];
    }
  }
}

- (void)hideContentViewAnimated:(BOOL)a3 completionBlock:(id)a4
{
  v4 = a3;
  v7 = a4;
  if (([UIApp tabBarCanSlide] & 1) == 0)
  {
    sub_1000C4E60(a2, self);
  }

  if ([(PhoneRootViewController *)self isContentViewLoaded])
  {

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100038494;
    v12[3] = &unk_10010B658;
    v12[4] = self;
    v13 = v7;
    v8 = objc_retainBlock(v12);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003852C;
    v11[3] = &unk_10010AD48;
    v11[4] = self;
    v9 = objc_retainBlock(v11);
    v10 = 0.300000012;
    if (!v4)
    {
      v10 = 0.0;
    }

    [UIView animateWithDuration:0 delay:v9 options:v8 animations:v10 completion:?];
  }
}

- (void)showVideoConferenceBackgroundViewAnimated:(BOOL)a3
{
  v3 = a3;
  if ([UIApp alwaysShowLocalVideo])
  {
    v5 = [(PhoneRootViewController *)self localVideoViewController];
    v6 = [v5 view];

    v7 = [(PhoneRootViewController *)self view];
    [v7 bounds];
    [v6 setFrame:?];

    v8 = [(PhoneRootViewController *)self view];
    v9 = [(PhoneRootViewController *)self contentView];
    [v8 insertSubview:v6 below:v9];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100038704;
    v16[3] = &unk_10010B4E8;
    v16[4] = self;
    v17 = v3;
    v10 = objc_retainBlock(v16);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100038720;
    v14[3] = &unk_10010AD48;
    v15 = v6;
    v11 = v6;
    v12 = objc_retainBlock(v14);
    if (v3)
    {
      v13 = 0.300000012;
    }

    else
    {
      v13 = 0.0;
    }

    [(PHLocalVideoViewController *)self->_localVideoViewController viewWillAppear:v3];
    [UIView animateWithDuration:v12 animations:v10 completion:v13];
  }
}

- (void)hideVideoConferenceBackgroundViewAnimated:(BOOL)a3
{
  v3 = a3;
  if ([UIApp alwaysShowLocalVideo] && -[PHLocalVideoViewController isViewLoaded](self->_localVideoViewController, "isViewLoaded"))
  {
    [(PHLocalVideoViewController *)self->_localVideoViewController view];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000388AC;
    v5 = v15[3] = &unk_10010B680;
    v16 = v5;
    v17 = self;
    v18 = v3;
    v6 = objc_retainBlock(v15);
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000388F8;
    v13 = &unk_10010AD48;
    v14 = v5;
    v7 = v5;
    v8 = objc_retainBlock(&v10);
    if (v3)
    {
      v9 = 0.300000012;
    }

    else
    {
      v9 = 0.0;
    }

    [(PHLocalVideoViewController *)self->_localVideoViewController viewWillDisappear:v3, v10, v11, v12, v13];
    [UIView animateWithDuration:v8 animations:v6 completion:v9];
  }
}

- (void)showDetailsViewController
{
  if ([UIApp userInterfaceStyle] == 1)
  {
    v8 = [(PhoneRootViewController *)self detailsViewController];
    v3 = [v8 presentedViewController];
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      faceTimeRegistrationViewIsShowing = self->_faceTimeRegistrationViewIsShowing;

      if (faceTimeRegistrationViewIsShowing)
      {
        return;
      }

      v6 = [(PhoneRootViewController *)self detailsViewController];
      v7 = [v6 isViewLoaded];

      if (!v7)
      {
        return;
      }

      v8 = [(PhoneRootViewController *)self detailsViewController];
      v4 = [v8 view];
      [v4 setAlpha:1.0];
    }
  }
}

- (void)hideDetailsViewController
{
  if ([UIApp userInterfaceStyle] == 1)
  {
    v4 = [(PhoneRootViewController *)self detailsViewController];
    v3 = [v4 view];
    [v3 setAlpha:0.0];
  }
}

- (void)ensureBaseViewControllerIsShowing
{
  if (!-[PhoneRootViewController needsSplitView](self, "needsSplitView") && ([UIApp alwaysShowLocalVideo] & 1) == 0)
  {
    v6 = [(PhoneRootViewController *)self view];
    v3 = [(PhoneRootViewController *)self contentView];
    v4 = [(PhoneRootViewController *)self baseViewController];
    [v4 resetViewController];

    v5 = [v3 superview];

    if (v5 != v6)
    {
      [(PhoneRootViewController *)self _ensureProperPositionForContentView];
      [v6 addSubview:v3];
    }
  }
}

- (void)displayUIAnimated:(BOOL)a3
{
  v3 = a3;
  if (![UIApp alwaysShowLocalVideo] || (+[UIApplication shouldMakeUIForDefaultPNG](UIApplication, "shouldMakeUIForDefaultPNG") & 1) != 0 || -[PhoneRootViewController shouldHideSelfBlurView](self, "shouldHideSelfBlurView"))
  {
    goto LABEL_15;
  }

  v5 = [(PhoneRootViewController *)self localVideoViewController];
  if (![(PhoneRootViewController *)self needsSplitView])
  {
    v6 = [(PhoneRootViewController *)self view];
    v13 = [v5 view];
    v14 = *&CGAffineTransformIdentity.c;
    *buf = *&CGAffineTransformIdentity.a;
    v79 = v14;
    v80 = *&CGAffineTransformIdentity.tx;
    [v13 setTransform:buf];

    v15 = [v5 view];
    [v15 setAlpha:1.0];

    v10 = [v5 view];
    v16 = [v10 superview];

    if (v16 != v6)
    {
      [v5 viewWillAppear:1];
      [v6 insertSubview:v10 atIndex:0];
      [v5 viewDidAppear:1];
    }

    [v6 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = v21 * 0.5;
    v26 = v23 * 0.5;
    v27 = [v5 view];
    [v27 setBounds:{v18, v20, v22, v24}];

    v28 = [v5 view];
    [v28 setCenter:{v25, v26}];

    v11 = [v5 view];
    [v11 setAutoresizingMask:18];
    goto LABEL_10;
  }

  if (!self->_detailsViewController)
  {
    v6 = [[UISplitViewController alloc] initWithStyle:1];
    [v6 setPrimaryBackgroundStyle:2];
    [v6 setPresentsWithGesture:0];
    [v6 setDisplayModeButtonVisibility:1];
    [v6 setPreferredDisplayMode:2];
    [v6 setViewController:v5 forColumn:2];
    v7 = objc_opt_new();
    faceTimeContainerViewController = self->_faceTimeContainerViewController;
    self->_faceTimeContainerViewController = v7;
    v9 = v7;

    objc_storeStrong(&self->_detailsViewController, self->_faceTimeContainerViewController);
    [v6 setViewController:v9 forColumn:0];

    v10 = [(PhoneRootViewController *)self view];
    [(PhoneRootViewController *)self addChildViewController:v6];
    v11 = [v6 view];
    [v10 insertSubview:v11 atIndex:0];
    [v10 bounds];
    [v11 setFrame:?];
    height = CGSizeZero.height;
    [(PhoneRootViewController *)self _contentViewWidthForApplicationBoundsSize:CGSizeZero.width, height];
    [v6 setMinimumPrimaryColumnWidth:?];
    [(PhoneRootViewController *)self _contentViewWidthForApplicationBoundsSize:CGSizeZero.width, height];
    [v6 setMaximumPrimaryColumnWidth:?];
    [v6 setMinimumSecondaryColumnWidth:0.0];
    [v6 didMoveToParentViewController:self];
    [(PhoneRootViewController *)self setSplitViewController:v6];
LABEL_10:
  }

  v29 = objc_opt_new();
  v30 = [v29 compose];

  v73[1] = 3221225472;
  v73[0] = _NSConcreteStackBlock;
  v73[2] = sub_1000393EC;
  v73[3] = &unk_10010B6A8;
  if (v3)
  {
    v31 = 0.300000012;
  }

  else
  {
    v31 = 0.0;
  }

  v77 = v3;
  v74 = v5;
  v75 = self;
  v76 = v30;
  v32 = v30;
  v33 = v5;
  [UIView animateWithDuration:v73 animations:v31];

LABEL_15:
  if ([UIApp tabBarCanSlide])
  {
    [(PhoneRootViewController *)self showContentViewAnimated:0 completionBlock:0];
    v34 = sub_100003B9C();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v35 = "Showing contents view of PhoneRootViewController.";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 2u);
    }
  }

  else
  {
    v34 = sub_100003B9C();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v35 = "Skipping showing contents view of PhoneRootViewController.";
      goto LABEL_20;
    }
  }

  v36 = [(PhoneRootViewController *)self isIPad];
  if ([(PhoneRootViewController *)self isFaceTimeLaunchPageEnabled]&& v36)
  {
    v37 = [(PhoneRootViewController *)self buttonViewController];
    v38 = [(PhoneRootViewController *)self view];
    v39 = [(UIViewController *)self->_buttonViewController view];
    v40 = [v39 superview];

    if (v40 != v38)
    {
      +[UIView disableAnimation];
      v41 = [(UIViewController *)self->_buttonViewController view];
      [v38 addSubview:v41];

      +[UIView enableAnimation];
      v71 = [(UIViewController *)self->_buttonViewController view];
      v69 = [v71 topAnchor];
      v42 = [v38 safeAreaLayoutGuide];
      v43 = [v42 topAnchor];
      v44 = [v69 constraintEqualToAnchor:v43];
      v82[0] = v44;
      v45 = [(UIViewController *)self->_buttonViewController view];
      v46 = [v45 trailingAnchor];
      v47 = [v38 trailingAnchor];
      [v46 constraintEqualToAnchor:v47 constant:-10.0];
      v49 = v48 = v38;
      v82[1] = v49;
      v50 = [NSArray arrayWithObjects:v82 count:2];
      [NSLayoutConstraint activateConstraints:v50];

      v38 = v48;
    }

    v51 = [(PhoneRootViewController *)self dimmingView];
    if ([UIApp alwaysShowLocalVideo])
    {
      v52 = [(PHLocalVideoViewController *)self->_localVideoViewController view];
      v72 = v38;
      [v52 addSubview:self->_dimmingView];

      v68 = [(UIView *)self->_dimmingView topAnchor];
      v70 = [(PHLocalVideoViewController *)self->_localVideoViewController view];
      v67 = [v70 topAnchor];
      v66 = [v68 constraintEqualToAnchor:v67];
      v81[0] = v66;
      v64 = [(UIView *)self->_dimmingView bottomAnchor];
      v65 = [(PHLocalVideoViewController *)self->_localVideoViewController view];
      v63 = [v65 bottomAnchor];
      v53 = [v64 constraintEqualToAnchor:v63];
      v81[1] = v53;
      v54 = [(UIView *)self->_dimmingView leadingAnchor];
      v55 = [(PHLocalVideoViewController *)self->_localVideoViewController view];
      v56 = [v55 leadingAnchor];
      v57 = [v54 constraintEqualToAnchor:v56];
      v81[2] = v57;
      v58 = [(UIView *)self->_dimmingView trailingAnchor];
      v59 = [(PHLocalVideoViewController *)self->_localVideoViewController view];
      v60 = [v59 trailingAnchor];
      v61 = [v58 constraintEqualToAnchor:v60];
      v81[3] = v61;
      v62 = [NSArray arrayWithObjects:v81 count:4];
      [NSLayoutConstraint activateConstraints:v62];

      v38 = v72;
    }
  }
}

- (void)createFaceTimeFirstRunViewIfNeeded
{
  if (+[PHRegistrationViewController shouldShowRegistration])
  {
    if (!self->_registrationController)
    {
      v3 = +[IMDaemonController sharedInstance];
      [v3 addListenerID:@"com.apple.FaceTime" capabilities:kFZListenerCapAccounts];

      v4 = +[IMDaemonController sharedInstance];
      [v4 blockUntilConnected];

      objc_initWeak(&location, self);
      v5 = objc_alloc_init(PHRegistrationViewController);
      registrationController = self->_registrationController;
      self->_registrationController = v5;

      v7 = self->_registrationController;
      v9 = _NSConcreteStackBlock;
      v10 = 3221225472;
      v11 = sub_1000395BC;
      v12 = &unk_10010B6F8;
      objc_copyWeak(&v13, &location);
      [(PHRegistrationViewController *)v7 setCompletionBlock:&v9];
      v8 = [NSNotificationCenter defaultCenter:v9];
      [v8 addObserver:self selector:"_stausBarDidChangeFrame:" name:UIApplicationDidChangeStatusBarFrameNotification object:0];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_constrainRegistrationView
{
  if ([(PhoneRootViewController *)self needsSplitView])
  {
    v13 = [(PhoneRootViewController *)self splitViewController];
    [v13 setViewController:self->_registrationController forColumn:0];
  }

  else
  {
    v13 = [(PHRegistrationViewController *)self->_registrationController view];
    v3 = [(PhoneRootViewController *)self contentView];
    if (v13)
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      v5 = [v13 superview];

      if (v5 != v3)
      {
        [v3 addSubview:v13];
      }

      v6 = +[UIApplication sharedApplication];
      [v6 statusBarFrame];
      v8 = v7;

      v9 = [NSLayoutConstraint constraintWithItem:v13 attribute:7 relatedBy:0 toItem:v3 attribute:7 multiplier:1.0 constant:0.0];
      [v3 addConstraint:v9];

      v10 = [NSLayoutConstraint constraintWithItem:v13 attribute:8 relatedBy:0 toItem:v3 attribute:8 multiplier:1.0 constant:-v8];
      [v3 addConstraint:v10];

      v11 = [NSLayoutConstraint constraintWithItem:v13 attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
      [v3 addConstraint:v11];

      v12 = [NSLayoutConstraint constraintWithItem:v13 attribute:10 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:v8];
      [v3 addConstraint:v12];

      [(FTRecentsContainerViewControllerProtocol *)self->_faceTimeContainerViewController hideContent];
    }
  }
}

- (void)showScreenTimeShieldForRequest:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v5 = self;
  sub_1000661CC(a3);

  swift_unknownObjectRelease();
}

- (void)lockoutViewControllerDidFinishDismissing:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self;
  sub_1000669B8(1);
}

- (id)makeViewControllerWithIsFrontFacingOrExternal:(id)a3 updateVideoLayers:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = _Block_copy(a3);
  v7 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  *(swift_allocObject() + 16) = v7;
  v8 = objc_allocWithZone(type metadata accessor for ButtonsStackViewController());
  v9 = ButtonsStackViewController.init(isFrontFacingOrExternal:updateVideoLayers:)();

  return v9;
}

- (id)makeDimmingView
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_100099FD8();

  return v2;
}

@end