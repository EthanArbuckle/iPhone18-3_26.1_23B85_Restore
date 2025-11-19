@interface AXHeartRhythmUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXHeartRhythmUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXHeartRhythmUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __52__AXHeartRhythmUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"HeartRhythmUI AX"];
  [v2 setOverrideProcessName:@"HeartRhythmUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __52__AXHeartRhythmUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"HROnboardingHeroExplanationViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HROnboardingBulletPointViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HRMetadataEducationTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HRSimulatedAtrialFibrillationNotificationViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HROnboardingAtrialFibrillationGateViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HRAtrialFibrillationIntroViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HROnboardingAtrialFibrillationEnableViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HRAtrialFibrillationDataTypeDescriptionCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HRSpeedBumpViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HROnboardingElectrocardiogramAvailabilityViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HROnboardingElectrocardiogramPossibleResultsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HROnboardingElectrocardiogramResultViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HROnboardingElectrocardiogramTakeRecordingViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HROnboardingWristImageViewAccessibility" canInteractWithTargetClass:1];
}

@end