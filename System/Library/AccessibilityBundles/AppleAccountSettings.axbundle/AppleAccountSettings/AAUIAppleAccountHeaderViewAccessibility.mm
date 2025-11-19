@interface AAUIAppleAccountHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (AAUIAppleAccountHeaderViewAccessibility)initWithLabelInsets:(UIEdgeInsets)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AAUIAppleAccountHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AAUIAppleAccountHeaderView" hasInstanceMethod:@"initWithLabelInsets:" withFullSignature:{"@", "{UIEdgeInsets=dddd}", 0}];
  [v3 validateClass:@"AAUIAppleAccountHeaderView" hasInstanceMethod:@"imageControl" withFullSignature:{"@", 0}];
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

  v7 = [v6 text];
  [v3 setAccessibilityValue:v7];

  [v3 setAccessibilityRespondsToUserInteraction:1];
}

- (AAUIAppleAccountHeaderViewAccessibility)initWithLabelInsets:(UIEdgeInsets)a3
{
  v6.receiver = self;
  v6.super_class = AAUIAppleAccountHeaderViewAccessibility;
  v3 = [(AAUIAppleAccountHeaderViewAccessibility *)&v6 initWithLabelInsets:a3.top, a3.left, a3.bottom, a3.right];
  v4 = v3;
  if (v3)
  {
    [(AAUIAppleAccountHeaderViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  }

  return v4;
}

@end