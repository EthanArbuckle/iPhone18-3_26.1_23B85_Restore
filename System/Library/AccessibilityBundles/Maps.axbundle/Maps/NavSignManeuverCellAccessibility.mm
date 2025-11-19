@interface NavSignManeuverCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation NavSignManeuverCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NavSignManeuverCell" hasInstanceMethod:@"primaryTextLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NavSignManeuverCell" hasInstanceMethod:@"secondaryTextLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NavSignManeuverCell" hasInstanceMethod:@"guidanceManeuverView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GuidanceManeuverView" hasInstanceMethod:@"maneuverArtwork" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GuidanceManeuverArtwork" hasInstanceMethod:@"maneuver" withFullSignature:{"i", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(NavSignManeuverCellAccessibility *)self safeUIViewForKey:@"primaryTextLabel"];
  if ([v3 _accessibilityViewIsVisible])
  {
    v4 = [v3 accessibilityLabel];
  }

  else
  {
    v4 = &stru_2A21E4020;
  }

  v5 = [(NavSignManeuverCellAccessibility *)self safeUIViewForKey:@"secondaryTextLabel"];
  if ([v5 _accessibilityViewIsVisible])
  {
    v12 = [v5 accessibilityLabel];
    v13 = @"__AXStringForVariablesSentinel";
    v6 = __UIAXStringForVariables();

    v4 = v6;
  }

  v7 = [(NavSignManeuverCellAccessibility *)self safeValueForKeyPath:@"guidanceManeuverView.maneuverArtwork", v12, v13];
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