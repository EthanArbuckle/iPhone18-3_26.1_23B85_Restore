@interface SBIconViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityCanDrag;
- (BOOL)_accessibilityCanPerformEscapeAction;
- (BOOL)_accessibilityCanReceiveGrabbedIcons;
- (BOOL)_accessibilityCanReceiveIcons:(id)icons;
- (BOOL)_accessibilityDeleteApp;
- (BOOL)_accessibilityElementShouldBeInvalid;
- (BOOL)_accessibilityHasBadge;
- (BOOL)_accessibilityIsCategoryIconView;
- (BOOL)_accessibilityIsDraggingWidget;
- (BOOL)_accessibilityIsFolderIconView;
- (BOOL)_accessibilityIsInCmdTabSwitcher;
- (BOOL)_accessibilityIsInFolder;
- (BOOL)_accessibilityIsInShortcutMenu;
- (BOOL)_accessibilityIsTimedOut;
- (BOOL)_accessibilityIsWidgetIconView;
- (BOOL)_accessibilityIsWidgetInAddWidgetSheet;
- (BOOL)_accessibilityIsWidgetStackIconView;
- (BOOL)_accessibilityResizeControl:(id)control;
- (BOOL)_accessibilityScrollToVisible;
- (BOOL)_accessibilityShowAppLibrary;
- (BOOL)_accessibilityShowTodayView;
- (BOOL)_accessibilityToggleJigglyMode;
- (BOOL)_axIconManagerHasOpenFolder;
- (BOOL)_axInAmbientPresentationMode;
- (BOOL)_axIsAppLibraryInDock;
- (BOOL)_axIsIconEditing;
- (BOOL)_axIsInControlCenter;
- (BOOL)_axIsInControlCenterGallery;
- (BOOL)_axIsInDock;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (CGPoint)_accessibilityAmbientModeDropPoint:(BOOL)point;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)_accessibilityCompareFrameForScrollParent:(id)parent frame:(CGRect)frame fromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation;
- (CGRect)_accessibilityFrameForSorting;
- (CGRect)accessibilityBrailleMapRenderRegion;
- (CGRect)accessibilityFrame;
- (id)_accessibilityAddToDragSessionCustomAction;
- (id)_accessibilityBundleIdentifier;
- (id)_accessibilityFilterInteractionLocationDescriptorsForVisible:(id)visible;
- (id)_accessibilityPreferredScrollActions;
- (id)_accessibilityScrollStatus;
- (id)_accessibilitySupportGesturesAttributes;
- (id)_axDragManager;
- (id)_axDropPointLabel:(BOOL)label;
- (id)_axFolderController;
- (id)_axIconController;
- (id)_axIconManager;
- (id)_axRootList;
- (id)_axSortedSupportedGridSizeClasses;
- (id)_axStringForGridSizeClass:(id)class;
- (id)_containerViewForLegacyFocusRing;
- (id)accessibilityCustomActions;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityDropPointDescriptors;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (id)automationElements;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)focusGroupIdentifier;
- (id)focusItemsInRect:(CGRect)rect;
- (int64_t)_accessibilityExpandedStatus;
- (int64_t)_axIconToCCUIGridSize:(id)size;
- (int64_t)accessibilityContainerType;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityAddAppLibraryViewAction:(id)action;
- (void)_accessibilityAddControlsGalleryViewAction:(id)action;
- (void)_accessibilityAddEditActions:(id)actions;
- (void)_accessibilityAddTodayViewAction:(id)action;
- (void)_accessibilityBeginDragAtPoint:(CGPoint)point endpoint:(id)endpoint completion:(id)completion;
- (void)_accessibilityDeleteActions:(id)actions;
- (void)_accessibilityDropFromFolderAction:(id)action;
- (void)_accessibilityEditAmbientIcon;
- (void)_accessibilityIsWidgetInAddWidgetSheet;
- (void)_accessibilityResizeActions:(id)actions;
- (void)_accessibilitySetupCloseBox;
- (void)_axRootList;
- (void)_createCloseBoxIfNecessary;
- (void)_updateCloseBoxAnimated:(BOOL)animated;
- (void)_updateCustomIconImageViewControllerHitTesting;
- (void)accessibilityElementDidBecomeFocused;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
@end

