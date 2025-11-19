@interface AXSystemApertureUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXSystemApertureUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global_0 withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXSystemApertureUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __55__AXSystemApertureUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"SystemApertureUI AX"];
  [v2 setOverrideProcessName:@"SystemApertureUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __55__AXSystemApertureUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"SAUIElementViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SAUIElementViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SAUIIndicatorElementViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end