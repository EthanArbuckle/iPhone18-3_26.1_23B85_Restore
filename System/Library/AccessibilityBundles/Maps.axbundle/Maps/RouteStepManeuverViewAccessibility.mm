@interface RouteStepManeuverViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation RouteStepManeuverViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"RouteStepManeuverView" hasInstanceMethod:@"primaryTextLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RouteStepManeuverView" hasInstanceMethod:@"secondaryTextLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RouteStepManeuverView" hasInstanceMethod:@"tertiaryTextLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(RouteStepManeuverViewAccessibility *)self safeUIViewForKey:@"primaryTextLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(RouteStepManeuverViewAccessibility *)self safeUIViewForKey:@"secondaryTextLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  v7 = [(RouteStepManeuverViewAccessibility *)self safeUIViewForKey:@"tertiaryTextLabel"];
  accessibilityLabel3 = [v7 accessibilityLabel];

  v9 = __UIAXStringForVariables();

  return v9;
}

@end