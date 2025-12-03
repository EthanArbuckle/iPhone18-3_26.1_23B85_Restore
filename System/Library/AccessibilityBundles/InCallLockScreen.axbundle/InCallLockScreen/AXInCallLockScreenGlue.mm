@interface AXInCallLockScreenGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXInCallLockScreenGlue

+ (void)accessibilityInitializeBundle
{
  mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
  [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];
}

uint64_t __55__AXInCallLockScreenGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"InCallLockScreen AX Bundle"];
  [v2 setOverrideProcessName:@"AXInCallLockScreen"];

  return MEMORY[0x2A1C5E698]();
}

@end