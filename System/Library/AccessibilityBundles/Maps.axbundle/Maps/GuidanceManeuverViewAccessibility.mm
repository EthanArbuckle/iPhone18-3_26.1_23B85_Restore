@interface GuidanceManeuverViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation GuidanceManeuverViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GuidanceManeuverView" hasInstanceMethod:@"maneuverArtwork" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GuidanceManeuverArtwork" hasInstanceMethod:@"maneuver" withFullSignature:{"i", 0}];
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