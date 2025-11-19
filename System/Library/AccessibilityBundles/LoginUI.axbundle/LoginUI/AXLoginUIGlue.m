@interface AXLoginUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXLoginUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_288];

    _Failover = [objc_allocWithZone(AXLoginUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __46__AXLoginUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Login UI"];
  [v2 setOverrideProcessName:@"Login UI"];

  return MEMORY[0x2A1C5E698]();
}

void __46__AXLoginUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"LUIUserGridViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LUI_UIGlintyStringViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LUIClassTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LUIClassTableViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LUIUserGridViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIApplicationAccessibility__LoginUI__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LUIPaneHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UITableViewCellAccessibility__LoginUI__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LUIAppleIDSignInViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LUIPrivacyViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LUIManagedDevicesViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LUIManagedDevicesNavigationControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LUIUserTableViewCellAccessibility" canInteractWithTargetClass:1];
}

@end