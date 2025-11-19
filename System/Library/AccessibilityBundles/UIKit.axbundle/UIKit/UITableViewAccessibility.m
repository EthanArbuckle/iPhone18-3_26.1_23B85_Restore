@interface UITableViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityCanPerformEscapeAction;
- (BOOL)_accessibilityNativeFocusPreferredElementIsValid;
- (BOOL)_accessibilityOpaqueElementScrollsContentIntoView;
- (BOOL)_accessibilityScrollToFrame:(CGRect)a3 forView:(id)a4;
- (BOOL)_accessibilityShouldDisableCellReuse;
- (BOOL)_automationPrefersRealElements;
- (BOOL)_shouldSelectionFollowFocusForIndexPath:(id)a3 initiatedBySelection:(BOOL)a4;
- (BOOL)_swipeDeletionCommitted;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityRespondsToUserInteraction;
- (BOOL)isAccessibilityElement;
- (BOOL)isAccessibilityOpaqueElementProvider;
- (CGRect)accessibilityFrame;
- (id)_accessibilityFirstVisibleItem;
- (id)_accessibilityFooterElement;
- (id)_accessibilityFuzzyHitTest:(id)obj withEvent:;
- (id)_accessibilityHeaderElement;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityInternalData;
- (id)_accessibilityInternalDataRetrieveOnly;
- (id)_accessibilityLastFocusedChild;
- (id)_accessibilityOpaqueHeaderElementInDirection:(int64_t)a3 childElement:(id)a4;
- (id)_accessibilityReorderMessageForNewIndexPath:(uint64_t)a3 swappedWithRow:(char)a4 movingDown:;
- (id)_accessibilityReusableViewForOpaqueElement:(id)a3;
- (id)_accessibilityScannerGroupElements;
- (id)_accessibilityScrollStatus;
- (id)_accessibilitySearchResultsTableView;
- (id)_accessibilitySelectedChildren;
- (id)_accessibilitySortedElementsWithin;
- (id)_accessibilitySortedElementsWithinPreservingFloatingHeader:(void *)a3 sortedElements:;
- (id)_accessibilitySortedElementsWithinWithOptions:(id)a3;
- (id)_accessibilitySubviews;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_accessibilitySupplementaryHeaderViews;
- (id)_accessibilityTableViewCellElementForIndexPath:(id)a3;
- (id)_accessibilityUIScrollViewScrollStatus;
- (id)_accessibilityUseOpaqueElements;
- (id)_accessibilityUserTestingVisibleCells;
- (id)_accessibilityUserTestingVisibleSections;
- (id)_accessibilityViewChildrenWithOptions:(id)a3;
- (id)_accessibilityVisibleHeaderSections;
- (id)_axAttemptCreationOfViewType:(id)obj identifier:;
- (id)_axAttemptStoryboard:(int)a3 viewType:;
- (id)_axFirstLastOpaqueHeaderElementFromSection:(int64_t)a3 options:(id)a4 direction:(int64_t)a5;
- (id)_axFirstLastOpaqueHeaderElementInDirection:(id)obj options:;
- (id)_axGetIndexGuide;
- (id)_axOffScreenOpaqueHeaderElementInDirection:(id)obj options:(void *)a4 childElement:;
- (id)_axOpaqueHeaderElementInDirection:(id)obj withinElements:(uint64_t)a4 startIndex:;
- (id)_axVisibleHeadersAndFootersAfterLastVisibleCellSection:(void *)a1;
- (id)_axVisibleHeadersAndFootersPriorToFirstVisibleCellSection:(void *)a1;
- (id)_childFocusViews;
- (id)_delegateViewForFooterInSection:(int64_t)a3;
- (id)_delegateViewForHeaderInSection:(int64_t)a3;
- (id)accessibilityCellForRowAtIndexPath:(id)a3;
- (id)accessibilityElementAtIndex:(int64_t)a3;
- (id)accessibilityElementForRow:(unint64_t)a3 andColumn:(unint64_t)a4;
- (id)accessibilityLabel;
- (id)accessibilityTableViewCellAccessibilityElementForTableViewCell:(id)a3;
- (id)accessibilityTableViewCellElementAtGlobalRow:(int64_t)a3;
- (id)accessibilityTableViewSectionElementAtSection:(char)a3 isHeader:;
- (id)automationElements;
- (id)dequeueReusableCellWithIdentifier:(id)a3;
- (id)dequeueReusableCellWithIdentifier:(id)a3 forIndexPath:(id)a4;
- (id)dequeueReusableHeaderFooterViewWithIdentifier:(id)a3;
- (id)description;
- (id)indexPathsForRowsInRect:(CGRect)a3;
- (id)preferredFocusEnvironments;
- (id)preferredFocusedView;
- (int64_t)accessibilityContainerType;
- (int64_t)accessibilityElementCount;
- (int64_t)indexOfAccessibilityElement:(id)a3;
- (uint64_t)_accessibilityCheckForAlreadyExistingCellElementForCell:(void *)a3 inItems:;
- (uint64_t)_accessibilityDefaultTableViewCellScrollPosition;
- (uint64_t)_accessibilityHasAccessibleOrContainerSubview;
- (uint64_t)_accessibilityHasAccessibleOrContainerSubviewWithSubviewTree:(void *)a1;
- (uint64_t)_accessibilityIsSearchTableVisible;
- (uint64_t)_accessibilitySearchControllerDimmingViewVisible;
- (uint64_t)_accessibilitySearchTableViewVisible;
- (uint64_t)_accessibilitySetShouldConsiderSwipeDeletionCommitted:(uint64_t)result;
- (uint64_t)_accessibilityShouldConsiderSwipeDeletionCommitted;
- (uint64_t)_accessibilitySkipItemsInSectionList:(void *)a3 view:;
- (uint64_t)_accessibilitySwappedWithRowForInitialGlobalRow:(uint64_t)a3 oldGlobalRow:(uint64_t)a4 globalRow:;
- (uint64_t)_axNumberOfSections;
- (unint64_t)accessibilitySemanticGroupChildrentCount;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityClearChildren;
- (void)_accessibilityInitializeInternalData;
- (void)_accessibilityOpaqueElementScrollCleanup;
- (void)_axSetIndexGuide:(uint64_t)a1;
- (void)_axSetupIndexGuide;
- (void)_axUpdateSelectedBackgroundVisibilityForCell:(id)a3 visible:(BOOL)a4;
- (void)_cellDidHideSelectedBackground:(id)a3;
- (void)_cellDidShowSelectedBackground:(id)a3;
- (void)_didUpdateFocusInContext:(id)a3;
- (void)_endReorderingForCell:(id)a3 wasCancelled:(BOOL)a4 animated:(BOOL)a5;
- (void)_reorderPositionChangedForCell:(id)a3;
- (void)_reuseTableViewSubview:(id)a3 viewType:(int)a4;
- (void)_setAccessibilitySearchControllerDimmingViewHidden;
- (void)_setAccessibilitySearchControllerDimmingViewVisible;
- (void)_setAccessibilitySearchTableViewHidden;
- (void)_setAccessibilitySearchTableViewVisible;
- (void)_updateDropTargetAppearanceWithTargetIndexPath:(id)a3 dropProposal:(id)a4 dropSession:(id)a5;
- (void)accessibilityFindMockParentForTableViewCell:(void *)a1;
- (void)dealloc;
- (void)deleteRowsAtIndexPaths:(id)a3 withRowAnimation:(int64_t)a4;
- (void)deleteSections:(id)a3 withRowAnimation:(int64_t)a4;
- (void)insertRowsAtIndexPaths:(id)a3 withRowAnimation:(int64_t)a4;
- (void)insertSections:(id)a3 withRowAnimation:(int64_t)a4;
- (void)reloadData;
- (void)reloadRowsAtIndexPaths:(id)a3 withRowAnimation:(int64_t)a4;
- (void)reloadSections:(id)a3 withRowAnimation:(int64_t)a4;
- (void)setCountString:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setReusableCellsEnabled:(BOOL)a3;
- (void)setTableHeaderViewShouldAutoHide:(BOOL)a3;
@end

@implementation UITableViewAccessibility

