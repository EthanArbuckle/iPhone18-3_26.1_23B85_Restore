@interface VUICollectionHeaderViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMarkupSubviews;
@end

@implementation VUICollectionHeaderViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = VUICollectionHeaderViewAccessibility;
  [(VUICollectionHeaderViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(VUICollectionHeaderViewAccessibility *)self _accessibilityMarkupSubviews];
}

- (void)_accessibilityMarkupSubviews
{
  objc_opt_class();
  v3 = [(VUICollectionHeaderViewAccessibility *)self safeValueForKey:@"titleTextView"];
  v4 = __UIAccessibilityCastAsClass();

  accessibilityTraits = [v4 accessibilityTraits];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits];
}

@end