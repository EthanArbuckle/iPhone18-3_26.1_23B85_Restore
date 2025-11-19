@interface _UIStatusBarBluetoothItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _UIStatusBarBluetoothItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UIStatusBarIndicatorItem";
  [location[0] validateClass:@"_UIStatusBarBluetoothItem" isKindOfClass:?];
  v6 = "@";
  [location[0] validateClass:@"_UIStatusBarIndicatorItem" hasProperty:@"imageView" withType:?];
  [location[0] validateClass:@"_UIStatusBarItemUpdate" hasProperty:@"data" withType:"@"];
  [location[0] validateClass:@"_UIStatusBarData" hasProperty:@"bluetoothEntry" withType:"@"];
  [location[0] validateClass:@"_UIStatusBarDataEntry" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
  v4 = "q";
  [location[0] validateClass:@"_UIStatusBarDataBatteryEntry" hasInstanceMethod:@"capacity" withFullSignature:0];
  v5 = @"_UIStatusBarDataBluetoothEntry";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v5 hasInstanceMethod:@"batteryEntry" withFullSignature:{v6, 0}];
  objc_storeStrong(v8, v7);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v39 = self;
  v38 = a2;
  v37.receiver = self;
  v37.super_class = _UIStatusBarBluetoothItemAccessibility;
  [(_UIStatusBarBluetoothItemAccessibility *)&v37 _accessibilityLoadAccessibilityInformation];
  v36 = [(_UIStatusBarBluetoothItemAccessibility *)v39 _accessibilityValueForKey:@"AccessibilityStatusBarUpdateData"];
  v34 = 0;
  objc_opt_class();
  v22 = [(_UIStatusBarBluetoothItemAccessibility *)v39 safeValueForKey:@"imageView"];
  v33 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v22);
  v32 = MEMORY[0x29EDC9748](v33);
  objc_storeStrong(&v33, 0);
  v35 = v32;
  v21 = [v32 image];
  v31 = [v21 accessibilityIdentifier];
  if ([v31 isEqualToString:{@"bluetooth", MEMORY[0x29EDC9740](v21).n128_f64[0]}] & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", @"headphones"))
  {
    v30 = accessibilityLocalizedString(@"bluetooth");
    v29 = 0;
    if (v36)
    {
      v28 = [v36 safeValueForKeyPath:@"data.bluetoothEntry"];
      if (v28)
      {
        v27 = [v28 safeBoolForKey:@"isEnabled"];
        if (v27)
        {
          v26 = [v28 safeIntegerForKey:@"state"];
          if (v26)
          {
            if (v26 == 1)
            {
              v5 = accessibilityLocalizedString(@"status.bluetooth.connected");
              v6 = v30;
              v30 = v5;
              v4 = MEMORY[0x29EDC9740](v6).n128_u64[0];
            }

            else if (v26 == 2)
            {
              v7 = accessibilityLocalizedString(@"status.bluetooth.headphones.connected");
              v8 = v30;
              v30 = v7;
              v4 = MEMORY[0x29EDC9740](v8).n128_u64[0];
            }
          }

          else
          {
            v9 = accessibilityLocalizedString(@"status.bluetooth.disconnected");
            v10 = v30;
            v30 = v9;
            v4 = MEMORY[0x29EDC9740](v10).n128_u64[0];
          }
        }

        else
        {
          v2 = accessibilityLocalizedString(@"bluetooth.off");
          v3 = v30;
          v30 = v2;
          v4 = MEMORY[0x29EDC9740](v3).n128_u64[0];
        }

        v25 = [v36 safeValueForKeyPath:{@"data.bluetoothEntry.batteryEntry", *&v4}];
        if (v25)
        {
          obj = [v25 safeStringForKey:@"detailString"];
          v23 = 0;
          if (obj)
          {
            objc_storeStrong(&v23, obj);
          }

          else if (([v25 safeIntegerForKey:@"capacity"] & 0x8000000000000000) == 0)
          {
            v11 = AXFormatFloatWithPercentage();
            v12 = v29;
            v29 = v11;
            if ([v31 isEqualToString:{@"headphones", MEMORY[0x29EDC9740](v12).n128_f64[0]}])
            {
              v13 = accessibilityLocalizedString(@"status.bluetooth.headphones.battery.charge");
            }

            else
            {
              v13 = accessibilityLocalizedString(@"status.bluetooth.generic.battery.charge");
            }

            v14 = v23;
            v23 = v13;
            MEMORY[0x29EDC9740](v14);
          }

          v18 = v23;
          v19 = @"__AXStringForVariablesSentinel";
          v15 = __UIAXStringForVariables();
          v16 = v30;
          v30 = v15;
          MEMORY[0x29EDC9740](v16);
          objc_storeStrong(&v23, 0);
          objc_storeStrong(&obj, 0);
        }

        objc_storeStrong(&v25, 0);
      }

      objc_storeStrong(&v28, 0);
    }

    [v35 setAccessibilityValue:{v29, v18, v19}];
    [v35 setIsAccessibilityElement:1];
    [v35 setAccessibilityLabel:v30];
    v20 = v35;
    v17 = [v35 accessibilityTraits];
    [v20 setAccessibilityTraits:v17 & ~*MEMORY[0x29EDC7F88]];
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v7.receiver = v11;
  v7.super_class = _UIStatusBarBluetoothItemAccessibility;
  v8 = [(_UIStatusBarBluetoothItemAccessibility *)&v7 applyUpdate:location[0] toDisplayItem:v9];
  [(_UIStatusBarBluetoothItemAccessibility *)v11 _accessibilitySetRetainedValue:location[0] forKey:@"AccessibilityStatusBarUpdateData"];
  [(_UIStatusBarBluetoothItemAccessibility *)v11 _accessibilityLoadAccessibilityInformation];
  v6 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v6;
}

@end