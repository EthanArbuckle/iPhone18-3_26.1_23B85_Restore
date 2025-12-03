@interface AXKeyboardSettingsGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXKeyboardSettingsGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [objc_allocWithZone(AXKeyboardSettingsGlue) init];
    v3 = _Failover;
    _Failover = v2;

    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_293 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_302];
  }
}

uint64_t __55__AXKeyboardSettingsGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"KeyboardSettings AX Bundle"];
  [v2 setOverrideProcessName:@"KeyboardSettings framework"];

  return MEMORY[0x2A1C5E698]();
}

@end