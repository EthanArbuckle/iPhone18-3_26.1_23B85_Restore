@interface AXTVRemoteUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXTVRemoteUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXTVRemoteUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __49__AXTVRemoteUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"TVRemoteUI AX"];
  [v2 setOverrideProcessName:@"TVRemoteUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __49__AXTVRemoteUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"TVRTouchpadViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVRMatchPointArtworkViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVRUIButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVRUIDevicePickerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVRUITouchpadViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVRUITouchpadViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVRUIDirectionalControlViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVRUIButtonPanelViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVRUIRemoteViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVRUICaptionsButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVRUIPagingButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVRUIControlPanelViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVRUITitleViewAccessibility" canInteractWithTargetClass:1];
}

@end