- (id)_accessibilityUseOpaqueElements
{
  if (a1)
  {
    v2 = objc_getAssociatedObject(a1, &__UITableViewAccessibility___accessibilityUseOpaqueElements);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)_accessibilityShouldConsiderSwipeDeletionCommitted
{
  if (a1)
  {
    v2 = __UIAccessibilityGetAssociatedBool() & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)_accessibilitySetShouldConsiderSwipeDeletionCommitted:(uint64_t)result
{
  if (result)
  {
    return __UIAccessibilitySetAssociatedBool();
  }

  return result;
}

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v19 = location;
  v18 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = @"UITableView";
  v15 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v16 hasInstanceMethod:@"cellForRowAtIndexPath:" withFullSignature:{v15, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"dequeueReusableCellWithIdentifier:" withFullSignature:{v15, 0}];
  v10 = "q";
  [location[0] validateClass:v16 hasInstanceMethod:@"indexPathForRowAtGlobalRow:" withFullSignature:{v15, "q", 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"numberOfRowsInSection:" withFullSignature:{v10, 0}];
  v3 = "{CGRect={CGPoint=dd}{CGSize=dd}}";
  [location[0] validateClass:v16 hasInstanceMethod:@"rectForFooterInSection:" withFullSignature:{v10, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"rectForHeaderInSection:" withFullSignature:{v3, v10, 0}];
  v12 = "B";
  v17 = "v";
  [location[0] validateClass:v16 hasInstanceMethod:@"scrollToRowAtIndexPath: atScrollPosition: animated:" withFullSignature:{v15, v10, "B", 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"setCountString:" withFullSignature:{v17, v15, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_dataSourceImplementsTitleForFooterInSection" withFullSignature:{v12, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_delegateImplementsViewForFooterInSection" withFullSignature:{v12, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_delegateImplementsViewForHeaderInSection" withFullSignature:{v12, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_delegateWantsFooterForSection:" withFullSignature:{v12, v10, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_delegateWantsFooterTitleForSection:" withFullSignature:{v12, v10, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_delegateWantsHeaderForSection:" withFullSignature:{v12, v10, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_delegateWantsHeaderTitleForSection:" withFullSignature:{v12, v10, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_endReorderingForCell: wasCancelled: animated:" withFullSignature:{v17, v15, v12, v12, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_performAction: forCell: sender:" withFullSignature:{v17, ":", v15, v15, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_reorderingSupport" withFullSignature:{v15, 0}];
  v4 = "{_NSRange=QQ}";
  [location[0] validateClass:v16 hasInstanceMethod:@"_visibleGlobalRows" withFullSignature:0];
  [location[0] validateClass:v16 hasInstanceMethod:@"_hasSwipeToDeleteRow" withFullSignature:{v12, 0}];
  [location[0] validateClass:@"UISwipeActionPullView"];
  [location[0] validateClass:v16 hasInstanceMethod:@"_updateVisibleCellsImmediatelyIfNecessary" withFullSignature:{v17, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_floatingRectForHeaderInSection: heightCanBeGuessed:" withFullSignature:{v3, v10, v12, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_floatingRectForFooterInSection: heightCanBeGuessed:" withFullSignature:{v3, v10, v12, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_sectionsInRect:" withFullSignature:{v4, v3, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_sectionForHeaderView:" withFullSignature:{v10, v15, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_visibleHeaderFooterViews" withFullSignature:{v15, 0}];
  [location[0] validateClass:@"UISearchDisplayControllerContainerView" hasInstanceMethod:@"behindView" withFullSignature:{v15, 0}];
  v5 = "i";
  [location[0] validateClass:v16 hasInstanceMethod:@"_nibMapForType:" withFullSignature:{v15, "i", 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_createPreparedCellForRowAtIndexPath: willDisplay:" withFullSignature:{v15, v12, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_dragAndDropUsedForReordering" withFullSignature:{v12, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_reorderPositionChangedForCell:" withFullSignature:{v17, v15, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_delegateViewForFooterInSection:" withFullSignature:{v15, v10, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_delegateViewForHeaderInSection:" withFullSignature:{v15, v10, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_configureCellForDisplay: forIndexPath:" withFullSignature:{v17, v15, v15, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_reuseTableViewSubview: viewType:" withFullSignature:{v17, v15, v5, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_setupCell:forEditing:atIndexPath:animated:updateSeparators:" withFullSignature:{v17, v15, v12, v15, v12, v12, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_updateDropTargetAppearanceWithTargetIndexPath:dropProposal:dropSession:" withFullSignature:{v17, v15, v15, v15, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_gapIndexPath" withFullSignature:{v15, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_draggedIndexPath" withFullSignature:{v15, 0}];
  v13 = @"UIScrollView";
  [location[0] validateClass:v16 isKindOfClass:?];
  v6 = @"UILayoutContainerView";
  v9 = @"UIView";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"_UISplitViewControllerPanelImplView" isKindOfClass:v6];
  [location[0] validateClass:v13 hasInstanceMethod:@"contentSize" withFullSignature:{"{CGSize=dd}", 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"setContentOffset:" withFullSignature:{v17, "{CGPoint=dd}", 0}];
  [location[0] validateClass:@"UISwipeActionController" hasInstanceMethod:@"currentSwipeOccurrence" withFullSignature:{v15, 0}];
  v8 = @"UISwipeOccurrence";
  v7 = "Q";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v8 hasInstanceMethod:@"_pullViewForSwipeDirection:" withFullSignature:{v15, v7, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_swipeDeletionCommitted" withFullSignature:{v12, 0}];
  [location[0] validateClass:v9 hasInstanceMethod:@"_childFocusViews" withFullSignature:{v15, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"preferredFocusedView" withFullSignature:{v15, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"canBecomeFocused" withFullSignature:{v12, 0}];
  [location[0] validateClass:v16 isKindOfClass:v9];
  [location[0] validateClass:v9 hasInstanceMethod:@"_isFocusedOrAncestorOfFocusedView" withFullSignature:{v12, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_didUpdateFocusInContext:" withFullSignature:{v17, v15, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_numberOfSections" withFullSignature:{v10, 0}];
  v11 = @"UIResponder";
  [location[0] validateClass:v16 isKindOfClass:?];
  [location[0] validateClass:v11 hasInstanceMethod:@"canResignFirstResponder" withFullSignature:{v12, 0}];
  [location[0] validateClass:v11 hasInstanceMethod:@"becomeFirstResponder" withFullSignature:{v12, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"pressesBegan:withEvent:" withFullSignature:{v17, v15, v15, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"pressesEnded:withEvent:" withFullSignature:{v17, v15, v15, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"pressesCancelled:withEvent:" withFullSignature:{v17, v15, v15, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_shouldSelectionFollowFocusForIndexPath:initiatedBySelection:" withFullSignature:{v15, v12, 0}];
  v14 = "UIView<_UIScrollViewScrollIndicator>";
  [location[0] validateClass:v13 hasInstanceVariable:@"_verticalScrollIndicator" withType:?];
  [location[0] validateClass:v13 hasInstanceVariable:@"_horizontalScrollIndicator" withType:v14];
  [location[0] validateClass:v16 hasInstanceMethod:@"_cellDidShowSelectedBackground:" withFullSignature:{v17, v15, 0}];
  [location[0] validateClass:v16 hasInstanceMethod:@"_cellDidHideSelectedBackground:" withFullSignature:{v17, v15, 0}];
  objc_storeStrong(v19, v18);
}

- (id)indexPathsForRowsInRect:(CGRect)a3
{
  v8 = a3;
  v7 = self;
  v6 = a2;
  if ([(UITableViewAccessibility *)self _axNumberOfSections])
  {
    v5.receiver = v7;
    v5.super_class = UITableViewAccessibility;
    v9 = [(UITableViewAccessibility *)&v5 indexPathsForRowsInRect:v8.origin.x, v8.origin.y, v8.size.width, v8.size.height];
  }

  else
  {
    v9 = 0;
  }

  v3 = v9;

  return v3;
}

- (uint64_t)_axNumberOfSections
{
  v11 = *MEMORY[0x29EDCA608];
  v8 = a1;
  if (!a1)
  {
    return 0;
  }

  v7 = [v8 numberOfSections];
  v6 = v7;
  location = [v8 safeValueForKey:@"_numberOfSections"];
  if (location)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [location integerValue];
      if (v7 != v4)
      {
        oslog = AXLogAppAccessibility();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_0_2_8_0_8_0(v10, v7, v4);
          _os_log_impl(&dword_29C4D6000, oslog, OS_LOG_TYPE_INFO, "Number of sections from table view (%ld) and data source (%ld) differed while initializing accessibility data.", v10, 0x16u);
        }

        objc_storeStrong(&oslog, 0);
      }

      if (v7 >= v4)
      {
        v2 = v4;
      }

      else
      {
        v2 = v7;
      }

      v6 = v2;
    }
  }

  v9 = v6;
  objc_storeStrong(&location, 0);
  return v9;
}

- (BOOL)_accessibilityScrollToFrame:(CGRect)a3 forView:(id)a4
{
  *&v23 = a3.origin.x;
  *(&v23 + 1) = *&a3.origin.y;
  *&v24 = a3.size.width;
  *(&v24 + 1) = *&a3.size.height;
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  if (location[0])
  {
    UIEdgeInsetsMake();
    v17 = v4;
    v18 = v5;
    v19 = v6;
    v20 = v7;
    *&v15 = UIEdgeInsetsInsetRect_1(*&v23, *(&v23 + 1), *&v24, *(&v24 + 1), v4, v5);
    *(&v15 + 1) = v8;
    *&v16 = v9;
    *(&v16 + 1) = v10;
    v23 = v15;
    v24 = v16;
  }

  v14.receiver = v22;
  v14.super_class = UITableViewAccessibility;
  v13 = [(UITableViewAccessibility *)&v14 _accessibilityScrollToFrame:location[0] forView:v23, v24, location];
  objc_storeStrong(v12, 0);
  return v13;
}

- (BOOL)_accessibilityOpaqueElementScrollsContentIntoView
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITableViewAccessibility *)self _accessibilityValueForKey:@"AXTableViewOpaqueScrollsIntoViewKey"];
  if (location[0])
  {
    v4 = [location[0] BOOLValue] & 1;
  }

  else
  {
    v4 = 1;
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (BOOL)isAccessibilityOpaqueElementProvider
{
  v4 = [(UITableViewAccessibility *)self _accessibilityUseOpaqueElements];
  MEMORY[0x29EDC9740](v4);
  if (!v4)
  {
    return -[UITableViewAccessibility _automationPrefersRealElements](self) || ([*MEMORY[0x29EDC8008] _accessibilityWantsOpaqueElementProviders] & 1) != 0;
  }

  v3 = [(UITableViewAccessibility *)self _accessibilityUseOpaqueElements];
  v6 = [v3 BOOLValue] & 1;
  MEMORY[0x29EDC9740](v3);
  return v6;
}

- (BOOL)_automationPrefersRealElements
{
  if (a1)
  {
    if (AXDoesRequestingClientDeserveAutomation())
    {
      if ([a1 _accessibilityFauxTableViewCellsDisabled])
      {
        return 1;
      }

      else
      {
        return !_AXSAutomationFauxTableViewCellsEnabled() || (UIAccessibilityIsAppExtension() & 1) != 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

- (id)_axOpaqueHeaderElementInDirection:(id)obj withinElements:(uint64_t)a4 startIndex:
{
  v30 = *MEMORY[0x29EDCA608];
  v27 = a1;
  v26 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v24 = a4;
  if (v27)
  {
    v22 = 0;
    v21 = MEMORY[0x29ED3E4C0](&__block_literal_global_40);
    if (v26 == 1)
    {
      v20 = [location count];
      for (i = v24 + 1; i < v20; ++i)
      {
        v14 = [location objectAtIndexedSubscript:i];
        v15 = (*(v21 + 2))();
        *&v4 = MEMORY[0x29EDC9740](v14).n128_u64[0];
        if (v15)
        {
          v5 = [location objectAtIndexedSubscript:{i, v4}];
          v6 = v22;
          v22 = v5;
          MEMORY[0x29EDC9740](v6);
          break;
        }
      }
    }

    else
    {
      for (j = v24 - 1; (j & 0x8000000000000000) == 0; --j)
      {
        v12 = [location objectAtIndexedSubscript:j];
        v13 = (*(v21 + 2))();
        *&v7 = MEMORY[0x29EDC9740](v12).n128_u64[0];
        if (v13)
        {
          v8 = [location objectAtIndexedSubscript:{j, v7}];
          v9 = v22;
          v22 = v8;
          MEMORY[0x29EDC9740](v9);
          break;
        }
      }
    }

    oslog = AXLogElementTraversal();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v29, v22);
      _os_log_debug_impl(&dword_29C4D6000, oslog, OS_LOG_TYPE_DEBUG, "got me opaque header: %@", v29, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v28 = MEMORY[0x29EDC9748](v22);
    v23 = 1;
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
  }

  else
  {
    v28 = 0;
    v23 = 1;
  }

  objc_storeStrong(&location, 0);
  v10 = v28;

  return v10;
}

uint64_t __88__UITableViewAccessibility__axOpaqueHeaderElementInDirection_withinElements_startIndex___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  IsHeaderInSearchContexts = _UIAXElementIsHeaderInSearchContexts(location[0]);
  objc_storeStrong(location, 0);
  return IsHeaderInSearchContexts;
}

- (id)_axFirstLastOpaqueHeaderElementFromSection:(int64_t)a3 options:(id)a4 direction:(int64_t)a5
{
  v80 = *MEMORY[0x29EDCA608];
  v76 = self;
  v75 = a2;
  v74 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v72 = a5;
  v65 = 0;
  v66 = &v65;
  v67 = 838860800;
  v68 = 48;
  v69 = __Block_byref_object_copy__22;
  v70 = __Block_byref_object_dispose__22;
  v71 = 0;
  v64 = MEMORY[0x29EDC9748](v76);
  [v64 rectForHeaderInSection:v74];
  rect.origin.x = v5;
  rect.origin.y = v6;
  rect.size.width = v7;
  rect.size.height = v8;
  oslog = AXLogOpaqueElements();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    v32 = v74;
    v31 = NSStringFromCGRect(rect);
    v60 = MEMORY[0x29EDC9748](v31);
    __os_log_helper_16_2_2_8_0_8_66(v79, v32, v60);
    _os_log_debug_impl(&dword_29C4D6000, oslog, type, "Rect for header in section %ld: %{public}@", v79, 0x16u);
    MEMORY[0x29EDC9740](v31);
    objc_storeStrong(&v60, 0);
  }

  objc_storeStrong(&oslog, 0);
  if (!CGRectIsEmpty(rect))
  {
    [v64 scrollRectToVisible:0 animated:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
    [v64 layoutIfNeeded];
    v59 = 0;
    v57 = 0;
    objc_opt_class();
    v30 = [(UITableViewAccessibility *)v76 safeValueForKey:@"_visibleHeaderFooterViews"];
    v56 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v30);
    v55 = MEMORY[0x29EDC9748](v56);
    objc_storeStrong(&v56, 0);
    v58 = v55;
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v55);
    v29 = [obj countByEnumeratingWithState:__b objects:v78 count:16];
    if (v29)
    {
      v25 = *__b[2];
      v26 = 0;
      v27 = v29;
      while (1)
      {
        v24 = v26;
        if (*__b[2] != v25)
        {
          objc_enumerationMutation(obj);
        }

        v54 = *(__b[1] + 8 * v26);
        v48 = 0;
        v49 = &v48;
        v50 = 0x20000000;
        v51 = 32;
        v52 = 0;
        v41 = MEMORY[0x29EDCA5F8];
        v42 = -1073741824;
        v43 = 0;
        v44 = __89__UITableViewAccessibility__axFirstLastOpaqueHeaderElementFromSection_options_direction___block_invoke;
        v45 = &unk_29F30C860;
        v47[1] = &v48;
        v46 = MEMORY[0x29EDC9748](v64);
        v47[0] = MEMORY[0x29EDC9748](v54);
        AXPerformSafeBlock();
        v40 = v49[3];
        objc_storeStrong(v47, 0);
        objc_storeStrong(&v46, 0);
        _Block_object_dispose(&v48, 8);
        if (v40 == v74)
        {
          break;
        }

        ++v26;
        if (v24 + 1 >= v27)
        {
          v26 = 0;
          v27 = [obj countByEnumeratingWithState:__b objects:v78 count:16];
          if (!v27)
          {
            goto LABEL_12;
          }
        }
      }

      objc_storeStrong(&v59, v54);
      v39 = 2;
    }

    else
    {
LABEL_12:
      v39 = 0;
    }

    MEMORY[0x29EDC9740](obj);
    v38 = AXLogOpaqueElements();
    v37 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v9 = @"Previous";
      if (v72 != 2)
      {
        v9 = @"Next";
      }

      v22 = v9;
      v23 = v74;
      v21 = [v59 recursiveDescription];
      v36 = MEMORY[0x29EDC9748](v21);
      __os_log_helper_16_2_3_8_66_8_0_8_66(v77, v22, v23, v36);
      _os_log_debug_impl(&dword_29C4D6000, v38, v37, "%{public}@ header view at section %ld: %{public}@", v77, 0x20u);
      MEMORY[0x29EDC9740](v21);
      objc_storeStrong(&v36, 0);
    }

    objc_storeStrong(&v38, 0);
    v35 = 0;
    if (v59)
    {
      v10 = [v59 _accessibilityLeafDescendantsWithOptions:location];
      v11 = v35;
      v35 = v10;
      *&v12 = MEMORY[0x29EDC9740](v11).n128_u64[0];
    }

    else if ([v64 numberOfRowsInSection:v74] > 0)
    {
      v20 = v64;
      v19 = [MEMORY[0x29EDB9FE0] indexPathForRow:0 inSection:v74];
      v34 = [v20 cellForRowAtIndexPath:?];
      *&v13 = MEMORY[0x29EDC9740](v19).n128_u64[0];
      v14 = [v34 _accessibilityLeafDescendantsWithOptions:{location, v13}];
      v15 = v35;
      v35 = v14;
      MEMORY[0x29EDC9740](v15);
      objc_storeStrong(&v34, 0);
    }

    if (v72 == 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }

    [v35 enumerateObjectsWithOptions:v16 usingBlock:v12];
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v58, 0);
    objc_storeStrong(&v59, 0);
  }

  v18 = MEMORY[0x29EDC9748](v66[5]);
  v39 = 1;
  objc_storeStrong(&v64, 0);
  _Block_object_dispose(&v65, 8);
  objc_storeStrong(&v71, 0);
  objc_storeStrong(&location, 0);

  return v18;
}

uint64_t __89__UITableViewAccessibility__axFirstLastOpaqueHeaderElementFromSection_options_direction___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _sectionForHeaderView:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void __89__UITableViewAccessibility__axFirstLastOpaqueHeaderElementFromSection_options_direction___block_invoke_575(NSObject *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = *MEMORY[0x29EDCA608];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = a3;
  v9 = a4;
  oslog[1] = a1;
  if (_UIAXElementIsHeaderInSearchContexts(location[0]))
  {
    oslog[0] = AXLogOpaqueElements();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
    {
      if (a1[5].isa == 2)
      {
        v4 = @"previous";
      }

      else
      {
        v4 = @"next";
      }

      __os_log_helper_16_2_2_8_66_8_66(v12, v4, location[0]);
      _os_log_debug_impl(&dword_29C4D6000, oslog[0], OS_LOG_TYPE_DEBUG, "Found %{public}@ header element %{public}@", v12, 0x16u);
    }

    objc_storeStrong(oslog, 0);
    objc_storeStrong((*(a1[4].isa + 1) + 40), location[0]);
    *v9 = 1;
  }

  objc_storeStrong(location, 0);
}

- (id)_axFirstLastOpaqueHeaderElementInDirection:(id)obj options:
{
  v31 = *MEMORY[0x29EDCA608];
  v27 = a1;
  v26 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (v27)
  {
    v23 = 0;
    v22 = MEMORY[0x29EDC9748](v27);
    v21 = [(UITableViewAccessibility *)v27 _axNumberOfSections];
    [v22 contentOffset];
    *&v20 = v3;
    *(&v20 + 1) = v4;
    if (v26 == 1)
    {
      for (i = 0; i < v21; ++i)
      {
        v5 = [v27 _axFirstLastOpaqueHeaderElementFromSection:i options:location direction:v26];
        v6 = v23;
        v23 = v5;
        MEMORY[0x29EDC9740](v6);
        if (v23)
        {
          break;
        }
      }
    }

    else
    {
      for (j = v21 - 1; (j & 0x8000000000000000) == 0; --j)
      {
        v7 = [v27 _axFirstLastOpaqueHeaderElementFromSection:j options:location direction:v26];
        v8 = v23;
        v23 = v7;
        MEMORY[0x29EDC9740](v8);
        if (v23)
        {
          break;
        }
      }
    }

    if (!v23)
    {
      oslog = AXLogOpaqueElements();
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_66(v30, v27);
        _os_log_debug_impl(&dword_29C4D6000, oslog, type, "No headers found in %{public}@.", v30, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v15 = v20;
      v14 = v20;
      [v22 setContentOffset:v20];
      v9 = [MEMORY[0x29EDB8E28] null];
      v10 = v23;
      v23 = v9;
      MEMORY[0x29EDC9740](v10);
    }

    v13 = AXLogElementTraversal();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v29, v23);
      _os_log_debug_impl(&dword_29C4D6000, v13, OS_LOG_TYPE_DEBUG, "First/Last opaque header, %@", v29, 0xCu);
    }

    objc_storeStrong(&v13, 0);
    v28 = MEMORY[0x29EDC9748](v23);
    v24 = 1;
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
  }

  else
  {
    v28 = 0;
    v24 = 1;
  }

  objc_storeStrong(&location, 0);
  v11 = v28;

  return v11;
}

- (id)_axOffScreenOpaqueHeaderElementInDirection:(id)obj options:(void *)a4 childElement:
{
  v101 = *MEMORY[0x29EDCA608];
  v95 = a1;
  v94 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v92 = 0;
  objc_storeStrong(&v92, a4);
  if (v95)
  {
    v90 = 0;
    v89 = MEMORY[0x29EDC9748](v95);
    [v89 contentOffset];
    *&v33 = v4;
    *(&v33 + 1) = v5;
    v88 = v33;
    [v89 visibleBounds];
    *&v31 = v6;
    *(&v31 + 1) = v7;
    *&v32 = v8;
    *(&v32 + 1) = v9;
    v86 = v31;
    v87 = v32;
    v84 = 0u;
    v85 = 0u;
    v83 = 0;
    objc_opt_class();
    v82 = __UIAccessibilityCastAsClass();
    v81 = MEMORY[0x29EDC9748](v82);
    objc_storeStrong(&v82, 0);
    [v81 frame];
    *&v29 = v10;
    *(&v29 + 1) = v11;
    *&v30 = v12;
    *(&v30 + 1) = v13;
    v84 = v29;
    v85 = v30;
    MEMORY[0x29EDC9740](v81);
    range = 0uLL;
    v73 = 0;
    v74 = &v73;
    v75 = 0x10000000;
    v76 = 48;
    v77 = &unk_29C6A1FE6;
    v78 = 0;
    v79 = 0;
    oslog[3] = MEMORY[0x29EDCA5F8];
    v66 = -1073741824;
    v67 = 0;
    v68 = __92__UITableViewAccessibility__axOffScreenOpaqueHeaderElementInDirection_options_childElement___block_invoke;
    v69 = &unk_29F30DBF0;
    v70[1] = &v73;
    v70[0] = MEMORY[0x29EDC9748](v89);
    v71 = v86;
    v72 = v87;
    AXPerformSafeBlock();
    range = *(v74 + 2);
    objc_storeStrong(v70, 0);
    _Block_object_dispose(&v73, 8);
    oslog[0] = AXLogOpaqueElements();
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
    {
      v28 = NSStringFromRange(range);
      v63 = MEMORY[0x29EDC9748](v28);
      __os_log_helper_16_2_1_8_66(v100, v63);
      _os_log_debug_impl(&dword_29C4D6000, oslog[0], type, "Visible sections: %{public}@", v100, 0xCu);
      MEMORY[0x29EDC9740](v28);
      objc_storeStrong(&v63, 0);
    }

    objc_storeStrong(oslog, 0);
    v62 = 0x7FFFFFFFFFFFFFFFLL;
    for (i = range; ; ++i)
    {
      v98 = range;
      if (i >= range + *(&range + 1))
      {
        break;
      }

      v53 = 0;
      v54 = &v53;
      v55 = 838860800;
      v56 = 48;
      v57 = __Block_byref_object_copy__22;
      v58 = __Block_byref_object_dispose__22;
      v59 = 0;
      v47 = MEMORY[0x29EDCA5F8];
      v48 = -1073741824;
      v49 = 0;
      v50 = __92__UITableViewAccessibility__axOffScreenOpaqueHeaderElementInDirection_options_childElement___block_invoke_586;
      v51 = &unk_29F30CFE8;
      v52[1] = &v53;
      v52[0] = MEMORY[0x29EDC9748](v95);
      v52[2] = i;
      AXPerformSafeBlock();
      v46 = MEMORY[0x29EDC9748](v54[5]);
      objc_storeStrong(v52, 0);
      _Block_object_dispose(&v53, 8);
      objc_storeStrong(&v59, 0);
      v60 = v46;
      if (v46 == v92)
      {
        v62 = i;
        v91 = 2;
      }

      else
      {
        v91 = 0;
      }

      objc_storeStrong(&v60, 0);
      if (v91)
      {
        break;
      }
    }

    if (v94 == 1)
    {
      v97 = range;
      v45 = range + *(&range + 1);
      v44 = [(UITableViewAccessibility *)v95 _axNumberOfSections];
      for (j = v45; j < v44; ++j)
      {
        v14 = [v95 _axFirstLastOpaqueHeaderElementFromSection:j options:location direction:v94];
        v15 = v90;
        v90 = v14;
        MEMORY[0x29EDC9740](v15);
        if (v90)
        {
          if (v62 != j)
          {
            break;
          }
        }
      }
    }

    else
    {
      v42 = range;
      for (k = range; ; --k)
      {
        v16 = [v95 _axFirstLastOpaqueHeaderElementFromSection:k options:location direction:v94];
        v17 = v90;
        v90 = v16;
        MEMORY[0x29EDC9740](v17);
        if (v90)
        {
          if (v62 != k)
          {
            break;
          }
        }

        if (!k)
        {
          break;
        }
      }
    }

    v39 = 0u;
    v40 = 0u;
    v38 = 0;
    objc_opt_class();
    v37 = __UIAccessibilityCastAsClass();
    v36 = MEMORY[0x29EDC9748](v37);
    objc_storeStrong(&v37, 0);
    [v36 frame];
    *&v26 = v18;
    *(&v26 + 1) = v19;
    *&v27 = v20;
    *(&v27 + 1) = v21;
    v39 = v26;
    v40 = v27;
    MEMORY[0x29EDC9740](v36);
    if (!v90 || (CGRectNearlyEqualToRect() & 1) != 0)
    {
      v35 = AXLogOpaqueElements();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_66(v99, v92);
        _os_log_debug_impl(&dword_29C4D6000, v35, OS_LOG_TYPE_DEBUG, "No headers found after %{public}@.", v99, 0xCu);
      }

      objc_storeStrong(&v35, 0);
      [v89 setContentOffset:v88];
      v22 = [MEMORY[0x29EDB8E28] null];
      v23 = v90;
      v90 = v22;
      MEMORY[0x29EDC9740](v23);
    }

    v96 = MEMORY[0x29EDC9748](v90);
    v91 = 1;
    objc_storeStrong(&v89, 0);
    objc_storeStrong(&v90, 0);
  }

  else
  {
    v96 = 0;
    v91 = 1;
  }

  objc_storeStrong(&v92, 0);
  objc_storeStrong(&location, 0);
  v24 = v96;

  return v24;
}

__n128 __92__UITableViewAccessibility__axOffScreenOpaqueHeaderElementInDirection_options_childElement___block_invoke(uint64_t a1)
{
  v4.n128_u64[0] = [*(a1 + 32) _sectionsInRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v4.n128_u64[1] = v1;
  result = v4;
  *(*(*(a1 + 40) + 8) + 32) = v4;
  return result;
}

double __92__UITableViewAccessibility__axOffScreenOpaqueHeaderElementInDirection_options_childElement___block_invoke_586(uint64_t a1)
{
  v1 = [*(a1 + 32) _visibleHeaderViewForSection:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (id)_accessibilityOpaqueHeaderElementInDirection:(int64_t)a3 childElement:(id)a4
{
  v46 = *MEMORY[0x29EDCA608];
  v42 = self;
  v41 = a2;
  v40 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v38 = 0;
  v37 = [MEMORY[0x29EDC7328] options];
  if (location)
  {
    v36 = [(UITableViewAccessibility *)v42 _accessibilitySortedElementsWithinWithOptions:v37];
    v35 = [MEMORY[0x29EDB8DE8] array];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v36);
    v23 = [obj countByEnumeratingWithState:__b objects:v45 count:16];
    if (v23)
    {
      v19 = *__b[2];
      v20 = 0;
      v21 = v23;
      while (1)
      {
        v18 = v20;
        if (*__b[2] != v19)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(__b[1] + 8 * v20);
        v16 = v35;
        v17 = [v34 _accessibilityLeafDescendantsWithOptions:v37];
        [v16 addObjectsFromArray:?];
        *&v6 = MEMORY[0x29EDC9740](v17).n128_u64[0];
        ++v20;
        if (v18 + 1 >= v21)
        {
          v20 = 0;
          v21 = [obj countByEnumeratingWithState:__b objects:v45 count:{16, v6}];
          if (!v21)
          {
            break;
          }
        }
      }
    }

    v32 = [location _accessibilityLeafDescendantsWithOptions:{v37, MEMORY[0x29EDC9740](obj).n128_f64[0]}];
    v29 = 0;
    v27 = 0;
    if (v40 == 1)
    {
      v14 = v35;
      v30 = [v32 lastObject];
      v29 = 1;
      v15 = [v14 indexOfObject:?];
    }

    else
    {
      v13 = v35;
      v28 = [v32 firstObject];
      v27 = 1;
      v15 = [v13 indexOfObject:?];
    }

    if (v27)
    {
      MEMORY[0x29EDC9740](v28);
    }

    if (v29)
    {
      MEMORY[0x29EDC9740](v30);
    }

    v31 = v15;
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      _AXAssert();
    }

    if (v31 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = AXLogOpaqueElements();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_66_8_66(v43, location, v35);
        _os_log_debug_impl(&dword_29C4D6000, v24, OS_LOG_TYPE_DEBUG, "Could not find child element %{public}@ in table view elements %{public}@. Falling through to existing search code.", v43, 0x16u);
      }

      objc_storeStrong(&v24, 0);
    }

    else
    {
      v7 = [(UITableViewAccessibility *)v42 _axOpaqueHeaderElementInDirection:v40 withinElements:v35 startIndex:v31];
      v8 = v38;
      v38 = v7;
      MEMORY[0x29EDC9740](v8);
      oslog = AXLogOpaqueElements();
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_66(v44, v38);
        _os_log_debug_impl(&dword_29C4D6000, oslog, type, "Header from existing sorted elements within: %{public}@", v44, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      if (!v38)
      {
        v9 = [(UITableViewAccessibility *)v42 _axOffScreenOpaqueHeaderElementInDirection:v40 options:v37 childElement:location];
        v10 = v38;
        v38 = v9;
        MEMORY[0x29EDC9740](v10);
      }
    }

    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
  }

  else
  {
    v4 = [(UITableViewAccessibility *)v42 _axFirstLastOpaqueHeaderElementInDirection:v40 options:v37];
    v5 = v38;
    v38 = v4;
    MEMORY[0x29EDC9740](v5);
  }

  v12 = MEMORY[0x29EDC9748](v38);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&location, 0);

  return v12;
}

- (id)_accessibilitySupplementaryHeaderViews
{
  v14 = self;
  v13[1] = a2;
  v13[0] = [MEMORY[0x29EDB8DE8] array];
  v12 = [(UITableViewAccessibility *)v14 _accessibilityHeaderElement];
  if ([v12 isAccessibilityElement])
  {
    [v13[0] addObject:v12];
  }

  else
  {
    v9 = 0;
    v7 = 0;
    if ([v12 _accessibilityHasOrderedChildren])
    {
      v10 = [v12 _accessibilityElements];
      v9 = 1;
      v2 = MEMORY[0x29EDC9748](v10);
    }

    else
    {
      v8 = [v12 _accessibilitySubviews];
      v7 = 1;
      v2 = MEMORY[0x29EDC9748](v8);
    }

    location = v2;
    if (v7)
    {
      MEMORY[0x29EDC9740](v8);
    }

    if (v9)
    {
      MEMORY[0x29EDC9740](v10);
    }

    if ([location count])
    {
      [v13[0] addObjectsFromArray:location];
    }

    objc_storeStrong(&location, 0);
  }

  v6 = [(UITableViewAccessibility *)v14 safeValueForKey:@"_index"];
  if ([v6 _accessibilityViewIsVisible])
  {
    [v13[0] axSafelyAddObject:v6];
  }

  if (([(UITableViewAccessibility *)v14 _accessibilityIsSearchTableVisible]& 1) != 0)
  {
    v5 = [(UITableViewAccessibility *)v14 _accessibilitySearchResultsTableView];
    if (v5)
    {
      [v13[0] addObject:v5];
    }

    objc_storeStrong(&v5, 0);
  }

  v4 = MEMORY[0x29EDC9748](v13[0]);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v13, 0);

  return v4;
}

- (uint64_t)_accessibilityIsSearchTableVisible
{
  if (a1)
  {
    NSClassFromString(&cfstr_Uisearchresult.isa);
    v3 = 0;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v2 = 1;
      if (([(UITableViewAccessibility *)a1 _accessibilitySearchTableViewVisible]& 1) == 0)
      {
        v2 = [(UITableViewAccessibility *)a1 _accessibilitySearchControllerDimmingViewVisible];
      }

      v3 = v2;
    }

    v5 = v3 & 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (id)_accessibilitySearchResultsTableView
{
  v8 = a1;
  if (a1)
  {
    location = [v8 safeValueForKey:@"subviews"];
    v6 = [location indexOfObjectPassingTest:&__block_literal_global_685];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v5 = [location objectAtIndex:v6];
      v4 = [v5 safeValueForKey:@"behindView"];
      v3 = [v4 subviews];
      v9 = [v3 lastObject];
      MEMORY[0x29EDC9740](v3);
      MEMORY[0x29EDC9740](v4);
      MEMORY[0x29EDC9740](v5);
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    v9 = 0;
  }

  v1 = v9;

  return v1;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v9 = self;
  v8[1] = a2;
  v8[0] = [MEMORY[0x29EDB8DE8] array];
  v7 = [(UITableViewAccessibility *)v9 _accessibilityFooterElement];
  if ([v7 isAccessibilityElement])
  {
    [v8[0] addObject:v7];
  }

  else
  {
    location = [v7 _accessibilitySubviews];
    if ([location count])
    {
      [v8[0] addObjectsFromArray:location];
    }

    objc_storeStrong(&location, 0);
  }

  v5 = [(UITableViewAccessibility *)v9 safeValueForKey:@"_verticalScrollIndicator"];
  if ([v5 isAccessibilityElement])
  {
    [v8[0] addObject:v5];
  }

  v4 = [(UITableViewAccessibility *)v9 safeValueForKey:@"_horizontalScrollIndicator"];
  if ([v4 isAccessibilityElement])
  {
    [v8[0] addObject:v4];
  }

  v3 = MEMORY[0x29EDC9748](v8[0]);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);

  return v3;
}

- (void)insertSections:(id)a3 withRowAnimation:(int64_t)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = a4;
  v5.receiver = v8;
  v5.super_class = UITableViewAccessibility;
  [(UITableViewAccessibility *)&v5 insertSections:location[0] withRowAnimation:a4];
  if ([location[0] count])
  {
    [(UITableViewAccessibility *)v8 _accessibilityClearChildren];
  }

  objc_storeStrong(location, 0);
}

- (void)deleteSections:(id)a3 withRowAnimation:(int64_t)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = a4;
  v5.receiver = v8;
  v5.super_class = UITableViewAccessibility;
  [(UITableViewAccessibility *)&v5 deleteSections:location[0] withRowAnimation:a4];
  if ([location[0] count])
  {
    [(UITableViewAccessibility *)v8 _accessibilityClearChildren];
  }

  objc_storeStrong(location, 0);
}

- (void)reloadSections:(id)a3 withRowAnimation:(int64_t)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = a4;
  v5.receiver = v8;
  v5.super_class = UITableViewAccessibility;
  [(UITableViewAccessibility *)&v5 reloadSections:location[0] withRowAnimation:a4];
  if ([location[0] count])
  {
    [(UITableViewAccessibility *)v8 _accessibilityClearChildren];
  }

  objc_storeStrong(location, 0);
}

- (void)insertRowsAtIndexPaths:(id)a3 withRowAnimation:(int64_t)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = a4;
  v5.receiver = v8;
  v5.super_class = UITableViewAccessibility;
  [(UITableViewAccessibility *)&v5 insertRowsAtIndexPaths:location[0] withRowAnimation:a4];
  if ([location[0] count])
  {
    [(UITableViewAccessibility *)v8 _accessibilityClearChildren];
  }

  objc_storeStrong(location, 0);
}

- (void)deleteRowsAtIndexPaths:(id)a3 withRowAnimation:(int64_t)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = a4;
  v5.receiver = v8;
  v5.super_class = UITableViewAccessibility;
  [(UITableViewAccessibility *)&v5 deleteRowsAtIndexPaths:location[0] withRowAnimation:a4];
  if ([location[0] count])
  {
    [(UITableViewAccessibility *)v8 _accessibilityClearChildren];
  }

  objc_storeStrong(location, 0);
}

- (void)reloadRowsAtIndexPaths:(id)a3 withRowAnimation:(int64_t)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = a4;
  v5.receiver = v8;
  v5.super_class = UITableViewAccessibility;
  [(UITableViewAccessibility *)&v5 reloadRowsAtIndexPaths:location[0] withRowAnimation:a4];
  [location[0] count];
  objc_storeStrong(location, 0);
}

- (void)reloadData
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UITableViewAccessibility;
  [(UITableViewAccessibility *)&v3 reloadData];
  location = [(UITableViewAccessibility *)v5 _accessibilityValueForKey:@"AXInternalData"];
  if (location)
  {
    [(UITableViewAccessibility *)v5 _accessibilityClearChildren];
  }

  objc_storeStrong(&location, 0);
}

- (void)setReusableCellsEnabled:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3 = [(UITableViewAccessibility *)self _accessibilityValueForKey:@"AXInternalData"];
  [(_AXTableViewInternal *)v3 setReusableCellsEnabled:v4];
  objc_storeStrong(&v3, 0);
}

- (void)setTableHeaderViewShouldAutoHide:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v3.receiver = v7;
    v3.super_class = UITableViewAccessibility;
    [(UITableViewAccessibility *)&v3 setTableHeaderViewShouldAutoHide:0];
  }

  else
  {
    v4.receiver = v7;
    v4.super_class = UITableViewAccessibility;
    [(UITableViewAccessibility *)&v4 setTableHeaderViewShouldAutoHide:v5];
  }
}

- (id)_axAttemptStoryboard:(int)a3 viewType:
{
  v39 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v37 = a3;
  if (v39)
  {
    v35 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 838860800;
    v30 = 48;
    v31 = __Block_byref_object_copy__22;
    v32 = __Block_byref_object_dispose__22;
    v33 = 0;
    v19 = MEMORY[0x29EDCA5F8];
    v20 = -1073741824;
    v21 = 0;
    v22 = __58__UITableViewAccessibility__axAttemptStoryboard_viewType___block_invoke;
    v23 = &unk_29F30DC18;
    v25[1] = &v27;
    v24 = MEMORY[0x29EDC9748](v39);
    v26 = v37;
    v25[0] = MEMORY[0x29EDC9748](location);
    AXPerformSafeBlock();
    v18 = MEMORY[0x29EDC9748](v28[5]);
    objc_storeStrong(v25, 0);
    objc_storeStrong(&v24, 0);
    _Block_object_dispose(&v27, 8);
    objc_storeStrong(&v33, 0);
    v34 = v18;
    if (v18)
    {
      v9 = [v39 safeValueForKey:@"_nibExternalObjectsTables"];
      v17 = [v9 objectForKey:location];
      *&v3 = MEMORY[0x29EDC9740](v9).n128_u64[0];
      v14 = 0;
      if (v17)
      {
        v15 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:v17 forKey:{*MEMORY[0x29EDC81F8], v3}];
        v14 = 1;
        v4 = MEMORY[0x29EDC9748](v15);
      }

      else
      {
        v4 = MEMORY[0x29EDC9748](0);
      }

      v16 = v4;
      if (v14)
      {
        MEMORY[0x29EDC9740](v15);
      }

      v13 = [v34 instantiateWithOwner:0 options:v16];
      if ([v13 count] == 1)
      {
        v5 = [v13 objectAtIndex:0];
        v6 = v35;
        v35 = v5;
        MEMORY[0x29EDC9740](v6);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v11 = MEMORY[0x29EDC9748](v35);
        v12 = MEMORY[0x29EDC9748](location);
        AXPerformSafeBlock();
        objc_storeStrong(&v12, 0);
        objc_storeStrong(&v11, 0);
      }

      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
    }

    v40 = MEMORY[0x29EDC9748](v35);
    v36 = 1;
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
  }

  else
  {
    v40 = 0;
    v36 = 1;
  }

  objc_storeStrong(&location, 0);
  v7 = v40;

  return v7;
}

double __58__UITableViewAccessibility__axAttemptStoryboard_viewType___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _nibMapForType:*(a1 + 56)];
  v1 = [v6 valueForKey:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  MEMORY[0x29EDC9740](v3);
  *&result = MEMORY[0x29EDC9740](v6).n128_u64[0];
  return result;
}

- (id)_axAttemptCreationOfViewType:(id)obj identifier:
{
  v24 = a1;
  v23 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (v24)
  {
    v20 = [(UITableViewAccessibility *)v24 _axAttemptStoryboard:v23 viewType:?];
    if (!v20)
    {
      v15 = 0;
      v16 = &v15;
      v17 = 1342177280;
      v18 = 32;
      v19 = 0;
      v13[1] = &v15;
      v12 = MEMORY[0x29EDC9748](v24);
      v14 = v23;
      v13[0] = MEMORY[0x29EDC9748](location);
      AXPerformSafeBlock();
      if (v23 == 1)
      {
        v11 = objc_alloc(v16[3]);
        v10 = [v11 initWithStyle:0 reuseIdentifier:location];
        v3 = v20;
        v20 = v10;
        *&v4 = MEMORY[0x29EDC9740](v3).n128_u64[0];
        [v20 setReuseIdentifier:{location, v4}];
      }

      else
      {
        v9 = objc_alloc(v16[3]);
        v8 = [v9 initWithReuseIdentifier:location];
        v5 = v20;
        v20 = v8;
        MEMORY[0x29EDC9740](v5);
      }

      objc_storeStrong(v13, 0);
      objc_storeStrong(&v12, 0);
      _Block_object_dispose(&v15, 8);
    }

    v25 = MEMORY[0x29EDC9748](v20);
    v21 = 1;
    objc_storeStrong(&v20, 0);
  }

  else
  {
    v25 = 0;
    v21 = 1;
  }

  objc_storeStrong(&location, 0);
  v6 = v25;

  return v6;
}

double __68__UITableViewAccessibility__axAttemptCreationOfViewType_identifier___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _classMapForType:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = [v3 valueForKey:*(a1 + 40)];
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (unint64_t)accessibilitySemanticGroupChildrentCount
{
  v9[2] = self;
  v9[1] = a2;
  v8 = 0;
  objc_opt_class();
  v7 = __UIAccessibilityCastAsClass();
  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  v9[0] = v6;
  v5 = [v6 numberOfSections];
  v4 = 0;
  for (i = 0; i < v5; ++i)
  {
    v4 += [v9[0] numberOfRowsInSection:i];
  }

  objc_storeStrong(v9, 0);
  return v4;
}

- (BOOL)_accessibilityShouldDisableCellReuse
{
  if (a1)
  {
    if ([(UITableViewAccessibility *)a1 _automationPrefersRealElements])
    {
      return 0;
    }

    else
    {
      v2 = 0;
      if (([a1 isAccessibilityOpaqueElementProvider] & 1) == 0)
      {
        return UIAccessibilityIsVoiceOverRunning();
      }

      return v2;
    }
  }

  else
  {
    return 0;
  }
}

- (id)dequeueReusableCellWithIdentifier:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(UITableViewAccessibility *)v9 _accessibilityShouldDisableCellReuse])
  {
    v7 = [(UITableViewAccessibility *)v9 _axAttemptStoryboard:1 viewType:?];
    if (!v7)
    {
      v7 = [(UITableViewAccessibility *)v9 _axAttemptCreationOfViewType:location[0] identifier:?];
      MEMORY[0x29EDC9740](0);
    }

    v10 = MEMORY[0x29EDC9748](v7);
    v6 = 1;
    objc_storeStrong(&v7, 0);
  }

  else
  {
    v5.receiver = v9;
    v5.super_class = UITableViewAccessibility;
    v10 = [(UITableViewAccessibility *)&v5 dequeueReusableCellWithIdentifier:location[0]];
    v6 = 1;
  }

  objc_storeStrong(location, 0);
  v3 = v10;

  return v3;
}

- (id)dequeueReusableCellWithIdentifier:(id)a3 forIndexPath:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  if ([(UITableViewAccessibility *)v20 _accessibilityShouldDisableCellReuse])
  {
    v17 = [(UITableViewAccessibility *)v20 _axAttemptCreationOfViewType:location[0] identifier:?];
    if (v17)
    {
      v9 = MEMORY[0x29EDCA5F8];
      v10 = -1073741824;
      v11 = 0;
      v12 = __75__UITableViewAccessibility_dequeueReusableCellWithIdentifier_forIndexPath___block_invoke;
      v13 = &unk_29F30CCC0;
      v14 = MEMORY[0x29EDC9748](v20);
      v15 = MEMORY[0x29EDC9748](v17);
      v16 = MEMORY[0x29EDC9748](v18);
      AXPerformSafeBlock();
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v14, 0);
    }

    v21 = MEMORY[0x29EDC9748](v17);
    v8 = 1;
    objc_storeStrong(&v17, 0);
  }

  else
  {
    v7.receiver = v20;
    v7.super_class = UITableViewAccessibility;
    v21 = [(UITableViewAccessibility *)&v7 dequeueReusableCellWithIdentifier:location[0] forIndexPath:v18];
    v8 = 1;
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  v4 = v21;

  return v4;
}

- (id)dequeueReusableHeaderFooterViewWithIdentifier:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(UITableViewAccessibility *)v9 _accessibilityShouldDisableCellReuse])
  {
    v7 = [(UITableViewAccessibility *)v9 _axAttemptCreationOfViewType:location[0] identifier:?];
    v10 = MEMORY[0x29EDC9748](v7);
    v6 = 1;
    objc_storeStrong(&v7, 0);
  }

  else
  {
    v5.receiver = v9;
    v5.super_class = UITableViewAccessibility;
    v10 = [(UITableViewAccessibility *)&v5 dequeueReusableHeaderFooterViewWithIdentifier:location[0]];
    v6 = 1;
  }

  objc_storeStrong(location, 0);
  v3 = v10;

  return v3;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v20 = self;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16.receiver = self;
  v16.super_class = UITableViewAccessibility;
  [(UITableViewAccessibility *)&v16 setEditing:a3 animated:a4];
  [(UITableViewAccessibility *)v20 _accessibilityClearChildren];
  if (([(UITableViewAccessibility *)v20 safeBoolForKey:@"_hasSwipeToDeleteRow"]& 1) == 0)
  {
    v14 = 0;
    objc_opt_class();
    v5 = [(UITableViewAccessibility *)v20 safeValueForKey:@"focusedCell"];
    v13 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v5);
    v12 = MEMORY[0x29EDC9748](v13);
    objc_storeStrong(&v13, 0);
    v15 = v12;
    v11 = [v12 _accessibilityIndexPath];
    v4 = [v15 isEditing];
    if (v4 != v18)
    {
      if (v11)
      {
        v6 = MEMORY[0x29EDC9748](v20);
        v7 = MEMORY[0x29EDC9748](v15);
        v9 = v18;
        v8 = MEMORY[0x29EDC9748](v11);
        v10 = v17;
        AXPerformSafeBlock();
        objc_storeStrong(&v8, 0);
        objc_storeStrong(&v7, 0);
        objc_storeStrong(&v6, 0);
      }
    }

    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v15, 0);
  }
}

