@interface AXSiriSharedUIAXGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXSiriSharedUIAXGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXSiriSharedUIAXGlue accessibilityInitializeBundle];
  }
}

void __53__AXSiriSharedUIAXGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_292 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_301];
}

uint64_t __53__AXSiriSharedUIAXGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"SiriSharedUI AX Bundle"];
  [v2 setOverrideProcessName:@"SiriSharedUI"];

  return MEMORY[0x2A1C5E698]();
}

void __53__AXSiriSharedUIAXGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"SiriSharedUICompactServerUtteranceViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriSharedUICompactUserUtteranceViewAccessibility" canInteractWithTargetClass:1];
}

@end