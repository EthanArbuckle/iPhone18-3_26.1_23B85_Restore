@interface AXInvertColors_MapKit
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_MapKit

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MKPlacePhotosViewController" hasInstanceMethod:@"_createImageViews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MKPlacePhotosViewController" hasInstanceVariable:@"_photoViews" withType:"NSArray"];
  [validationsCopy validateClass:@"MKMapView" hasInstanceMethod:@"_setPreferredConfiguration:onInit:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"MKMapView" hasInstanceMethod:@"preferredConfiguration" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKMapConfiguration" hasClassMethod:@"_cartographicConfigurationForMapConfiguration:" withFullSignature:{"{?=qqqqqqB}", "@", 0}];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"MKPlacePhotosViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"MKMapViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end