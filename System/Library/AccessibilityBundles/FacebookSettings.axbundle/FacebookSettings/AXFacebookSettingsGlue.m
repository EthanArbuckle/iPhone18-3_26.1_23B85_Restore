@interface AXFacebookSettingsGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXFacebookSettingsGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXFacebookSettingsGlue accessibilityInitializeBundle];
  }
}

void __55__AXFacebookSettingsGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_298 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_307];
}

uint64_t __55__AXFacebookSettingsGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"SLFacebookRegistrationEmailPrompt" hasInstanceVariable:@"_orLabel" withType:"UILabel"];
  [v2 validateClass:@"SLFacebookRegistrationEmailPrompt" hasInstanceMethod:@"textField: shouldChangeCharactersInRange: replacementString:" withFullSignature:{"B", "@", "{_NSRange=QQ}", "@", 0}];

  return 1;
}

uint64_t __55__AXFacebookSettingsGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Facebook Settings AX Bundle"];
  [v2 setOverrideProcessName:@"FacebookSettings"];

  return MEMORY[0x2A1C5E698]();
}

@end