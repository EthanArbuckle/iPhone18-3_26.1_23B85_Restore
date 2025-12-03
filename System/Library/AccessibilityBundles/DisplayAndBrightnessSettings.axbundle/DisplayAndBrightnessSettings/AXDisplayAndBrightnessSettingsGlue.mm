@interface AXDisplayAndBrightnessSettingsGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXDisplayAndBrightnessSettingsGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXDisplayAndBrightnessSettingsGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __67__AXDisplayAndBrightnessSettingsGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"DisplayAndBrightnessSettings AX"];
  [v2 setOverrideProcessName:@"DisplayAndBrightnessSettings"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __67__AXDisplayAndBrightnessSettingsGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"DBSColorTemperatureSliderTableCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DBSDeviceAppearanceOptionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DBSDisplayZoomOptionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DBSArrangementLayoutViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DBSNativeDisplayIconViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DBSExternalDisplayIconViewAccessibility" canInteractWithTargetClass:1];
}

@end