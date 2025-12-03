@interface AXTipsGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXTipsGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXTipsGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __43__AXTipsGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Tips AX Bundle"];
  [v2 setOverrideProcessName:@"Tips"];

  return MEMORY[0x2A1C5E698]();
}

void __43__AXTipsGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"TPSUICollectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TPSTipCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TPSViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TPSPageControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIBarButtonItemAccessibility__Tips__UIKit" canInteractWithTargetClass:1];
}

@end