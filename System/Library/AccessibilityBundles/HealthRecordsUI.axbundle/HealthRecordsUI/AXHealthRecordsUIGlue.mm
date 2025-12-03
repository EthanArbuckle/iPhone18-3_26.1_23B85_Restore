@interface AXHealthRecordsUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXHealthRecordsUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXHealthRecordsUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __54__AXHealthRecordsUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"HealthRecordsUI AX"];
  [v2 setOverrideProcessName:@"HealthRecordsUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __54__AXHealthRecordsUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"WDMedicalRecordTimelineContentSubtitleCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WDMedicalRecordCategorySectionHeaderCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WDMedicalRecordSectionHeaderCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WDClinicalOnboardingGatewayCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WDClinicalOnboardingLocationCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AccountStatusSummaryTileFeedItemViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AccountViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HRStandardTableViewCellAccessibility" canInteractWithTargetClass:1];
}

@end