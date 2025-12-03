@interface AAUIAppleAccountHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (AAUIAppleAccountHeaderViewAccessibility)initWithLabelInsets:(UIEdgeInsets)insets;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AAUIAppleAccountHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AAUIAppleAccountHeaderView" hasInstanceMethod:@"initWithLabelInsets:" withFullSignature:{"@", "{UIEdgeInsets=dddd}", 0}];
  [validationsCopy validateClass:@"AAUIAppleAccountHeaderView" hasInstanceMethod:@"imageControl" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = AAUIAppleAccountHeaderViewAccessibility;
  [(AAUIAppleAccountHeaderViewAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(AAUIAppleAccountHeaderViewAccessibility *)self safeValueForKey:@"imageControl"];
  [v3 setIsAccessibilityElement:1];
  v4 = accessibilityLocalizedString(@"AccountImage");
  [v3 setAccessibilityLabel:v4];

  objc_opt_class();
  v5 = [v3 safeValueForKey:@"_label"];
  v6 = __UIAccessibilityCastAsClass();

  text = [v6 text];
  [v3 setAccessibilityValue:text];

  [v3 setAccessibilityRespondsToUserInteraction:1];
}

- (AAUIAppleAccountHeaderViewAccessibility)initWithLabelInsets:(UIEdgeInsets)insets
{
  v6.receiver = self;
  v6.super_class = AAUIAppleAccountHeaderViewAccessibility;
  v3 = [(AAUIAppleAccountHeaderViewAccessibility *)&v6 initWithLabelInsets:insets.top, insets.left, insets.bottom, insets.right];
  v4 = v3;
  if (v3)
  {
    [(AAUIAppleAccountHeaderViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  }

  return v4;
}

@end