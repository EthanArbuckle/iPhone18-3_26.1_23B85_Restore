@interface CBRootStatusBarViewController
- (int64_t)_statusBarStyle:(int64_t)style;
- (void)hideStatusBar;
- (void)showStatusBar;
- (void)statusBarStyle:(int64_t)style;
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

  view = [(CBRootStatusBarViewController *)self view];
  statusBarView = [(CBRootStatusBarViewController *)self statusBarView];
  [view addSubview:statusBarView];

  statusBarView2 = [(CBRootStatusBarViewController *)self statusBarView];
  leadingAnchor = [statusBarView2 leadingAnchor];
  view2 = [(CBRootStatusBarViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v30[0] = v24;
  statusBarView3 = [(CBRootStatusBarViewController *)self statusBarView];
  trailingAnchor = [statusBarView3 trailingAnchor];
  view3 = [(CBRootStatusBarViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v30[1] = v19;
  statusBarView4 = [(CBRootStatusBarViewController *)self statusBarView];
  topAnchor = [statusBarView4 topAnchor];
  view4 = [(CBRootStatusBarViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v30[2] = v11;
  statusBarView5 = [(CBRootStatusBarViewController *)self statusBarView];
  bottomAnchor = [statusBarView5 bottomAnchor];
  view5 = [(CBRootStatusBarViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

- (void)statusBarStyle:(int64_t)style
{
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    styleCopy = style;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CBRootStatusBarViewController: statusBarStyle: %li", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100029438;
  v6[3] = &unk_10007E278;
  v6[4] = self;
  v6[5] = style;
  dispatch_async(&_dispatch_main_q, v6);
}

- (int64_t)_statusBarStyle:(int64_t)style
{
  if (style == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (style == 3);
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