@implementation SBIconViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBHLibraryPodIndicatorIcon"];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"icon" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"location" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"_isShowingCloseBox" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"_createCloseBoxIfNecessary" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"_updateCloseBoxAnimated:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"contextMenuInteraction:configurationForMenuAtLocation:" withFullSignature:{"@", "@", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"contextMenuInteraction:willEndForConfiguration:animator:" withFullSignature:{"v", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceVariable:@"_closeBox" withType:"SBCloseBoxView"];
  [validationsCopy validateClass:@"SBIconView" hasInstanceVariable:@"_accessoryView" withType:"UIView<SBIconAccessoryView>"];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"canReceiveGrabbedIcon:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"SBIconListModel" hasInstanceMethod:@"directlyContainsIcon:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"SBIconListModel" hasInstanceMethod:@"directlyContainsLeafIconWithIdentifier:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"effectiveDockListView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFolderController" hasInstanceMethod:@"currentIconListView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"icon" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconListModel" hasInstanceMethod:@"indexForIcon:" withFullSignature:{"Q", "@", 0}];
  [validationsCopy validateClass:@"SBIconListModel" hasInstanceMethod:@"gridCellInfoWithOptions:" withFullSignature:{"@", "Q", 0}];
  [validationsCopy validateClass:@"SBIconListModel" hasInstanceMethod:@"coordinateForGridCellIndex:gridCellInfoOptions:" withFullSignature:{"{SBIconCoordinate=qq}", "Q", "Q", 0}];
  [validationsCopy validateClass:@"SBIconListModel" hasInstanceMethod:@"gridSizeForGridSizeClass:" withFullSignature:{"{SBHIconGridSize=SS}", "@", 0}];
  [validationsCopy validateClass:@"SBIconListModel" hasInstanceMethod:@"gridCellIndexForIcon:gridCellInfo:" withFullSignature:{"Q", "@", "@", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"isEditing" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBIcon" hasInstanceMethod:@"isFolderIcon" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBIcon" hasInstanceMethod:@"isPlaceholder" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBIcon" hasInstanceMethod:@"isWidgetIcon" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBIcon" hasInstanceMethod:@"isCategoryIcon" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBIcon" hasInstanceMethod:@"isWidgetStackIcon" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBIcon" hasInstanceMethod:@"canBeAddedToMultiItemDrag" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBIcon" hasInstanceMethod:@"gridSizeClass" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconListModel" hasInstanceMethod:@"isFull" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBIcon" hasInstanceMethod:@"labelAccessoryType" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SBFolder" hasInstanceMethod:@"containsIcon:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"openedFolder" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"_iconImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"folderIcon" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"iconImageCornerRadius" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"isCustomIconImageViewHitTestingDisabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"_updateCustomIconImageViewControllerHitTesting" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"customIconImageViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"_getDragRegionRects:forIconView:" withFullSignature:{"v", "^{SBIconListViewCellDragRegionRects={CGRect={CGPoint=dd}{CGSize=dd}}{CGRect={CGPoint=dd}{CGSize=dd}}{CGRect={CGPoint=dd}{CGSize=dd}}{CGRect={CGPoint=dd}{CGSize=dd}}{CGRect={CGPoint=dd}{CGSize=dd}}{CGRect={CGPoint=dd}{CGSize=dd}}}", "@", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceVariable:@"_iconLocation" withType:"NSString"];
  [validationsCopy validateClass:@"SBIconView" hasInstanceVariable:@"_focusEffectPlatterView" withType:"SBIconFocusEffectPlatterView"];
  [validationsCopy validateClass:@"SBIconView" hasInstanceVariable:@"_delegate" withType:"<SBIconViewDelegate>"];
  [validationsCopy validateClass:@"SBIconDragManager" hasInstanceMethod:@"enumerateIconDragContextsUsingBlock:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"SBIconDragContext" hasInstanceMethod:@"isUserActive" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBIconDragContext" hasInstanceMethod:@"draggedIcons" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"iconDragManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFolderController" hasInstanceMethod:@"setCurrentPageIndex: animated: completion:" withFullSignature:{"B", "q", "B", "@?", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceVariable:@"_accessoryView" withType:"UIView<SBIconAccessoryView>"];
  [validationsCopy validateProtocol:@"SBIconViewDelegate" hasOptionalInstanceMethod:@"iconTapped:"];
  [validationsCopy validateProtocol:@"SBIconViewDelegate" hasOptionalInstanceMethod:@"iconCloseBoxTapped:"];
  [validationsCopy validateClass:@"SBFloatingDockViewController" hasInstanceMethod:@"suggestionsViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"_accessibilityCanDrag" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"_accessibilityBeginDragAtPoint:endpoint:completion:" withFullSignature:{"v", "{CGPoint=dd}", "@", "@?", 0}];
  [validationsCopy validateClass:@"SBIconDragManager" hasInstanceMethod:@"cancelAllDrags" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBIconDragManager" hasInstanceMethod:@"isTrackingWidgetIconDrags" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBHIconManager"];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"currentRootIconList" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"_effectiveTodayViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"openedFolderController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"hasOpenFolder" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"setEditing:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"SBIconListView"];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"iconColumnsForCurrentOrientation" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"_containerViewForLegacyFocusRing" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHPageManagementIcon"];
  [validationsCopy validateClass:@"SBHLibraryViewController" hasInstanceMethod:@"podFolderViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHLibraryViewController" hasInstanceMethod:@"popNestedViewControllerAnimated:withCompletion:" withFullSignature:{"v", "B", "@?", 0}];
  [validationsCopy validateClass:@"SBHLibraryPodFolderController" hasInstanceMethod:@"_nestingViewControllerForPushing" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"behaviorDelegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NSObject" hasInstanceMethod:@"_accessibilityFrameForSorting" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"NSObject" hasInstanceMethod:@"_accessibilityCompareFrameForScrollParent:frame:fromOrientation:toOrientation:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "q", "q", 0}];
  [validationsCopy validateClass:@"SBHLibraryCategoryStackView"];
  [validationsCopy validateClass:@"SBHLibraryCategoryStackView" hasInstanceVariable:@"_iconImageViews" withType:"NSMapTable"];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"presentStackConfigurationCard" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBHStackConfigurationViewController" hasInstanceVariable:@"_presenter" withType:"<SBHWidgetSheetViewControllerPresenter>"];
  [validationsCopy validateClass:@"SBHStackConfigurationViewController"];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"coordinateAtPoint:" withFullSignature:{"{SBIconCoordinate=qq}", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"centerForIconCoordinate:" withFullSignature:{"{CGPoint=dd}", "{SBIconCoordinate=qq}", 0}];
  [validationsCopy validateClass:@"_SBHStackConfigurationIconView"];
  [validationsCopy validateClass:@"_SBHStackConfigurationIconView" isKindOfClass:@"SBIconView"];
  [validationsCopy validateClass:@"_SBHStackConfigurationIconView" hasInstanceMethod:@"_stackConfigurationViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_SBHStackConfigurationIconView" hasInstanceMethod:@"_iconListView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"focusItemsInRect:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceVariable:@"_delegate" withType:"<SBIconViewDelegate>"];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"isShowingResizeHandle" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceVariable:@"_customIconImageViewController" withType:"UIViewController<SBIconViewCustomImageViewControlling>"];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"supportedIconGridSizeClasses" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"iconGridSizeClassSizes" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHIconGridSizeClassSizeMap" hasInstanceMethod:@"gridSizeClassesSortedByGridAreaWithAllowedGridSizeClasses:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"listLayout" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"SBIconListLayout" hasMethod:@"iconImageInfoForGridSizeClass:" isInstanceMethod:1 isRequired:0];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"setIconImageInfo:" withFullSignature:{"v", "{SBIconImageInfo={CGSize=dd}dd}", 0}];
  [validationsCopy validateClass:@"SBIconListModel" hasInstanceMethod:@"bestGridCellIndexForInsertingIcon:maintainingPositionBeforeIcon:ignoringPlaceholders:gridCellInfoOptions:mutationOptions:" withFullSignature:{"Q", "@", "@", "B", "Q", "Q", 0}];
  [validationsCopy validateClass:@"SBIconListModel" hasInstanceMethod:@"bestGridCellIndexForInsertingIcon:maintainingPositionAfterIcon:ignoringPlaceholders:gridCellInfoOptions:mutationOptions:" withFullSignature:{"Q", "@", "@", "B", "Q", "Q", 0}];
  [validationsCopy validateClass:@"SBIconListModel" hasInstanceMethod:@"iconAtGridCellIndex:gridCellInfoOptions:" withFullSignature:{"@", "Q", "Q", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"iconViewForIcon:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"SBIconListModel" hasInstanceMethod:@"iconWithIdentifier:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceVariable:@"_placeholderAssertions" withType:"NSHashTable"];
  [validationsCopy validateClass:@"SBIconListViewPlaceholderAssertion" hasInstanceMethod:@"placeholderIcon" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"displayedModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconListModel" hasInstanceMethod:@"numberOfNonPlaceholderIcons" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"SBIconListModel" hasInstanceMethod:@"maxNumberOfIcons" withFullSignature:{"Q", 0}];
}

- (BOOL)_accessibilityIsInCmdTabSwitcher
{
  v2 = [(SBIconViewAccessibility *)self _accessibilityValueForKey:@"AXIsInCmdTabSwitcher"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)_accessibilityIsInShortcutMenu
{
  v2 = [(SBIconViewAccessibility *)self _accessibilityValueForKey:@"AXIsInShortcutMenu"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)_axIsAppLibraryInDock
{
  v3 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
  if ([(SBIconViewAccessibility *)self _axIsInDock])
  {
    NSClassFromString(&cfstr_Sbhlibrarypodi_3.isa);
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)_axIsInControlCenterGallery
{
  v2 = [(SBIconViewAccessibility *)self safeValueForKey:@"delegate"];
  NSClassFromString(&cfstr_Controlcenteru_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsInControlCenter
{
  v2 = [(SBIconViewAccessibility *)self safeValueForKey:@"location"];
  v3 = [v2 isEqualToString:@"controlCenter"];

  return v3;
}

- (id)accessibilityLabel
{
  if ([(SBIconViewAccessibility *)self _axIsAppLibraryInDock])
  {
    accessibilityLabel = accessibilityLocalizedString(@"app.library");
  }

  else
  {
    v4 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
    accessibilityLabel = [v4 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (id)accessibilityIdentifier
{
  if ([(SBIconViewAccessibility *)self _axIsAppLibraryInDock])
  {
    accessibilityIdentifier = @"AppLibrary";
  }

  else
  {
    v4 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
    accessibilityIdentifier = [v4 accessibilityIdentifier];
  }

  return accessibilityIdentifier;
}

- (int64_t)_accessibilityExpandedStatus
{
  if ([(SBIconViewAccessibility *)self _axIsAppLibraryInDock])
  {
    v3 = [(SBIconViewAccessibility *)self safeValueForKey:@"delegate"];
    v4 = [v3 safeBoolForKey:@"isPresentingLibrary"];

    if (v4)
    {
      return 1;
    }
  }

  v6.receiver = self;
  v6.super_class = SBIconViewAccessibility;
  return [(SBIconViewAccessibility *)&v6 _accessibilityExpandedStatus];
}

- (BOOL)_accessibilityIsFolderIconView
{
  v2 = [(SBIconViewAccessibility *)self safeValueForKey:@"folderIcon"];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_accessibilityIsWidgetIconView
{
  v2 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
  v3 = [v2 safeBoolForKey:@"isWidgetIcon"];

  return v3;
}

- (void)_accessibilitySetupCloseBox
{
  v3 = [(SBIconViewAccessibility *)self safeValueForKey:@"_closeBox"];
  [v3 setAccessibilityIdentifier:@"DeleteButton"];

  v4 = [(SBIconViewAccessibility *)self safeValueForKey:@"_closeBox"];
  [v4 setIsAccessibilityElement:0];
}

- (BOOL)_accessibilityIsWidgetStackIconView
{
  v2 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
  v3 = [v2 safeBoolForKey:@"isWidgetStackIcon"];

  return v3;
}

- (BOOL)_accessibilityIsWidgetInAddWidgetSheet
{
  v2 = [(SBIconViewAccessibility *)self safeStringForKey:@"location"];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = getSBIconLocationAddWidgetSheetSymbolLoc_ptr;
  v10 = getSBIconLocationAddWidgetSheetSymbolLoc_ptr;
  if (!getSBIconLocationAddWidgetSheetSymbolLoc_ptr)
  {
    v4 = SpringBoardHomeLibrary_0();
    v8[3] = dlsym(v4, "SBIconLocationAddWidgetSheet");
    getSBIconLocationAddWidgetSheetSymbolLoc_ptr = v8[3];
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v3)
  {
    [SBIconViewAccessibility _accessibilityIsWidgetInAddWidgetSheet];
  }

  v5 = [v2 containsString:*v3];

  return v5;
}

- (BOOL)_accessibilityIsCategoryIconView
{
  v2 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
  v3 = [v2 safeBoolForKey:@"isCategoryIcon"];

  return v3;
}

- (CGRect)accessibilityBrailleMapRenderRegion
{
  v3 = [(SBIconViewAccessibility *)self safeUIViewForKey:@"_iconImageView"];
  [v3 frame];
  [(SBIconViewAccessibility *)self convertRect:v3 fromView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (int64_t)accessibilityContainerType
{
  v3 = ![(SBIconViewAccessibility *)self _accessibilityIsWidgetIconView]|| ([(SBIconViewAccessibility *)self safeBoolForKey:@"isCustomIconImageViewHitTestingDisabled"]& 1) != 0 || [(SBIconViewAccessibility *)self _axIsIconEditing];
  v4 = [(SBIconViewAccessibility *)self safeStringForKey:@"location"];
  v5 = getSBIconLocationAppLibrary();
  v6 = [v4 containsString:v5];

  if (v6)
  {
    v3 = ![(SBIconViewAccessibility *)self _accessibilityIsCategoryIconView];
  }

  if ([(SBIconViewAccessibility *)self _axIsInControlCenter]|| [(SBIconViewAccessibility *)self _axIsInControlCenterGallery]|| v3)
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

- (BOOL)_accessibilityIsInFolder
{
  if (AXProcessIsSpringBoard())
  {
    _axIconManager = [(SBIconViewAccessibility *)self _axIconManager];
    if ([(SBIconViewAccessibility *)self _axIconManagerHasOpenFolder])
    {
      if ([(SBIconViewAccessibility *)self _axIsInControlCenter])
      {
        _axFolderController = [(SBIconViewAccessibility *)self _axFolderController];
        v5 = [_axFolderController safeValueForKeyPath:@"folderView.folder"];
      }

      else
      {
        v5 = [_axIconManager safeValueForKey:@"openedFolder"];
      }

      v7 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v14 = 0;
      v9 = v5;
      v10 = v7;
      AXPerformSafeBlock();
      v6 = *(v12 + 24);

      _Block_object_dispose(&v11, 8);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t __51__SBIconViewAccessibility__accessibilityIsInFolder__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) containsIcon:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_accessibilityHasBadge
{
  v3 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
  v4 = [v3 safeValueForKey:@"badgeNumberOrString"];
  if (v4)
  {
    objc_opt_class();
    v5 = [(SBIconViewAccessibility *)self safeValueForKey:@"_accessoryView"];
    v6 = __UIAccessibilityCastAsClass();

    _accessibilityViewIsVisible = [v6 _accessibilityViewIsVisible];
  }

  else
  {
    _accessibilityViewIsVisible = 0;
  }

  return _accessibilityViewIsVisible;
}

- (BOOL)_accessibilityIsTimedOut
{
  v2 = [(SBIconViewAccessibility *)self safeValueForKey:@"_icon"];
  v3 = [v2 safeIntegerForKey:@"labelAccessoryType"];

  return v3 == 4;
}

- (BOOL)_accessibilityCanReceiveIcons:(id)icons
{
  v27 = *MEMORY[0x29EDCA608];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = icons;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = *v23;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        if ([*(*(&v22 + 1) + 8 * i) safeBoolForKey:@"isPlaceholder"])
        {
          LOBYTE(v16) = 0;
          v7 = AXMainSBHomeScreenController();
          v8 = [v7 safeValueForKey:@"iconDragManager"];
          v9 = __UIAccessibilitySafeClass();

          if (v16 == 1)
          {
            abort();
          }

          v16 = 0;
          v17 = &v16;
          v18 = 0x3032000000;
          v19 = __Block_byref_object_copy__8;
          v20 = __Block_byref_object_dispose__8;
          v21 = 0;
          v15 = v9;
          AXPerformSafeBlock();
          v10 = [(SBIconViewAccessibility *)self _accessibilityCanReceiveIcons:v17[5]];

          _Block_object_dispose(&v16, 8);
          if (!v10)
          {
            goto LABEL_13;
          }
        }

        v16 = 0;
        v17 = &v16;
        v18 = 0x2020000000;
        LOBYTE(v19) = 0;
        AXPerformSafeBlock();
        v11 = *(v17 + 24);
        _Block_object_dispose(&v16, 8);
        if ((v11 & 1) == 0)
        {
LABEL_13:
          v12 = 0;
          goto LABEL_14;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_14:

  return v12;
}

uint64_t __57__SBIconViewAccessibility__accessibilityCanReceiveIcons___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __57__SBIconViewAccessibility__accessibilityCanReceiveIcons___block_invoke_2;
  v3[3] = &unk_29F300488;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateIconDragContextsUsingBlock:v3];
}

void __57__SBIconViewAccessibility__accessibilityCanReceiveIcons___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 safeBoolForKey:@"isUserActive"])
  {
    v3 = [v6 safeArrayForKey:@"draggedIcons"];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

uint64_t __57__SBIconViewAccessibility__accessibilityCanReceiveIcons___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) canReceiveGrabbedIcon:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_accessibilityCanReceiveGrabbedIcons
{
  selfCopy = self;
  _axDragManager = [(SBIconViewAccessibility *)self _axDragManager];
  _axGrabbedIcons = [_axDragManager _axGrabbedIcons];
  LOBYTE(selfCopy) = [(SBIconViewAccessibility *)selfCopy _accessibilityCanReceiveIcons:_axGrabbedIcons];

  return selfCopy;
}

- (id)accessibilityHint
{
  v3 = [(SBIconViewAccessibility *)self safeStringForKey:@"location"];
  v4 = getSBIconLocationAppLibrary();
  if ([v3 containsString:v4])
  {
    _accessibilityIsCategoryIconView = [(SBIconViewAccessibility *)self _accessibilityIsCategoryIconView];

    if (_accessibilityIsCategoryIconView)
    {
      v6 = 0;
      goto LABEL_19;
    }
  }

  else
  {
  }

  if ([(SBIconViewAccessibility *)self _axIsAppLibraryInDock])
  {
    v7 = [(SBIconViewAccessibility *)self safeValueForKey:@"delegate"];
    v8 = [v7 safeBoolForKey:@"isPresentingLibrary"];

    if (v8)
    {
      v9 = @"app.library.hide.hint";
LABEL_13:
      v6 = accessibilityLocalizedString(v9);
      goto LABEL_19;
    }
  }

  if ([(SBIconViewAccessibility *)self _axIsInControlCenterGallery])
  {
    if (AXProcessIsPosterBoard())
    {
      v9 = @"quick.actions.add.control.hint";
      goto LABEL_13;
    }

    if (AXProcessIsSpringBoard())
    {
      v9 = @"control.center.add.control.hint";
      goto LABEL_13;
    }
  }

  v10 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
  accessibilityHint = [v10 accessibilityHint];

  if (!accessibilityHint)
  {
    if (!AXProcessIsSpringBoard() || [(SBIconViewAccessibility *)self _accessibilityIsWidgetIconView])
    {
      accessibilityHint = 0;
      goto LABEL_18;
    }

    _axIsIconEditing = [(SBIconViewAccessibility *)self _axIsIconEditing];
    v14 = [(SBIconViewAccessibility *)self safeBoolForKey:@"_isShowingCloseBox"];
    v15 = [(SBIconViewAccessibility *)self safeValueForKey:@"_icon"];
    v16 = [v15 safeIntegerForKey:@"labelAccessoryType"];

    if (!_axIsIconEditing && !v14)
    {
      accessibilityTraits = [(SBIconViewAccessibility *)self accessibilityTraits];
      if ((*MEMORY[0x29EDC7530] & accessibilityTraits) != 0)
      {
        if ([(SBIconViewAccessibility *)self _accessibilityIsTimedOut])
        {
          v18 = @"app.icon.timed.out.hint";
        }

        else if (v16 == 3)
        {
          v18 = @"app.icon.cloud.hint";
        }

        else
        {
          v18 = @"app.icon.hint";
        }

        goto LABEL_37;
      }

      if ([(SBIconViewAccessibility *)self _axIsInDock])
      {
        v18 = @"dock.full.hint";
        goto LABEL_37;
      }

LABEL_33:
      accessibilityHint = 0;
      goto LABEL_38;
    }

    _axDragManager = [(SBIconViewAccessibility *)self _axDragManager];
    _axGrabbedIcons = [_axDragManager _axGrabbedIcons];
    v21 = [_axGrabbedIcons count];

    if (v21)
    {
      v22 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
      v23 = [v22 safeBoolForKey:@"canBeAddedToMultiItemDrag"];

      if ((v23 & 1) == 0)
      {
        goto LABEL_33;
      }

      v18 = @"app.icon.add.to.drag.hint";
    }

    else
    {
      v18 = @"app.icon.reorder.hint";
    }

LABEL_37:
    accessibilityHint = accessibilityLocalizedString(v18);
LABEL_38:
    if (AXForceTouchAvailableAndEnabled())
    {
      v25 = accessibilityLocalizedString(@"icons.with.forcetouch.hint");
      v24 = __UIAXStringForVariables();

      accessibilityHint = v24;
    }
  }

LABEL_18:
  v6 = accessibilityHint;

LABEL_19:

  return v6;
}

- (id)accessibilityValue
{
  if ([(SBIconViewAccessibility *)self _accessibilityIsTimedOut])
  {
    v3 = accessibilityLocalizedString(@"screen.time.timed.out");
    goto LABEL_32;
  }

  v4 = [(SBIconViewAccessibility *)self safeValueForKey:@"_icon"];
  v5 = [v4 safeIntegerForKey:@"labelAccessoryType"];

  if ((v5 - 1) > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = accessibilityLocalizedString(off_29F300890[v5 - 1]);
  }

  v7 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
  accessibilityValue = [v7 accessibilityValue];
  v8 = __UIAXStringForVariables();

  if ([(SBIconViewAccessibility *)self _accessibilityIsFolderIconView:accessibilityValue])
  {
    objc_opt_class();
    v9 = [(SBIconViewAccessibility *)self safeValueForKey:@"folderIcon"];
    v10 = [v9 safeValueForKey:@"_folder"];
    v11 = [v10 safeValueForKey:@"allIcons"];
    v12 = __UIAccessibilityCastAsClass();

    v13 = [v12 count];
    v14 = [(SBIconViewAccessibility *)self safeStringForKey:@"location"];
    v15 = getSBIconLocationAppLibrary();
    v16 = [v14 containsString:v15];

    if (v16)
    {
      v17 = v13 + 3;
    }

    else
    {
      v17 = v13;
    }

    v18 = MEMORY[0x29EDBA0F8];
    v19 = accessibilityLocalizedString(@"folder.icon.count");
    v20 = [v18 localizedStringWithFormat:v19, v17];

    v21 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
    v22 = [v21 safeIntegerForKey:@"progressState"];

    if (v22 == 2)
    {
      v24 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
      [v24 safeFloatForKey:@"progressPercent"];
      v26 = v25;

      v27 = 0;
      if (v26 >= 1.0 || v26 < 0.0)
      {
        goto LABEL_18;
      }

      v23 = MEMORY[0x29ED38780](0, v26);
    }

    else
    {
      if (v22 != 1)
      {
        v27 = 0;
        goto LABEL_18;
      }

      v23 = accessibilityLocalizedString(@"icon.state.download.waiting");
    }

    v27 = v23;
LABEL_18:
    v37 = v8;
    v38 = @"__AXStringForVariablesSentinel";
    v36 = v20;
    v28 = __UIAXStringForVariables();

    v8 = v28;
  }

  if (![(SBIconViewAccessibility *)self _axIsInControlCenter:v36]&& ![(SBIconViewAccessibility *)self _axIsInControlCenterGallery])
  {
    if ([(SBIconViewAccessibility *)self _accessibilityIsWidgetIconView])
    {
      v31 = accessibilityLocalizedString(@"widget.icon");
      if ([(SBIconViewAccessibility *)self _accessibilityIsWidgetStackIconView])
      {
        v32 = accessibilityLocalizedString(@"widget.icon.stack");
      }

      else
      {
        v32 = 0;
      }

      v33 = __UIAXStringForVariables();

      v8 = v33;
    }

    v30 = v8;
    v8 = v30;
    goto LABEL_30;
  }

  if (![(SBIconViewAccessibility *)self _axIsIconEditing])
  {
    v30 = accessibilityLocalizedString(@"control.icon");
LABEL_30:
    v3 = v30;
    goto LABEL_31;
  }

  v29 = [(SBIconViewAccessibility *)self safeValueForKeyPath:@"icon.gridSizeClass"];
  v3 = [(SBIconViewAccessibility *)self _axStringForGridSizeClass:v29];

LABEL_31:
LABEL_32:

  return v3;
}

- (BOOL)isAccessibilityElement
{
  storedIsAccessibilityElement = [(SBIconViewAccessibility *)self storedIsAccessibilityElement];

  if (storedIsAccessibilityElement)
  {
    storedIsAccessibilityElement2 = [(SBIconViewAccessibility *)self storedIsAccessibilityElement];
    bOOLValue = [storedIsAccessibilityElement2 BOOLValue];

    return bOOLValue;
  }

  if ([(SBIconViewAccessibility *)self _accessibilityIsInCmdTabSwitcher])
  {
    goto LABEL_6;
  }

  if ([(SBIconViewAccessibility *)self _accessibilityIsInShortcutMenu])
  {
    goto LABEL_6;
  }

  v7 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
  NSClassFromString(&cfstr_Sbgrabbedplace.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_6;
  }

  if ([(SBIconViewAccessibility *)self _axIsInDock]|| [(SBIconViewAccessibility *)self _axIsInControlCenterGallery])
  {
    goto LABEL_10;
  }

  if (![(SBIconViewAccessibility *)self _accessibilityIsWidgetIconView])
  {
    v10 = [(SBIconViewAccessibility *)self safeStringForKey:@"location"];
    v11 = getSBIconLocationAppLibrarySearch();
    v12 = [v10 isEqualToString:v11];

    if ((v12 & 1) == 0)
    {
      v13 = getSBIconLocationFloatingDockUtilities();
      v14 = [v10 containsString:v13];

      if (v14)
      {
        goto LABEL_20;
      }

      v15 = getSBIconLocationAppLibrary();
      v16 = [v10 containsString:v15];

      if (v16)
      {
        v9 = ![(SBIconViewAccessibility *)self _accessibilityIsCategoryIconView];
        goto LABEL_23;
      }

      v17 = getAPUIIconLocationAppPredictions();
      v18 = [v10 isEqualToString:v17];

      if (v18)
      {
LABEL_20:
        v9 = 1;
        goto LABEL_23;
      }

      if (AXProcessIsSpringBoard())
      {
        v19 = AXSBHIconManagerFromSharedIconController();
        if ([v19 safeBoolForKey:@"hasOpenFolder"])
        {
          v20 = [v19 safeValueForKey:@"openedFolder"];
          v30 = 0;
          v31 = &v30;
          v32 = 0x2020000000;
          LOBYTE(v33) = 0;
          v36 = MEMORY[0x29EDCA5F8];
          v37 = 3221225472;
          v38 = __49__SBIconViewAccessibility_isAccessibilityElement__block_invoke;
          v39 = &unk_29F300310;
          v42 = &v30;
          v21 = v20;
          v40 = v21;
          selfCopy = self;
          AXPerformSafeBlock();
          v9 = *(v31 + 24);

          _Block_object_dispose(&v30, 8);
        }

        else
        {
          v22 = [v19 safeValueForKey:@"currentRootIconList"];
          v23 = [v22 safeValueForKey:@"model"];

          v30 = 0;
          v31 = &v30;
          v32 = 0x3032000000;
          v33 = __Block_byref_object_copy__8;
          v34 = __Block_byref_object_dispose__8;
          v35 = 0;
          v29 = v23;
          AXPerformSafeBlock();
          v24 = v31[5];

          _Block_object_dispose(&v30, 8);
          v30 = 0;
          v31 = &v30;
          v32 = 0x2020000000;
          LOBYTE(v33) = 0;
          v21 = v29;
          v25 = v24;
          AXPerformSafeBlock();
          v26 = *(v31 + 24);

          _Block_object_dispose(&v30, 8);
          if (v26)
          {
            v9 = 1;
          }

          else
          {
            v30 = 0;
            v31 = &v30;
            v32 = 0x2020000000;
            LOBYTE(v33) = 0;
            v27 = v21;
            v28 = v25;
            AXPerformSafeBlock();
            v9 = *(v31 + 24);

            _Block_object_dispose(&v30, 8);
          }
        }

        goto LABEL_23;
      }
    }

    v9 = 0;
LABEL_23:

    return v9 & 1;
  }

  if ([(SBIconViewAccessibility *)self _accessibilityIsWidgetInAddWidgetSheet])
  {
LABEL_6:
    v9 = 0;
    return v9 & 1;
  }

  if (([(SBIconViewAccessibility *)self safeBoolForKey:@"isCustomIconImageViewHitTestingDisabled"]& 1) != 0)
  {
LABEL_10:
    v9 = 1;
    return v9 & 1;
  }

  return [(SBIconViewAccessibility *)self _axIsIconEditing];
}

void __49__SBIconViewAccessibility_isAccessibilityElement__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) safeValueForKey:@"icon"];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsIcon:v3];
}

void __49__SBIconViewAccessibility_isAccessibilityElement__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = [*(a1 + 40) safeValueForKey:@"icon"];
  v3 = [v7 safeStringForKey:@"nodeIdentifier"];
  v4 = [v2 iconWithIdentifier:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t __49__SBIconViewAccessibility_isAccessibilityElement__block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) directlyContainsIcon:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void __49__SBIconViewAccessibility_isAccessibilityElement__block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) safeValueForKey:@"leafIdentifier"];
  *(*(*(a1 + 48) + 8) + 24) = [v2 directlyContainsLeafIconWithIdentifier:v3];
}

- (id)automationElements
{
  v3 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
  automationElements = [v3 automationElements];
  v5 = [automationElements mutableCopy];
  v6 = v5;
  if (v5)
  {
    array = v5;
  }

  else
  {
    array = [MEMORY[0x29EDB8DE8] array];
  }

  array2 = array;

  if (!array2)
  {
    array2 = [MEMORY[0x29EDB8DE8] array];
  }

  if ([(SBIconViewAccessibility *)self _axIsAppLibraryInDock])
  {
    v9 = [(SBIconViewAccessibility *)self _accessibilityDescendantOfType:NSClassFromString(&cfstr_Sbhlibrarycate_4.isa)];
    v10 = [v9 safeValueForKey:@"_iconImageViews"];
    v11 = __UIAccessibilitySafeClass();

    objectEnumerator = [v11 objectEnumerator];
    allObjects = [objectEnumerator allObjects];
    [array2 axSafelyAddObjectsFromArray:allObjects];
  }

  if ([(SBIconViewAccessibility *)self safeBoolForKey:@"_isShowingCloseBox"])
  {
    v14 = [(SBIconViewAccessibility *)self safeValueForKey:@"_closeBox"];
    [array2 axSafelyAddObject:v14];

LABEL_12:
    subviews = array2;
    goto LABEL_14;
  }

  if (-[SBIconViewAccessibility isAccessibilityElement](self, "isAccessibilityElement") && [array2 count])
  {
    goto LABEL_12;
  }

  objc_opt_class();
  v16 = __UIAccessibilityCastAsClass();
  subviews = [v16 subviews];

LABEL_14:

  return subviews;
}

- (unint64_t)accessibilityTraits
{
  v3 = *MEMORY[0x29EDC7FA0];
  if (![(SBIconViewAccessibility *)self safeBoolForKey:@"_isShowingCloseBox"]|| _AXSAutomationEnabled())
  {
    v3 |= *MEMORY[0x29EDC7530];
  }

  _axIsIconEditing = [(SBIconViewAccessibility *)self _axIsIconEditing];
  v5 = *MEMORY[0x29EDC7528];
  if (!_axIsIconEditing)
  {
    v5 = 0;
  }

  return v5 | v3 | *MEMORY[0x29EDC7FF0];
}

- (id)_accessibilityBundleIdentifier
{
  v2 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
  _accessibilityBundleIdentifier = [v2 _accessibilityBundleIdentifier];

  return _accessibilityBundleIdentifier;
}

- (CGRect)_accessibilityFrameForSorting
{
  if (!AXDeviceIsPad())
  {
    goto LABEL_15;
  }

  if (![(SBIconViewAccessibility *)self _accessibilityIsWidgetIconView])
  {
    goto LABEL_15;
  }

  v3 = [(SBIconViewAccessibility *)self safeStringForKey:@"_iconLocation"];
  v4 = getSBIconLocationRoot();
  v5 = [v3 isEqualToString:v4];

  if (!v5)
  {
    goto LABEL_15;
  }

  [(SBIconViewAccessibility *)self accessibilityFrame];
  AX_CGRectGetCenter();
  v7 = v6;
  v9 = v8;
  v10 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
  v11 = [v10 safeStringForKey:@"gridSizeClass"];

  if (![v11 isEqualToString:*MEMORY[0x29EDC6CB0]])
  {
    if (([v11 isEqualToString:*MEMORY[0x29EDC6CD8]] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", *MEMORY[0x29EDC6CC8]) & 1) != 0 || objc_msgSend(v11, "isEqualToString:", *MEMORY[0x29EDC6CD0]))
    {
      goto LABEL_12;
    }

    if (([v11 isEqualToString:*MEMORY[0x29EDC6CC0]] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", *MEMORY[0x29EDC6CB8]))
    {
      [(SBIconViewAccessibility *)self accessibilityFrame];
      v9 = v9 + v17 * -0.25;
LABEL_12:
      [(SBIconViewAccessibility *)self accessibilityFrame];
      v16 = v18;
      [(SBIconViewAccessibility *)self accessibilityFrame];
      goto LABEL_13;
    }

LABEL_15:
    v28.receiver = self;
    v28.super_class = SBIconViewAccessibility;
    [(SBIconViewAccessibility *)&v28 _accessibilityFrameForSorting];
    v7 = v20;
    v9 = v21;
    v16 = v22;
    v19 = v23;
    goto LABEL_16;
  }

  v29.receiver = self;
  v29.super_class = SBIconViewAccessibility;
  [(SBIconViewAccessibility *)&v29 _accessibilityFrameForSorting];
  v7 = v13;
  v9 = v14;
  v16 = v15;
LABEL_13:
  v19 = v12;

LABEL_16:
  v24 = v7;
  v25 = v9;
  v26 = v16;
  v27 = v19;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)_accessibilityCompareFrameForScrollParent:(id)parent frame:(CGRect)frame fromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  parentCopy = parent;
  if (!AXDeviceIsPad() || !-[SBIconViewAccessibility _accessibilityIsWidgetIconView](self, "_accessibilityIsWidgetIconView") || (-[SBIconViewAccessibility safeStringForKey:](self, "safeStringForKey:", @"_iconLocation"), v14 = objc_claimAutoreleasedReturnValue(), getSBIconLocationRoot(), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v14 isEqualToString:v15], v15, v14, (v16 & 1) == 0))
  {
    v25.receiver = self;
    v25.super_class = SBIconViewAccessibility;
    [(SBIconViewAccessibility *)&v25 _accessibilityCompareFrameForScrollParent:parentCopy frame:orientation fromOrientation:toOrientation toOrientation:x, y, width, height];
    x = v17;
    y = v18;
    width = v19;
    height = v20;
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)accessibilityFrame
{
  v3 = [(SBIconViewAccessibility *)self safeValueForKey:@"superview"];

  if (v3)
  {
    v4 = [(SBIconViewAccessibility *)self safeValueForKey:@"bounds"];
    [v4 rectValue];

    v5 = [(SBIconViewAccessibility *)self safeValueForKey:@"_accessoryView"];
    v6 = [(SBIconViewAccessibility *)self safeValueForKey:@"_labelView"];
    if (v5 && ([v5 superview], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      UIAccessibilityFrameForBounds();
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [v5 accessibilityFrame];
      v48.origin.x = v16;
      v48.origin.y = v17;
      v48.size.width = v18;
      v48.size.height = v19;
      v42.origin.x = v9;
      v42.origin.y = v11;
      v42.size.width = v13;
      v42.size.height = v15;
      v43 = CGRectUnion(v42, v48);
    }

    else
    {
      UIAccessibilityFrameForBounds();
    }

    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;
    superview = [v6 superview];

    if (superview)
    {
      [v6 accessibilityFrame];
      v49.origin.x = v25;
      v49.origin.y = v26;
      v49.size.width = v27;
      v49.size.height = v28;
      v44.origin.x = x;
      v44.origin.y = y;
      v44.size.width = width;
      v44.size.height = height;
      v45 = CGRectUnion(v44, v49);
      x = v45.origin.x;
      y = v45.origin.y;
      width = v45.size.width;
      height = v45.size.height;
    }

    v29 = [(SBIconViewAccessibility *)self safeValueForKey:@"_iconImageView"];
    if (AXDeviceIsPad() && [(SBIconViewAccessibility *)self _axIsInDock]&& v29)
    {
      [v29 accessibilityFrame];
    }

    else
    {
      v46.origin.x = x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = height;
      *&v30 = CGRectInset(v46, -2.0, -2.0);
    }

    v34 = v30;
    v35 = v31;
    v36 = v32;
    v37 = v33;
  }

  else
  {
    v34 = *MEMORY[0x29EDB90E0];
    v35 = *(MEMORY[0x29EDB90E0] + 8);
    v36 = *(MEMORY[0x29EDB90E0] + 16);
    v37 = *(MEMORY[0x29EDB90E0] + 24);
  }

  v38 = v34;
  v39 = v35;
  v40 = v36;
  v41 = v37;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  v5 = AXSBIconControllerSharedInstance();
  v6 = v5;
  if (scroll == 2)
  {
    if ([v5 _axNeedsToDismissHomeScreenTodayView])
    {
      [v6 _axHideTodayView];
      goto LABEL_7;
    }

LABEL_8:
    v9.receiver = self;
    v9.super_class = SBIconViewAccessibility;
    v7 = [(SBIconViewAccessibility *)&v9 accessibilityScroll:scroll];
    goto LABEL_9;
  }

  if (scroll != 1 || ![v5 _axIsShowingAppLibrary])
  {
    goto LABEL_8;
  }

  [v6 _axHideAppLibrary];
LABEL_7:
  v7 = 1;
LABEL_9:

  return v7;
}

- (CGPoint)accessibilityActivationPoint
{
  if ([(SBIconViewAccessibility *)self _axIsAppLibraryInDock]|| [(SBIconViewAccessibility *)self _axIsInControlCenterGallery])
  {
    v10.receiver = self;
    v10.super_class = SBIconViewAccessibility;
    [(SBIconViewAccessibility *)&v10 accessibilityActivationPoint];
  }

  else
  {
    v5 = [(SBIconViewAccessibility *)self safeValueForKey:@"_iconImageView"];
    [v5 accessibilityActivationPoint];
    v7 = v6;
    v9 = v8;

    v3 = v7;
    v4 = v9;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (id)_accessibilityScrollStatus
{
  v101 = *MEMORY[0x29EDCA608];
  v49 = AXSBHIconManagerFromSharedIconController();
  v48 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v99 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(SBIconViewAccessibility *)self _axIsInDock])
  {
    v50 = [(SBIconViewAccessibility *)self safeStringForKey:@"_iconLocation"];
    v3 = [v49 safeValueForKey:@"effectiveDockListView"];
    if ([v50 isEqual:@"SBIconLocationFloatingDockSuggestions"])
    {
      v4 = AXSBFloatingDockControllerFromActiveDisplayWindowScene();
      v5 = [v4 safeValueForKey:@"_viewController"];
      v6 = [v5 safeValueForKey:@"floatingDockViewController"];
      v7 = [v6 safeValueForKey:@"suggestionsViewController"];
      v8 = [v7 safeValueForKey:@"listView"];

      v3 = v8;
    }

    v9 = [v3 safeValueForKey:@"model"];
    v97[3] = 0x7FFFFFFFFFFFFFFFLL;
    v55 = MEMORY[0x29EDCA5F8];
    v56 = 3221225472;
    v57 = __53__SBIconViewAccessibility__accessibilityScrollStatus__block_invoke_5;
    v58 = &unk_29F300310;
    v61 = &v96;
    v10 = v9;
    v59 = v10;
    v11 = v48;
    v60 = v11;
    AXPerformSafeBlock();
    if (v97[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_15;
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v12 = [v10 safeArrayForKey:@"icons"];
    v13 = [v12 countByEnumeratingWithState:&v51 objects:v100 count:16];
    if (v13)
    {
      v14 = 0;
      v15 = *v52;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v52 != v15)
          {
            objc_enumerationMutation(v12);
          }

          if ([*(*(&v51 + 1) + 8 * i) isEqual:v11])
          {
            v97[3] = v14;
          }

          ++v14;
        }

        v13 = [v12 countByEnumeratingWithState:&v51 objects:v100 count:16];
      }

      while (v13);
    }

    if (v97[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_15:
      v17 = getSBIconLocationDock();
      v18 = [v50 isEqual:v17];

      if (v18)
      {
        v19 = MEMORY[0x29EDBA0F8];
        v20 = accessibilityLocalizedString(@"finished.moving.app.in.dock");
        v21 = MEMORY[0x29ED38790](v97[3] + 1);
        v22 = [v19 stringWithFormat:v20, v21];
LABEL_26:
        v28 = v22;

LABEL_28:
        v33 = v59;
        goto LABEL_31;
      }

      if ([v50 isEqual:@"SBIconLocationFloatingDockSuggestions"])
      {
        v41 = MEMORY[0x29EDBA0F8];
        v20 = accessibilityLocalizedString(@"suggestions.dock.position");
        v21 = MEMORY[0x29ED38790](v97[3] + 1);
        v22 = [v41 stringWithFormat:v20, v21];
        goto LABEL_26;
      }
    }

    v28 = 0;
    goto LABEL_28;
  }

  if ([v49 safeBoolForKey:@"hasOpenFolder"])
  {
    v23 = AXSBCurrentFolderController();
    v24 = [v23 safeValueForKey:@"currentIconListView"];
    v50 = __UIAccessibilitySafeClass();
  }

  else
  {
    v50 = [v49 safeValueForKey:@"currentRootIconList"];
  }

  v25 = [v50 safeValueForKey:@"model"];
  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy__8;
  v94 = __Block_byref_object_dispose__8;
  v95 = 0;
  v84 = MEMORY[0x29EDCA5F8];
  v85 = 3221225472;
  v86 = __53__SBIconViewAccessibility__accessibilityScrollStatus__block_invoke;
  v87 = &unk_29F300338;
  v89 = &v90;
  v88 = v25;
  AXPerformSafeBlock();
  v26 = v91[5];

  _Block_object_dispose(&v90, 8);
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  v76 = MEMORY[0x29EDCA5F8];
  v77 = 3221225472;
  v78 = __53__SBIconViewAccessibility__accessibilityScrollStatus__block_invoke_2;
  v79 = &unk_29F300528;
  v83 = &v90;
  v3 = v88;
  v80 = v3;
  selfCopy = self;
  v10 = v26;
  v82 = v10;
  AXPerformSafeBlock();
  v27 = v91[3];

  _Block_object_dispose(&v90, 8);
  v97[3] = v27;
  if (v27 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v28 = 0;
    goto LABEL_32;
  }

  v90 = 0;
  v91 = &v90;
  v92 = 0x3010000000;
  v93 = &unk_29C40BC2F;
  v94 = 0;
  v95 = 0;
  v69 = MEMORY[0x29EDCA5F8];
  v70 = 3221225472;
  v71 = __53__SBIconViewAccessibility__accessibilityScrollStatus__block_invoke_3;
  v72 = &unk_29F300750;
  v74 = &v90;
  v10 = v10;
  v73 = v10;
  v75 = &v96;
  AXPerformSafeBlock();
  v29 = v91[4];
  v30 = v91[5];

  _Block_object_dispose(&v90, 8);
  if ([(SBIconViewAccessibility *)self _accessibilityIsWidgetIconView])
  {
    v31 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
    v32 = [v31 safeStringForKey:@"gridSizeClass"];

    v90 = 0;
    v91 = &v90;
    v92 = 0x2810000000;
    v93 = &unk_29C40BC2F;
    LODWORD(v94) = 0;
    v62 = MEMORY[0x29EDCA5F8];
    v63 = 3221225472;
    v64 = __53__SBIconViewAccessibility__accessibilityScrollStatus__block_invoke_4;
    v65 = &unk_29F300310;
    v68 = &v90;
    v66 = v3;
    v33 = v32;
    v67 = v33;
    AXPerformSafeBlock();
    v34 = *(v91 + 16);
    v35 = *(v91 + 17);

    _Block_object_dispose(&v90, 8);
    v47 = MEMORY[0x29EDBA0F8];
    v36 = accessibilityLocalizedString(@"widget.grid.location");
    v37 = MEMORY[0x29ED38790](v30);
    v38 = MEMORY[0x29ED38790](v30 + v35 - 1);
    v39 = MEMORY[0x29ED38790](v29);
    v40 = MEMORY[0x29ED38790](v29 + v34 - 1);
    v28 = [v47 stringWithFormat:v36, v37, v38, v39, v40];
  }

  else
  {
    v42 = MEMORY[0x29EDBA0F8];
    v33 = accessibilityLocalizedString(@"app.grid.location");
    v36 = MEMORY[0x29ED38790](v30);
    v37 = MEMORY[0x29ED38790](v29);
    v28 = [v42 stringWithFormat:v33, v36, v37];
  }

LABEL_31:
LABEL_32:

  _accessibilityScrollAncestor = [(SBIconViewAccessibility *)self _accessibilityScrollAncestor];
  _accessibilityScrollStatus = [_accessibilityScrollAncestor _accessibilityScrollStatus];
  v44 = __UIAXStringForVariables();

  _Block_object_dispose(&v96, 8);

  return v44;
}

uint64_t __53__SBIconViewAccessibility__accessibilityScrollStatus__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) gridCellInfoWithOptions:0];

  return MEMORY[0x2A1C71028]();
}

void __53__SBIconViewAccessibility__accessibilityScrollStatus__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) safeValueForKey:@"icon"];
  *(*(*(a1 + 56) + 8) + 24) = [v2 gridCellIndexForIcon:v3 gridCellInfo:*(a1 + 48)];
}

uint64_t __53__SBIconViewAccessibility__accessibilityScrollStatus__block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) coordinateForGridCellIndex:*(*(*(a1 + 48) + 8) + 24)];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = result;
  *(v3 + 40) = v4;
  return result;
}

uint64_t __53__SBIconViewAccessibility__accessibilityScrollStatus__block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) gridSizeForGridSizeClass:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 32) = result;
  return result;
}

