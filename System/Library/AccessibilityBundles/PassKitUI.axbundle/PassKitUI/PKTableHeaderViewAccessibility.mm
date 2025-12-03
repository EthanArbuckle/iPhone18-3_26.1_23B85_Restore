@interface PKTableHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation PKTableHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKTableHeaderView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKTableHeaderView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PKTableHeaderViewAccessibility;
  [(PKTableHeaderViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(PKTableHeaderViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKTableHeaderViewAccessibility;
  [(PKTableHeaderViewAccessibility *)&v3 layoutSubviews];
  [(PKTableHeaderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end