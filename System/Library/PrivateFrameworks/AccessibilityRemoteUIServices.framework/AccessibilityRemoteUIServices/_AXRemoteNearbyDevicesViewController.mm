@interface _AXRemoteNearbyDevicesViewController
+ (id)presentNearbyDevicesViewControllerWithConnectionHandler:(id)handler dismissalHandler:(id)dismissalHandler;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation _AXRemoteNearbyDevicesViewController

+ (id)presentNearbyDevicesViewControllerWithConnectionHandler:(id)handler dismissalHandler:(id)dismissalHandler
{
  handlerCopy = handler;
  dismissalHandlerCopy = dismissalHandler;
  v7 = objc_opt_class();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __113___AXRemoteNearbyDevicesViewController_presentNearbyDevicesViewControllerWithConnectionHandler_dismissalHandler___block_invoke;
  v12[3] = &unk_278BED540;
  v13 = dismissalHandlerCopy;
  v14 = handlerCopy;
  v8 = handlerCopy;
  v9 = dismissalHandlerCopy;
  v10 = [v7 requestViewController:@"NearbyDevicesRemoteViewController" fromServiceWithBundleIdentifier:@"com.apple.AXRemoteViewService" connectionHandler:v12];

  return v10;
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  v7.receiver = self;
  v7.super_class = _AXRemoteNearbyDevicesViewController;
  [(_UIRemoteViewController *)&v7 viewServiceDidTerminateWithError:errorCopy];
  dismissHandler = [(_AXRemoteNearbyDevicesViewController *)self dismissHandler];

  if (dismissHandler)
  {
    dismissHandler2 = [(_AXRemoteNearbyDevicesViewController *)self dismissHandler];
    (dismissHandler2)[2](dismissHandler2, errorCopy);
  }
}

@end