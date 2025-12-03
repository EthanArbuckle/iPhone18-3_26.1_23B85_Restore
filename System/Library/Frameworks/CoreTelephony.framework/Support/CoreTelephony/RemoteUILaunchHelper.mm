@interface RemoteUILaunchHelper
+ (id)launchRemoteUI:(id)i viewController:(id)controller reason:(id)reason userInfo:(id)info observer:(id)observer;
@end

@implementation RemoteUILaunchHelper

+ (id)launchRemoteUI:(id)i viewController:(id)controller reason:(id)reason userInfo:(id)info observer:(id)observer
{
  iCopy = i;
  controllerCopy = controller;
  reasonCopy = reason;
  infoCopy = info;
  observerCopy = observer;
  v16 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:iCopy viewControllerClassName:controllerCopy];
  v17 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  [v17 setUserInfo:infoCopy];
  v18 = [SBSRemoteAlertHandle newHandleWithDefinition:v16 configurationContext:v17];
  v19 = v18;
  if (observerCopy)
  {
    [v18 registerObserver:observerCopy];
  }

  v20 = objc_alloc_init(SBSRemoteAlertActivationContext);
  [v20 setReason:reasonCopy];
  [v19 activateWithContext:v20];

  return v19;
}

@end