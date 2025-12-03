@interface AXCameraEffectsKitGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXCameraEffectsKitGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global_0 withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXCameraEffectsKitGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __55__AXCameraEffectsKitGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"CameraEffectsKit AX"];
  [v2 setOverrideProcessName:@"CameraEffectsKit"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __55__AXCameraEffectsKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"CFXCaptureViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CFXEffectEditorViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CFXPreviewViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CFXEffectBrowserViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CFXPlayButtonViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CFXControlsViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end