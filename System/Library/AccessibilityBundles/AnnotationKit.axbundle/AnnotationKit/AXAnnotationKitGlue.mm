@interface AXAnnotationKitGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXAnnotationKitGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global_0 withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXAnnotationKitGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __52__AXAnnotationKitGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AnnotationKit AX Bundle"];
  [v2 setOverrideProcessName:@"AnnotationKit"];

  return MEMORY[0x2A1C5E698]();
}

void __52__AXAnnotationKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"UIToolbarButtonAccessibility__AnnotationKit__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIButtonAccessibility__AnnotationKit__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKAnnotationLayerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKOverlayViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKColorPaletteViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKLineStylesViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKTextAttributesViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKFontSizePickerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKSegmentedCtrlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKSignatureTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKSignatureViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKCandidatePickerView_iOSAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKSmoothPathViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKColorPaletteButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKToolbarViewController_iOSAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKHighlightColorEditorControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKLegacyDoodleControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKPageControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKToolbarViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKShapesPickerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKToggleButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AKInkSignatureViewAccessibility" canInteractWithTargetClass:1];
}

@end