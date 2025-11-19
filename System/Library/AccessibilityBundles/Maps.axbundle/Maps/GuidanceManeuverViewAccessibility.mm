@interface GuidanceManeuverViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation GuidanceManeuverViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GuidanceManeuverView" hasInstanceMethod:@"maneuverArtwork" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GuidanceManeuverArtwork" hasInstanceMethod:@"maneuver" withFullSignature:{"i", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(GuidanceManeuverViewAccessibility *)self safeValueForKey:@"maneuverArtwork"];
  v3 = [v2 safeIntForKey:@"maneuver"];

  if (v3)
  {
    v4 = AXMapsStringForManeuverType(v3);
  }

  else
  {
    v4 = &stru_2A21E4020;
  }

  return v4;
}

@end