@interface AXPhotosEditUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXPhotosEditUIGlue

+ (void)accessibilityInitializeBundle
{
  mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
  [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_471 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_480];
}

uint64_t __51__AXPhotosEditUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"PhotosEditUI Framework AX Bundle"];
  [v2 setOverrideProcessName:@"PhotosEditUI Framework"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __51__AXPhotosEditUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"PUPhotoEditEffectCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUTiltWheelControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUVideoEditViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUAdjustmentsModePickerCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PUCompactAdjustmentsModeBarAccessibility" canInteractWithTargetClass:1];
}

@end