@interface NavSignViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation NavSignViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NavSignView" hasInstanceMethod:@"majorLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NavSignView" hasInstanceMethod:@"minorLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NavSignLabel" isKindOfClass:@"UILabel"];
  [validationsCopy validateClass:@"NavSignView" hasInstanceMethod:@"maneuverSign" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GuidanceManeuverArtwork" hasInstanceMethod:@"maneuver" withFullSignature:{"i", 0}];
  [validationsCopy validateClass:@"NavManeuverSignView" hasInstanceMethod:@"maneuverGuidanceInfo" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NavSignManeuverGuidanceInfo" hasInstanceMethod:@"shieldInfo" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NavSignManeuverGuidanceInfo" hasInstanceMethod:@"maneuverArtwork" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NavSignShieldInfo" hasInstanceMethod:@"shieldText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NavSignManeuverGuidanceInfo" hasInstanceMethod:@"minorText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKServerFormattedString" hasInstanceMethod:@"geoServerString" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(NavSignViewAccessibility *)self safeValueForKey:@"majorLabel"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 _accessibilityViewIsVisible])
  {
    accessibilityLabel = [v4 accessibilityLabel];
  }

  else
  {
    accessibilityLabel = &stru_2A21E4020;
  }

  objc_opt_class();
  v6 = [(NavSignViewAccessibility *)self safeValueForKey:@"minorLabel"];
  v7 = __UIAccessibilityCastAsClass();

  if ([v7 _accessibilityViewIsVisible])
  {
    accessibilityLabel2 = [v7 accessibilityLabel];
    v8 = __UIAXStringForVariables();

    accessibilityLabel = v8;
  }

  v9 = __UIAXStringForVariables();

  return v9;
}

@end