uint64_t __53__SBIconViewAccessibility__accessibilityScrollStatus__block_invoke_5(uint64_t a1)
{
  result = [*(a1 + 32) indexForIcon:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_accessibilityScrollToVisible
{
  v3 = [(SBIconViewAccessibility *)self safeStringForKey:@"_iconLocation"];
  v4 = getSBIconLocationAppLibrary();
  if (([v3 containsString:v4] & 1) == 0)
  {
    _axIsInControlCenterGallery = [(SBIconViewAccessibility *)self _axIsInControlCenterGallery];

    if (_axIsInControlCenterGallery)
    {
      goto LABEL_4;
    }

    if (AXProcessIsCarPlay())
    {
      v12.receiver = self;
      v12.super_class = SBIconViewAccessibility;
      _accessibilityScrollToVisible = [(SBIconViewAccessibility *)&v12 _accessibilityScrollToVisible];
      goto LABEL_5;
    }

    v9 = [(SBIconViewAccessibility *)self safeValueForKey:@"delegate"];
    NSClassFromString(&cfstr_Sbhstackconfig_0.isa);
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 safeValueForKey:@"_presenter"];
      NSClassFromString(&cfstr_Amuiinfographv.isa);
      if (objc_opt_isKindOfClass())
      {
        v11.receiver = self;
        v11.super_class = SBIconViewAccessibility;
        _accessibilityScrollToVisible2 = [(SBIconViewAccessibility *)&v11 _accessibilityScrollToVisible];

LABEL_14:
        goto LABEL_6;
      }
    }

    _accessibilityScrollToVisible2 = 1;
    goto LABEL_14;
  }

LABEL_4:
  v13.receiver = self;
  v13.super_class = SBIconViewAccessibility;
  _accessibilityScrollToVisible = [(SBIconViewAccessibility *)&v13 _accessibilityScrollToVisible];
LABEL_5:
  _accessibilityScrollToVisible2 = _accessibilityScrollToVisible;
LABEL_6:

  return _accessibilityScrollToVisible2;
}

