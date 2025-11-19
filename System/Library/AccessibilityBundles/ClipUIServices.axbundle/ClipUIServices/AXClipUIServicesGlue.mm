@interface AXClipUIServicesGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXClipUIServicesGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXClipUIServicesGlue accessibilityInitializeBundle];
  }
}

void __53__AXClipUIServicesGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_291 withPreValidationHandler:&__block_literal_global_293 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_302];
}

uint64_t __53__AXClipUIServicesGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"ClipUIService AX"];
  [v2 setOverrideProcessName:@"ClipUIService"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __53__AXClipUIServicesGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"CPSLabelWithPlaceholderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CPSAppMetadataViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CPSVibrantLabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CPSAppStoreButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CPSLaunchContentViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CPSPermissionItemViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CPSPermissionsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CPSInlineCardViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end