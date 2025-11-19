@interface AXTVAppGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXTVAppGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXTVAppGlue accessibilityInitializeBundle];
  }
}

void __44__AXTVAppGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];
}

uint64_t __44__AXTVAppGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"TV App AX Bundle"];
  [v2 setOverrideProcessName:@"TV"];

  return MEMORY[0x2A1C5E698]();
}

void __44__AXTVAppGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"VideosContentRatingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VideosDetailHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VideosDetailViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VideosPlaybackViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VideosPosterCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VideosUIViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VideosChaptersTableViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VideosTVEpisodesTableViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VideosRelatedStoreItemsCollectionViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VideosUICollectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VideosUITableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VideosRentalCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VideosExtrasLockupElementViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VideosUITableViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_TVInfoCellViewAccessibility" canInteractWithTargetClass:1];
}

@end