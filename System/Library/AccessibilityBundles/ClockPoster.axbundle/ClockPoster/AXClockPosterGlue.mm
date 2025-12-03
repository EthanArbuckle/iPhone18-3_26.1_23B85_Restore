@interface AXClockPosterGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXClockPosterGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXClockPosterGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __50__AXClockPosterGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"ClockPoster AX"];
  [v2 setOverrideProcessName:@"ClockPoster"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __50__AXClockPosterGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"AnalogClockFaceViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ClockLabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"RollingTimeViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"RollingClockViewAccessibility" canInteractWithTargetClass:1];
}

@end