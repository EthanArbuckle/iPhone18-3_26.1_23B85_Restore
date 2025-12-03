@interface AXHealthArticlesUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXHealthArticlesUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global_0 withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXHealthArticlesUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __55__AXHealthArticlesUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"HealthArticlesUI AX"];
  [v2 setOverrideProcessName:@"HealthArticlesUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __55__AXHealthArticlesUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"CustomContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ParagraphViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SectionHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TitleViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VideoViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LinkedTextViewAccessibility" canInteractWithTargetClass:1];
}

@end