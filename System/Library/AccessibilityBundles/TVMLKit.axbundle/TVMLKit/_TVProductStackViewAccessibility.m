@interface _TVProductStackViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setTitleView:(id)a3;
@end

@implementation _TVProductStackViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_TVProductStackView" hasInstanceMethod:@"setTitleView:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"_TVProductStackView" hasInstanceMethod:@"titleView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = _TVProductStackViewAccessibility;
  [(_TVProductStackViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(_TVProductStackViewAccessibility *)self safeValueForKey:@"titleView"];
  v4 = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | v4];
}

- (void)setTitleView:(id)a3
{
  v4.receiver = self;
  v4.super_class = _TVProductStackViewAccessibility;
  [(_TVProductStackViewAccessibility *)&v4 setTitleView:a3];
  [(_TVProductStackViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end