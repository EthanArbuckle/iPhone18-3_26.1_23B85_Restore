@interface AXSystemUIWindowingKitGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXSystemUIWindowingKitGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_295 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_304];

    _Failover = [objc_allocWithZone(AXSystemUIWindowingKitGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __59__AXSystemUIWindowingKitGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"SWKWindowControlsViewController" isKindOfClass:@"UIViewController"];
  [v2 validateClass:@"SystemUIWindowingKit.WindowControlsView" hasSwiftField:@"containerView" withSwiftType:"UIView"];

  return 1;
}

uint64_t __59__AXSystemUIWindowingKitGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"SystemUIWindowingKit AX"];
  [v2 setOverrideProcessName:@"SystemUIWindowingKit"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __59__AXSystemUIWindowingKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"SystemUIWindowingKitUIContextMenuCellContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WindowControlsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WindowControlViewAccessibility" canInteractWithTargetClass:1];
}

@end