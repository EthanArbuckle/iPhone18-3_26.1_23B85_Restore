@interface GAXSBFullScreenSwitcherSceneLiveContentOverlayOverride
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)configureWithWorkspaceEntity:(id)entity referenceFrame:(CGRect)frame contentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation layoutRole:(int64_t)role sbsDisplayLayoutRole:(int64_t)layoutRole spaceConfiguration:(int64_t)configuration floatingConfiguration:(int64_t)self0 hasClassicAppOrientationMismatch:(BOOL)self1 sizingPolicy:(int64_t)self2;
@end

@implementation GAXSBFullScreenSwitcherSceneLiveContentOverlayOverride

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateProtocol:@"SBFullScreenSwitcherSceneLiveContentOverlay" hasRequiredInstanceMethod:@"configureWithWorkspaceEntity:referenceFrame:contentOrientation:containerOrientation:layoutRole:sbsDisplayLayoutRole:spaceConfiguration:floatingConfiguration:hasClassicAppOrientationMismatch:sizingPolicy:"];
  [validationsCopy validateClass:@"SBFullScreenSwitcherSceneLiveContentOverlay" hasInstanceMethod:@"deviceApplicationSceneViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBMedusaDecoratedDeviceApplicationSceneViewController" hasInstanceVariable:@"_deviceApplicationSceneViewController" withType:"SBDeviceApplicationSceneViewController"];
}

- (void)configureWithWorkspaceEntity:(id)entity referenceFrame:(CGRect)frame contentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation layoutRole:(int64_t)role sbsDisplayLayoutRole:(int64_t)layoutRole spaceConfiguration:(int64_t)configuration floatingConfiguration:(int64_t)self0 hasClassicAppOrientationMismatch:(BOOL)self1 sizingPolicy:(int64_t)self2
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  entityCopy = entity;
  v28.receiver = self;
  v28.super_class = GAXSBFullScreenSwitcherSceneLiveContentOverlayOverride;
  [(GAXSBFullScreenSwitcherSceneLiveContentOverlayOverride *)&v28 configureWithWorkspaceEntity:entityCopy referenceFrame:orientation contentOrientation:containerOrientation containerOrientation:role layoutRole:layoutRole sbsDisplayLayoutRole:configuration spaceConfiguration:x floatingConfiguration:y hasClassicAppOrientationMismatch:width sizingPolicy:height, floatingConfiguration, mismatch, policy];
  v23 = +[GAXSpringboard sharedInstanceIfExists];
  LODWORD(layoutRole) = [v23 isActive];

  if (layoutRole)
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