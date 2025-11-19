@interface NavSignViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation NavSignViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NavSignView" hasInstanceMethod:@"majorLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NavSignView" hasInstanceMethod:@"minorLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NavSignLabel" isKindOfClass:@"UILabel"];
  [v3 validateClass:@"NavSignView" hasInstanceMethod:@"maneuverSign" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GuidanceManeuverArtwork" hasInstanceMethod:@"maneuver" withFullSignature:{"i", 0}];
  [v3 validateClass:@"NavManeuverSignView" hasInstanceMethod:@"maneuverGuidanceInfo" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NavSignManeuverGuidanceInfo" hasInstanceMethod:@"shieldInfo" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NavSignManeuverGuidanceInfo" hasInstanceMethod:@"maneuverArtwork" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NavSignShieldInfo" hasInstanceMethod:@"shieldText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NavSignManeuverGuidanceInfo" hasInstanceMethod:@"minorText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MKServerFormattedString" hasInstanceMethod:@"geoServerString" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(NavSignViewAccessibility *)self safeValueForKey:@"majorLabel"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 _accessibilityViewIsVisible])
  {
    v5 = [v4 accessibilityLabel];
  }

  else
  {
    v5 = &stru_2A21E4020;
  }

  objc_opt_class();
  v6 = [(NavSignViewAccessibility *)self safeValueForKey:@"minorLabel"];
  v7 = __UIAccessibilityCastAsClass();

  if ([v7 _accessibilityViewIsVisible])
  {
    v11 = [v7 accessibilityLabel];
    v8 = __UIAXStringForVariables();

    v5 = v8;
  }

  v9 = __UIAXStringForVariables();

  return v9;
}

@end