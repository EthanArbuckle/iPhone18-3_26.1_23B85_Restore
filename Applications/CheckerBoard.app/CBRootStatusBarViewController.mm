@interface CBRootStatusBarViewController
- (int64_t)_statusBarStyle:(int64_t)a3;
- (void)hideStatusBar;
- (void)showStatusBar;
- (void)statusBarStyle:(int64_t)a3;
- (void)viewDidLoad;
@end

@implementation CBRootStatusBarViewController

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = CBRootStatusBarViewController;
  [(CBRootStatusBarViewController *)&v29 viewDidLoad];
  v3 = [STUIStatusBar_Wrapper alloc];
  v4 = +[UIScreen mainScreen];
  [v4 _referenceBounds];
  v5 = [v3 initWithFrame:1 showForegroundView:?];
  [(CBRootStatusBarViewController *)self setStatusBarView:v5];

  v6 = [(CBRootStatusBarViewController *)self view];
  v7 = [(CBRootStatusBarViewController *)self statusBarView];
  [v6 addSubview:v7];

  v28 = [(CBRootStatusBarViewController *)self statusBarView];
  v26 = [v28 leadingAnchor];
  v27 = [(CBRootStatusBarViewController *)self view];
  v25 = [v27 leadingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v30[0] = v24;
  v23 = [(CBRootStatusBarViewController *)self statusBarView];
  v21 = [v23 trailingAnchor];
  v22 = [(CBRootStatusBarViewController *)self view];
  v20 = [v22 trailingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v30[1] = v19;
  v18 = [(CBRootStatusBarViewController *)self statusBarView];
  v8 = [v18 topAnchor];
  v9 = [(CBRootStatusBarViewController *)self view];
  v10 = [v9 topAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v30[2] = v11;
  v12 = [(CBRootStatusBarViewController *)self statusBarView];
  v13 = [v12 bottomAnchor];
  v14 = [(CBRootStatusBarViewController *)self view];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v30[3] = v16;
  v17 = [NSArray arrayWithObjects:v30 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)showStatusBar
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CBRootStatusBarViewController: showStatusBar", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002908C;
  block[3] = &unk_10007D540;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)hideStatusBar
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CBRootStatusBarViewController: hideStatusBar", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029240;
  block[3] = &unk_10007D540;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)statusBarStyle:(int64_t)a3
{
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CBRootStatusBarViewController: statusBarStyle: %li", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100029438;
  v6[3] = &unk_10007E278;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(&_dispatch_main_q, v6);
}

- (int64_t)_statusBarStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (a3 == 3);
  }

  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CBRootStatusBarViewController: internalStatusBarStyle: %li", &v6, 0xCu);
  }

  return v3;
}

@end