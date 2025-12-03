@interface PhoneRootViewController
- (BOOL)isFaceTimeLaunchPageEnabled;
- (BOOL)isIPad;
- (BOOL)needsSplitView;
- (BOOL)sideBarShouldBeFloating;
- (PHLocalVideoViewController)localVideoViewController;
- (UIView)contentView;
- (double)_contentViewWidthForApplicationBoundsSize:(CGSize)size;
- (id)_childViewControllerForWhitePointAdaptivityStyle;
- (id)buttonViewController;
- (id)dimmingView;
- (id)makeDimmingView;
- (id)makeViewControllerWithIsFrontFacingOrExternal:(id)external updateVideoLayers:(id)layers;
- (void)_constrainRegistrationView;
- (void)_destroyFirstRunController;
- (void)_ensureProperPositionForContentView;
- (void)_getRotationContentSettings:(id *)settings;
- (void)createFaceTimeFirstRunViewIfNeeded;
- (void)displayUIAnimated:(BOOL)animated;
- (void)ensureBaseViewControllerIsShowing;
- (void)handleApplicationWillEnterForegroundNotification:(id)notification;
- (void)handleOrientationNotification:(id)notification;
- (void)hideContentViewAnimated:(BOOL)animated completionBlock:(id)block;
- (void)hideDetailsViewController;
- (void)hideVideoConferenceBackgroundViewAnimated:(BOOL)animated;
- (void)loadView;
- (void)lockoutViewControllerDidFinishDismissing:(id)dismissing;
- (void)setContentViewHiddenPosition;
- (void)setContentViewNormalPosition;
- (void)setupContentViewFullSize;
- (void)setupContentViewSidebar;
- (void)showContentViewAnimated:(BOOL)animated completionBlock:(id)block;
- (void)showDetailsViewController;
- (void)showFaceTimeFirstRunViewIfNeeded;
- (void)showScreenTimeShieldForRequest:(id)request;
- (void)showVideoConferenceBackgroundViewAnimated:(BOOL)animated;
- (void)startPreviewIfNeeded;
- (void)updateVideoViewControllerWithOrientationMonitor:(id)monitor;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

    localVideoViewController = [(PhoneRootViewController *)self localVideoViewController];
    [localVideoViewController startPreview];
  }
}

- (id)_childViewControllerForWhitePointAdaptivityStyle
{
  if ([UIApp alwaysShowLocalVideo])
  {
    localVideoViewController = [(PhoneRootViewController *)self localVideoViewController];
  }

  else
  {
    localVideoViewController = 0;
  }

  return localVideoViewController;
}

