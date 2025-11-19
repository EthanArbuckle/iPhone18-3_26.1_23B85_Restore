@interface RemoteUILaunchHelper
+ (id)launchRemoteUI:(id)a3 viewController:(id)a4 reason:(id)a5 userInfo:(id)a6 observer:(id)a7;
@end

@implementation RemoteUILaunchHelper

+ (id)launchRemoteUI:(id)a3 viewController:(id)a4 reason:(id)a5 userInfo:(id)a6 observer:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:v11 viewControllerClassName:v12];
  v17 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  [v17 setUserInfo:v14];
  v18 = [SBSRemoteAlertHandle newHandleWithDefinition:v16 configurationContext:v17];
  v19 = v18;
  if (v15)
  {
    [v18 registerObserver:v15];
  }

  v20 = objc_alloc_init(SBSRemoteAlertActivationContext);
  [v20 setReason:v13];
  [v19 activateWithContext:v20];

  return v19;
}

@end