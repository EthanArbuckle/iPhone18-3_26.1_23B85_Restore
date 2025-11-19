@interface UISDisplayContext
+ (id)clb_contextForDisplayStyle:(int64_t)a3;
@end

@implementation UISDisplayContext

+ (id)clb_contextForDisplayStyle:(int64_t)a3
{
  BSDispatchQueueAssertMain();
  v4 = +[UISMutableDisplayContext defaultContext];
  v5 = +[FBDisplayManager sharedInstance];
  v6 = [v5 mainConfiguration];
  [v4 setDisplayConfiguration:v6];

  v7 = +[UISApplicationSupportDisplayEdgeInfo clb_thisDeviceDisplayEdgeInfo];
  [v4 setDisplayEdgeInfo:v7];

  v8 = +[UISDisplaySingleRectShape clb_thisDeviceDisplayShape];
  [v4 setExclusionArea:v8];

  [v4 setArtworkSubtype:sub_100022538()];
  if (a3 == 1)
  {
    v9 = [v4 displayConfiguration];
    v10 = [v9 clb_displayConfigurationForNonClarityUIApp];
    [v4 setDisplayConfiguration:v10];

    v11 = sub_100006370();
    v12 = [UISApplicationSupportDisplayEdgeInfo clb_displayEdgeInfoForScreenType:v11];
    [v4 setDisplayEdgeInfo:v12];

    v13 = [UISDisplaySingleRectShape clb_displayShapeForScreenType:v11];
    [v4 setExclusionArea:v13];
  }

  return v4;
}

@end