- (BOOL)isFaceTimeLaunchPageEnabled
{
  v2 = +[CNKFeatures sharedInstance];
  isFaceTimeLaunchPageEnabled = [v2 isFaceTimeLaunchPageEnabled];

  return isFaceTimeLaunchPageEnabled;
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
          captureGroup = [(_UIVisualEffectBackdropView *)self->_backdropView captureGroup];
          [captureGroup setGroupName:@"RootControllerBackgroundBackdrop"];
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
          captureGroup2 = [(_UIVisualEffectBackdropView *)self->_backdropView captureGroup];
          groupName = [captureGroup2 groupName];
          [(UIVisualEffectView *)self->_backgroundBlurView _setGroupName:groupName];

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
        view = [(UIViewController *)self->_detailsViewController view];
      }

      else
      {
        baseViewController = [(PhoneRootViewController *)self baseViewController];
        view = [baseViewController view];
      }

      tabBarFillsScreen = [UIApp tabBarFillsScreen];
      [(UIView *)self->_contentView bounds];
      v23 = v22;
      if (tabBarFillsScreen)
      {
        [view setFrame:?];
      }

      else
      {
        [(UIView *)self->_contentView bounds];
        [view setBounds:{0.0, 0.0, v23}];
        [(UIView *)self->_contentView bounds];
        MaxX = CGRectGetMaxX(v33);
        [view bounds];
        v26 = MaxX - floor(v25 * 0.5);
        [(UIView *)self->_contentView bounds];
        [view setCenter:{v26, floor(v27 * 0.5)}];
      }

      [view setAutoresizingMask:18];
      detailsViewController = [(PhoneRootViewController *)self detailsViewController];

      if (detailsViewController)
      {
        detailsViewController2 = [(PhoneRootViewController *)self detailsViewController];
        [(PhoneRootViewController *)self addChildViewController:detailsViewController2];

        [(UIView *)self->_contentView addSubview:view];
        detailsViewController3 = [(PhoneRootViewController *)self detailsViewController];
        [detailsViewController3 didMoveToParentViewController:self];
      }

      else
      {
        [(UIView *)self->_contentView addSubview:view];
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
  tabBarFillsScreen = [UIApp tabBarFillsScreen];
  view = [(PhoneRootViewController *)self view];
  [view bounds];
  v9 = v7;
  v10 = v8;
  if (tabBarFillsScreen)
  {
    x = v5;
    y = v6;

    view2 = [(PhoneRootViewController *)self view];
    [view2 center];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    [(PhoneRootViewController *)self _contentViewWidthForApplicationBoundsSize:v7, v8];
    v9 = v18;

    view3 = [(PhoneRootViewController *)self view];
    [view3 bounds];
    v10 = v20;

    if ([UIApp userInterfaceLayoutDirection])
    {
      view4 = [(PhoneRootViewController *)self view];
      [view4 bounds];
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

    view2 = [(PhoneRootViewController *)self view];
    [view2 bounds];
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
  isFaceTimeLaunchPageEnabled = [v3 isFaceTimeLaunchPageEnabled];

  if (!isFaceTimeLaunchPageEnabled)
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
      view = [(PHRegistrationViewController *)self->_registrationController view];
      contentView = [(PhoneRootViewController *)self contentView];
      if (!self->_faceTimeRegistrationViewIsShowing)
      {
        [(PhoneRootViewController *)self hideDetailsViewController];
        if (![(PhoneRootViewController *)self needsSplitView])
        {
          [contentView bounds];
          [view setFrame:?];
          [view setAutoresizingMask:{objc_msgSend(contentView, "autoresizingMask")}];
          [view setTranslatesAutoresizingMaskIntoConstraints:0];
        }

        detailsViewController = self->_detailsViewController;
        if (detailsViewController)
        {
          presentedViewController = [(UIViewController *)detailsViewController presentedViewController];

          if (presentedViewController)
          {
            [(UIViewController *)self->_detailsViewController dismissViewControllerAnimated:0 completion:0];
          }
        }

        [(PhoneRootViewController *)self _constrainRegistrationView];
        self->_faceTimeRegistrationViewIsShowing = 1;
      }

      [contentView bringSubviewToFront:view];
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
  faceTimeContainerViewController = [(PhoneRootViewController *)self faceTimeContainerViewController];
  hasRecentsListViewController = [faceTimeContainerViewController hasRecentsListViewController];

  if (hasRecentsListViewController)
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
    compose = [v9 compose];
    [compose setOrientationEventsEnabled:0];

    if ([(PHRegistrationViewController *)self->_registrationController isViewLoaded])
    {
      view = [(PHRegistrationViewController *)self->_registrationController view];
      [view removeFromSuperview];
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
    contentView = [(PhoneRootViewController *)self contentView];
    if ([UIApp contentViewAnimationsFadeInsteadOfMove])
    {
      [contentView setAlpha:1.0];
    }

    else
    {
      v4 = *&CGAffineTransformIdentity.c;
      v5[0] = *&CGAffineTransformIdentity.a;
      v5[1] = v4;
      v5[2] = *&CGAffineTransformIdentity.tx;
      [contentView setTransform:v5];
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
      makeDimmingView = [(PhoneRootViewController *)self makeDimmingView];
      v5 = self->_dimmingView;
      self->_dimmingView = makeDimmingView;

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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003776C;
  v9[3] = &unk_10010B630;
  v9[4] = self;
  coordinatorCopy = coordinator;
  [coordinatorCopy animateAlongsideTransition:v9 completion:0];
  v8.receiver = self;
  v8.super_class = PhoneRootViewController;
  [(PhoneRootViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)_getRotationContentSettings:(id *)settings
{
  v7.receiver = self;
  v7.super_class = PhoneRootViewController;
  [(PhoneRootViewController *)&v7 _getRotationContentSettings:?];
  baseViewController = [(PhoneRootViewController *)self baseViewController];
  shouldDisableEdgeClip = [baseViewController shouldDisableEdgeClip];

  if (shouldDisableEdgeClip)
  {
    settings->var6 = 0;
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if ([UIApp alwaysShowLocalVideo])
  {
    v5 = sub_100003B9C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopping preview via PhoneRootViewController viewDidDisappear", buf, 2u);
    }

    localVideoViewController = [(PhoneRootViewController *)self localVideoViewController];
    [localVideoViewController stopPreview];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self];

  v8.receiver = self;
  v8.super_class = PhoneRootViewController;
  [(PhoneRootViewController *)&v8 viewDidDisappear:disappearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = PhoneRootViewController;
  [(PhoneRootViewController *)&v3 viewWillDisappear:disappear];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PhoneRootViewController;
  [(PhoneRootViewController *)&v4 viewDidAppear:appear];
  [(PhoneRootViewController *)self setNeedsStatusBarAppearanceUpdate];
  [(PhoneRootViewController *)self startPreviewIfNeeded];
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = PhoneRootViewController;
  [(PhoneRootViewController *)&v12 viewWillAppear:appear];
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
    compose = [v9 compose];
    [compose setOrientationEventsEnabled:1];
  }
}

- (void)handleApplicationWillEnterForegroundNotification:(id)notification
{
  v4 = sub_100003B9C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PhoneRootViewController handleApplicationWillEnterForegroundNotification", v5, 2u);
  }

  [(PhoneRootViewController *)self showFaceTimeFirstRunViewIfNeeded];
}

- (void)handleOrientationNotification:(id)notification
{
  view = [(PhoneRootViewController *)self view];
  _screen = [view _screen];

  v6 = +[UIScreen mainScreen];
  if ([UIApp alwaysShowLocalVideo])
  {
    v7 = _screen == v6;
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
    compose = [v9 compose];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100037CEC;
    v12[3] = &unk_10010B008;
    v12[4] = self;
    v13 = compose;
    v11 = compose;
    [UIView animateWithDuration:v12 animations:0.300000012];
  }
}

- (void)updateVideoViewControllerWithOrientationMonitor:(id)monitor
{
  monitorCopy = monitor;
  if ([UIApp alwaysShowLocalVideo])
  {
    view = [(PhoneRootViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];

    if (windowScene)
    {
      v8 = [monitorCopy makeInterfaceOrientationFrom:objc_msgSend(monitorCopy whenFailing:{"lastValidInterfaceOrientation"), objc_msgSend(windowScene, "interfaceOrientation")}];
      localVideoViewController = [(PhoneRootViewController *)self localVideoViewController];
      [localVideoViewController updateViewControllerForOrientation:v8];
    }

    else
    {
      localVideoViewController = sub_100003B9C();
      if (os_log_type_enabled(localVideoViewController, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, localVideoViewController, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to orient video view controller because there's no window scene to determine a valid fallback orientation", v10, 2u);
      }
    }
  }
}

- (double)_contentViewWidthForApplicationBoundsSize:(CGSize)size
{
  if ([(PhoneRootViewController *)self isFaceTimeLaunchPageEnabled:size.width])
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
      layer = [(UIView *)self->_contentView layer];
      [layer setCornerRadius:10.0];

      layer2 = [(UIView *)self->_contentView layer];
      [layer2 setMasksToBounds:1];
    }

    if (([UIApp tabBarFillsScreen] & 1) == 0)
    {
      [(PhoneRootViewController *)self setContentViewHiddenPosition];
      contentView = self->_contentView;

      [(UIView *)contentView setHidden:1];
    }
  }
}

- (void)showContentViewAnimated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  blockCopy = block;
  if (([UIApp tabBarCanSlide] & 1) == 0)
  {
    sub_1000C4DEC(a2, self);
  }

  contentView = [(PhoneRootViewController *)self contentView];
  [contentView setHidden:0];
  view = [(PhoneRootViewController *)self view];
  superview = [contentView superview];

  if (superview != view)
  {
    +[UIView disableAnimation];
    [(PhoneRootViewController *)self _ensureProperPositionForContentView];
    [view addSubview:contentView];
    +[UIView enableAnimation];
  }

  [(PhoneRootViewController *)self showFaceTimeFirstRunViewIfNeeded];
  view2 = [(PhoneRootViewController *)self view];
  window = [view2 window];
  _rootSheetPresentationController = [window _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000381B0;
  v20[3] = &unk_10010B658;
  v21 = contentView;
  v22 = blockCopy;
  v14 = blockCopy;
  v15 = contentView;
  v16 = objc_retainBlock(v20);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10003822C;
  v19[3] = &unk_10010AD48;
  v19[4] = self;
  v17 = objc_retainBlock(v19);
  if (animatedCopy)
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
    contentView = [(PhoneRootViewController *)self contentView];
    if ([UIApp contentViewAnimationsFadeInsteadOfMove])
    {
      [contentView setAlpha:0.0];
    }

    else
    {
      userInterfaceLayoutDirection = [UIApp userInterfaceLayoutDirection];
      contentViewOffscreenEdge = [UIApp contentViewOffscreenEdge];
      [contentView bounds];
      if (contentViewOffscreenEdge == 1)
      {
        Height = CGRectGetHeight(*&v6);
        v11 = Height;
      }

      else
      {
        Height = CGRectGetWidth(*&v6);
        v11 = 0.0;
      }

      if (userInterfaceLayoutDirection != 1)
      {
        Height = -Height;
      }

      memset(&v13.c, 0, 32);
      if (contentViewOffscreenEdge == 1)
      {
        Height = 0.0;
      }

      *&v13.a = 0uLL;
      CGAffineTransformMakeTranslation(&v13, Height, v11);
      v12 = v13;
      [contentView setTransform:&v12];
    }
  }
}

- (void)hideContentViewAnimated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  blockCopy = block;
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
    v13 = blockCopy;
    v8 = objc_retainBlock(v12);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003852C;
    v11[3] = &unk_10010AD48;
    v11[4] = self;
    v9 = objc_retainBlock(v11);
    v10 = 0.300000012;
    if (!animatedCopy)
    {
      v10 = 0.0;
    }

    [UIView animateWithDuration:0 delay:v9 options:v8 animations:v10 completion:?];
  }
}

- (void)showVideoConferenceBackgroundViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([UIApp alwaysShowLocalVideo])
  {
    localVideoViewController = [(PhoneRootViewController *)self localVideoViewController];
    view = [localVideoViewController view];

    view2 = [(PhoneRootViewController *)self view];
    [view2 bounds];
    [view setFrame:?];

    view3 = [(PhoneRootViewController *)self view];
    contentView = [(PhoneRootViewController *)self contentView];
    [view3 insertSubview:view below:contentView];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100038704;
    v16[3] = &unk_10010B4E8;
    v16[4] = self;
    v17 = animatedCopy;
    v10 = objc_retainBlock(v16);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100038720;
    v14[3] = &unk_10010AD48;
    v15 = view;
    v11 = view;
    v12 = objc_retainBlock(v14);
    if (animatedCopy)
    {
      v13 = 0.300000012;
    }

    else
    {
      v13 = 0.0;
    }

    [(PHLocalVideoViewController *)self->_localVideoViewController viewWillAppear:animatedCopy];
    [UIView animateWithDuration:v12 animations:v10 completion:v13];
  }
}

- (void)hideVideoConferenceBackgroundViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([UIApp alwaysShowLocalVideo] && -[PHLocalVideoViewController isViewLoaded](self->_localVideoViewController, "isViewLoaded"))
  {
    [(PHLocalVideoViewController *)self->_localVideoViewController view];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000388AC;
    v5 = v15[3] = &unk_10010B680;
    v16 = v5;
    selfCopy = self;
    v18 = animatedCopy;
    v6 = objc_retainBlock(v15);
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000388F8;
    v13 = &unk_10010AD48;
    v14 = v5;
    v7 = v5;
    v8 = objc_retainBlock(&v10);
    if (animatedCopy)
    {
      v9 = 0.300000012;
    }

    else
    {
      v9 = 0.0;
    }

    [(PHLocalVideoViewController *)self->_localVideoViewController viewWillDisappear:animatedCopy, v10, v11, v12, v13];
    [UIView animateWithDuration:v8 animations:v6 completion:v9];
  }
}

