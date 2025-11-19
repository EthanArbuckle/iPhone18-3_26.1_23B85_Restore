@interface AXInvertColors_MapKit
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_MapKit

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MKPlacePhotosViewController" hasInstanceMethod:@"_createImageViews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MKPlacePhotosViewController" hasInstanceVariable:@"_photoViews" withType:"NSArray"];
  [v3 validateClass:@"MKMapView" hasInstanceMethod:@"_setPreferredConfiguration:onInit:" withFullSignature:{"v", "@", "B", 0}];
  [v3 validateClass:@"MKMapView" hasInstanceMethod:@"preferredConfiguration" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MKMapConfiguration" hasClassMethod:@"_cartographicConfigurationForMapConfiguration:" withFullSignature:{"{?=qqqqqqB}", "@", 0}];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"MKPlacePhotosViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MKMapViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end