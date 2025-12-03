@interface AXPosterBoardFrameworkGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXPosterBoardFrameworkGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_348 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_357];

    _Failover = [objc_allocWithZone(AXPosterBoardFrameworkGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __59__AXPosterBoardFrameworkGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"PBFGenericPosterPreview" conformsToProtocol:@"PBFPosterPreview"];
  [v2 validateClass:@"PBFGenericPosterPreview" hasInstanceMethod:@"posterDescriptorLookupInfo" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PBFGenericPosterDescriptorLookupInfo" conformsToProtocol:@"PBFPosterDescriptorLookupInfo"];
  [v2 validateClass:@"PBFGenericPosterDescriptorLookupInfo" hasInstanceMethod:@"posterDescriptorPath" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PFServerPosterPath" hasInstanceMethod:@"identity" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PFServerPosterIdentity" hasInstanceMethod:@"descriptorIdentifier" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PFServerPosterIdentity" hasInstanceMethod:@"provider" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PBFPosterGalleryPreviewView" hasInstanceVariable:@"_posterPreviewContentView" withType:"PBFPosterGalleryPreviewContentView"];
  [v2 validateClass:@"PBFPosterGalleryPreviewContentView" hasInstanceVariable:@"_posterPreview" withType:"<PBFPosterPreview>"];
  [v2 validateClass:@"CHSWidgetDescriptor" hasProperty:@"extensionIdentity" withType:"@"];
  [v2 validateClass:@"CHSExtensionIdentity" hasProperty:@"containerBundleIdentifier" withType:"@"];

  return 1;
}

uint64_t __59__AXPosterBoardFrameworkGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"PosterBoardFramework AX"];
  [v2 setOverrideProcessName:@"PosterBoardFramework"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __59__AXPosterBoardFrameworkGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"PBFPosterGalleryPreviewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PBFFocusPosterCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LockScreenPosterCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PosterSectionHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PosterRackCollectionViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PosterGalleryAffordanceCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HomeScreenConfigurationControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PBFPosterGallerySectionHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PosterEditingConfirmationViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HomeScreenPosterCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PosterCoupledTitlesViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HomeScreenConfigurationPosterControlContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HomeScreenConfigurationBlurControlContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PosterRackCollectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PosterBoardFrameworkUIButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PosterSectionRemovalViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AmbientCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PosterSectionFooterViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PBFAmbientEditingCollectionViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end