@interface UIStatusBarThermalColorItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UIStatusBarThermalColorItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIStatusBarThermalColorItemView" hasInstanceVariable:@"_sunlightMode" withType:"B"];
  objc_storeStrong(location, 0);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v21 = a2;
  v20[8] = 0;
  *v20 = [(UIStatusBarThermalColorItemViewAccessibility *)self safeBoolForKey:@"_sunlightMode"];
  v16 = [(UIStatusBarThermalColorItemViewAccessibility *)selfCopy safeValueForKey:@"_thermalColor"];
  intValue = [v16 intValue];
  MEMORY[0x29EDC9740](v16);
  if (intValue)
  {
    switch(intValue)
    {
      case 1:
        v2 = accessibilityLocalizedString(@"status.thermal.warning");
        v3 = *&v20[1];
        *&v20[1] = v2;
        MEMORY[0x29EDC9740](v3);
        break;
      case 2:
        v4 = accessibilityLocalizedString(@"status.thermal.warning.severe");
        v5 = *&v20[1];
        *&v20[1] = v4;
        MEMORY[0x29EDC9740](v5);
        break;
      case 3:
        v6 = accessibilityLocalizedString(@"status.thermal.warning.app.terminate");
        v7 = *&v20[1];
        *&v20[1] = v6;
        MEMORY[0x29EDC9740](v7);
        break;
      case 4:
        v8 = accessibilityLocalizedString(@"status.thermal.warning.device.restart");
        v9 = *&v20[1];
        *&v20[1] = v8;
        MEMORY[0x29EDC9740](v9);
        break;
      case 5:
        v10 = accessibilityLocalizedString(@"status.thermal.warning.blue");
        v11 = *&v20[1];
        *&v20[1] = v10;
        MEMORY[0x29EDC9740](v11);
        break;
      case 6:
        v12 = accessibilityLocalizedString(@"status.thermal.warning.white");
        v13 = *&v20[1];
        *&v20[1] = v12;
        MEMORY[0x29EDC9740](v13);
        break;
    }
  }

  if (!*&v20[1])
  {
    *&v20[1] = accessibilityLocalizedString(@"status.thermal.normal");
    MEMORY[0x29EDC9740](0);
  }

  v18 = 0;
  if (v20[0])
  {
    v19 = accessibilityLocalizedString(@"status.thermal.sunlight.mode");
    v18 = 1;
  }

  v23 = __UIAXStringForVariables();
  if (v18)
  {
    MEMORY[0x29EDC9740](v19);
  }

  objc_storeStrong(&v20[1], 0);
  v14 = v23;

  return v14;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIStatusBarThermalColorItemViewAccessibility;
  return [(UIStatusBarThermalColorItemViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580];
}

@end