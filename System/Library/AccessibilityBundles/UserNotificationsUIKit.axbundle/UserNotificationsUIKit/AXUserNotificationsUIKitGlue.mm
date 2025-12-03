@interface AXUserNotificationsUIKitGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXUserNotificationsUIKitGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_288];

    _Failover = [objc_allocWithZone(AXUserNotificationsUIKitGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __61__AXUserNotificationsUIKitGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setOverrideProcessName:@"UserNotificationsUIKit"];
  [v2 setDebugBuild:0];
  [v2 setValidationTargetName:@"UserNotificationsUIKit"];

  return MEMORY[0x2A1C5E698]();
}

void __61__AXUserNotificationsUIKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"NCNotificationLongLookViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCNotificationShortLookViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCDimmableViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCNotificationViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCNotificationContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCNotificationListSectionHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCNotificationListCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCNotificationListSectionRevealHintViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCNotificationListHeaderTitleViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCToggleControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCNotificationListCoalescingHeaderCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCClickInteractionPresentedControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCNotificationLongLookViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCNotificationManagementViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCNotificationStructuredListViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCNotificationListViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCNotificationStructuredSectionListAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCNotificationSeamlessContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCDigestSummaryPlatterViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCInsetGroupedButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCDigestOnboardingIntroductionViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCAppPickerViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCSchedulerViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCNotificationSummaryPlatterViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCNotificationAppSectionListSummarizedContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCNotificationSummaryExpandedHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCHitTestTransparentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCExpandedPlatterViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCNotificationSummarizedSectionListAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCNotificationAppSectionListHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCNotificationListCountIndicatorViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCFullScreenPresentableViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NCNotificationListSupplementaryHostingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HighlightsTitleViewAccessibility" canInteractWithTargetClass:1];
}

@end