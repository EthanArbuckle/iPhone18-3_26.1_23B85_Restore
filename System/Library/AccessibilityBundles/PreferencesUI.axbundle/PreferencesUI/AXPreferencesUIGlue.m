@interface AXPreferencesUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXPreferencesUIGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXPreferencesUIGlue accessibilityInitializeBundle];
  }
}

void __52__AXPreferencesUIGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_300 withPreValidationHandler:&__block_literal_global_302 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_308];
}

uint64_t __52__AXPreferencesUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"PreferencesUI"];
  [v2 setOverrideProcessName:@"PreferencesUI"];

  return MEMORY[0x2A1C5E698]();
}

void __52__AXPreferencesUIGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"PSUITouchIDPasscodeControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PSUICellularPlanOptionTableCellAccessibility" canInteractWithTargetClass:1];
}

@end