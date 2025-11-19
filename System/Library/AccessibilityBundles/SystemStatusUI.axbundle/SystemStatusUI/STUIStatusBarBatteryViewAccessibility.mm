@interface STUIStatusBarBatteryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilitySupportsActivateAction;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_axInStatusBar;
@end

@implementation STUIStatusBarBatteryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STUIStatusBar"];
  [v3 validateClass:@"STUIStatusBarBatteryView" isKindOfClass:@"_UIBatteryView"];
}

- (id)accessibilityLabel
{
  v2 = [(STUIStatusBarBatteryViewAccessibility *)self accessibilityUserDefinedLabel];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    [v5 chargePercent];
    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"status.battery.capacity");
    v8 = AXFormatFloatWithPercentage();
    v9 = [v6 stringWithFormat:v7, v8];

    v10 = 0;
    if ([v5 saverModeActive])
    {
      v10 = accessibilityLocalizedString(@"status.low.power.mode");
    }

    v4 = __UIAXStringForVariables();
  }

  return v4;
}

- (id)accessibilityValue
{
  v3 = [(STUIStatusBarBatteryViewAccessibility *)self accessibilityUserDefinedValue];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    goto LABEL_13;
  }

  v12 = 0;
  objc_opt_class();
  v6 = __UIAccessibilityCastAsClass();
  if ([v6 showsInlineChargingIndicator])
  {
    v7 = [v6 chargingState];
    if ((v7 - 1) >= 2)
    {
      if (v7)
      {
        v11.receiver = self;
        v11.super_class = STUIStatusBarBatteryViewAccessibility;
        v9 = [(STUIStatusBarBatteryViewAccessibility *)&v11 accessibilityValue];
        goto LABEL_11;
      }

      v8 = @"status.not.charging";
    }

    else
    {
      v8 = @"status.battery.charging";
    }

    v9 = accessibilityLocalizedString(v8);
LABEL_11:
    v5 = v9;
    goto LABEL_12;
  }

  v5 = 0;
LABEL_12:

LABEL_13:

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = STUIStatusBarBatteryViewAccessibility;
  return *MEMORY[0x29EDC7FF0] | [(STUIStatusBarBatteryViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580] | *MEMORY[0x29EDC74F8];
}

- (BOOL)_accessibilitySupportsActivateAction
{
  if (([(STUIStatusBarBatteryViewAccessibility *)self _axInStatusBar]& 1) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = STUIStatusBarBatteryViewAccessibility;
  return [(STUIStatusBarBatteryViewAccessibility *)&v4 _accessibilitySupportsActivateAction];
}

- (void)_axInStatusBar
{
  if (result)
  {
    v1 = [result _accessibilityAncestorIsKindOf:MEMORY[0x29ED3ADB0](@"STUIStatusBar")];

    return (v1 != 0);
  }

  return result;
}

@end