@interface ZoomUI_UITouchReachabilityOverride
- (CGPoint)locationInView:(id)view;
@end

@implementation ZoomUI_UITouchReachabilityOverride

- (CGPoint)locationInView:(id)view
{
  v15.receiver = self;
  v15.super_class = ZoomUI_UITouchReachabilityOverride;
  [(ZoomUI_UITouchReachabilityOverride *)&v15 locationInView:view];
  v5 = v4;
  v7 = v6;
  accessibilityIdentifier = [(ZoomUI_UITouchReachabilityOverride *)self accessibilityIdentifier];
  if (![accessibilityIdentifier isEqualToString:@"AXSBReachabilityTouch"] || !+[ZoomServicesUI _shouldUnmapPointsForFluidGestures](ZoomServicesUI, "_shouldUnmapPointsForFluidGestures"))
  {
    goto LABEL_5;
  }

  sharedInstance = [getAXSettingsClass() sharedInstance];
  if ([sharedInstance zoomInStandby])
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