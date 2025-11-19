@interface GAXSBDeviceApplicationSceneViewControllerOverride
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_gaxSetShouldSuppressBottomGrabber:(BOOL)a3;
- (void)setHomeGrabberDisplayMode:(int64_t)a3;
@end

@implementation GAXSBDeviceApplicationSceneViewControllerOverride

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBDeviceApplicationSceneViewController" hasInstanceMethod:@"homeGrabberDisplayMode" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SBDeviceApplicationSceneViewController" hasInstanceMethod:@"setHomeGrabberDisplayMode:" withFullSignature:{"v", "q", 0}];
}

- (void)_gaxSetShouldSuppressBottomGrabber:(BOOL)a3
{
  v3 = a3;
  if ([(GAXSBDeviceApplicationSceneViewControllerOverride *)self _gaxInternalShouldSuppressBottomGrabber]!= a3)
  {
    if (v3)
    {
      [(GAXSBDeviceApplicationSceneViewControllerOverride *)self _gaxSetDesiredHomeGrabberDisplayMode:[(GAXSBDeviceApplicationSceneViewControllerOverride *)self safeIntegerForKey:@"homeGrabberDisplayMode"]];
      AXPerformSafeBlock();
      [(GAXSBDeviceApplicationSceneViewControllerOverride *)self _gaxInternalSetShouldSuppressBottomGrabber:1];
    }

    else
    {
      [(GAXSBDeviceApplicationSceneViewControllerOverride *)self _gaxInternalSetShouldSuppressBottomGrabber:0];
      AXPerformSafeBlock();
    }
  }
}

- (void)setHomeGrabberDisplayMode:(int64_t)a3
{
  if ([(GAXSBDeviceApplicationSceneViewControllerOverride *)self _gaxShouldSuppressBottomGrabber])
  {
    v5 = GAXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_16BA0(v5);
    }
  }

  v6.receiver = self;
  v6.super_class = GAXSBDeviceApplicationSceneViewControllerOverride;
  [(GAXSBDeviceApplicationSceneViewControllerOverride *)&v6 setHomeGrabberDisplayMode:a3];
}

@end