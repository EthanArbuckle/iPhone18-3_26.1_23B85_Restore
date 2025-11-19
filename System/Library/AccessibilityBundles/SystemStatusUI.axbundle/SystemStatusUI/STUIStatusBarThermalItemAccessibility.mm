@interface STUIStatusBarThermalItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)imageForUpdate:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation STUIStatusBarThermalItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STUIStatusBarItemUpdate"];
  [v3 validateClass:@"STUIStatusBarThermalItem" isKindOfClass:@"STUIStatusBarIndicatorItem"];
  [v3 validateClass:@"STUIStatusBarIndicatorItem" hasProperty:@"imageView" withType:"@"];
  [v3 validateClass:@"STStatusBarData" hasProperty:@"thermalEntry" withType:"@"];
  [v3 validateClass:@"STUIStatusBarItemUpdate" hasProperty:@"data" withType:"@"];
  [v3 validateClass:@"STStatusBarDataThermalEntry" hasProperty:@"color" withType:"q"];
  [v3 validateClass:@"STUIStatusBarThermalItem" hasInstanceMethod:@"imageForUpdate:" withFullSignature:{"@", "@", 0}];
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

- (id)imageForUpdate:(id)a3
{
  v7.receiver = self;
  v7.super_class = STUIStatusBarThermalItemAccessibility;
  v4 = a3;
  v5 = [(STUIStatusBarThermalItemAccessibility *)&v7 imageForUpdate:v4];
  [(STUIStatusBarThermalItemAccessibility *)self _accessibilitySetRetainedValue:v4 forKey:@"AccessibilityStatusBarUpdateData", v7.receiver, v7.super_class];

  [(STUIStatusBarThermalItemAccessibility *)self _accessibilityLoadAccessibilityInformation];

  return v5;
}

@end