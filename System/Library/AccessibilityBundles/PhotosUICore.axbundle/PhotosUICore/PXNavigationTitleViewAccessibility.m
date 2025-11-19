@interface PXNavigationTitleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PXNavigationTitleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXNavigationTitleView" hasInstanceMethod:@"_titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXNavigationTitleView" hasInstanceMethod:@"_subtitleLabel" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  objc_opt_class();
  v3 = [(PXNavigationTitleViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 _accessibilityViewIsVisible];
  return v5;
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(PXNavigationTitleViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(PXNavigationTitleViewAccessibility *)self safeValueForKey:@"_subtitleLabel"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v4 text];
  v10 = [v6 text];
  v8 = __AXStringForVariables();

  return v8;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PXNavigationTitleViewAccessibility;
  return *MEMORY[0x29EDC7F80] | [(PXNavigationTitleViewAccessibility *)&v3 accessibilityTraits];
}

@end