- (BOOL)accessibilityActivate
{
  if (AXProcessIsCarPlay())
  {
    return 0;
  }

  _axIsIconEditing = [(SBIconViewAccessibility *)self _axIsIconEditing];
  v5 = [(SBIconViewAccessibility *)self safeBoolForKey:@"_isShowingCloseBox"];
  _axDragManager = [(SBIconViewAccessibility *)self _axDragManager];
  _axIsIconDragging = [_axDragManager _axIsIconDragging];

  if (_axIsIconDragging)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    return [(SBIconViewAccessibility *)&v12 accessibilityActivate:v11.receiver];
  }

  else if ((_axIsIconEditing & v5) == 1)
  {

    return [(SBIconViewAccessibility *)self _accessibilityDeleteApp];
  }

  else
  {
    v8 = [(SBIconViewAccessibility *)self safeValueForKey:@"_delegate"];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(SBIconViewAccessibility *)self safeValueForKey:@"_delegate"];
      [v10 iconTapped:self];

      return 1;
    }

    else
    {
      return [(SBIconViewAccessibility *)&v11 accessibilityActivate:self];
    }
  }
}

- (BOOL)_accessibilityDeleteApp
{
  v3 = [(SBIconViewAccessibility *)self safeValueForKey:@"_delegate"];
  v4 = objc_opt_respondsToSelector();
  if (v4)
  {
    [v3 iconCloseBoxTapped:self];
  }

  return v4 & 1;
}

- (BOOL)_accessibilityResizeControl:(id)control
{
  controlCopy = control;
  v4 = controlCopy;
  AXPerformSafeBlock();
  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"control.resize.announcement");
  v7 = [(SBIconViewAccessibility *)self _axStringForGridSizeClass:v4];
  v8 = [v5 localizedStringWithFormat:v6, v7];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v8);

  return 1;
}

void __55__SBIconViewAccessibility__accessibilityResizeControl___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) safeValueForKey:@"_customIconImageViewController"];
  v2 = [*(a1 + 32) safeValueForKey:@"_delegate"];
  v3 = [*(a1 + 32) safeSwiftValueForKey:@"listLayout"];
  [v3 iconImageInfoForGridSizeClass:*(a1 + 40)];
  [*(a1 + 32) setIconImageInfo:?];
  [*(a1 + 32) layoutIfNeeded];
  [v5 setGridSizeClass:{objc_msgSend(*(a1 + 32), "_axIconToCCUIGridSize:", *(a1 + 40))}];
  v4 = [*(a1 + 32) safeValueForKey:@"icon"];
  [v2 changeGridSizeClassOfIcon:v4 toGridSizeClass:*(a1 + 40)];

  [v2 resetEndEditingTimerIfNecessary];
}

