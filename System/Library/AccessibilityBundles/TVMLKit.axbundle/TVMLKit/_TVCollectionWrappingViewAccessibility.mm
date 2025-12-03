@interface _TVCollectionWrappingViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setHeaderView:(id)view;
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
    accessibilityTraits = [v4 accessibilityTraits];
    [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits];
  }
}

- (void)setHeaderView:(id)view
{
  v4.receiver = self;
  v4.super_class = _TVCollectionWrappingViewAccessibility;
  [(_TVCollectionWrappingViewAccessibility *)&v4 setHeaderView:view];
  [(_TVCollectionWrappingViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end