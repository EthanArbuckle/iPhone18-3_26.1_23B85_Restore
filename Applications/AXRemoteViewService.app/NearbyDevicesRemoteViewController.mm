@interface NearbyDevicesRemoteViewController
- (void)_dismiss;
- (void)_dismissViewService;
- (void)_setupRemoteProxy;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
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

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = ax_remote_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    userInfo = [contextCopy userInfo];
    v18 = 138412802;
    v19 = v10;
    v20 = 2112;
    v21 = contextCopy;
    v22 = 2112;
    v23 = userInfo;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ - Did prepare for alert activation context: %@, userInfo: %@", &v18, 0x20u);
  }

  v12 = objc_opt_new();
  v13 = [[_NearbyDevicesNavigationController alloc] initWithRootViewController:v12];
  [(NearbyDevicesRemoteViewController *)self setNavigationController:v13];

  navigationController = [(NearbyDevicesRemoteViewController *)self navigationController];
  [navigationController setDismissObserver:self];

  navigationController2 = [(NearbyDevicesRemoteViewController *)self navigationController];
  [navigationController2 setModalPresentationStyle:1];

  v16 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"_dismissViewService"];
  navigationItem = [v12 navigationItem];
  [navigationItem setRightBarButtonItem:v16];

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v7 = ax_remote_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    userInfo = [contextCopy userInfo];
    v11 = 138412802;
    v12 = v9;
    v13 = 2112;
    v14 = contextCopy;
    v15 = 2112;
    v16 = userInfo;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ - Did configure with alert configuration context : %@, userInfo : %@", &v11, 0x20u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_setupRemoteProxy
{
  _remoteViewControllerProxy = [(NearbyDevicesRemoteViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setWallpaperTunnelActive:0];
  [_remoteViewControllerProxy setWallpaperStyle:0 withDuration:0.3];
}

- (void)_dismiss
{
  _remoteViewControllerProxy = [(NearbyDevicesRemoteViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy deactivate];
  [_remoteViewControllerProxy invalidate];
  dispatch_async(&_dispatch_main_q, &stru_1000041A8);
}

@end