- (int64_t)_axIconToCCUIGridSize:(id)size
{
  sizeCopy = size;
  if ([sizeCopy isEqualToString:@"CCUIIconGridSizeClassSmall"])
  {
    v4 = 0;
  }

  else if ([sizeCopy isEqualToString:@"CCUIIconGridSizeClassSmallTall"])
  {
    v4 = 1;
  }

  else if ([sizeCopy isEqualToString:@"CCUIIconGridSizeClassSmallWide"])
  {
    v4 = 2;
  }

  else if ([sizeCopy isEqualToString:@"CCUIIconGridSizeClassSmallExtraWide"])
  {
    v4 = 3;
  }

  else if ([sizeCopy isEqualToString:@"CCUIIconGridSizeClassMedium"])
  {
    v4 = 4;
  }

  else if ([sizeCopy isEqualToString:@"CCUIIconGridSizeClassMediumWide"])
  {
    v4 = 5;
  }

  else if ([sizeCopy isEqualToString:@"CCUIIconGridSizeClassLarge"])
  {
    v4 = 6;
  }

  else if ([sizeCopy isEqualToString:@"CCUIIconGridSizeClassLargeTall"])
  {
    v4 = 7;
  }

  else if ([sizeCopy isEqualToString:@"CCUIIconGridSizeClassLargeWide"])
  {
    v4 = 8;
  }

  else if ([sizeCopy isEqualToString:@"CCUIIconGridSizeClassLargeExtraTall"])
  {
    v4 = 9;
  }

  else if ([sizeCopy isEqualToString:@"CCUIIconGridSizeClassLargeExtraWide"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_accessibilityElementShouldBeInvalid
{
  superview = [(SBIconViewAccessibility *)self superview];

  if (!superview)
  {
    return 1;
  }

  v5.receiver = self;
  v5.super_class = SBIconViewAccessibility;
  return [(SBIconViewAccessibility *)&v5 _accessibilityElementShouldBeInvalid];
}

- (BOOL)_accessibilityCanPerformEscapeAction
{
  v2 = AXSBHIconManagerFromSharedIconController();
  v3 = [v2 safeBoolForKey:@"hasOpenFolder"];

  return v3;
}

- (BOOL)accessibilityPerformEscape
{
  v3 = AXMainSBHomeScreenController();
  v4 = AXSBIconControllerSharedInstance();
  if ([v3 safeBoolForKey:@"areAnyIconViewContextMenusShowing"])
  {
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter postNotificationName:@"AXDismissShortcutMenu" object:0];
LABEL_3:

    goto LABEL_4;
  }

  if ([v4 _axIsShowingAppLibrary])
  {
    v8 = [(SBIconViewAccessibility *)self safeStringForKey:@"location"];
    v9 = getSBIconLocationAppLibraryCategoryPodExpanded();
    v10 = [v8 isEqualToString:v9];

    if (!v10)
    {
      [v4 _axHideAppLibrary];
      goto LABEL_4;
    }

    v11 = AXLibraryViewController(@"activeDisplayWindowScene");
    v12 = [v11 safeValueForKeyPath:@"podFolderViewController._nestingViewControllerForPushing"];

    defaultCenter = v12;
    AXPerformSafeBlock();

    goto LABEL_3;
  }

  if (![v4 _axNeedsToDismissHomeScreenTodayView])
  {
    v6 = 0;
    goto LABEL_5;
  }

  [v4 _axHideTodayView];
LABEL_4:
  v6 = 1;
LABEL_5:

  return v6;
}

- (id)accessibilityCustomActions
{
  v23 = *MEMORY[0x29EDCA608];
  if ([(SBIconViewAccessibility *)self _axIsInControlCenterGallery])
  {
    v3 = 0;
  }

  else
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v5 = [(SBIconViewAccessibility *)self safeStringForKey:@"_iconLocation"];
    v6 = AXLogSpringboardServer();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = v5;
      _os_log_impl(&dword_29C3E1000, v6, OS_LOG_TYPE_INFO, "[Custom Action]: Icon located in %@.", &v21, 0xCu);
    }

    v7 = getAPUIIconLocationAppPredictions();
    if ([v5 isEqualToString:v7])
    {
      v8 = 1;
    }

    else
    {
      v9 = getSBIconLocationAppLibrary();
      if ([v5 containsString:v9])
      {
        v10 = getSBIconLocationAppLibraryCategoryPodExpanded();
        if ([v5 isEqualToString:v10])
        {
          v8 = 0;
        }

        else
        {
          v8 = ![(SBIconViewAccessibility *)self _accessibilityIsCategoryIconView];
        }
      }

      else
      {
        v8 = 0;
      }
    }

    v11 = AXLogSpringboardServer();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      _accessibilityIsCategoryIconView = [(SBIconViewAccessibility *)self _accessibilityIsCategoryIconView];
      v13 = @"NO";
      if (_accessibilityIsCategoryIconView)
      {
        v13 = @"YES";
      }

      v21 = 138412290;
      v22 = v13;
      _os_log_impl(&dword_29C3E1000, v11, OS_LOG_TYPE_INFO, "[Custom Action]: Icon is a category view: %@.", &v21, 0xCu);
    }

    if (AXProcessIsSpringBoard())
    {
      server = [MEMORY[0x29EDBDFA8] server];
      isShowingNonSystemApp = [server isShowingNonSystemApp];

      if ((isShowingNonSystemApp & 1) == 0)
      {
        v16 = AXLogSpringboardServer();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&dword_29C3E1000, v16, OS_LOG_TYPE_INFO, "[Custom Action]: SpringBoard process is focused and SpringBoard is visible.", &v21, 2u);
        }

        if ((v8 & 1) == 0)
        {
          [(SBIconViewAccessibility *)self _accessibilityAddEditActions:array];
        }

        [(SBIconViewAccessibility *)self _accessibilityDeleteActions:array];
        [(SBIconViewAccessibility *)self _accessibilityDropFromFolderAction:array];
      }
    }

    if ((v8 & 1) == 0 && ![(SBIconViewAccessibility *)self _axIsInControlCenter])
    {
      [(SBIconViewAccessibility *)self _accessibilityAddTodayViewAction:array];
      [(SBIconViewAccessibility *)self _accessibilityAddAppLibraryViewAction:array];
    }

    if ([(SBIconViewAccessibility *)self _axIsInControlCenter])
    {
      [(SBIconViewAccessibility *)self _accessibilityResizeActions:array];
      [(SBIconViewAccessibility *)self _accessibilityAddControlsGalleryViewAction:array];
    }

    if ([array count])
    {
      v17 = array;
    }

    else
    {
      v17 = 0;
    }

    v18 = AXLogSpringboardServer();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v17 count];
      v21 = 134217984;
      v22 = v19;
      _os_log_impl(&dword_29C3E1000, v18, OS_LOG_TYPE_INFO, "[Custom Action]: %li actions found.", &v21, 0xCu);
    }

    v3 = v17;
  }

  return v3;
}

- (void)_accessibilityDeleteActions:(id)actions
{
  actionsCopy = actions;
  if ([(SBIconViewAccessibility *)self _axIsIconEditing])
  {
    _axDragManager = [(SBIconViewAccessibility *)self _axDragManager];
    if (([_axDragManager _axIsIconDragging] & 1) == 0)
    {
      v5 = [(SBIconViewAccessibility *)self safeBoolForKey:@"_isShowingCloseBox"];

      if (!v5)
      {
        goto LABEL_6;
      }

      _axDragManager = accessibilityLocalizedString(@"delete.key");
      v6 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:_axDragManager target:self selector:sel__accessibilityDeleteApp];
      [actionsCopy addObject:v6];
    }
  }

LABEL_6:
}

- (void)_accessibilityAddEditActions:(id)actions
{
  v25 = *MEMORY[0x29EDCA608];
  actionsCopy = actions;
  _axIsIconEditing = [(SBIconViewAccessibility *)self _axIsIconEditing];
  if (!_axIsIconEditing || ![(SBIconViewAccessibility *)self _axInAmbientPresentationMode])
  {
    v6 = [(SBIconViewAccessibility *)self safeBoolForKey:@"isCustomIconImageViewHitTestingDisabled"];
    v7 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
    NSClassFromString(&cfstr_Sbhpagemanagem_0.isa);
    isKindOfClass = objc_opt_isKindOfClass();

    v9 = AXLogSpringboardServer();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if (v6)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      *buf = 138412290;
      v24 = v10;
      _os_log_impl(&dword_29C3E1000, v9, OS_LOG_TYPE_INFO, "[Custom Action]: Icon image view hit testing disabled: %@.", buf, 0xCu);
    }

    v11 = AXLogSpringboardServer();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (isKindOfClass)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      *buf = 138412290;
      v24 = v12;
      _os_log_impl(&dword_29C3E1000, v11, OS_LOG_TYPE_INFO, "[Custom Action]: Icon view is page management icon: %@.", buf, 0xCu);
    }

    server = [MEMORY[0x29EDBDFA8] server];
    if ([server isAppSwitcherVisible] & 1) != 0 || (AXContextMenuIsShowing & 1) != 0 || (-[SBIconViewAccessibility _accessibilityIsWidgetIconView](self, "_accessibilityIsWidgetIconView") & v6)
    {
      goto LABEL_29;
    }

    if ((isKindOfClass & 1) == 0)
    {
      v14 = AXLogSpringboardServer();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_29C3E1000, v14, OS_LOG_TYPE_INFO, "[Custom Action]: Icon view edit action can be added to icon view.", buf, 2u);
      }

      if ([(SBIconViewAccessibility *)self _axIsInControlCenter])
      {
        v15 = @"control.center.editing.%@";
      }

      else
      {
        v15 = @"jiggly.mode.%@";
      }

      v16 = @"start";
      if (_axIsIconEditing)
      {
        v16 = @"end";
      }

      v17 = [MEMORY[0x29EDBA0F8] stringWithFormat:v15, v16];
      server = accessibilityLocalizedString(v17);

      v18 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:server target:self selector:sel__accessibilityToggleJigglyMode];
      mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
      [v18 setIgnoreWhenVoiceOverTouches:{objc_msgSend(mEMORY[0x29EDBDFA0], "voiceOverEditAppsActionEnabled") ^ 1}];

      v20 = AXLogSpringboardServer();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        ignoreWhenVoiceOverTouches = [v18 ignoreWhenVoiceOverTouches];
        v22 = &stru_2A230FAF0;
        if (ignoreWhenVoiceOverTouches)
        {
          v22 = @" not";
        }

        *buf = 138412290;
        v24 = v22;
        _os_log_impl(&dword_29C3E1000, v20, OS_LOG_TYPE_INFO, "[Custom Action]: Icon edit action is%@ visible to VO.", buf, 0xCu);
      }

      [actionsCopy addObject:v18];
LABEL_29:
    }
  }
}

- (void)_accessibilityDropFromFolderAction:(id)action
{
  actionCopy = action;
  if (AXProcessIsSpringBoard())
  {
    v4 = AXSBIconControllerSharedInstance();
    _axDragManager = [(SBIconViewAccessibility *)self _axDragManager];
    _axIsIconDragging = [_axDragManager _axIsIconDragging];

    if (_axIsIconDragging)
    {
      v7 = AXSBHIconManagerFromSharedIconController();
      v8 = [v7 safeBoolForKey:@"hasOpenFolder"];

      if (v8)
      {
        v9 = objc_alloc(MEMORY[0x29EDC78E0]);
        v10 = accessibilityLocalizedString(@"move.app.out.of.folder.short");
        v11 = [v9 initWithName:v10 target:v4 selector:sel__accessibilityCloseOpenFolder];

        v12 = accessibilityLocalizedString(@"move.app.out.of.folder.short");
        [v11 _setShortName:v12];

        [actionCopy addObject:v11];
      }
    }
  }
}

- (void)_accessibilityAddTodayViewAction:(id)action
{
  actionCopy = action;
  if (AXProcessIsSpringBoard())
  {
    v4 = AXSBHIconManagerFromSharedIconController();
    if (([v4 safeBoolForKey:@"isEditing"] & 1) == 0)
    {
      server = [MEMORY[0x29EDBDFA8] server];
      if (![server isShowingHomescreen])
      {
LABEL_8:

        goto LABEL_9;
      }

      v6 = AXSBIconControllerSharedInstance();
      if ([v6 _axIsShowingHomeScreenTodayView])
      {

        goto LABEL_8;
      }

      v7 = [v4 safeBoolForKey:@"hasOpenFolder"];

      if ((v7 & 1) == 0)
      {
        v8 = objc_alloc(MEMORY[0x29EDC78E0]);
        v9 = accessibilityLocalizedString(@"today.visible.key");
        server = [v8 initWithName:v9 target:self selector:sel__accessibilityShowTodayView];

        [server setIgnoreWhenVoiceOverTouches:1];
        [actionCopy addObject:server];
        goto LABEL_8;
      }
    }

LABEL_9:
  }
}

- (void)_accessibilityAddAppLibraryViewAction:(id)action
{
  actionCopy = action;
  if (AXProcessIsSpringBoard())
  {
    v4 = AXSBHIconManagerFromSharedIconController();
    if (([v4 safeBoolForKey:@"isEditing"] & 1) == 0)
    {
      server = [MEMORY[0x29EDBDFA8] server];
      if (![server isShowingHomescreen])
      {
LABEL_8:

        goto LABEL_9;
      }

      v6 = AXSBIconControllerSharedInstance();
      if ([v6 _axIsShowingAppLibrary])
      {

        goto LABEL_8;
      }

      v7 = [v4 safeBoolForKey:@"hasOpenFolder"];

      if ((v7 & 1) == 0)
      {
        v8 = objc_alloc(MEMORY[0x29EDC78E0]);
        v9 = accessibilityLocalizedString(@"app.library");
        server = [v8 initWithName:v9 target:self selector:sel__accessibilityShowAppLibrary];

        [server setIgnoreWhenVoiceOverTouches:1];
        [actionCopy addObject:server];
        goto LABEL_8;
      }
    }

LABEL_9:
  }
}

- (void)_accessibilityAddControlsGalleryViewAction:(id)action
{
  actionCopy = action;
  if ([(SBIconViewAccessibility *)self _axIsInControlCenter])
  {
    if ([(SBIconViewAccessibility *)self _axIsIconEditing])
    {
      _axDragManager = [(SBIconViewAccessibility *)self _axDragManager];
      _axIsIconDragging = [_axDragManager _axIsIconDragging];

      if ((_axIsIconDragging & 1) == 0)
      {
        v7 = objc_alloc(MEMORY[0x29EDC78E0]);
        v8 = accessibilityLocalizedString(@"show.controls.gallery");
        v10[0] = MEMORY[0x29EDCA5F8];
        v10[1] = 3221225472;
        v10[2] = __70__SBIconViewAccessibility__accessibilityAddControlsGalleryViewAction___block_invoke;
        v10[3] = &unk_29F300778;
        v10[4] = self;
        v9 = [v7 initWithName:v8 actionHandler:v10];

        [actionCopy addObject:v9];
      }
    }
  }
}

