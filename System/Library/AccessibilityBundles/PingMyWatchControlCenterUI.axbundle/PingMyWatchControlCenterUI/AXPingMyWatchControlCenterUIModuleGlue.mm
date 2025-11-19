@interface AXPingMyWatchControlCenterUIModuleGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXPingMyWatchControlCenterUIModuleGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXPingMyWatchControlCenterUIModuleGlue accessibilityInitializeBundle];
  }
}

void __71__AXPingMyWatchControlCenterUIModuleGlue_accessibilityInitializeBundle__block_invoke(id a1)
{
  v1 = +[AXValidationManager sharedInstance];
  [v1 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];
}

BOOL __71__AXPingMyWatchControlCenterUIModuleGlue_accessibilityInitializeBundle__block_invoke_3(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"PingMyWatch Module (ControlCenter)"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"PingMyWatch Module (ControlCenter)"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

void __71__AXPingMyWatchControlCenterUIModuleGlue_accessibilityInitializeBundle__block_invoke_4(id a1, AXValidationManager *a2)
{
  [(AXValidationManager *)a2 installSafeCategory:@"PMWControlCenterModuleAccessibility" canInteractWithTargetClass:1];
  v2 = +[UIAccessibilityInformationLoader sharedInstance];
  [v2 setNeedsLoadAccessibilityInformation];
}

@end