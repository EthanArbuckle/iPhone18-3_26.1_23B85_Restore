@interface SearchHeaderCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateTraits;
- (void)layoutSubviews;
@end

@implementation SearchHeaderCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CallsSearch.SearchHeaderCell" isKindOfClass:@"UIView"];
  [v3 validateClass:@"CallsSearch.SearchHeaderCell" hasSwiftField:@"titleLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"CallsSearch.SearchHeaderCell" isKindOfClass:@"UIView"];
}

- (void)_axUpdateTraits
{
  objc_opt_class();
  v3 = [(SearchHeaderCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = SearchHeaderCellAccessibility;
  [(SearchHeaderCellAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(SearchHeaderCellAccessibility *)self _axUpdateTraits];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SearchHeaderCellAccessibility;
  [(SearchHeaderCellAccessibility *)&v3 layoutSubviews];
  [(SearchHeaderCellAccessibility *)self _axUpdateTraits];
}

@end