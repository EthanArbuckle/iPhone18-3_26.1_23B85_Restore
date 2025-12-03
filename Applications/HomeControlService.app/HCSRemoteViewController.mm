@interface HCSRemoteViewController
- (id)authorizeIfLockedForViewController:(id)controller;
- (void)_layoutAnnounceViewController;
- (void)_layoutDashboardViewController;
- (void)_layoutDropInViewController;
- (void)_setupBackgroundViewWithBlurEffectStyle:(int64_t)style;
- (void)_updateNavigationView;
- (void)_updateRunningState:(BOOL)state;
- (void)configureHomeControlServiceWithContext:(id)context;
- (void)configureHomeControlServiceWithHomeUUID:(id)d;
- (void)dashboardNavigationView:(id)view didTapHomeAppButton:(id)button;
- (void)lockAuthenticationCompleted:(BOOL)completed;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HCSRemoteViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = HCSRemoteViewController;
  [(HCSRemoteViewController *)&v6 viewDidLoad];
  v3 = +[UIColor clearColor];
  view = [(HCSRemoteViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = +[HFExecutionEnvironment sharedInstance];
  [v5 executionEnvironmentDidEnterBackground];
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = HCSRemoteViewController;
  [(HCSRemoteViewController *)&v14 viewWillLayoutSubviews];
  dashboardViewController = [(HCSRemoteViewController *)self dashboardViewController];
  view = [dashboardViewController view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  gradientLayer = [(HCSRemoteViewController *)self gradientLayer];
  [gradientLayer setFrame:{v6, v8, v10, v12}];
}

- (void)_updateRunningState:(BOOL)state
{
  stateCopy = state;
  v4 = +[HFExecutionEnvironment sharedInstance];
  runningState = [v4 runningState];

  if (runningState != !stateCopy)
  {
    if (stateCopy)
    {
      v6 = +[HFCharacteristicNotificationManager sharedManager];
      [v6 enableNotificationsForSelectedHomeWithReason:HCSNotificationsEnabledReasonForeground];

      v8 = +[HFExecutionEnvironment sharedInstance];
      [v8 executionEnvironmentWillEnterForeground];
    }

    else
    {
      v7 = +[HFExecutionEnvironment sharedInstance];
      [v7 executionEnvironmentDidEnterBackground];

      v8 = +[HFCharacteristicNotificationManager sharedManager];
      [v8 disableNotificationsForSelectedHomeWithReason:HCSNotificationsEnabledReasonBackground];
    }
  }
}

- (void)configureHomeControlServiceWithHomeUUID:(id)d
{
  dCopy = d;
  v5 = [[HUHomeControlServiceContext alloc] initWithServiceType:0 homeIdentifier:dCopy roomIdentifier:0];

  [(HCSRemoteViewController *)self configureHomeControlServiceWithContext:v5];
}

- (void)configureHomeControlServiceWithContext:(id)context
{
  contextCopy = context;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    userInfo = [contextCopy userInfo];
    v10 = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = userInfo;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ Configure Home Control Service with userInfo: %@", &v10, 0x16u);
  }

  serviceContext = self->_serviceContext;
  self->_serviceContext = contextCopy;
  v8 = contextCopy;

  serviceType = [v8 serviceType];
  if (serviceType == 2)
  {
    [(HCSRemoteViewController *)self _layoutDropInViewController];
  }

  else if (serviceType == 1)
  {
    [(HCSRemoteViewController *)self _layoutAnnounceViewController];
  }

  else if (!serviceType)
  {
    [(HCSRemoteViewController *)self _layoutDashboardViewController];
  }
}

- (id)authorizeIfLockedForViewController:(id)controller
{
  v4 = objc_alloc_init(NAFuture);
  [(HCSRemoteViewController *)self setLockAuthFuture:v4];

  _remoteViewControllerProxy = [(HCSRemoteViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy authorizeIfLocked];

  return [(HCSRemoteViewController *)self lockAuthFuture];
}

- (void)lockAuthenticationCompleted:(BOOL)completed
{
  completedCopy = completed;
  lockAuthFuture = [(HCSRemoteViewController *)self lockAuthFuture];
  if (completedCopy)
  {
    v4 = NAEmptyResult();
    [lockAuthFuture finishWithResult:v4];
  }

  else
  {
    [lockAuthFuture cancel];
  }
}

- (void)dashboardNavigationView:(id)view didTapHomeAppButton:(id)button
{
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Launching Home app for Home Control Service %@", &v9, 0xCu);
  }

  v6 = [NSURL URLWithString:@"com.apple.home://"];
  v7 = +[HFOpenURLRouter sharedInstance];
  v8 = [v7 openSensitiveURL:v6];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  dashboardViewController = [(HCSRemoteViewController *)self dashboardViewController];
  if (![objectCopy isEqual:dashboardViewController])
  {

    goto LABEL_5;
  }

  v14 = [pathCopy isEqual:@"navigationItem.title"];

  if (!v14)
  {
LABEL_5:
    v15.receiver = self;
    v15.super_class = HCSRemoteViewController;
    [(HCSRemoteViewController *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_6;
  }

  [(HCSRemoteViewController *)self _updateNavigationView];
LABEL_6:
}

- (void)_setupBackgroundViewWithBlurEffectStyle:(int64_t)style
{
  v7 = [UIBlurEffect effectWithStyle:style];
  v4 = [[UIVisualEffectView alloc] initWithEffect:v7];
  view = [(HCSRemoteViewController *)self view];
  [view bounds];
  [v4 setFrame:?];

  [v4 setAutoresizingMask:18];
  view2 = [(HCSRemoteViewController *)self view];
  [view2 addSubview:v4];
}

- (void)_layoutDashboardViewController
{
  v3 = objc_opt_new();
  [(HCSRemoteViewController *)self setDashboardViewController:v3];

  dashboardViewController = [(HCSRemoteViewController *)self dashboardViewController];
  view = [dashboardViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  dashboardViewController2 = [(HCSRemoteViewController *)self dashboardViewController];
  view2 = [dashboardViewController2 view];
  [view2 setClipsToBounds:1];

  dashboardViewController3 = [(HCSRemoteViewController *)self dashboardViewController];
  collectionView = [dashboardViewController3 collectionView];
  layer = [collectionView layer];
  [layer setHitTestsAsOpaque:1];

  dashboardViewController4 = [(HCSRemoteViewController *)self dashboardViewController];
  collectionView2 = [dashboardViewController4 collectionView];
  [collectionView2 setContentInset:{16.0, 0.0, 0.0, 0.0}];

  dashboardViewController5 = [(HCSRemoteViewController *)self dashboardViewController];
  [dashboardViewController5 setLockAuthorizationDelegate:self];

  dashboardViewController6 = [(HCSRemoteViewController *)self dashboardViewController];
  [dashboardViewController6 setQuickControlPresentationDelegate:self];

  dashboardViewController7 = [(HCSRemoteViewController *)self dashboardViewController];
  [dashboardViewController7 beginAppearanceTransition:1 animated:0];

  dashboardViewController8 = [(HCSRemoteViewController *)self dashboardViewController];
  [(HCSRemoteViewController *)self addChildViewController:dashboardViewController8];

  view3 = [(HCSRemoteViewController *)self view];
  dashboardViewController9 = [(HCSRemoteViewController *)self dashboardViewController];
  view4 = [dashboardViewController9 view];
  [view3 addSubview:view4];

  dashboardViewController10 = [(HCSRemoteViewController *)self dashboardViewController];
  [dashboardViewController10 didMoveToParentViewController:self];

  dashboardViewController11 = [(HCSRemoteViewController *)self dashboardViewController];
  [dashboardViewController11 endAppearanceTransition];

  v22 = objc_opt_new();
  [(HCSRemoteViewController *)self setDashboardNavigationView:v22];

  dashboardNavigationView = [(HCSRemoteViewController *)self dashboardNavigationView];
  [dashboardNavigationView setTranslatesAutoresizingMaskIntoConstraints:0];

  dashboardNavigationView2 = [(HCSRemoteViewController *)self dashboardNavigationView];
  [dashboardNavigationView2 setDelegate:self];

  v25 = HULocalizedString();
  dashboardNavigationView3 = [(HCSRemoteViewController *)self dashboardNavigationView];
  [dashboardNavigationView3 setHeaderTitle:v25];

  dashboardNavigationView4 = [(HCSRemoteViewController *)self dashboardNavigationView];
  [dashboardNavigationView4 setHasTitleAction:0];

  view5 = [(HCSRemoteViewController *)self view];
  dashboardNavigationView5 = [(HCSRemoteViewController *)self dashboardNavigationView];
  dashboardViewController12 = [(HCSRemoteViewController *)self dashboardViewController];
  view6 = [dashboardViewController12 view];
  [view5 insertSubview:dashboardNavigationView5 aboveSubview:view6];

  if (+[HFUtilities isAnIPad])
  {
    v32 = +[CAGradientLayer layer];
    [(HCSRemoteViewController *)self setGradientLayer:v32];

    dashboardViewController13 = [(HCSRemoteViewController *)self dashboardViewController];
    view7 = [dashboardViewController13 view];
    [view7 bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    gradientLayer = [(HCSRemoteViewController *)self gradientLayer];
    [gradientLayer setFrame:{v36, v38, v40, v42}];

    gradientLayer2 = [(HCSRemoteViewController *)self gradientLayer];
    [gradientLayer2 setLocations:&off_10000C448];

    v45 = +[UIColor blackColor];
    v98[0] = [v45 CGColor];
    v46 = +[UIColor clearColor];
    v98[1] = [v46 CGColor];
    v47 = [NSArray arrayWithObjects:v98 count:2];
    gradientLayer3 = [(HCSRemoteViewController *)self gradientLayer];
    [gradientLayer3 setColors:v47];

    gradientLayer4 = [(HCSRemoteViewController *)self gradientLayer];
    dashboardViewController14 = [(HCSRemoteViewController *)self dashboardViewController];
    view8 = [dashboardViewController14 view];
    layer2 = [view8 layer];
    [layer2 setMask:gradientLayer4];
  }

  dashboardNavigationView6 = [(HCSRemoteViewController *)self dashboardNavigationView];
  leadingAnchor = [dashboardNavigationView6 leadingAnchor];
  view9 = [(HCSRemoteViewController *)self view];
  layoutMarginsGuide = [view9 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v91 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v97[0] = v91;
  dashboardNavigationView7 = [(HCSRemoteViewController *)self dashboardNavigationView];
  trailingAnchor = [dashboardNavigationView7 trailingAnchor];
  view10 = [(HCSRemoteViewController *)self view];
  layoutMarginsGuide2 = [view10 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v85 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v97[1] = v85;
  dashboardNavigationView8 = [(HCSRemoteViewController *)self dashboardNavigationView];
  topAnchor = [dashboardNavigationView8 topAnchor];
  view11 = [(HCSRemoteViewController *)self view];
  layoutMarginsGuide3 = [view11 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v79 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:45.0];
  v97[2] = v79;
  dashboardViewController15 = [(HCSRemoteViewController *)self dashboardViewController];
  view12 = [dashboardViewController15 view];
  topAnchor3 = [view12 topAnchor];
  dashboardNavigationView9 = [(HCSRemoteViewController *)self dashboardNavigationView];
  bottomAnchor = [dashboardNavigationView9 bottomAnchor];
  v73 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v97[3] = v73;
  dashboardViewController16 = [(HCSRemoteViewController *)self dashboardViewController];
  view13 = [dashboardViewController16 view];
  bottomAnchor2 = [view13 bottomAnchor];
  view14 = [(HCSRemoteViewController *)self view];
  bottomAnchor3 = [view14 bottomAnchor];
  v67 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v97[4] = v67;
  dashboardViewController17 = [(HCSRemoteViewController *)self dashboardViewController];
  view15 = [dashboardViewController17 view];
  leadingAnchor3 = [view15 leadingAnchor];
  view16 = [(HCSRemoteViewController *)self view];
  leadingAnchor4 = [view16 leadingAnchor];
  v54 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v97[5] = v54;
  dashboardViewController18 = [(HCSRemoteViewController *)self dashboardViewController];
  view17 = [dashboardViewController18 view];
  trailingAnchor3 = [view17 trailingAnchor];
  view18 = [(HCSRemoteViewController *)self view];
  trailingAnchor4 = [view18 trailingAnchor];
  v60 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v97[6] = v60;
  v61 = [NSArray arrayWithObjects:v97 count:7];
  [NSLayoutConstraint activateConstraints:v61];

  [(HCSRemoteViewController *)self _updateNavigationView];
  dashboardViewController19 = [(HCSRemoteViewController *)self dashboardViewController];
  [dashboardViewController19 addObserver:self forKeyPath:@"navigationItem.title" options:0 context:0];
}

- (void)_updateNavigationView
{
  dashboardViewController = [(HCSRemoteViewController *)self dashboardViewController];
  navigationItem = [dashboardViewController navigationItem];
  title = [navigationItem title];
  dashboardNavigationView = [(HCSRemoteViewController *)self dashboardNavigationView];
  [dashboardNavigationView setTitle:title];
}

- (void)_layoutAnnounceViewController
{
  [(HCSRemoteViewController *)self _setupBackgroundViewWithBlurEffectStyle:6];
  v3 = [HUAnnounceRecordingViewController alloc];
  serviceContext = [(HCSRemoteViewController *)self serviceContext];
  v5 = [v3 initWithServiceContext:serviceContext blurEffectStyle:6];
  [(HCSRemoteViewController *)self setAnnounceRecordingViewController:v5];

  announceRecordingViewController = [(HCSRemoteViewController *)self announceRecordingViewController];
  [announceRecordingViewController beginAppearanceTransition:1 animated:0];

  announceRecordingViewController2 = [(HCSRemoteViewController *)self announceRecordingViewController];
  [(HCSRemoteViewController *)self addChildViewController:announceRecordingViewController2];

  view = [(HCSRemoteViewController *)self view];
  announceRecordingViewController3 = [(HCSRemoteViewController *)self announceRecordingViewController];
  view2 = [announceRecordingViewController3 view];
  [view addSubview:view2];

  view3 = [(HCSRemoteViewController *)self view];
  [view3 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  announceRecordingViewController4 = [(HCSRemoteViewController *)self announceRecordingViewController];
  view4 = [announceRecordingViewController4 view];
  [view4 setFrame:{v13, v15, v17, v19}];

  announceRecordingViewController5 = [(HCSRemoteViewController *)self announceRecordingViewController];
  [announceRecordingViewController5 didMoveToParentViewController:self];

  announceRecordingViewController6 = [(HCSRemoteViewController *)self announceRecordingViewController];
  [announceRecordingViewController6 endAppearanceTransition];
}

- (void)_layoutDropInViewController
{
  [(HCSRemoteViewController *)self _setupBackgroundViewWithBlurEffectStyle:6];
  v3 = [HUDropInViewController alloc];
  serviceContext = [(HCSRemoteViewController *)self serviceContext];
  v5 = [v3 initWithServiceContext:serviceContext blurEffectStyle:6];
  [(HCSRemoteViewController *)self setDropInViewController:v5];

  dropInViewController = [(HCSRemoteViewController *)self dropInViewController];
  hu_preloadContent = [dropInViewController hu_preloadContent];

  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000028F4;
  v9[3] = &unk_10000C270;
  objc_copyWeak(&v10, &location);
  v8 = [hu_preloadContent addSuccessBlock:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

@end