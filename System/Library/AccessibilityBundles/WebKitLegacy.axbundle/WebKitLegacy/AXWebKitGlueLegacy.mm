@interface AXWebKitGlueLegacy
+ (void)__webKitInitialized;
+ (void)accessibilityInitializeBundle;
@end

@implementation AXWebKitGlueLegacy

+ (void)accessibilityInitializeBundle
{
  if (_UIApplicationIsWebKitLoaded())
  {

    [a1 _webKitInitialized];
  }

  else
  {
    v3 = [MEMORY[0x29EDBA068] defaultCenter];
    [v3 addObserver:a1 selector:sel__webKitInitialized name:@"UIApplicationLoadedWebKit" object:0];
  }
}

+ (void)__webKitInitialized
{
  if (__webKitInitialized_onceToken != -1)
  {
    +[AXWebKitGlueLegacy __webKitInitialized];
  }

  v2 = [MEMORY[0x29EDBD690] sharedInstance];
  [v2 addHandler:&__block_literal_global_372 forFramework:@"DataDetectors"];
}

void __41__AXWebKitGlueLegacy___webKitInitialized__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_287 withPreValidationHandler:&__block_literal_global_339 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_348];
}

uint64_t __41__AXWebKitGlueLegacy___webKitInitialized__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"WebPDFView" hasInstanceMethod:@"doc" withFullSignature:{"^{CGPDFDocument=}", 0}];
  [v2 validateClass:@"WebView" hasInstanceMethod:@"_UIKitDelegate" withFullSignature:{"@", 0}];
  [v2 validateClass:@"WAKScrollView" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [v2 validateClass:@"WebHTMLView" hasInstanceMethod:@"_accessibilityParentForSubview:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"UIWebBrowserView" hasInstanceVariable:@"_overflowScrollViews" withType:"NSMutableSet"];
  [v2 validateClass:@"UIWebOverflowScrollView"];
  [v2 validateClass:@"UIWebOverflowScrollView" hasInstanceVariable:@"_overflowContentView" withType:"UIWebOverflowContentView"];
  [v2 validateClass:@"UIWebView" hasInstanceMethod:@"webView: didFinishLoadForFrame:" withFullSignature:{"v", "@", "@", 0}];
  [v2 validateClass:@"UIWebBrowserView" hasInstanceMethod:@"assistFormNode:" withFullSignature:{"v", "@", 0}];

  return 1;
}

uint64_t __41__AXWebKitGlueLegacy___webKitInitialized__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"WebKitLegacy AX Bundle"];
  [v2 setOverrideProcessName:@"WebKitLegacy"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __41__AXWebKitGlueLegacy___webKitInitialized__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"UIWebViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIWebDocumentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DOMNodeAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIWebBrowserViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WebHTMLViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WebViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WebPDFViewAccessibility" canInteractWithTargetClass:1];
}

void __41__AXWebKitGlueLegacy___webKitInitialized__block_invoke_5()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_374 withPreValidationHandler:&__block_literal_global_386 postValidationHandler:0 safeCategoryInstallationHandler:0];
}

uint64_t __41__AXWebKitGlueLegacy___webKitInitialized__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"DDDetectionController" hasClassMethod:@"sharedController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"DDDetectionController" hasInstanceMethod:@"_resultForURL: forContainer: context:" withFullSignature:{"^{__DDResult=}", "@", "@", "@", 0}];

  return 1;
}

uint64_t __41__AXWebKitGlueLegacy___webKitInitialized__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"DataDetectorsWebKit AX Bundle"];
  [v2 setOverrideProcessName:@"DataDetectorsWebKit"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

@end