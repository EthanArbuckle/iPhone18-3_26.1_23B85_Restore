@interface CBEndgameViewController
- (void)showPrimaryApp;
- (void)viewDidLoad;
@end

@implementation CBEndgameViewController

- (void)viewDidLoad
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Diagnostics pane loaded", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = CBEndgameViewController;
  [(CBEndgameViewController *)&v5 viewDidLoad];
  navigationItem = [(CBEndgameViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  [(CBEndgameViewController *)self showPrimaryApp];
}

- (void)showPrimaryApp
{
  v2 = +[CBAppManager sharedInstance];
  primaryAppBundleID = [v2 primaryAppBundleID];

  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = primaryAppBundleID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Launching primary application %@.", &v7, 0xCu);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"CBEndGameViewControllerLaunchingPrimaryAppNotification" object:0];

  v6 = +[CBAppManager sharedInstance];
  [v6 launchAppWithBundleID:primaryAppBundleID suspended:0 native:1 completion:&stru_10007DE68];
}

@end