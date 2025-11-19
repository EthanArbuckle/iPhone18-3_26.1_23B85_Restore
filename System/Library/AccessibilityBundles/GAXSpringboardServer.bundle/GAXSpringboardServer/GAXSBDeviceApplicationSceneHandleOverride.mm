@interface GAXSBDeviceApplicationSceneHandleOverride
- (id)overlayStatusBarData;
@end

@implementation GAXSBDeviceApplicationSceneHandleOverride

- (id)overlayStatusBarData
{
  v7.receiver = self;
  v7.super_class = GAXSBDeviceApplicationSceneHandleOverride;
  v2 = [(GAXSBDeviceApplicationSceneHandleOverride *)&v7 overlayStatusBarData];
  v3 = +[GAXSpringboard sharedInstance];
  v4 = [v3 isActive];

  if (v4)
  {
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    [v5 setBackNavigationEntry:0];
    [v5 setForwardNavigationEntry:0];

    v2 = v5;
  }

  return v2;
}

@end