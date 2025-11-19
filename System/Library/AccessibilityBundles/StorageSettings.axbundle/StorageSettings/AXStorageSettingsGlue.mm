@interface AXStorageSettingsGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXStorageSettingsGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXStorageSettingsGlue accessibilityInitializeBundle];
  }
}

void __54__AXStorageSettingsGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];
}

uint64_t __54__AXStorageSettingsGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Storage Settings"];
  [v2 setOverrideProcessName:@"Storage Settings"];

  return MEMORY[0x2A1C5E698]();
}

void __54__AXStorageSettingsGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"STStorageMediaItemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STStorageSystemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STStorageUsageAppHeaderCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STStorageHeaderLabelCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STStorageButtonHeaderAccessibility" canInteractWithTargetClass:1];
}

@end