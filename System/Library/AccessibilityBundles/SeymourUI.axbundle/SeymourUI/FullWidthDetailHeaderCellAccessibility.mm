@interface FullWidthDetailHeaderCellAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation FullWidthDetailHeaderCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = FullWidthDetailHeaderCellAccessibility;
  [(FullWidthDetailHeaderCellAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(FullWidthDetailHeaderCellAccessibility *)self _accessibilityDescendantOfType:objc_opt_class()];
  accessibilityTraits = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits];
}

@end