@interface AXBatteryUsageUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXBatteryUsageUIGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXBatteryUsageUIGlue accessibilityInitializeBundle];
  }
}

void __53__AXBatteryUsageUIGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_291 withPreValidationHandler:&__block_literal_global_293 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_302];
}

uint64_t __53__AXBatteryUsageUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Preferences Battery Usage UI Settings AX Bundle"];
  [v2 setOverrideProcessName:@"Preferences Battery Usage UI Settings"];

  return MEMORY[0x2A1C5E698]();
}

void __53__AXBatteryUsageUIGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"UITableViewAccessibility__BatteryUsageUI__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLBatteryUIGraphLastChargeCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLBatteryUIDisplayTableCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLBatteryUITimeUsageCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLBatteryUIBatteryBreakDownHeaderCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BatteryChargingControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLSegmentedLabelSliderCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLBatteryUISuggestionHeaderCellAccessibility" canInteractWithTargetClass:1];
}

@end