@interface ASAccessoryInfoViewFactory
+ (id)forgetDeviceAlertBody;
+ (id)forgetDeviceAlertCancel;
+ (id)forgetDeviceAlertConfirm;
+ (id)forgetDeviceAlertTitle;
+ (id)forgetDeviceButtonTitle;
+ (id)infoViewControllerFromDevice:(id)device;
+ (id)resetWiFiAlertBody;
+ (id)resetWiFiAlertCancel;
+ (id)resetWiFiAlertConfirm;
+ (id)resetWiFiAlertTitle;
+ (id)resetWiFiButtonTitle;
+ (id)resetWiFiControllerButtonTitle;
+ (id)resetWiFiControllerCancel;
+ (id)resetWiFiControllerCellSubtitleAccessory:(id)accessory;
+ (id)resetWiFiControllerCellSubtitlePairedDevice:(id)device;
+ (id)resetWiFiControllerDetailText;
+ (id)resetWiFiControllerTitle;
+ (id)resetWiFiViewControllerFromDevices:(id)devices;
+ (id)unpairDeviceAlertBody;
+ (id)unpairDeviceAlertCancel;
+ (id)unpairDeviceAlertConfirm;
+ (id)unpairDeviceAlertTitle:(id)title;
+ (id)unpairDeviceButtonTitle;
@end

@implementation ASAccessoryInfoViewFactory

+ (id)infoViewControllerFromDevice:(id)device
{
  deviceCopy = device;
  if (gLogCategory_ASAccessoryInfoView <= 15 && (gLogCategory_ASAccessoryInfoView != -1 || _LogCategory_Initialize()))
  {
    +[ASAccessoryInfoViewFactory infoViewControllerFromDevice:];
  }

  v4 = [[ASAccessoryInfoViewController alloc] initWithDevice:deviceCopy];

  return v4;
}

+ (id)resetWiFiViewControllerFromDevices:(id)devices
{
  devicesCopy = devices;
  if (gLogCategory_ASAccessoryInfoView <= 15 && (gLogCategory_ASAccessoryInfoView != -1 || _LogCategory_Initialize()))
  {
    +[ASAccessoryInfoViewFactory resetWiFiViewControllerFromDevices:];
  }

  v4 = [[ASAccessoryResetWiFiViewController alloc] initWithDevices:devicesCopy];

  return v4;
}

+ (id)unpairDeviceButtonTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Unpair Device" value:&stru_28499D698 table:0];

  return v3;
}

+ (id)unpairDeviceAlertTitle:(id)title
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CCA8D8];
  titleCopy = title;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Unpair Device Alert Title %@" value:&stru_28499D698 table:0];
  titleCopy = [v3 stringWithFormat:v7, titleCopy];

  return titleCopy;
}

+ (id)unpairDeviceAlertBody
{
  v2 = MGGetBoolAnswer();
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
  {
    v5 = @"Unpair Device Alert Body WLAN";
  }

  else
  {
    v5 = @"Unpair Device Alert Body WiFi";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_28499D698 table:0];

  return v6;
}

+ (id)unpairDeviceAlertConfirm
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Unpair" value:&stru_28499D698 table:0];

  return v3;
}

+ (id)unpairDeviceAlertCancel
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Cancel" value:&stru_28499D698 table:0];

  return v3;
}

+ (id)forgetDeviceButtonTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Forget Device" value:&stru_28499D698 table:0];

  return v3;
}

+ (id)forgetDeviceAlertTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Forget Device Title" value:&stru_28499D698 table:0];

  return v3;
}

+ (id)forgetDeviceAlertBody
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Forget Device Message" value:&stru_28499D698 table:0];

  return v3;
}

+ (id)forgetDeviceAlertConfirm
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Forget Device Confirm" value:&stru_28499D698 table:0];

  return v3;
}

+ (id)forgetDeviceAlertCancel
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Cancel" value:&stru_28499D698 table:0];

  return v3;
}

+ (id)resetWiFiButtonTitle
{
  v2 = MGGetBoolAnswer();
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
  {
    v5 = @"Reset WLAN Identifier";
  }

  else
  {
    v5 = @"Reset Wi-Fi Identifier";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_28499D698 table:0];

  return v6;
}

+ (id)resetWiFiAlertTitle
{
  v2 = MGGetBoolAnswer();
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
  {
    v5 = @"Reset WLAN Identifier?";
  }

  else
  {
    v5 = @"Reset Wi-Fi Identifier?";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_28499D698 table:0];

  return v6;
}

+ (id)resetWiFiAlertBody
{
  v2 = MGGetBoolAnswer();
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
  {
    v5 = @"Reset WLAN ALert Body";
  }

  else
  {
    v5 = @"Reset WiFi Alert Body";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_28499D698 table:0];

  return v6;
}

+ (id)resetWiFiAlertConfirm
{
  v2 = MGGetBoolAnswer();
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
  {
    v5 = @"Reset WLAN Identifier";
  }

  else
  {
    v5 = @"Reset Wi-Fi Identifier";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_28499D698 table:0];

  return v6;
}

+ (id)resetWiFiAlertCancel
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Cancel" value:&stru_28499D698 table:0];

  return v3;
}

+ (id)resetWiFiControllerTitle
{
  v2 = MGGetBoolAnswer();
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
  {
    v5 = @"Reset WLAN Identifier?";
  }

  else
  {
    v5 = @"Reset Wi-Fi Identifier?";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_28499D698 table:0];

  return v6;
}

+ (id)resetWiFiControllerDetailText
{
  v2 = MGGetBoolAnswer();
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
  {
    v5 = @"Reset WLAN Controller Detail Text";
  }

  else
  {
    v5 = @"Reset WiFi Controller Detail Text";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_28499D698 table:0];

  return v6;
}

+ (id)resetWiFiControllerCellSubtitlePairedDevice:(id)device
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CCA8D8];
  deviceCopy = device;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Paired using “%@”" value:&stru_28499D698 table:0];
  deviceCopy = [v3 stringWithFormat:v7, deviceCopy];

  return deviceCopy;
}

+ (id)resetWiFiControllerCellSubtitleAccessory:(id)accessory
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CCA8D8];
  accessoryCopy = accessory;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Managed by “%@”" value:&stru_28499D698 table:0];
  accessoryCopy = [v3 stringWithFormat:v7, accessoryCopy];

  return accessoryCopy;
}

+ (id)resetWiFiControllerButtonTitle
{
  v2 = MGGetBoolAnswer();
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
  {
    v5 = @"Reset WLAN Identifier";
  }

  else
  {
    v5 = @"Reset Wi-Fi Identifier";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_28499D698 table:0];

  return v6;
}

+ (id)resetWiFiControllerCancel
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Cancel" value:&stru_28499D698 table:0];

  return v3;
}

@end