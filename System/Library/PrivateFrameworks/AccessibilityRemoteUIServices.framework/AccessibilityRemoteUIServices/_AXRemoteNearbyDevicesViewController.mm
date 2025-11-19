@interface _AXRemoteNearbyDevicesViewController
+ (id)presentNearbyDevicesViewControllerWithConnectionHandler:(id)a3 dismissalHandler:(id)a4;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation _AXRemoteNearbyDevicesViewController

+ (id)presentNearbyDevicesViewControllerWithConnectionHandler:(id)a3 dismissalHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __113___AXRemoteNearbyDevicesViewController_presentNearbyDevicesViewControllerWithConnectionHandler_dismissalHandler___block_invoke;
  v12[3] = &unk_278BED540;
  v13 = v6;
  v14 = v5;
  v8 = v5;
  v9 = v6;
  v10 = [v7 requestViewController:@"NearbyDevicesRemoteViewController" fromServiceWithBundleIdentifier:@"com.apple.AXRemoteViewService" connectionHandler:v12];

  return v10;
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _AXRemoteNearbyDevicesViewController;
  [(_UIRemoteViewController *)&v7 viewServiceDidTerminateWithError:v4];
  v5 = [(_AXRemoteNearbyDevicesViewController *)self dismissHandler];

  if (v5)
  {
    v6 = [(_AXRemoteNearbyDevicesViewController *)self dismissHandler];
    (v6)[2](v6, v4);
  }
}

@end