- (void)setCountString:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(UITableViewAccessibility *)v7 safeValueForKey:?];
  v4.receiver = v7;
  v4.super_class = UITableViewAccessibility;
  [(UITableViewAccessibility *)&v4 setCountString:location[0]];
  v3 = [(UITableViewAccessibility *)v7 safeValueForKey:@"_countLabel"];
  if (v5 != v3)
  {
    [(UITableViewAccessibility *)v7 _accessibilityClearChildren];
  }

  objc_storeStrong(&v3, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_reuseTableViewSubview:(id)a3 viewType:(int)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = a4;
  v7.receiver = v10;
  v7.super_class = UITableViewAccessibility;
  [(UITableViewAccessibility *)&v7 _reuseTableViewSubview:location[0] viewType:a4];
  v6 = [(UITableViewAccessibility *)v10 _accessibilityOpaqueElementParent];
  if (!v6 && [(UITableViewAccessibility *)v10 isAccessibilityOpaqueElementProvider])
  {
    objc_storeStrong(&v6, v10);
  }

  [v6 _accessibilityDidReuseOpaqueElementView:{location[0], &v6}];
  objc_storeStrong(v4, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_swipeDeletionCommitted
{
  v6 = self;
  v5 = a2;
  v4 = 0;
  if (([(UITableViewAccessibility *)self _accessibilityShouldConsiderSwipeDeletionCommitted]& 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v3.receiver = v6;
    v3.super_class = UITableViewAccessibility;
    v4 = [(UITableViewAccessibility *)&v3 _swipeDeletionCommitted];
  }

  return v4 & 1;
}

- (void)_cellDidShowSelectedBackground:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UITableViewAccessibility;
  [(UITableViewAccessibility *)&v3 _cellDidShowSelectedBackground:location[0]];
  [(UITableViewAccessibility *)v5 _axUpdateSelectedBackgroundVisibilityForCell:location[0] visible:1];
  objc_storeStrong(location, 0);
}

- (void)_cellDidHideSelectedBackground:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UITableViewAccessibility;
  [(UITableViewAccessibility *)&v3 _cellDidHideSelectedBackground:location[0]];
  [(UITableViewAccessibility *)v5 _axUpdateSelectedBackgroundVisibilityForCell:location[0] visible:0];
  objc_storeStrong(location, 0);
}

- (void)_axUpdateSelectedBackgroundVisibilityForCell:(id)a3 visible:(BOOL)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] _accessibilityBoolValueForKey:?];
  [location[0] _accessibilitySetBoolValue:a4 forKey:@"AXIsShowingSelectedBackground"];
  if (a4 && (v5 & 1) == 0 && (-[UITableViewAccessibility allowsMultipleSelection](v7, "allowsMultipleSelection") & 1) == 0 && ([location[0] isSelected] & 1) == 0)
  {
    [location[0] _accessibilitySetNativeFocus];
  }

  objc_storeStrong(location, 0);
}

- (id)accessibilityCellForRowAtIndexPath:(id)a3
{
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v41 = 0;
  v17 = 1;
  if (location[0])
  {
    v16 = [location[0] section];
    v17 = 1;
    if (v16 < [(UITableViewAccessibility *)v44 _axNumberOfSections])
    {
      v15 = [location[0] row];
      v17 = 1;
      if (v15 < -[UITableViewAccessibility numberOfRowsInSection:](v44, "numberOfRowsInSection:", [location[0] section]))
      {
        v14 = [location[0] row];
        v42 = [(UITableViewAccessibility *)v44 dataSource];
        v41 = 1;
        v17 = v14 >= [v42 tableView:v44 numberOfRowsInSection:{objc_msgSend(location[0], "section")}];
      }
    }
  }

  if (v41)
  {
    MEMORY[0x29EDC9740](v42);
  }

  if (v17)
  {
    v45 = 0;
    v40 = 1;
  }

  else
  {
    [(UITableViewAccessibility *)v44 setReusableCellsEnabled:0];
    [(UITableViewAccessibility *)v44 safeCGSizeForKey:@"contentSize"];
    v38[1] = v3;
    v39 = v4;
    v32 = 0;
    v33 = &v32;
    v34 = 838860800;
    v35 = 48;
    v36 = __Block_byref_object_copy__22;
    v37 = __Block_byref_object_dispose__22;
    v38[0] = 0;
    v25 = MEMORY[0x29EDCA5F8];
    v26 = -1073741824;
    v27 = 0;
    v28 = __63__UITableViewAccessibility_accessibilityCellForRowAtIndexPath___block_invoke;
    v29 = &unk_29F30C860;
    v31[1] = &v32;
    v30 = MEMORY[0x29EDC9748](v44);
    v31[0] = MEMORY[0x29EDC9748](location[0]);
    AXPerformSafeBlock();
    [v33[5] layoutSubviews];
    [(UITableViewAccessibility *)v44 safeCGSizeForKey:@"contentSize"];
    v23 = v5;
    v24 = v6;
    [v33[5] accessibilityFrame];
    v22 = v47;
    MaxY = CGRectGetMaxY(v47);
    [(UITableViewAccessibility *)v44 accessibilityFrame];
    rect = v48;
    MinY = CGRectGetMinY(v48);
    v7 = MaxY;
    if (MaxY < MinY)
    {
      [(UITableViewAccessibility *)v44 _accessibilityContentOffset];
      *&v20 = v8;
      *(&v20 + 1) = v9 + v24 - v39;
      v18 = MEMORY[0x29EDC9748](v44);
      v19 = v20;
      AXPerformSafeBlock();
      objc_storeStrong(&v18, 0);
    }

    [(UITableViewAccessibility *)v44 setReusableCellsEnabled:1, v7];
    v45 = MEMORY[0x29EDC9748](v33[5]);
    v40 = 1;
    objc_storeStrong(v31, 0);
    objc_storeStrong(&v30, 0);
    _Block_object_dispose(&v32, 8);
    objc_storeStrong(v38, 0);
  }

  objc_storeStrong(location, 0);
  v10 = v45;

  return v10;
}

void __63__UITableViewAccessibility_accessibilityCellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  v1 = [*(a1 + 32) _createPreparedCellForRowAtIndexPath:*(a1 + 40) willDisplay:1];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  location[0] = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [location[0] tableView:*(a1 + 32) didEndDisplayingCell:*(*(*(a1 + 48) + 8) + 40) forRowAtIndexPath:*(a1 + 40)];
  }

  objc_storeStrong(location, 0);
}

- (id)_accessibilityInternalData
{
  v4 = a1;
  if (a1)
  {
    v3 = [v4 _accessibilityValueForKey:@"AXInternalData"];
    if (!v3)
    {
      v3 = [objc_allocWithZone(_AXTableViewInternal) init];
      [v4 _accessibilitySetRetainedValue:v3 forKey:{@"AXInternalData", MEMORY[0x29EDC9740](0).n128_f64[0]}];
      [(UITableViewAccessibility *)v4 _accessibilityInitializeInternalData];
    }

    v5 = MEMORY[0x29EDC9748](v3);
    objc_storeStrong(&v3, 0);
  }

  else
  {
    v5 = 0;
  }

  v1 = v5;

  return v1;
}

- (void)_accessibilityInitializeInternalData
{
  v50 = a1;
  if (a1)
  {
    [v50 _accessibilityRemoveValueForKey:@"isAXElement"];
    v49 = [(UITableViewAccessibility *)v50 _accessibilityInternalData];
    v48 = [(UITableViewAccessibility *)v50 _axNumberOfSections];
    v47 = 0;
    v46 = 0;
    v45 = 0;
    v44 = 0;
    while (v46 < v48)
    {
      v39 = 0;
      v40 = &v39;
      v41 = 0x20000000;
      v42 = 32;
      v43 = 0;
      v33 = MEMORY[0x29EDCA5F8];
      v34 = -1073741824;
      v35 = 0;
      v36 = __64__UITableViewAccessibility__accessibilityInitializeInternalData__block_invoke;
      v37 = &unk_29F30CFE8;
      v38[1] = &v39;
      v38[0] = MEMORY[0x29EDC9748](v50);
      v38[2] = v46;
      AXPerformSafeBlock();
      v32 = v40[3] & 1;
      objc_storeStrong(v38, 0);
      _Block_object_dispose(&v39, 8);
      if (v32)
      {
        ++v47;
        v19 = [(_AXTableViewInternal *)v49 indexMap];
        v15 = MEMORY[0x29EDB8DC0];
        v18 = [MEMORY[0x29EDBA070] numberWithInteger:v46];
        v17 = [v15 dictionaryWithObjectsAndKeys:{@"header", @"type", v18, @"offset", 0}];
        v64 = v45;
        v63 = 1;
        v65 = v45;
        v66 = 1;
        v30 = v45;
        v31 = 1;
        v16 = [MEMORY[0x29EDBA168] valueWithRange:{v45, 1}];
        [v19 setObject:v17 forKey:?];
        MEMORY[0x29EDC9740](v16);
        MEMORY[0x29EDC9740](v17);
        MEMORY[0x29EDC9740](v18);
        MEMORY[0x29EDC9740](v19);
      }

      v45 = v47;
      v29 = [v50 numberOfRowsInSection:v46];
      v47 += v29;
      if (v29 > 0)
      {
        v14 = [(_AXTableViewInternal *)v49 indexMap];
        v10 = MEMORY[0x29EDB8DC0];
        v13 = [MEMORY[0x29EDBA070] numberWithInteger:v44];
        v12 = [v10 dictionaryWithObjectsAndKeys:{@"row", @"type", v13, @"offset", 0}];
        v60 = v45;
        v59 = v47 - v45;
        v61 = v45;
        v62 = v47 - v45;
        v27 = v45;
        v28 = v47 - v45;
        v11 = [MEMORY[0x29EDBA168] valueWithRange:{v45, v47 - v45}];
        [v14 setObject:v12 forKey:?];
        MEMORY[0x29EDC9740](v11);
        MEMORY[0x29EDC9740](v12);
        MEMORY[0x29EDC9740](v13);
        MEMORY[0x29EDC9740](v14);
      }

      v44 += v29;
      v45 = v47;
      v22 = 0;
      v23 = &v22;
      v24 = 0x20000000;
      v25 = 32;
      v26 = 0;
      v21[1] = &v22;
      v21[0] = MEMORY[0x29EDC9748](v50);
      v21[2] = v46;
      AXPerformSafeBlock();
      v20 = v23[3] & 1;
      objc_storeStrong(v21, 0);
      _Block_object_dispose(&v22, 8);
      if (v20)
      {
        ++v47;
        v9 = [(_AXTableViewInternal *)v49 indexMap];
        v5 = MEMORY[0x29EDB8DC0];
        v8 = [MEMORY[0x29EDBA070] numberWithInteger:v46];
        v7 = [v5 dictionaryWithObjectsAndKeys:{@"footer", @"type", v8, @"offset", 0}];
        v56 = v45;
        v55 = 1;
        v57 = v45;
        v58 = 1;
        v6 = [MEMORY[0x29EDBA168] valueWithRange:{v45, 1}];
        [v9 setObject:v7 forKey:?];
        MEMORY[0x29EDC9740](v6);
        MEMORY[0x29EDC9740](v7);
        MEMORY[0x29EDC9740](v8);
        MEMORY[0x29EDC9740](v9);
      }

      v45 = v47;
      ++v46;
    }

    v4 = [v50 safeValueForKey:@"_countLabel"];
    MEMORY[0x29EDC9740](v4);
    if (v4)
    {
      ++v47;
      v3 = [(_AXTableViewInternal *)v49 indexMap];
      v2 = [MEMORY[0x29EDB8DC0] dictionaryWithObjectsAndKeys:{@"tableCount", @"type", 0}];
      v52 = v47 - 1;
      v51 = 1;
      v53 = v47 - 1;
      v54 = 1;
      v1 = [MEMORY[0x29EDBA168] valueWithRange:{v47 - 1, 1}];
      [v3 setObject:v2 forKey:?];
      MEMORY[0x29EDC9740](v1);
      MEMORY[0x29EDC9740](v2);
      MEMORY[0x29EDC9740](v3);
    }

    [(_AXTableViewInternal *)v49 setAccessibleElementCount:v47];
    objc_storeStrong(&v49, 0);
  }
}

