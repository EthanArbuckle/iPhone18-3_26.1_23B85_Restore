@interface AXPlatterKitGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXPlatterKitGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXPlatterKitGlue accessibilityInitializeBundle];
  }
}

void __49__AXPlatterKitGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_286 withPreValidationHandler:&__block_literal_global_288 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];
}

uint64_t __49__AXPlatterKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setOverrideProcessName:@"PlatterKit"];
  [v2 setDebugBuild:0];
  [v2 setValidationTargetName:@"PlatterKit"];

  return MEMORY[0x2A1C5E698]();
}

void __49__AXPlatterKitGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"NC_PLPlatterHeaderContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIButtonAccessibility__PlatterKit__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLGlyphControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLExpandedPlatterViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLPillViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PLPlatterActionButtonAccessibility" canInteractWithTargetClass:1];
}

@end