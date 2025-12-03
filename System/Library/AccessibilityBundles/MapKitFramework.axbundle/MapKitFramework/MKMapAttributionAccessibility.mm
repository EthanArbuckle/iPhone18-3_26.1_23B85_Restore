@interface MKMapAttributionAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation MKMapAttributionAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MKMapAttribution" hasInstanceMethod:@"initWithStringAttributes:regionalAttributions:underlineText:applyLinkAttribution:scale:" withFullSignature:{"@", "@", "@", "B", "B", "d", 0}];
  [validationsCopy validateClass:@"MKMapAttribution" hasInstanceVariable:@"_string" withType:"NSAttributedString"];
  [validationsCopy validateClass:@"GEOAttribution" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GEOAttribution" hasInstanceMethod:@"logo" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GEOResourceManifestManager"];
  [validationsCopy validateClass:@"GEOResourceManifestManager" hasClassMethod:@"modernManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GEOResourceManifestManager" hasInstanceMethod:@"activeTileGroup" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GEOActiveTileGroup" hasInstanceMethod:@"attributions" withFullSignature:{"@", 0}];
}

@end