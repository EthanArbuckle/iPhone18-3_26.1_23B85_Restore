@interface AXActivityWidgetGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXActivityWidgetGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXActivityWidgetGlue accessibilityInitializeBundle];
  }
}

void __53__AXActivityWidgetGlue_accessibilityInitializeBundle__block_invoke(id a1)
{
  v1 = +[AXValidationManager sharedInstance];
  [v1 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];
}

BOOL __53__AXActivityWidgetGlue_accessibilityInitializeBundle__block_invoke_3(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"AX ActivityWidget"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"AX ActivityWidget"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

@end