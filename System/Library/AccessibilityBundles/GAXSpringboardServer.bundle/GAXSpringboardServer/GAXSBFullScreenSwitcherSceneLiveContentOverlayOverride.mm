@interface GAXSBFullScreenSwitcherSceneLiveContentOverlayOverride
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)configureWithWorkspaceEntity:(id)a3 referenceFrame:(CGRect)a4 contentOrientation:(int64_t)a5 containerOrientation:(int64_t)a6 layoutRole:(int64_t)a7 sbsDisplayLayoutRole:(int64_t)a8 spaceConfiguration:(int64_t)a9 floatingConfiguration:(int64_t)a10 hasClassicAppOrientationMismatch:(BOOL)a11 sizingPolicy:(int64_t)a12;
@end

@implementation GAXSBFullScreenSwitcherSceneLiveContentOverlayOverride

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateProtocol:@"SBFullScreenSwitcherSceneLiveContentOverlay" hasRequiredInstanceMethod:@"configureWithWorkspaceEntity:referenceFrame:contentOrientation:containerOrientation:layoutRole:sbsDisplayLayoutRole:spaceConfiguration:floatingConfiguration:hasClassicAppOrientationMismatch:sizingPolicy:"];
  [v3 validateClass:@"SBFullScreenSwitcherSceneLiveContentOverlay" hasInstanceMethod:@"deviceApplicationSceneViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBMedusaDecoratedDeviceApplicationSceneViewController" hasInstanceVariable:@"_deviceApplicationSceneViewController" withType:"SBDeviceApplicationSceneViewController"];
}

- (void)configureWithWorkspaceEntity:(id)a3 referenceFrame:(CGRect)a4 contentOrientation:(int64_t)a5 containerOrientation:(int64_t)a6 layoutRole:(int64_t)a7 sbsDisplayLayoutRole:(int64_t)a8 spaceConfiguration:(int64_t)a9 floatingConfiguration:(int64_t)a10 hasClassicAppOrientationMismatch:(BOOL)a11 sizingPolicy:(int64_t)a12
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v22 = a3;
  v28.receiver = self;
  v28.super_class = GAXSBFullScreenSwitcherSceneLiveContentOverlayOverride;
  [(GAXSBFullScreenSwitcherSceneLiveContentOverlayOverride *)&v28 configureWithWorkspaceEntity:v22 referenceFrame:a5 contentOrientation:a6 containerOrientation:a7 layoutRole:a8 sbsDisplayLayoutRole:a9 spaceConfiguration:x floatingConfiguration:y hasClassicAppOrientationMismatch:width sizingPolicy:height, a10, a11, a12];
  v23 = +[GAXSpringboard sharedInstanceIfExists];
  LODWORD(a8) = [v23 isActive];

  if (a8)
  {
    v24 = [(GAXSBFullScreenSwitcherSceneLiveContentOverlayOverride *)self safeValueForKey:@"deviceApplicationSceneViewController"];
    AXSafeClassFromString();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v25 = [v24 safeValueForKey:@"_deviceApplicationSceneViewController"];
      v26 = __UIAccessibilityCastAsSafeCategory();
    }

    else
    {
      objc_opt_class();
      v26 = __UIAccessibilityCastAsSafeCategory();
    }

    [v26 _gaxSetShouldSuppressBottomGrabber:1];
  }
}

@end