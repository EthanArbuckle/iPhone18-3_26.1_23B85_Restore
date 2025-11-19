@interface PSSpecifierToggleContentConfigurationCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSSpecifierToggleContentConfigurationCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Preferences.PSSpecifierToggleContentConfigurationCell" isKindOfClass:@"UIView"];
  [v3 validateClass:@"Preferences.PSSpecifierToggleContentConfigurationCell" hasInstanceMethod:@"refreshCellContentsWithSpecifier:" withFullSignature:{"v", "@", 0}];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = PSSpecifierToggleContentConfigurationCellAccessibility;
  [(PSSpecifierToggleContentConfigurationCellAccessibility *)&v5 refreshCellContentsWithSpecifier:a3];
  v4 = [(PSSpecifierToggleContentConfigurationCellAccessibility *)self safeValueForKey:@"_accessibilityClearChildren"];
}

@end