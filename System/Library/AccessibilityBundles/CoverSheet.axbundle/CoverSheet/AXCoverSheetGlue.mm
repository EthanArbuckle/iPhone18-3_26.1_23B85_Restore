@interface AXCoverSheetGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXCoverSheetGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_295 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_304];

    _Failover = objc_alloc_init(AXCoverSheetGlue);

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __49__AXCoverSheetGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"CoverSheet AX"];
  [v2 setOverrideProcessName:@"CoverSheet"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __49__AXCoverSheetGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"CSChargingViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CSCoverSheetViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CSCoverSheetViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CSModalPresentationViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CSActivityPickerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CSHomeAffordanceViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CSMediaControlsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CSPageControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CSPasscodeViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CSTimerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CSFixedFooterViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CSRemoteContentModalViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CSBatteryChargingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_CSSingleBatteryChargingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_CSDoubleBatteryChargingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CSBatteryChargingRingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CSDNDBedtimeGreetingViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CSMagSafeAccessoryViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CSFocusActivityIndicatorAccessibility" canInteractWithTargetClass:1];
  [v2 validateClass:@"CSComplicationWrapperViewController" hasInstanceMethod:@"widgetHostViewController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CSCoverSheetView"];
  [v2 validateClass:@"CSCoverSheetView" hasInstanceMethod:@"backgroundContentView" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"sidebarComplicationContainerViewController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CSInlineWidgetContainerViewController" hasInstanceMethod:@"widgetViewController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CSWidgetGridViewController" hasInstanceMethod:@"widgetGridViewController" withFullSignature:{"@", 0}];
  [v2 installSafeCategory:@"CSQuickActionsButtonAccessibility" canInteractWithTargetClass:1];
}

@end