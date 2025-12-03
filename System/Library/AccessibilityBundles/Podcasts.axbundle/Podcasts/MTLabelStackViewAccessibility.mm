@interface MTLabelStackViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MTLabelStackViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTLabelStackView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTLabelStackView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(MTLabelStackViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  accessibilityLabel = [v4 accessibilityLabel];
  objc_opt_class();
  v6 = [(MTLabelStackViewAccessibility *)self safeValueForKey:@"subtitleLabel"];
  v7 = __UIAccessibilityCastAsClass();

  accessibilityLabel2 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end