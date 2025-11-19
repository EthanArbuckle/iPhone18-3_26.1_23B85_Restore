@interface ChatAssistantUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation ChatAssistantUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_338 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_347];

    _Failover = [objc_allocWithZone(ChatAssistantUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __52__ChatAssistantUIGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"CKMessageSnippetContentView"];
  [v2 validateClass:@"CKMessageSnippetContentView" hasInstanceVariable:@"_toLabel" withType:"UILabel"];
  [v2 validateClass:@"CKMessageSnippetContentView" hasInstanceVariable:@"_balloonImageView" withType:"CKTextBalloonView"];
  [v2 validateClass:@"CKMessageSnippetContentView" hasInstanceMethod:@"setBalloonType:" withFullSignature:{"v", "i", 0}];
  [v2 validateClass:@"CKTextBalloonView" hasInstanceMethod:@"attributedText" withFullSignature:{"@", 0}];

  return 1;
}

uint64_t __52__ChatAssistantUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Assistant Chat AX Bundle"];
  [v2 setOverrideProcessName:@"Assistant Chat"];

  return MEMORY[0x2A1C5E698]();
}

@end