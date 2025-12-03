@interface AXHealthUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXHealthUIGlue

+ (void)accessibilityInitializeBundle
{
  mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
  [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_312 postValidationHandler:&__block_literal_global_318 safeCategoryInstallationHandler:&__block_literal_global_321];
}

uint64_t __47__AXHealthUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"HealthUI"];
  [v2 setOverrideProcessName:@"HealthUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __47__AXHealthUIGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"HKExportPDFControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HKSwitchTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UITextFieldAccessibility__HealthKit__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HKGraphViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HKElectrocardiogramChartTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HKElectrocardiogramChartViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HKElectrocardiogramAxisViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HKElectrocardiogramCardViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HKMonthWeekViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HKMonthDayCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HKWeekdayHeaderPaletteViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HKCalendarScrollViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HKInteractiveChartViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_HKTimeScopeControlBarAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HKDisplayTypeContextVerticalCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HKListItemLabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HKNumberedListItemViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HKOnboardingBaseViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HKAudiogramChartViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HKOnboardingCompactDatePickerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HKInteractiveChartAnnotationViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HKPopulationNormsClassificationCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HKSingleAudiogramChartViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end