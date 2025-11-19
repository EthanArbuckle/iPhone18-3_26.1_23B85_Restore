@interface _UIBatteryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)_axInStatusBar;
- (BOOL)isAccessibilityElement;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation _UIBatteryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIStatusBar"];
  v3 = @"_UIBatteryView";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v4 = "B";
  [location[0] validateClass:v3 hasInstanceMethod:@"saverModeActive" withFullSignature:0];
  [location[0] validateClass:v3 hasInstanceMethod:@"chargingState" withFullSignature:{"q", 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"showsInlineChargingIndicator" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (BOOL)isAccessibilityElement
{
  v5 = [(_UIBatteryViewAccessibility *)self storedIsAccessibilityElement];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (!v5)
  {
    return 1;
  }

  v4 = [(_UIBatteryViewAccessibility *)self storedIsAccessibilityElement];
  v7 = [v4 BOOLValue] & 1;
  MEMORY[0x29EDC9740](v4);
  return v7;
}

- (id)accessibilityLabel
{
  v14 = self;
  v13[1] = a2;
  v13[0] = [(_UIBatteryViewAccessibility *)self accessibilityUserDefinedLabel];
  if (v13[0])
  {
    v15 = MEMORY[0x29EDC9748](v13[0]);
    v12 = 1;
  }

  else
  {
    [(_UIBatteryViewAccessibility *)v14 safeCGFloatForKey:@"chargePercent"];
    v11[1] = v2;
    v7 = MEMORY[0x29EDBA0F8];
    v9 = accessibilityLocalizedString(@"status.battery.capacity");
    v8 = AXFormatFloatWithPercentage();
    v11[0] = [v7 stringWithFormat:v9, v8];
    MEMORY[0x29EDC9740](v8);
    v10 = 0;
    if (([(_UIBatteryViewAccessibility *)v14 safeBoolForKey:@"saverModeActive", MEMORY[0x29EDC9740](v9).n128_f64[0]]& 1) != 0)
    {
      v3 = accessibilityLocalizedString(@"status.low.power.mode");
      v4 = v10;
      v10 = v3;
      MEMORY[0x29EDC9740](v4);
    }

    v15 = __UIAXStringForVariables();
    v12 = 1;
    objc_storeStrong(&v10, 0);
    objc_storeStrong(v11, 0);
  }

  objc_storeStrong(v13, 0);
  v5 = v15;

  return v5;
}

- (id)accessibilityValue
{
  v15 = self;
  v14[1] = a2;
  v14[0] = [(_UIBatteryViewAccessibility *)self accessibilityUserDefinedValue];
  if (v14[0])
  {
    v16 = MEMORY[0x29EDC9748](v14[0]);
    v13 = 1;
  }

  else
  {
    v12[8] = 0;
    *v12 = [(_UIBatteryViewAccessibility *)v15 safeBoolForKey:@"showsInlineChargingIndicator"];
    if (v12[0])
    {
      v11 = [(_UIBatteryViewAccessibility *)v15 safeIntegerForKey:@"chargingState"];
      if (v11)
      {
        if ((v11 - 1) > 1)
        {
          v10.receiver = v15;
          v10.super_class = _UIBatteryViewAccessibility;
          v6 = [(_UIBatteryViewAccessibility *)&v10 accessibilityValue];
          v7 = *&v12[1];
          *&v12[1] = v6;
          MEMORY[0x29EDC9740](v7);
        }

        else
        {
          v2 = accessibilityLocalizedString(@"status.battery.charging");
          v3 = *&v12[1];
          *&v12[1] = v2;
          MEMORY[0x29EDC9740](v3);
        }
      }

      else
      {
        v4 = accessibilityLocalizedString(@"status.not.charging");
        v5 = *&v12[1];
        *&v12[1] = v4;
        MEMORY[0x29EDC9740](v5);
      }
    }

    v16 = MEMORY[0x29EDC9748](*&v12[1]);
    v13 = 1;
    objc_storeStrong(&v12[1], 0);
  }

  objc_storeStrong(v14, 0);
  v8 = v16;

  return v8;
}

- (BOOL)_axInStatusBar
{
  if (a1)
  {
    v2 = [a1 _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_UistatusbarBas_0.isa)];
    MEMORY[0x29EDC9740](v2);
    return v2 != 0;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)accessibilityTraits
{
  v6 = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = _UIBatteryViewAccessibility;
  v4 = [(_UIBatteryViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7FF0];
  if ([(_UIBatteryViewAccessibility *)v6 _axInStatusBar])
  {
    v4 |= *MEMORY[0x29EDC7580] | *MEMORY[0x29EDC74F8];
  }

  return v4;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  v5 = self;
  v4 = a2;
  if ([(_UIBatteryViewAccessibility *)self _axInStatusBar])
  {
    return 1;
  }

  v3.receiver = v5;
  v3.super_class = _UIBatteryViewAccessibility;
  return [(_UIBatteryViewAccessibility *)&v3 _accessibilitySupportsActivateAction];
}

- (id)accessibilityHint
{
  v6 = self;
  v5 = a2;
  if ([(_UIBatteryViewAccessibility *)self _axInStatusBar])
  {
    v7 = AXStatusBarItemHint(v6);
  }

  else
  {
    v4.receiver = v6;
    v4.super_class = _UIBatteryViewAccessibility;
    v7 = [(_UIBatteryViewAccessibility *)&v4 accessibilityHint];
  }

  v2 = v7;

  return v2;
}

@end