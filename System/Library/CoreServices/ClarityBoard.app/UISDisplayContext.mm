@interface UISDisplayContext
+ (id)clb_contextForDisplayStyle:(int64_t)style;
@end

@implementation UISDisplayContext

+ (id)clb_contextForDisplayStyle:(int64_t)style
{
  BSDispatchQueueAssertMain();
  v4 = +[UISMutableDisplayContext defaultContext];
  v5 = +[FBDisplayManager sharedInstance];
  mainConfiguration = [v5 mainConfiguration];
  [v4 setDisplayConfiguration:mainConfiguration];

  v7 = +[UISApplicationSupportDisplayEdgeInfo clb_thisDeviceDisplayEdgeInfo];
  [v4 setDisplayEdgeInfo:v7];

  v8 = +[UISDisplaySingleRectShape clb_thisDeviceDisplayShape];
  [v4 setExclusionArea:v8];

  [v4 setArtworkSubtype:sub_100022538()];
  if (style == 1)
  {
    displayConfiguration = [v4 displayConfiguration];
    clb_displayConfigurationForNonClarityUIApp = [displayConfiguration clb_displayConfigurationForNonClarityUIApp];
    [v4 setDisplayConfiguration:clb_displayConfigurationForNonClarityUIApp];

    v11 = sub_100006370();
    v12 = [UISApplicationSupportDisplayEdgeInfo clb_displayEdgeInfoForScreenType:v11];
    [v4 setDisplayEdgeInfo:v12];

    v13 = [UISDisplaySingleRectShape clb_displayShapeForScreenType:v11];
    [v4 setExclusionArea:v13];
  }

  return v4;
}

@end