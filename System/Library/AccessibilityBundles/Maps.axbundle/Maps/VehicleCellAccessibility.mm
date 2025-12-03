@interface VehicleCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axLabelForBatterView;
- (id)_axLabelForCellWithVehicle:(id)vehicle;
- (id)_lableForLprPowerTYpe:(id)ype;
@end

@implementation VehicleCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VehicleCell" hasInstanceMethod:@"setupWithVehicle:cellStyle:isSelected:" withFullSignature:{"v", "@", "q", "B", 0}];
  [validationsCopy validateClass:@"VehicleCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"VehicleCell" hasInstanceVariable:@"_batteryChargeView" withType:"VehicleBatteryView"];
  [validationsCopy validateClass:@"VehicleBatteryView" hasInstanceVariable:@"_percentLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"VehicleBatteryView" hasInstanceVariable:@"_batteryStateAgeView" withType:"BatteryStateAgeView"];
  [validationsCopy validateClass:@"BatteryStateAgeView" hasInstanceVariable:@"_stateUpdatedLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"BatteryStateAgeView" hasInstanceMethod:@"dateOfLastSync" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VehicleBatteryView" hasInstanceMethod:@"vehicle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VGVehicle" hasInstanceMethod:@"licensePlate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VGVehicle" hasInstanceMethod:@"lprPowerType" withFullSignature:{"@", 0}];
}

- (id)_axLabelForCellWithVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v5 = [(VehicleCellAccessibility *)self safeValueForKey:@"_titleLabel"];
  accessibilityLabel = [v5 accessibilityLabel];

  v7 = __AXStringForVariables();
  v8 = [vehicleCopy safeStringForKey:{@"licensePlate", @"__AXStringForVariablesSentinel"}];
  if (([accessibilityLabel containsString:v8] & 1) == 0)
  {
    v14 = v8;
    v15 = @"__AXStringForVariablesSentinel";
    v9 = __AXStringForVariables();

    v7 = v9;
  }

  v10 = [vehicleCopy safeStringForKey:{@"lprPowerType", v14, v15}];
  v11 = [(VehicleCellAccessibility *)self _lableForLprPowerTYpe:v10];
  _axLabelForBatterView = [(VehicleCellAccessibility *)self _axLabelForBatterView];
  v12 = __AXStringForVariables();

  return v12;
}

- (id)_lableForLprPowerTYpe:(id)ype
{
  ypeCopy = ype;
  if ([ypeCopy isEqualToString:@"EV"])
  {
    v4 = @"VEHICLE_POWER_TYPE_EV";
LABEL_7:
    v5 = AXMapsLocString(v4);
    goto LABEL_8;
  }

  if ([ypeCopy isEqualToString:@"PHEV"])
  {
    v4 = @"VEHICLE_POWER_TYPE_PHEV";
    goto LABEL_7;
  }

  if ([ypeCopy isEqualToString:@"FUEL"])
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
    accessibilityLabel = [v6 accessibilityLabel];

    if (accessibilityLabel)
    {
      v8 = MEMORY[0x29EDBA0F8];
      v9 = AXMapsLocString(@"VEHICLE_BATTERY_LEVEL");
      v10 = [v8 localizedStringWithFormat:v9, accessibilityLabel];

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
      accessibilityLabel2 = [v12 accessibilityLabel];
      v14 = [accessibilityLabel2 length];

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
          date = [MEMORY[0x29EDB8DB0] date];
          v19 = [v17 localizedStringForDate:v16 relativeToDate:date];

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