@interface _TVProductStackViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setTitleView:(id)view;
@end

@implementation _TVProductStackViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TVProductStackView" hasInstanceMethod:@"setTitleView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"_TVProductStackView" hasInstanceMethod:@"titleView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = _TVProductStackViewAccessibility;
  [(_TVProductStackViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(_TVProductStackViewAccessibility *)self safeValueForKey:@"titleView"];
  accessibilityTraits = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits];
}

- (void)setTitleView:(id)view
{
  v4.receiver = self;
  v4.super_class = _TVProductStackViewAccessibility;
  [(_TVProductStackViewAccessibility *)&v4 setTitleView:view];
  [(_TVProductStackViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end