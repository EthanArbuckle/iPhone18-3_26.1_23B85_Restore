@interface ZoomUI_UITouchReachabilityOverride
- (CGPoint)locationInView:(id)a3;
@end

@implementation ZoomUI_UITouchReachabilityOverride

- (CGPoint)locationInView:(id)a3
{
  v15.receiver = self;
  v15.super_class = ZoomUI_UITouchReachabilityOverride;
  [(ZoomUI_UITouchReachabilityOverride *)&v15 locationInView:a3];
  v5 = v4;
  v7 = v6;
  v8 = [(ZoomUI_UITouchReachabilityOverride *)self accessibilityIdentifier];
  if (![v8 isEqualToString:@"AXSBReachabilityTouch"] || !+[ZoomServicesUI _shouldUnmapPointsForFluidGestures](ZoomServicesUI, "_shouldUnmapPointsForFluidGestures"))
  {
    goto LABEL_5;
  }

  v9 = [getAXSettingsClass() sharedInstance];
  if ([v9 zoomInStandby])
  {

LABEL_5:
    goto LABEL_6;
  }

  v12 = +[ZoomServicesUI _deviceIsPortrait];

  if (v12)
  {
    [ZoomServicesUI _unMappedZoomPoint:v5, v7];
    v5 = v13;
    v7 = v14;
  }

LABEL_6:
  v10 = v5;
  v11 = v7;
  result.y = v11;
  result.x = v10;
  return result;
}

@end