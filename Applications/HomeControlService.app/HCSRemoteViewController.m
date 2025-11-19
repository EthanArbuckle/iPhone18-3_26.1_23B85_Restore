@interface HCSRemoteViewController
- (id)authorizeIfLockedForViewController:(id)a3;
- (void)_layoutAnnounceViewController;
- (void)_layoutDashboardViewController;
- (void)_layoutDropInViewController;
- (void)_setupBackgroundViewWithBlurEffectStyle:(int64_t)a3;
- (void)_updateNavigationView;
- (void)_updateRunningState:(BOOL)a3;
- (void)configureHomeControlServiceWithContext:(id)a3;
- (void)configureHomeControlServiceWithHomeUUID:(id)a3;
- (void)dashboardNavigationView:(id)a3 didTapHomeAppButton:(id)a4;
- (void)lockAuthenticationCompleted:(BOOL)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
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
  v4 = [(HCSRemoteViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = +[HFExecutionEnvironment sharedInstance];
  [v5 executionEnvironmentDidEnterBackground];
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = HCSRemoteViewController;
  [(HCSRemoteViewController *)&v14 viewWillLayoutSubviews];
  v3 = [(HCSRemoteViewController *)self dashboardViewController];
  v4 = [v3 view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(HCSRemoteViewController *)self gradientLayer];
  [v13 setFrame:{v6, v8, v10, v12}];
}

- (void)_updateRunningState:(BOOL)a3
{
  v3 = a3;
  v4 = +[HFExecutionEnvironment sharedInstance];
  v5 = [v4 runningState];

  if (v5 != !v3)
  {
    if (v3)
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

- (void)configureHomeControlServiceWithHomeUUID:(id)a3
{
  v4 = a3;
  v5 = [[HUHomeControlServiceContext alloc] initWithServiceType:0 homeIdentifier:v4 roomIdentifier:0];

  [(HCSRemoteViewController *)self configureHomeControlServiceWithContext:v5];
}

- (void)configureHomeControlServiceWithContext:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 userInfo];
    v10 = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ Configure Home Control Service with userInfo: %@", &v10, 0x16u);
  }

  serviceContext = self->_serviceContext;
  self->_serviceContext = v4;
  v8 = v4;

  v9 = [v8 serviceType];
  if (v9 == 2)
  {
    [(HCSRemoteViewController *)self _layoutDropInViewController];
  }

  else if (v9 == 1)
  {
    [(HCSRemoteViewController *)self _layoutAnnounceViewController];
  }

  else if (!v9)
  {
    [(HCSRemoteViewController *)self _layoutDashboardViewController];
  }
}

- (id)authorizeIfLockedForViewController:(id)a3
{
  v4 = objc_alloc_init(NAFuture);
  [(HCSRemoteViewController *)self setLockAuthFuture:v4];

  v5 = [(HCSRemoteViewController *)self _remoteViewControllerProxy];
  [v5 authorizeIfLocked];

  return [(HCSRemoteViewController *)self lockAuthFuture];
}

- (void)lockAuthenticationCompleted:(BOOL)a3
{
  v3 = a3;
  v5 = [(HCSRemoteViewController *)self lockAuthFuture];
  if (v3)
  {
    v4 = NAEmptyResult();
    [v5 finishWithResult:v4];
  }

  else
  {
    [v5 cancel];
  }
}

- (void)dashboardNavigationView:(id)a3 didTapHomeAppButton:(id)a4
{
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Launching Home app for Home Control Service %@", &v9, 0xCu);
  }

  v6 = [NSURL URLWithString:@"com.apple.home://"];
  v7 = +[HFOpenURLRouter sharedInstance];
  v8 = [v7 openSensitiveURL:v6];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(HCSRemoteViewController *)self dashboardViewController];
  if (![v11 isEqual:v13])
  {

    goto LABEL_5;
  }

  v14 = [v10 isEqual:@"navigationItem.title"];

  if (!v14)
  {
LABEL_5:
    v15.receiver = self;
    v15.super_class = HCSRemoteViewController;
    [(HCSRemoteViewController *)&v15 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    goto LABEL_6;
  }

  [(HCSRemoteViewController *)self _updateNavigationView];
LABEL_6:
}

- (void)_setupBackgroundViewWithBlurEffectStyle:(int64_t)a3
{
  v7 = [UIBlurEffect effectWithStyle:a3];
  v4 = [[UIVisualEffectView alloc] initWithEffect:v7];
  v5 = [(HCSRemoteViewController *)self view];
  [v5 bounds];
  [v4 setFrame:?];

  [v4 setAutoresizingMask:18];
  v6 = [(HCSRemoteViewController *)self view];
  [v6 addSubview:v4];
}

