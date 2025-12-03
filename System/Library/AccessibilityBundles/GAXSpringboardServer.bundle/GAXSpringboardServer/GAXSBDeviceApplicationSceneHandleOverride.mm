@interface GAXSBDeviceApplicationSceneHandleOverride
- (id)overlayStatusBarData;
@end

@implementation GAXSBDeviceApplicationSceneHandleOverride

- (id)overlayStatusBarData
{
  v7.receiver = self;
  v7.super_class = GAXSBDeviceApplicationSceneHandleOverride;
  overlayStatusBarData = [(GAXSBDeviceApplicationSceneHandleOverride *)&v7 overlayStatusBarData];
  v3 = +[GAXSpringboard sharedInstance];
  isActive = [v3 isActive];

  if (isActive)
  {
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    [v5 setBackNavigationEntry:0];
    [v5 setForwardNavigationEntry:0];

    overlayStatusBarData = v5;
  }

  return overlayStatusBarData;
}

@end