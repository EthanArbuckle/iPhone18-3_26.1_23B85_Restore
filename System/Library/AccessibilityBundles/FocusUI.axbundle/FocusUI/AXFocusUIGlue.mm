@interface AXFocusUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXFocusUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXFocusUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __46__AXFocusUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"FocusUI AX"];
  [v2 setOverrideProcessName:@"FocusUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __46__AXFocusUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"_FCUIActivityPickerOnboardingDismissControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"FCUIActivityControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"FCUIActivityControlMenuItemViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_FCUIActivityControlMenuFooterViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"FCUIActivityPickerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"FCUIAddActivityFooterViewAccessibility" canInteractWithTargetClass:1];
}

@end