@interface AXBridgeGlue
+ (void)_handleNanoETSettings;
+ (void)accessibilityInitializeBundle;
@end

@implementation AXBridgeGlue

+ (void)accessibilityInitializeBundle
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __45__AXBridgeGlue_accessibilityInitializeBundle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    dispatch_once(&accessibilityInitializeBundle_onceToken, block);
  }
}

uint64_t __45__AXBridgeGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_288];

  v3 = *(a1 + 32);

  return [v3 _handleNanoETSettings];
}

uint64_t __45__AXBridgeGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AX Bridge"];
  [v2 setOverrideProcessName:@"AX Bridge"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __45__AXBridgeGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"CheckmarkChoiceViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"COSDiscoverCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"COSBuddyNavigationControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"COSHelloAppleWatchViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"COSFeatureHighlightRowViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"COSFaceGalleryHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"COSPasscodeAdvancedViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"COSPasscodeChoiceViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"COSUnifiedOptinFYIViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"COSSetupControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"COSSecurePairingHeaderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BridgeUIButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BridgeNSStringAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"COSManualFlowViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"COSGetStartedViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"COSSetupFinishedViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"COSSecurePairingViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"COSPasskeyEntryViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"COSPairedDeviceListTableCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"COSInstallSpinnerButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"COSUnlockPlaceholderViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"COSHeadphoneLevelLimitSliderCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"COSSOSTriggerAnimationCellAccessibility" canInteractWithTargetClass:1];
}

+ (void)_handleNanoETSettings
{
  mEMORY[0x29EDBD690] = [MEMORY[0x29EDBD690] sharedInstance];
  [mEMORY[0x29EDBD690] addHandler:&__block_literal_global_361 forBundleName:@"ETSettings"];
}

void __37__AXBridgeGlue__handleNanoETSettings__block_invoke_2()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_365 withPreValidationHandler:&__block_literal_global_367 postValidationHandler:&__block_literal_global_373 safeCategoryInstallationHandler:&__block_literal_global_375];
}

uint64_t __37__AXBridgeGlue__handleNanoETSettings__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AX Bridge - ETPeople"];
  [v2 setOverrideProcessName:@"AX Bridge - ETPeople"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

@end