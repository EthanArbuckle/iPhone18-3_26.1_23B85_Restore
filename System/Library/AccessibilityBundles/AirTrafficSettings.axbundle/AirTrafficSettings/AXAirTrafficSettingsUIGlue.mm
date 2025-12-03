@interface AXAirTrafficSettingsUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXAirTrafficSettingsUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_303 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_312];

    _Failover = [objc_allocWithZone(AXAirTrafficSettingsUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __59__AXAirTrafficSettingsUIGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"SyncFooterView" isKindOfClass:@"UIView"];
  [v2 validateClass:@"SyncFooterView" hasInstanceMethod:@"updateProgress: dataSource:" withFullSignature:{"B", "@", "@", 0}];

  return 1;
}

uint64_t __59__AXAirTrafficSettingsUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AirTraffic AX Bundle"];
  [v2 setOverrideProcessName:@"AirTraffic"];

  return MEMORY[0x2A1C5E698]();
}

@end