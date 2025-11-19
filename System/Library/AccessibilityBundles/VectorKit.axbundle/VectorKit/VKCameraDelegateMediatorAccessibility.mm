@interface VKCameraDelegateMediatorAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)mapLayerDidChangeRegionAnimated:(BOOL)a3;
- (void)mapLayerDidChangeVisibleRegion;
@end

@implementation VKCameraDelegateMediatorAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VKCameraDelegateMediator" conformsToProtocol:@"VKMapViewCameraDelegate"];
  [v3 validateClass:@"VKCameraDelegateMediator" hasInstanceMethod:@"mapLayerDidChangeVisibleRegion" withFullSignature:{"v", 0}];
  [v3 validateClass:@"VKCameraDelegateMediator" hasInstanceMethod:@"mapLayerDidChangeRegionAnimated:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"VKCameraDelegateMediator" hasInstanceMethod:@"cameraDelegate" withFullSignature:{"@", 0}];
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

- (void)mapLayerDidChangeRegionAnimated:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = VKCameraDelegateMediatorAccessibility;
  [(VKCameraDelegateMediatorAccessibility *)&v7 mapLayerDidChangeRegionAnimated:?];
  v5 = [(VKCameraDelegateMediatorAccessibility *)self safeValueForKey:@"cameraDelegate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 safeValueForKey:@"_mapView"];
    [v6 _accessibilityMapViewDidChangeRegionAnimated:v3];
  }
}

@end