@interface AXMobileSafariGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMobileSafariGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_290 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_299];

    v3 = [MEMORY[0x29EDBD690] sharedInstance];
    [v3 addHandler:&__block_literal_global_317 forFramework:@"AVKit"];

    v4 = [MEMORY[0x29EDBD690] sharedInstance];
    [v4 addHandler:&__block_literal_global_330 forFramework:@"StoreKitUI"];

    v5 = [MEMORY[0x29EDBD690] sharedInstance];
    [v5 addHandler:&__block_literal_global_340 forFramework:@"SearchUI"];

    _Failover = [objc_allocWithZone(AXMobileSafariGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __51__AXMobileSafariGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = v4;
  AXPerformBlockOnMainThreadAfterDelay();

  return 1;
}

uint64_t __51__AXMobileSafariGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Safari AX Bundle"];
  [v2 setOverrideProcessName:@"MobileSafari"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __51__AXMobileSafariGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"MobileSafariUIViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SafariUIApplicationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SafariUIDimmingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SafariUIPageControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIWebBrowserFindOnPageHighlighterAccessibility" canInteractWithTargetClass:1];
}

void __51__AXMobileSafariGlue_accessibilityInitializeBundle__block_invoke_6()
{
  v0 = MEMORY[0x29EDC7358];
  v1 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.AVKit"];
  [v0 loadAccessibilityBundleForBundle:v1 didLoadCallback:0];

  v2 = [MEMORY[0x29EDC7348] sharedInstance];
  [v2 setNeedsLoadAccessibilityInformation];
}

void __51__AXMobileSafariGlue_accessibilityInitializeBundle__block_invoke_8()
{
  v0 = MEMORY[0x29EDC7358];
  v1 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.ios.StoreKitUI"];
  [v0 loadAccessibilityBundleForBundle:v1 didLoadCallback:0];

  v2 = [MEMORY[0x29EDC7348] sharedInstance];
  [v2 setNeedsLoadAccessibilityInformation];
}

void __51__AXMobileSafariGlue_accessibilityInitializeBundle__block_invoke_9()
{
  v0 = MEMORY[0x29EDC7358];
  v1 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.SearchUI"];
  [v0 loadAccessibilityBundleForBundle:v1 didLoadCallback:0];

  v2 = [MEMORY[0x29EDC7348] sharedInstance];
  [v2 setNeedsLoadAccessibilityInformation];
}

@end