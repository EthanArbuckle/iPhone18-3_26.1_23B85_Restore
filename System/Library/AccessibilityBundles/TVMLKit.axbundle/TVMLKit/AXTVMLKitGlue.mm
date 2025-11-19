@interface AXTVMLKitGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXTVMLKitGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_295 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_301];

    _Failover = [objc_allocWithZone(AXTVMLKitGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __46__AXTVMLKitGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"NSObject" hasInstanceMethod:@"tv_associatedIKViewElement" withFullSignature:{"@", 0}];
  [v2 validateClass:@"UIView" hasInstanceMethod:@"tv_AccessibilityText" withFullSignature:{"@", 0}];

  return 1;
}

uint64_t __46__AXTVMLKitGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"TVMLKit"];
  [v2 setOverrideProcessName:@"TVMLKit"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __46__AXTVMLKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"IKTextBadgeAttachmentAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVControlTargetAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVMLKit_UIViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVButtonLockupAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVListViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVProductTemplateControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVStarHistogramAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVMLCollectionViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVStackCommonTemplateControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVOrganizerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVOrganizerCellViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVAlertTemplateControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVDescriptiveAlertTemplateControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVAlertTemplateViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVListSectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVStackCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVInfoCellViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVCollectionViewLockupCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVRowViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVProductCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVProductStackViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVStackingPosterViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVInfoTableViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVInfoHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVTextBadgeAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVDescriptiveAlertViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVProgressViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVMonogramViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVCollectionWrappingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVLoadingOverlayWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVShelfViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVZoomableTextViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVSeparatorViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVLabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVFocusableTextViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVInterfaceFactoryAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVMLViewFactoryAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVMLKit_TVImageViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVImageProxyAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TVCarouselViewAccessibility_iOS" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVMenuBarStackButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVGridViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVInfoListViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVStackWrappingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVStackViewFlowLayoutAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVCarouselViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end