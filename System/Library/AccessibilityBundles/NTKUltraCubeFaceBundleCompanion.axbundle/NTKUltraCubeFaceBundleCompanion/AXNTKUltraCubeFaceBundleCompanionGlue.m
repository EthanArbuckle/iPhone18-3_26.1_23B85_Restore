@interface AXNTKUltraCubeFaceBundleCompanionGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXNTKUltraCubeFaceBundleCompanionGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXNTKUltraCubeFaceBundleCompanionGlue accessibilityInitializeBundle];
  }
}

void __70__AXNTKUltraCubeFaceBundleCompanionGlue_accessibilityInitializeBundle__block_invoke(id a1)
{
  v1 = +[AXValidationManager sharedInstance];
  [v1 performValidations:&__block_literal_global_295 withPreValidationHandler:&__block_literal_global_297 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_303];
}

BOOL __70__AXNTKUltraCubeFaceBundleCompanionGlue_accessibilityInitializeBundle__block_invoke_3(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"AX NTKUltraCubeFaceBundleCompanion"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"AX NTKUltraCubeFaceBundleCompanion"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

void __70__AXNTKUltraCubeFaceBundleCompanionGlue_accessibilityInitializeBundle__block_invoke_4(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 installSafeCategory:@"_NTKCUltraCubePhotoListViewControllerAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"NTK_PUPhotoEditAdjustmentCellAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"NTK_PUAdjustmentsViewControllerAccessibility" canInteractWithTargetClass:1];
  [AXNanoTimeKitGlue installNanoTimeKitClasses:v2];
}

@end