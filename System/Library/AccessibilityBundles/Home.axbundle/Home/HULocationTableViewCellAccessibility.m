@interface HULocationTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation HULocationTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HULocationTableViewCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HULocationTableViewCell" hasInstanceMethod:@"locationIcon" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(HULocationTableViewCellAccessibility *)self safeValueForKey:@"locationIcon"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 superview];
  if (v5)
  {
    v6 = accessibilityLocalizedString(@"home.locations.current");
  }

  else
  {
    v6 = 0;
  }

  v7 = [(HULocationTableViewCellAccessibility *)self safeValueForKey:@"titleLabel"];
  v10 = [v7 accessibilityLabel];
  v8 = __AXStringForVariables();

  return v8;
}

@end