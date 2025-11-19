@interface BCUIAvocadoViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axKeySuffixForParts:(unint64_t)a3;
- (id)_axLabelForBatteryDevice:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_configureBatteryDeviceView:(id)a3 withBatteryDevice:(id)a4 transitionCoordinator:(id)a5;
@end

@implementation BCUIAvocadoViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BCUIAvocadoViewController" hasInstanceMethod:@"invalidateBatteryDeviceState" withFullSignature:{"v", 0}];
  [v3 validateClass:@"BCUIAvocadoViewController" hasInstanceMethod:@"_configureBatteryDeviceView:withBatteryDevice:transitionCoordinator:" withFullSignature:{"v", "@", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = BCUIAvocadoViewControllerAccessibility;
  [(BCUIAvocadoViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  AXPerformSafeBlock();
}

- (void)_configureBatteryDeviceView:(id)a3 withBatteryDevice:(id)a4 transitionCoordinator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = BCUIAvocadoViewControllerAccessibility;
  [(BCUIAvocadoViewControllerAccessibility *)&v22 _configureBatteryDeviceView:v8 withBatteryDevice:v9 transitionCoordinator:v10];
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();

  v12 = [v11 name];
  v13 = [(BCUIAvocadoViewControllerAccessibility *)self _axLabelForBatteryDevice:v11];
  v14 = MEMORY[0x29EDBA0F8];
  v15 = accessibilityLocalizedString(@"battery.center.device.percent");
  [v11 percentCharge];
  v16 = AXFormatFloatWithPercentage();
  v17 = [v14 stringWithFormat:v15, v16];

  v18 = 0;
  if ([v11 isCharging])
  {
    v18 = accessibilityLocalizedString(@"battery.center.device.charging");
  }

  if ([v11 isLowBattery])
  {
    v19 = accessibilityLocalizedString(@"battery.center.low.battery");
  }

  else
  {
    v19 = 0;
  }

  if ([v11 isLowPowerModeActive])
  {
    v20 = accessibilityLocalizedString(@"battery.center.low.power.mode");
  }

  else
  {
    v20 = 0;
  }

  v21 = __UIAXStringForVariables();
  [v8 setAccessibilityLabel:{v21, v13, v17, v18, v19, v20, @"__AXStringForVariablesSentinel"}];

  [v8 setIsAccessibilityElement:v11 != 0];
  [v8 setAccessibilityTraits:*MEMORY[0x29EDC7FD0]];
}

- (id)_axLabelForBatteryDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 vendor];
  v6 = [v4 accessoryCategory];
  v7 = [v4 safeIntegerForKey:@"transportType"];
  if (v5 == 2)
  {
    v16 = @"battery.center.beats";
    goto LABEL_32;
  }

  if (v5 != 1)
  {
    v17 = v6 - 1;
    if ((v6 - 1) < 0xA)
    {
      v18 = off_29F2A7890;
LABEL_30:
      v16 = v18[v17];
      goto LABEL_32;
    }

LABEL_31:
    v16 = 0;
    goto LABEL_32;
  }

  v8 = v7;
  v9 = [v4 productIdentifier];
  v10 = [v4 parts];
  if (v8 == 2)
  {
    if (v9 == *MEMORY[0x29EDBFCE0] || v9 == *MEMORY[0x29EDBFD30])
    {
      v16 = @"battery.center.case";
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  if (v8 != 3)
  {
    goto LABEL_28;
  }

  v11 = v10;
  v12 = *MEMORY[0x29EDBFCF8];
  if (v9 == *MEMORY[0x29EDBFCD8] || v9 == *MEMORY[0x29EDBFCF0] || v9 == v12)
  {
    if (v9 == v12)
    {
      v15 = [@"battery.center.airpods" stringByAppendingString:@".pro"];
    }

    else
    {
      v15 = @"battery.center.airpods";
    }

    v20 = [(BCUIAvocadoViewControllerAccessibility *)self _axKeySuffixForParts:v11];
    v16 = [(__CFString *)v15 stringByAppendingString:v20];

    if (v16)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  if (v9 == *MEMORY[0x29EDBFCE8])
  {
    v16 = @"battery.center.beats.x";
    goto LABEL_32;
  }

  if (v9 == *MEMORY[0x29EDBFD00])
  {
    v16 = @"battery.center.powerbeats";
    goto LABEL_32;
  }

  if (v9 == *MEMORY[0x29EDBFD08])
  {
    v16 = @"battery.center.beats.solo";
    goto LABEL_32;
  }

  if (v9 == *MEMORY[0x29EDBFD10])
  {
    v16 = @"battery.center.powerbeats.4";
    goto LABEL_32;
  }

  if (v9 == *MEMORY[0x29EDBFD18])
  {
    v16 = @"battery.center.beats.solo.pro";
    goto LABEL_32;
  }

  if (v9 == *MEMORY[0x29EDBFD20])
  {
    v16 = @"battery.center.beats.studio";
    goto LABEL_32;
  }

  if (v9 == *MEMORY[0x29EDBFD28])
  {
    v23 = [(BCUIAvocadoViewControllerAccessibility *)self _axKeySuffixForParts:v10];
    v16 = @"battery.center.beats.powerbeats.pro";
    v24 = [@"battery.center.beats.powerbeats.pro" stringByAppendingString:v23];

    goto LABEL_32;
  }

  if (v9 != *MEMORY[0x29EDBFCD0])
  {
LABEL_28:
    v17 = v6 - 1;
    if ((v6 - 1) < 0xA)
    {
      v18 = off_29F2A7840;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v16 = @"battery.center.magic.mouse";
LABEL_32:
  v21 = accessibilityLocalizedString(v16);

  return v21;
}

- (id)_axKeySuffixForParts:(unint64_t)a3
{
  v3 = @".left";
  v4 = @".case";
  v5 = a3 & 3;
  if ((a3 & 4) == 0)
  {
    v4 = &stru_2A21231E0;
  }

  if (v5 == 2)
  {
    v4 = @".right";
  }

  if (v5 != 1)
  {
    v3 = v4;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return &stru_2A21231E0;
  }
}

@end