- (void)showDetailsViewController
{
  if ([UIApp userInterfaceStyle] == 1)
  {
    detailsViewController = [(PhoneRootViewController *)self detailsViewController];
    presentedViewController = [detailsViewController presentedViewController];
    if (presentedViewController)
    {
      view = presentedViewController;
    }

    else
    {
      faceTimeRegistrationViewIsShowing = self->_faceTimeRegistrationViewIsShowing;

      if (faceTimeRegistrationViewIsShowing)
      {
        return;
      }

      detailsViewController2 = [(PhoneRootViewController *)self detailsViewController];
      isViewLoaded = [detailsViewController2 isViewLoaded];

      if (!isViewLoaded)
      {
        return;
      }

      detailsViewController = [(PhoneRootViewController *)self detailsViewController];
      view = [detailsViewController view];
      [view setAlpha:1.0];
    }
  }
}

- (void)hideDetailsViewController
{
  if ([UIApp userInterfaceStyle] == 1)
  {
    detailsViewController = [(PhoneRootViewController *)self detailsViewController];
    view = [detailsViewController view];
    [view setAlpha:0.0];
  }
}

- (void)ensureBaseViewControllerIsShowing
{
  if (!-[PhoneRootViewController needsSplitView](self, "needsSplitView") && ([UIApp alwaysShowLocalVideo] & 1) == 0)
  {
    view = [(PhoneRootViewController *)self view];
    contentView = [(PhoneRootViewController *)self contentView];
    baseViewController = [(PhoneRootViewController *)self baseViewController];
    [baseViewController resetViewController];

    superview = [contentView superview];

    if (superview != view)
    {
      [(PhoneRootViewController *)self _ensureProperPositionForContentView];
      [view addSubview:contentView];
    }
  }
}

