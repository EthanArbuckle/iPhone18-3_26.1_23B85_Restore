@interface AXWebProcessGlue
+ (void)_initializeAXRuntime;
+ (void)accessibilityInitializeBundle;
@end

@implementation AXWebProcessGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXWebProcessGlue accessibilityInitializeBundle];
  }

  [a1 _initializeAXRuntime];
}

void __49__AXWebProcessGlue_accessibilityInitializeBundle__block_invoke()
{
  +[UIAccessibilityLoaderForWebKit _accessibilityInitializeRuntimeOverrides];
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_294 withPreValidationHandler:&__block_literal_global_303 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_312];
}

uint64_t __49__AXWebProcessGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"WKAccessibilityWebPageObject"];
  [v2 validateClass:@"WKAccessibilityWebPageObject" hasInstanceMethod:@"pageScale" withFullSignature:{"d", 0}];

  return 1;
}

uint64_t __49__AXWebProcessGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"WebProcess AX Bundle"];
  [v2 setOverrideProcessName:@"WebProcess"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __49__AXWebProcessGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"WKNSObjectAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WKAccessibilityWebPageObjectAccessibility" canInteractWithTargetClass:1];
}

+ (void)_initializeAXRuntime
{
  v3 = [MEMORY[0x29EDBD810] sharedManager];
  [v3 setAttributeCallback:&__block_literal_global_322];
  [v3 setParameterizedAttributeCallback:&__block_literal_global_325];
  [v3 setSetAttributeCallback:&__block_literal_global_328];
  [v3 setPerformActionCallback:&__block_literal_global_331];
  [v3 setHitTestCallback:&__block_literal_global_334];
  [v3 setApplicationElementCallback:&__block_literal_global_338];
  [v3 setOutgoingValuePreprocessor:&__block_literal_global_353];
  [v3 setClientObserverCallback:&__block_literal_global_357];
  [v3 start];
  _UIAXInitializeConstantValues();
  [UIAccessibilityLoaderForWebKit _performInitialAccessibilityBundleLoad:1 monitorForFutureLoadEvents:1 trackingMode:2];
  v2 = [MEMORY[0x29EDBA068] defaultCenter];
  [v2 postNotificationName:@"AccessibilityCategoryInstalled" object:0];
}

id __40__AXWebProcessGlue__initializeAXRuntime__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _AXElementForAXUIElementUniqueId();
  AXServerCacheSetEnabled();
  v6 = [v5 _iosAccessibilityAttributeValue:a4];
  AXServerCacheSetEnabled();

  return v6;
}

id __40__AXWebProcessGlue__initializeAXRuntime__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = _AXElementForAXUIElementUniqueId();
  AXServerCacheSetEnabled();
  v8 = [v7 _iosAccessibilityAttributeValue:a4 forParameter:v6];

  AXServerCacheSetEnabled();

  return v8;
}

void __40__AXWebProcessGlue__initializeAXRuntime__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = _AXElementForAXUIElementUniqueId();
  AXServerCacheSetEnabled();
  [v7 _iosAccessibilitySetValue:v6 forAttribute:a4];

  AXServerCacheSetEnabled();
}

uint64_t __40__AXWebProcessGlue__initializeAXRuntime__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v8 = a5;
  v9 = _AXElementForAXUIElementUniqueId();
  AXServerCacheSetEnabled();
  v10 = [v9 _iosAccessibilityPerformAction:a4 withValue:v8 fencePort:a6];

  AXServerCacheSetEnabled();
  return v10;
}

id __40__AXWebProcessGlue__initializeAXRuntime__block_invoke_5(double a1, double a2)
{
  v4 = _AXElementForAXUIElementUniqueId();
  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __40__AXWebProcessGlue__initializeAXRuntime__block_invoke_5_cold_1(v4, v5, a1, a2);
  }

  AXServerCacheSetEnabled();
  v6 = [v4 accessibilityHitTest:{a1, a2}];
  AXServerCacheSetEnabled();

  return v6;
}

BOOL __40__AXWebProcessGlue__initializeAXRuntime__block_invoke_2_340(uint64_t a1, void *a2)
{
  v2 = [a2 accessibilityElements];
  v3 = [v2 firstObject];

  MEMORY[0x29ED42300](@"WKAccessibilityWebPageObject");
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 safeValueForKey:@"accessibilityRootObjectWrapper"], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    [v4 safeCGRectForKey:@"accessibilityElementRect"];
    v8 = fmin(v6, v7) > 0.0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __40__AXWebProcessGlue__initializeAXRuntime__block_invoke_5_cold_1(uint64_t a1, NSObject *a2, double a3, double a4)
{
  v11 = *MEMORY[0x29EDCA608];
  v6 = NSStringFromPoint(*&a3);
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a1;
  _os_log_debug_impl(&dword_29C7B6000, a2, OS_LOG_TYPE_DEBUG, "Web hit test: %@ > %@", &v7, 0x16u);
}

@end