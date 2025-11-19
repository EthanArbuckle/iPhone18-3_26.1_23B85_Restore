@interface SiriSystemGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation SiriSystemGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[SiriSystemGlue accessibilityInitializeBundle];
  }
}

void __47__SiriSystemGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_292 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_301];
}

uint64_t __47__SiriSystemGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Siri System AX Bundle"];
  [v2 setOverrideProcessName:@"Siri System"];

  return MEMORY[0x2A1C5E698]();
}

@end