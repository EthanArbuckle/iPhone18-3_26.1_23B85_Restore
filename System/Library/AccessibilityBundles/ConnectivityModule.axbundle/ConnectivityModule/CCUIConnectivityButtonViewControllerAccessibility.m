@interface CCUIConnectivityButtonViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityControlCenterButtonIdentifier;
- (id)_accessibilityControlCenterButtonLabel;
- (id)_accessibilityControlCenterGenericOnOff;
@end

@implementation CCUIConnectivityButtonViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CCUIConnectivityButtonViewController" isKindOfClass:@"CCUILabeledRoundButtonViewController"];
  [v3 validateClass:@"CCUIConnectivityCellularDataViewController" isKindOfClass:@"CCUIConnectivityButtonViewController"];
  [v3 validateClass:@"CCUIConnectivityHotspotViewController" isKindOfClass:@"CCUIConnectivityButtonViewController"];
  [v3 validateClass:@"CCUIConnectivityAirplaneViewController" isKindOfClass:@"CCUIConnectivityButtonViewController"];
  [v3 validateClass:@"CCUIConnectivityAirplaneViewController" hasProperty:@"title" withType:"@"];
}

- (id)_accessibilityControlCenterButtonLabel
{
  v3 = [(CCUIConnectivityButtonViewControllerAccessibility *)self safeStringForKey:@"title"];
  v4 = [(CCUIConnectivityButtonViewControllerAccessibility *)self safeStringForKey:@"subtitle"];
  if (MEMORY[0x29C2D1760](@"CCUIConnectivityButtonViewController"))
  {
    v5 = [(CCUIConnectivityButtonViewControllerAccessibility *)self _accessibilityControlCenterGenericOnOff];
    v6 = [v5 objectForKey:@"on"];
    if ([v4 isEqualToString:v6])
    {
    }

    else
    {
      v7 = [v5 objectForKey:@"off"];
      v8 = [v4 isEqualToString:v7];

      if (!v8)
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    v4 = 0;
    goto LABEL_6;
  }

LABEL_7:
  v9 = __UIAXStringForVariables();

  return v9;
}

- (id)_accessibilityControlCenterButtonIdentifier
{
  MEMORY[0x29C2D1760](@"CCUIConnectivityCellularDataViewController", a2);
  if (objc_opt_isKindOfClass())
  {
    return @"cellular-data-button";
  }

  MEMORY[0x29C2D1760](@"CCUIConnectivityAirplaneViewController");
  if (objc_opt_isKindOfClass())
  {
    return @"airplane-mode-button";
  }

  MEMORY[0x29C2D1760](@"CCUIConnectivityHotspotViewController");
  if (objc_opt_isKindOfClass())
  {
    return @"hotspot-button";
  }

  else
  {
    return 0;
  }
}

- (id)_accessibilityControlCenterGenericOnOff
{
  v14[2] = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29C2D1760](@"CCUIConnectivityButtonViewController", a2);
  v4 = [(CCUIConnectivityButtonViewControllerAccessibility *)self _accessibilityControlCenterButtonIdentifier];
  if ([v4 isEqualToString:@"cellular-data-button"])
  {
    v5 = @"CONTROL_CENTER_STATUS_CELLULAR_DATA_ON";
    v6 = @"CONTROL_CENTER_STATUS_CELLULAR_DATA_OFF";
LABEL_13:
    v7 = [MEMORY[0x29EDB9F48] bundleForClass:v3];
    v8 = [v7 localizedStringForKey:v5 value:&stru_2A216F9B0 table:0];
    v9 = [v7 localizedStringForKey:v6 value:&stru_2A216F9B0 table:0];
    v13[0] = @"on";
    v13[1] = @"off";
    v14[0] = v8;
    v14[1] = v9;
    v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

    goto LABEL_14;
  }

  if ([v4 isEqualToString:@"airplane-mode-button"])
  {
    v5 = @"CONTROL_CENTER_STATUS_AIRPLANE_MODE_ON";
    v6 = @"CONTROL_CENTER_STATUS_AIRPLANE_MODE_OFF";
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"com.apple.ControlCenter.WiFi"])
  {
    v5 = @"CONTROL_CENTER_STATUS_WIFI_ON";
    v6 = @"CONTROL_CENTER_STATUS_WIFI_OFF";
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"com.apple.ControlCenter.Bluetooth"])
  {
    v5 = @"CONTROL_CENTER_STATUS_BLUETOOTH_ON";
    v6 = @"CONTROL_CENTER_STATUS_BLUETOOTH_OFF";
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"hotspot-button"])
  {
    v5 = @"CONTROL_CENTER_STATUS_HOTSPOT_ON";
    v6 = @"CONTROL_CENTER_STATUS_HOTSPOT_OFF";
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"com.apple.ControlCenter.VPN"])
  {
    v5 = @"CONTROL_CENTER_STATUS_VPN_ON";
    v6 = @"CONTROL_CENTER_STATUS_VPN_OFF";
    goto LABEL_13;
  }

  v10 = 0;
LABEL_14:

  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

@end