@interface LUIPaneHeaderViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)didMoveToWindow;
@end

@implementation LUIPaneHeaderViewAccessibility

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = LUIPaneHeaderViewAccessibility;
  [(LUIPaneHeaderViewAccessibility *)&v3 didMoveToWindow];
  [(LUIPaneHeaderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = LUIPaneHeaderViewAccessibility;
  [(LUIPaneHeaderViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(LUIPaneHeaderViewAccessibility *)self safeValueForKey:@"mTitleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 accessibilityTraits];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | v5];
}

@end