@interface HCSRemoteAlertServiceViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HCSRemoteAlertServiceViewController

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = HCSRemoteAlertServiceViewController;
  [(HCSRemoteAlertServiceViewController *)&v11 viewDidLoad];
  v3 = objc_alloc_init(HCSRemoteViewController);
  [(HCSRemoteAlertServiceViewController *)self setRemoteViewController:v3];

  remoteViewController = [(HCSRemoteAlertServiceViewController *)self remoteViewController];
  view = [remoteViewController view];
  [view setClipsToBounds:1];

  remoteViewController2 = [(HCSRemoteAlertServiceViewController *)self remoteViewController];
  [(HCSRemoteAlertServiceViewController *)self addChildViewController:remoteViewController2];

  view2 = [(HCSRemoteAlertServiceViewController *)self view];
  remoteViewController3 = [(HCSRemoteAlertServiceViewController *)self remoteViewController];
  view3 = [remoteViewController3 view];
  [view2 addSubview:view3];

  remoteViewController4 = [(HCSRemoteAlertServiceViewController *)self remoteViewController];
  [remoteViewController4 didMoveToParentViewController:self];
}

- (void)viewWillLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = HCSRemoteAlertServiceViewController;
  [(HCSRemoteAlertServiceViewController *)&v9 viewWillLayoutSubviews];
  view = [(HCSRemoteAlertServiceViewController *)self view];
  [view bounds];
  v4 = CGRectGetWidth(v10) * 0.5;
  view2 = [(HCSRemoteAlertServiceViewController *)self view];
  [view2 bounds];
  v6 = CGRectGetHeight(v11) * 0.5;
  remoteViewController = [(HCSRemoteAlertServiceViewController *)self remoteViewController];
  view3 = [remoteViewController view];
  [view3 setCenter:{v4, v6}];
}

- (unint64_t)supportedInterfaceOrientations
{
  traitCollection = [(HCSRemoteAlertServiceViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 1)
  {
    v3 = 30;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    userInfo = [contextCopy userInfo];
    *buf = 138412546;
    selfCopy = self;
    v18 = 2112;
    v19 = userInfo;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ Configure remote view service with userInfo: %@", buf, 0x16u);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000035B0;
  v15[3] = &unk_10000C290;
  v15[4] = a2;
  v11 = [(HCSRemoteAlertServiceViewController *)self _remoteViewControllerProxyWithErrorHandler:v15];
  if (v11)
  {
    v12 = [[HUHomeControlServiceContext alloc] initWithAlertConfigurationContext:contextCopy];
    [v12 setRemoteViewControllerProxy:v11];
    remoteViewController = [(HCSRemoteAlertServiceViewController *)self remoteViewController];
    [remoteViewController configureHomeControlServiceWithContext:v12];

    [v11 setAllowsBanners:1];
    [v11 setAllowsAlertItems:1];
    [v11 setAllowsControlCenter:1];
    [v11 setAllowsSiri:1];
    [v11 setDismissalAnimationStyle:0];
    [v11 setAllowsMenuButtonDismissal:1];
    [v11 setDesiredHardwareButtonEvents:16];
    if ([v12 serviceType]== 1 || [v12 serviceType]== 2)
    {
      [v11 setAllowsMenuButtonDismissal:0];
      [v11 setAllowsControlCenter:0];
      [v11 setAllowsAlertStacking:1];
      [v11 setStatusBarHidden:1 withDuration:-1.0];
      [v11 setWallpaperStyle:2 withDuration:-1.0];
    }

    v14.receiver = self;
    v14.super_class = HCSRemoteAlertServiceViewController;
    [(HCSRemoteAlertServiceViewController *)&v14 configureWithContext:contextCopy completion:completionCopy];
  }

  else
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100003B00(a2, v12);
    }
  }
}

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000037C8;
  v8[3] = &unk_10000C2B8;
  v8[4] = &v13;
  v8[5] = &v9;
  [actionsCopy enumerateObjectsUsingBlock:v8];
  if (v14[3] & 1) != 0 || (v10[3])
  {
    v5 = 0.5;
    if (v10[3] & 1 | ((v14[3] & 1) == 0))
    {
      v5 = 0.0;
    }

    v6[4] = self;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000038C0;
    v7[3] = &unk_10000C2E0;
    v7[4] = self;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100003998;
    v6[3] = &unk_10000C308;
    [UIView animateWithDuration:0 delay:v7 options:v6 animations:v5 completion:?];
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  reason = [context reason];
  [(HCSRemoteAlertServiceViewController *)self setActivationReason:reason];

  completionCopy[2]();
}

@end