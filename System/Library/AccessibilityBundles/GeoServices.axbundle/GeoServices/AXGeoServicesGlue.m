@interface AXGeoServicesGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXGeoServicesGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXGeoServicesGlue accessibilityInitializeBundle];
  }
}

void __50__AXGeoServicesGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_313 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_322];
}

uint64_t __50__AXGeoServicesGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"GEOVectorTile"];
  [v2 validateClass:@"GEOVectorTile" hasInstanceMethod:@"buildingFootprints" withFullSignature:{"@", 0}];
  [v2 validateClass:@"GEOVectorTile" hasInstanceMethod:@"buildingFootprintsCount" withFullSignature:{"Q", 0}];
  [v2 validateClass:@"GEOVectorTile" hasInstanceMethod:@"forEachRoad:" withFullSignature:{"v", "@?", 0}];
  [v2 validateClass:@"GEOPlaceCollection" hasInstanceMethod:@"publisherAttribution" withFullSignature:{"@", 0}];
  [v2 validateProtocol:@"GEOCollectionPublisherAttribution" hasRequiredInstanceMethod:@"displayName"];

  return 1;
}

uint64_t __50__AXGeoServicesGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setOverrideProcessName:@"GeoServices"];
  [v2 setValidationTargetName:@"GeoServices Accessibility Bundle"];

  return MEMORY[0x2A1C5E698]();
}

void __50__AXGeoServicesGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"GEOVectorTileAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"GEOComposedRouteAccessibility" canInteractWithTargetClass:1];
}

@end