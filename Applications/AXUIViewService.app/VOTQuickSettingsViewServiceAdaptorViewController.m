@interface VOTQuickSettingsViewServiceAdaptorViewController
- (void)_dismiss;
- (void)_setupRemoteProxy;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)viewDidLoad;
@end

@implementation VOTQuickSettingsViewServiceAdaptorViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = VOTQuickSettingsViewServiceAdaptorViewController;
  [(VOTQuickSettingsViewServiceAdaptorViewController *)&v5 viewDidLoad];
  v3 = objc_alloc_init(VOTQuickSettingsViewController);
  [(VOTQuickSettingsViewServiceAdaptorViewController *)self setRootViewController:v3];

  v4 = [(VOTQuickSettingsViewServiceAdaptorViewController *)self rootViewController];
  [v4 setDelegate:self];
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = VOTLogQuickSettings();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100012B0C(self, v6, v8);
  }

  if (v7)
  {
    v7[2](v7);
  }
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = VOTLogQuickSettings();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100012BC0(self, v6, v8);
  }

  v9 = [v6 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"data"];

  v15 = 0;
  v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v15];
  v12 = v15;
  if (v12)
  {
    v13 = AXLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100012C90(v12, v13);
    }
  }

  v14 = [(VOTQuickSettingsViewServiceAdaptorViewController *)self rootViewController];
  [v14 setData:v11];

  if (v7)
  {
    v7[2](v7);
  }
}

- (void)_setupRemoteProxy
{
  v2 = [(VOTQuickSettingsViewServiceAdaptorViewController *)self _remoteViewControllerProxy];
  [v2 setDismissalAnimationStyle:2];
  [v2 setOrientationChangedEventsEnabled:0];
  [v2 setAllowsMenuButtonDismissal:1];
  [v2 setWallpaperTunnelActive:0];
}

- (void)_dismiss
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100001C60;
  v2[3] = &unk_100028758;
  v2[4] = self;
  [(VOTQuickSettingsViewServiceAdaptorViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

@end