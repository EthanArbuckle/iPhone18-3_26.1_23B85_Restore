@interface AXActivityRingsUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXActivityRingsUIGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXActivityRingsUIGlue accessibilityInitializeBundle];
  }
}

void __54__AXActivityRingsUIGlue_accessibilityInitializeBundle__block_invoke(id a1)
{
  v1 = +[AXValidationManager sharedInstance];
  [v1 performValidations:&__block_literal_global_289 withPreValidationHandler:&__block_literal_global_291 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_297];
}

BOOL __54__AXActivityRingsUIGlue_accessibilityInitializeBundle__block_invoke_3(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"AX ActivityRingsUI"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"AX ActivityRingsUI"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

void __54__AXActivityRingsUIGlue_accessibilityInitializeBundle__block_invoke_4(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 installSafeCategory:@"ARUIRingGroupAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"ARUIRingGroupControllerAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"ARUIRingsViewAccessibility" canInteractWithTargetClass:1];
}

@end