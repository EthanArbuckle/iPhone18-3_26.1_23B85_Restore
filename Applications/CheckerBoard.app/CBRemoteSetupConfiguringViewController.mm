@interface CBRemoteSetupConfiguringViewController
- (void)setupView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
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

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CBRemoteSetupConfiguringViewController;
  [(CBRemoteSetupConfiguringViewController *)&v6 viewDidAppear:appear];
  activityView = [(CBRemoteSetupConfiguringViewController *)self activityView];

  if (activityView)
  {
    activityView2 = [(CBRemoteSetupConfiguringViewController *)self activityView];
    [activityView2 startAnimating];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CBRemoteSetupConfiguringViewController;
  [(CBRemoteSetupConfiguringViewController *)&v5 viewDidDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)setupView
{
  [(CBRemoteSetupConfiguringViewController *)self setModalInPresentation:1];
  view = [(CBRemoteSetupConfiguringViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  headerView = [(CBRemoteSetupConfiguringViewController *)self headerView];
  [headerView setTitleHyphenationFactor:0.0];

  v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  [(CBRemoteSetupConfiguringViewController *)self setActivityView:v5];

  activityView = [(CBRemoteSetupConfiguringViewController *)self activityView];
  [activityView setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = objc_alloc_init(UIView);
  [(CBRemoteSetupConfiguringViewController *)self setContainerView:v7];

  objc_initWeak(&location, self);
  containerView = [(CBRemoteSetupConfiguringViewController *)self containerView];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10001C9A8;
  v36[3] = &unk_10007DDC8;
  objc_copyWeak(&v37, &location);
  [(CBRemoteSetupConfiguringViewController *)self addContentSubView:containerView heightConstraintForLayout:v36];

  v9 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v9 userInterfaceIdiom];

  containerView2 = [(CBRemoteSetupConfiguringViewController *)self containerView];
  activityView2 = [(CBRemoteSetupConfiguringViewController *)self activityView];
  [containerView2 addSubview:activityView2];

  activityView3 = [(CBRemoteSetupConfiguringViewController *)self activityView];
  leadingAnchor = [activityView3 leadingAnchor];
  containerView3 = [(CBRemoteSetupConfiguringViewController *)self containerView];
  leadingAnchor2 = [containerView3 leadingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v39[0] = v31;
  activityView4 = [(CBRemoteSetupConfiguringViewController *)self activityView];
  trailingAnchor = [activityView4 trailingAnchor];
  containerView4 = [(CBRemoteSetupConfiguringViewController *)self containerView];
  trailingAnchor2 = [containerView4 trailingAnchor];
  v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v39[1] = v26;
  activityView5 = [(CBRemoteSetupConfiguringViewController *)self activityView];
  lastBaselineAnchor = [activityView5 lastBaselineAnchor];
  containerView5 = [(CBRemoteSetupConfiguringViewController *)self containerView];
  topAnchor = [containerView5 topAnchor];
  v15 = 96.0;
  if (userInterfaceIdiom == 1)
  {
    v15 = 106.0;
  }

  v16 = [lastBaselineAnchor constraintEqualToAnchor:topAnchor constant:v15];
  v39[2] = v16;
  containerView6 = [(CBRemoteSetupConfiguringViewController *)self containerView];
  bottomAnchor = [containerView6 bottomAnchor];
  activityView6 = [(CBRemoteSetupConfiguringViewController *)self activityView];
  bottomAnchor2 = [activityView6 bottomAnchor];
  v21 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
  v39[3] = v21;
  v22 = [NSArray arrayWithObjects:v39 count:4];
  [NSLayoutConstraint activateConstraints:v22];

  view2 = [(CBRemoteSetupConfiguringViewController *)self view];
  [view2 setNeedsLayout];

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

@end