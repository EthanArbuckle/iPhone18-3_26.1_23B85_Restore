@interface CCUIConnectivityAirplaneViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)buttonTapped:(id)a3;
@end

@implementation CCUIConnectivityAirplaneViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CCUIConnectivityAirplaneViewController" hasInstanceMethod:@"buttonTapped:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CCUIConnectivityAirplaneViewController" hasInstanceMethod:@"_isAirplaneModeEnabled" withFullSignature:{"B", 0}];
}

- (void)buttonTapped:(id)a3
{
  v4 = a3;
  if (_UIAccessibilityFullKeyboardAccessEnabled())
  {
    v5 = [MEMORY[0x29EDBDF48] bluetoothKeyboardDevices];
    v6 = [v5 count] != 0;
  }

  else
  {
    v6 = 0;
  }

  if (UIAccessibilityIsVoiceOverRunning())
  {
    v7 = [MEMORY[0x29EDBDFC8] server];
    v8 = [v7 isBluetoothBrailleDisplayConnected];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(CCUIConnectivityAirplaneViewControllerAccessibility *)self safeBoolForKey:@"_isAirplaneModeEnabled"];
  if ((UIAccessibilityIsSwitchControlRunning() | v6 | v8) & 1) == 0 || (v9)
  {
    v22.receiver = self;
    v22.super_class = CCUIConnectivityAirplaneViewControllerAccessibility;
    [(CCUIConnectivityAirplaneViewControllerAccessibility *)&v22 buttonTapped:v4];
  }

  else
  {
    v28 = 0;
    objc_opt_class();
    v10 = __UIAccessibilityCastAsClass();
    v11 = MEMORY[0x29EDC7928];
    v12 = accessibilityLocalizedString(@"control.center.airplane.mode.enable.alert.title");
    v13 = accessibilityLocalizedString(@"control.center.bluetooth.devices.disconnect.message");
    v14 = [v11 alertControllerWithTitle:v12 message:v13 preferredStyle:1];

    v15 = MEMORY[0x29EDC7920];
    v16 = accessibilityLocalizedString(@"control.center.alert.cancel");
    v26[0] = MEMORY[0x29EDCA5F8];
    v26[1] = 3221225472;
    v26[2] = __68__CCUIConnectivityAirplaneViewControllerAccessibility_buttonTapped___block_invoke;
    v26[3] = &unk_29F2B4F60;
    v27 = v10;
    v17 = v10;
    v18 = [v15 actionWithTitle:v16 style:1 handler:v26];

    v19 = MEMORY[0x29EDC7920];
    v20 = accessibilityLocalizedString(@"control.center.airplane.mode.alert.confirm");
    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 3221225472;
    v23[2] = __68__CCUIConnectivityAirplaneViewControllerAccessibility_buttonTapped___block_invoke_2;
    v23[3] = &unk_29F2B4F88;
    v24 = v4;
    v25 = self;
    v21 = [v19 actionWithTitle:v20 style:0 handler:v23];

    [v14 addAction:v18];
    [v14 addAction:v21];
    [v14 setPreferredAction:v18];
    [v17 presentViewController:v14 animated:1 completion:0];
  }
}

id __68__CCUIConnectivityAirplaneViewControllerAccessibility_buttonTapped___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = CCUIConnectivityAirplaneViewControllerAccessibility;
  return objc_msgSendSuper2(&v3, sel_buttonTapped_, v1);
}

@end