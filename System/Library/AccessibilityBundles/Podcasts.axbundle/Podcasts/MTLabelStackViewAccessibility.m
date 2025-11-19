@interface MTLabelStackViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation MTLabelStackViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTLabelStackView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTLabelStackView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(MTLabelStackViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 accessibilityLabel];
  objc_opt_class();
  v6 = [(MTLabelStackViewAccessibility *)self safeValueForKey:@"subtitleLabel"];
  v7 = __UIAccessibilityCastAsClass();

  v10 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end