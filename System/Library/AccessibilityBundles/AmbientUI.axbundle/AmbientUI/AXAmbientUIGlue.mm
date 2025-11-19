@interface AXAmbientUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXAmbientUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];

    _Failover = [objc_allocWithZone(AXAmbientUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __48__AXAmbientUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AmbientUI AX"];
  [v2 setOverrideProcessName:@"AmbientUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __48__AXAmbientUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"AMUIOnboardingContainerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AMUIOnboardingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AMUIInlineAuthenticationViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AMUIPasscodeButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AMUIDateTimeViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AMUIPosterEditingSwitcherViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AMUIInfographViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end