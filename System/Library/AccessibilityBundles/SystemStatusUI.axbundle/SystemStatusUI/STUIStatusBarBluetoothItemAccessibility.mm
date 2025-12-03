@interface STUIStatusBarBluetoothItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation STUIStatusBarBluetoothItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STUIStatusBarBluetoothItem" isKindOfClass:@"STUIStatusBarIndicatorItem"];
  [validationsCopy validateClass:@"STUIStatusBarIndicatorItem" hasProperty:@"imageView" withType:"@"];
  [validationsCopy validateClass:@"STUIStatusBarItemUpdate" hasProperty:@"data" withType:"@"];
  [validationsCopy validateClass:@"STStatusBarData" hasProperty:@"bluetoothEntry" withType:"@"];
  [validationsCopy validateClass:@"STStatusBarDataEntry" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"STStatusBarDataBatteryEntry" hasInstanceMethod:@"capacity" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"STStatusBarDataBluetoothEntry" hasInstanceMethod:@"state" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"STStatusBarDataBluetoothEntry" hasInstanceMethod:@"batteryEntry" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v27.receiver = self;
  v27.super_class = STUIStatusBarBluetoothItemAccessibility;
  [(STUIStatusBarBluetoothItemAccessibility *)&v27 _accessibilityLoadAccessibilityInformation];
  v3 = [(STUIStatusBarBluetoothItemAccessibility *)self _accessibilityValueForKey:@"AccessibilityStatusBarUpdateData"];
  v26 = 0;
  objc_opt_class();
  v4 = [(STUIStatusBarBluetoothItemAccessibility *)self safeValueForKey:@"imageView"];
  v5 = __UIAccessibilityCastAsClass();

  image = [v5 image];
  accessibilityIdentifier = [image accessibilityIdentifier];

  if (([accessibilityIdentifier isEqualToString:@"bluetooth"] & 1) != 0 || objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"headphones"))
  {
    v8 = accessibilityLocalizedString(@"bluetooth");
    if (!v3)
    {
LABEL_22:
      [v5 setIsAccessibilityElement:{1, v23, v24}];
      [v5 setAccessibilityLabel:v8];
      accessibilityTraits = [v5 accessibilityTraits];
      [v5 setAccessibilityTraits:accessibilityTraits & ~*MEMORY[0x29EDC7F88]];

      goto LABEL_23;
    }

    v9 = [v3 safeValueForKeyPath:@"data.bluetoothEntry"];
    v10 = v9;
    if (!v9)
    {
LABEL_21:

      goto LABEL_22;
    }

    if ([v9 safeBoolForKey:@"isEnabled"])
    {
      v11 = [v10 safeIntegerForKey:@"state"];
      if (v11 > 2)
      {
        goto LABEL_10;
      }

      v12 = off_29F306EA0[v11];
    }

    else
    {
      v12 = @"bluetooth.off";
    }

    v13 = accessibilityLocalizedString(v12);

    v8 = v13;
LABEL_10:
    v14 = [v3 safeValueForKeyPath:@"data.bluetoothEntry.batteryEntry"];
    v15 = v14;
    if (!v14)
    {
LABEL_20:

      goto LABEL_21;
    }

    v16 = [v14 safeStringForKey:@"detailString"];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v25[0] = MEMORY[0x29EDCA5F8];
      v25[1] = 3221225472;
      v25[2] = __85__STUIStatusBarBluetoothItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
      v25[3] = &unk_29F306DB0;
      v25[4] = self;
      [v5 setAccessibilityValueBlock:v25];
      if ([v15 safeIntegerForKey:@"capacity"] < 1)
      {
        v20 = 0;
        goto LABEL_19;
      }

      if ([accessibilityIdentifier isEqualToString:@"headphones"])
      {
        v19 = @"status.bluetooth.headphones.battery.charge";
      }

      else
      {
        v19 = @"status.bluetooth.generic.battery.charge";
      }

      v18 = accessibilityLocalizedString(v19);
    }

    v20 = v18;
LABEL_19:
    v23 = v20;
    v24 = @"__AXStringForVariablesSentinel";
    v21 = __UIAXStringForVariables();

    v8 = v21;
    goto LABEL_20;
  }

LABEL_23:
}

id __85__STUIStatusBarBluetoothItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _accessibilityValueForKey:@"AccessibilityStatusBarUpdateData"];
  v2 = [v1 safeValueForKeyPath:@"data.bluetoothEntry.batteryEntry"];
  v3 = __UIAccessibilitySafeClass();

  if (![v3 isEnabled] || objc_msgSend(v3, "capacity") < 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = AXFormatFloatWithPercentage();
  }

  return v4;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  v9.receiver = self;
  v9.super_class = STUIStatusBarBluetoothItemAccessibility;
  updateCopy = update;
  v7 = [(STUIStatusBarBluetoothItemAccessibility *)&v9 applyUpdate:updateCopy toDisplayItem:item];
  [(STUIStatusBarBluetoothItemAccessibility *)self _accessibilitySetRetainedValue:updateCopy forKey:@"AccessibilityStatusBarUpdateData", v9.receiver, v9.super_class];

  [(STUIStatusBarBluetoothItemAccessibility *)self _accessibilityLoadAccessibilityInformation];

  return v7;
}

@end