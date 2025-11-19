@interface AXWebCoreGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXWebCoreGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXWebCoreGlue accessibilityInitializeBundle];
  }
}

void __46__AXWebCoreGlue_accessibilityInitializeBundle__block_invoke()
{
  _AXUIInstallBaseCategories();
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];
}

uint64_t __46__AXWebCoreGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"WebCore AX Bundle"];
  [v2 setOverrideProcessName:@"WebCore"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __46__AXWebCoreGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"UIKitWebAccessibilityObjectWrapper" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIKitAccessibilityTextMarker" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WAKScrollViewAccessibility" canInteractWithTargetClass:1];
}

@end