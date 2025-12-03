@interface AXVoiceTriggerUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXVoiceTriggerUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = objc_alloc_init(AXVoiceTriggerUIGlue);

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __53__AXVoiceTriggerUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"VoiceTriggerUI AX bundle"];
  [v2 setOverrideProcessName:@"VoiceTriggerUI"];

  return MEMORY[0x2A1C5E698]();
}

void __53__AXVoiceTriggerUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"VTUIEnrollTrainingViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VTUIEnrollmentBaseViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VTUIEnrollmentSetupIntroViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VTUIEnrollTrainingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VTUIVoiceSelectionOptionsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VTUIVoiceSelectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VTUISiriEducationViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VTUIEnrollmentSetupIntroViewControllerOrbAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VTUISiriDataSharingOptInViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end