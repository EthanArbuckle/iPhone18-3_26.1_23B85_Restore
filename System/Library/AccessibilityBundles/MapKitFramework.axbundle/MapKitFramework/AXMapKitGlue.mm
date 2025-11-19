@interface AXMapKitGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMapKitGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXMapKitGlue accessibilityInitializeBundle];
  }
}

void __45__AXMapKitGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_286 withPreValidationHandler:&__block_literal_global_311 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_320];
}

uint64_t __45__AXMapKitGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"MKMapView" isKindOfClass:@"UIView"];
  [v2 validateClass:@"MKAnnotationView"];
  [v2 validateClass:@"MKAnnotationView" hasInstanceMethod:@"annotation" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MKMapView" hasInstanceVariable:@"_annotationContainer" withType:"MKAnnotationContainerView"];
  [v2 validateClass:@"MKServerFormattedStringParameters"];
  [v2 validateClass:@"MKServerFormattedString"];

  return 1;
}

uint64_t __45__AXMapKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setOverrideProcessName:@"MapKit"];
  [v2 setValidationTargetName:@"MapKit Accessibility Bundle"];

  return MEMORY[0x2A1C5E698]();
}

void __45__AXMapKitGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"MKCompassViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIButtonAccessibility__MapKit__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKAnnotationContainerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_MKUserLocationViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKAnnotationViewAccessibility_iOS" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKUserTrackingBarButtonItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_MKUserTrackingButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKUserLocationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKStarRatingAndLabelViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKStarRatingViewAccessibility_iOS" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKMapAttributionAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKAttributionLabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKScrollContainerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKMapViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKBasicMapViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKTransitInfoLabelViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKPlaceViewStyleProviderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_MKUILabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKMultiPartLabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKPlaceCardActionSectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKPlaceHeaderButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_MKLineHeaderModelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKPlacePhotosViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKPhotoSmallAttributionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKThirdPartyPhotoBigAttributionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKLookAroundContainerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_MKRightImageButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKTransitArtworkManagerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKPlaceSectionRowViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKPlaceInfoContactRowViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKPlaceHoursViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKPlaceInlineMapViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_MKPlaceInlineMapContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKPlaceAttributionCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKPlaceCardHeaderViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIImageAccessibility__MapKit__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKTransitDeparturesCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKVibrantLabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKExploreGuidesViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKTransitFilterCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKPlaceCollectionCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MKTransitDepartureContainerHeaderViewAccessibility" canInteractWithTargetClass:1];
}

@end