- (id)_accessibilityInternalDataRetrieveOnly
{
  if (a1)
  {
    v2 = [a1 _accessibilityValueForKey:@"AXInternalData"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilityClearChildren
{
  v27 = *MEMORY[0x29EDCA608];
  v24 = self;
  location[1] = a2;
  location[0] = [(UITableViewAccessibility *)self _accessibilityValueForKey:@"AXInternalData"];
  if (location[0])
  {
    v16 = [(_AXTableViewInternal *)location[0] children];
    v15 = [v16 allValues];
    [v15 enumerateObjectsUsingBlock:&__block_literal_global_650];
    MEMORY[0x29EDC9740](v15);
    MEMORY[0x29EDC9740](v16);
    memset(__b, 0, sizeof(__b));
    obj = [(_AXTableViewInternal *)location[0] sectionHeaders];
    v18 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
    if (v18)
    {
      v12 = *__b[2];
      v13 = 0;
      v14 = v18;
      while (1)
      {
        v11 = v13;
        if (*__b[2] != v12)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(__b[1] + 8 * v13);
        [v22 setAccessibilityContainer:0];
        ++v13;
        if (v11 + 1 >= v14)
        {
          v13 = 0;
          v14 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
          if (!v14)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    memset(v19, 0, sizeof(v19));
    v9 = [(_AXTableViewInternal *)location[0] sectionFooters];
    v10 = [v9 countByEnumeratingWithState:v19 objects:v25 count:16];
    if (v10)
    {
      v6 = *v19[2];
      v7 = 0;
      v8 = v10;
      while (1)
      {
        v5 = v7;
        if (*v19[2] != v6)
        {
          objc_enumerationMutation(v9);
        }

        v20 = *(v19[1] + 8 * v7);
        [v20 setAccessibilityContainer:0];
        ++v7;
        if (v5 + 1 >= v8)
        {
          v7 = 0;
          v8 = [v9 countByEnumeratingWithState:v19 objects:v25 count:16];
          if (!v8)
          {
            break;
          }
        }
      }
    }

    *&v2 = MEMORY[0x29EDC9740](v9).n128_u64[0];
    [(UITableViewAccessibility *)v24 _accessibilityRemoveValueForKey:@"AXInternalData", v2];
    [_ReloadTimer invalidate];
    v3 = [MEMORY[0x29EDB8E68] scheduledTimerWithTimeInterval:v24 target:sel__axPostLayoutChange selector:0 userInfo:0 repeats:0.5];
    v4 = _ReloadTimer;
    _ReloadTimer = v3;
    MEMORY[0x29EDC9740](v4);
  }

  objc_storeStrong(location, 0);
}

void __55__UITableViewAccessibility__accessibilityClearChildren__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] setAccessibilityContainer:0];
  objc_storeStrong(location, 0);
}

- (CGRect)accessibilityFrame
{
  v8 = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = UITableViewAccessibility;
  [(UITableViewAccessibility *)&v6 accessibilityFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (uint64_t)_accessibilitySearchTableViewVisible
{
  v3 = a1;
  if (a1)
  {
    v2 = [(UITableViewAccessibility *)v3 _accessibilityInternalDataRetrieveOnly];
    v4 = [(_AXTableViewInternal *)v2 searchTableViewVisible]& 1;
    objc_storeStrong(&v2, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (uint64_t)_accessibilitySearchControllerDimmingViewVisible
{
  v3 = a1;
  if (a1)
  {
    v2 = [(UITableViewAccessibility *)v3 _accessibilityInternalDataRetrieveOnly];
    v4 = [(_AXTableViewInternal *)v2 searchControllerDimmingViewVisible]& 1;
    objc_storeStrong(&v2, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (uint64_t)_accessibilityHasAccessibleOrContainerSubviewWithSubviewTree:(void *)a1
{
  v16 = *MEMORY[0x29EDCA608];
  v13 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v13)
  {
    if (location != v13 && (([location isAccessibilityElement] & 1) != 0 || (objc_msgSend(location, "_accessibilityHasOrderedChildren") & 1) != 0))
    {
      v14 = 1;
      v11 = 1;
    }

    else
    {
      memset(__b, 0, sizeof(__b));
      obj = [location subviews];
      v8 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
      if (v8)
      {
        v4 = *__b[2];
        v5 = 0;
        v6 = v8;
        while (1)
        {
          v3 = v5;
          if (*__b[2] != v4)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(__b[1] + 8 * v5);
          if (([(UITableViewAccessibility *)v13 _accessibilityHasAccessibleOrContainerSubviewWithSubviewTree:v10]& 1) != 0)
          {
            break;
          }

          ++v5;
          if (v3 + 1 >= v6)
          {
            v5 = 0;
            v6 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
            if (!v6)
            {
              goto LABEL_15;
            }
          }
        }

        v14 = 1;
        v11 = 1;
      }

      else
      {
LABEL_15:
        v11 = 0;
      }

      MEMORY[0x29EDC9740](obj);
      if (!v11)
      {
        v14 = 0;
        v11 = 1;
      }
    }
  }

  else
  {
    v14 = 0;
    v11 = 1;
  }

  objc_storeStrong(&location, 0);
  return v14 & 1;
}

- (uint64_t)_accessibilityHasAccessibleOrContainerSubview
{
  v5 = a1;
  if (a1)
  {
    location = [v5 _accessibilityValueForKey:@"AXHasAccessibleOrContainerSubview"];
    if (location)
    {
      v6 = [location BOOLValue] & 1;
    }

    else
    {
      v3 = [(UITableViewAccessibility *)v5 _accessibilityHasAccessibleOrContainerSubviewWithSubviewTree:v5];
      v2 = [MEMORY[0x29EDBA070] numberWithBool:v3 & 1];
      [v5 _accessibilitySetRetainedValue:? forKey:?];
      MEMORY[0x29EDC9740](v2);
      v6 = v3 & 1;
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)isAccessibilityElement
{
  v29 = self;
  v28 = a2;
  if (([(UITableViewAccessibility *)self _accessibilityIsSearchTableVisible]& 1) != 0)
  {
    v30 = 1;
  }

  else if ([(UITableViewAccessibility *)v29 isAccessibilityOpaqueElementProvider])
  {
    v26 = [(UITableViewAccessibility *)v29 safeRangeForKey:@"_visibleGlobalRows"];
    v27 = v2;
    LOBYTE(v8) = 0;
    if (!v2)
    {
      v8 = [(UITableViewAccessibility *)v29 _accessibilityHasAccessibleOrContainerSubview]^ 1;
    }

    v30 = v8 & 1;
  }

  else
  {
    v7 = [(UITableViewAccessibility *)v29 isAccessibilityUserDefinedElement];
    *&v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
    if (v7)
    {
      v25.receiver = v29;
      v25.super_class = UITableViewAccessibility;
      v30 = [(UITableViewAccessibility *)&v25 isAccessibilityElement];
    }

    else
    {
      v24 = [(UITableViewAccessibility *)v29 accessibilityElementCount];
      v22 = 0;
      v6 = 0;
      if (!v24)
      {
        v23 = [(UITableViewAccessibility *)v29 _accessibilityHeaderElement];
        v22 = 1;
        v6 = v23 == 0;
      }

      if (v22)
      {
        MEMORY[0x29EDC9740](v23);
      }

      if (v6)
      {
        v30 = 1;
      }

      else
      {
        v21 = [(UITableViewAccessibility *)v29 _accessibilityValueForKey:@"isAXElement"];
        if (v21)
        {
          v30 = [v21 BOOLValue] & 1;
          v20 = 1;
        }

        else
        {
          v15 = 0;
          v16 = &v15;
          v17 = 0x20000000;
          v18 = 32;
          v19 = 0;
          v5 = v29;
          v9 = MEMORY[0x29EDCA5F8];
          v10 = -1073741824;
          v11 = 0;
          v12 = __50__UITableViewAccessibility_isAccessibilityElement__block_invoke;
          v13 = &unk_29F30D828;
          v14[0] = MEMORY[0x29EDC9748](v29);
          v14[1] = &v15;
          [(UITableViewAccessibility *)v5 accessibilityEnumerateContainerElementsUsingBlock:&v9];
          if (v16[3])
          {
            v30 = 0;
            v20 = 1;
          }

          else
          {
            v20 = 0;
          }

          objc_storeStrong(v14, 0);
          _Block_object_dispose(&v15, 8);
        }

        objc_storeStrong(&v21, 0);
        if (!v20)
        {
          [(UITableViewAccessibility *)v29 _accessibilitySetRetainedValue:*MEMORY[0x29EDB8F00] forKey:@"isAXElement"];
          v30 = 1;
        }
      }
    }
  }

  return v30 & 1;
}

void __50__UITableViewAccessibility_isAccessibilityElement__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (([location[0] isAccessibilityElement] & 1) != 0 || (objc_msgSend(location[0], "_accessibilityHasOrderedChildren") & 1) != 0 && objc_msgSend(location[0], "accessibilityElementCount") > 0)
  {
    [*(a1 + 32) _accessibilitySetRetainedValue:*MEMORY[0x29EDB8EF8] forKey:@"isAXElement"];
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = [MEMORY[0x29EDBA068] defaultCenter];
  [v2 removeObserver:v5 name:*MEMORY[0x29EDC80C0] object:?];
  [(UITableViewAccessibility *)v5 _accessibilityClearChildren];
  [_ReloadTimer invalidate];
  objc_storeStrong(&_ReloadTimer, 0);
  v3.receiver = v5;
  v3.super_class = UITableViewAccessibility;
  [(UITableViewAccessibility *)&v3 dealloc];
}

- (id)_accessibilityFooterElement
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [(UITableViewAccessibility *)self safeValueForKey:@"tableFooterView"];
  v3 = MEMORY[0x29EDC9748](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (id)_accessibilityHeaderElement
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [(UITableViewAccessibility *)self safeValueForKey:@"tableHeaderView"];
  v3 = MEMORY[0x29EDC9748](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (id)_accessibilityFuzzyHitTest:(id)obj withEvent:
{
  v39 = *MEMORY[0x29EDCA608];
  v36 = a1;
  v35 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (v36)
  {
    v32 = 0;
    v31 = 1.79769313e308;
    UIAccessibilityPointForPoint();
    v30[1] = v3;
    v30[2] = v4;
    v30[0] = [v36 safeValueForKey:@"indexPathsForVisibleRows"];
    memset(__b, 0, sizeof(__b));
    obja = MEMORY[0x29EDC9748](v30[0]);
    v21 = [obja countByEnumeratingWithState:__b objects:v38 count:16];
    if (v21)
    {
      v17 = *__b[2];
      v18 = 0;
      v19 = v21;
      while (1)
      {
        v16 = v18;
        if (*__b[2] != v17)
        {
          objc_enumerationMutation(obja);
        }

        v29 = *(__b[1] + 8 * v18);
        v27 = [v36 globalRowForRowAtIndexPath:v29];
        if (v27 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v26 = [v36 accessibilityTableViewCellElementAtGlobalRow:v27];
          [v26 accessibilityActivationPoint];
          v24[1] = v5;
          v24[2] = v6;
          AX_CGPointGetDistanceToPoint();
          v25 = v7;
          if (v7 < v31)
          {
            v31 = v25;
            objc_storeStrong(&v32, v26);
          }

          objc_storeStrong(&v26, 0);
        }

        ++v18;
        if (v16 + 1 >= v19)
        {
          v18 = 0;
          v19 = [obja countByEnumeratingWithState:__b objects:v38 count:16];
          if (!v19)
          {
            break;
          }
        }
      }
    }

    *&v8 = MEMORY[0x29EDC9740](obja).n128_u64[0];
    if (v32)
    {
      v24[0] = [v32 tableViewCell];
      [v24[0] bounds];
      rect = v41;
      CGRectGetMidX(v41);
      CGRectGetMidY(rect);
      CGPointMake_7();
      v15 = v35;
      [v36 convertPoint:v24[0] fromView:{v9, v10}];
      *&v22 = v11;
      *(&v22 + 1) = v12;
      *v15 = v22;
      v37 = MEMORY[0x29EDC9748](v32);
      v33 = 1;
      objc_storeStrong(v24, 0);
    }

    else
    {
      v37 = 0;
      v33 = 1;
    }

    objc_storeStrong(v30, 0);
    objc_storeStrong(&v32, 0);
  }

  else
  {
    v37 = 0;
    v33 = 1;
  }

  objc_storeStrong(&location, 0);
  v13 = v37;

  return v13;
}

uint64_t __64__UITableViewAccessibility__accessibilitySearchResultsTableView__block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSClassFromString(&cfstr_Uisearchdispla.isa);
  v6 = objc_opt_isKindOfClass() & 1;
  if (v6)
  {
    *a4 = 1;
  }

  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (id)_accessibilitySubviews
{
  v8 = self;
  v7[1] = a2;
  if (([(UITableViewAccessibility *)self _accessibilityIsSearchTableVisible]& 1) != 0)
  {
    v7[0] = [(UITableViewAccessibility *)v8 _accessibilitySupplementaryHeaderViews];
    v6 = [(UITableViewAccessibility *)v8 _accessibilitySupplementaryFooterViews];
    v5 = [MEMORY[0x29EDB8DE8] arrayWithArray:v7[0]];
    [v5 addObjectsFromArray:v6];
    v9 = MEMORY[0x29EDC9748](v5);
    objc_storeStrong(&v5, 0);
    objc_storeStrong(&v6, 0);
    objc_storeStrong(v7, 0);
  }

  else
  {
    v4.receiver = v8;
    v4.super_class = UITableViewAccessibility;
    v9 = [(UITableViewAccessibility *)&v4 _accessibilitySubviews];
  }

  v2 = v9;

  return v2;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v121 = a3;
  v120 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v118 = [(UITableViewAccessibility *)v120 _accessibilityBoolValueForKey:@"AXInHitTestOverride"];
  v110 = 0;
  v38 = 0;
  if ((v118 & 1) == 0)
  {
    v112 = MEMORY[0x29EDCA5F8];
    v113 = -1073741824;
    v114 = 0;
    v115 = __60__UITableViewAccessibility__accessibilityHitTest_withEvent___block_invoke;
    v116 = &unk_29F30CEB0;
    v117 = MEMORY[0x29EDC9748](v120);
    v111 = &v117;
    v110 = 1;
    v38 = (__60__UITableViewAccessibility__accessibilityHitTest_withEvent___block_invoke)();
  }

  if (v38)
  {
    [(UITableViewAccessibility *)v120 _accessibilitySetBoolValue:1 forKey:?];
    v109 = [(UITableViewAccessibility *)v120 accessibilityHitTest:location[0] withEvent:v121.x, v121.y];
    [(UITableViewAccessibility *)v120 _accessibilitySetBoolValue:0 forKey:@"AXInHitTestOverride"];
    v122 = MEMORY[0x29EDC9748](v109);
    v108 = 1;
    objc_storeStrong(&v109, 0);
  }

  else
  {
    v108 = 0;
  }

  if (v110)
  {
    objc_storeStrong(v111, 0);
  }

  if (!v108)
  {
    if (([(UITableViewAccessibility *)v120 pointInside:location[0] withEvent:v121.x, v121.y]& 1) == 0)
    {
      v122 = 0;
      v108 = 1;
      goto LABEL_100;
    }

    if ([location[0] _accessibilityHitTestType] == 3)
    {
      v122 = [(UITableViewAccessibility *)v120 __accessibilityHitTest:location[0] withEvent:v121.x, v121.y];
      v108 = 1;
      goto LABEL_100;
    }

    v36 = v120;
    v37 = [(UITableViewAccessibility *)v120 _accessibilitySupplementaryHeaderViews];
    v106 = [(UITableViewAccessibility *)v36 _accessibilityHitTestSupplementaryViews:v121.x point:v121.y withEvent:?];
    MEMORY[0x29EDC9740](0);
    *&v4 = MEMORY[0x29EDC9740](v37).n128_u64[0];
    if (v106 || (v34 = v120, v35 = [(UITableViewAccessibility *)v120 _accessibilitySupplementaryFooterViews], v106 = [(UITableViewAccessibility *)v34 _accessibilityHitTestSupplementaryViews:v121.x point:v121.y withEvent:?], MEMORY[0x29EDC9740](0), *&v5 = MEMORY[0x29EDC9740](v35).n128_u64[0], v106))
    {
      v122 = MEMORY[0x29EDC9748](v106);
      v108 = 1;
    }

    else
    {
      if ([(UITableViewAccessibility *)v120 isAccessibilityOpaqueElementProvider])
      {
        v122 = [(UITableViewAccessibility *)v120 __accessibilityHitTest:location[0] withEvent:v121.x, v121.y];
        v108 = 1;
        goto LABEL_99;
      }

      v105 = 0;
      v104 = [(UITableViewAccessibility *)v120 _axNumberOfSections];
      while (v105 < v104)
      {
        [(UITableViewAccessibility *)v120 rectForSection:v105];
        v103 = v124;
        if (CGRectContainsPoint(v124, v121))
        {
          break;
        }

        ++v105;
      }

      v102 = 0;
      if (v105 >= v104)
      {
        goto LABEL_40;
      }

      memset(&v101, 0, sizeof(v101));
      v94 = 0;
      v95 = &v94;
      v96 = 0x10000000;
      v97 = 64;
      v98 = &unk_29C6A1FE6;
      v99 = 0u;
      v100 = 0u;
      v88[3] = MEMORY[0x29EDCA5F8];
      v89 = -1073741824;
      v90 = 0;
      v91 = __60__UITableViewAccessibility__accessibilityHitTest_withEvent___block_invoke_698;
      v92 = &unk_29F30CFE8;
      v93[1] = &v94;
      v93[0] = MEMORY[0x29EDC9748](v120);
      v93[2] = v105;
      AXPerformSafeBlock();
      v101 = *(v95 + 1);
      objc_storeStrong(v93, 0);
      _Block_object_dispose(&v94, 8);
      if (CGRectContainsPoint(v101, v121))
      {
        v88[0] = [(UITableViewAccessibility *)v120 accessibilityTableViewSectionElementAtSection:v105 isHeader:1];
        v6 = [v88[0] _accessibilityHitTest:location[0] withEvent:{v121.x, v121.y}];
        v7 = v106;
        v106 = v6;
        MEMORY[0x29EDC9740](v7);
        if (v106)
        {
          v122 = MEMORY[0x29EDC9748](v106);
          v108 = 1;
        }

        else
        {
          v102 = 1;
          v108 = 0;
        }

        objc_storeStrong(v88, 0);
        if (v108)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v32 = [(UITableViewAccessibility *)v120 safeValueForKey:@"allowsHeaderViewsToFloat"];
        v33 = [v32 BOOLValue];
        MEMORY[0x29EDC9740](v32);
        if (v33)
        {
          memset(&rect, 0, sizeof(rect));
          v80 = 0;
          v81 = &v80;
          v82 = 0x10000000;
          v83 = 64;
          v84 = &unk_29C6A1FE6;
          v85 = 0u;
          v86 = 0u;
          v74[1] = MEMORY[0x29EDCA5F8];
          v75 = -1073741824;
          v76 = 0;
          v77 = __60__UITableViewAccessibility__accessibilityHitTest_withEvent___block_invoke_2_703;
          v78 = &unk_29F30CFE8;
          v79[1] = &v80;
          v79[0] = MEMORY[0x29EDC9748](v120);
          v79[2] = v105;
          AXPerformSafeBlock();
          rect = v81[1];
          objc_storeStrong(v79, 0);
          _Block_object_dispose(&v80, 8);
          if (CGRectContainsPoint(rect, v121))
          {
            v74[0] = [(UITableViewAccessibility *)v120 accessibilityTableViewSectionElementAtSection:v105 isHeader:1];
            v8 = [v74[0] _accessibilityHitTest:location[0] withEvent:{v121.x, v121.y}];
            v9 = v106;
            v106 = v8;
            MEMORY[0x29EDC9740](v9);
            if (v106)
            {
              v122 = MEMORY[0x29EDC9748](v106);
              v108 = 1;
            }

            else
            {
              v102 = 1;
              v108 = 0;
            }

            objc_storeStrong(v74, 0);
            if (v108)
            {
              goto LABEL_99;
            }
          }
        }
      }

      [(UITableViewAccessibility *)v120 rectForFooterInSection:v105];
      v73 = v125;
      if (!CGRectContainsPoint(v125, v121) || ((v72 = -[UITableViewAccessibility accessibilityTableViewSectionElementAtSection:isHeader:](v120, v105, 0), v10 = [v72 _accessibilityHitTest:location[0] withEvent:{v121.x, v121.y}], v11 = v106, v106 = v10, MEMORY[0x29EDC9740](v11), !v106) ? (v102 = 1, v108 = 0) : (v122 = MEMORY[0x29EDC9748](v106), v108 = 1), objc_storeStrong(&v72, 0), !v108))
      {
LABEL_40:
        NSClassFromString(&cfstr_Uisearchresult.isa);
        v71 = objc_opt_isKindOfClass() & 1;
        if (([(UITableViewAccessibility *)v120 _accessibilitySearchControllerDimmingViewVisible]& 1) != 0 && (v71 & 1) == 0)
        {
          v122 = 0;
          v108 = 1;
          goto LABEL_99;
        }

        if (([(UITableViewAccessibility *)v120 _accessibilityIsSearchTableVisible]& 1) != 0)
        {
          v70 = [(UITableViewAccessibility *)v120 _accessibilitySearchResultsTableView];
          v31 = v70;
          [v70 convertPoint:v120 fromView:v121];
          v69[1] = v12;
          v69[2] = v13;
          v122 = [v31 _accessibilityHitTest:location[0] withEvent:{*&v12, *&v13}];
          v108 = 1;
          objc_storeStrong(&v70, 0);
          goto LABEL_99;
        }

        v69[0] = [(UITableViewAccessibility *)v120 __accessibilityHitTest:location[0] withEvent:v121.x, v121.y];
        v67 = 0;
        v65 = 0;
        v63 = 0;
        v30 = 0;
        if (v69[0])
        {
          v30 = 0;
          if (v69[0] != v120)
          {
            objc_opt_class();
            v30 = 0;
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v68 = [v69[0] _accessibilityAncestorIsKindOf:objc_opt_class()];
              v67 = 1;
              v30 = 0;
              if (!v68)
              {
                v66 = [v69[0] _accessibilityAncestorIsKindOf:objc_opt_class()];
                v65 = 1;
                v30 = 0;
                if (!v66)
                {
                  v64 = [v69[0] accessibilityContainer];
                  v63 = 1;
                  v30 = v64 != 0;
                }
              }
            }
          }
        }

        if (v63)
        {
          MEMORY[0x29EDC9740](v64);
        }

        if (v65)
        {
          MEMORY[0x29EDC9740](v66);
        }

        if (v67)
        {
          MEMORY[0x29EDC9740](v68);
        }

        if (!v30 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (([v69[0] convertPoint:v120 fromView:v121], v60 = v14, v61 = v15, v62 = objc_msgSend(v69[0], "_accessibilityHitTest:withEvent:", location[0], v14, v15), (objc_msgSend(v62, "isAccessibilityElement") & 1) == 0) ? (v108 = 0) : (v122 = MEMORY[0x29EDC9748](v62), v108 = 1), objc_storeStrong(&v62, 0), !v108))
        {
          if (v104)
          {
            if ([(UITableViewAccessibility *)v120 accessibilityElementCount])
            {
              v57[0] = [(UITableViewAccessibility *)v120 indexPathForRowAtPoint:v121.x, v121.y];
              v49 = 0;
              v50 = &v49;
              v51 = 838860800;
              v52 = 48;
              v53 = __Block_byref_object_copy__22;
              v54 = __Block_byref_object_dispose__22;
              v55 = 0;
              v42 = MEMORY[0x29EDCA5F8];
              v43 = -1073741824;
              v44 = 0;
              v45 = __60__UITableViewAccessibility__accessibilityHitTest_withEvent___block_invoke_3;
              v46 = &unk_29F30C860;
              v48[1] = &v49;
              v47 = MEMORY[0x29EDC9748](v120);
              v48[0] = MEMORY[0x29EDC9748](v57[0]);
              AXPerformSafeBlock();
              v41 = MEMORY[0x29EDC9748](v50[5]);
              objc_storeStrong(v48, 0);
              objc_storeStrong(&v47, 0);
              _Block_object_dispose(&v49, 8);
              objc_storeStrong(&v55, 0);
              v56 = v41;
              if (v57[0] && v56)
              {
                goto LABEL_79;
              }

              if ((-[UITableViewAccessibility _accessibilityHitTestShouldFallbackToNearestChild](v120, "_accessibilityHitTestShouldFallbackToNearestChild") & 1) != 0 && ([location[0] _accessibilityAutomationHitTest] & 1) == 0)
              {
                v21 = [(UITableViewAccessibility *)v120 _accessibilityFuzzyHitTest:location[0] withEvent:?];
                v22 = v106;
                v106 = v21;
                MEMORY[0x29EDC9740](v22);
              }

              if (v106)
              {
LABEL_79:
                v40 = [(UITableViewAccessibility *)v120 globalRowForRowAtIndexPath:v57[0]];
                if (v40 != 0x7FFFFFFFFFFFFFFFLL && !v106)
                {
                  v23 = [(UITableViewAccessibility *)v120 accessibilityTableViewCellElementAtGlobalRow:v40];
                  v24 = v106;
                  v106 = v23;
                  MEMORY[0x29EDC9740](v24);
                }

                if (v106)
                {
                  v39 = [v106 _accessibilityHitTest:location[0] withEvent:{v121.x, v121.y}];
                  if (!v39 && (-[UITableViewAccessibility _accessibilityHitTestShouldFallbackToNearestChild](v120, "_accessibilityHitTestShouldFallbackToNearestChild") & 1) != 0 && ([location[0] _accessibilityAutomationHitTest] & 1) == 0)
                  {
                    v25 = [v106 accessibilityElementAtIndex:0];
                    v26 = v39;
                    v39 = v25;
                    MEMORY[0x29EDC9740](v26);
                  }

                  objc_storeStrong(&v106, v39);
                  objc_storeStrong(&v39, 0);
                }

                if (v106 && ([v106 isAccessibilityElement] & 1) != 0 || v106 && (objc_msgSend(location[0], "_accessibilityAutomationHitTest") & 1) != 0)
                {
                  v122 = MEMORY[0x29EDC9748](v106);
                  v108 = 1;
                }

                else
                {
                  if (v102)
                  {
                    v122 = 0;
                  }

                  else
                  {
                    v122 = MEMORY[0x29EDC9748](v120);
                  }

                  v108 = 1;
                }
              }

              else
              {
                v122 = MEMORY[0x29EDC9748](v120);
                v108 = 1;
              }

              objc_storeStrong(&v56, 0);
              objc_storeStrong(v57, 0);
              goto LABEL_98;
            }

            goto LABEL_71;
          }

          v29 = [(UITableViewAccessibility *)v120 safeValueForKey:@"frame"];
          [v29 CGRectValue];
          v57[1] = v16;
          v57[2] = v17;
          v58 = v18;
          v59 = v19;
          *&v20 = MEMORY[0x29EDC9740](v29).n128_u64[0];
          if (([location[0] _accessibilityAutomationHitTest] & 1) != 0 || -[UITableViewAccessibility isAccessibilityElement](v120, "isAccessibilityElement") && v58 > 0.0 && v59 > 0.0)
          {
LABEL_71:
            v122 = MEMORY[0x29EDC9748](v120);
            v108 = 1;
            goto LABEL_98;
          }

          v122 = 0;
          v108 = 1;
        }

LABEL_98:
        objc_storeStrong(v69, 0);
      }
    }

LABEL_99:
    objc_storeStrong(&v106, 0);
  }

LABEL_100:
  objc_storeStrong(location, 0);
  v27 = v122;

  return v27;
}

BOOL __60__UITableViewAccessibility__accessibilityHitTest_withEvent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &_ReloadTimer_block_invoke_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_692);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  Implementation = 0;
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v12 = AXLogCommon();
    v11 = 17;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      log = v12;
      type = v11;
      v8 = NSStringFromSelector(sel_accessibilityHitTest_withEvent_);
      v4 = MEMORY[0x29EDC9748](v8);
      v10 = v4;
      v2 = objc_opt_class();
      v7 = NSStringFromClass(v2);
      v9 = MEMORY[0x29EDC9748](v7);
      __os_log_helper_16_2_2_8_64_8_64(v19, v4, v9);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v19, 0x16u);
      MEMORY[0x29EDC9740](v7);
      MEMORY[0x29EDC9740](v8);
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  return Implementation != _ReloadTimer_block_invoke_BaseImplementation;
}

void __60__UITableViewAccessibility__accessibilityHitTest_withEvent___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  if (InstanceMethod)
  {
    _ReloadTimer_block_invoke_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel_accessibilityHitTest_withEvent_);
      v3 = MEMORY[0x29EDC9748](v7);
      v9 = v3;
      v2 = objc_opt_class();
      v6 = NSStringFromClass(v2);
      v8 = MEMORY[0x29EDC9748](v6);
      __os_log_helper_16_2_2_8_64_8_64(v15, v3, v8);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v15, 0x16u);
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v8, 0);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v11, 0);
  }
}

__n128 __60__UITableViewAccessibility__accessibilityHitTest_withEvent___block_invoke_698(uint64_t a1)
{
  [*(a1 + 32) rectForHeaderInSection:*(a1 + 48)];
  *&v8 = v1;
  *(&v8 + 1) = v2;
  v9.n128_u64[0] = v3;
  v9.n128_u64[1] = v4;
  v5 = *(*(a1 + 40) + 8);
  *(v5 + 32) = v8;
  result = v9;
  *(v5 + 48) = v9;
  return result;
}

- (id)accessibilityTableViewSectionElementAtSection:(char)a3 isHeader:
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  if (a1)
  {
    v19 = [(UITableViewAccessibility *)v22 _accessibilityInternalData];
    v18 = [MEMORY[0x29EDBA070] numberWithInteger:v21];
    v15 = 0;
    v13 = 0;
    v11 = 0;
    v9 = 0;
    if (v20)
    {
      v16 = [(_AXTableViewInternal *)v19 sectionHeaders];
      v15 = 1;
      v14 = [v16 objectForKey:v18];
      v13 = 1;
      v3 = MEMORY[0x29EDC9748](v14);
    }

    else
    {
      v12 = [(_AXTableViewInternal *)v19 sectionFooters];
      v11 = 1;
      v10 = [v12 objectForKey:v18];
      v9 = 1;
      v3 = MEMORY[0x29EDC9748](v10);
    }

    location = v3;
    if (v9)
    {
      MEMORY[0x29EDC9740](v10);
    }

    if (v11)
    {
      MEMORY[0x29EDC9740](v12);
    }

    if (v13)
    {
      MEMORY[0x29EDC9740](v14);
    }

    if (v15)
    {
      MEMORY[0x29EDC9740](v16);
    }

    if (!location)
    {
      obj = [objc_allocWithZone(UITableViewSectionElement) initWithAccessibilityContainer:v22];
      [(UITableViewSectionElement *)obj setIsHeader:?];
      [(UITableViewSectionElement *)obj setSection:v21];
      objc_storeStrong(&location, obj);
      if (v20)
      {
        v7 = [(_AXTableViewInternal *)v19 sectionHeaders];
        [v7 setObject:location forKey:v18];
        MEMORY[0x29EDC9740](v7);
      }

      else
      {
        v6 = [(_AXTableViewInternal *)v19 sectionFooters];
        [v6 setObject:location forKey:v18];
        MEMORY[0x29EDC9740](v6);
      }

      objc_storeStrong(&obj, 0);
    }

    v23 = MEMORY[0x29EDC9748](location);
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  else
  {
    v23 = 0;
  }

  v4 = v23;

  return v4;
}

__n128 __60__UITableViewAccessibility__accessibilityHitTest_withEvent___block_invoke_2_703(uint64_t a1)
{
  [*(a1 + 32) _floatingRectForHeaderInSection:*(a1 + 48) heightCanBeGuessed:0];
  *&v8 = v1;
  *(&v8 + 1) = v2;
  v9.n128_u64[0] = v3;
  v9.n128_u64[1] = v4;
  v5 = *(*(a1 + 40) + 8);
  *(v5 + 32) = v8;
  result = v9;
  *(v5 + 48) = v9;
  return result;
}

double __60__UITableViewAccessibility__accessibilityHitTest_withEvent___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) cellForRowAtIndexPath:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (id)_accessibilityVisibleHeaderSections
{
  v35 = *MEMORY[0x29EDCA608];
  v33 = self;
  v32[1] = a2;
  v32[0] = [(UITableViewAccessibility *)self safeValueForKey:@"indexPathsForVisibleRows"];
  v31 = [MEMORY[0x29EDB8DE8] array];
  v30 = 0x7FFFFFFFFFFFFFFFLL;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](v32[0]);
  v10 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v29 = *(__b[1] + 8 * v7);
      v4 = [v29 section];
      if (v4 != v30)
      {
        v20 = 0;
        v21 = &v20;
        v22 = 838860800;
        v23 = 48;
        v24 = __Block_byref_object_copy__22;
        v25 = __Block_byref_object_dispose__22;
        v26 = 0;
        v13 = MEMORY[0x29EDCA5F8];
        v14 = -1073741824;
        v15 = 0;
        v16 = __63__UITableViewAccessibility__accessibilityVisibleHeaderSections__block_invoke;
        v17 = &unk_29F30C860;
        v19[1] = &v20;
        v18 = MEMORY[0x29EDC9748](v33);
        v19[0] = MEMORY[0x29EDC9748](v29);
        AXPerformSafeBlock();
        v12 = MEMORY[0x29EDC9748](v21[5]);
        objc_storeStrong(v19, 0);
        objc_storeStrong(&v18, 0);
        _Block_object_dispose(&v20, 8);
        objc_storeStrong(&v26, 0);
        v27 = v12;
        if (v12)
        {
          v11 = -[UITableViewAccessibility accessibilityTableViewSectionElementAtSection:isHeader:](v33, [v29 section], 1);
          if (v11)
          {
            [v31 addObject:v11];
          }

          objc_storeStrong(&v11, 0);
        }

        v30 = [v29 section];
        objc_storeStrong(&v27, 0);
      }

      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  v3 = MEMORY[0x29EDC9748](v31);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(v32, 0);

  return v3;
}

double __63__UITableViewAccessibility__accessibilityVisibleHeaderSections__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _visibleHeaderViewForSection:{objc_msgSend(*(a1 + 40), "section")}];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (id)_accessibilityUserTestingVisibleSections
{
  v24 = *MEMORY[0x29EDCA608];
  v22 = self;
  v21[1] = a2;
  v21[0] = [(UITableViewAccessibility *)self safeValueForKey:@"indexPathsForVisibleRows"];
  v20 = [MEMORY[0x29EDB8DE8] array];
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](v21[0]);
  v13 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
  if (v13)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(__b[1] + 8 * v10);
      v2 = [v18 section];
      if (v2 != v19)
      {
        v16 = -[UITableViewAccessibility _visibleHeaderViewForSection:](v22, "_visibleHeaderViewForSection:", [v18 section]);
        if (v16)
        {
          location = -[UITableViewAccessibility accessibilityTableViewSectionElementAtSection:isHeader:](v22, [v18 section], 1);
          if (location)
          {
            [v20 addObject:location];
          }

          objc_storeStrong(&location, 0);
        }

        v3 = -[UITableViewAccessibility _visibleFooterViewForSection:](v22, "_visibleFooterViewForSection:", [v18 section]);
        v4 = v16;
        v16 = v3;
        *&v5 = MEMORY[0x29EDC9740](v4).n128_u64[0];
        if (v16)
        {
          v14 = -[UITableViewAccessibility accessibilityTableViewSectionElementAtSection:isHeader:](v22, [v18 section], 0);
          if (v14)
          {
            [v20 addObject:v14];
          }

          objc_storeStrong(&v14, 0);
        }

        v19 = [v18 section];
        objc_storeStrong(&v16, 0);
      }

      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  v7 = MEMORY[0x29EDC9748](v20);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v21, 0);

  return v7;
}

