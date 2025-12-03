@interface AXMobilePiPGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMobilePiPGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_312 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_321];

    _Failover = [objc_allocWithZone(AXMobilePiPGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __48__AXMobilePiPGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"PGHostedWindow"];
  [v2 validateClass:@"PGPictureInPictureViewController"];
  [v2 validateClass:@"PGHitTestExtendableView" isKindOfClass:@"UIView"];
  [v2 validateClass:@"PGStashView" isKindOfClass:@"UIView"];
  [v2 validateClass:@"PGHitTestExtendableView" hasInstanceMethod:@"hitTestExtenderView" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PGPictureInPictureViewController" hasInstanceVariable:@"_stashView" withType:"PGStashView"];
  [v2 validateClass:@"PGStashedMaskView" hasInstanceVariable:@"_tab" withType:"UIView"];

  return 1;
}

uint64_t __48__AXMobilePiPGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Pegasus AX Bundle"];
  [v2 setOverrideProcessName:@"Pegasus"];

  return MEMORY[0x2A1C5E698]();
}

void __48__AXMobilePiPGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"PGButtonViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PGPictureInPictureViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"__PGViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PGControlsContainerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PGProgressIndicatorAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PGStashViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PGHitTestExtendableViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PGLayerHostViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PGHostedWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_PGPictureInPictureContainerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PGBackdropViewAccessibility" canInteractWithTargetClass:1];
}

@end