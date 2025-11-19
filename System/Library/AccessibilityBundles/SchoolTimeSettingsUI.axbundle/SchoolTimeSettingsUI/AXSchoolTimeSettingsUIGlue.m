@interface AXSchoolTimeSettingsUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXSchoolTimeSettingsUIGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXSchoolTimeSettingsUIGlue accessibilityInitializeBundle];
  }
}

void __59__AXSchoolTimeSettingsUIGlue_accessibilityInitializeBundle__block_invoke(id a1)
{
  v1 = +[AXValidationManager sharedInstance];
  [v1 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];
}

BOOL __59__AXSchoolTimeSettingsUIGlue_accessibilityInitializeBundle__block_invoke_3(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"AX SchoolTimeSettingsUI"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"AX SchoolTimeSettingsUI"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

void __59__AXSchoolTimeSettingsUIGlue_accessibilityInitializeBundle__block_invoke_4(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 installSafeCategory:@"SCLHistoryItemViewAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"SCLUnlockCountTableViewCellAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"SCLUnlockHistoryTableViewCellAccessibility" canInteractWithTargetClass:1];
}

@end