@interface FilterHeaderCellAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation FilterHeaderCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = FilterHeaderCellAccessibility;
  [(FilterHeaderCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(FilterHeaderCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

@end