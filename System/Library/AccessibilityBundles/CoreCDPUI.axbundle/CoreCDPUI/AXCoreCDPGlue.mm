@interface AXCoreCDPGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXCoreCDPGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXCoreCDPGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __46__AXCoreCDPGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"CoreCDP AX"];
  [v2 setOverrideProcessName:@"CoreCDP"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

@end