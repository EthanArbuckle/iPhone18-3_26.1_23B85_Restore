@interface HCSRemoteAlertServiceViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
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

  v4 = [(HCSRemoteAlertServiceViewController *)self remoteViewController];
  v5 = [v4 view];
  [v5 setClipsToBounds:1];

  v6 = [(HCSRemoteAlertServiceViewController *)self remoteViewController];
  [(HCSRemoteAlertServiceViewController *)self addChildViewController:v6];

  v7 = [(HCSRemoteAlertServiceViewController *)self view];
  v8 = [(HCSRemoteAlertServiceViewController *)self remoteViewController];
  v9 = [v8 view];
  [v7 addSubview:v9];

  v10 = [(HCSRemoteAlertServiceViewController *)self remoteViewController];
  [v10 didMoveToParentViewController:self];
}

- (void)viewWillLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = HCSRemoteAlertServiceViewController;
  [(HCSRemoteAlertServiceViewController *)&v9 viewWillLayoutSubviews];
  v3 = [(HCSRemoteAlertServiceViewController *)self view];
  [v3 bounds];
  v4 = CGRectGetWidth(v10) * 0.5;
  v5 = [(HCSRemoteAlertServiceViewController *)self view];
  [v5 bounds];
  v6 = CGRectGetHeight(v11) * 0.5;
  v7 = [(HCSRemoteAlertServiceViewController *)self remoteViewController];
  v8 = [v7 view];
  [v8 setCenter:{v4, v6}];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(HCSRemoteAlertServiceViewController *)self traitCollection];
  if ([v2 userInterfaceIdiom] == 1)
  {
    v3 = 30;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 userInfo];
    *buf = 138412546;
    v17 = self;
    v18 = 2112;
    v19 = v10;
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
    v12 = [[HUHomeControlServiceContext alloc] initWithAlertConfigurationContext:v7];
    [v12 setRemoteViewControllerProxy:v11];
    v13 = [(HCSRemoteAlertServiceViewController *)self remoteViewController];
    [v13 configureHomeControlServiceWithContext:v12];

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
    [(HCSRemoteAlertServiceViewController *)&v14 configureWithContext:v7 completion:v8];
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

- (void)handleButtonActions:(id)a3
{
  v4 = a3;
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
  [v4 enumerateObjectsUsingBlock:v8];
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

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v7 = a4;
  v6 = [a3 reason];
  [(HCSRemoteAlertServiceViewController *)self setActivationReason:v6];

  v7[2]();
}

@end