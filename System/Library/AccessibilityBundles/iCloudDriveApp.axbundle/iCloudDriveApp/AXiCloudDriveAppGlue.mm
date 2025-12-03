@interface AXiCloudDriveAppGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXiCloudDriveAppGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];

    _Failover = objc_alloc_init(AXiCloudDriveAppGlue);

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __53__AXiCloudDriveAppGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"iCloudDriveApp AX Bundle"];
  [v2 setOverrideProcessName:@"iCloudDriveApp"];

  return MEMORY[0x2A1C5E698]();
}

void __53__AXiCloudDriveAppGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"NavControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"FileInfoCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ThumbnailImageViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PreviewDetailsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"FileInfoStackViewAccessibility" canInteractWithTargetClass:1];
}

@end