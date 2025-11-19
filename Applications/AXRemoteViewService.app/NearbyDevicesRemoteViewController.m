@interface NearbyDevicesRemoteViewController
- (void)_dismiss;
- (void)_dismissViewService;
- (void)_setupRemoteProxy;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
@end

@implementation NearbyDevicesRemoteViewController

- (void)_dismissViewService
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100001010;
  v2[3] = &unk_100004188;
  v2[4] = self;
  [(NearbyDevicesRemoteViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = ax_remote_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v6 userInfo];
    v18 = 138412802;
    v19 = v10;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ - Did prepare for alert activation context: %@, userInfo: %@", &v18, 0x20u);
  }

  v12 = objc_opt_new();
  v13 = [[_NearbyDevicesNavigationController alloc] initWithRootViewController:v12];
  [(NearbyDevicesRemoteViewController *)self setNavigationController:v13];

  v14 = [(NearbyDevicesRemoteViewController *)self navigationController];
  [v14 setDismissObserver:self];

  v15 = [(NearbyDevicesRemoteViewController *)self navigationController];
  [v15 setModalPresentationStyle:1];

  v16 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"_dismissViewService"];
  v17 = [v12 navigationItem];
  [v17 setRightBarButtonItem:v16];

  if (v7)
  {
    v7[2](v7);
  }
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = ax_remote_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v5 userInfo];
    v11 = 138412802;
    v12 = v9;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ - Did configure with alert configuration context : %@, userInfo : %@", &v11, 0x20u);
  }

  if (v6)
  {
    v6[2](v6);
  }
}

- (void)_setupRemoteProxy
{
  v2 = [(NearbyDevicesRemoteViewController *)self _remoteViewControllerProxy];
  [v2 setWallpaperTunnelActive:0];
  [v2 setWallpaperStyle:0 withDuration:0.3];
}

- (void)_dismiss
{
  v2 = [(NearbyDevicesRemoteViewController *)self _remoteViewControllerProxy];
  [v2 deactivate];
  [v2 invalidate];
  dispatch_async(&_dispatch_main_q, &stru_1000041A8);
}

@end