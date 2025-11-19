@interface AXProxCardKitGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXProxCardKitGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXProxCardKitGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __50__AXProxCardKitGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"ProxCardKit AX"];
  [v2 setOverrideProcessName:@"ProxCardKit"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __50__AXProxCardKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"PRXTextViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PRXCardContentViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PRXCardContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PRXCardContainerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PRXCardContentWrapperViewAccessibility" canInteractWithTargetClass:1];
}

@end