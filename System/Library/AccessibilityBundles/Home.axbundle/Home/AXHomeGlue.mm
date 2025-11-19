@interface AXHomeGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXHomeGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXHomeGlue accessibilityInitializeBundle];
  }
}

void __43__AXHomeGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDB9F48] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.Home"];

  v3 = [MEMORY[0x29EDBD6E8] sharedInstance];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __43__AXHomeGlue_accessibilityInitializeBundle__block_invoke_4;
  v4[3] = &__block_descriptor_33_e29_v16__0__AXValidationManager_8l;
  v5 = v2;
  [v3 performValidations:&__block_literal_global_287 withPreValidationHandler:&__block_literal_global_289 postValidationHandler:0 safeCategoryInstallationHandler:v4];
}

uint64_t __43__AXHomeGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AX Home"];
  [v2 setOverrideProcessName:@"AX Home"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __43__AXHomeGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    v3 = a2;
    [v3 installSafeCategory:@"HOAddLocationViewControllerAccessibility" canInteractWithTargetClass:1];
    [v3 installSafeCategory:@"HOTitleDescriptionAlertActionViewControllerAccessibility" canInteractWithTargetClass:1];
    [v3 installSafeCategory:@"NUIContainerStackViewAccessibility" canInteractWithTargetClass:1];
    [v3 installSafeCategory:@"UIContextMenuCellContentViewAccessibility__Home__UIKit" canInteractWithTargetClass:1];
    [v3 installSafeCategory:@"HOLocationListViewControllerAccessibility" canInteractWithTargetClass:1];
  }
}

@end