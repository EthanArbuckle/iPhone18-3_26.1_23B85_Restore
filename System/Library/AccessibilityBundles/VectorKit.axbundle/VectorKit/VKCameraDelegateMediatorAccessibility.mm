@interface VKCameraDelegateMediatorAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)mapLayerDidChangeRegionAnimated:(BOOL)animated;
- (void)mapLayerDidChangeVisibleRegion;
@end

@implementation VKCameraDelegateMediatorAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VKCameraDelegateMediator" conformsToProtocol:@"VKMapViewCameraDelegate"];
  [validationsCopy validateClass:@"VKCameraDelegateMediator" hasInstanceMethod:@"mapLayerDidChangeVisibleRegion" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"VKCameraDelegateMediator" hasInstanceMethod:@"mapLayerDidChangeRegionAnimated:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"VKCameraDelegateMediator" hasInstanceMethod:@"cameraDelegate" withFullSignature:{"@", 0}];
}

- (void)mapLayerDidChangeVisibleRegion
{
  v5.receiver = self;
  v5.super_class = VKCameraDelegateMediatorAccessibility;
  [(VKCameraDelegateMediatorAccessibility *)&v5 mapLayerDidChangeVisibleRegion];
  v3 = [(VKCameraDelegateMediatorAccessibility *)self safeValueForKey:@"cameraDelegate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 safeValueForKey:@"_mapView"];
    [v4 _accessibilityMapViewDidChangeVisibleRegion];
  }
}

- (void)mapLayerDidChangeRegionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v7.receiver = self;
  v7.super_class = VKCameraDelegateMediatorAccessibility;
  [(VKCameraDelegateMediatorAccessibility *)&v7 mapLayerDidChangeRegionAnimated:?];
  v5 = [(VKCameraDelegateMediatorAccessibility *)self safeValueForKey:@"cameraDelegate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 safeValueForKey:@"_mapView"];
    [v6 _accessibilityMapViewDidChangeRegionAnimated:animatedCopy];
  }
}

@end