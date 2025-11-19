@interface AXShareSheetGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXShareSheetGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];

    _Failover = [objc_allocWithZone(AXShareSheetGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __49__AXShareSheetGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"ShareSheet AX"];
  [v2 setOverrideProcessName:@"ShareSheet"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __49__AXShareSheetGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"_UIActivityGroupActivityCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_UIActivityUserDefaultsActivityCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIAirDropGroupActivityCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIActivityActionGroupCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIShareGroupActivityCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIActivityContentViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIActivityViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIDocumentInteractionControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIActivityHeroActionCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_UICollectionViewOrthogonalScrollViewAccessibility__ShareSheet__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_UIDICActivityViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIActivityActionHorizontalCellAccessibility" canInteractWithTargetClass:1];
}

@end