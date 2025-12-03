@interface AXUpNextWidgetGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXUpNextWidgetGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXUpNextWidgetGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __51__AXUpNextWidgetGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"UpNextWidget AX Bundle"];
  [v2 setOverrideProcessName:@"UpNext"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __51__AXUpNextWidgetGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"GutterizedEventTrailingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MapViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LargeEventViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LargeReminderViewAccessibility" canInteractWithTargetClass:1];
}

@end