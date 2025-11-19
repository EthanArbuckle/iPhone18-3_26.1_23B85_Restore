@interface SirilandGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation SirilandGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[SirilandGlue accessibilityInitializeBundle];
  }
}

void __45__SirilandGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];
}

uint64_t __45__SirilandGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Siriland AX Bundle"];
  [v2 setOverrideProcessName:@"Siriland"];

  return MEMORY[0x2A1C5E698]();
}

void __45__SirilandGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"SRTranscriptStackViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SRSuggestionsViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end