@interface AXAirportSettings
+ (void)accessibilityInitializeBundle;
@end

@implementation AXAirportSettings

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [objc_allocWithZone(AXAirportSettings) init];
    v3 = _Failover;
    _Failover = v2;

    v4 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v4 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_293 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_302];
  }
}

uint64_t __50__AXAirportSettings_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Airport Settings AX Bundle"];
  [v2 setOverrideProcessName:@"AirportSettings"];

  return MEMORY[0x2A1C5E698]();
}

@end