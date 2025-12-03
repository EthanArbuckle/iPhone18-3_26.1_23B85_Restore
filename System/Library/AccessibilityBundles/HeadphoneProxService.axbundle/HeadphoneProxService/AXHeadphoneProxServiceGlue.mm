@interface AXHeadphoneProxServiceGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXHeadphoneProxServiceGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXHeadphoneProxServiceGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __59__AXHeadphoneProxServiceGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"HeadphoneProxService AX"];
  [v2 setOverrideProcessName:@"HeadphoneProxService"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __59__AXHeadphoneProxServiceGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"HeadphoneMovieBatteryViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LabelledBatteryViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HeadphoneBatteryContainerAccessibility" canInteractWithTargetClass:1];
}

@end