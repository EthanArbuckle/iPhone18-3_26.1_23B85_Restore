@interface AXPaperKitGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXPaperKitGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXPaperKitGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __47__AXPaperKitGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"PaperKit AX"];
  [v2 setOverrideProcessName:@"PaperKit"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __47__AXPaperKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"PPKPDFIconCollectionViewCell_iOSAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CanvasElementContainerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PaperDocumentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PageLabelViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SignatureCreationViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end