@interface AXManagedConfigurationUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXManagedConfigurationUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_292 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_301];

    _Failover = [objc_allocWithZone(AXManagedConfigurationUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __61__AXManagedConfigurationUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"ManagedConfigurationUI AX Bundle"];
  [v2 setOverrideProcessName:@"ManagedConfigurationUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

@end