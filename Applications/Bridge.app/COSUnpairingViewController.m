@interface COSUnpairingViewController
- (COSUnpairingViewController)init;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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
    v4 = [(COSUnpairingViewController *)v2 headerView];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"UNPAIRING_TITLE" value:&stru_10026E598 table:@"Localizable"];
    [v4 setTitle:v6];

    v7 = [(COSUnpairingViewController *)v3 headerView];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"UNPAIRING_DETAIL" value:&stru_10026E598 table:@"Localizable"];
    [v7 setDetailText:v9];

    v10 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
    activityIndicator = v3->_activityIndicator;
    v3->_activityIndicator = v10;

    v12 = [(COSUnpairingViewController *)v3 view];
    [v12 addSubview:v3->_activityIndicator];

    [(UIActivityIndicatorView *)v3->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [(UIActivityIndicatorView *)v3->_activityIndicator centerXAnchor];
    v14 = [(COSUnpairingViewController *)v3 view];
    v15 = [v14 centerXAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    [v16 setActive:1];

    v17 = [(UIActivityIndicatorView *)v3->_activityIndicator centerYAnchor];
    v18 = [(COSUnpairingViewController *)v3 view];
    v19 = [v18 centerYAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    [v20 setActive:1];

    [(UIActivityIndicatorView *)v3->_activityIndicator startAnimating];
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = COSUnpairingViewController;
  [(COSUnpairingViewController *)&v5 viewWillAppear:a3];
  self->_controllerBeingDismissedOrGone = 0;
  v4 = pbb_setup_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[COSUnpairingViewController viewWillAppear:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = COSUnpairingViewController;
  [(COSSetupPageViewController *)&v4 viewDidAppear:a3];
  v3 = pbb_setup_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[COSUnpairingViewController viewDidAppear:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = COSUnpairingViewController;
  [(COSSetupPageViewController *)&v5 viewWillDisappear:a3];
  self->_controllerBeingDismissedOrGone = 1;
  v4 = pbb_setup_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[COSUnpairingViewController viewWillDisappear:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = COSUnpairingViewController;
  [(COSUnpairingViewController *)&v4 viewDidDisappear:a3];
  v3 = pbb_setup_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[COSUnpairingViewController viewDidDisappear:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }
}

@end