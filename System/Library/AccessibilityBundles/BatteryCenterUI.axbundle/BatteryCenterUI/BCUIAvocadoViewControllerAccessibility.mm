@interface BCUIAvocadoViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axKeySuffixForParts:(unint64_t)parts;
- (id)_axLabelForBatteryDevice:(id)device;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_configureBatteryDeviceView:(id)view withBatteryDevice:(id)device transitionCoordinator:(id)coordinator;
@end

@implementation BCUIAvocadoViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BCUIAvocadoViewController" hasInstanceMethod:@"invalidateBatteryDeviceState" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"BCUIAvocadoViewController" hasInstanceMethod:@"_configureBatteryDeviceView:withBatteryDevice:transitionCoordinator:" withFullSignature:{"v", "@", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = BCUIAvocadoViewControllerAccessibility;
  [(BCUIAvocadoViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  AXPerformSafeBlock();
}

- (void)_configureBatteryDeviceView:(id)view withBatteryDevice:(id)device transitionCoordinator:(id)coordinator
{
  viewCopy = view;
  deviceCopy = device;
  coordinatorCopy = coordinator;
  v22.receiver = self;
  v22.super_class = BCUIAvocadoViewControllerAccessibility;
  [(BCUIAvocadoViewControllerAccessibility *)&v22 _configureBatteryDeviceView:viewCopy withBatteryDevice:deviceCopy transitionCoordinator:coordinatorCopy];
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();

  name = [v11 name];
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
  [viewCopy setAccessibilityLabel:{v21, v13, v17, v18, v19, v20, @"__AXStringForVariablesSentinel"}];

  [viewCopy setIsAccessibilityElement:v11 != 0];
  [viewCopy setAccessibilityTraits:*MEMORY[0x29EDC7FD0]];
}

- (id)_axLabelForBatteryDevice:(id)device
{
  deviceCopy = device;
  vendor = [deviceCopy vendor];
  accessoryCategory = [deviceCopy accessoryCategory];
  v7 = [deviceCopy safeIntegerForKey:@"transportType"];
  if (vendor == 2)
  {
    v16 = @"battery.center.beats";
    goto LABEL_32;
  }

  if (vendor != 1)
  {
    v17 = accessoryCategory - 1;
    if ((accessoryCategory - 1) < 0xA)
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
  productIdentifier = [deviceCopy productIdentifier];
  parts = [deviceCopy parts];
  if (v8 == 2)
  {
    if (productIdentifier == *MEMORY[0x29EDBFCE0] || productIdentifier == *MEMORY[0x29EDBFD30])
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

  v11 = parts;
  v12 = *MEMORY[0x29EDBFCF8];
  if (productIdentifier == *MEMORY[0x29EDBFCD8] || productIdentifier == *MEMORY[0x29EDBFCF0] || productIdentifier == v12)
  {
    if (productIdentifier == v12)
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

  if (productIdentifier == *MEMORY[0x29EDBFCE8])
  {
    v16 = @"battery.center.beats.x";
    goto LABEL_32;
  }

  if (productIdentifier == *MEMORY[0x29EDBFD00])
  {
    v16 = @"battery.center.powerbeats";
    goto LABEL_32;
  }

  if (productIdentifier == *MEMORY[0x29EDBFD08])
  {
    v16 = @"battery.center.beats.solo";
    goto LABEL_32;
  }

  if (productIdentifier == *MEMORY[0x29EDBFD10])
  {
    v16 = @"battery.center.powerbeats.4";
    goto LABEL_32;
  }

  if (productIdentifier == *MEMORY[0x29EDBFD18])
  {
    v16 = @"battery.center.beats.solo.pro";
    goto LABEL_32;
  }

  if (productIdentifier == *MEMORY[0x29EDBFD20])
  {
    v16 = @"battery.center.beats.studio";
    goto LABEL_32;
  }

  if (productIdentifier == *MEMORY[0x29EDBFD28])
  {
    v23 = [(BCUIAvocadoViewControllerAccessibility *)self _axKeySuffixForParts:parts];
    v16 = @"battery.center.beats.powerbeats.pro";
    v24 = [@"battery.center.beats.powerbeats.pro" stringByAppendingString:v23];

    goto LABEL_32;
  }

  if (productIdentifier != *MEMORY[0x29EDBFCD0])
  {
LABEL_28:
    v17 = accessoryCategory - 1;
    if ((accessoryCategory - 1) < 0xA)
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

- (id)_axKeySuffixForParts:(unint64_t)parts
{
  v3 = @".left";
  v4 = @".case";
  v5 = parts & 3;
  if ((parts & 4) == 0)
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

  if (parts)
  {
    return v3;
  }

  else
  {
    return &stru_2A21231E0;
  }
}

@end