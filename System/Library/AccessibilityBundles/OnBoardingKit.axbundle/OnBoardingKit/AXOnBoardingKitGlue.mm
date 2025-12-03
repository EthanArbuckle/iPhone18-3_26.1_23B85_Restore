@interface AXOnBoardingKitGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXOnBoardingKitGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXOnBoardingKitGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __52__AXOnBoardingKitGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"OnBoardingKit AX"];
  [v2 setOverrideProcessName:@"OnBoardingKit"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __52__AXOnBoardingKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"OBPrivacySplashControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"OBPrivacyModalNavigationControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"OBPrivacySplashListViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"OBPrivacyLinkButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"OBIconTextViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"OBHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"OBAnimationViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"OBTrayButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"OBWelcomeControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"OBContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"OBBulletedListItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"OBTintInheritingImageViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"OBTextSectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"OBSetupAssistantProgressControllerAccessibility" canInteractWithTargetClass:1];
}

@end