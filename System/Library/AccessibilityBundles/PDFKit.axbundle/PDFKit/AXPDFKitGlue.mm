@interface AXPDFKitGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXPDFKitGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXPDFKitGlue accessibilityInitializeBundle];
  }
}

void __45__AXPDFKitGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_289 withPreValidationHandler:&__block_literal_global_291 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_297];
}

uint64_t __45__AXPDFKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AX PDFKitGlue"];
  [v2 setOverrideProcessName:@"AX PDFKitGlue"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __45__AXPDFKitGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"PDFPageViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PDFThumbnailViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PDFDocumentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PDFRemoteViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PDFIconsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PDFTextInputViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PDFPageAccessibility" canInteractWithTargetClass:1];
}

@end