- (uint64_t)_accessibilitySkipItemsInSectionList:(void *)a3 view:
{
  v29 = *MEMORY[0x29EDCA608];
  v26 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v24 = 0;
  objc_storeStrong(&v24, a3);
  if (v26)
  {
    v22 = 0;
    memset(__b, 0, sizeof(__b));
    v12 = MEMORY[0x29EDC9748](location);
    v13 = [v12 countByEnumeratingWithState:__b objects:v28 count:16];
    if (v13)
    {
      v9 = *__b[2];
      v10 = 0;
      v11 = v13;
      while (1)
      {
        v8 = v10;
        if (*__b[2] != v9)
        {
          objc_enumerationMutation(v12);
        }

        v21 = *(__b[1] + 8 * v10);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v18 = 0;
        v7 = 0;
        if (isKindOfClass)
        {
          v19 = [(UITableViewSectionElement *)v21 accessibilityChildren];
          v18 = 1;
          v7 = [v19 count] == 1;
        }

        if (v18)
        {
          MEMORY[0x29EDC9740](v19);
        }

        if (v7)
        {
          v5 = [(UITableViewSectionElement *)v21 accessibilityChildren];
          v17 = [v5 firstObject];
          MEMORY[0x29EDC9740](v5);
          objc_opt_class();
          v15 = 0;
          v6 = 0;
          if (objc_opt_isKindOfClass())
          {
            v16 = [(UIAccessibilityElementMockView *)v17 view];
            v15 = 1;
            v6 = v16 == v24;
          }

          if (v15)
          {
            MEMORY[0x29EDC9740](v16);
          }

          if (v6)
          {
            v22 = 1;
            v23 = 2;
          }

          else
          {
            v23 = 0;
          }

          objc_storeStrong(&v17, 0);
          if (v23)
          {
            break;
          }
        }

        ++v10;
        if (v8 + 1 >= v11)
        {
          v10 = 0;
          v11 = [v12 countByEnumeratingWithState:__b objects:v28 count:16];
          if (!v11)
          {
            goto LABEL_22;
          }
        }
      }
    }

    else
    {
LABEL_22:
      v23 = 0;
    }

    MEMORY[0x29EDC9740](v12);
    v27 = v22 & 1;
    v23 = 1;
  }

  else
  {
    v27 = 0;
    v23 = 1;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&location, 0);
  return v27 & 1;
}

- (uint64_t)_accessibilityCheckForAlreadyExistingCellElementForCell:(void *)a3 inItems:
{
  v11 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v11 isAccessibilityOpaqueElementProvider] & 1) == 0)
    {
      v7 = MEMORY[0x29EDC9748](location);
      v6 = [v11 indexPathForCell:v7];
      if (v6)
      {
        v5 = [v11 _accessibilityTableViewCellElementForIndexPath:v6];
        v12 = [v9 containsObject:v5] & 1;
        v8 = 1;
        objc_storeStrong(&v5, 0);
      }

      else
      {
        v12 = 0;
        v8 = 1;
      }

      objc_storeStrong(&v6, 0);
      objc_storeStrong(&v7, 0);
    }

    else
    {
      v12 = 0;
      v8 = 1;
    }
  }

  else
  {
    v12 = 0;
    v8 = 1;
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);
  return v12 & 1;
}

- (id)automationElements
{
  v37 = *MEMORY[0x29EDCA608];
  v34 = self;
  v33[1] = a2;
  v32.receiver = self;
  v32.super_class = UITableViewAccessibility;
  v22 = [(UITableViewAccessibility *)&v32 automationElements];
  v23 = [v22 mutableCopy];
  v30 = 0;
  if (v23)
  {
    v2 = MEMORY[0x29EDC9748](v23);
  }

  else
  {
    v31 = [MEMORY[0x29EDB8DE8] array];
    v30 = 1;
    v2 = MEMORY[0x29EDC9748](v31);
  }

  v33[0] = v2;
  if (v30)
  {
    MEMORY[0x29EDC9740](v31);
  }

  MEMORY[0x29EDC9740](v23);
  MEMORY[0x29EDC9740](v22);
  v20 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v21 = [(UITableViewAccessibility *)v34 subviews];
  v29 = [v20 initWithArray:?];
  *&v3 = MEMORY[0x29EDC9740](v21).n128_u64[0];
  while ([v29 count])
  {
    location = [v29 firstObject];
    [v29 removeObjectAtIndex:0];
    if ([location isAccessibilityElement] & 1) != 0 && (objc_msgSend(location, "_accessibilityViewIsVisible"))
    {
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x29EDC9748](v33[0]);
      v19 = [obj countByEnumeratingWithState:__b objects:v36 count:16];
      if (v19)
      {
        v15 = *__b[2];
        v16 = 0;
        v17 = v19;
        while (1)
        {
          v14 = v16;
          if (*__b[2] != v15)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(__b[1] + 8 * v16);
          if (v27 != location)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [location _accessibilityIsViewDescendantOfElement:v27];
            }
          }

          ++v16;
          if (v14 + 1 >= v17)
          {
            v16 = 0;
            v17 = [obj countByEnumeratingWithState:__b objects:v36 count:16];
            if (!v17)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x29EDC9740](obj);
      if ((-[UITableViewAccessibility _accessibilitySkipItemsInSectionList:view:](v34, v33[0], location) & 1) == 0 && (-[UITableViewAccessibility _accessibilityCheckForAlreadyExistingCellElementForCell:inItems:](v34, location, v33[0]) & 1) == 0 && ([v33[0] containsObject:location] & 1) == 0)
      {
        [v33[0] addObject:location];
      }
    }

    else
    {
      NSClassFromString(&cfstr_Uiswipeactionp_0.isa);
      if (objc_opt_isKindOfClass())
      {
        memset(v24, 0, sizeof(v24));
        v12 = [location _accessibleSubviews];
        v13 = [v12 countByEnumeratingWithState:v24 objects:v35 count:16];
        if (v13)
        {
          v9 = *v24[2];
          v10 = 0;
          v11 = v13;
          while (1)
          {
            v8 = v10;
            if (*v24[2] != v9)
            {
              objc_enumerationMutation(v12);
            }

            v25 = *(v24[1] + 8 * v10);
            if (([v33[0] containsObject:v25] & 1) == 0)
            {
              [v33[0] axSafelyAddObjectsFromArray:v25];
            }

            ++v10;
            if (v8 + 1 >= v11)
            {
              v10 = 0;
              v11 = [v12 countByEnumeratingWithState:v24 objects:v35 count:16];
              if (!v11)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x29EDC9740](v12);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v6 = v29;
          v7 = [location subviews];
          [v6 axSafelyAddObjectsFromArray:?];
          MEMORY[0x29EDC9740](v7);
        }
      }
    }

    objc_storeStrong(&location, 0);
  }

  v5 = MEMORY[0x29EDC9748](v33[0]);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v33, 0);

  return v5;
}

- (id)_accessibilityUserTestingVisibleCells
{
  v18 = *MEMORY[0x29EDCA608];
  v16 = self;
  v15[1] = a2;
  v15[0] = [(UITableViewAccessibility *)self safeValueForKey:@"indexPathsForVisibleRows"];
  v14 = [MEMORY[0x29EDB8DE8] array];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](v15[0]);
  v9 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(__b[1] + 8 * v6);
      v11 = [(UITableViewAccessibility *)v16 globalRowForRowAtIndexPath:v13];
      location = [(UITableViewAccessibility *)v16 accessibilityTableViewCellElementAtGlobalRow:v11];
      if (location)
      {
        [v14 addObject:location];
      }

      objc_storeStrong(&location, 0);
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  v3 = MEMORY[0x29EDC9748](v14);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v15, 0);

  return v3;
}

- (void)_setAccessibilitySearchTableViewVisible
{
  v2[2] = self;
  v2[1] = a2;
  v2[0] = [(UITableViewAccessibility *)self _accessibilityInternalData];
  [(_AXTableViewInternal *)v2[0] setSearchTableViewVisible:?];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  objc_storeStrong(v2, 0);
}

- (void)_setAccessibilitySearchTableViewHidden
{
  v2[2] = self;
  v2[1] = a2;
  v2[0] = [(UITableViewAccessibility *)self _accessibilityInternalData];
  [(_AXTableViewInternal *)v2[0] setSearchTableViewVisible:?];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  objc_storeStrong(v2, 0);
}

- (void)_setAccessibilitySearchControllerDimmingViewVisible
{
  v2[2] = self;
  v2[1] = a2;
  v2[0] = [(UITableViewAccessibility *)self _accessibilityInternalData];
  [(_AXTableViewInternal *)v2[0] setSearchControllerDimmingViewVisible:?];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  objc_storeStrong(v2, 0);
}

- (void)_setAccessibilitySearchControllerDimmingViewHidden
{
  v2[2] = self;
  v2[1] = a2;
  v2[0] = [(UITableViewAccessibility *)self _accessibilityInternalData];
  [(_AXTableViewInternal *)v2[0] setSearchControllerDimmingViewVisible:?];
  objc_storeStrong(v2, 0);
}

- (id)_accessibilityViewChildrenWithOptions:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [location[0] shouldIncludeKeyboardObscuredElements];
  [location[0] setShouldIncludeKeyboardObscuredElements:1];
  v5.receiver = v9;
  v5.super_class = UITableViewAccessibility;
  v6 = [(UITableViewAccessibility *)&v5 _accessibilityViewChildrenWithOptions:location[0]];
  [location[0] setShouldIncludeKeyboardObscuredElements:v7 & 1];
  v4 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_accessibilitySortedElementsWithin
{
  v9 = self;
  v8[1] = a2;
  v7[1] = MEMORY[0x29EDCA5F8];
  v7[2] = 3221225472;
  v7[3] = __62__UITableViewAccessibility__accessibilitySortedElementsWithin__block_invoke;
  v7[4] = &unk_29F30CEB0;
  v8[0] = MEMORY[0x29EDC9748](self);
  if ((__62__UITableViewAccessibility__accessibilitySortedElementsWithin__block_invoke)())
  {
    v6.receiver = v9;
    v6.super_class = UITableViewAccessibility;
    v7[0] = [(UITableViewAccessibility *)&v6 _accessibilitySortedElementsWithin];
    v10 = [(UITableViewAccessibility *)v9 _accessibilitySortedElementsWithinPreservingFloatingHeader:v7[0] sortedElements:?];
    v5 = 1;
    objc_storeStrong(v7, 0);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(v8, 0);
  if (!v5)
  {
    v4 = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
    v10 = [(UITableViewAccessibility *)v9 _accessibilitySortedElementsWithinWithOptions:v4];
    v5 = 1;
    objc_storeStrong(&v4, 0);
  }

  v2 = v10;

  return v2;
}

BOOL __62__UITableViewAccessibility__accessibilitySortedElementsWithin__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &_ReloadTimer_block_invoke_2_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_715);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilitySortedElementsWithin);
  Implementation = 0;
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v12 = AXLogCommon();
    v11 = 17;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      log = v12;
      type = v11;
      v8 = NSStringFromSelector(sel__accessibilitySortedElementsWithin);
      v4 = MEMORY[0x29EDC9748](v8);
      v10 = v4;
      v2 = objc_opt_class();
      v7 = NSStringFromClass(v2);
      v9 = MEMORY[0x29EDC9748](v7);
      __os_log_helper_16_2_2_8_64_8_64(v19, v4, v9);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v19, 0x16u);
      MEMORY[0x29EDC9740](v7);
      MEMORY[0x29EDC9740](v8);
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  return Implementation != _ReloadTimer_block_invoke_2_BaseImplementation;
}

void __62__UITableViewAccessibility__accessibilitySortedElementsWithin__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilitySortedElementsWithin);
  if (InstanceMethod)
  {
    _ReloadTimer_block_invoke_2_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel__accessibilitySortedElementsWithin);
      v3 = MEMORY[0x29EDC9748](v7);
      v9 = v3;
      v2 = objc_opt_class();
      v6 = NSStringFromClass(v2);
      v8 = MEMORY[0x29EDC9748](v6);
      __os_log_helper_16_2_2_8_64_8_64(v15, v3, v8);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v15, 0x16u);
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v8, 0);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v11, 0);
  }
}

- (id)_accessibilitySortedElementsWithinPreservingFloatingHeader:(void *)a3 sortedElements:
{
  v34 = *MEMORY[0x29EDCA608];
  v31 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v29 = 0;
  objc_storeStrong(&v29, a3);
  if (v31)
  {
    v27 = [v29 mutableCopy];
    v26 = [v31 safeValueForKey:@"_index"];
    if (v26)
    {
      [v27 removeObject:v26];
    }

    v25 = [MEMORY[0x29EDB8E20] set];
    memset(__b, 0, sizeof(__b));
    v11 = [v31 indexPathsForVisibleRows];
    v12 = [v11 countByEnumeratingWithState:__b objects:v33 count:16];
    if (v12)
    {
      v8 = *__b[2];
      v9 = 0;
      v10 = v12;
      while (1)
      {
        v7 = v9;
        if (*__b[2] != v8)
        {
          objc_enumerationMutation(v11);
        }

        v24 = *(__b[1] + 8 * v9);
        v22 = [v31 headerViewForSection:{objc_msgSend(v24, "section")}];
        if (v22 && ([v22 floating] & 1) != 0 && v22 != location)
        {
          [v25 addObject:v22];
        }

        objc_storeStrong(&v22, 0);
        ++v9;
        if (v7 + 1 >= v10)
        {
          v9 = 0;
          v10 = [v11 countByEnumeratingWithState:__b objects:v33 count:16];
          if (!v10)
          {
            break;
          }
        }
      }
    }

    *&v3 = MEMORY[0x29EDC9740](v11).n128_u64[0];
    if ([v25 count])
    {
      v21 = [MEMORY[0x29EDBA048] indexSet];
      v6 = v27;
      v14 = MEMORY[0x29EDCA5F8];
      v15 = -1073741824;
      v16 = 0;
      v17 = __102__UITableViewAccessibility__accessibilitySortedElementsWithinPreservingFloatingHeader_sortedElements___block_invoke;
      v18 = &unk_29F30DC88;
      v19 = MEMORY[0x29EDC9748](v25);
      v20 = MEMORY[0x29EDC9748](v21);
      [v6 enumerateObjectsUsingBlock:&v14];
      [v27 removeObjectsAtIndexes:v21];
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v21, 0);
    }

    if (v26)
    {
      [v27 insertObject:v26 atIndex:0];
    }

    v32 = MEMORY[0x29EDC9748](v27);
    v28 = 1;
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
  }

  else
  {
    v32 = 0;
    v28 = 1;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&location, 0);
  v4 = v32;

  return v4;
}

- (id)_accessibilitySortedElementsWithinWithOptions:(id)a3
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = MEMORY[0x29EDCA5F8];
  v18 = -1073741824;
  v19 = 0;
  v20 = __74__UITableViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke;
  v21 = &unk_29F30CEB0;
  v22 = MEMORY[0x29EDC9748](v25);
  v23 = (__74__UITableViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke)();
  v10[1] = MEMORY[0x29EDCA5F8];
  v11 = -1073741824;
  v12 = 0;
  v13 = __74__UITableViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke_721;
  v14 = &unk_29F30CEB0;
  v15 = MEMORY[0x29EDC9748](v25);
  v16 = (__74__UITableViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke_721)();
  v10[0] = 0;
  if (v23 & 1) == 0 || (v16)
  {
    v9.receiver = v25;
    v9.super_class = UITableViewAccessibility;
    v5 = [(UITableViewAccessibility *)&v9 _accessibilitySortedElementsWithinWithOptions:location[0]];
    v6 = v10[0];
    v10[0] = v5;
    MEMORY[0x29EDC9740](v6);
  }

  else
  {
    v3 = [(UITableViewAccessibility *)v25 _accessibilitySortedElementsWithin];
    v4 = v10[0];
    v10[0] = v3;
    MEMORY[0x29EDC9740](v4);
  }

  v8 = [(UITableViewAccessibility *)v25 _accessibilitySortedElementsWithinPreservingFloatingHeader:v10[0] sortedElements:?];
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);

  return v8;
}

