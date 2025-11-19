@interface AXMessagesGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMessagesGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXMessagesGlue accessibilityInitializeBundle];
  }
}

void __47__AXMessagesGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_316 withPreValidationHandler:&__block_literal_global_318 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_327];
}

uint64_t __47__AXMessagesGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Messages AX Bundle"];
  [v2 setOverrideProcessName:@"Messages"];

  return MEMORY[0x2A1C5E698]();
}

@end