@interface NavSignManeuverCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation NavSignManeuverCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NavSignManeuverCell" hasInstanceMethod:@"primaryTextLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NavSignManeuverCell" hasInstanceMethod:@"secondaryTextLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NavSignManeuverCell" hasInstanceMethod:@"guidanceManeuverView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GuidanceManeuverView" hasInstanceMethod:@"maneuverArtwork" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GuidanceManeuverArtwork" hasInstanceMethod:@"maneuver" withFullSignature:{"i", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(NavSignManeuverCellAccessibility *)self safeUIViewForKey:@"primaryTextLabel"];
  if ([v3 _accessibilityViewIsVisible])
  {
    accessibilityLabel = [v3 accessibilityLabel];
  }

  else
  {
    accessibilityLabel = &stru_2A21E4020;
  }

  v5 = [(NavSignManeuverCellAccessibility *)self safeUIViewForKey:@"secondaryTextLabel"];
  if ([v5 _accessibilityViewIsVisible])
  {
    accessibilityLabel2 = [v5 accessibilityLabel];
    v13 = @"__AXStringForVariablesSentinel";
    v6 = __UIAXStringForVariables();

    accessibilityLabel = v6;
  }

  v7 = [(NavSignManeuverCellAccessibility *)self safeValueForKeyPath:@"guidanceManeuverView.maneuverArtwork", accessibilityLabel2, v13];
  v8 = [v7 safeIntForKey:@"maneuver"];

  if (v8)
  {
    v9 = AXMapsStringForManeuverType(v8);
  }

  else
  {
    v9 = &stru_2A21E4020;
  }

  v10 = __UIAXStringForVariables();

  return v10;
}

@end