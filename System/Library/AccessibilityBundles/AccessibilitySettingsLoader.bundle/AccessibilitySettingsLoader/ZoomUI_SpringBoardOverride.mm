@interface ZoomUI_SpringBoardOverride
- (double)_accessibilityActivationAnimationStartDelay;
- (double)_accessibilityDeactivationAnimationStartDelay;
- (void)_accessibilityActivationAnimationWillBegin;
- (void)_accessibilityDeactivationAnimationWillBegin;
@end

@implementation ZoomUI_SpringBoardOverride

- (double)_accessibilityActivationAnimationStartDelay
{
  sharedInstance = [getZoomServicesClass() sharedInstance];
  [sharedInstance appActivationAnimationStartDelay];
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
  sharedInstance = [getZoomServicesClass() sharedInstance];
  [sharedInstance appDeactivationAnimationStartDelay];
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
  sharedInstance = [getZoomServicesClass() sharedInstance];
  [sharedInstance notifyZoomAppActivationAnimationWillBegin];
}

- (void)_accessibilityDeactivationAnimationWillBegin
{
  v3.receiver = self;
  v3.super_class = ZoomUI_SpringBoardOverride;
  [(ZoomUI_SpringBoardOverride *)&v3 _accessibilityDeactivationAnimationWillBegin];
  sharedInstance = [getZoomServicesClass() sharedInstance];
  [sharedInstance notifyZoomAppDeactivationAnimationWillBegin];
}

@end