@interface AXSiriSetupGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXSiriSetupGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = +[AXValidationManager sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXSiriSetupGlue) init];

    _objc_release_x1();
  }
}

BOOL __48__AXSiriSetupGlue_accessibilityInitializeBundle__block_invoke_2(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"SiriSetup AX"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"SiriSetup"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

@end