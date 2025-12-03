@interface _UIStatusBarThermalItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)imageForUpdate:(id)update;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _UIStatusBarThermalItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = @"_UIStatusBarItemUpdate";
  [location[0] validateClass:?];
  v5 = @"_UIStatusBarThermalItem";
  v3 = @"_UIStatusBarIndicatorItem";
  [location[0] validateClass:? isKindOfClass:?];
  v6 = "@";
  [location[0] validateClass:@"_UIStatusBarIndicatorItem" hasProperty:@"imageView" withType:?];
  [location[0] validateClass:@"_UIStatusBarData" hasProperty:@"thermalEntry" withType:"@"];
  [location[0] validateClass:@"_UIStatusBarItemUpdate" hasProperty:@"data" withType:"@"];
  [location[0] validateClass:@"_UIStatusBarDataThermalEntry" hasProperty:@"color" withType:"q"];
  [location[0] validateClass:@"_UIStatusBarThermalItem" hasInstanceMethod:@"imageForUpdate:" withFullSignature:{"@", 0}];
  objc_storeStrong(v8, v7);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v21 = a2;
  v20.receiver = self;
  v20.super_class = _UIStatusBarThermalItemAccessibility;
  [(_UIStatusBarThermalItemAccessibility *)&v20 _accessibilityLoadAccessibilityInformation];
  v19 = [(_UIStatusBarThermalItemAccessibility *)selfCopy _accessibilityValueForKey:@"AccessibilityStatusBarUpdateData"];
  NSClassFromString(&cfstr_Uistatusbarite_3.isa);
  if (objc_opt_isKindOfClass())
  {
    v18 = [(_UIStatusBarThermalItemAccessibility *)selfCopy safeValueForKey:@"imageView"];
    v15 = [v19 safeValueForKeyPath:@"data.thermalEntry"];
    v16 = [v15 safeIntegerForKey:@"color"];
    v2 = MEMORY[0x29EDC9740](v15).n128_u64[0];
    v17[1] = v16;
    v17[0] = 0;
    if (v16)
    {
      if (v16 == 1)
      {
        v5 = accessibilityLocalizedString(@"status.thermal.warning.severe");
        v6 = v17[0];
        v17[0] = v5;
        v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
      }

      else if (v16 == 2)
      {
        v7 = accessibilityLocalizedString(@"status.thermal.warning.app.terminate");
        v8 = v17[0];
        v17[0] = v7;
        v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
      }

      else if (v16 == 3)
      {
        v9 = accessibilityLocalizedString(@"status.thermal.warning.device.restart");
        v10 = v17[0];
        v17[0] = v9;
        v2 = MEMORY[0x29EDC9740](v10).n128_u64[0];
      }

      else if (v16 == 4)
      {
        v11 = accessibilityLocalizedString(@"status.thermal.warning.blue");
        v12 = v17[0];
        v17[0] = v11;
        v2 = MEMORY[0x29EDC9740](v12).n128_u64[0];
      }

      else if (v16 == 5)
      {
        v13 = accessibilityLocalizedString(@"status.thermal.warning.white");
        v14 = v17[0];
        v17[0] = v13;
        v2 = MEMORY[0x29EDC9740](v14).n128_u64[0];
      }
    }

    else
    {
      v3 = accessibilityLocalizedString(@"status.thermal.warning");
      v4 = v17[0];
      v17[0] = v3;
      v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
    }

    [v18 setIsAccessibilityElement:{1, *&v2}];
    [v18 setAccessibilityLabel:v17[0]];
    objc_storeStrong(v17, 0);
    objc_storeStrong(&v18, 0);
  }

  objc_storeStrong(&v19, 0);
}

- (id)imageForUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  v5.receiver = selfCopy;
  v5.super_class = _UIStatusBarThermalItemAccessibility;
  v6 = [(_UIStatusBarThermalItemAccessibility *)&v5 imageForUpdate:location[0]];
  [(_UIStatusBarThermalItemAccessibility *)selfCopy _accessibilitySetRetainedValue:location[0] forKey:@"AccessibilityStatusBarUpdateData"];
  [(_UIStatusBarThermalItemAccessibility *)selfCopy _accessibilityLoadAccessibilityInformation];
  v4 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

@end