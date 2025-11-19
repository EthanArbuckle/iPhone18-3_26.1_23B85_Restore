@interface AXSafariServicesSharedGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXSafariServicesSharedGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXSafariServicesSharedGlue accessibilityInitializeBundle];
  }
}

void __59__AXSafariServicesSharedGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];
}

uint64_t __59__AXSafariServicesSharedGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Safari Services Bundle"];
  [v2 setOverrideProcessName:@"SafariServices"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __59__AXSafariServicesSharedGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = [MEMORY[0x29EDB9F48] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 hasPrefix:*MEMORY[0x29EDBD678]];

  if ((v4 & 1) == 0)
  {
    [v5 installSafeCategory:@"_SFNavigationBarAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"_SFNavigationBarURLButtonAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"SFBarRegistrationAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"_SFToolbarAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"_SFBrowserNavigationBarAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"_SFBrowserContentViewControllerAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"_SFNavigationBarLabelsContainerAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"_SFAutomaticPasswordInputViewControllerAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"_SFAutoFillInputViewAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"_SFFormAutoFillControllerAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"_SFMultipleLineAlertActionViewAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"SFContactAutoFillTableViewCellAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"SFPageZoomStepperControllerAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"_SFSiriReaderPlaybackPositionAndStateControllerAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"_SFSettingsAlertStepperAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"_SFSettingsAlertButtonAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"_SFPageFormatMenuControllerAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"SFReaderTextSizeStepperControllerAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"SFFindOnPageToolbarAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"SFUnifiedBarRegistrationAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"SFDownloadsUnifiedBarItemViewAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"SFDownloadsBarButtonItemViewAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"_SFFindOnPageInputBarAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"SFLinkPreviewHeaderContentViewAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"SFAccountDetailViewControllerAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"_SFAccountPickerTableViewControllerAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"SFDefaultBrowserAppCollectionViewCellAccessibility" canInteractWithTargetClass:1];
    [v5 installSafeCategory:@"SFBarButtonGroupContainerAccessibility" canInteractWithTargetClass:1];
  }
}

@end