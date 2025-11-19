@interface AXTimerUIFrameworkGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXTimerUIFrameworkGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXTimerUIFrameworkGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __55__AXTimerUIFrameworkGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"MobileTimerUI AX Bundle"];
  [v2 setOverrideProcessName:@"MobileTimerUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __55__AXTimerUIFrameworkGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"MTUIAnalogClockViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTUIAlarmViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTUITimerCountdownViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTUIBaseTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTUIGlyphTimeViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTUITimeViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTUIDateLabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTUIDigitalClockLabelAccessibility" canInteractWithTargetClass:1];
}

@end