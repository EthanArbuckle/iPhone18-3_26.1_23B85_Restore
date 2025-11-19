@interface AXGameCenterUIFrameworkGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXGameCenterUIFrameworkGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXGameCenterUIFrameworkGlue accessibilityInitializeBundle];
  }
}

void __60__AXGameCenterUIFrameworkGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_292 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_301];
}

uint64_t __60__AXGameCenterUIFrameworkGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setOverrideProcessName:@"GameCenterUIFramework"];
  [v2 setValidationTargetName:@"GameCenterUIFramework Accessibility Bundle"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __60__AXGameCenterUIFrameworkGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"GKUILabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"GKButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"GKGameCenterViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ProfileAvatarViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SectionFooterViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DetailCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NicknameFieldCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AchievementsLinkViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SmallLockupViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AchievementHighlightCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SectionHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AchievementCardAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BaseSmallFriendLockupViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PlayerProfileInfoBarViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SmallPlayerCardViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"GKLeaderboardMetadataViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"GKLeaderboardCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"GKLeaderboardScoreCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"GKChallengeListViewSectionHeaderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"GKDashboardPlayerCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"GKMultiplayerParticipantCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"GKMultiplayerStatusViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UILabelAccessibility__GameCenterUI__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"GKMultiplayerStepperViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"GKDashboardSectionHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"GKDashboardMultiplayerPickerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"GKDashboardPlayerPhotoViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"GKChallengeDetailViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PlayerProfileHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CloseButtonAccessibility" canInteractWithTargetClass:1];
}

@end