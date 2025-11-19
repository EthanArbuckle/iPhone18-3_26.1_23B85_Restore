@interface DataTypeDetailDescriptionCellAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation DataTypeDetailDescriptionCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = DataTypeDetailDescriptionCellAccessibility;
  [(DataTypeDetailDescriptionCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(DataTypeDetailDescriptionCellAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_6];
  [v3 setIsAccessibilityElement:1];
}

@end