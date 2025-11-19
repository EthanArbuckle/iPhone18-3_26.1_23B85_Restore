@interface AXWAAnswerGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXWAAnswerGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXWAAnswerGlue accessibilityInitializeBundle];
  }
}

void __47__AXWAAnswerGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_320 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_329];
}

uint64_t __47__AXWAAnswerGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"SAAnswerSnippet" hasInstanceMethod:@"answers" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SAAnswerObject" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SAAnswerObject" hasInstanceMethod:@"lines" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SAAnswerObjectLine" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v2 validateClass:@"WADetailedSnippetViewController" hasInstanceVariable:@"_answerViews" withType:"NSMutableArray"];
  [v2 validateClass:@"WATextHeaderView"];
  [v2 validateClass:@"WAImageView"];

  return 1;
}

uint64_t __47__AXWAAnswerGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Siri Wolfram Alpha AX Bundle"];
  [v2 setOverrideProcessName:@"Siri Wolfram Alpha"];

  return MEMORY[0x2A1C5E698]();
}

void __47__AXWAAnswerGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"WADetailedSnippetViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WAAttributionViewAccessibility" canInteractWithTargetClass:1];
}

@end