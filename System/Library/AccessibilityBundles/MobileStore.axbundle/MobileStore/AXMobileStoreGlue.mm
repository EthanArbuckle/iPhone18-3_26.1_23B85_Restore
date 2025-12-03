@interface AXMobileStoreGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMobileStoreGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_370 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_379];

    _Failover = [objc_allocWithZone(AXMobileStoreGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __50__AXMobileStoreGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"MSTrackListCellConfiguration"];
  [v2 validateClass:@"MSTrackListCopyrightFooterView"];
  [v2 validateClass:@"MSTrackListHeaderView"];
  [v2 validateClass:@"MPMoviePlayerViewController"];
  [v2 validateClass:@"SUTableCell" isKindOfClass:@"UITableViewCell"];
  [v2 validateClass:@"SUTableCell" hasInstanceMethod:@"configuration" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MSTrackListCopyrightFooterView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MPMoviePlayerViewController" hasInstanceMethod:@"moviePlayer" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUItem" hasInstanceMethod:@"artistName" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUItem" hasInstanceMethod:@"reviewStatistics" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUItemReviewStatistics" hasInstanceMethod:@"numberOfUserRatings" withFullSignature:{"q", 0}];
  [v2 validateClass:@"SUItemReviewStatistics" hasInstanceMethod:@"averageUserRating" withFullSignature:{"f", 0}];
  [v2 validateClass:@"SUItem" hasInstanceMethod:@"contentRating" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SUItemContentRating" hasInstanceMethod:@"isExplicitContent" withFullSignature:{"B", 0}];
  [v2 validateClass:@"MPMoviePlayerViewController" hasInstanceMethod:@"moviePlayer" withFullSignature:{"@", 0}];
  [v2 validateClass:@"UITableViewCellAccessibility" hasInstanceMethod:@"_accessibilityClearChildren" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SSDownloadStatus" hasInstanceMethod:@"isPaused" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SSDownloadStatus" hasInstanceMethod:@"isFailed" withFullSignature:{"B", 0}];
  [v2 validateClass:@"MSTrackListHeaderView" hasInstanceVariable:@"_offerButton" withType:"SUItemOfferButton"];
  [v2 validateClass:@"MSTrackListHeaderView" hasInstanceVariable:@"_albumLabel" withType:"UILabel"];
  [v2 validateClass:@"MSTrackListHeaderView" hasInstanceVariable:@"_artistLabel" withType:"UILabel"];
  [v2 validateClass:@"MSTrackListHeaderView" hasInstanceVariable:@"_releaseDateLabel" withType:"UILabel"];

  return 1;
}

uint64_t __50__AXMobileStoreGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"MobileStore AX Bundle"];
  [v2 setOverrideProcessName:@"MobileStore"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __50__AXMobileStoreGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"UIMobileStoreApplicationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MSTrackListCellConfigurationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MSTrackListHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MSTrackListCopyrightFooterViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MSTrackListLinkCellConfigurationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MSTableCellAccessibility" canInteractWithTargetClass:1];
}

@end