BOOL __74__UITableViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &_ReloadTimer_block_invoke_3_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_720);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilitySortedElementsWithin);
  Implementation = 0;
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v12 = AXLogCommon();
    v11 = 17;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      log = v12;
      type = v11;
      v8 = NSStringFromSelector(sel__accessibilitySortedElementsWithin);
      v4 = MEMORY[0x29EDC9748](v8);
      v10 = v4;
      v2 = objc_opt_class();
      v7 = NSStringFromClass(v2);
      v9 = MEMORY[0x29EDC9748](v7);
      __os_log_helper_16_2_2_8_64_8_64(v19, v4, v9);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v19, 0x16u);
      MEMORY[0x29EDC9740](v7);
      MEMORY[0x29EDC9740](v8);
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  return Implementation != _ReloadTimer_block_invoke_3_BaseImplementation;
}

void __74__UITableViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilitySortedElementsWithin);
  if (InstanceMethod)
  {
    _ReloadTimer_block_invoke_3_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel__accessibilitySortedElementsWithin);
      v3 = MEMORY[0x29EDC9748](v7);
      v9 = v3;
      v2 = objc_opt_class();
      v6 = NSStringFromClass(v2);
      v8 = MEMORY[0x29EDC9748](v6);
      __os_log_helper_16_2_2_8_64_8_64(v15, v3, v8);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v15, 0x16u);
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v8, 0);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v11, 0);
  }
}

BOOL __74__UITableViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke_721(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &_ReloadTimer_block_invoke_4_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_724);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilitySortedElementsWithinWithOptions_);
  Implementation = 0;
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v12 = AXLogCommon();
    v11 = 17;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      log = v12;
      type = v11;
      v8 = NSStringFromSelector(sel__accessibilitySortedElementsWithinWithOptions_);
      v4 = MEMORY[0x29EDC9748](v8);
      v10 = v4;
      v2 = objc_opt_class();
      v7 = NSStringFromClass(v2);
      v9 = MEMORY[0x29EDC9748](v7);
      __os_log_helper_16_2_2_8_64_8_64(v19, v4, v9);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v19, 0x16u);
      MEMORY[0x29EDC9740](v7);
      MEMORY[0x29EDC9740](v8);
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  return Implementation != _ReloadTimer_block_invoke_4_BaseImplementation;
}

void __74__UITableViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke_2_722(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilitySortedElementsWithinWithOptions_);
  if (InstanceMethod)
  {
    _ReloadTimer_block_invoke_4_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel__accessibilitySortedElementsWithinWithOptions_);
      v3 = MEMORY[0x29EDC9748](v7);
      v9 = v3;
      v2 = objc_opt_class();
      v6 = NSStringFromClass(v2);
      v8 = MEMORY[0x29EDC9748](v6);
      __os_log_helper_16_2_2_8_64_8_64(v15, v3, v8);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v15, 0x16u);
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v8, 0);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v11, 0);
  }
}

void __102__UITableViewAccessibility__accessibilitySortedElementsWithinPreservingFloatingHeader_sortedElements___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x29EDCA608];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = a3;
  v17 = a4;
  v16 = a1;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](*(a1 + 32));
  v13 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v13)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v13;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(__b[1] + 8 * v7);
      if ([location[0] _accessibilityIsDescendantOfElement:{v15, v8}])
      {
        break;
      }

      ++v7;
      v8 = v4;
      if (v5 + 1 >= v4)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
        if (!v8)
        {
          goto LABEL_9;
        }
      }
    }

    [*(a1 + 40) addIndex:v18];
  }

LABEL_9:
  MEMORY[0x29EDC9740](obj);
  objc_storeStrong(location, 0);
}

- (int64_t)accessibilityElementCount
{
  v4 = self;
  location[1] = a2;
  if ([(UITableViewAccessibility *)self isAccessibilityOpaqueElementProvider])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  location[0] = [(UITableViewAccessibility *)v4 _accessibilityInternalData];
  if (([(UITableViewAccessibility *)v4 _accessibilityIsSearchTableVisible]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(_AXTableViewInternal *)location[0] accessibleElementCount];
  }

  objc_storeStrong(location, 0);
  return v5;
}

uint64_t __64__UITableViewAccessibility__accessibilityInitializeInternalData__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _delegateWantsHeaderForSection:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __64__UITableViewAccessibility__accessibilityInitializeInternalData__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _delegateWantsFooterForSection:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)indexOfAccessibilityElement:(id)a3
{
  v64 = *MEMORY[0x29EDCA608];
  v53 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v51 = [(UITableViewAccessibility *)v53 _accessibilityInternalData];
  v50 = MEMORY[0x29EDC9748](location[0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(UITableViewAccessibility *)v53 accessibilityTableViewCellAccessibilityElementForTableViewCell:v50];
    v4 = v50;
    v50 = v3;
    MEMORY[0x29EDC9740](v4);
  }

  objc_opt_class();
  v49 = objc_opt_isKindOfClass() & 1;
  objc_opt_class();
  v48 = objc_opt_isKindOfClass() & 1;
  if ((v49 & 1) == 0 && (v48 & 1) == 0)
  {
    goto LABEL_30;
  }

  memset(__b, 0, sizeof(__b));
  obj = [(_AXTableViewInternal *)v51 indexMap];
  v31 = [obj countByEnumeratingWithState:__b objects:v63 count:16];
  if (v31)
  {
    v27 = *__b[2];
    v28 = 0;
    v29 = v31;
    while (1)
    {
      v26 = v28;
      if (*__b[2] != v27)
      {
        objc_enumerationMutation(obj);
      }

      if (v47 = *(__b[1] + 8 * v28), v23 = -[_AXTableViewInternal indexMap](v51), v45 = [v23 objectForKey:v47], *&v5 = MEMORY[0x29EDC9740](v23).n128_u64[0], v44 = objc_msgSend(v45, "objectForKey:", @"type", v5), v24 = objc_msgSend(v45, "objectForKey:", @"offset"), v25 = objc_msgSend(v24, "integerValue"), *&v6 = MEMORY[0x29EDC9740](v24).n128_u64[0], v43 = v25, v41 = 0, v42 = 0, v41 = objc_msgSend(v47, "rangeValue", v6), v42 = v7, (v48) && (v22 = v43, v22 == -[UITableViewSectionElement section](v50)) && ((objc_msgSend(v44, "isEqualToString:", @"header") & 1) != 0 && (-[UITableViewSectionElement isHeader](v50) & 1) != 0 || (objc_msgSend(v44, "isEqualToString:", @"footer") & 1) != 0 && (-[UITableViewSectionElement isHeader](v50) & 1) == 0))
      {
        v54 = v41;
        v40 = 1;
      }

      else
      {
        if ((v49 & 1) == 0 || ([v44 isEqualToString:@"row"] & 1) == 0)
        {
          goto LABEL_24;
        }

        v39 = [(UITableViewCellAccessibilityElement *)v50 indexPath];
        v38 = [(UITableViewAccessibility *)v53 globalRowForRowAtIndexPath:v39];
        v56 = v43;
        v55 = v42;
        v57 = v43;
        v58 = v42;
        v36 = v43;
        v37 = v42;
        v60 = v43;
        v61 = v42;
        v59 = v38;
        v21 = 0;
        if (v38 >= v43)
        {
          v21 = v59 - v60 < v61;
        }

        if (v21)
        {
          v20 = v41;
          v54 = v20 + [v39 row];
          v40 = 1;
        }

        else
        {
          v40 = 0;
        }

        objc_storeStrong(&v39, 0);
        if (!v40)
        {
LABEL_24:
          v40 = 0;
        }
      }

      objc_storeStrong(&v44, 0);
      objc_storeStrong(&v45, 0);
      if (v40)
      {
        break;
      }

      ++v28;
      if (v26 + 1 >= v29)
      {
        v28 = 0;
        v29 = [obj countByEnumeratingWithState:__b objects:v63 count:16];
        if (!v29)
        {
          goto LABEL_28;
        }
      }
    }
  }

  else
  {
LABEL_28:
    v40 = 0;
  }

  MEMORY[0x29EDC9740](obj);
  if (!v40)
  {
LABEL_30:
    v17 = v50;
    v18 = [(UITableViewAccessibility *)v53 safeValueForKey:@"_countLabel"];
    v19 = [v17 isEqual:?];
    MEMORY[0x29EDC9740](v18);
    if ((v19 & 1) == 0)
    {
      goto LABEL_43;
    }

    memset(v34, 0, sizeof(v34));
    v15 = [(_AXTableViewInternal *)v51 indexMap];
    v16 = [v15 countByEnumeratingWithState:v34 objects:v62 count:16];
    if (v16)
    {
      v12 = *v34[2];
      v13 = 0;
      v14 = v16;
      while (1)
      {
        v11 = v13;
        if (*v34[2] != v12)
        {
          objc_enumerationMutation(v15);
        }

        v35 = *(v34[1] + 8 * v13);
        v10 = [(_AXTableViewInternal *)v51 indexMap];
        v33 = [v10 objectForKey:v35];
        *&v8 = MEMORY[0x29EDC9740](v10).n128_u64[0];
        v32 = [v33 objectForKey:{@"type", v8}];
        if ([v32 isEqualToString:@"tableCount"])
        {
          v54 = [v35 rangeValue];
          v40 = 1;
        }

        else
        {
          v40 = 0;
        }

        objc_storeStrong(&v32, 0);
        objc_storeStrong(&v33, 0);
        if (v40)
        {
          break;
        }

        ++v13;
        if (v11 + 1 >= v14)
        {
          v13 = 0;
          v14 = [v15 countByEnumeratingWithState:v34 objects:v62 count:16];
          if (!v14)
          {
            goto LABEL_41;
          }
        }
      }
    }

    else
    {
LABEL_41:
      v40 = 0;
    }

    MEMORY[0x29EDC9740](v15);
    if (!v40)
    {
LABEL_43:
      v54 = 0x7FFFFFFFFFFFFFFFLL;
      v40 = 1;
    }
  }

  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(location, 0);
  return v54;
}

- (id)_delegateViewForHeaderInSection:(int64_t)a3
{
  v20 = self;
  v19[2] = a2;
  v19[1] = a3;
  v18.receiver = self;
  v18.super_class = UITableViewAccessibility;
  v19[0] = [(UITableViewAccessibility *)&v18 _delegateViewForHeaderInSection:a3];
  [v19[0] setShouldGroupAccessibilityChildren:1];
  v17 = [(UITableViewAccessibility *)v20 _accessibilityValueForKey:@"HeaderUpdateTimer"];
  if (!v17)
  {
    v9 = objc_alloc(MEMORY[0x29EDBD6A0]);
    v8 = MEMORY[0x29EDCA578];
    v3 = MEMORY[0x29EDCA578];
    v10 = v8;
    v17 = [v9 initWithTargetSerialQueue:?];
    MEMORY[0x29EDC9740](0);
    *&v4 = MEMORY[0x29EDC9740](v10).n128_u64[0];
    [(UITableViewAccessibility *)v20 _accessibilitySetRetainedValue:v17 forKey:@"HeaderUpdateTimer", v4];
  }

  [v17 cancel];
  v6 = v17;
  v11 = MEMORY[0x29EDCA5F8];
  v12 = -1073741824;
  v13 = 0;
  v14 = __60__UITableViewAccessibility__delegateViewForHeaderInSection___block_invoke;
  v15 = &unk_29F30C7C8;
  v16 = MEMORY[0x29EDC9748](v19[0]);
  [v6 afterDelay:&v11 processBlock:0.5];
  v7 = MEMORY[0x29EDC9748](v19[0]);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v19, 0);

  return v7;
}

id __60__UITableViewAccessibility__delegateViewForHeaderInSection___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _accessibilityFindDescendant:{&__block_literal_global_755, a1, a1}];

  return v1;
}

uint64_t __60__UITableViewAccessibility__delegateViewForHeaderInSection___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = 0;
  v3 = 0;
  if ([location[0] isAccessibilityElement])
  {
    v5 = [location[0] accessibilityUserDefinedTraits];
    v4 = 1;
    v3 = v5 == 0;
  }

  if (v4)
  {
    MEMORY[0x29EDC9740](v5);
  }

  if (v3)
  {
    [location[0] _setAccessibilityAdditionalTraitsBlock:&__block_literal_global_758];
  }

  objc_storeStrong(location, 0);
  return 0;
}

- (id)_delegateViewForFooterInSection:(int64_t)a3
{
  v6[3] = self;
  v6[2] = a2;
  v6[1] = a3;
  v5.receiver = self;
  v5.super_class = UITableViewAccessibility;
  v6[0] = [(UITableViewAccessibility *)&v5 _delegateViewForFooterInSection:a3];
  [v6[0] setShouldGroupAccessibilityChildren:1];
  v4 = MEMORY[0x29EDC9748](v6[0]);
  objc_storeStrong(v6, 0);

  return v4;
}

- (void)_updateDropTargetAppearanceWithTargetIndexPath:(id)a3 dropProposal:(id)a4 dropSession:(id)a5
{
  v72 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v70 = 0;
  objc_storeStrong(&v70, a4);
  v69 = 0;
  objc_storeStrong(&v69, a5);
  v67 = 0;
  objc_opt_class();
  v59 = 0;
  v60 = &v59;
  v61 = 838860800;
  v62 = 48;
  v63 = __Block_byref_object_copy__22;
  v64 = __Block_byref_object_dispose__22;
  v65 = 0;
  v54 = MEMORY[0x29EDCA5F8];
  v55 = 3221225472;
  v56 = __100__UITableViewAccessibility__updateDropTargetAppearanceWithTargetIndexPath_dropProposal_dropSession___block_invoke;
  v57 = &unk_29F30CC70;
  v58[1] = &v59;
  v58[0] = MEMORY[0x29EDC9748](v72);
  AXPerformSafeBlock();
  v53 = MEMORY[0x29EDC9748](v60[5]);
  objc_storeStrong(v58, 0);
  _Block_object_dispose(&v59, 8);
  objc_storeStrong(&v65, 0);
  v66 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v53);
  if (v67)
  {
    abort();
  }

  v52 = MEMORY[0x29EDC9748](v66);
  objc_storeStrong(&v66, 0);
  v68 = v52;
  v51.receiver = v72;
  v51.super_class = UITableViewAccessibility;
  [(UITableViewAccessibility *)&v51 _updateDropTargetAppearanceWithTargetIndexPath:location[0] dropProposal:v70 dropSession:v69];
  v49 = 0;
  objc_opt_class();
  v41 = 0;
  v42 = &v41;
  v43 = 838860800;
  v44 = 48;
  v45 = __Block_byref_object_copy__22;
  v46 = __Block_byref_object_dispose__22;
  v47 = 0;
  v35 = MEMORY[0x29EDCA5F8];
  v36 = -1073741824;
  v37 = 0;
  v38 = __100__UITableViewAccessibility__updateDropTargetAppearanceWithTargetIndexPath_dropProposal_dropSession___block_invoke_2;
  v39 = &unk_29F30CC70;
  v40[1] = &v41;
  v40[0] = MEMORY[0x29EDC9748](v72);
  AXPerformSafeBlock();
  v34 = MEMORY[0x29EDC9748](v42[5]);
  objc_storeStrong(v40, 0);
  _Block_object_dispose(&v41, 8);
  objc_storeStrong(&v47, 0);
  v48 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v34);
  if (v49)
  {
    abort();
  }

  v33 = MEMORY[0x29EDC9748](v48);
  objc_storeStrong(&v48, 0);
  v50 = v33;
  if (([v68 isEqual:v33] & 1) == 0 && v68 && v50)
  {
    v30 = 0;
    objc_opt_class();
    v22 = 0;
    v23 = &v22;
    v24 = 838860800;
    v25 = 48;
    v26 = __Block_byref_object_copy__22;
    v27 = __Block_byref_object_dispose__22;
    v28 = 0;
    v16 = MEMORY[0x29EDCA5F8];
    v17 = -1073741824;
    v18 = 0;
    v19 = __100__UITableViewAccessibility__updateDropTargetAppearanceWithTargetIndexPath_dropProposal_dropSession___block_invoke_3;
    v20 = &unk_29F30CC70;
    v21[1] = &v22;
    v21[0] = MEMORY[0x29EDC9748](v72);
    AXPerformSafeBlock();
    v15 = MEMORY[0x29EDC9748](v23[5]);
    objc_storeStrong(v21, 0);
    _Block_object_dispose(&v22, 8);
    objc_storeStrong(&v28, 0);
    v29 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v15);
    if (v30)
    {
      abort();
    }

    v14 = MEMORY[0x29EDC9748](v29);
    objc_storeStrong(&v29, 0);
    v31 = v14;
    if (v14)
    {
      v13 = [(UITableViewAccessibility *)v72 globalRowForRowAtIndexPath:v31];
      v12 = [(UITableViewAccessibility *)v72 globalRowForRowAtIndexPath:v68];
      v11 = [(UITableViewAccessibility *)v72 globalRowForRowAtIndexPath:v50];
      v10 = v11 > v12;
      v9 = [(UITableViewAccessibility *)v72 _accessibilitySwappedWithRowForInitialGlobalRow:v13 oldGlobalRow:v12 globalRow:v11];
      v8 = [(UITableViewAccessibility *)v72 _accessibilityReorderMessageForNewIndexPath:v50 swappedWithRow:v9 movingDown:v11 > v12];
      argument = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v8];
      [argument setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD958]];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument);
      objc_storeStrong(&argument, 0);
      objc_storeStrong(&v8, 0);
      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    objc_storeStrong(&v31, 0);
  }

  else
  {
    v32 = 1;
  }

  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v68, 0);
  objc_storeStrong(&v69, 0);
  objc_storeStrong(&v70, 0);
  objc_storeStrong(location, 0);
}

double __100__UITableViewAccessibility__updateDropTargetAppearanceWithTargetIndexPath_dropProposal_dropSession___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _gapIndexPath];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

double __100__UITableViewAccessibility__updateDropTargetAppearanceWithTargetIndexPath_dropProposal_dropSession___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _gapIndexPath];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

double __100__UITableViewAccessibility__updateDropTargetAppearanceWithTargetIndexPath_dropProposal_dropSession___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) _draggedIndexPath];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (uint64_t)_accessibilitySwappedWithRowForInitialGlobalRow:(uint64_t)a3 oldGlobalRow:(uint64_t)a4 globalRow:
{
  if (!a1)
  {
    return 0;
  }

  v5 = a3;
  if (a2 != a4)
  {
    if (a4 >= a3)
    {
      if (a4 > a3)
      {
        if (a2 <= a4)
        {
          return a4;
        }

        else
        {
          return a3;
        }
      }
    }

    else if (a2 >= a4)
    {
      return a3 - 1;
    }

    else
    {
      return a4 + 1;
    }
  }

  return v5;
}

- (id)_accessibilityReorderMessageForNewIndexPath:(uint64_t)a3 swappedWithRow:(char)a4 movingDown:
{
  v74 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v72 = a3;
  v71 = a4;
  if (v74)
  {
    v69 = [v74 globalRowForRowAtIndexPath:location];
    v68 = [v74 indexPathForRowAtGlobalRow:v72];
    v61 = 0;
    v62 = &v61;
    v63 = 838860800;
    v64 = 48;
    v65 = __Block_byref_object_copy__22;
    v66 = __Block_byref_object_dispose__22;
    v67 = [v74 cellForRowAtIndexPath:v68];
    if (([v62[5] isAccessibilityElement] & 1) == 0)
    {
      v4 = v62[5];
      v55[1] = MEMORY[0x29EDCA5F8];
      v56 = -1073741824;
      v57 = 0;
      v58 = __98__UITableViewAccessibility__accessibilityReorderMessageForNewIndexPath_swappedWithRow_movingDown___block_invoke;
      v59 = &unk_29F30CC98;
      v60 = &v61;
      [v4 accessibilityEnumerateContainerElementsUsingBlock:?];
    }

    v55[0] = [v62[5] _accessibilityAXAttributedLabel];
    v54 = [v62[5] accessibilityLanguage];
    v53 = 0;
    if ([v55[0] length])
    {
      if (v71)
      {
        v27 = MEMORY[0x29EDBA0F8];
        v26 = accessibilityLocalizedString(@"row.reorder.moved.below");
        v14 = [v27 stringWithFormat:v55[0]];
        v15 = v53;
        v53 = v14;
        MEMORY[0x29EDC9740](v15);
        v11 = MEMORY[0x29EDC9740](v26).n128_u64[0];
      }

      else
      {
        v25 = MEMORY[0x29EDBA0F8];
        v24 = accessibilityLocalizedString(@"row.reorder.moved.above");
        v16 = [v25 stringWithFormat:v55[0]];
        v17 = v53;
        v53 = v16;
        MEMORY[0x29EDC9740](v17);
        v11 = MEMORY[0x29EDC9740](v24).n128_u64[0];
      }
    }

    else if (v69 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v52 = 0;
      v50 = 0;
      v41 = [location section];
      v40 = 0;
      if (v41 < [(UITableViewAccessibility *)v74 _axNumberOfSections])
      {
        v51 = [v74 dataSource];
        v50 = 1;
        v40 = objc_opt_respondsToSelector();
      }

      if (v50)
      {
        MEMORY[0x29EDC9740](v51);
      }

      if (v40)
      {
        v39 = [v74 dataSource];
        v5 = [v39 tableView:v74 titleForHeaderInSection:{objc_msgSend(location, "section")}];
        v6 = v52;
        v52 = v5;
        MEMORY[0x29EDC9740](v6);
        MEMORY[0x29EDC9740](v39);
      }

      if ([v52 length])
      {
        v38 = MEMORY[0x29EDBA0F8];
        v37 = accessibilityLocalizedString(@"row.index.path.section.name");
        [location row];
        v36 = AXFormatInteger();
        v7 = [v38 stringWithFormat:v37, v52, v36];
        v8 = v53;
        v53 = v7;
        MEMORY[0x29EDC9740](v8);
        MEMORY[0x29EDC9740](v36);
        MEMORY[0x29EDC9740](v37);
      }

      else
      {
        v35 = MEMORY[0x29EDBA0F8];
        v34 = accessibilityLocalizedString(@"row.index.path");
        [location section];
        v33 = AXFormatInteger();
        [location row];
        v32 = AXFormatInteger();
        v9 = [v35 stringWithFormat:v34, v33, v32];
        v10 = v53;
        v53 = v9;
        MEMORY[0x29EDC9740](v10);
        MEMORY[0x29EDC9740](v32);
        MEMORY[0x29EDC9740](v33);
        MEMORY[0x29EDC9740](v34);
      }

      objc_storeStrong(&v52, 0);
    }

    else
    {
      v49 = [(UITableViewAccessibility *)v74 _axNumberOfSections];
      v48 = 0;
      v47 = 0;
      while (v48 < v49)
      {
        v47 += [v74 numberOfRowsInSection:v48++];
      }

      ++v69;
      v31 = MEMORY[0x29EDBA0F8];
      v30 = accessibilityLocalizedString(@"row.with.total.count");
      v29 = AXFormatInteger();
      v28 = AXFormatInteger();
      v12 = [v31 stringWithFormat:v30, v29, v28];
      v13 = v53;
      v53 = v12;
      MEMORY[0x29EDC9740](v13);
      MEMORY[0x29EDC9740](v28);
      MEMORY[0x29EDC9740](v29);
      v11 = MEMORY[0x29EDC9740](v30).n128_u64[0];
    }

    if ([v54 length])
    {
      v18 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v53];
      v19 = v53;
      v53 = v18;
      *&v20 = MEMORY[0x29EDC9740](v19).n128_u64[0];
      v45 = [v53 rangeOfString:{v55[0], v20}];
      v46 = v21;
      v44 = MEMORY[0x29EDC9748](*MEMORY[0x29EDBD918]);
      if ([v55[0] isAXAttributedString] & 1) != 0 && (objc_msgSend(v55[0], "hasAttribute:", *MEMORY[0x29EDBD950]))
      {
        objc_storeStrong(&v44, *MEMORY[0x29EDBD950]);
      }

      [v53 setAttribute:v54 forKey:v44 withRange:{v45, v46}];
      objc_storeStrong(&v44, 0);
    }

    v75 = MEMORY[0x29EDC9748](v53);
    v70 = 1;
    objc_storeStrong(&v53, 0);
    objc_storeStrong(&v54, 0);
    objc_storeStrong(v55, 0);
    _Block_object_dispose(&v61, 8);
    objc_storeStrong(&v67, 0);
    objc_storeStrong(&v68, 0);
  }

  else
  {
    v75 = 0;
    v70 = 1;
  }

  objc_storeStrong(&location, 0);
  v22 = v75;

  return v22;
}

