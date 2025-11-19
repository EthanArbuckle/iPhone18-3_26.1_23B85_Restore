@interface AXVectorKitGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXVectorKitGlue

+ (void)accessibilityInitializeBundle
{
  if (+[AXVectorKitGlue accessibilityInitializeBundle]::onceToken != -1)
  {
    +[AXVectorKitGlue accessibilityInitializeBundle];
  }
}

void __48__AXVectorKitGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_304_0 withPreValidationHandler:&__block_literal_global_337 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_346];
}

uint64_t __48__AXVectorKitGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"VKMapCanvas"];
  [v2 validateClass:@"VKMapView" isKindOfClass:@"CALayer"];
  [v2 validateClass:@"VKMapView" hasInstanceMethod:@"convertPoint: toCoordinateFromLayer:" withFullSignature:{"{?=dd}", "{CGPoint=dd}", "@", 0}];
  [v2 validateClass:@"VKMapView" hasInstanceMethod:@"convertCoordinate: toPointToLayer:" withFullSignature:{"{CGPoint=dd}", "{?=dd}", "@", 0}];
  [v2 validateClass:@"VKMapView" hasInstanceMethod:@"roadLabelTilesInScene" withFullSignature:{"@", 0}];
  [v2 validateClass:@"VKMapView" hasInstanceMethod:@"localizeLabels" withFullSignature:{"B", 0}];
  [v2 validateClass:@"_MKAnnotationViewCustomFeatureAnnotation"];
  [v2 validateClass:@"_MKAnnotationViewCustomFeatureAnnotation" hasInstanceMethod:@"annotationView" withFullSignature:{"@", 0}];

  return 1;
}

uint64_t __48__AXVectorKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setOverrideProcessName:@"VectorKit"];
  [v2 setValidationTargetName:@"VectorKit Accessibility Bundle"];
  v3 = AXPerformValidationChecks();

  return v3;
}

void __48__AXVectorKitGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"VKMapCanvasAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VKMapViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VKMapCameraControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VKCameraDelegateMediatorAccessibility" canInteractWithTargetClass:1];
}

@end