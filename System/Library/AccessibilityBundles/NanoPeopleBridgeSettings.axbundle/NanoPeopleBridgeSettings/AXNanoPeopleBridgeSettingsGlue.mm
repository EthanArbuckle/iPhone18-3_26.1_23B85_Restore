@interface AXNanoPeopleBridgeSettingsGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXNanoPeopleBridgeSettingsGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXNanoPeopleBridgeSettingsGlue accessibilityInitializeBundle];
  }
}

void __63__AXNanoPeopleBridgeSettingsGlue_accessibilityInitializeBundle__block_invoke(id a1)
{
  v1 = +[AXValidationManager sharedInstance];
  [v1 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];
}

BOOL __63__AXNanoPeopleBridgeSettingsGlue_accessibilityInitializeBundle__block_invoke_3(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"AX NanoPeopleBridgeSettings"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"AX NanoPeopleBridgeSettings"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

void __63__AXNanoPeopleBridgeSettingsGlue_accessibilityInitializeBundle__block_invoke_4(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 installSafeCategory:@"NPLPersonViewAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"NPLPeopleViewCellAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"NPLPeopleViewControllerAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"NPLDeleteButtonAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"NPLSettingsPeopleViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end