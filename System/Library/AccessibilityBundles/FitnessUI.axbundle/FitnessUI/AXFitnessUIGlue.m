@interface AXFitnessUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXFitnessUIGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXFitnessUIGlue accessibilityInitializeBundle];
  }
}

void __48__AXFitnessUIGlue_accessibilityInitializeBundle__block_invoke(id a1)
{
  v1 = +[AXValidationManager sharedInstance];
  [v1 performValidations:&__block_literal_global_295 withPreValidationHandler:&__block_literal_global_297 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_303];
}

BOOL __48__AXFitnessUIGlue_accessibilityInitializeBundle__block_invoke_3(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"AX FitnessUI"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"AX FitnessUI"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

void __48__AXFitnessUIGlue_accessibilityInitializeBundle__block_invoke_4(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 installSafeCategory:@"FIUIHealthSettingsTableViewCellAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"FIUIActionButtonAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"FIUIHeartRateStatusViewAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"FIUIWorkoutCompletionPercentageRingViewCellAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"FIUIWorkoutSummaryColoredDetailTableViewCellAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"FUDatePickerAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"FIUIChartBarSeriesAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"FUScrollWheelAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"FIUIChartViewAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"FIUIChartUniformBarSeriesAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"FIUIChartSeriesAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"FitnessUI_UICollectionViewAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"FIUIPageViewControllerAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"FIUIPushyLabelViewAccessibility" canInteractWithTargetClass:1];
}

@end