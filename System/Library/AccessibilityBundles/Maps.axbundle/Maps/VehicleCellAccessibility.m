@interface VehicleCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axLabelForBatterView;
- (id)_axLabelForCellWithVehicle:(id)a3;
- (id)_lableForLprPowerTYpe:(id)a3;
@end

@implementation VehicleCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VehicleCell" hasInstanceMethod:@"setupWithVehicle:cellStyle:isSelected:" withFullSignature:{"v", "@", "q", "B", 0}];
  [v3 validateClass:@"VehicleCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"VehicleCell" hasInstanceVariable:@"_batteryChargeView" withType:"VehicleBatteryView"];
  [v3 validateClass:@"VehicleBatteryView" hasInstanceVariable:@"_percentLabel" withType:"UILabel"];
  [v3 validateClass:@"VehicleBatteryView" hasInstanceVariable:@"_batteryStateAgeView" withType:"BatteryStateAgeView"];
  [v3 validateClass:@"BatteryStateAgeView" hasInstanceVariable:@"_stateUpdatedLabel" withType:"UILabel"];
  [v3 validateClass:@"BatteryStateAgeView" hasInstanceMethod:@"dateOfLastSync" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VehicleBatteryView" hasInstanceMethod:@"vehicle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VGVehicle" hasInstanceMethod:@"licensePlate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VGVehicle" hasInstanceMethod:@"lprPowerType" withFullSignature:{"@", 0}];
}

- (id)_axLabelForCellWithVehicle:(id)a3
{
  v4 = a3;
  v5 = [(VehicleCellAccessibility *)self safeValueForKey:@"_titleLabel"];
  v6 = [v5 accessibilityLabel];

  v7 = __AXStringForVariables();
  v8 = [v4 safeStringForKey:{@"licensePlate", @"__AXStringForVariablesSentinel"}];
  if (([v6 containsString:v8] & 1) == 0)
  {
    v14 = v8;
    v15 = @"__AXStringForVariablesSentinel";
    v9 = __AXStringForVariables();

    v7 = v9;
  }

  v10 = [v4 safeStringForKey:{@"lprPowerType", v14, v15}];
  v11 = [(VehicleCellAccessibility *)self _lableForLprPowerTYpe:v10];
  v16 = [(VehicleCellAccessibility *)self _axLabelForBatterView];
  v12 = __AXStringForVariables();

  return v12;
}

- (id)_lableForLprPowerTYpe:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"EV"])
  {
    v4 = @"VEHICLE_POWER_TYPE_EV";
LABEL_7:
    v5 = AXMapsLocString(v4);
    goto LABEL_8;
  }

  if ([v3 isEqualToString:@"PHEV"])
  {
    v4 = @"VEHICLE_POWER_TYPE_PHEV";
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"FUEL"])
  {
    v4 = @"VEHICLE_POWER_TYPE_FUEL";
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (id)_axLabelForBatterView
{
  objc_opt_class();
  v3 = [(VehicleCellAccessibility *)self safeValueForKey:@"_batteryChargeView"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 isHidden])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 safeValueForKey:@"_percentLabel"];
    v7 = [v6 accessibilityLabel];

    if (v7)
    {
      v8 = MEMORY[0x29EDBA0F8];
      v9 = AXMapsLocString(@"VEHICLE_BATTERY_LEVEL");
      v10 = [v8 localizedStringWithFormat:v9, v7];

      v22 = v10;
      v23 = @"__AXStringForVariablesSentinel";
      v5 = __AXStringForVariables();
    }

    else
    {
      v5 = 0;
    }

    v11 = [v4 safeValueForKey:{@"_batteryStateAgeView", v22, v23}];
    v12 = [v11 safeValueForKey:@"_stateUpdatedLabel"];
    if ([v12 _accessibilityViewIsVisible])
    {
      v13 = [v12 accessibilityLabel];
      v14 = [v13 length];

      if (v14)
      {
        objc_opt_class();
        v15 = [v11 safeValueForKey:@"dateOfLastSync"];
        v16 = __UIAccessibilityCastAsClass();

        if (v16)
        {
          if (_axLabelForBatterView_onceToken != -1)
          {
            [VehicleCellAccessibility _axLabelForBatterView];
          }

          v17 = _axLabelForBatterView_Formatter;
          v18 = [MEMORY[0x29EDB8DB0] date];
          v19 = [v17 localizedStringForDate:v16 relativeToDate:v18];

          v20 = __UIAXStringForVariables();

          v5 = v20;
        }
      }
    }
  }

  return v5;
}

uint64_t __49__VehicleCellAccessibility__axLabelForBatterView__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _axLabelForBatterView_Formatter;
  _axLabelForBatterView_Formatter = v0;

  v2 = _axLabelForBatterView_Formatter;

  return [v2 setDateTimeStyle:1];
}

@end