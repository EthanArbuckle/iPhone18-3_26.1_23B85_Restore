@interface AXRemoteViewServiceAdaptor
+ (void)presentRemoteNearbyDevicesViewControllerWithPresentationHandler:(id)a3 dismissalHandler:(id)a4;
@end

@implementation AXRemoteViewServiceAdaptor

+ (void)presentRemoteNearbyDevicesViewControllerWithPresentationHandler:(id)a3 dismissalHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[AXRemoteUIAlertManager sharedInstance];
  [v7 presentRemoteUIAlertWithIdentifier:@"com.apple.AXRemoteViewService" viewControllerClassName:@"NearbyDevicesRemoteViewController" userInfo:MEMORY[0x277CBEC10] presentationHandler:v6 dismissalHandler:v5];
}

@end