uint64_t __70__SBIconViewAccessibility__accessibilityAddControlsGalleryViewAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) safeValueForKey:@"_delegate"];
  objc_opt_class();
  v5 = [v4 safeSwiftValueForKey:@"addButton"];
  v6 = __UIAccessibilityCastAsClass();

  [v6 sendActionsForControlEvents:64];
  return 1;
}

- (id)_axSortedSupportedGridSizeClasses
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__8;
  v8 = __Block_byref_object_dispose__8;
  v9 = 0;
  AXPerformSafeBlock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __60__SBIconViewAccessibility__axSortedSupportedGridSizeClasses__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) iconGridSizeClassSizes];
  v2 = [*(a1 + 32) supportedIconGridSizeClasses];
  v3 = [v6 gridSizeClassesSortedByGridAreaWithAllowedGridSizeClasses:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_axStringForGridSizeClass:(id)class
{
  classCopy = class;
  [(SBIconViewAccessibility *)self _axIconToCCUIGridSize:classCopy];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  AXPerformSafeBlock();
  _Block_object_dispose(&v8, 8);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  AXPerformSafeBlock();
  _Block_object_dispose(&v8, 8);
  v5 = accessibilityLocalizedString(@"control.size.dimensions");
  v6 = AXCFormattedString();

  return v6;
}

uint64_t __53__SBIconViewAccessibility__axStringForGridSizeClass___block_invoke(uint64_t a1)
{
  result = CCUINumberOfRowsForGridSizeClass();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __53__SBIconViewAccessibility__axStringForGridSizeClass___block_invoke_2(uint64_t a1)
{
  result = CCUINumberOfColumnsForGridSizeClass();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)_accessibilityResizeActions:(id)actions
{
  v23 = *MEMORY[0x29EDCA608];
  actionsCopy = actions;
  if ([(SBIconViewAccessibility *)self _axIsIconEditing]&& [(SBIconViewAccessibility *)self _axIsInControlCenter]&& [(SBIconViewAccessibility *)self safeBoolForKey:@"isShowingResizeHandle"])
  {
    v4 = [(SBIconViewAccessibility *)self safeValueForKeyPath:@"icon.gridSizeClass"];
    _axSortedSupportedGridSizeClasses = [(SBIconViewAccessibility *)self _axSortedSupportedGridSizeClasses];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [_axSortedSupportedGridSizeClasses countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        v9 = 0;
        do
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(_axSortedSupportedGridSizeClasses);
          }

          v10 = *(*(&v18 + 1) + 8 * v9);
          if (v10 != v4 && ([*(*(&v18 + 1) + 8 * v9) isEqualToString:v4] & 1) == 0)
          {
            v11 = accessibilityLocalizedString(@"control.resize");
            v15 = [(SBIconViewAccessibility *)self _axStringForGridSizeClass:v10];
            v12 = AXCFormattedString();

            v13 = objc_alloc(MEMORY[0x29EDC78E0]);
            v17[0] = MEMORY[0x29EDCA5F8];
            v17[1] = 3221225472;
            v17[2] = __55__SBIconViewAccessibility__accessibilityResizeActions___block_invoke;
            v17[3] = &unk_29F3007A0;
            v17[4] = self;
            v17[5] = v10;
            v14 = [v13 initWithName:v12 actionHandler:{v17, v15}];
            [actionsCopy addObject:v14];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [_axSortedSupportedGridSizeClasses countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)_accessibilityShowTodayView
{
  v2 = AXSBIconControllerSharedInstance();
  [v2 _axShowTodayView];

  return 1;
}

- (BOOL)_accessibilityShowAppLibrary
{
  v2 = AXSBIconControllerSharedInstance();
  [v2 _axShowAppLibrary];

  return 1;
}

- (id)_accessibilitySupportGesturesAttributes
{
  v7[1] = *MEMORY[0x29EDCA608];
  v5[0] = @"AXSupportedGestureTypeKey";
  v5[1] = @"AXOrbGestureMode";
  v6[0] = &unk_2A2318D10;
  v6[1] = &unk_2A2318D28;
  v2 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v7[0] = v2;
  v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:1];

  return v3;
}

- (BOOL)_axIsIconEditing
{
  IsSpringBoard = AXProcessIsSpringBoard();
  if (IsSpringBoard)
  {

    LOBYTE(IsSpringBoard) = [(SBIconViewAccessibility *)self safeBoolForKey:@"isEditing"];
  }

  return IsSpringBoard;
}

- (void)_accessibilityEditAmbientIcon
{
  v3 = [(SBIconViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_7 startWithSelf:0];
  _accessibilityViewController = [v3 _accessibilityViewController];

  if (_accessibilityViewController)
  {
    v5 = [_accessibilityViewController safeValueForKey:@"delegate"];
    v9 = _accessibilityViewController;
    v6 = v5;
    AXPerformSafeBlock();
  }

  else
  {
    objc_opt_class();
    v7 = [(SBIconViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_980 startWithSelf:0];
    _accessibilityViewController2 = [v7 _accessibilityViewController];
    v6 = __UIAccessibilityCastAsClass();

    [v6 setEditing:1];
  }
}

uint64_t __56__SBIconViewAccessibility__accessibilityEditAmbientIcon__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Amuiinfographv.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __56__SBIconViewAccessibility__accessibilityEditAmbientIcon__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) createUnlockRequestForViewController:*(a1 + 40)];
  [v2 setName:@"AMUIInfographViewController"];
  v3 = accessibilityLocalizedString(@"UNLOCK_WIDGET_STACK_EDITING");
  [v2 setUnlockDestination:v3];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __56__SBIconViewAccessibility__accessibilityEditAmbientIcon__block_invoke_3;
  v6[3] = &unk_29F3007C8;
  v6[4] = *(a1 + 48);
  [v4 requestUnlockForViewController:v5 withRequest:v2 completion:v6];
}

uint64_t __56__SBIconViewAccessibility__accessibilityEditAmbientIcon__block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    return AXPerformSafeBlock();
  }

  return result;
}

uint64_t __56__SBIconViewAccessibility__accessibilityEditAmbientIcon__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Ccuipagingview.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_accessibilityToggleJigglyMode
{
  IsSpringBoard = AXProcessIsSpringBoard();
  if (IsSpringBoard)
  {
    AXPerformSafeBlock();
  }

  return IsSpringBoard;
}

void __57__SBIconViewAccessibility__accessibilityToggleJigglyMode__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _axIsIconEditing];
  if ([*(a1 + 32) _axIsInControlCenter])
  {
    v4 = [*(a1 + 32) safeValueForKey:@"_delegate"];
    v3 = v4;
    AXPerformSafeBlock();
  }

  else
  {
    v3 = AXSBHIconManagerFromSharedIconController();
    [v3 setEditing:v2 ^ 1u];
  }

  if (!(v2 & 1 | (([*(a1 + 32) _accessibilityIsWidgetIconView] & 1) == 0)))
  {
    [*(a1 + 32) _accessibilityEditAmbientIcon];
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

uint64_t __57__SBIconViewAccessibility__accessibilityToggleJigglyMode__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _axDragManager];
  [v2 cancelAllDrags];

  v3 = *(a1 + 40);
  v4 = (*(a1 + 48) & 1) == 0;

  return [v3 setEditing:v4];
}

- (id)accessibilityDragSourceDescriptors
{
  v20[1] = *MEMORY[0x29EDCA608];
  _axIsIconEditing = [(SBIconViewAccessibility *)self _axIsIconEditing];
  v4 = [(SBIconViewAccessibility *)self safeStringForKey:@"_iconLocation"];
  v5 = getSBIconLocationAppLibrarySearch();
  v6 = [v4 containsString:v5];

  if ((v6 & 1) == 0 && !_axIsIconEditing)
  {
    goto LABEL_5;
  }

  _axDragManager = [(SBIconViewAccessibility *)self _axDragManager];
  _axGrabbedIcons = [_axDragManager _axGrabbedIcons];
  if ([_axGrabbedIcons count])
  {
    v9 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
    v10 = [v9 safeBoolForKey:@"canBeAddedToMultiItemDrag"];

    if (!v10)
    {
LABEL_5:
      v11 = MEMORY[0x29EDB8E90];
      goto LABEL_8;
    }
  }

  else
  {
  }

  objc_opt_class();
  v12 = __UIAccessibilityCastAsClass();
  v13 = MEMORY[0x29EDBA0F8];
  v14 = accessibilityLocalizedString(@"drag.start");
  accessibilityLabel = [(SBIconViewAccessibility *)self accessibilityLabel];
  v16 = [v13 stringWithFormat:v14, accessibilityLabel];

  v17 = objc_alloc(MEMORY[0x29EDC7900]);
  [v12 bounds];
  UIRectGetCenter();
  v18 = [v17 initWithName:v16 point:v12 inView:?];
  v20[0] = v18;
  v11 = [MEMORY[0x29EDB8D80] arrayWithObjects:v20 count:1];

LABEL_8:

  return v11;
}

- (void)accessibilityElementDidBecomeFocused
{
  v2 = dropIndicies;
  dropIndicies = 0;
}

