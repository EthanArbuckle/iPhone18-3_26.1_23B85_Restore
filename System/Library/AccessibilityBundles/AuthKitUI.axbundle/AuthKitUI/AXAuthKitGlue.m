@interface AXAuthKitGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXAuthKitGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global_0 withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXAuthKitGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __46__AXAuthKitGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AuthKit AX Bundle"];
  [v2 setOverrideProcessName:@"AuthKit"];

  return MEMORY[0x2A1C5E698]();
}

void __46__AXAuthKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"AKInlineSignInViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKBasicLoginContentViewControllerContainerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKBasicLoginAlertControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKAuthorizationButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKAuthorizationInputPaneViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKAuthorizationScopeDetailTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKCodeEntryViewAccessibility" canInteractWithTargetClass:1];
}

@end