- (void)displayUIAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![UIApp alwaysShowLocalVideo] || (+[UIApplication shouldMakeUIForDefaultPNG](UIApplication, "shouldMakeUIForDefaultPNG") & 1) != 0 || -[PhoneRootViewController shouldHideSelfBlurView](self, "shouldHideSelfBlurView"))
  {
    goto LABEL_15;
  }

  localVideoViewController = [(PhoneRootViewController *)self localVideoViewController];
  if (![(PhoneRootViewController *)self needsSplitView])
  {
    view = [(PhoneRootViewController *)self view];
    view2 = [localVideoViewController view];
    v14 = *&CGAffineTransformIdentity.c;
    *buf = *&CGAffineTransformIdentity.a;
    v79 = v14;
    v80 = *&CGAffineTransformIdentity.tx;
    [view2 setTransform:buf];

    view3 = [localVideoViewController view];
    [view3 setAlpha:1.0];

    view4 = [localVideoViewController view];
    superview = [view4 superview];

    if (superview != view)
    {
      [localVideoViewController viewWillAppear:1];
      [view insertSubview:view4 atIndex:0];
      [localVideoViewController viewDidAppear:1];
    }

    [view bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = v21 * 0.5;
    v26 = v23 * 0.5;
    view5 = [localVideoViewController view];
    [view5 setBounds:{v18, v20, v22, v24}];

    view6 = [localVideoViewController view];
    [view6 setCenter:{v25, v26}];

    view7 = [localVideoViewController view];
    [view7 setAutoresizingMask:18];
    goto LABEL_10;
  }

  if (!self->_detailsViewController)
  {
    view = [[UISplitViewController alloc] initWithStyle:1];
    [view setPrimaryBackgroundStyle:2];
    [view setPresentsWithGesture:0];
    [view setDisplayModeButtonVisibility:1];
    [view setPreferredDisplayMode:2];
    [view setViewController:localVideoViewController forColumn:2];
    v7 = objc_opt_new();
    faceTimeContainerViewController = self->_faceTimeContainerViewController;
    self->_faceTimeContainerViewController = v7;
    v9 = v7;

    objc_storeStrong(&self->_detailsViewController, self->_faceTimeContainerViewController);
    [view setViewController:v9 forColumn:0];

    view4 = [(PhoneRootViewController *)self view];
    [(PhoneRootViewController *)self addChildViewController:view];
    view7 = [view view];
    [view4 insertSubview:view7 atIndex:0];
    [view4 bounds];
    [view7 setFrame:?];
    height = CGSizeZero.height;
    [(PhoneRootViewController *)self _contentViewWidthForApplicationBoundsSize:CGSizeZero.width, height];
    [view setMinimumPrimaryColumnWidth:?];
    [(PhoneRootViewController *)self _contentViewWidthForApplicationBoundsSize:CGSizeZero.width, height];
    [view setMaximumPrimaryColumnWidth:?];
    [view setMinimumSecondaryColumnWidth:0.0];
    [view didMoveToParentViewController:self];
    [(PhoneRootViewController *)self setSplitViewController:view];
LABEL_10:
  }

  v29 = objc_opt_new();
  compose = [v29 compose];

  v73[1] = 3221225472;
  v73[0] = _NSConcreteStackBlock;
  v73[2] = sub_1000393EC;
  v73[3] = &unk_10010B6A8;
  if (animatedCopy)
  {
    v31 = 0.300000012;
  }

  else
  {
    v31 = 0.0;
  }

  v77 = animatedCopy;
  v74 = localVideoViewController;
  selfCopy = self;
  v76 = compose;
  v32 = compose;
  v33 = localVideoViewController;
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

  isIPad = [(PhoneRootViewController *)self isIPad];
  if ([(PhoneRootViewController *)self isFaceTimeLaunchPageEnabled]&& isIPad)
  {
    buttonViewController = [(PhoneRootViewController *)self buttonViewController];
    view8 = [(PhoneRootViewController *)self view];
    view9 = [(UIViewController *)self->_buttonViewController view];
    superview2 = [view9 superview];

    if (superview2 != view8)
    {
      +[UIView disableAnimation];
      view10 = [(UIViewController *)self->_buttonViewController view];
      [view8 addSubview:view10];

      +[UIView enableAnimation];
      view11 = [(UIViewController *)self->_buttonViewController view];
      topAnchor = [view11 topAnchor];
      safeAreaLayoutGuide = [view8 safeAreaLayoutGuide];
      topAnchor2 = [safeAreaLayoutGuide topAnchor];
      v44 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v82[0] = v44;
      view12 = [(UIViewController *)self->_buttonViewController view];
      trailingAnchor = [view12 trailingAnchor];
      trailingAnchor2 = [view8 trailingAnchor];
      [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
      v49 = v48 = view8;
      v82[1] = v49;
      v50 = [NSArray arrayWithObjects:v82 count:2];
      [NSLayoutConstraint activateConstraints:v50];

      view8 = v48;
    }

    dimmingView = [(PhoneRootViewController *)self dimmingView];
    if ([UIApp alwaysShowLocalVideo])
    {
      view13 = [(PHLocalVideoViewController *)self->_localVideoViewController view];
      v72 = view8;
      [view13 addSubview:self->_dimmingView];

      topAnchor3 = [(UIView *)self->_dimmingView topAnchor];
      view14 = [(PHLocalVideoViewController *)self->_localVideoViewController view];
      topAnchor4 = [view14 topAnchor];
      v66 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v81[0] = v66;
      bottomAnchor = [(UIView *)self->_dimmingView bottomAnchor];
      view15 = [(PHLocalVideoViewController *)self->_localVideoViewController view];
      bottomAnchor2 = [view15 bottomAnchor];
      v53 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v81[1] = v53;
      leadingAnchor = [(UIView *)self->_dimmingView leadingAnchor];
      view16 = [(PHLocalVideoViewController *)self->_localVideoViewController view];
      leadingAnchor2 = [view16 leadingAnchor];
      v57 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v81[2] = v57;
      trailingAnchor3 = [(UIView *)self->_dimmingView trailingAnchor];
      view17 = [(PHLocalVideoViewController *)self->_localVideoViewController view];
      trailingAnchor4 = [view17 trailingAnchor];
      v61 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v81[3] = v61;
      v62 = [NSArray arrayWithObjects:v81 count:4];
      [NSLayoutConstraint activateConstraints:v62];

      view8 = v72;
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
    splitViewController = [(PhoneRootViewController *)self splitViewController];
    [splitViewController setViewController:self->_registrationController forColumn:0];
  }

  else
  {
    splitViewController = [(PHRegistrationViewController *)self->_registrationController view];
    contentView = [(PhoneRootViewController *)self contentView];
    if (splitViewController)
    {
      v4 = contentView == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      superview = [splitViewController superview];

      if (superview != contentView)
      {
        [contentView addSubview:splitViewController];
      }

      v6 = +[UIApplication sharedApplication];
      [v6 statusBarFrame];
      v8 = v7;

      v9 = [NSLayoutConstraint constraintWithItem:splitViewController attribute:7 relatedBy:0 toItem:contentView attribute:7 multiplier:1.0 constant:0.0];
      [contentView addConstraint:v9];

      v10 = [NSLayoutConstraint constraintWithItem:splitViewController attribute:8 relatedBy:0 toItem:contentView attribute:8 multiplier:1.0 constant:-v8];
      [contentView addConstraint:v10];

      v11 = [NSLayoutConstraint constraintWithItem:splitViewController attribute:9 relatedBy:0 toItem:contentView attribute:9 multiplier:1.0 constant:0.0];
      [contentView addConstraint:v11];

      v12 = [NSLayoutConstraint constraintWithItem:splitViewController attribute:10 relatedBy:0 toItem:contentView attribute:10 multiplier:1.0 constant:v8];
      [contentView addConstraint:v12];

      [(FTRecentsContainerViewControllerProtocol *)self->_faceTimeContainerViewController hideContent];
    }
  }
}

- (void)showScreenTimeShieldForRequest:(id)request
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000661CC(request);

  swift_unknownObjectRelease();
}

- (void)lockoutViewControllerDidFinishDismissing:(id)dismissing
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_1000669B8(1);
}

- (id)makeViewControllerWithIsFrontFacingOrExternal:(id)external updateVideoLayers:(id)layers
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = _Block_copy(external);
  v7 = _Block_copy(layers);
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