@interface AXSearchFoundationGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXSearchFoundationGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover_0)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global_0 withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover_0 = objc_alloc_init(AXSearchFoundationGlue);

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __55__AXSearchFoundationGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"SearchFoundation Framework AX bundle"];
  [v2 setOverrideProcessName:@"SearchFoundation Framework"];

  return MEMORY[0x2A1C5E698]();
}

void __55__AXSearchFoundationGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"SFSearchResultAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SFTextAccessibility" canInteractWithTargetClass:1];
}

@end