@interface STUIStatusBarThermalItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)imageForUpdate:(id)update;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation STUIStatusBarThermalItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STUIStatusBarItemUpdate"];
  [validationsCopy validateClass:@"STUIStatusBarThermalItem" isKindOfClass:@"STUIStatusBarIndicatorItem"];
  [validationsCopy validateClass:@"STUIStatusBarIndicatorItem" hasProperty:@"imageView" withType:"@"];
  [validationsCopy validateClass:@"STStatusBarData" hasProperty:@"thermalEntry" withType:"@"];
  [validationsCopy validateClass:@"STUIStatusBarItemUpdate" hasProperty:@"data" withType:"@"];
  [validationsCopy validateClass:@"STStatusBarDataThermalEntry" hasProperty:@"color" withType:"q"];
  [validationsCopy validateClass:@"STUIStatusBarThermalItem" hasInstanceMethod:@"imageForUpdate:" withFullSignature:{"@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = STUIStatusBarThermalItemAccessibility;
  [(STUIStatusBarThermalItemAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(STUIStatusBarThermalItemAccessibility *)self _accessibilityValueForKey:@"AccessibilityStatusBarUpdateData"];
  MEMORY[0x29ED3ADB0](@"STUIStatusBarItemUpdate");
  if (objc_opt_isKindOfClass())
  {
    v4 = [(STUIStatusBarThermalItemAccessibility *)self safeValueForKey:@"imageView"];
    v5 = [v3 safeValueForKeyPath:@"data.thermalEntry"];
    v6 = [v5 safeIntegerForKey:@"color"];

    if (v6 > 5)
    {
      v7 = 0;
    }

    else
    {
      v7 = accessibilityLocalizedString(off_29F306E48[v6]);
    }

    [v4 setIsAccessibilityElement:1];
    [v4 setAccessibilityLabel:v7];
  }
}

- (id)imageForUpdate:(id)update
{
  v7.receiver = self;
  v7.super_class = STUIStatusBarThermalItemAccessibility;
  updateCopy = update;
  v5 = [(STUIStatusBarThermalItemAccessibility *)&v7 imageForUpdate:updateCopy];
  [(STUIStatusBarThermalItemAccessibility *)self _accessibilitySetRetainedValue:updateCopy forKey:@"AccessibilityStatusBarUpdateData", v7.receiver, v7.super_class];

  [(STUIStatusBarThermalItemAccessibility *)self _accessibilityLoadAccessibilityInformation];

  return v5;
}

@end