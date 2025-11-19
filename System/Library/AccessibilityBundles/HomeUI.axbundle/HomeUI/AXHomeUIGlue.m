@interface AXHomeUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXHomeUIGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXHomeUIGlue accessibilityInitializeBundle];
  }
}

void __45__AXHomeUIGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_302 withPreValidationHandler:&__block_literal_global_320 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_326];
}

uint64_t __45__AXHomeUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"HFItem"];
  [v2 validateClass:@"HMAccessory" hasInstanceMethod:@"category" withFullSignature:{"@", 0}];
  [v2 validateClass:@"HMAccessoryCategory" hasInstanceMethod:@"localizedDescription" withFullSignature:{"@", 0}];

  return 1;
}

uint64_t __45__AXHomeUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AX HomeUI"];
  [v2 setOverrideProcessName:@"AX HomeUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __45__AXHomeUIGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"UITableViewCellAccessibility__UIKit__HomeUI" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUGridCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUChevronButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUGridActionSetCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUGridServiceCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUGridSectionHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUDayOfWeekPickerCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUIconCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUQuickControlSliderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUQuickControlElasticSliderInteractionCoordinatorAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUGridHeadlineCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUQuickControlSummaryViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUTitleControlCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUColorSwatchViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUQuickControlCircleButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUQuickControlColorViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUColorWheelViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUColorPickerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUControllableItemCollectionViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUGridCameraCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUWallpaperThumbnailCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUNamedWallpaperCollectionViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUWallpaperEditingViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HomeWallpaperScrollViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUWallpaperPhotoCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUIconPickerCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUIconButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUQuickControlSwitchViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUIconViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUQuickControlViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUQuickControlSingleControlViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUQuickControlStepperViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUQuickControlStepperSegmentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HFTemperatureIconDescriptorAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUSimpleControlCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUQuickControlSegmentedControlSegmentAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUHomePodStereoSwapperCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUAlarmTableViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUOLDAlarmTableViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUAlarmEditSettingViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUTriggerListViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HUDashboardNavigationTitleViewAccessibility" canInteractWithTargetClass:1];
  v4 = v2;
  v3 = v2;
  AXPerformBlockOnMainThreadAfterDelay();
  [v3 installSafeCategory:@"HUButtonCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUCameraControllerAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUItemTableViewControllerAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUCardViewControllerAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUInstructionsCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUCalendarScrubberViewControllerAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUCalendarScrubberContainerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HULegibilityLabelAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUQuickControlWheelPickerViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUQuickControlRingSliderViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUSwitchCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUQuickControlSummaryNavigationBarTitleViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUQuickControlContainerViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUCheckmarkCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUQuickControlPushButtonViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUClipScrubberViewControllerAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUClipScrubberViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HFCameraPlaybackEngineAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HFCameraClipPlayerAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUCameraEventReachabilityCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUCameraEventRecordingCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUCameraMicrophoneControlAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUAccessoryButtonTableViewHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUDashboardNavigationViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUNaturalLightColorSwatchViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUCameraPlayerFooterViewControllerAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUQuickControlContainerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUUIPageViewControllerAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HURecordingButtonAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUAnnounceRecordingViewControllerAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUAnnouncementGlobeViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUDashboardViewControllerAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUBannerCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUDashboardFilterCategoryCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"_UICollectionViewListHeaderFooterAccessibility__HomeUI__UIKit" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUQuickControlCollectionViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUServiceDetailsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUMosaicCameraCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"UICollectionViewAccessibility__HomeUI__UIKit" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUTileCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUSceneTileCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUBannerTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUAccessoryTileCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUSideBarViewControllerAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUCheckmarkIconCollectionListCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUServiceDetailsHeaderCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUMediaAccessControlEditorTableViewControllerAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HULinkedApplicationTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUDownloadControlAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUDownloadProgressViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUAlarmTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUQuickControlSectionHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUEditLocationViewControllerAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUSceneActionEditorViewControllerAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUTimerTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUTimerCancelButtonViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUTitleValueDescriptionCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUStringInLabelTapGestureRecognizerAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUGridStatusCellAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HUHomePodDetailViewAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"HULockupViewAccessibility" canInteractWithTargetClass:1];
}

uint64_t __45__AXHomeUIGlue_accessibilityInitializeBundle__block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) installSafeCategory:@"HUViewControllerTableViewCellAccessibility" canInteractWithTargetClass:1];
  v2 = *(a1 + 32);

  return [v2 installSafeCategory:@"HUViewControllerCollectionViewCellAccessibility" canInteractWithTargetClass:1];
}

@end