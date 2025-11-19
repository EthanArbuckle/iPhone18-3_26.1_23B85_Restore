@interface AXStocksWeeAppGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXStocksWeeAppGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXStocksWeeAppGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __51__AXStocksWeeAppGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"StocksWidget AX Bundle"];
  [v2 setOverrideProcessName:@"StocksWidget"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __51__AXStocksWeeAppGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"SWTodayTableViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SWTodayRowOrnamentControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SWTodayTableViewCellAccessibility" canInteractWithTargetClass:1];
}

@end