@interface AXActivitySharingGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXActivitySharingGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXActivitySharingGlue accessibilityInitializeBundle];
  }
}

void __54__AXActivitySharingGlue_accessibilityInitializeBundle__block_invoke(id a1)
{
  v1 = +[AXValidationManager sharedInstance];
  [v1 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];
}

BOOL __54__AXActivitySharingGlue_accessibilityInitializeBundle__block_invoke_3(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"AX ActivitySharing"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"AX ActivitySharing"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

@end