@interface AXBatteryWidgetGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXBatteryWidgetGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_288];

    _Failover = [objc_allocWithZone(AXBatteryWidgetGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __52__AXBatteryWidgetGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"BatteryWidget"];
  [v2 setOverrideProcessName:@"BatteryWidget"];

  return MEMORY[0x2A1C5E698]();
}

void __52__AXBatteryWidgetGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"BCBatteryWidgetRowViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BCBatteryWidgetViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end