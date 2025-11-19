@interface SiriGeneralKnowledgeGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation SiriGeneralKnowledgeGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[SiriGeneralKnowledgeGlue accessibilityInitializeBundle];
  }
}

void __57__SiriGeneralKnowledgeGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_314 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_323];
}

uint64_t __57__SiriGeneralKnowledgeGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"SiriGKImageLinkView" hasInstanceVariable:@"_imageLinkedAnswer" withType:"SAGKImageLinkedAnswer"];
  [v2 validateClass:@"SiriGKAttributionView" isKindOfClass:@"SiriGKView"];
  [v2 validateClass:@"SAGKLinkedAnswer" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SiriGKView" hasInstanceMethod:@"command" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SAUIAppPunchOut" hasInstanceMethod:@"punchOutUri" withFullSignature:{"@", 0}];

  return 1;
}

uint64_t __57__SiriGeneralKnowledgeGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Siri General Knowledge AX Bundle"];
  [v2 setOverrideProcessName:@"Siri General Knowledge"];

  return MEMORY[0x2A1C5E698]();
}

void __57__SiriGeneralKnowledgeGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"SiriGKImageLinkViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriGKAttributionViewAccessibility" canInteractWithTargetClass:1];
}

@end