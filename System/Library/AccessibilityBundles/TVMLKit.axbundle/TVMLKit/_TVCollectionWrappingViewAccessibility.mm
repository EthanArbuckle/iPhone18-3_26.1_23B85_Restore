@interface _TVCollectionWrappingViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setHeaderView:(id)a3;
@end

@implementation _TVCollectionWrappingViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = _TVCollectionWrappingViewAccessibility;
  [(_TVCollectionWrappingViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(_TVCollectionWrappingViewAccessibility *)self safeValueForKey:@"headerView"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 isAccessibilityElement])
  {
    v5 = [v4 accessibilityTraits];
    [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | v5];
  }
}

- (void)setHeaderView:(id)a3
{
  v4.receiver = self;
  v4.super_class = _TVCollectionWrappingViewAccessibility;
  [(_TVCollectionWrappingViewAccessibility *)&v4 setHeaderView:a3];
  [(_TVCollectionWrappingViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end