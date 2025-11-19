@interface ZoomUI_SpringBoardOverride
- (double)_accessibilityActivationAnimationStartDelay;
- (double)_accessibilityDeactivationAnimationStartDelay;
- (void)_accessibilityActivationAnimationWillBegin;
- (void)_accessibilityDeactivationAnimationWillBegin;
@end

@implementation ZoomUI_SpringBoardOverride

- (double)_accessibilityActivationAnimationStartDelay
{
  v3 = [getZoomServicesClass() sharedInstance];
  [v3 appActivationAnimationStartDelay];
  v5 = v4;

  if (v5 < 0.0)
  {
    v8.receiver = self;
    v8.super_class = ZoomUI_SpringBoardOverride;
    [(ZoomUI_SpringBoardOverride *)&v8 _accessibilityActivationAnimationStartDelay];
    return v6;
  }

  return v5;
}

- (double)_accessibilityDeactivationAnimationStartDelay
{
  v3 = [getZoomServicesClass() sharedInstance];
  [v3 appDeactivationAnimationStartDelay];
  v5 = v4;

  if (v5 < 0.0)
  {
    v8.receiver = self;
    v8.super_class = ZoomUI_SpringBoardOverride;
    [(ZoomUI_SpringBoardOverride *)&v8 _accessibilityDeactivationAnimationStartDelay];
    return v6;
  }

  return v5;
}

- (void)_accessibilityActivationAnimationWillBegin
{
  v3.receiver = self;
  v3.super_class = ZoomUI_SpringBoardOverride;
  [(ZoomUI_SpringBoardOverride *)&v3 _accessibilityActivationAnimationWillBegin];
  v2 = [getZoomServicesClass() sharedInstance];
  [v2 notifyZoomAppActivationAnimationWillBegin];
}

- (void)_accessibilityDeactivationAnimationWillBegin
{
  v3.receiver = self;
  v3.super_class = ZoomUI_SpringBoardOverride;
  [(ZoomUI_SpringBoardOverride *)&v3 _accessibilityDeactivationAnimationWillBegin];
  v2 = [getZoomServicesClass() sharedInstance];
  [v2 notifyZoomAppDeactivationAnimationWillBegin];
}

@end