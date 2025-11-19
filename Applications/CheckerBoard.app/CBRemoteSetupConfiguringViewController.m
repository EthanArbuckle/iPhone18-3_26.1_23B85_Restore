@interface CBRemoteSetupConfiguringViewController
- (void)setupView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation CBRemoteSetupConfiguringViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CBRemoteSetupConfiguringViewController;
  [(CBRemoteSetupConfiguringViewController *)&v3 viewDidLoad];
  [(CBRemoteSetupConfiguringViewController *)self setupView];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CBRemoteSetupConfiguringViewController;
  [(CBRemoteSetupConfiguringViewController *)&v6 viewDidAppear:a3];
  v4 = [(CBRemoteSetupConfiguringViewController *)self activityView];

  if (v4)
  {
    v5 = [(CBRemoteSetupConfiguringViewController *)self activityView];
    [v5 startAnimating];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CBRemoteSetupConfiguringViewController;
  [(CBRemoteSetupConfiguringViewController *)&v5 viewDidDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)setupView
{
  [(CBRemoteSetupConfiguringViewController *)self setModalInPresentation:1];
  v3 = [(CBRemoteSetupConfiguringViewController *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(CBRemoteSetupConfiguringViewController *)self headerView];
  [v4 setTitleHyphenationFactor:0.0];

  v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  [(CBRemoteSetupConfiguringViewController *)self setActivityView:v5];

  v6 = [(CBRemoteSetupConfiguringViewController *)self activityView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = objc_alloc_init(UIView);
  [(CBRemoteSetupConfiguringViewController *)self setContainerView:v7];

  objc_initWeak(&location, self);
  v8 = [(CBRemoteSetupConfiguringViewController *)self containerView];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10001C9A8;
  v36[3] = &unk_10007DDC8;
  objc_copyWeak(&v37, &location);
  [(CBRemoteSetupConfiguringViewController *)self addContentSubView:v8 heightConstraintForLayout:v36];

  v9 = +[UIDevice currentDevice];
  v10 = [v9 userInterfaceIdiom];

  v11 = [(CBRemoteSetupConfiguringViewController *)self containerView];
  v12 = [(CBRemoteSetupConfiguringViewController *)self activityView];
  [v11 addSubview:v12];

  v35 = [(CBRemoteSetupConfiguringViewController *)self activityView];
  v33 = [v35 leadingAnchor];
  v34 = [(CBRemoteSetupConfiguringViewController *)self containerView];
  v32 = [v34 leadingAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v39[0] = v31;
  v30 = [(CBRemoteSetupConfiguringViewController *)self activityView];
  v28 = [v30 trailingAnchor];
  v29 = [(CBRemoteSetupConfiguringViewController *)self containerView];
  v27 = [v29 trailingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v39[1] = v26;
  v25 = [(CBRemoteSetupConfiguringViewController *)self activityView];
  v24 = [v25 lastBaselineAnchor];
  v13 = [(CBRemoteSetupConfiguringViewController *)self containerView];
  v14 = [v13 topAnchor];
  v15 = 96.0;
  if (v10 == 1)
  {
    v15 = 106.0;
  }

  v16 = [v24 constraintEqualToAnchor:v14 constant:v15];
  v39[2] = v16;
  v17 = [(CBRemoteSetupConfiguringViewController *)self containerView];
  v18 = [v17 bottomAnchor];
  v19 = [(CBRemoteSetupConfiguringViewController *)self activityView];
  v20 = [v19 bottomAnchor];
  v21 = [v18 constraintGreaterThanOrEqualToAnchor:v20];
  v39[3] = v21;
  v22 = [NSArray arrayWithObjects:v39 count:4];
  [NSLayoutConstraint activateConstraints:v22];

  v23 = [(CBRemoteSetupConfiguringViewController *)self view];
  [v23 setNeedsLayout];

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

@end