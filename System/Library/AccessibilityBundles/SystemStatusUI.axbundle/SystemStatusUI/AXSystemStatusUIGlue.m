@interface AXSystemStatusUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXSystemStatusUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_295 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_304];

    _Failover = [objc_allocWithZone(AXSystemStatusUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __53__AXSystemStatusUIGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"STUIStatusBarTimeItem"];
  [v2 validateClass:@"STUIStatusBar"];
  [v2 validateClass:@"STUIStatusBar" hasInstanceMethod:@"items" withFullSignature:{"@", 0}];
  [v2 validateClass:@"STUIStatusBarTimeItem" hasInstanceMethod:@"pillTimeView" withFullSignature:{"@", 0}];

  return 1;
}

uint64_t __53__AXSystemStatusUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"SystemStatusUI AX"];
  [v2 setOverrideProcessName:@"SystemStatusUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __53__AXSystemStatusUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"STUIStatusBarBatteryViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarSignalViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarWifiSignalViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarCellularCondensedItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarStringViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarCellularSignalViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarDualCellularSignalViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarWifiItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarPillViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarCellularNetworkTypeViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarImageViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarLockViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarActivityViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarBluetoothItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarIndicatorItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarThermalItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarTimeItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarCellularItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarBatteryItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarBackgroundActivityItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarRoundedCornerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarNavigationItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBar_WrapperAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarIndicatorRingerSilenceItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarSensorActivityViewAccessibility" canInteractWithTargetClass:1];
}

@end