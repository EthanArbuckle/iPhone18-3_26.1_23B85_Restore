@interface AXSpringBoardHomeGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXSpringBoardHomeGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXSpringBoardHomeGlue accessibilityInitializeBundle];
  }
}

void __54__AXSpringBoardHomeGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_293 withPreValidationHandler:&__block_literal_global_302 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_311];
}

uint64_t __54__AXSpringBoardHomeGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"SpringBoardHome AX"];
  [v2 setOverrideProcessName:@"SpringBoardHome"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __54__AXSpringBoardHomeGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"SBFolderControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBIconListPageControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBFolderTitleTextFieldAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBIconViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBFolderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHApplicationIconAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBFloatyFolderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBFolderContainerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBFolderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHIconManagerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBIconAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBFolderIconAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHClockApplicationIconAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHCalendarApplicationIconAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBIconDragContextAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBIconListViewDraggingAppPolicyHandlerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBIconListViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBDockIconListViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBIconListModelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBLeafIconAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBFloatingDockViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHProxiedApplicationPlaceholderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBIconLabelImageAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBRootFolderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBIconDragManagerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHEditingDoneButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHEditingWidgetButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBIconScrollViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBCloseBoxViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBFloatingDockViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBRootFolderControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHAddWidgetSheetAppCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHWidgetWrapperViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHViewControllerTransitionAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHPageManagementCellViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHWidgetStackViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHomeScreenButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHLibraryAdditionalItemsIndicatorIconAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHLibraryPodFolderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHAddWidgetDetailSheetWidgetDescriptionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHAddWidgetDetailSheetViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_SBHLibraryPodIconListViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHLibrarySearchControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIActionAccessibility__SpringBoardHome__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHLibraryPodCategoryIconAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHSearchTextFieldAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBRootFolderViewPageManagementLayoutManagerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHIconTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHLibraryCategoryPodIconViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHLibraryViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBIconWidgetIntroductionPopoverViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SB_UIScenePresentationViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBTitledHomeScreenButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBFolderScrollAccessoryViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHAddWidgetDetailSheetTitleViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHStackConfigurationViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHAddWidgetSheetIconListCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHWallpaperDimControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHStyleTintButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UITransitionViewAccessibility__SpringBoard__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHEditButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_SBHLibraryPodIconViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_SBHAddWidgetSheetCollectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHIconStylePickerControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBFolderControllerBackgroundViewAccessibility" canInteractWithTargetClass:1];
}

@end