- (void)_layoutDashboardViewController
{
  v3 = objc_opt_new();
  [(HCSRemoteViewController *)self setDashboardViewController:v3];

  v4 = [(HCSRemoteViewController *)self dashboardViewController];
  v5 = [v4 view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(HCSRemoteViewController *)self dashboardViewController];
  v7 = [v6 view];
  [v7 setClipsToBounds:1];

  v8 = [(HCSRemoteViewController *)self dashboardViewController];
  v9 = [v8 collectionView];
  v10 = [v9 layer];
  [v10 setHitTestsAsOpaque:1];

  v11 = [(HCSRemoteViewController *)self dashboardViewController];
  v12 = [v11 collectionView];
  [v12 setContentInset:{16.0, 0.0, 0.0, 0.0}];

  v13 = [(HCSRemoteViewController *)self dashboardViewController];
  [v13 setLockAuthorizationDelegate:self];

  v14 = [(HCSRemoteViewController *)self dashboardViewController];
  [v14 setQuickControlPresentationDelegate:self];

  v15 = [(HCSRemoteViewController *)self dashboardViewController];
  [v15 beginAppearanceTransition:1 animated:0];

  v16 = [(HCSRemoteViewController *)self dashboardViewController];
  [(HCSRemoteViewController *)self addChildViewController:v16];

  v17 = [(HCSRemoteViewController *)self view];
  v18 = [(HCSRemoteViewController *)self dashboardViewController];
  v19 = [v18 view];
  [v17 addSubview:v19];

  v20 = [(HCSRemoteViewController *)self dashboardViewController];
  [v20 didMoveToParentViewController:self];

  v21 = [(HCSRemoteViewController *)self dashboardViewController];
  [v21 endAppearanceTransition];

  v22 = objc_opt_new();
  [(HCSRemoteViewController *)self setDashboardNavigationView:v22];

  v23 = [(HCSRemoteViewController *)self dashboardNavigationView];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = [(HCSRemoteViewController *)self dashboardNavigationView];
  [v24 setDelegate:self];

  v25 = HULocalizedString();
  v26 = [(HCSRemoteViewController *)self dashboardNavigationView];
  [v26 setHeaderTitle:v25];

  v27 = [(HCSRemoteViewController *)self dashboardNavigationView];
  [v27 setHasTitleAction:0];

  v28 = [(HCSRemoteViewController *)self view];
  v29 = [(HCSRemoteViewController *)self dashboardNavigationView];
  v30 = [(HCSRemoteViewController *)self dashboardViewController];
  v31 = [v30 view];
  [v28 insertSubview:v29 aboveSubview:v31];

  if (+[HFUtilities isAnIPad])
  {
    v32 = +[CAGradientLayer layer];
    [(HCSRemoteViewController *)self setGradientLayer:v32];

    v33 = [(HCSRemoteViewController *)self dashboardViewController];
    v34 = [v33 view];
    [v34 bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = [(HCSRemoteViewController *)self gradientLayer];
    [v43 setFrame:{v36, v38, v40, v42}];

    v44 = [(HCSRemoteViewController *)self gradientLayer];
    [v44 setLocations:&off_10000C448];

    v45 = +[UIColor blackColor];
    v98[0] = [v45 CGColor];
    v46 = +[UIColor clearColor];
    v98[1] = [v46 CGColor];
    v47 = [NSArray arrayWithObjects:v98 count:2];
    v48 = [(HCSRemoteViewController *)self gradientLayer];
    [v48 setColors:v47];

    v49 = [(HCSRemoteViewController *)self gradientLayer];
    v50 = [(HCSRemoteViewController *)self dashboardViewController];
    v51 = [v50 view];
    v52 = [v51 layer];
    [v52 setMask:v49];
  }

  v96 = [(HCSRemoteViewController *)self dashboardNavigationView];
  v94 = [v96 leadingAnchor];
  v95 = [(HCSRemoteViewController *)self view];
  v93 = [v95 layoutMarginsGuide];
  v92 = [v93 leadingAnchor];
  v91 = [v94 constraintEqualToAnchor:v92];
  v97[0] = v91;
  v90 = [(HCSRemoteViewController *)self dashboardNavigationView];
  v88 = [v90 trailingAnchor];
  v89 = [(HCSRemoteViewController *)self view];
  v87 = [v89 layoutMarginsGuide];
  v86 = [v87 trailingAnchor];
  v85 = [v88 constraintEqualToAnchor:v86];
  v97[1] = v85;
  v84 = [(HCSRemoteViewController *)self dashboardNavigationView];
  v82 = [v84 topAnchor];
  v83 = [(HCSRemoteViewController *)self view];
  v81 = [v83 layoutMarginsGuide];
  v80 = [v81 topAnchor];
  v79 = [v82 constraintEqualToAnchor:v80 constant:45.0];
  v97[2] = v79;
  v78 = [(HCSRemoteViewController *)self dashboardViewController];
  v77 = [v78 view];
  v75 = [v77 topAnchor];
  v76 = [(HCSRemoteViewController *)self dashboardNavigationView];
  v74 = [v76 bottomAnchor];
  v73 = [v75 constraintEqualToAnchor:v74];
  v97[3] = v73;
  v72 = [(HCSRemoteViewController *)self dashboardViewController];
  v71 = [v72 view];
  v69 = [v71 bottomAnchor];
  v70 = [(HCSRemoteViewController *)self view];
  v68 = [v70 bottomAnchor];
  v67 = [v69 constraintEqualToAnchor:v68];
  v97[4] = v67;
  v66 = [(HCSRemoteViewController *)self dashboardViewController];
  v65 = [v66 view];
  v63 = [v65 leadingAnchor];
  v64 = [(HCSRemoteViewController *)self view];
  v53 = [v64 leadingAnchor];
  v54 = [v63 constraintEqualToAnchor:v53];
  v97[5] = v54;
  v55 = [(HCSRemoteViewController *)self dashboardViewController];
  v56 = [v55 view];
  v57 = [v56 trailingAnchor];
  v58 = [(HCSRemoteViewController *)self view];
  v59 = [v58 trailingAnchor];
  v60 = [v57 constraintEqualToAnchor:v59];
  v97[6] = v60;
  v61 = [NSArray arrayWithObjects:v97 count:7];
  [NSLayoutConstraint activateConstraints:v61];

  [(HCSRemoteViewController *)self _updateNavigationView];
  v62 = [(HCSRemoteViewController *)self dashboardViewController];
  [v62 addObserver:self forKeyPath:@"navigationItem.title" options:0 context:0];
}

- (void)_updateNavigationView
{
  v6 = [(HCSRemoteViewController *)self dashboardViewController];
  v3 = [v6 navigationItem];
  v4 = [v3 title];
  v5 = [(HCSRemoteViewController *)self dashboardNavigationView];
  [v5 setTitle:v4];
}

- (void)_layoutAnnounceViewController
{
  [(HCSRemoteViewController *)self _setupBackgroundViewWithBlurEffectStyle:6];
  v3 = [HUAnnounceRecordingViewController alloc];
  v4 = [(HCSRemoteViewController *)self serviceContext];
  v5 = [v3 initWithServiceContext:v4 blurEffectStyle:6];
  [(HCSRemoteViewController *)self setAnnounceRecordingViewController:v5];

  v6 = [(HCSRemoteViewController *)self announceRecordingViewController];
  [v6 beginAppearanceTransition:1 animated:0];

  v7 = [(HCSRemoteViewController *)self announceRecordingViewController];
  [(HCSRemoteViewController *)self addChildViewController:v7];

  v8 = [(HCSRemoteViewController *)self view];
  v9 = [(HCSRemoteViewController *)self announceRecordingViewController];
  v10 = [v9 view];
  [v8 addSubview:v10];

  v11 = [(HCSRemoteViewController *)self view];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(HCSRemoteViewController *)self announceRecordingViewController];
  v21 = [v20 view];
  [v21 setFrame:{v13, v15, v17, v19}];

  v22 = [(HCSRemoteViewController *)self announceRecordingViewController];
  [v22 didMoveToParentViewController:self];

  v23 = [(HCSRemoteViewController *)self announceRecordingViewController];
  [v23 endAppearanceTransition];
}

- (void)_layoutDropInViewController
{
  [(HCSRemoteViewController *)self _setupBackgroundViewWithBlurEffectStyle:6];
  v3 = [HUDropInViewController alloc];
  v4 = [(HCSRemoteViewController *)self serviceContext];
  v5 = [v3 initWithServiceContext:v4 blurEffectStyle:6];
  [(HCSRemoteViewController *)self setDropInViewController:v5];

  v6 = [(HCSRemoteViewController *)self dropInViewController];
  v7 = [v6 hu_preloadContent];

  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000028F4;
  v9[3] = &unk_10000C270;
  objc_copyWeak(&v10, &location);
  v8 = [v7 addSuccessBlock:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

@end