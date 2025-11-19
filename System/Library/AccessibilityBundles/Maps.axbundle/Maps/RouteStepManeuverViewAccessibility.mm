@interface RouteStepManeuverViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation RouteStepManeuverViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"RouteStepManeuverView" hasInstanceMethod:@"primaryTextLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"RouteStepManeuverView" hasInstanceMethod:@"secondaryTextLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"RouteStepManeuverView" hasInstanceMethod:@"tertiaryTextLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(RouteStepManeuverViewAccessibility *)self safeUIViewForKey:@"primaryTextLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [(RouteStepManeuverViewAccessibility *)self safeUIViewForKey:@"secondaryTextLabel"];
  v6 = [v5 accessibilityLabel];

  v7 = [(RouteStepManeuverViewAccessibility *)self safeUIViewForKey:@"tertiaryTextLabel"];
  v8 = [v7 accessibilityLabel];

  v9 = __UIAXStringForVariables();

  return v9;
}

@end