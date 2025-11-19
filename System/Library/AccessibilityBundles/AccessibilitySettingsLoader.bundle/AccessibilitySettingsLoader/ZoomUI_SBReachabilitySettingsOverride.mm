@interface ZoomUI_SBReachabilitySettingsOverride
- (double)yOffsetFactor;
@end

@implementation ZoomUI_SBReachabilitySettingsOverride

- (double)yOffsetFactor
{
  v8.receiver = self;
  v8.super_class = ZoomUI_SBReachabilitySettingsOverride;
  [(ZoomUI_SBReachabilitySettingsOverride *)&v8 yOffsetFactor];
  v3 = v2;
  v4 = [getZoomServicesClass() sharedInstance];
  [v4 reachabilityScaleFactor];
  v6 = v3 * v5;

  return v6;
}

@end