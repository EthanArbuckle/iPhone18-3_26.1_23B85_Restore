@interface WDManualDataEntryTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setupUIWithDisplayName:(id)name unitName:(id)unitName;
@end

@implementation WDManualDataEntryTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WDManualDataEntryTableViewCell" hasInstanceVariable:@"_valueField" withType:"UITextField"];
  [validationsCopy validateClass:@"WDManualDataEntryTableViewCell" hasInstanceVariable:@"_displayNameLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"WDManualDataEntryTableViewCell" hasInstanceVariable:@"_unitLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"WDManualDataEntryTableViewCell" hasInstanceMethod:@"_setupUIWithDisplayName: unitName:" withFullSignature:{"v", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = WDManualDataEntryTableViewCellAccessibility;
  [(WDManualDataEntryTableViewCellAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(WDManualDataEntryTableViewCellAccessibility *)self safeValueForKey:@"_valueField"];
  v4 = [(WDManualDataEntryTableViewCellAccessibility *)self safeValueForKey:@"_displayNameLabel"];
  v5 = [(WDManualDataEntryTableViewCellAccessibility *)self safeValueForKey:@"_unitLabel"];
  [v4 setIsAccessibilityElement:0];
  [v5 setIsAccessibilityElement:0];
  accessibilityLabel = [(WDManualDataEntryTableViewCellAccessibility *)self _accessibilityValueForKey:@"AXDisplayLabelOverrideKey"];
  if (!accessibilityLabel)
  {
    accessibilityLabel = [v4 accessibilityLabel];
  }

  accessibilityLabel2 = [v5 accessibilityLabel];
  v7 = __UIAXStringForVariables();

  [v3 setAccessibilityLabel:{v7, accessibilityLabel2, @"__AXStringForVariablesSentinel"}];
}

- (void)_setupUIWithDisplayName:(id)name unitName:(id)unitName
{
  v5.receiver = self;
  v5.super_class = WDManualDataEntryTableViewCellAccessibility;
  [(WDManualDataEntryTableViewCellAccessibility *)&v5 _setupUIWithDisplayName:name unitName:unitName];
  [(WDManualDataEntryTableViewCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end