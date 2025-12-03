@interface AXVictoriaSettings
+ (void)accessibilityInitializeBundle;
@end

@implementation AXVictoriaSettings

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [objc_allocWithZone(AXVictoriaSettings) init];
    v3 = _Failover;
    _Failover = v2;

    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_301 postValidationHandler:&__block_literal_global_307 safeCategoryInstallationHandler:&__block_literal_global_310];
  }
}

uint64_t __51__AXVictoriaSettings_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"NikeSettingsController" isKindOfClass:@"UIViewController"];
  [v2 validateClass:@"NikeSettingsController" hasInstanceMethod:@"showPowerSongPicker:" withFullSignature:{"v", "@", 0}];

  return 1;
}

uint64_t __51__AXVictoriaSettings_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setOverrideProcessName:@"Nike+Settings"];
  [v2 setValidationTargetName:@"Nike+Settings"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __51__AXVictoriaSettings_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"NikeSettingsControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NikeSettingsWeightControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NikeUITableViewAccessibility" canInteractWithTargetClass:1];
}

@end