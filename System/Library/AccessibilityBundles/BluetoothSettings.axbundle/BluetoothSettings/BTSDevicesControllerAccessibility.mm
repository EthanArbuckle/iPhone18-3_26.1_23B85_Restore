@interface BTSDevicesControllerAccessibility
- (void)setBluetoothEnabled:(id)a3 specifier:(id)a4;
@end

@implementation BTSDevicesControllerAccessibility

- (void)setBluetoothEnabled:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x29EDBFE18] sharedInstance];
  v9 = [v8 enabled];

  v10 = [v6 BOOLValue];
  if (_UIAccessibilityFullKeyboardAccessEnabled())
  {
    v11 = [MEMORY[0x29EDBDF48] bluetoothKeyboardDevices];
    v12 = [v11 count] != 0;
  }

  else
  {
    v12 = 0;
  }

  if (UIAccessibilityIsVoiceOverRunning())
  {
    v13 = [MEMORY[0x29EDBDFC8] server];
    v14 = [v13 isBluetoothBrailleDisplayConnected];
  }

  else
  {
    v14 = 0;
  }

  if (v10 & 1 | (((UIAccessibilityIsSwitchControlRunning() | v12 | v14) & (v9 ^ v10) & 1) == 0))
  {
    v26.receiver = self;
    v26.super_class = BTSDevicesControllerAccessibility;
    [(BTSDevicesControllerAccessibility *)&v26 setBluetoothEnabled:v6 specifier:v7];
  }

  else
  {
    LOBYTE(location) = 0;
    objc_opt_class();
    v15 = __UIAccessibilityCastAsClass();
    v16 = MEMORY[0x29EDC7928];
    v17 = accessibilityLocalizedString(@"bluetooth.disable.alert.title");
    v18 = accessibilityLocalizedString(@"bluetooth.disable.alert.message");
    v19 = [v16 alertControllerWithTitle:v17 message:v18 preferredStyle:1];

    objc_initWeak(&location, v15);
    v20 = MEMORY[0x29EDC7920];
    v21 = accessibilityLocalizedString(@"alert.cancel");
    v30[0] = MEMORY[0x29EDCA5F8];
    v30[1] = 3221225472;
    v30[2] = __67__BTSDevicesControllerAccessibility_setBluetoothEnabled_specifier___block_invoke;
    v30[3] = &unk_29F2A89C0;
    objc_copyWeak(&v31, &location);
    v30[4] = self;
    v22 = [v20 actionWithTitle:v21 style:0 handler:v30];

    v23 = MEMORY[0x29EDC7920];
    v24 = accessibilityLocalizedString(@"bluetooth.alert.confirm");
    v27[0] = MEMORY[0x29EDCA5F8];
    v27[1] = 3221225472;
    v27[2] = __67__BTSDevicesControllerAccessibility_setBluetoothEnabled_specifier___block_invoke_2;
    v27[3] = &unk_29F2A89E8;
    v28 = v7;
    v29 = self;
    v25 = [v23 actionWithTitle:v24 style:0 handler:v27];

    [v19 addAction:v22];
    [v19 addAction:v25];
    [v15 presentViewController:v19 animated:1 completion:0];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }
}

void __67__BTSDevicesControllerAccessibility_setBluetoothEnabled_specifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];

  objc_opt_class();
  v5 = *(a1 + 32);
  v6 = __UIAccessibilityCastAsClass();
  [v6 reloadSpecifiers];
}

id __67__BTSDevicesControllerAccessibility_setBluetoothEnabled_specifier___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = BTSDevicesControllerAccessibility;
  return objc_msgSendSuper2(&v3, sel_setBluetoothEnabled_specifier_, MEMORY[0x29EDB8EA8], v1);
}

@end