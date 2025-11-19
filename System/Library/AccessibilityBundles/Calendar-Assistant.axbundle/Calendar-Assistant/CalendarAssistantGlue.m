@interface CalendarAssistantGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation CalendarAssistantGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[CalendarAssistantGlue accessibilityInitializeBundle];
  }
}

void __54__CalendarAssistantGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];
}

uint64_t __54__CalendarAssistantGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Siri Calendar AX Bundle"];
  [v2 setOverrideProcessName:@"Siri Calendar"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

@end