void __98__UITableViewAccessibility__accessibilityReorderMessageForNewIndexPath_swappedWithRow_movingDown___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(a1[4] + 8) + 40), location[0]);
    *a4 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)_reorderPositionChangedForCell:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v13 = [(UITableViewAccessibility *)v17 safeValueForKey:@"_reorderingSupport"];
    v12 = [v13 safeValueForKey:@"_initialIndexPath"];
    v11 = [v13 safeValueForKey:?];
    v10.receiver = v17;
    v10.super_class = UITableViewAccessibility;
    [(UITableViewAccessibility *)&v10 _reorderPositionChangedForCell:location[0]];
    v9 = [v13 safeValueForKey:@"_targetIndexPath"];
    if ([v11 isEqual:v9])
    {
      v14 = 1;
    }

    else
    {
      v8 = [(UITableViewAccessibility *)v17 globalRowForRowAtIndexPath:v12];
      v7 = [(UITableViewAccessibility *)v17 globalRowForRowAtIndexPath:v9];
      v6 = [(UITableViewAccessibility *)v17 globalRowForRowAtIndexPath:v11];
      v5 = [(UITableViewAccessibility *)v17 _accessibilitySwappedWithRowForInitialGlobalRow:v8 oldGlobalRow:v6 globalRow:v7];
      argument = [(UITableViewAccessibility *)v17 _accessibilityReorderMessageForNewIndexPath:v9 swappedWithRow:v5 movingDown:v7 > v6];
      v3 = MEMORY[0x29EDC7EA8];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument);
      UIAccessibilityPostNotification(*v3, *MEMORY[0x29EDBDAA8]);
      objc_storeStrong(&argument, 0);
      v14 = 0;
    }

    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
  }

  else
  {
    v15.receiver = v17;
    v15.super_class = UITableViewAccessibility;
    [(UITableViewAccessibility *)&v15 _reorderPositionChangedForCell:location[0]];
    v14 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)_endReorderingForCell:(id)a3 wasCancelled:(BOOL)a4 animated:(BOOL)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v8 = a5;
  v7.receiver = v11;
  v7.super_class = UITableViewAccessibility;
  [(UITableViewAccessibility *)&v7 _endReorderingForCell:location[0] wasCancelled:a4 animated:a5];
  [(UITableViewAccessibility *)v11 _accessibilityClearChildren];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  objc_storeStrong(location, 0);
}

- (id)_accessibilityTableViewCellElementForIndexPath:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v9 = [(UITableViewAccessibility *)v12 _accessibilityInternalData];
    v7 = [(_AXTableViewInternal *)v9 children];
    v8 = [v7 objectForKey:location[0]];
    MEMORY[0x29EDC9740](v7);
    if (!v8)
    {
      v3 = objc_allocWithZone(UITableViewCellAccessibilityElement);
      v8 = [v3 initWithAccessibilityContainer:v12];
      MEMORY[0x29EDC9740](0);
      [(UITableViewCellAccessibilityElement *)v8 setIndexPath:?];
      v6 = [(_AXTableViewInternal *)v9 children];
      [v6 setObject:v8 forKey:location[0]];
      MEMORY[0x29EDC9740](v6);
    }

    v13 = MEMORY[0x29EDC9748](v8);
    v10 = 1;
    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v13 = 0;
    v10 = 1;
  }

  objc_storeStrong(location, 0);
  v4 = v13;

  return v4;
}

- (id)accessibilityTableViewCellElementAtGlobalRow:(int64_t)a3
{
  v6 = self;
  location[2] = a2;
  location[1] = a3;
  location[0] = [(UITableViewAccessibility *)self indexPathForRowAtGlobalRow:a3];
  if (location[0])
  {
    v7 = [(UITableViewAccessibility *)v6 _accessibilityTableViewCellElementForIndexPath:location[0]];
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v7;

  return v3;
}

- (id)_accessibilityFirstVisibleItem
{
  v9 = self;
  v8[1] = a2;
  if ([(UITableViewAccessibility *)self isAccessibilityOpaqueElementProvider])
  {
    [(UITableViewAccessibility *)v9 _accessibilitySetBoolValue:0 forKey:?];
    v8[0] = [(UITableViewAccessibility *)v9 _accessibilityFirstOpaqueElement];
    [(UITableViewAccessibility *)v9 _accessibilityRemoveValueForKey:@"AXTableViewOpaqueScrollsIntoViewKey"];
    v10 = MEMORY[0x29EDC9748](v8[0]);
    objc_storeStrong(v8, 0);
  }

  else
  {
    v7 = [(UITableViewAccessibility *)v9 indexPathsForVisibleRows];
    if ([v7 count])
    {
      v5 = [v7 objectAtIndex:0];
      v4 = [(UITableViewAccessibility *)v9 accessibilityTableViewCellElementAtGlobalRow:[(UITableViewAccessibility *)v9 globalRowForRowAtIndexPath:v5]];
      v10 = MEMORY[0x29EDC9748](v4);
      v6 = 1;
      objc_storeStrong(&v4, 0);
      objc_storeStrong(&v5, 0);
    }

    else
    {
      v10 = 0;
      v6 = 1;
    }

    objc_storeStrong(&v7, 0);
  }

  v2 = v10;

  return v2;
}

- (void)_accessibilityOpaqueElementScrollCleanup
{
  v2 = [(UITableViewAccessibility *)self safeValueForKey:@"_updateVisibleCellsImmediatelyIfNecessary", a2, self];

  v3 = v2;
}

- (id)accessibilityElementAtIndex:(int64_t)a3
{
  v47 = *MEMORY[0x29EDCA608];
  v38 = self;
  v37 = a2;
  v36 = a3;
  if ([(UITableViewAccessibility *)self isAccessibilityOpaqueElementProvider])
  {
    v39 = 0;
    goto LABEL_35;
  }

  if (([(UITableViewAccessibility *)v38 _accessibilitySearchTableViewVisible]& 1) != 0)
  {
    v39 = 0;
    goto LABEL_35;
  }

  v35 = [(UITableViewAccessibility *)v38 _accessibilityInternalData];
  if ([(_AXTableViewInternal *)v35 accessibleElementCount])
  {
    v33 = 0;
    v32 = 0;
    v41 = 0;
    v40 = 0;
    v42 = 0;
    v43 = 0;
    v31 = 0uLL;
    memset(__b, 0, sizeof(__b));
    obj = [(_AXTableViewInternal *)v35 indexMap];
    v23 = [obj countByEnumeratingWithState:__b objects:v46 count:16];
    if (v23)
    {
      v19 = *__b[2];
      v20 = 0;
      v21 = v23;
      while (1)
      {
        v18 = v20;
        if (*__b[2] != v19)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(__b[1] + 8 * v20);
        *&v28 = [v30 rangeValue];
        *(&v28 + 1) = v3;
        v31 = v28;
        v45 = v28;
        v44 = v36;
        v17 = 0;
        if (v36 >= v28)
        {
          v17 = v44 - v45 < *(&v45 + 1);
        }

        if (v17)
        {
          break;
        }

        ++v20;
        if (v18 + 1 >= v21)
        {
          v20 = 0;
          v21 = [obj countByEnumeratingWithState:__b objects:v46 count:16];
          if (!v21)
          {
            goto LABEL_17;
          }
        }
      }

      v15 = [(_AXTableViewInternal *)v35 indexMap];
      v27 = [v15 objectForKey:v30];
      *&v4 = MEMORY[0x29EDC9740](v15).n128_u64[0];
      v5 = [v27 objectForKey:{@"type", v4}];
      v6 = v33;
      v33 = v5;
      *&v7 = MEMORY[0x29EDC9740](v6).n128_u64[0];
      v16 = [v27 objectForKey:{@"offset", v7}];
      v32 = [v16 integerValue];
      MEMORY[0x29EDC9740](v16);
      v34 = 2;
      objc_storeStrong(&v27, 0);
    }

    else
    {
LABEL_17:
      v34 = 0;
    }

    *&v8 = MEMORY[0x29EDC9740](obj).n128_u64[0];
    if (!v33)
    {
      _AXAssert();
      v39 = 0;
      v34 = 1;
LABEL_33:
      objc_storeStrong(&v33, 0);
      goto LABEL_34;
    }

    v26 = 0;
    if ([v33 isEqualToString:{@"row", v8}])
    {
      v36 = v36 - v31 + v32;
      v9 = [(UITableViewAccessibility *)v38 accessibilityTableViewCellElementAtGlobalRow:v36];
      v10 = v26;
      v26 = v9;
      MEMORY[0x29EDC9740](v10);
LABEL_31:
      v39 = MEMORY[0x29EDC9748](v26);
      v34 = 1;
      goto LABEL_32;
    }

    if ([v33 isEqualToString:@"tableCount"])
    {
      v39 = [(UITableViewAccessibility *)v38 safeValueForKey:@"_countLabel"];
      v34 = 1;
    }

    else
    {
      v25 = [v33 isEqualToString:@"header"];
      v24 = [v33 isEqualToString:@"footer"];
      if ((v25 & 1) == 0 && (v24 & 1) == 0)
      {
        _AXAssert();
      }

      if (v25 & 1) != 0 || (v24)
      {
        v11 = [(UITableViewAccessibility *)v38 accessibilityTableViewSectionElementAtSection:v32 isHeader:v25 & 1];
        v12 = v26;
        v26 = v11;
        MEMORY[0x29EDC9740](v12);
        goto LABEL_31;
      }

      v39 = 0;
      v34 = 1;
    }

LABEL_32:
    objc_storeStrong(&v26, 0);
    goto LABEL_33;
  }

  v39 = 0;
  v34 = 1;
LABEL_34:
  objc_storeStrong(&v35, 0);
LABEL_35:
  v13 = v39;

  return v13;
}

- (uint64_t)_accessibilityDefaultTableViewCellScrollPosition
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (id)accessibilityElementForRow:(unint64_t)a3 andColumn:(unint64_t)a4
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = 0;
  if (a4 < [(UITableViewAccessibility *)self _axNumberOfSections]&& v11 < [(UITableViewAccessibility *)v13 numberOfRowsInSection:v10])
  {
    location = [MEMORY[0x29EDB9FE0] indexPathForRow:v11 inSection:v10];
    if ([(UITableViewAccessibility *)v13 isAccessibilityOpaqueElementProvider])
    {
      [(UITableViewAccessibility *)v13 scrollToRowAtIndexPath:location atScrollPosition:0 animated:0];
      v4 = [(UITableViewAccessibility *)v13 cellForRowAtIndexPath:location];
    }

    else
    {
      v4 = [(UITableViewAccessibility *)v13 _accessibilityTableViewCellElementForIndexPath:location];
    }

    v5 = v9;
    v9 = v4;
    MEMORY[0x29EDC9740](v5);
    objc_storeStrong(&location, 0);
  }

  v7 = MEMORY[0x29EDC9748](v9);
  objc_storeStrong(&v9, 0);

  return v7;
}

- (id)accessibilityTableViewCellAccessibilityElementForTableViewCell:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(UITableViewAccessibility *)v8 indexPathForCell:location[0]];
  if (v6)
  {
    v3 = [(UITableViewAccessibility *)v8 globalRowForRowAtIndexPath:v6];
    v9 = [(UITableViewAccessibility *)v8 accessibilityTableViewCellElementAtGlobalRow:v3];
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  v4 = v9;

  return v4;
}

- (void)accessibilityFindMockParentForTableViewCell:(void *)a1
{
  v8 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v8)
  {
    v5 = [v8 indexPathForCell:location];
    if (v5)
    {
      v4 = [v8 globalRowForRowAtIndexPath:v5];
      v3 = [v8 accessibilityTableViewCellElementAtGlobalRow:v4];
      v2 = [v3 tableViewCell];
      objc_storeStrong(&v3, 0);
    }

    objc_storeStrong(&v5, 0);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (id)_accessibilityUIScrollViewScrollStatus
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UITableViewAccessibility;
  return [(UITableViewAccessibility *)&v3 _accessibilityScrollStatus];
}

- (id)_accessibilityScrollStatus
{
  v44 = self;
  v43[1] = a2;
  v43[0] = [(UITableViewAccessibility *)self _accessibilityDelegateScrollStatus];
  if ([v43[0] length])
  {
    v45 = MEMORY[0x29EDC9748](v43[0]);
    v42 = 1;
  }

  else
  {
    v26 = [(UITableViewAccessibility *)v44 safeValueForKey:@"dataSource"];
    *&v2 = MEMORY[0x29EDC9740](v26).n128_u64[0];
    if (v26 == v44 || ((v25 = -[UITableViewAccessibility safeValueForKey:](v44, "safeValueForKey:", @"dataSource", v2), location = [v25 _accessibilityScrollStatus], MEMORY[0x29EDC9740](v25), !location) ? (v42 = 0) : (v45 = MEMORY[0x29EDC9748](location), v42 = 1), objc_storeStrong(&location, 0), !v42))
    {
      v3 = [(UITableViewAccessibility *)v44 safeValueForKey:@"_updateVisibleCellsImmediatelyIfNecessary"];
      v40 = [(UITableViewAccessibility *)v44 safeValueForKey:@"indexPathsForVisibleRows"];
      if ([(UITableViewAccessibility *)v44 _accessibilityShouldVerifyTableViewCellsAreVisibleByHitTesting])
      {
        v23 = v40;
        v22 = MEMORY[0x29EDBA0A8];
        v34 = MEMORY[0x29EDCA5F8];
        v35 = -1073741824;
        v36 = 0;
        v37 = __54__UITableViewAccessibility__accessibilityScrollStatus__block_invoke;
        v38 = &unk_29F30DCB0;
        v39 = MEMORY[0x29EDC9748](v44);
        v24 = [v22 predicateWithBlock:&v34];
        v4 = [v23 filteredArrayUsingPredicate:?];
        v5 = v40;
        v40 = v4;
        MEMORY[0x29EDC9740](v5);
        MEMORY[0x29EDC9740](v24);
        objc_storeStrong(&v39, 0);
      }

      if ([v40 count])
      {
        v18 = v44;
        v19 = [v40 objectAtIndex:0];
        v32 = [(UITableViewAccessibility *)v18 globalRowForRowAtIndexPath:?];
        *&v6 = MEMORY[0x29EDC9740](v19).n128_u64[0];
        v20 = v44;
        v21 = [v40 lastObject];
        v30 = [(UITableViewAccessibility *)v20 globalRowForRowAtIndexPath:?];
        MEMORY[0x29EDC9740](v21);
        v33 = v32 + 1;
        v31 = v30 + 1;
        v29 = 0;
        v28 = [(UITableViewAccessibility *)v44 _axNumberOfSections];
        for (i = 0; i < v28; ++i)
        {
          v29 += [(UITableViewAccessibility *)v44 numberOfRowsInSection:i];
        }

        if (v33 == v31)
        {
          v14 = MEMORY[0x29EDBA0F8];
          v17 = accessibilityLocalizedString(@"row.with.total.count");
          v16 = AXFormatInteger();
          v15 = AXFormatInteger();
          v45 = [v14 stringWithFormat:v17, v16, v15];
          MEMORY[0x29EDC9740](v15);
          MEMORY[0x29EDC9740](v16);
          MEMORY[0x29EDC9740](v17);
        }

        else
        {
          v9 = MEMORY[0x29EDBA0F8];
          v13 = accessibilityLocalizedString(@"table.scrollbypage.status");
          v12 = AXFormatInteger();
          v11 = AXFormatInteger();
          v10 = AXFormatInteger();
          v45 = [v9 stringWithFormat:v13, v12, v11, v10];
          MEMORY[0x29EDC9740](v10);
          MEMORY[0x29EDC9740](v11);
          MEMORY[0x29EDC9740](v12);
          MEMORY[0x29EDC9740](v13);
        }

        v42 = 1;
      }

      else
      {
        v45 = 0;
        v42 = 1;
      }

      objc_storeStrong(&v40, 0);
    }
  }

  objc_storeStrong(v43, 0);
  v7 = v45;

  return v7;
}

uint64_t __54__UITableViewAccessibility__accessibilityScrollStatus__block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10[1] = a1;
  v10[0] = [a1[4] cellForRowAtIndexPath:location[0]];
  v9 = [v10[0] _accessibilityIsVisibleByCompleteHitTest];
  v6 = [v10[0] safeValueForKey:@"_accessibilityMockParent"];
  v7 = [v6 _accessibilityIsVisibleByCompleteHitTest];
  MEMORY[0x29EDC9740](v6);
  v8 = 1;
  if ((v9 & 1) == 0)
  {
    v8 = v7;
  }

  objc_storeStrong(v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v8 & 1;
}

- (id)description
{
  v5[2] = self;
  v5[1] = a2;
  v4.receiver = self;
  v4.super_class = UITableViewAccessibility;
  v5[0] = [(UITableViewAccessibility *)&v4 description];
  v3 = MEMORY[0x29EDC9748](v5[0]);
  objc_storeStrong(v5, 0);

  return v3;
}

- (id)accessibilityLabel
{
  v31 = *MEMORY[0x29EDCA608];
  v28 = self;
  v27[1] = a2;
  if (!UIAccessibilityIsVoiceOverRunning() || [(UITableViewAccessibility *)v28 isAccessibilityElement])
  {
    v18 = [(UITableViewAccessibility *)v28 accessibilityUserDefinedLabel];
    *&v2 = MEMORY[0x29EDC9740](v18).n128_u64[0];
    if (v18)
    {
      v29 = [(UITableViewAccessibility *)v28 accessibilityUserDefinedLabel];
    }

    else
    {
      v27[0] = [(UITableViewAccessibility *)v28 safeValueForKey:@"backgroundView", v2];
      if ([v27[0] isAccessibilityElement])
      {
        v29 = [v27[0] _accessibilityAXAttributedLabel];
        v26 = 1;
      }

      else
      {
        if (![(UITableViewAccessibility *)v28 isAccessibilityElement])
        {
          goto LABEL_26;
        }

        v25 = [MEMORY[0x29EDC7328] options];
        [v25 setShouldUseAllSubviews:1];
        v24 = [(UITableViewAccessibility *)v28 _accessibilityViewChildrenWithOptions:v25];
        location = 0;
        memset(__b, 0, sizeof(__b));
        obj = MEMORY[0x29EDC9748](v24);
        v17 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
        if (v17)
        {
          v13 = *__b[2];
          v14 = 0;
          v15 = v17;
          while (1)
          {
            v12 = v14;
            if (*__b[2] != v13)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(__b[1] + 8 * v14);
            v19 = 0;
            v11 = 0;
            if ([v22 isAccessibilityElement])
            {
              objc_opt_class();
              v11 = 0;
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v20 = [v22 _accessibilityAncestorIsKindOf:objc_opt_class()];
                v19 = 1;
                v11 = v20 == 0;
              }
            }

            if (v19)
            {
              MEMORY[0x29EDC9740](v20);
            }

            if (v11)
            {
              v9 = [v22 accessibilityLabel];
              v10 = @"__AXStringForVariablesSentinel";
              v3 = __UIAXStringForVariables();
              v4 = location;
              location = v3;
              MEMORY[0x29EDC9740](v4);
              MEMORY[0x29EDC9740](v9);
            }

            ++v14;
            if (v12 + 1 >= v15)
            {
              v14 = 0;
              v15 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
              if (!v15)
              {
                break;
              }
            }
          }
        }

        *&v5 = MEMORY[0x29EDC9740](obj).n128_u64[0];
        if ([location length])
        {
          v29 = MEMORY[0x29EDC9748](location);
          v26 = 1;
        }

        else
        {
          v26 = 0;
        }

        objc_storeStrong(&location, 0);
        objc_storeStrong(&v24, 0);
        objc_storeStrong(&v25, 0);
        if (!v26)
        {
LABEL_26:
          [(UITableViewAccessibility *)v28 safeRangeForKey:@"_visibleGlobalRows", v9, v10];
          if (v6)
          {
            v29 = 0;
          }

          else
          {
            v29 = accessibilityLocalizedString(@"uitable.emptytable.text");
          }

          v26 = 1;
        }
      }

      objc_storeStrong(v27, 0);
    }
  }

  else
  {
    v29 = 0;
  }

  v7 = v29;

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v5 = [(UITableViewAccessibility *)self accessibilityUserDefinedTraits];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v5)
  {
    v4 = [(UITableViewAccessibility *)self accessibilityUserDefinedTraits];
    v7 = [v4 unsignedLongLongValue];
    MEMORY[0x29EDC9740](v4);
  }

  else if (([(UITableViewAccessibility *)self _accessibilityIsSearchTableVisible]& 1) != 0)
  {
    return *MEMORY[0x29EDC7578];
  }

  else
  {
    return *MEMORY[0x29EDC7FA0];
  }

  return v7;
}

- (int64_t)accessibilityContainerType
{
  v5 = [(UITableViewAccessibility *)self storedAccessibilityContainerType];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v5)
  {
    v4 = [(UITableViewAccessibility *)self storedAccessibilityContainerType];
    v7 = [v4 integerValue];
    MEMORY[0x29EDC9740](v4);
  }

  else if ([(UITableViewAccessibility *)self _axNumberOfSections]<= 0 || [(UITableViewAccessibility *)self isAccessibilityElement])
  {
    return 0;
  }

  else
  {
    return 4;
  }

  return v7;
}

- (BOOL)accessibilityRespondsToUserInteraction
{
  v6 = self;
  v5 = a2;
  if (![(UITableViewAccessibility *)self accessibilityElementCount])
  {
    return 0;
  }

  v3.receiver = v6;
  v3.super_class = UITableViewAccessibility;
  return [(UITableViewAccessibility *)&v3 accessibilityRespondsToUserInteraction];
}

- (id)_axVisibleHeadersAndFootersPriorToFirstVisibleCellSection:(void *)a1
{
  v18 = a1;
  v17 = a2;
  if (!a1)
  {
    v19 = 0;
    goto LABEL_18;
  }

  [v18 accessibilityFrame];
  v16.origin.x = v2;
  v16.origin.y = v3;
  v16.size.width = v4;
  v16.size.height = v5;
  v15 = [MEMORY[0x29EDB8DE8] array];
  for (i = v17 - 1; (i & 0x8000000000000000) == 0; --i)
  {
    v13 = [(UITableViewAccessibility *)v18 accessibilityTableViewSectionElementAtSection:0 isHeader:?];
    if (v13)
    {
      memset(&recta, 0, sizeof(recta));
      [v13 accessibilityFrame];
      recta = v21;
      MaxY = CGRectGetMaxY(v21);
      if (MaxY <= CGRectGetMinY(v16))
      {
        v11 = 2;
        goto LABEL_15;
      }

      [v15 insertObject:v13 atIndex:{0, MaxY}];
    }

    location = [(UITableViewAccessibility *)v18 accessibilityTableViewSectionElementAtSection:1 isHeader:?];
    if (!location)
    {
      goto LABEL_13;
    }

    [location accessibilityFrame];
    v8 = CGRectGetMaxY(v22);
    if (v8 > CGRectGetMinY(v16))
    {
      [v15 insertObject:location atIndex:{0, v8}];
LABEL_13:
      v11 = 0;
      goto LABEL_14;
    }

    v11 = 2;
LABEL_14:
    objc_storeStrong(&location, 0);
LABEL_15:
    objc_storeStrong(&v13, 0);
    if (v11)
    {
      break;
    }
  }

  v19 = MEMORY[0x29EDC9748](v15);
  v11 = 1;
  objc_storeStrong(&v15, 0);
LABEL_18:
  v6 = v19;

  return v6;
}

