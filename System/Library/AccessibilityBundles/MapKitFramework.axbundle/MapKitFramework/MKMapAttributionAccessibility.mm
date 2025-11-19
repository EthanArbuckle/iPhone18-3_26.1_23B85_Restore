@interface MKMapAttributionAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation MKMapAttributionAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MKMapAttribution" hasInstanceMethod:@"initWithStringAttributes:regionalAttributions:underlineText:applyLinkAttribution:scale:" withFullSignature:{"@", "@", "@", "B", "B", "d", 0}];
  [v3 validateClass:@"MKMapAttribution" hasInstanceVariable:@"_string" withType:"NSAttributedString"];
  [v3 validateClass:@"GEOAttribution" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GEOAttribution" hasInstanceMethod:@"logo" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GEOResourceManifestManager"];
  [v3 validateClass:@"GEOResourceManifestManager" hasClassMethod:@"modernManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GEOResourceManifestManager" hasInstanceMethod:@"activeTileGroup" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GEOActiveTileGroup" hasInstanceMethod:@"attributions" withFullSignature:{"@", 0}];
}

@end