@interface PXNavigationTitleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PXNavigationTitleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXNavigationTitleView" hasInstanceMethod:@"_titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXNavigationTitleView" hasInstanceMethod:@"_subtitleLabel" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  objc_opt_class();
  v3 = [(PXNavigationTitleViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  _accessibilityViewIsVisible = [v4 _accessibilityViewIsVisible];
  return _accessibilityViewIsVisible;
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(PXNavigationTitleViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(PXNavigationTitleViewAccessibility *)self safeValueForKey:@"_subtitleLabel"];
  v6 = __UIAccessibilityCastAsClass();

  text = [v4 text];
  text2 = [v6 text];
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