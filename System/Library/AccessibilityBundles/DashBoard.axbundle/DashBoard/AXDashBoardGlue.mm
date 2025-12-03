@interface AXDashBoardGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXDashBoardGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];

    _Failover = [objc_allocWithZone(AXDashBoardGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __48__AXDashBoardGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"DashBoard AX"];
  [v2 setOverrideProcessName:@"DashBoard"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __48__AXDashBoardGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"DBCornerRadiusWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DBDashboardMainWindowAccessibility" canInteractWithTargetClass:1];
}

@end