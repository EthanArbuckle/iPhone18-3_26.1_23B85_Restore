@interface AXActivityBridgeSetupGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXActivityBridgeSetupGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = +[AXValidationManager sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_290 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_296];

    _Failover = [objc_allocWithZone(AXActivityBridgeSetupGlue) init];

    _objc_release_x1();
  }
}

BOOL __58__AXActivityBridgeSetupGlue_accessibilityInitializeBundle__block_invoke_2(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"AX ActivityBridgeSetup"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"AX ActivityBridgeSetup"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

void __58__AXActivityBridgeSetupGlue_accessibilityInitializeBundle__block_invoke_3(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 installSafeCategory:@"CHASActivitySetupGoalViewAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"CHASActivitySetupViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end