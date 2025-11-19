@interface ExpandingDetailDescriptionCellAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation ExpandingDetailDescriptionCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = ExpandingDetailDescriptionCellAccessibility;
  [(ExpandingDetailDescriptionCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(ExpandingDetailDescriptionCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

@end