- (id)accessibilityDropPointDescriptors
{
  v125[2] = *MEMORY[0x29EDCA608];
  if (!AXProcessIsSpringBoard())
  {
    v5 = MEMORY[0x29EDB8E90];
    goto LABEL_47;
  }

  _axIconManager = [(SBIconViewAccessibility *)self _axIconManager];
  v4 = [(SBIconViewAccessibility *)self safeStringForKey:@"_iconLocation"];
  if (([v4 isEqualToString:@"SBIconLocationFloatingDockSuggestions"] & 1) == 0)
  {
    v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    _axDragManager = [(SBIconViewAccessibility *)self _axDragManager];
    _axGrabbedIcons = [_axDragManager _axGrabbedIcons];

    if ([(SBIconViewAccessibility *)self _axIsInDock])
    {
      _axRootList = [(SBIconViewAccessibility *)self _axRootList];
      v10 = [_axRootList safeValueForKey:@"displayedModel"];

      v11 = [v10 safeUnsignedIntegerForKey:@"maxNumberOfIcons"];
      v12 = [v10 safeUnsignedIntegerForKey:@"numberOfNonPlaceholderIcons"];
      if (([v10 safeBoolForKey:@"isFull"] & 1) != 0 || (objc_msgSend(MEMORY[0x29EDB8E50], "setWithArray:", _axGrabbedIcons), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count") + v12, v13, v14 > v11))
      {

        v5 = MEMORY[0x29EDB8E90];
LABEL_45:

        goto LABEL_46;
      }
    }

    if (![_axGrabbedIcons count])
    {
LABEL_44:
      v5 = v6;
      goto LABEL_45;
    }

    firstObject = [_axGrabbedIcons firstObject];
    LOBYTE(v118) = 0;
    objc_opt_class();
    v15 = __UIAccessibilityCastAsClass();
    v16 = v15;
    superview = [v15 superview];

    _axRootList2 = [(SBIconViewAccessibility *)self _axRootList];
    [_axRootList2 safeValueForKey:@"displayedModel"];
    v118 = 0;
    v119 = &v118;
    v120 = 0x3032000000;
    v121 = __Block_byref_object_copy__8;
    v122 = __Block_byref_object_dispose__8;
    v101 = v123 = 0;
    AXPerformSafeBlock();
    v103 = *(v119 + 5);

    _Block_object_dispose(&v118, 8);
    v17 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
    LOBYTE(v16) = firstObject == v17;

    if (v16)
    {
      v29 = 0;
      v5 = 0;
      goto LABEL_43;
    }

    v97 = [firstObject safeStringForKey:@"gridSizeClass"];
    v96 = [v103 safeStringForKey:@"gridSizeClass"];
    v99 = [(SBIconViewAccessibility *)self safeStringForKey:@"_iconLocation"];
    v18 = getSBIconLocationAppLibrary();
    v98 = [v99 containsString:v18];

    if (v98)
    {
      v19 = MEMORY[0x29EDBA0F8];
      v20 = accessibilityLocalizedString(@"move.to.app.library");
      _axDragManager2 = [(SBIconViewAccessibility *)self _axDragManager];
      _axGrabbedIconsLabel = [_axDragManager2 _axGrabbedIconsLabel];
      accessibilityLabel = [(SBIconViewAccessibility *)self accessibilityLabel];
      v100 = [v19 stringWithFormat:v20, _axGrabbedIconsLabel, accessibilityLabel];

      if (UIAccessibilityIsSwitchControlRunning())
      {
        v24 = accessibilityLocalizedString(@"move.to.app.library.short");

        v100 = v24;
      }

      v25 = objc_alloc(MEMORY[0x29EDC7900]);
      LOBYTE(v118) = 0;
      objc_opt_class();
      v26 = __UIAccessibilityCastAsClass();
      if (v118 != 1)
      {
        v27 = v26;
        [v26 frame];
        AX_CGRectGetCenter();
        _axGrabbedIconsLabel2 = [v25 initWithName:v100 point:superview inView:?];

        [v6 addObject:_axGrabbedIconsLabel2];
        v5 = v6;
LABEL_18:

LABEL_42:
        v29 = v98 ^ 1;
LABEL_43:

        if ((v29 & 1) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v30 = [_axRootList2 safeValueForKey:@"placeholderAssertions"];
      allObjects = [v30 allObjects];
      firstObject2 = [allObjects firstObject];
      v100 = [firstObject2 safeValueForKey:@"placeholderIcon"];

      if (!v100)
      {
        v100 = firstObject;
      }

      v33 = dropIndicies;
      if (!dropIndicies)
      {
        v118 = 0;
        v119 = &v118;
        v120 = 0x2020000000;
        v121 = 0;
        v115 = v101;
        v116 = v100;
        v117 = v103;
        AXPerformSafeBlock();
        v94 = *(v119 + 3);

        _Block_object_dispose(&v118, 8);
        v118 = 0;
        v119 = &v118;
        v120 = 0x2020000000;
        v121 = 0;
        v112 = v115;
        v113 = v116;
        v114 = v117;
        AXPerformSafeBlock();
        v34 = *(v119 + 3);

        _Block_object_dispose(&v118, 8);
        v124[0] = @"beforeIndex";
        v35 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v94];
        v124[1] = @"afterIndex";
        v125[0] = v35;
        v36 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v34];
        v125[1] = v36;
        v37 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v125 forKeys:v124 count:2];
        v38 = dropIndicies;
        dropIndicies = v37;

        v33 = dropIndicies;
      }

      v39 = [v33 objectForKeyedSubscript:@"beforeIndex"];
      unsignedIntegerValue = [v39 unsignedIntegerValue];

      if (unsignedIntegerValue != 0x7FFFFFFFFFFFFFFFLL)
      {
        v41 = [(SBIconViewAccessibility *)self _axDropPointLabel:1];
        v118 = 0;
        v119 = &v118;
        v120 = 0x3032000000;
        v121 = __Block_byref_object_copy__8;
        v122 = __Block_byref_object_dispose__8;
        v123 = 0;
        v111 = v101;
        AXPerformSafeBlock();
        v42 = *(v119 + 5);

        _Block_object_dispose(&v118, 8);
        v118 = 0;
        v119 = &v118;
        v120 = 0x3032000000;
        v121 = __Block_byref_object_copy__8;
        v122 = __Block_byref_object_dispose__8;
        v123 = 0;
        v43 = _axRootList2;
        v44 = v42;
        AXPerformSafeBlock();
        v45 = *(v119 + 5);

        _Block_object_dispose(&v118, 8);
        v118 = 0;
        v119 = &v118;
        v120 = 0x3010000000;
        v122 = 0;
        v123 = 0;
        v121 = &unk_29C40BC2F;
        [v45 frame];
        MinX = CGRectGetMinX(v127);
        [v45 frame];
        AX_CGRectGetCenter();
        v122 = *&MinX;
        v123 = v47;
        if ([(SBIconViewAccessibility *)self _axInAmbientPresentationMode])
        {
          [v45 frame];
          AX_CGRectGetCenter();
          v49 = v48;
          [v45 frame];
          MinY = CGRectGetMinY(v128);
          v51 = v119;
          *(v119 + 4) = v49;
          v51[5] = MinY;
        }

        else if (AXDeviceIsPad() && [(SBIconViewAccessibility *)self _axIsInDock])
        {
          v109 = v43;
          v110 = v45;
          AXPerformSafeBlock();
        }

        v52 = objc_alloc(MEMORY[0x29EDC7900]);
        v53 = [v52 initWithName:v41 point:superview inView:{v119[4], v119[5]}];
        [v6 addObject:v53];

        _Block_object_dispose(&v118, 8);
      }

      v54 = [dropIndicies objectForKeyedSubscript:@"afterIndex"];
      unsignedIntegerValue2 = [v54 unsignedIntegerValue];

      if (unsignedIntegerValue2 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v56 = [(SBIconViewAccessibility *)self _axDropPointLabel:0];
        v118 = 0;
        v119 = &v118;
        v120 = 0x3032000000;
        v121 = __Block_byref_object_copy__8;
        v122 = __Block_byref_object_dispose__8;
        v123 = 0;
        v108 = v101;
        AXPerformSafeBlock();
        v57 = *(v119 + 5);

        _Block_object_dispose(&v118, 8);
        v118 = 0;
        v119 = &v118;
        v120 = 0x3032000000;
        v121 = __Block_byref_object_copy__8;
        v122 = __Block_byref_object_dispose__8;
        v123 = 0;
        v58 = _axRootList2;
        v59 = v57;
        AXPerformSafeBlock();
        v60 = *(v119 + 5);

        _Block_object_dispose(&v118, 8);
        v118 = 0;
        v119 = &v118;
        v120 = 0x3010000000;
        v122 = 0;
        v123 = 0;
        v121 = &unk_29C40BC2F;
        [v60 frame];
        MaxX = CGRectGetMaxX(v129);
        [v60 frame];
        AX_CGRectGetCenter();
        v122 = *&MaxX;
        v123 = v62;
        if ([(SBIconViewAccessibility *)self _axInAmbientPresentationMode])
        {
          [v60 frame];
          AX_CGRectGetCenter();
          v64 = v63;
          [v60 frame];
          MaxY = CGRectGetMaxY(v130);
          v66 = v119;
          *(v119 + 4) = v64;
          v66[5] = MaxY;
        }

        else if (AXDeviceIsPad() && [(SBIconViewAccessibility *)self _axIsInDock])
        {
          v106 = v58;
          v107 = v60;
          AXPerformSafeBlock();
        }

        v67 = objc_alloc(MEMORY[0x29EDC7900]);
        v68 = [v67 initWithName:v56 point:superview inView:{v119[4], v119[5]}];
        [v6 addObject:v68];

        _Block_object_dispose(&v118, 8);
      }

      v69 = [firstObject safeBoolForKey:@"isFolderIcon"];
      v70 = *MEMORY[0x29EDC6CB0];
      if (![v97 isEqualToString:*MEMORY[0x29EDC6CB0]] || v69 & 1 | ((objc_msgSend(v96, "isEqualToString:", v70) & 1) == 0) || (objc_msgSend(_axIconManager, "safeValueForKey:", @"currentRootIconList"), v71 = objc_claimAutoreleasedReturnValue(), v72 = _axRootList2 == v71, v71, !v72))
      {
        v5 = MEMORY[0x29EDB8E90];
        goto LABEL_42;
      }

      _axDragManager3 = [(SBIconViewAccessibility *)self _axDragManager];
      _axGrabbedIconsLabel2 = [_axDragManager3 _axGrabbedIconsLabel];

      v75 = MEMORY[0x29EDBA0F8];
      v76 = accessibilityLocalizedString(@"create.new.folder");
      accessibilityLabel2 = [(SBIconViewAccessibility *)self accessibilityLabel];
      v78 = [v75 stringWithFormat:v76, accessibilityLabel2, _axGrabbedIconsLabel2];

      if ([(SBIconViewAccessibility *)self _accessibilityIsWidgetIconView])
      {
        _accessibilityIsWidgetStackIconView = [(SBIconViewAccessibility *)self _accessibilityIsWidgetStackIconView];
        v80 = MEMORY[0x29EDBA0F8];
        if (_accessibilityIsWidgetStackIconView)
        {
          v81 = accessibilityLocalizedString(@"add.to.stack");
          v82 = [v80 stringWithFormat:v81, _axGrabbedIconsLabel2];
          v95 = @"add.to.stack.short";
        }

        else
        {
          v81 = accessibilityLocalizedString(@"create.new.widget.stack");
          accessibilityLabel3 = [(SBIconViewAccessibility *)self accessibilityLabel];
          v82 = [v80 stringWithFormat:v81, accessibilityLabel3, _axGrabbedIconsLabel2];

          v95 = @"create.new.widget.stack.short";
          v78 = accessibilityLabel3;
        }

        v78 = v82;
      }

      else
      {
        v95 = @"create.new.folder.short";
      }

      if ([v103 safeBoolForKey:@"isFolderIcon"])
      {
        v84 = MEMORY[0x29EDBA0F8];
        v85 = accessibilityLocalizedString(@"add.to.folder");
        accessibilityLabel4 = [(SBIconViewAccessibility *)self accessibilityLabel];
        v87 = [v84 stringWithFormat:v85, _axGrabbedIconsLabel2, accessibilityLabel4, v95];

        v95 = @"add.to.folder.short";
        v78 = v87;
      }

      v88 = v78;
      v89 = v88;
      if (UIAccessibilityIsSwitchControlRunning())
      {
        v89 = accessibilityLocalizedString(v95);
      }

      v90 = objc_alloc(MEMORY[0x29EDC7900]);
      LOBYTE(v118) = 0;
      objc_opt_class();
      v91 = __UIAccessibilityCastAsClass();
      if (v118 != 1)
      {
        v92 = v91;
        [v91 frame];
        AX_CGRectGetCenter();
        v93 = [v90 initWithName:v89 point:superview inView:?];

        [v6 addObject:v93];
        v5 = MEMORY[0x29EDB8E90];
        goto LABEL_18;
      }
    }

    abort();
  }

  v5 = MEMORY[0x29EDB8E90];
LABEL_46:

LABEL_47:

  return v5;
}

void __60__SBIconViewAccessibility_accessibilityDropPointDescriptors__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = [*(a1 + 40) safeValueForKey:@"icon"];
  v3 = [v7 safeStringForKey:@"nodeIdentifier"];
  v4 = [v2 iconWithIdentifier:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t __60__SBIconViewAccessibility_accessibilityDropPointDescriptors__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) bestGridCellIndexForInsertingIcon:*(a1 + 40) maintainingPositionBeforeIcon:*(a1 + 48) ignoringPlaceholders:0 gridCellInfoOptions:0 mutationOptions:0];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

uint64_t __60__SBIconViewAccessibility_accessibilityDropPointDescriptors__block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) bestGridCellIndexForInsertingIcon:*(a1 + 40) maintainingPositionAfterIcon:*(a1 + 48) ignoringPlaceholders:0 gridCellInfoOptions:0 mutationOptions:0];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

uint64_t __60__SBIconViewAccessibility_accessibilityDropPointDescriptors__block_invoke_4(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) iconAtGridCellIndex:*(a1 + 48) gridCellInfoOptions:0];

  return MEMORY[0x2A1C71028]();
}

uint64_t __60__SBIconViewAccessibility_accessibilityDropPointDescriptors__block_invoke_5(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) iconViewForIcon:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

uint64_t __60__SBIconViewAccessibility_accessibilityDropPointDescriptors__block_invoke_6(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  memset(v6, 0, sizeof(v6));
  [*(a1 + 32) _getDragRegionRects:v6 forIconView:*(a1 + 40)];
  MinX = CGRectGetMinX(v6[2]);
  [*(a1 + 40) frame];
  result = AX_CGRectGetCenter();
  v4 = *(*(a1 + 48) + 8);
  *(v4 + 32) = MinX;
  *(v4 + 40) = v5;
  return result;
}

uint64_t __60__SBIconViewAccessibility_accessibilityDropPointDescriptors__block_invoke_7(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) iconAtGridCellIndex:*(a1 + 48) gridCellInfoOptions:0];

  return MEMORY[0x2A1C71028]();
}

uint64_t __60__SBIconViewAccessibility_accessibilityDropPointDescriptors__block_invoke_8(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) iconViewForIcon:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

uint64_t __60__SBIconViewAccessibility_accessibilityDropPointDescriptors__block_invoke_9(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  memset(v6, 0, sizeof(v6));
  [*(a1 + 32) _getDragRegionRects:v6 forIconView:*(a1 + 40)];
  MinX = CGRectGetMinX(v6[3]);
  [*(a1 + 40) frame];
  result = AX_CGRectGetCenter();
  v4 = *(*(a1 + 48) + 8);
  *(v4 + 32) = MinX;
  *(v4 + 40) = v5;
  return result;
}

- (id)_axDropPointLabel:(BOOL)label
{
  labelCopy = label;
  IsSwitchControlRunning = UIAccessibilityIsSwitchControlRunning();
  v6 = @"place.before.app";
  if (IsSwitchControlRunning)
  {
    v6 = @"place.before.app.short";
  }

  v7 = v6;
  v8 = UIAccessibilityIsSwitchControlRunning();
  v9 = @"place.after.app";
  if (v8)
  {
    v9 = @"place.after.app.short";
  }

  if (labelCopy)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  v11 = accessibilityLocalizedString(v10);

  if (UIAccessibilityIsSwitchControlRunning())
  {
    v12 = v11;
  }

  else
  {
    v13 = MEMORY[0x29EDBA0F8];
    _axDragManager = [(SBIconViewAccessibility *)self _axDragManager];
    _axGrabbedIconsLabel = [_axDragManager _axGrabbedIconsLabel];
    accessibilityLabel = [(SBIconViewAccessibility *)self accessibilityLabel];
    v12 = [v13 stringWithFormat:v11, _axGrabbedIconsLabel, accessibilityLabel];
  }

  return v12;
}

- (CGPoint)_accessibilityAmbientModeDropPoint:(BOOL)point
{
  pointCopy = point;
  _axDragManager = [(SBIconViewAccessibility *)self _axDragManager];
  [_axDragManager safeCGPointForKey:@"_accessibilityLastPausedLocation"];
  v6 = v5;
  v8 = v7;

  LOBYTE(v19) = 0;
  objc_opt_class();
  v9 = __UIAccessibilityCastAsClass();
  [v9 frame];
  UIRectGetCenter();
  v11 = v10;
  v13 = v12;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3010000000;
  v22 = &unk_29C40BC2F;
  v23 = 0;
  v24 = 0;
  AXPerformSafeBlock();
  v14 = *(v20 + 5);
  _Block_object_dispose(&v19, 8);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3010000000;
  v22 = &unk_29C40BC2F;
  v23 = 0;
  v24 = 0;
  AXPerformSafeBlock();
  v15 = *(v20 + 5);
  _Block_object_dispose(&v19, 8);
  if (pointCopy)
  {
    if (v15 < v14 && v15 == v14 - 1)
    {
      v13 = v8;
    }

    else
    {
      v6 = v11;
    }

    if (v15 < v14 && v15 != v14 - 1)
    {
LABEL_13:
      v19 = 0;
      v20 = &v19;
      v21 = 0x3010000000;
      v22 = &unk_29C40BC2F;
      v23 = 0;
      v24 = 0;
      AXPerformSafeBlock();
      v13 = v20[5];
      _Block_object_dispose(&v19, 8);
LABEL_14:
      v6 = v11;
    }
  }

  else
  {
    v16 = v14 + 1;
    if (v15 <= v14 || v15 != v16)
    {
      if (v15 <= v14 || v15 == v16)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v13 = v8;
  }

  v17 = v6;
  v18 = v13;
  result.y = v18;
  result.x = v17;
  return result;
}

void __62__SBIconViewAccessibility__accessibilityAmbientModeDropPoint___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _axRootList];
  v2 = [v5 coordinateAtPoint:{*(a1 + 48), *(a1 + 56)}];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v2;
  *(v3 + 40) = v4;
}

void __62__SBIconViewAccessibility__accessibilityAmbientModeDropPoint___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) _axRootList];
  v2 = [v5 coordinateAtPoint:{*(a1 + 48), *(a1 + 56)}];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v2;
  *(v3 + 40) = v4;
}

