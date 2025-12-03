@interface AXBluetoothSettingsGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXBluetoothSettingsGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = __56__AXBluetoothSettingsGlue_accessibilityInitializeBundle__block_invoke_2;
    v6[3] = &unk_29F2A8978;
    v7 = @"BluetoothSettings";
    v8 = @"BluetoothSettings";
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:v6 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_297];

    v3 = [objc_allocWithZone(AXBluetoothSettingsGlue) init];
    v4 = _Failover;
    _Failover = v3;

    mEMORY[0x29EDBD6E8]2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8]2 installSafeCategories:&__block_literal_global_306 afterDelay:@"BluetoothSettings" validationTargetName:@"BluetoothSettings" overrideProcessName:0.0];
  }
}

uint64_t __56__AXBluetoothSettingsGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setValidationTargetName:v3];
  [v4 setOverrideProcessName:*(a1 + 40)];

  return MEMORY[0x2A1C5E698]();
}

void __56__AXBluetoothSettingsGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"BTSDevicesControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BTSSPPairingRequestAccessibility" canInteractWithTargetClass:1];
}

void __56__AXBluetoothSettingsGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"BTTableCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BTTableSharingCellAccessibility" canInteractWithTargetClass:1];
}

@end