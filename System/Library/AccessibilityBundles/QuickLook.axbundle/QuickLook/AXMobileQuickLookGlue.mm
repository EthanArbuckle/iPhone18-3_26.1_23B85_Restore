@interface AXMobileQuickLookGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMobileQuickLookGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_290 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_299];

    v3 = [objc_allocWithZone(AXMobileQuickLookGlue) init];
    v4 = _Failover;
    _Failover = v3;

    mEMORY[0x29EDBD690] = [MEMORY[0x29EDBD690] sharedInstance];
    [mEMORY[0x29EDBD690] addHandler:&__block_literal_global_342 forFramework:@"PDFKit"];
  }
}

uint64_t __54__AXMobileQuickLookGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"MobileQuickLook AX Bundle"];
  [v2 setOverrideProcessName:@"MobileQuickLook"];

  return MEMORY[0x2A1C5E698]();
}

void __54__AXMobileQuickLookGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"QLPreviewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"QLDetailItemViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"QLOverlayPlayButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"QLToolbarButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"QLMediaItemViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"QLImageItemViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"QLListViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"QLImageItemTransformerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"QLItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"QLMediaUIScrollViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"QLVideoScrubberViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"QLLivePhotoItemViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"QLImageAnalysisManagerAccessibility" canInteractWithTargetClass:1];
}

void __54__AXMobileQuickLookGlue_accessibilityInitializeBundle__block_invoke_4()
{
  v0 = AXLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_29C1DE000, v0, OS_LOG_TYPE_DEFAULT, "Loading PDFKit", v3, 2u);
  }

  v1 = MEMORY[0x29EDC7358];
  v2 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.PDFKit"];
  [v1 loadAccessibilityBundleForBundle:v2 didLoadCallback:&__block_literal_global_350];
}

void __54__AXMobileQuickLookGlue_accessibilityInitializeBundle__block_invoke_347(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = AXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&dword_29C1DE000, v3, OS_LOG_TYPE_DEFAULT, "Loaded PDFKit %d", v5, 8u);
  }

  v4 = *MEMORY[0x29EDCA608];
}

@end