void __62__SBIconViewAccessibility__accessibilityAmbientModeDropPoint___block_invoke_3(uint64_t a1)
{
  v5 = [*(a1 + 32) _axRootList];
  [v5 centerForIconCoordinate:{*(a1 + 48), *(a1 + 56)}];
  v2 = *(*(a1 + 40) + 8);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
}

void __62__SBIconViewAccessibility__accessibilityAmbientModeDropPoint___block_invoke_4(uint64_t a1)
{
  v5 = [*(a1 + 32) _axRootList];
  [v5 centerForIconCoordinate:{*(a1 + 48), *(a1 + 56)}];
  v2 = *(*(a1 + 40) + 8);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
}

- (id)_accessibilityFilterInteractionLocationDescriptorsForVisible:(id)visible
{
  visibleCopy = visible;
  if ([(SBIconViewAccessibility *)self _axInAmbientPresentationMode]|| [(SBIconViewAccessibility *)self _axIsInControlCenter])
  {
    v5 = visibleCopy;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBIconViewAccessibility;
    v5 = [(SBIconViewAccessibility *)&v8 _accessibilityFilterInteractionLocationDescriptorsForVisible:visibleCopy];
  }

  v6 = v5;

  return v6;
}

- (void)_accessibilityBeginDragAtPoint:(CGPoint)point endpoint:(id)endpoint completion:(id)completion
{
  y = point.y;
  x = point.x;
  v12 = MEMORY[0x29EDCA5F8];
  v13 = 3221225472;
  v14 = __78__SBIconViewAccessibility__accessibilityBeginDragAtPoint_endpoint_completion___block_invoke;
  v15 = &unk_29F3001B8;
  selfCopy = self;
  completionCopy = completion;
  endpointCopy = endpoint;
  AXPerformSafeBlock();
  v11.receiver = self;
  v11.super_class = SBIconViewAccessibility;
  [(SBIconViewAccessibility *)&v11 _accessibilityBeginDragAtPoint:endpointCopy endpoint:completionCopy completion:x, y];

  SBAXPerformingAXDrag = 1;
}

void __78__SBIconViewAccessibility__accessibilityBeginDragAtPoint_endpoint_completion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _axDragManager];
  [v1 cancelAllDrags];
}

- (id)_accessibilityPreferredScrollActions
{
  v9[2] = *MEMORY[0x29EDCA608];
  _accessibilityIsRTL = [(SBIconViewAccessibility *)self _accessibilityIsRTL];
  if (_accessibilityIsRTL)
  {
    v3 = 2009;
  }

  else
  {
    v3 = 2008;
  }

  if (_accessibilityIsRTL)
  {
    v4 = 2008;
  }

  else
  {
    v4 = 2009;
  }

  v5 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v3];
  v9[0] = v5;
  v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v4];
  v9[1] = v6;
  v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:2];

  return v7;
}

- (BOOL)_accessibilityCanDrag
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v6.receiver = self, v6.super_class = SBIconViewAccessibility, [(SBIconViewAccessibility *)&v6 _accessibilityCanDrag]))
  {
    v3 = [(SBIconViewAccessibility *)self safeValueForKey:@"icon"];
    v4 = [v3 safeBoolForKey:@"isPlaceholder"] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)_axIsInDock
{
  v2 = [(SBIconViewAccessibility *)self safeStringForKey:@"_iconLocation"];
  v3 = getSBIconLocationDock();
  if ([v2 isEqual:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = getSBIconLocationFloatingDock();
    if ([v2 isEqualToString:v5])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v2 isEqual:@"SBIconLocationFloatingDockSuggestions"];
    }
  }

  return v4;
}

- (BOOL)_axInAmbientPresentationMode
{
  v2 = AXWindowScene(@"activeDisplayWindowScene");
  v3 = [v2 safeValueForKey:@"ambientPresentationController"];
  v4 = [v3 safeBoolForKey:@"isPresented"];

  return v4;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  v12.receiver = self;
  v12.super_class = SBIconViewAccessibility;
  v8 = [(SBIconViewAccessibility *)&v12 contextMenuInteraction:interactionCopy configurationForMenuAtLocation:x, y];
  objc_opt_class();
  v9 = __UIAccessibilityCastAsClass();
  window = [v9 window];
  [window setAccessibilityViewIsModal:1];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], *MEMORY[0x29EDBDB60]);
  if (v8)
  {
    AXContextMenuIsShowing = 1;
  }

  return v8;
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  v13.receiver = self;
  v13.super_class = SBIconViewAccessibility;
  [(SBIconViewAccessibility *)&v13 contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy animator:animatorCopy];
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();
  window = [v11 window];
  [window setAccessibilityViewIsModal:0];

  AXContextMenuIsShowing = 0;
}

- (id)_containerViewForLegacyFocusRing
{
  v3 = [(SBIconViewAccessibility *)self safeUIViewForKey:@"_iconImageView"];
  v4 = v3;
  if (v3)
  {
    view = v3;
  }

  else
  {
    objc_opt_class();
    v6 = [(SBIconViewAccessibility *)self safeValueForKey:@"customIconImageViewController"];
    v7 = __UIAccessibilityCastAsClass();

    view = [v7 view];
  }

  return view;
}

- (id)accessibilityPath
{
  if ([(SBIconViewAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    [(SBIconViewAccessibility *)self safeCGFloatForKey:@"iconImageCornerRadius"];
    v3 = [(SBIconViewAccessibility *)self safeUIViewForKey:@"_focusEffectPlatterView"];
    v4 = v3;
    if (v3 || ([(SBIconViewAccessibility *)self safeUIViewForKey:@"_iconImageView"], v5 = objc_claimAutoreleasedReturnValue(), v4 = self, !v5))
    {
      v5 = v4;
    }

    [(SBIconViewAccessibility *)v5 accessibilityFrame];
    UIRectInsetEdges();
    v6 = [MEMORY[0x29EDC7948] bezierPathWithRoundedRect:? cornerRadius:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)focusGroupIdentifier
{
  if ([(SBIconViewAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    _axIsInDock = [(SBIconViewAccessibility *)self _axIsInDock];
    v4 = @"SBIconView";
    if (_axIsInDock)
    {
      v4 = @"SBIconViewDock";
    }

    focusGroupIdentifier = v4;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBIconViewAccessibility;
    focusGroupIdentifier = [(SBIconViewAccessibility *)&v7 focusGroupIdentifier];
  }

  return focusGroupIdentifier;
}

- (id)_accessibilityAddToDragSessionCustomAction
{
  if ([(SBIconViewAccessibility *)self _accessibilityIsDraggingWidget])
  {
    _accessibilityAddToDragSessionCustomAction = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBIconViewAccessibility;
    _accessibilityAddToDragSessionCustomAction = [(SBIconViewAccessibility *)&v5 _accessibilityAddToDragSessionCustomAction];
  }

  return _accessibilityAddToDragSessionCustomAction;
}

- (BOOL)_accessibilityIsDraggingWidget
{
  v2 = AXMainSBHomeScreenController();
  v3 = [v2 safeValueForKey:@"iconDragManager"];
  v4 = __UIAccessibilitySafeClass();

  if (v4)
  {
    v5 = [v4 safeBoolForKey:@"isTrackingWidgetIconDrags"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_axDragManager
{
  if ([(SBIconViewAccessibility *)self _axIsInControlCenter])
  {
    _axIconController = [(SBIconViewAccessibility *)self _axIconController];
    [_axIconController safeSwiftValueForKey:@"iconDragManager"];
  }

  else
  {
    _axIconController = [(SBIconViewAccessibility *)self _axIconManager];
    [_axIconController safeValueForKey:@"iconDragManager"];
  }
  v4 = ;

  return v4;
}

- (id)_axIconController
{
  NSClassFromString(&cfstr_Sbhstackconfig_1.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [(SBIconViewAccessibility *)self safeValueForKeyPath:@"_stackConfigurationViewController"];
  }

  else
  {
    if ([(SBIconViewAccessibility *)self _axIsInControlCenter])
    {
      [(SBIconViewAccessibility *)self safeValueForKey:@"_delegate"];
    }

    else
    {
      AXMainSBHomeScreenController();
    }
    v3 = ;
  }

  return v3;
}

- (id)_axIconManager
{
  if ([(SBIconViewAccessibility *)self _axIsInControlCenter])
  {
    v2 = 0;
  }

  else
  {
    v2 = AXSBHIconManagerFromSharedIconController();
  }

  return v2;
}

- (id)_axFolderController
{
  if ([(SBIconViewAccessibility *)self _axIsInControlCenter])
  {
    _axIconController = [(SBIconViewAccessibility *)self _axIconController];
    v4 = [_axIconController safeSwiftValueForKey:@"__rootFolderController"];
  }

  else
  {
    if (AXSBOnenessOrXCUITestIsCurrentlyRequestingClientDuringContinuitySession())
    {
      v5 = AXSBCurrentFolderController();
      goto LABEL_7;
    }

    _axIconController = [(SBIconViewAccessibility *)self _axIconController];
    v4 = [_axIconController safeValueForKey:@"_currentFolderController"];
  }

  v5 = v4;

LABEL_7:

  return v5;
}

- (BOOL)_axIconManagerHasOpenFolder
{
  if ([(SBIconViewAccessibility *)self _axIsInControlCenter])
  {
    _axFolderController = [(SBIconViewAccessibility *)self _axFolderController];
    v4 = _axFolderController;
    v5 = @"isOpen";
  }

  else
  {
    _axFolderController = AXSBHIconManagerFromSharedIconController();
    v4 = _axFolderController;
    v5 = @"hasOpenFolder";
  }

  v6 = [_axFolderController safeBoolForKey:v5];

  return v6;
}

- (id)_axRootList
{
  _axIconManager = [(SBIconViewAccessibility *)self _axIconManager];
  _axIconManagerHasOpenFolder = [(SBIconViewAccessibility *)self _axIconManagerHasOpenFolder];
  v5 = [(SBIconViewAccessibility *)self safeStringForKey:@"_iconLocation"];
  _axFolderController = [(SBIconViewAccessibility *)self _axFolderController];
  v7 = _axFolderController;
  if (_axIconManagerHasOpenFolder)
  {
    v8 = @"currentIconListView";
  }

  else
  {
    v8 = @"currentRootIconList";
    _axFolderController = _axIconManager;
  }

  v9 = [_axFolderController safeValueForKey:v8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v10 = getSBIconLocationTodayViewSymbolLoc_ptr;
  v23 = getSBIconLocationTodayViewSymbolLoc_ptr;
  if (!getSBIconLocationTodayViewSymbolLoc_ptr)
  {
    v11 = SpringBoardHomeLibrary_0();
    v21[3] = dlsym(v11, "SBIconLocationTodayView");
    getSBIconLocationTodayViewSymbolLoc_ptr = v21[3];
    v10 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  if (!v10)
  {
    [SBIconViewAccessibility _axRootList];
  }

  if ([v5 containsString:*v10])
  {
    v12 = [(SBIconViewAccessibility *)_axIconManager safeValueForKeyPath:@"_effectiveTodayViewController.listView"];
  }

  else
  {
    if ([(SBIconViewAccessibility *)self _axInAmbientPresentationMode])
    {
      v13 = @"_iconListView";
      selfCopy = self;
    }

    else
    {
      v15 = getSBIconLocationDock();
      if ([v5 isEqualToString:v15])
      {
      }

      else
      {
        v16 = getSBIconLocationFloatingDock();
        v17 = [v5 isEqualToString:v16];

        if (!v17)
        {
          goto LABEL_17;
        }
      }

      v13 = @"effectiveDockListView";
      selfCopy = _axIconManager;
    }

    v12 = [(SBIconViewAccessibility *)selfCopy safeValueForKey:v13];
  }

  v18 = v12;

  v9 = v18;
LABEL_17:

  return v9;
}

- (id)focusItemsInRect:(CGRect)rect
{
  v7.receiver = self;
  v7.super_class = SBIconViewAccessibility;
  v4 = [(SBIconViewAccessibility *)&v7 focusItemsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  if ([(SBIconViewAccessibility *)self _accessibilityIsFKARunningForFocusItem]&& [(SBIconViewAccessibility *)self isAccessibilityElement])
  {
    v5 = MEMORY[0x29EDB8E90];
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (BOOL)canBecomeFocused
{
  if ([(SBIconViewAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {

    return [(SBIconViewAccessibility *)self isAccessibilityElement];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBIconViewAccessibility;
    return [(SBIconViewAccessibility *)&v4 canBecomeFocused];
  }
}

- (void)_updateCustomIconImageViewControllerHitTesting
{
  v7.receiver = self;
  v7.super_class = SBIconViewAccessibility;
  [(SBIconViewAccessibility *)&v7 _updateCustomIconImageViewControllerHitTesting];
  if ([(SBIconViewAccessibility *)self _accessibilityIsWidgetInAddWidgetSheet])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(SBIconViewAccessibility *)self safeBoolForKey:@"isCustomIconImageViewHitTestingDisabled"];
  }

  objc_opt_class();
  v4 = [(SBIconViewAccessibility *)self safeValueForKey:@"customIconImageViewController"];
  v5 = __UIAccessibilityCastAsClass();

  view = [v5 view];
  [view setAccessibilityElementsHidden:v3];
}

- (void)_createCloseBoxIfNecessary
{
  v3.receiver = self;
  v3.super_class = SBIconViewAccessibility;
  [(SBIconViewAccessibility *)&v3 _createCloseBoxIfNecessary];
  [(SBIconViewAccessibility *)self _accessibilitySetupCloseBox];
}

- (void)_updateCloseBoxAnimated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = SBIconViewAccessibility;
  [(SBIconViewAccessibility *)&v4 _updateCloseBoxAnimated:animated];
  [(SBIconViewAccessibility *)self _accessibilitySetupCloseBox];
}

- (void)_accessibilityIsWidgetInAddWidgetSheet
{
  currentHandler = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"NSString *getSBIconLocationAddWidgetSheet(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"SBIconViewAccessibility.m" lineNumber:40 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_axRootList
{
  currentHandler = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"NSString *getSBIconLocationTodayView(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"SBIconViewAccessibility.m" lineNumber:37 description:{@"%s", dlerror()}];

  __break(1u);
}

@end