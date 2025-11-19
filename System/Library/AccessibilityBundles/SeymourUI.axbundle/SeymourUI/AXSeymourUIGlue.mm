@interface AXSeymourUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXSeymourUIGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXSeymourUIGlue accessibilityInitializeBundle];
  }
}

void __48__AXSeymourUIGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_285 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];
}

uint64_t __48__AXSeymourUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AX SeymourUI"];
  [v2 setOverrideProcessName:@"AX SeymourUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __48__AXSeymourUIGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"CompletedIconViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CircleRowCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MusicTrackCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DownloadButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CircleItemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ShelfTitleViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AccountButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SummaryActivityRingsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SummaryBurnBarViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SummaryPlatterButtonViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SessionStackedLabelViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SeymourUI_PhoneStandardBrickRowCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SeymourUI_GroupedBrickItemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SeymourUI_GuidedWorkoutBrickRowCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SeymourUI_ProgramBrickItemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SeymourUI_StandardBrickItemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SeymourUI_ModalityBrickItemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SeymourUI_MarketingHeaderBannerCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SeymourUI_ActivityTypeIconViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SeymourUI_ProgramMediaTagsCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SeymourUI_SessionPromptAlertViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SeymourUI_PhoneSessionPortraitSummaryViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SeymourUI_WorkoutMediaTagsCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SeymourUI_StandardFilterCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SeymourUI_WorkoutCountdownViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SeymourUI_WorkoutPlayButtonViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SeymourUI_TabletStandardBrickRowCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SeymourUI_TabletActionBrickRowCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SeymourUI_TabletIndexedBrickItemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"FullWidthDetailHeaderCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ActionBrickItemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ActionBrickRowCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ModalityFilterCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DurationFilterCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"FilterOptionsViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ArtworkViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TrainerFilterCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SessionTimeProgressViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SessionHeartRateViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SessionRingsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SessionSingleMetricViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SessionBurnBarViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SessionOverlayPresenterAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SessionRingsPresenterAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SessionTimerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SessionTrackViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MarketingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EditorialCollectionBrickRowCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SMUGradientBackedLabelViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SelectedFilterCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ThemeFilterCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"GuidedWorkoutBrickItemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"EditorialCollectionBrickItemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ExpandableTextViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MyLibraryEntryCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UpNextQueueViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UpNextQueueButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MoreOptionsButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ModalityPickerItemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WorkoutPlanBrickItemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WeekdayButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WeekdayPlannerModalityCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WeekdayPlannerAddCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WorkoutPlanPreferenceRowCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PreferredTrainerCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PreferredMusicGenreCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WorkoutPlanGalleryBrickItemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ValueItemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UpNextQueueRowCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VideoBrickItemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UpNextQueueHeaderCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WorkoutPlanBannerCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"VideoBrickRowCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"FilterHeaderCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WorkoutPlanScheduledItemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ActivityPickerCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WorkoutPlanPreferencesViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ExpandingDetailDescriptionCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SummaryContentSummaryViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AccountSettingRowCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AccountSettingAvatarRowCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WorkoutPlanDetailHeaderCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CalendarTitleViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MeditationPlayButtonViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MeditationCountdownViewAccessibility" canInteractWithTargetClass:1];
}

@end