@interface PSSpecifierToggleContentConfigurationCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSSpecifierToggleContentConfigurationCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Preferences.PSSpecifierToggleContentConfigurationCell" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"Preferences.PSSpecifierToggleContentConfigurationCell" hasInstanceMethod:@"refreshCellContentsWithSpecifier:" withFullSignature:{"v", "@", 0}];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v5.receiver = self;
  v5.super_class = PSSpecifierToggleContentConfigurationCellAccessibility;
  [(PSSpecifierToggleContentConfigurationCellAccessibility *)&v5 refreshCellContentsWithSpecifier:specifier];
  v4 = [(PSSpecifierToggleContentConfigurationCellAccessibility *)self safeValueForKey:@"_accessibilityClearChildren"];
}

@end