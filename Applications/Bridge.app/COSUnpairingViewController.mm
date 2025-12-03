@interface COSUnpairingViewController
- (COSUnpairingViewController)init;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation COSUnpairingViewController

- (COSUnpairingViewController)init
{
  v22.receiver = self;
  v22.super_class = COSUnpairingViewController;
  v2 = [(COSSetupPageViewController *)&v22 init];
  v3 = v2;
  if (v2)
  {
    headerView = [(COSUnpairingViewController *)v2 headerView];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"UNPAIRING_TITLE" value:&stru_10026E598 table:@"Localizable"];
    [headerView setTitle:v6];

    headerView2 = [(COSUnpairingViewController *)v3 headerView];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"UNPAIRING_DETAIL" value:&stru_10026E598 table:@"Localizable"];
    [headerView2 setDetailText:v9];

    v10 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
    activityIndicator = v3->_activityIndicator;
    v3->_activityIndicator = v10;

    view = [(COSUnpairingViewController *)v3 view];
    [view addSubview:v3->_activityIndicator];

    [(UIActivityIndicatorView *)v3->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    centerXAnchor = [(UIActivityIndicatorView *)v3->_activityIndicator centerXAnchor];
    view2 = [(COSUnpairingViewController *)v3 view];
    centerXAnchor2 = [view2 centerXAnchor];
    v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v16 setActive:1];

    centerYAnchor = [(UIActivityIndicatorView *)v3->_activityIndicator centerYAnchor];
    view3 = [(COSUnpairingViewController *)v3 view];
    centerYAnchor2 = [view3 centerYAnchor];
    v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v20 setActive:1];

    [(UIActivityIndicatorView *)v3->_activityIndicator startAnimating];
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = COSUnpairingViewController;
  [(COSUnpairingViewController *)&v5 viewWillAppear:appear];
  self->_controllerBeingDismissedOrGone = 0;
  v4 = pbb_setup_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[COSUnpairingViewController viewWillAppear:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = COSUnpairingViewController;
  [(COSSetupPageViewController *)&v4 viewDidAppear:appear];
  v3 = pbb_setup_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[COSUnpairingViewController viewDidAppear:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = COSUnpairingViewController;
  [(COSSetupPageViewController *)&v5 viewWillDisappear:disappear];
  self->_controllerBeingDismissedOrGone = 1;
  v4 = pbb_setup_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[COSUnpairingViewController viewWillDisappear:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = COSUnpairingViewController;
  [(COSUnpairingViewController *)&v4 viewDidDisappear:disappear];
  v3 = pbb_setup_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[COSUnpairingViewController viewDidDisappear:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }
}

@end