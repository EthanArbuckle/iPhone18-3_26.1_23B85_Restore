@interface GAXSBDeviceApplicationSceneViewControllerOverride
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_gaxSetShouldSuppressBottomGrabber:(BOOL)grabber;
- (void)setHomeGrabberDisplayMode:(int64_t)mode;
@end

@implementation GAXSBDeviceApplicationSceneViewControllerOverride

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBDeviceApplicationSceneViewController" hasInstanceMethod:@"homeGrabberDisplayMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SBDeviceApplicationSceneViewController" hasInstanceMethod:@"setHomeGrabberDisplayMode:" withFullSignature:{"v", "q", 0}];
}

- (void)_gaxSetShouldSuppressBottomGrabber:(BOOL)grabber
{
  grabberCopy = grabber;
  if ([(GAXSBDeviceApplicationSceneViewControllerOverride *)self _gaxInternalShouldSuppressBottomGrabber]!= grabber)
  {
    if (grabberCopy)
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

- (void)setHomeGrabberDisplayMode:(int64_t)mode
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
  [(GAXSBDeviceApplicationSceneViewControllerOverride *)&v6 setHomeGrabberDisplayMode:mode];
}

@end