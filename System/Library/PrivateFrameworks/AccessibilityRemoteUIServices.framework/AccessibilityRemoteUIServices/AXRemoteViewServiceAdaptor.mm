@interface AXRemoteViewServiceAdaptor
+ (void)presentRemoteNearbyDevicesViewControllerWithPresentationHandler:(id)handler dismissalHandler:(id)dismissalHandler;
@end

@implementation AXRemoteViewServiceAdaptor

+ (void)presentRemoteNearbyDevicesViewControllerWithPresentationHandler:(id)handler dismissalHandler:(id)dismissalHandler
{
  dismissalHandlerCopy = dismissalHandler;
  handlerCopy = handler;
  v7 = +[AXRemoteUIAlertManager sharedInstance];
  [v7 presentRemoteUIAlertWithIdentifier:@"com.apple.AXRemoteViewService" viewControllerClassName:@"NearbyDevicesRemoteViewController" userInfo:MEMORY[0x277CBEC10] presentationHandler:handlerCopy dismissalHandler:dismissalHandlerCopy];
}

@end