- (id)_axVisibleHeadersAndFootersAfterLastVisibleCellSection:(void *)a1
{
  v19 = a1;
  v18 = a2;
  if (!a1)
  {
    v20 = 0;
    goto LABEL_18;
  }

  [v19 accessibilityFrame];
  v17.origin.x = v2;
  v17.origin.y = v3;
  v17.size.width = v4;
  v17.size.height = v5;
  v16 = [MEMORY[0x29EDB8DE8] array];
  v15 = [(UITableViewAccessibility *)v19 _axNumberOfSections];
  for (i = v18 + 1; i < v15; ++i)
  {
    v13 = [(UITableViewAccessibility *)v19 accessibilityTableViewSectionElementAtSection:1 isHeader:?];
    if (v13)
    {
      memset(&recta, 0, sizeof(recta));
      [v13 accessibilityFrame];
      recta = v22;
      MinY = CGRectGetMinY(v22);
      if (MinY > CGRectGetMaxY(v17))
      {
        v11 = 2;
        goto LABEL_15;
      }

      [v16 insertObject:v13 atIndex:{0, MinY}];
    }

    location = [(UITableViewAccessibility *)v19 accessibilityTableViewSectionElementAtSection:0 isHeader:?];
    if (!location)
    {
      goto LABEL_13;
    }

    [location accessibilityFrame];
    v8 = CGRectGetMinY(v23);
    if (v8 <= CGRectGetMaxY(v17))
    {
      [v16 insertObject:location atIndex:{0, v8}];
LABEL_13:
      v11 = 0;
      goto LABEL_14;
    }

    v11 = 2;
LABEL_14:
    objc_storeStrong(&location, 0);
LABEL_15:
    objc_storeStrong(&v13, 0);
    if (v11)
    {
      break;
    }
  }

  v20 = MEMORY[0x29EDC9748](v16);
  v11 = 1;
  objc_storeStrong(&v16, 0);
LABEL_18:
  v6 = v20;

  return v6;
}

- (id)_accessibilityScannerGroupElements
{
  v72 = *MEMORY[0x29EDCA608];
  v64 = self;
  v63[1] = a2;
  v63[0] = [MEMORY[0x29EDB8DE8] array];
  v62 = 0x7FFFFFFFFFFFFFFFLL;
  v61 = 0;
  v60 = 64;
  if ([(UITableViewAccessibility *)v64 _axNumberOfSections]> 1)
  {
    v60 |= 0x10uLL;
  }

  memset(__b, 0, sizeof(__b));
  obj = [(UITableViewAccessibility *)v64 indexPathsForVisibleRows];
  v43 = [obj countByEnumeratingWithState:__b objects:v71 count:16];
  if (v43)
  {
    v39 = *__b[2];
    v40 = 0;
    v41 = v43;
    while (1)
    {
      v38 = v40;
      if (*__b[2] != v39)
      {
        objc_enumerationMutation(obj);
      }

      v59 = *(__b[1] + 8 * v40);
      v37 = v64;
      v36 = [v59 row];
      v57 = -[UITableViewAccessibility accessibilityElementForRow:andColumn:](v37, "accessibilityElementForRow:andColumn:", v36, [v59 section]);
      v56 = [v59 section];
      if (v56 != v62)
      {
        if ([v61 count])
        {
          v69[0] = @"GroupElements";
          v70[0] = v61;
          v69[1] = @"GroupTraits";
          v35 = [MEMORY[0x29EDBA070] numberWithUnsignedLong:v60];
          v70[1] = v35;
          v69[2] = @"GroupScanBehaviorTraits";
          v70[2] = &unk_2A238E888;
          v69[3] = @"GroupIdentifier";
          v32 = MEMORY[0x29EDBA0F8];
          v34 = [(UITableViewAccessibility *)v64 _accessibilityGroupIdentifier];
          v33 = [v32 stringWithFormat:@"%@-%lu", v34, v62];
          v70[3] = v33;
          v55 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v70 forKeys:v69 count:4];
          MEMORY[0x29EDC9740](v33);
          MEMORY[0x29EDC9740](v34);
          *&v2 = MEMORY[0x29EDC9740](v35).n128_u64[0];
          [v63[0] addObject:{v55, v2}];
          objc_storeStrong(&v55, 0);
        }

        if (v62 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v54 = [(UITableViewAccessibility *)v64 _axVisibleHeadersAndFootersPriorToFirstVisibleCellSection:v56];
          memset(v52, 0, sizeof(v52));
          v30 = MEMORY[0x29EDC9748](v54);
          v31 = [v30 countByEnumeratingWithState:v52 objects:v68 count:16];
          if (v31)
          {
            v27 = *v52[2];
            v28 = 0;
            v29 = v31;
            while (1)
            {
              v26 = v28;
              if (*v52[2] != v27)
              {
                objc_enumerationMutation(v30);
              }

              v53 = *(v52[1] + 8 * v28);
              [v53 _accessibilityProcessScannerGroupElementPieces:v63[0]];
              ++v28;
              if (v26 + 1 >= v29)
              {
                v28 = 0;
                v29 = [v30 countByEnumeratingWithState:v52 objects:v68 count:16];
                if (!v29)
                {
                  break;
                }
              }
            }
          }

          MEMORY[0x29EDC9740](v30);
          objc_storeStrong(&v54, 0);
        }

        else
        {
          for (i = v62; i < v56; ++i)
          {
            if (i != v62)
            {
              v25 = [(UITableViewAccessibility *)v64 accessibilityTableViewSectionElementAtSection:1 isHeader:?];
              [v25 _accessibilityProcessScannerGroupElementPieces:v63[0]];
              MEMORY[0x29EDC9740](v25);
            }

            v24 = [(UITableViewAccessibility *)v64 accessibilityTableViewSectionElementAtSection:0 isHeader:?];
            [v24 _accessibilityProcessScannerGroupElementPieces:v63[0]];
            MEMORY[0x29EDC9740](v24);
          }
        }

        v23 = [(UITableViewAccessibility *)v64 accessibilityTableViewSectionElementAtSection:v56 isHeader:1];
        [v23 _accessibilityProcessScannerGroupElementPieces:v63[0]];
        MEMORY[0x29EDC9740](v23);
        v62 = v56;
        objc_storeStrong(&v61, 0);
        if (v56 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
          v4 = v61;
          v61 = v3;
          MEMORY[0x29EDC9740](v4);
        }
      }

      if (v61)
      {
        v5 = MEMORY[0x29EDC9748](v61);
      }

      else
      {
        v5 = MEMORY[0x29EDC9748](v63[0]);
      }

      v50 = v5;
      [v57 _accessibilityProcessScannerGroupElementPieces:v5];
      objc_storeStrong(&v50, 0);
      objc_storeStrong(&v57, 0);
      ++v40;
      if (v38 + 1 >= v41)
      {
        v40 = 0;
        v41 = [obj countByEnumeratingWithState:__b objects:v71 count:16];
        if (!v41)
        {
          break;
        }
      }
    }
  }

  *&v6 = MEMORY[0x29EDC9740](obj).n128_u64[0];
  if ([v61 count])
  {
    v66[0] = @"GroupElements";
    v67[0] = v61;
    v66[1] = @"GroupTraits";
    v22 = [MEMORY[0x29EDBA070] numberWithUnsignedLong:v60];
    v67[1] = v22;
    v66[2] = @"GroupScanBehaviorTraits";
    v67[2] = &unk_2A238E888;
    v66[3] = @"GroupIdentifier";
    v19 = MEMORY[0x29EDBA0F8];
    v21 = [(UITableViewAccessibility *)v64 _accessibilityGroupIdentifier];
    v20 = [v19 stringWithFormat:@"%@-%lu", v21, v62];
    v67[3] = v20;
    v49 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v67 forKeys:v66 count:4];
    MEMORY[0x29EDC9740](v20);
    MEMORY[0x29EDC9740](v21);
    *&v7 = MEMORY[0x29EDC9740](v22).n128_u64[0];
    [v63[0] addObject:{v49, v7}];
    objc_storeStrong(&v49, 0);
  }

  if (v62 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v63[0] count])
    {
      _AXAssert();
    }

    v45 = [(UITableViewAccessibility *)v64 _axNumberOfSections];
    for (j = 0; j < v45; ++j)
    {
      v10 = [(UITableViewAccessibility *)v64 accessibilityTableViewSectionElementAtSection:1 isHeader:?];
      [v10 _accessibilityProcessScannerGroupElementPieces:v63[0]];
      MEMORY[0x29EDC9740](v10);
      v11 = [(UITableViewAccessibility *)v64 accessibilityTableViewSectionElementAtSection:0 isHeader:?];
      [v11 _accessibilityProcessScannerGroupElementPieces:v63[0]];
      MEMORY[0x29EDC9740](v11);
    }
  }

  else
  {
    v16 = [(UITableViewAccessibility *)v64 accessibilityTableViewSectionElementAtSection:v62 isHeader:0];
    [v16 _accessibilityProcessScannerGroupElementPieces:v63[0]];
    MEMORY[0x29EDC9740](v16);
    v48 = [(UITableViewAccessibility *)v64 _axVisibleHeadersAndFootersAfterLastVisibleCellSection:v62];
    memset(v46, 0, sizeof(v46));
    v17 = MEMORY[0x29EDC9748](v48);
    v18 = [v17 countByEnumeratingWithState:v46 objects:v65 count:16];
    if (v18)
    {
      v13 = *v46[2];
      v14 = 0;
      v15 = v18;
      while (1)
      {
        v12 = v14;
        if (*v46[2] != v13)
        {
          objc_enumerationMutation(v17);
        }

        v47 = *(v46[1] + 8 * v14);
        [v47 _accessibilityProcessScannerGroupElementPieces:v63[0]];
        ++v14;
        if (v12 + 1 >= v15)
        {
          v14 = 0;
          v15 = [v17 countByEnumeratingWithState:v46 objects:v65 count:16];
          if (!v15)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](v17);
    objc_storeStrong(&v48, 0);
  }

  v9 = MEMORY[0x29EDC9748](v63[0]);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(v63, 0);

  return v9;
}

- (BOOL)_accessibilityCanPerformEscapeAction
{
  v9 = self;
  v8[1] = a2;
  v7 = 0;
  objc_opt_class();
  v6 = __UIAccessibilityCastAsClass();
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  v8[0] = v5;
  if ([v5 isEditing])
  {
    v10 = 1;
  }

  else
  {
    v3.receiver = v9;
    v3.super_class = UITableViewAccessibility;
    v10 = [(UITableViewAccessibility *)&v3 _accessibilityCanPerformEscapeAction];
  }

  v4 = 1;
  objc_storeStrong(v8, 0);
  return v10 & 1;
}

- (BOOL)accessibilityPerformEscape
{
  v9 = self;
  v8[1] = a2;
  v7 = 0;
  objc_opt_class();
  v6 = __UIAccessibilityCastAsClass();
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  v8[0] = v5;
  if ([v5 isEditing])
  {
    [v8[0] setEditing:0 animated:1];
    v10 = 1;
  }

  else
  {
    v3.receiver = v9;
    v3.super_class = UITableViewAccessibility;
    v10 = [(UITableViewAccessibility *)&v3 accessibilityPerformEscape];
  }

  v4 = 1;
  objc_storeStrong(v8, 0);
  return v10 & 1;
}

- (id)_accessibilityReusableViewForOpaqueElement:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = MEMORY[0x29EDC9748](location[0]);
  while (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    v3 = [v7 accessibilityContainer];
    v4 = v7;
    v7 = v3;
    MEMORY[0x29EDC9740](v4);
  }

  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (BOOL)_accessibilityNativeFocusPreferredElementIsValid
{
  v9 = self;
  v8 = a2;
  v6 = [(UITableViewAccessibility *)self safeRangeForKey:@"_visibleGlobalRows"];
  v7 = v2;
  v4 = 0;
  if (v2)
  {
    v5.receiver = v9;
    v5.super_class = UITableViewAccessibility;
    v4 = [(UITableViewAccessibility *)&v5 _accessibilityNativeFocusPreferredElementIsValid];
  }

  return v4 & 1;
}

- (void)_didUpdateFocusInContext:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UITableViewAccessibility;
  [(UITableViewAccessibility *)&v3 _didUpdateFocusInContext:location[0]];
  objc_storeStrong(location, 0);
}

- (id)_accessibilityLastFocusedChild
{
  v14 = self;
  location[1] = a2;
  location[0] = [(UITableViewAccessibility *)self _axGetLastFocusedChild];
  v4 = location[0];
  v7 = MEMORY[0x29EDCA5F8];
  v8 = -1073741824;
  v9 = 0;
  v10 = __58__UITableViewAccessibility__accessibilityLastFocusedChild__block_invoke;
  v11 = &unk_29F30C818;
  v12 = MEMORY[0x29EDC9748](v14);
  v5 = [v4 _accessibilityFindAncestor:&v7 startWithSelf:1];
  MEMORY[0x29EDC9740](v5);
  if (v5)
  {
    v15 = MEMORY[0x29EDC9748](location[0]);
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(&v12, 0);
  if (!v6)
  {
    v15 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v15;

  return v2;
}

BOOL __58__UITableViewAccessibility__accessibilityLastFocusedChild__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = location[0] == a1[4];
  objc_storeStrong(location, 0);
  return v4;
}

- (id)preferredFocusEnvironments
{
  v10[1] = *MEMORY[0x29EDCA608];
  v9 = self;
  v8[1] = a2;
  v7.receiver = self;
  v7.super_class = UITableViewAccessibility;
  v8[0] = [(UITableViewAccessibility *)&v7 preferredFocusEnvironments];
  if (([(UITableViewAccessibility *)v9 _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    location = [(UITableViewAccessibility *)v9 preferredFocusedView];
    if (location)
    {
      v10[0] = location;
      v2 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];
      v3 = v8[0];
      v8[0] = v2;
      MEMORY[0x29EDC9740](v3);
    }

    objc_storeStrong(&location, 0);
  }

  v5 = MEMORY[0x29EDC9748](v8[0]);
  objc_storeStrong(v8, 0);

  return v5;
}

- (id)preferredFocusedView
{
  v32 = self;
  v31[1] = a2;
  v30.receiver = self;
  v30.super_class = UITableViewAccessibility;
  v31[0] = [(UITableViewAccessibility *)&v30 preferredFocusedView];
  if (([(UITableViewAccessibility *)v32 _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    v29 = 1;
    v27 = 0;
    objc_opt_class();
    v26 = __UIAccessibilityCastAsClass();
    v25 = MEMORY[0x29EDC9748](v26);
    objc_storeStrong(&v26, 0);
    v28 = v25;
    v24 = [(UITableViewAccessibility *)v32 _accessibilityLastFocusedChild];
    if (v24)
    {
      v23 = [v24 _accessibilityFindAncestor:&__block_literal_global_866 startWithSelf:1];
      v22 = [v23 _accessibilityIndexPath];
      v21 = v22 != 0;
      if (v22)
      {
        v14 = [v28 cellForRowAtIndexPath:v22];
        v15 = 0;
        if (v14 == v23)
        {
          v15 = [v23 _accessibilityViewIsVisible];
        }

        v21 = v15 & 1;
        MEMORY[0x29EDC9740](v14);
      }

      if ((v21 & 1) == 0)
      {
        v20 = 0;
        objc_opt_class();
        v19 = __UIAccessibilityCastAsSafeCategory();
        v18 = MEMORY[0x29EDC9748](v19);
        objc_storeStrong(&v19, 0);
        v12 = v23;
        v13 = [(UITableViewAccessibility *)v32 visibleCells];
        v2 = [(UIViewAccessibility *)v18 _accessibilityViewMatchingFKAView:v12 inArray:v13];
        v3 = v24;
        v24 = v2;
        MEMORY[0x29EDC9740](v3);
        MEMORY[0x29EDC9740](v13);
        *&v4 = MEMORY[0x29EDC9740](v18).n128_u64[0];
        [(UITableViewAccessibility *)v32 _axSetLastFocusedChild:v24, v4];
        v21 = v24 != 0;
      }

      if (v24 && (v21 & 1) != 0)
      {
        objc_storeStrong(v31, v24);
        v29 = 0;
      }

      else
      {
        [(UITableViewAccessibility *)v32 _axSetLastFocusedChild:0];
      }

      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v23, 0);
    }

    v16 = 0;
    v11 = 0;
    if (v29)
    {
      v17 = [v28 indexPathForSelectedRow];
      v16 = 1;
      v11 = v17 != 0;
    }

    if (v16)
    {
      MEMORY[0x29EDC9740](v17);
    }

    if (v11)
    {
      v9 = v28;
      v10 = [v28 indexPathForSelectedRow];
      v5 = [v9 cellForRowAtIndexPath:?];
      v6 = v31[0];
      v31[0] = v5;
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v10);
    }

    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v28, 0);
  }

  v8 = MEMORY[0x29EDC9748](v31[0]);
  objc_storeStrong(v31, 0);

  return v8;
}

uint64_t __48__UITableViewAccessibility_preferredFocusedView__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

- (id)_childFocusViews
{
  v37 = self;
  v36[1] = a2;
  v35.receiver = self;
  v35.super_class = UITableViewAccessibility;
  v21 = [(UITableViewAccessibility *)&v35 _childFocusViews];
  v36[0] = [v21 mutableCopy];
  if (([(UITableViewAccessibility *)v37 _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    v33 = 0;
    objc_opt_class();
    v20 = [(UITableViewAccessibility *)v37 _swipeActionController];
    v19 = [v20 safeValueForKey:@"currentSwipeOccurrence"];
    v32 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v19);
    MEMORY[0x29EDC9740](v20);
    v31 = MEMORY[0x29EDC9748](v32);
    objc_storeStrong(&v32, 0);
    v34 = v31;
    if (v31)
    {
      v18 = v36[0];
      v24 = 0;
      v25 = &v24;
      v26 = 838860800;
      v27 = 48;
      v28 = __Block_byref_object_copy__22;
      v29 = __Block_byref_object_dispose__22;
      v30 = 0;
      v23[1] = &v24;
      v23[0] = MEMORY[0x29EDC9748](v34);
      AXPerformSafeBlock();
      v22 = MEMORY[0x29EDC9748](v25[5]);
      objc_storeStrong(v23, 0);
      _Block_object_dispose(&v24, 8);
      objc_storeStrong(&v30, 0);
      [v18 axSafelyAddObject:?];
      MEMORY[0x29EDC9740](v22);
    }

    v6 = v36[0];
    v7 = [(UITableViewAccessibility *)v37 _accessibilitySupplementaryHeaderViews];
    [v6 axSafelyAddObjectsFromArray:?];
    *&v2 = MEMORY[0x29EDC9740](v7).n128_u64[0];
    v8 = v36[0];
    v9 = [(UITableViewAccessibility *)v37 _accessibilitySupplementaryFooterViews];
    [v8 axSafelyAddObjectsFromArray:?];
    *&v3 = MEMORY[0x29EDC9740](v9).n128_u64[0];
    v10 = v36[0];
    v11 = [(UITableViewAccessibility *)v37 safeValueForKey:@"_index", v3];
    [v10 removeObject:?];
    MEMORY[0x29EDC9740](v11);
    [(UITableViewAccessibility *)v37 _axSetupIndexGuide];
    v12 = MEMORY[0x29EDC7DA0];
    v17 = [v36[0] reverseObjectEnumerator];
    v16 = [v17 allObjects];
    v15 = [v12 _subviewsReplacedByModalViewSubviewsIfNecessary:?];
    v14 = [v15 reverseObjectEnumerator];
    v13 = [v14 allObjects];
    v38 = [v13 ax_filteredArrayUsingBlock:&__block_literal_global_872];
    MEMORY[0x29EDC9740](v13);
    MEMORY[0x29EDC9740](v14);
    MEMORY[0x29EDC9740](v15);
    MEMORY[0x29EDC9740](v16);
    MEMORY[0x29EDC9740](v17);
    objc_storeStrong(&v34, 0);
  }

  else
  {
    v38 = MEMORY[0x29EDC9748](v36[0]);
  }

  objc_storeStrong(v36, 0);
  v4 = v38;

  return v4;
}

double __44__UITableViewAccessibility__childFocusViews__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _pullViewForSwipeDirection:{objc_msgSend(*(a1 + 32), "safeUnsignedIntegerForKey:", @"configuredDirection"}];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (void)_axSetupIndexGuide
{
  v13 = a1;
  if (a1)
  {
    v12 = [v13 safeValueForKey:@"_index"];
    v6 = [(UITableViewAccessibility *)v13 _axGetIndexGuide];
    v7 = 0;
    if (!v6)
    {
      v7 = v12 != 0;
    }

    MEMORY[0x29EDC9740](v6);
    if (v7)
    {
      v11 = MEMORY[0x29EDC9748](v13);
      v10 = objc_alloc_init(MEMORY[0x29EDC7A90]);
      v5 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v12}];
      [v10 setPreferredFocusEnvironments:?];
      [v10 setAccessibilityContainer:{v12, MEMORY[0x29EDC9740](v5).n128_f64[0]}];
      [v11 bounds];
      v8 = v1;
      v9 = v2;
      if ([v13 _accessibilityIsRTL])
      {
        v3 = -1;
      }

      else
      {
        v3 = 1;
      }

      *&v8 = v3 * v9 * 2.0;
      [v11 contentSize];
      [v10 _setManualLayoutFrame:{v8, v9, v4}];
      [(UITableViewAccessibility *)v13 _axSetIndexGuide:v10];
      [v11 addLayoutGuide:v10];
      objc_storeStrong(&v10, 0);
      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&v12, 0);
  }
}

uint64_t __44__UITableViewAccessibility__childFocusViews__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] _accessibilityFKAShouldBeProcessed];
  objc_storeStrong(location, 0);
  return v3;
}

- (BOOL)_shouldSelectionFollowFocusForIndexPath:(id)a3 initiatedBySelection:(BOOL)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v7.receiver = v11;
  v7.super_class = UITableViewAccessibility;
  v8 = [(UITableViewAccessibility *)&v7 _shouldSelectionFollowFocusForIndexPath:location[0] initiatedBySelection:a4];
  if (([(UITableViewAccessibility *)v11 _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    v8 = 0;
  }

  v5 = v8;
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (id)_axGetIndexGuide
{
  if (a1)
  {
    v2 = objc_getAssociatedObject(a1, &__UITableViewAccessibility___axGetIndexGuide);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_axSetIndexGuide:(uint64_t)a1
{
  v3 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v3)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (id)_accessibilitySelectedChildren
{
  v20 = self;
  v19[1] = a2;
  v19[0] = [(UITableViewAccessibility *)self indexPathsForSelectedRows];
  if ([(UITableViewAccessibility *)v20 isAccessibilityOpaqueElementProvider])
  {
    v5 = v19[0];
    v13 = MEMORY[0x29EDCA5F8];
    v14 = -1073741824;
    v15 = 0;
    v16 = __58__UITableViewAccessibility__accessibilitySelectedChildren__block_invoke;
    v17 = &unk_29F30D428;
    v18 = MEMORY[0x29EDC9748](v20);
    v21 = [v5 ax_flatMappedArrayUsingBlock:&v13];
    objc_storeStrong(&v18, 0);
  }

  else
  {
    v4 = v19[0];
    v6 = MEMORY[0x29EDCA5F8];
    v7 = -1073741824;
    v8 = 0;
    v9 = __58__UITableViewAccessibility__accessibilitySelectedChildren__block_invoke_2;
    v10 = &unk_29F30D428;
    v11 = MEMORY[0x29EDC9748](v20);
    v21 = [v4 ax_flatMappedArrayUsingBlock:&v6];
    objc_storeStrong(&v11, 0);
  }

  v12 = 1;
  objc_storeStrong(v19, 0);
  v2 = v21;

  return v2;
}

id __58__UITableViewAccessibility__accessibilitySelectedChildren__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] accessibilityCellForRowAtIndexPath:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

id __58__UITableViewAccessibility__accessibilitySelectedChildren__block_invoke_2(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] _accessibilityTableViewCellElementForIndexPath:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

@end