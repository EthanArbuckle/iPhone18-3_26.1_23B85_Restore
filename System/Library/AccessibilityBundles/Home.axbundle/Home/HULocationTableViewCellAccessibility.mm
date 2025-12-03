@interface HULocationTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation HULocationTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HULocationTableViewCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HULocationTableViewCell" hasInstanceMethod:@"locationIcon" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(HULocationTableViewCellAccessibility *)self safeValueForKey:@"locationIcon"];
  v4 = __UIAccessibilityCastAsClass();

  superview = [v4 superview];
  if (superview)
  {
    v6 = accessibilityLocalizedString(@"home.locations.current");
  }

  else
  {
    v6 = 0;
  }

  v7 = [(HULocationTableViewCellAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel = [v7 accessibilityLabel];
  v8 = __AXStringForVariables();

  return v8;
}

@end