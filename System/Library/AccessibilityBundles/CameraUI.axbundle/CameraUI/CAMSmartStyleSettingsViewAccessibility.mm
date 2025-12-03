@interface CAMSmartStyleSettingsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CAMSmartStyleSettingsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMSmartStyleSettingsView" hasInstanceMethod:@"_selectAssetsButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMSmartStyleSettingsView" hasInstanceMethod:@"_showGridButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = CAMSmartStyleSettingsViewAccessibility;
  [(CAMSmartStyleSettingsViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(CAMSmartStyleSettingsViewAccessibility *)self safeValueForKey:@"_selectAssetsButton"];
  [v3 _setAccessibilityLabelBlock:&__block_literal_global_1];
  v4 = [(CAMSmartStyleSettingsViewAccessibility *)self safeValueForKey:@"_showGridButton"];
  [v4 _setAccessibilityLabelBlock:&__block_literal_global_488];
}

@end