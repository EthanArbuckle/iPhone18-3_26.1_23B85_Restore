@interface UICollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityDescendantElementAtIndexPathIsValid:(id)a3;
- (BOOL)_accessibilityHasOrderedChildren;
- (BOOL)_accessibilityOpaqueElementScrollsContentIntoView;
- (BOOL)_accessibilityOverridesContainerProtocol;
- (BOOL)_accessibilityShouldUseCollectionViewCellAccessibilityElements;
- (BOOL)_reuseCell:(id)a3 notifyDidEndDisplaying:(BOOL)a4;
- (BOOL)_reuseSupplementaryView:(id)a3;
- (BOOL)_shouldSelectionFollowFocusForIndexPath:(id)a3 initiatedBySelection:(BOOL)a4;
- (BOOL)accessibilityCollectionViewBehavesLikeUIViewAccessibility;
- (BOOL)accessibilityShouldSpeakItemReorderEvents;
- (BOOL)beginInteractiveMovementForItemAtIndexPath:(id)a3;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityOpaqueElementProvider;
- (CGRect)_visibleBounds;
- (id)_accessibilityCollectionViewSupplementaryViews;
- (id)_accessibilityFuzzyHitTest:(CGPoint *)a3 withEvent:(id)a4;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityIndexPathOfDirectSubviewForDescendantElement:(id)a3 withElementKind:(id *)a4;
- (id)_accessibilityIndexPathToOtherCollectionViewItems;
- (id)_accessibilityLayoutAttributesForSupplementaryHeaderViewAtIndexPath:(id)a3;
- (id)_accessibilityOpaqueHeaderElementInDirection:(int64_t)a3 childElement:(id)a4;
- (id)_accessibilityOtherCollectionViewItems;
- (id)_accessibilityReusableViewForOpaqueElement:(id)a3;
- (id)_accessibilityScannerGroupElements;
- (id)_accessibilityScannerGroupElementsGroupedByRow;
- (id)_accessibilitySelectedChildren;
- (id)_accessibilitySortedElementsWithin;
- (id)_accessibilitySortedElementsWithinWithOptions:(id)a3;
- (id)_accessibilitySortedViewChildrenWithOptions:(void *)a1;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_accessibilitySupplementaryHeaderViewAtIndexPath:(id)a3;
- (id)_accessibilitySupplementaryHeaderViews;
- (id)_accessibilitySupplementaryViewSectionHeaderIdentifiers;
- (id)_accessibilityUserTestingVisibleCells;
- (id)_axFirstLastOpaqueHeaderElementFromSection:(int64_t)a3 options:(id)a4 direction:(int64_t)a5;
- (id)_axFirstLastOpaqueHeaderElementInDirection:(int64_t)a3 options:(id)a4;
- (id)_axIndexBar;
- (id)_axIndexPathForGlobalRow:(uint64_t)a1;
- (id)_axOffScreenOpaqueHeaderElementInDirection:(int64_t)a3 options:(id)a4 childElement:(id)a5;
- (id)_axOpaqueHeaderElementInDirection:(int64_t)a3 withinElements:(id)a4 startIndex:(unint64_t)a5;
- (id)_axSpeakItemReorderEvents;
- (id)_dequeueReusableViewOfKind:(id)a3 withIdentifier:(id)a4 forIndexPath:(id)a5 viewCategory:(unint64_t)a6;
- (id)_fulfillPromisedFocusRegionForLayoutAttributes:(id)a3;
- (id)accessibilityCellForRowAtIndexPath:(id)a3;
- (id)accessibilityCollectionCellElementForIndexPath:(id)a3;
- (id)accessibilityCreatePrepareCellForIndexPath:(id)a3;
- (id)accessibilityElementAtIndex:(int64_t)a3;
- (id)accessibilityElementForRow:(unint64_t)a3 andColumn:(unint64_t)a4;
- (id)accessibilityLabel;
- (id)axData;
- (id)preferredFocusedView;
- (int64_t)accessibilityContainerType;
- (int64_t)accessibilityElementCount;
- (int64_t)indexOfAccessibilityElement:(id)a3;
- (uint64_t)_accessibilityShouldDisableCellReuse;
- (uint64_t)_axGetShouldIgnorePromiseRegions;
- (uint64_t)_axGlobalRowForIndexPath:(uint64_t)a1;
- (uint64_t)_axIsReorderingItems;
- (uint64_t)_axSetIsReorderingItems:(uint64_t)result;
- (uint64_t)_axSetShouldIgnorePromiseRegions:(uint64_t)result;
- (unint64_t)_accessibilityScanningBehaviorTraits;
- (unint64_t)accessibilitySemanticGroupChildrentCount;
- (void)_accessibilityCollectionViewUpdateVisibleCells;
- (void)_accessibilityInitializeInternalData:(uint64_t)a1;
- (void)_accessibilityPostReorderingAnnouncementForCurrentIndexPath:(id)a3 targetIndexPath:(id)a4 previousIndexPath:(id)a5;
- (void)_axHandleReusedView:(void *)a1;
- (void)_axResetData;
- (void)_axSetSpeakItemReorderEvents:(uint64_t)a1;
- (void)cancelInteractiveMovement;
- (void)deleteItemsAtIndexPaths:(id)a3;
- (void)deleteSections:(id)a3;
- (void)endInteractiveMovement;
- (void)insertItemsAtIndexPaths:(id)a3;
- (void)insertSections:(id)a3;
- (void)moveSection:(int64_t)a3 toSection:(int64_t)a4;
- (void)reloadData;
- (void)reloadItemsAtIndexPaths:(id)a3;
- (void)reloadSections:(id)a3;
- (void)setAccessibilityComparatorForSorting:(id)a3;
- (void)setAccessibilityShouldSpeakItemReorderEvents:(BOOL)a3;
@end

@implementation UICollectionViewAccessibility

- (id)_axSpeakItemReorderEvents
{
  if (a1)
  {
    v2 = objc_getAssociatedObject(a1, &__UICollectionViewAccessibility___axSpeakItemReorderEvents);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_axSetSpeakItemReorderEvents:(uint64_t)a1
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

- (uint64_t)_axIsReorderingItems
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

- (uint64_t)_axSetIsReorderingItems:(uint64_t)result
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
  v18 = location;
  v17 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UICollectionViewListSwipeActionsView"];
  [location[0] validateClass:@"UIIndexBarAccessoryView"];
  v14 = "@";
  v12 = @"UICollectionView";
  v7 = "v";
  [location[0] validateClass:"@" hasInstanceMethod:"@" withFullSignature:{"@", 0}];
  v4 = "{CGRect={CGPoint=dd}{CGSize=dd}}";
  [location[0] validateClass:v12 hasInstanceMethod:@"_ensureViewsAreLoadedInRect:" withFullSignature:{v7, "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  v3 = "Q";
  [location[0] validateClass:v12 hasInstanceMethod:@"_dequeueReusableViewOfKind: withIdentifier: forIndexPath: viewCategory:" withFullSignature:{v14, v14, v14, "Q", 0}];
  v16 = "B";
  [location[0] validateClass:v12 hasInstanceMethod:@"_createPreparedCellForItemAtIndexPath: withLayoutAttributes: applyAttributes:" withFullSignature:{v14, v14, "B", 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"_updateVisibleCellsNow:" withFullSignature:{v3, v16, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"_visibleBounds" withFullSignature:{v4, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"_reuseCell:notifyDidEndDisplaying:" withFullSignature:{v14, v16, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"_reuseSupplementaryView:" withFullSignature:{v16, v14, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"_moveItemAtIndexPath:toIndexPath:" withFullSignature:{v7, v14, v14, 0}];
  [location[0] validateClass:v12 hasInstanceVariable:@"_subviewManager" withType:"_UICollectionViewSubviewManager"];
  v13 = "NSMutableDictionary";
  [location[0] validateClass:@"_UICollectionViewSubviewManager" hasInstanceVariable:@"_reuseQueues" withType:?];
  [location[0] validateClass:v12 hasInstanceMethod:@"reloadItemsAtIndexPaths:" withFullSignature:{v7, v14, 0}];
  v15 = @"UICollectionReusableView";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v12 hasInstanceMethod:@"collectionViewLayout" withFullSignature:{v14, 0}];
  v5 = "q";
  [location[0] validateClass:@"UICollectionViewFlowLayout" hasInstanceMethod:@"scrollDirection" withFullSignature:0];
  v8 = @"UIView";
  [location[0] validateClass:v12 isKindOfClass:?];
  [location[0] validateClass:@"UISwipeActionPullView"];
  [location[0] validateClass:v8 hasInstanceMethod:@"isFocused" withFullSignature:{v16, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"_isFocusedOrAncestorOfFocusedView" withFullSignature:{v16, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"preferredFocusedView" withFullSignature:{v14, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"canBecomeFocused" withFullSignature:{v16, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"beginInteractiveMovementForItemAtIndexPath:" withFullSignature:{v16, v14, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"_fulfillPromisedFocusRegionForLayoutAttributes:" withFullSignature:{v14, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"endInteractiveMovement" withFullSignature:{v7, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"cancelInteractiveMovement" withFullSignature:{v7, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"_globalIndexPathForItemAtIndexPath:" withFullSignature:{v5, v14, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"_indexPathForGlobalIndex:" withFullSignature:{v14, v5, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"_indexPathBeforeShadowUpdatesForIndexPath:" withFullSignature:{v14, 0}];
  v6 = @"UIResponder";
  [location[0] validateClass:v12 isKindOfClass:?];
  [location[0] validateClass:v6 hasInstanceMethod:@"canResignFirstResponder" withFullSignature:{v16, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"becomeFirstResponder" withFullSignature:{v16, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"pressesBegan:withEvent:" withFullSignature:{v7, v14, v14, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"pressesEnded:withEvent:" withFullSignature:{v7, v14, v14, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"pressesCancelled:withEvent:" withFullSignature:{v7, v14, v14, 0}];
  [location[0] validateClass:v12 hasInstanceMethod:@"_shouldSelectionFollowFocusForIndexPath:initiatedBySelection:" withFullSignature:{v14, v16, 0}];
  v10 = @"UIScrollView";
  [location[0] validateClass:v12 isKindOfClass:?];
  v9 = @"UILayoutContainerView";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"_UISplitViewControllerPanelImplView" isKindOfClass:v9];
  v11 = "UIView<_UIScrollViewScrollIndicator>";
  [location[0] validateClass:v10 hasInstanceVariable:@"_verticalScrollIndicator" withType:?];
  [location[0] validateClass:v10 hasInstanceVariable:@"_horizontalScrollIndicator" withType:v11];
  [location[0] validateClass:v12 hasInstanceVariable:@"_supplementaryViewClassDict" withType:v13];
  [location[0] validateClass:v15 hasInstanceMethod:@"_isStyledAsHeaderOrFooterFromLayoutAttributes:" withFullSignature:{v16, v14, 0}];
  objc_storeStrong(v18, v17);
}

- (BOOL)accessibilityShouldSpeakItemReorderEvents
{
  v4 = [(UICollectionViewAccessibility *)self _axSpeakItemReorderEvents];
  MEMORY[0x29EDC9740](v4);
  if (!v4)
  {
    return [(UICollectionViewAccessibility *)self _axIsReorderingItems]& 1;
  }

  v3 = [(UICollectionViewAccessibility *)self _axSpeakItemReorderEvents];
  v6 = [v3 BOOLValue] & 1;
  MEMORY[0x29EDC9740](v3);
  return v6;
}

- (void)setAccessibilityShouldSpeakItemReorderEvents:(BOOL)a3
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:a3];
  [(UICollectionViewAccessibility *)self _axSetSpeakItemReorderEvents:v4];
  MEMORY[0x29EDC9740](v4);
}

- (void)setAccessibilityComparatorForSorting:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v6;
  v4 = MEMORY[0x29ED3E4C0](location[0]);
  [UICollectionViewAccessibility _accessibilitySetRetainedValue:v3 forKey:"_accessibilitySetRetainedValue:forKey:"];
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(location, 0);
}

- (BOOL)accessibilityCollectionViewBehavesLikeUIViewAccessibility
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UICollectionViewAccessibility *)self _accessibilityValueForKey:@"shouldBypassCollectionViewAX"];
  if (location[0])
  {
    v4 = [location[0] BOOLValue] & 1;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (BOOL)_accessibilityShouldUseCollectionViewCellAccessibilityElements
{
  if (([(UICollectionViewAccessibility *)self _accessibilityFauxCollectionViewCellsDisabled]& 1) != 0)
  {
    return 0;
  }

  if (AXDoesRequestingClientDeserveAutomation() && !_AXSAutomationFauxCollectionViewCellsEnabled())
  {
    return 0;
  }

  if (UIAccessibilityIsAppExtension())
  {
    return 0;
  }

  LOBYTE(v3) = 0;
  if (AXDoesRequestingClientDeserveAutomation())
  {
    v3 = ![(UICollectionViewAccessibility *)self accessibilityCollectionViewBehavesLikeUIViewAccessibility];
  }

  return v3 & 1;
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
    v4 += [v9[0] numberOfItemsInSection:i];
  }

  objc_storeStrong(v9, 0);
  return v4;
}

- (id)axData
{
  v5 = self;
  v4[1] = a2;
  v4[0] = [(UICollectionViewAccessibility *)self _accessibilityValueForKey:@"AXCollectionViewData"];
  if (!v4[0])
  {
    v4[0] = objc_alloc_init(AXCollectionViewData);
    [(UICollectionViewAccessibility *)v5 _accessibilitySetRetainedValue:v4[0] forKey:@"AXCollectionViewData", MEMORY[0x29EDC9740](0).n128_f64[0]];
    [(UICollectionViewAccessibility *)v5 _accessibilityInitializeInternalData:?];
  }

  v3 = MEMORY[0x29EDC9748](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (void)_accessibilityInitializeInternalData:(uint64_t)a1
{
  v8 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v8)
  {
    v5 = MEMORY[0x29EDC9748](v8);
    v4 = [v5 numberOfSections];
    v3 = 0;
    for (i = 0; i < v4; ++i)
    {
      v3 += [v5 numberOfItemsInSection:i];
    }

    [(AXCollectionViewData *)location setChildCount:v3];
    objc_storeStrong(&v5, 0);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (void)_axResetData
{
  if (a1)
  {
    [a1 _accessibilityRemoveValueForKey:@"AXCollectionViewData"];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

- (void)reloadData
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UICollectionViewAccessibility;
  [(UICollectionViewAccessibility *)&v2 reloadData];
  [(UICollectionViewAccessibility *)v4 _axResetData];
}

- (void)insertSections:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UICollectionViewAccessibility;
  [(UICollectionViewAccessibility *)&v3 insertSections:location[0]];
  [(UICollectionViewAccessibility *)v5 _axResetData];
  objc_storeStrong(location, 0);
}

- (void)deleteSections:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UICollectionViewAccessibility;
  [(UICollectionViewAccessibility *)&v3 deleteSections:location[0]];
  [(UICollectionViewAccessibility *)v5 _axResetData];
  objc_storeStrong(location, 0);
}

- (void)reloadSections:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UICollectionViewAccessibility;
  [(UICollectionViewAccessibility *)&v3 reloadSections:location[0]];
  [(UICollectionViewAccessibility *)v5 _axResetData];
  objc_storeStrong(location, 0);
}

- (void)moveSection:(int64_t)a3 toSection:(int64_t)a4
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5 = a4;
  v4.receiver = self;
  v4.super_class = UICollectionViewAccessibility;
  [(UICollectionViewAccessibility *)&v4 moveSection:a3 toSection:a4];
  [(UICollectionViewAccessibility *)v8 _axResetData];
}

- (void)insertItemsAtIndexPaths:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UICollectionViewAccessibility;
  [(UICollectionViewAccessibility *)&v3 insertItemsAtIndexPaths:location[0]];
  [(UICollectionViewAccessibility *)v5 _axResetData];
  objc_storeStrong(location, 0);
}

- (void)reloadItemsAtIndexPaths:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UICollectionViewAccessibility;
  [(UICollectionViewAccessibility *)&v3 reloadItemsAtIndexPaths:location[0]];
  [(UICollectionViewAccessibility *)v5 _axResetData];
  objc_storeStrong(location, 0);
}

- (void)deleteItemsAtIndexPaths:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UICollectionViewAccessibility;
  [(UICollectionViewAccessibility *)&v3 deleteItemsAtIndexPaths:location[0]];
  [(UICollectionViewAccessibility *)v5 _axResetData];
  objc_storeStrong(location, 0);
}

- (BOOL)beginInteractiveMovementForItemAtIndexPath:(id)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  [UICollectionViewAccessibility _axSetIsReorderingItems:?];
  v4.receiver = v7;
  v4.super_class = UICollectionViewAccessibility;
  return [(UICollectionViewAccessibility *)&v4 beginInteractiveMovementForItemAtIndexPath:v5];
}

- (void)endInteractiveMovement
{
  v4 = self;
  v3 = a2;
  [UICollectionViewAccessibility _axSetIsReorderingItems:?];
  v2.receiver = v4;
  v2.super_class = UICollectionViewAccessibility;
  [(UICollectionViewAccessibility *)&v2 endInteractiveMovement];
}

- (void)cancelInteractiveMovement
{
  v4 = self;
  v3 = a2;
  [UICollectionViewAccessibility _axSetIsReorderingItems:?];
  v2.receiver = v4;
  v2.super_class = UICollectionViewAccessibility;
  [(UICollectionViewAccessibility *)&v2 cancelInteractiveMovement];
}

- (void)_accessibilityPostReorderingAnnouncementForCurrentIndexPath:(id)a3 targetIndexPath:(id)a4 previousIndexPath:(id)a5
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = 0;
  objc_storeStrong(&v21, a5);
  v12 = [v22 item];
  v20 = v12 < [v21 item];
  v13 = [v22 section];
  if (v13 > [v21 section])
  {
    v19 = MEMORY[0x29EDC9748](v24);
    v9 = [v19 numberOfItemsInSection:{objc_msgSend(v22, "section")}];
    v20 = v9 != [v22 item];
    objc_storeStrong(&v19, 0);
  }

  v18 = [(UICollectionViewAccessibility *)v24 cellForItemAtIndexPath:location[0]];
  v8 = [v18 _accessibilityBriefLabel];
  v15 = 0;
  if (v8)
  {
    v5 = MEMORY[0x29EDC9748](v8);
  }

  else
  {
    v16 = [v18 accessibilityLabel];
    v15 = 1;
    v5 = MEMORY[0x29EDC9748](v16);
  }

  v17 = v5;
  if (v15)
  {
    MEMORY[0x29EDC9740](v16);
  }

  MEMORY[0x29EDC9740](v8);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDAA8]);
  if (v18 && v17)
  {
    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityUIKitLocalizedString();
    v14 = [v6 stringWithFormat:v17];
    MEMORY[0x29EDC9740](v7);
    UIAccessibilitySpeak();
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)_axHandleReusedView:(void *)a1
{
  v6 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v6)
  {
    v3 = [v6 _accessibilityOpaqueElementParent];
    if (!v3 && ([v6 isAccessibilityOpaqueElementProvider] & 1) != 0)
    {
      objc_storeStrong(&v3, v6);
    }

    [v3 _accessibilityDidReuseOpaqueElementView:{location, &v3}];
    objc_storeStrong(v2, 0);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (BOOL)_reuseCell:(id)a3 notifyDidEndDisplaying:(BOOL)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v7.receiver = v11;
  v7.super_class = UICollectionViewAccessibility;
  v8 = [(UICollectionViewAccessibility *)&v7 _reuseCell:location[0] notifyDidEndDisplaying:a4];
  [(UICollectionViewAccessibility *)v11 _axHandleReusedView:?];
  v6 = v8;
  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (BOOL)_reuseSupplementaryView:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v8;
  v5.super_class = UICollectionViewAccessibility;
  v6 = [(UICollectionViewAccessibility *)&v5 _reuseSupplementaryView:location[0]];
  [(UICollectionViewAccessibility *)v8 _axHandleReusedView:?];
  v4 = v6;
  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (id)_accessibilityUserTestingVisibleCells
{
  v17 = *MEMORY[0x29EDCA608];
  v15 = self;
  v14[1] = a2;
  v14[0] = [(UICollectionViewAccessibility *)self safeValueForKey:@"indexPathsForVisibleItems"];
  v13 = [MEMORY[0x29EDB8DE8] array];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](v14[0]);
  v9 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
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

      v12 = *(__b[1] + 8 * v6);
      location = [(UICollectionViewAccessibility *)v15 accessibilityCollectionCellElementForIndexPath:v12];
      if (location)
      {
        [v13 addObject:location];
      }

      objc_storeStrong(&location, 0);
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  v3 = MEMORY[0x29EDC9748](v13);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);

  return v3;
}

- (void)_accessibilityCollectionViewUpdateVisibleCells
{
  v7[2] = self;
  v7[1] = a2;
  v2 = MEMORY[0x29EDCA5F8];
  v3 = -1073741824;
  v4 = 0;
  v5 = __79__UICollectionViewAccessibility__accessibilityCollectionViewUpdateVisibleCells__block_invoke;
  v6 = &unk_29F30C7C8;
  v7[0] = MEMORY[0x29EDC9748](self);
  AXPerformSafeBlock();
  objc_storeStrong(v7, 0);
}

void __79__UICollectionViewAccessibility__accessibilityCollectionViewUpdateVisibleCells__block_invoke(void *a1)
{
  v1[2] = a1;
  v1[1] = a1;
  v1[0] = MEMORY[0x29EDC9748](a1[4]);
  [v1[0] _updateVisibleCellsNow:1];
  objc_storeStrong(v1, 0);
}

- (id)accessibilityCreatePrepareCellForIndexPath:(id)a3
{
  v38 = *MEMORY[0x29EDCA608];
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = MEMORY[0x29EDC9748](v35);
  v26 = 0;
  v27 = &v26;
  v28 = 838860800;
  v29 = 48;
  v30 = __Block_byref_object_copy__6;
  v31 = __Block_byref_object_dispose__6;
  v32 = 0;
  v19[3] = MEMORY[0x29EDCA5F8];
  v20 = -1073741824;
  v21 = 0;
  v22 = __76__UICollectionViewAccessibility_accessibilityCreatePrepareCellForIndexPath___block_invoke;
  v23 = &unk_29F30C860;
  v25[1] = &v26;
  v24 = MEMORY[0x29EDC9748](v33);
  v25[0] = MEMORY[0x29EDC9748](location[0]);
  AXPerformSafeBlock();
  if (v27[5])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 838860800;
    v11 = 48;
    v12 = __Block_byref_object_copy__6;
    v13 = __Block_byref_object_dispose__6;
    v14 = 0;
    v7[1] = &v8;
    v6 = MEMORY[0x29EDC9748](v33);
    v7[0] = MEMORY[0x29EDC9748](location[0]);
    v7[2] = &v26;
    AXPerformSafeBlock();
    v5 = MEMORY[0x29EDC9748](v9[5]);
    objc_storeStrong(v7, 0);
    objc_storeStrong(&v6, 0);
    _Block_object_dispose(&v8, 8);
    objc_storeStrong(&v14, 0);
    v15 = v5;
    [(UICollectionViewAccessibility *)v35 _accessibilityCollectionViewUpdateVisibleCells];
    v36 = MEMORY[0x29EDC9748](v15);
    v16 = 1;
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v19[0] = AXLogUIA();
    v18 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v19[0], OS_LOG_TYPE_ERROR))
    {
      v4 = [v33 safeValueForKey:@"_layout"];
      v17 = MEMORY[0x29EDC9748](v4);
      __os_log_helper_16_2_2_8_64_8_64(v37, v17, location[0]);
      _os_log_error_impl(&dword_29C4D6000, v19[0], v18, "No layout attributes for %@ at %@", v37, 0x16u);
      MEMORY[0x29EDC9740](v4);
      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(v19, 0);
    v36 = 0;
    v16 = 1;
  }

  objc_storeStrong(v25, 0);
  objc_storeStrong(&v24, 0);
  _Block_object_dispose(&v26, 8);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  return v36;
}

double __76__UICollectionViewAccessibility_accessibilityCreatePrepareCellForIndexPath___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) safeValueForKey:@"_layout"];
  v1 = [v6 initialLayoutAttributesForAppearingItemAtIndexPath:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  MEMORY[0x29EDC9740](v3);
  *&result = MEMORY[0x29EDC9740](v6).n128_u64[0];
  return result;
}

double __76__UICollectionViewAccessibility_accessibilityCreatePrepareCellForIndexPath___block_invoke_531(uint64_t a1)
{
  v1 = [*(a1 + 32) _createPreparedCellForItemAtIndexPath:*(a1 + 40) withLayoutAttributes:*(*(*(a1 + 56) + 8) + 40) applyAttributes:1];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (BOOL)_accessibilityOpaqueElementScrollsContentIntoView
{
  v6 = self;
  location[1] = a2;
  location[0] = [(UICollectionViewAccessibility *)self accessibilityUserDefinedOpaqueElementScrollsContentIntoView];
  if (location[0])
  {
    v7 = [location[0] BOOLValue] & 1;
  }

  else
  {
    [(UICollectionViewAccessibility *)v6 _accessibilityContentSize];
    if (AX_CGSizeIsProbablyEmpty(v2, v3))
    {
      v7 = 0;
    }

    else
    {
      [(UICollectionViewAccessibility *)v6 bounds];
      v7 = 1;
    }
  }

  objc_storeStrong(location, 0);
  return v7 & 1;
}

- (uint64_t)_accessibilityShouldDisableCellReuse
{
  if (a1)
  {
    v2 = [a1 _accessibilityShouldUseCollectionViewCellAccessibilityElements] & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (id)_dequeueReusableViewOfKind:(id)a3 withIdentifier:(id)a4 forIndexPath:(id)a5 viewCategory:(unint64_t)a6
{
  v37 = *MEMORY[0x29EDCA608];
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = 0;
  objc_storeStrong(&v33, a4);
  v32 = 0;
  objc_storeStrong(&v32, a5);
  v31 = a6;
  if (([(UICollectionViewAccessibility *)v35 _accessibilityShouldDisableCellReuse]& 1) != 0)
  {
    v19 = [(UICollectionViewAccessibility *)v35 safeValueForKey:@"_subviewManager"];
    v30 = [v19 safeDictionaryForKey:@"_reuseQueues"];
    *&v6 = MEMORY[0x29EDC9740](v19).n128_u64[0];
    v29 = [v30 objectForKeyedSubscript:{location[0], v6}];
    v28 = 0;
    if ([location[0] isEqualToString:@"UICollectionElementKindCell"])
    {
      objc_storeStrong(&v28, v33);
    }

    else
    {
      v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@/%@", location[0], v33];
      v8 = v28;
      v28 = v7;
      MEMORY[0x29EDC9740](v8);
    }

    v27 = [v29 objectForKey:v28];
    memset(__b, 0, sizeof(__b));
    v17 = MEMORY[0x29EDC9748](v27);
    v18 = [v17 countByEnumeratingWithState:__b objects:v36 count:16];
    if (v18)
    {
      v14 = *__b[2];
      v15 = 0;
      v16 = v18;
      while (1)
      {
        v13 = v15;
        if (*__b[2] != v14)
        {
          objc_enumerationMutation(v17);
        }

        v26 = *(__b[1] + 8 * v15);
        [v26 removeFromSuperview];
        ++v15;
        if (v13 + 1 >= v16)
        {
          v15 = 0;
          v16 = [v17 countByEnumeratingWithState:__b objects:v36 count:16];
          if (!v16)
          {
            break;
          }
        }
      }
    }

    *&v9 = MEMORY[0x29EDC9740](v17).n128_u64[0];
    [v29 removeAllObjects];
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
  }

  v23.receiver = v35;
  v23.super_class = UICollectionViewAccessibility;
  v24 = [(UICollectionViewAccessibility *)&v23 _dequeueReusableViewOfKind:location[0] withIdentifier:v33 forIndexPath:v32 viewCategory:v31];
  if ([location[0] isEqualToString:*MEMORY[0x29EDC8048]])
  {
    v10 = [v24 accessibilityTraits];
    [v24 setAccessibilityTraits:v10 | *MEMORY[0x29EDC7F80]];
  }

  v12 = MEMORY[0x29EDC9748](v24);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);

  return v12;
}

- (id)accessibilityCellForRowAtIndexPath:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = MEMORY[0x29EDC9748](v15);
  v12 = [v13 numberOfSections];
  v10 = 0;
  v7 = 1;
  if (location[0])
  {
    v7 = 1;
    if ([location[0] section] < v12)
    {
      v6 = [location[0] item];
      v7 = 1;
      if (v6 < [v13 numberOfItemsInSection:{objc_msgSend(location[0], "section")}])
      {
        v5 = [location[0] item];
        v11 = [v13 dataSource];
        v10 = 1;
        v7 = v5 >= [v11 collectionView:v13 numberOfItemsInSection:{objc_msgSend(location[0], "section")}];
      }
    }
  }

  if (v10)
  {
    MEMORY[0x29EDC9740](v11);
  }

  if (v7)
  {
    v16 = 0;
    v9 = 1;
  }

  else
  {
    v8 = [v13 cellForItemAtIndexPath:location[0]];
    if (!v8)
    {
      v8 = [(UICollectionViewAccessibility *)v15 accessibilityCreatePrepareCellForIndexPath:location[0]];
      [v8 layoutSubviews];
      [v8 removeFromSuperview];
    }

    v16 = MEMORY[0x29EDC9748](v8);
    v9 = 1;
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  v3 = v16;

  return v3;
}

- (id)accessibilityCollectionCellElementForIndexPath:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = [(UICollectionViewAccessibility *)v11 axData];
  v7 = [(AXCollectionViewData *)v9 children];
  v8 = [v7 objectForKey:location[0]];
  MEMORY[0x29EDC9740](v7);
  if (!v8)
  {
    v3 = objc_allocWithZone(UICollectionViewCellAccessibilityElement);
    v8 = [v3 initWithAccessibilityContainer:v11];
    [v8 setIndexPath:{location[0], MEMORY[0x29EDC9740](0).n128_f64[0]}];
    v6 = [(AXCollectionViewData *)v9 children];
    [v6 setObject:v8 forKey:location[0]];
    MEMORY[0x29EDC9740](v6);
  }

  v5 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (uint64_t)_axGlobalRowForIndexPath:(uint64_t)a1
{
  v19 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v19)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x20000000;
    v14 = 32;
    v15 = 0;
    v4 = MEMORY[0x29EDCA5F8];
    v5 = -1073741824;
    v6 = 0;
    v7 = __58__UICollectionViewAccessibility__axGlobalRowForIndexPath___block_invoke;
    v8 = &unk_29F30C860;
    v10[1] = &v11;
    v9 = MEMORY[0x29EDC9748](v19);
    v10[0] = MEMORY[0x29EDC9748](location);
    AXPerformSafeBlock();
    v3 = v12[3];
    objc_storeStrong(v10, 0);
    objc_storeStrong(&v9, 0);
    _Block_object_dispose(&v11, 8);
    v16 = v3;
    v20 = v3;
  }

  else
  {
    v20 = 0;
  }

  v17 = 1;
  objc_storeStrong(&location, 0);
  return v20;
}

uint64_t __58__UICollectionViewAccessibility__axGlobalRowForIndexPath___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _globalIndexPathForItemAtIndexPath:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)_axIndexPathForGlobalRow:(uint64_t)a1
{
  v15 = a1;
  v14 = a2;
  if (a1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 838860800;
    v9 = 48;
    v10 = __Block_byref_object_copy__6;
    v11 = __Block_byref_object_dispose__6;
    v12 = 0;
    v5[1] = &v6;
    v5[0] = MEMORY[0x29EDC9748](v15);
    v5[2] = v14;
    AXPerformSafeBlock();
    v4 = MEMORY[0x29EDC9748](v7[5]);
    objc_storeStrong(v5, 0);
    _Block_object_dispose(&v6, 8);
    objc_storeStrong(&v12, 0);
    v13 = v4;
    v16 = MEMORY[0x29EDC9748](v4);
    objc_storeStrong(&v13, 0);
  }

  else
  {
    v16 = 0;
  }

  v2 = v16;

  return v2;
}

double __58__UICollectionViewAccessibility__axIndexPathForGlobalRow___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _indexPathForGlobalIndex:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (id)_accessibilityFuzzyHitTest:(CGPoint *)a3 withEvent:(id)a4
{
  v42 = *MEMORY[0x29EDCA608];
  v39 = self;
  v38 = a2;
  v37 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  if ([(UICollectionViewAccessibility *)v39 _accessibilityShouldUseCollectionViewCellAccessibilityElements])
  {
    v33 = 0;
    v32 = 1.79769313e308;
    UIAccessibilityPointForPoint();
    v31[1] = v4;
    v31[2] = v5;
    v31[0] = [(UICollectionViewAccessibility *)v39 safeValueForKey:@"indexPathsForVisibleItems"];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v31[0]);
    v22 = [obj countByEnumeratingWithState:__b objects:v41 count:16];
    if (v22)
    {
      v18 = *__b[2];
      v19 = 0;
      v20 = v22;
      while (1)
      {
        v17 = v19;
        if (*__b[2] != v18)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(__b[1] + 8 * v19);
        v28 = [(UICollectionViewAccessibility *)v39 _axGlobalRowForIndexPath:v30];
        if (v28 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v27 = [(UICollectionViewAccessibility *)v39 accessibilityCollectionCellElementForIndexPath:v30];
          [v27 accessibilityActivationPoint];
          v25[1] = v6;
          v25[2] = v7;
          AX_CGPointGetDistanceToPoint();
          v26 = v8;
          if (v8 < v32)
          {
            v32 = v26;
            objc_storeStrong(&v33, v27);
          }

          objc_storeStrong(&v27, 0);
        }

        ++v19;
        if (v17 + 1 >= v20)
        {
          v19 = 0;
          v20 = [obj countByEnumeratingWithState:__b objects:v41 count:16];
          if (!v20)
          {
            break;
          }
        }
      }
    }

    *&v9 = MEMORY[0x29EDC9740](obj).n128_u64[0];
    if (v33)
    {
      v25[0] = [v33 cell];
      [v25[0] bounds];
      rect = v44;
      CGRectGetMidX(v44);
      CGRectGetMidY(rect);
      CGPointMake_3();
      p_x = &v37->x;
      [(UICollectionViewAccessibility *)v39 convertPoint:v25[0] fromView:v10, v11];
      *&v23 = v12;
      *(&v23 + 1) = v13;
      *p_x = v23;
      v40 = MEMORY[0x29EDC9748](v33);
      v34 = 1;
      objc_storeStrong(v25, 0);
    }

    else
    {
      v40 = 0;
      v34 = 1;
    }

    objc_storeStrong(v31, 0);
    objc_storeStrong(&v33, 0);
  }

  else
  {
    v35.receiver = v39;
    v35.super_class = UICollectionViewAccessibility;
    v40 = [(UICollectionViewAccessibility *)&v35 _accessibilityFuzzyHitTest:v37 withEvent:location];
    v34 = 1;
  }

  objc_storeStrong(&location, 0);
  v14 = v40;

  return v14;
}

- (BOOL)_accessibilityOverridesContainerProtocol
{
  if (a1)
  {
    if (!_accessibilityOverridesContainerProtocol_baseCount)
    {
      v1 = objc_opt_class();
      _accessibilityOverridesContainerProtocol_baseCount = class_getInstanceMethod(v1, sel_accessibilityElementCount);
      v2 = objc_opt_class();
      _accessibilityOverridesContainerProtocol_baseElemAtIndex = class_getInstanceMethod(v2, sel_accessibilityElementAtIndex_);
      v3 = objc_opt_class();
      _accessibilityOverridesContainerProtocol_baseIndexOfElem = class_getInstanceMethod(v3, sel_indexOfAccessibilityElement_);
      v4 = objc_opt_class();
      _accessibilityOverridesContainerProtocol_baseElems = class_getInstanceMethod(v4, sel_accessibilityElements);
    }

    v5 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v5, sel_accessibilityElementCount);
    v6 = objc_opt_class();
    v13 = class_getInstanceMethod(v6, sel_accessibilityElementAtIndex_);
    v7 = objc_opt_class();
    v12 = class_getInstanceMethod(v7, sel_indexOfAccessibilityElement_);
    v8 = objc_opt_class();
    v11 = class_getInstanceMethod(v8, sel_accessibilityElements);
    v10 = 0;
    if (_accessibilityOverridesContainerProtocol_baseCount != InstanceMethod)
    {
      v10 = 0;
      if (_accessibilityOverridesContainerProtocol_baseElemAtIndex != v13)
      {
        v10 = 0;
        if (_accessibilityOverridesContainerProtocol_baseIndexOfElem != v12)
        {
          return _accessibilityOverridesContainerProtocol_baseElems != v11;
        }
      }
    }

    return v10;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isAccessibilityOpaqueElementProvider
{
  v6 = self;
  v5 = a2;
  v4 = 1;
  if ([(UICollectionViewAccessibility *)self accessibilityCollectionViewBehavesLikeUIViewAccessibility])
  {
    v3.receiver = v6;
    v3.super_class = UICollectionViewAccessibility;
    v4 = [(UICollectionViewAccessibility *)&v3 isAccessibilityOpaqueElementProvider];
  }

  if (([*MEMORY[0x29EDC8008] _accessibilityWantsOpaqueElementProviders] & 1) == 0)
  {
    v4 = 0;
  }

  if ([(UICollectionViewAccessibility *)v6 accessibilityElementCount]!= 0x7FFFFFFFFFFFFFFFLL && [(UICollectionViewAccessibility *)v6 _accessibilityOverridesContainerProtocol])
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v76 = *MEMORY[0x29EDCA608];
  v73 = a3;
  v72 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v70 = [(UICollectionViewAccessibility *)v72 _accessibilityBoolValueForKey:@"AXInHitTestOverride"];
  v62 = 0;
  v30 = 0;
  if ((v70 & 1) == 0)
  {
    v64 = MEMORY[0x29EDCA5F8];
    v65 = -1073741824;
    v66 = 0;
    v67 = __65__UICollectionViewAccessibility__accessibilityHitTest_withEvent___block_invoke;
    v68 = &unk_29F30CEB0;
    v69 = MEMORY[0x29EDC9748](v72);
    v63 = &v69;
    v62 = 1;
    v30 = (__65__UICollectionViewAccessibility__accessibilityHitTest_withEvent___block_invoke)();
  }

  if (v30)
  {
    [(UICollectionViewAccessibility *)v72 _accessibilitySetBoolValue:1 forKey:?];
    v61 = [(UICollectionViewAccessibility *)v72 accessibilityHitTest:location[0] withEvent:v73.x, v73.y];
    [(UICollectionViewAccessibility *)v72 _accessibilitySetBoolValue:0 forKey:@"AXInHitTestOverride"];
    v74 = MEMORY[0x29EDC9748](v61);
    v60 = 1;
    objc_storeStrong(&v61, 0);
  }

  else
  {
    v60 = 0;
  }

  if (v62)
  {
    objc_storeStrong(v63, 0);
  }

  if (!v60)
  {
    if ([(UICollectionViewAccessibility *)v72 accessibilityCollectionViewBehavesLikeUIViewAccessibility])
    {
      v59.receiver = v72;
      v59.super_class = UICollectionViewAccessibility;
      v74 = [(UICollectionViewAccessibility *)&v59 _accessibilityHitTest:location[0] withEvent:v73.x, v73.y];
      v60 = 1;
      goto LABEL_92;
    }

    v58 = [location[0] _accessibilityHitTestType] == 3;
    if (v58 || ([*MEMORY[0x29EDC8008] _accessibilityWantsOpaqueElementProviders] & 1) != 0 && -[UICollectionViewAccessibility isAccessibilityOpaqueElementProvider](v72, "isAccessibilityOpaqueElementProvider"))
    {
      v74 = [(UICollectionViewAccessibility *)v72 __accessibilityHitTest:location[0] withEvent:v73.x, v73.y];
      v60 = 1;
      goto LABEL_92;
    }

    if (![(UICollectionViewAccessibility *)v72 _accessibilityShouldUseCollectionViewCellAccessibilityElements])
    {
      v57.receiver = v72;
      v57.super_class = UICollectionViewAccessibility;
      v74 = [(UICollectionViewAccessibility *)&v57 _accessibilityHitTest:location[0] withEvent:v73.x, v73.y];
      v60 = 1;
      goto LABEL_92;
    }

    v56 = MEMORY[0x29EDC9748](v72);
    if (([(UICollectionViewAccessibility *)v72 pointInside:location[0] withEvent:v73.x, v73.y]& 1) == 0)
    {
      v74 = 0;
      v60 = 1;
LABEL_91:
      objc_storeStrong(&v56, 0);
      goto LABEL_92;
    }

    v28 = v72;
    v29 = [(UICollectionViewAccessibility *)v72 _accessibilitySupplementaryHeaderViews];
    v55 = [(UICollectionViewAccessibility *)v28 _accessibilityHitTestSupplementaryViews:v73.x point:v73.y withEvent:?];
    MEMORY[0x29EDC9740](0);
    *&v4 = MEMORY[0x29EDC9740](v29).n128_u64[0];
    if (v55 || (v26 = v72, v27 = [(UICollectionViewAccessibility *)v72 _accessibilitySupplementaryFooterViews], v55 = [(UICollectionViewAccessibility *)v26 _accessibilityHitTestSupplementaryViews:v73.x point:v73.y withEvent:?], MEMORY[0x29EDC9740](0), MEMORY[0x29EDC9740](v27), v55))
    {
      v74 = MEMORY[0x29EDC9748](v55);
      v60 = 1;
LABEL_90:
      objc_storeStrong(&v55, 0);
      goto LABEL_91;
    }

    v54 = [v56 __accessibilityHitTest:location[0] withEvent:{v73.x, v73.y}];
    v52 = 0;
    v50 = 0;
    v48 = 0;
    v25 = 0;
    if (v54)
    {
      v25 = 0;
      if (v54 != v72)
      {
        objc_opt_class();
        v25 = 0;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v53 = [v54 _accessibilityAncestorIsKindOf:objc_opt_class()];
          v52 = 1;
          v25 = 0;
          if (!v53)
          {
            v51 = [v54 _accessibilityAncestorIsKindOf:objc_opt_class()];
            v50 = 1;
            v25 = 0;
            if (!v51)
            {
              v49 = [v54 accessibilityContainer];
              v48 = 1;
              v25 = v49 != 0;
            }
          }
        }
      }
    }

    if (v48)
    {
      MEMORY[0x29EDC9740](v49);
    }

    if (v50)
    {
      MEMORY[0x29EDC9740](v51);
    }

    if (v52)
    {
      MEMORY[0x29EDC9740](v53);
    }

    if (v25)
    {
      if ([v54 isAccessibilityElement])
      {
        v74 = MEMORY[0x29EDC9748](v54);
        v60 = 1;
LABEL_89:
        objc_storeStrong(&v54, 0);
        goto LABEL_90;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v54 convertPoint:v72 fromView:{v73.x, v73.y}];
        v46[1] = v5;
        v46[2] = v6;
        v47 = [v54 _accessibilityHitTest:location[0] withEvent:{*&v5, *&v6}];
        if ([v47 isAccessibilityElement])
        {
          v74 = MEMORY[0x29EDC9748](v47);
          v60 = 1;
        }

        else
        {
          v60 = 0;
        }

        objc_storeStrong(&v47, 0);
        if (v60)
        {
          goto LABEL_89;
        }
      }
    }

    if (![(UICollectionViewAccessibility *)v72 accessibilityElementCount])
    {
      v74 = MEMORY[0x29EDC9748](v72);
      v60 = 1;
      goto LABEL_89;
    }

    v46[0] = [v56 indexPathForItemAtPoint:{v73.x, v73.y}];
    v44 = 0;
    v24 = 1;
    if (v46[0])
    {
      v45 = [v56 cellForItemAtIndexPath:v46[0]];
      v44 = 1;
      v24 = v45 == 0;
    }

    if (v44)
    {
      MEMORY[0x29EDC9740](v45);
    }

    if (!v24)
    {
      goto LABEL_73;
    }

    if ((-[UICollectionViewAccessibility _accessibilityHitTestShouldFallbackToNearestChild](v72, "_accessibilityHitTestShouldFallbackToNearestChild") & 1) != 0 && ([location[0] _accessibilityAutomationHitTest] & 1) == 0)
    {
      v7 = [(UICollectionViewAccessibility *)v72 _accessibilityFuzzyHitTest:&v73 withEvent:location[0]];
      v8 = v55;
      v55 = v7;
      MEMORY[0x29EDC9740](v8);
    }

    if (!v55 && v54)
    {
      v43 = [v54 _accessibilityAncestorIsKindOf:objc_opt_class()];
      v41 = 0;
      objc_opt_class();
      v23 = [v43 safeValueForKey:@"_layoutAttributes"];
      v40 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v23);
      v39 = MEMORY[0x29EDC9748](v40);
      objc_storeStrong(&v40, 0);
      v42 = v39;
      v38 = [v39 representedElementKind];
      if (![v38 length])
      {
        goto LABEL_69;
      }

      v37 = [(UICollectionViewAccessibility *)v72 safeDictionaryForKey:@"_supplementaryViewClassDict"];
      memset(__b, 0, 0x40uLL);
      obj = [v37 allKeys];
      v22 = [obj countByEnumeratingWithState:__b objects:v75 count:16];
      if (v22)
      {
        v18 = *__b[2];
        v19 = 0;
        v20 = v22;
        while (1)
        {
          v17 = v19;
          if (*__b[2] != v18)
          {
            objc_enumerationMutation(obj);
          }

          __b[8] = *(__b[1] + 8 * v19);
          v35 = 0;
          objc_opt_class();
          v34 = __UIAccessibilityCastAsClass();
          if (v35)
          {
            abort();
          }

          v33 = MEMORY[0x29EDC9748](v34);
          objc_storeStrong(&v34, 0);
          v16 = [v33 hasPrefix:v38];
          *&v9 = MEMORY[0x29EDC9740](v33).n128_u64[0];
          if (v16)
          {
            break;
          }

          ++v19;
          if (v17 + 1 >= v20)
          {
            v19 = 0;
            v20 = [obj countByEnumeratingWithState:__b objects:v75 count:{16, v9}];
            if (!v20)
            {
              goto LABEL_65;
            }
          }
        }

        v74 = MEMORY[0x29EDC9748](v54);
        v60 = 1;
      }

      else
      {
LABEL_65:
        v60 = 0;
      }

      MEMORY[0x29EDC9740](obj);
      if (!v60)
      {
        v60 = 0;
      }

      objc_storeStrong(&v37, 0);
      if (!v60)
      {
LABEL_69:
        v60 = 0;
      }

      objc_storeStrong(&v38, 0);
      objc_storeStrong(&v42, 0);
      objc_storeStrong(&v43, 0);
      if (v60)
      {
        goto LABEL_88;
      }
    }

    if (v55)
    {
LABEL_73:
      v32 = [(UICollectionViewAccessibility *)v72 _axGlobalRowForIndexPath:?];
      if (v32 != 0x7FFFFFFFFFFFFFFFLL && !v55)
      {
        v10 = [(UICollectionViewAccessibility *)v72 accessibilityCollectionCellElementForIndexPath:v46[0]];
        v11 = v55;
        v55 = v10;
        MEMORY[0x29EDC9740](v11);
      }

      if (v55)
      {
        v31 = [v55 _accessibilityHitTest:location[0] withEvent:{v73.x, v73.y}];
        if (!v31 && (-[UICollectionViewAccessibility _accessibilityHitTestShouldFallbackToNearestChild](v72, "_accessibilityHitTestShouldFallbackToNearestChild") & 1) != 0 && ([location[0] _accessibilityAutomationHitTest] & 1) == 0)
        {
          v12 = [v55 accessibilityElementAtIndex:0];
          v13 = v31;
          v31 = v12;
          MEMORY[0x29EDC9740](v13);
        }

        objc_storeStrong(&v55, v31);
        objc_storeStrong(&v31, 0);
      }

      if (v55 && ([v55 isAccessibilityElement] & 1) != 0 || v55 && (objc_msgSend(location[0], "_accessibilityAutomationHitTest") & 1) != 0)
      {
        v74 = MEMORY[0x29EDC9748](v55);
        v60 = 1;
      }

      else
      {
        v74 = MEMORY[0x29EDC9748](v72);
        v60 = 1;
      }
    }

    else
    {
      v74 = MEMORY[0x29EDC9748](v72);
      v60 = 1;
    }

LABEL_88:
    objc_storeStrong(v46, 0);
    goto LABEL_89;
  }

LABEL_92:
  objc_storeStrong(location, 0);
  v14 = v74;

  return v14;
}

BOOL __65__UICollectionViewAccessibility__accessibilityHitTest_withEvent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &UICollectionElementKindCell_block_invoke_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_15);
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

  return Implementation != UICollectionElementKindCell_block_invoke_BaseImplementation;
}

void __65__UICollectionViewAccessibility__accessibilityHitTest_withEvent___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  if (InstanceMethod)
  {
    UICollectionElementKindCell_block_invoke_BaseImplementation = method_getImplementation(InstanceMethod);
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

- (BOOL)_accessibilityHasOrderedChildren
{
  v5 = self;
  v4 = a2;
  if ([(UICollectionViewAccessibility *)self isAccessibilityOpaqueElementProvider])
  {
    return 0;
  }

  v3.receiver = v5;
  v3.super_class = UICollectionViewAccessibility;
  return [(UICollectionViewAccessibility *)&v3 _accessibilityHasOrderedChildren];
}

- (int64_t)accessibilityElementCount
{
  v7 = self;
  v6[1] = a2;
  if (![(UICollectionViewAccessibility *)self _accessibilityShouldUseCollectionViewCellAccessibilityElements])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6[0] = [(UICollectionViewAccessibility *)v7 axData];
  v5 = [(AXCollectionViewData *)v6[0] childCount];
  v3 = [(UICollectionViewAccessibility *)v7 _accessibilityOtherCollectionViewItems];
  v4 = [v3 count];
  MEMORY[0x29EDC9740](v3);
  v8 = v5 + v4;
  objc_storeStrong(v6, 0);
  return v8;
}

- (id)_accessibilityOtherCollectionViewItems
{
  v43 = *MEMORY[0x29EDCA608];
  v41 = self;
  v40[1] = a2;
  v40[0] = [MEMORY[0x29EDB8DE8] array];
  v14 = [(UICollectionViewAccessibility *)v41 axData];
  v39 = [(AXCollectionViewData *)v14 children];
  MEMORY[0x29EDC9740](v14);
  v37 = 0;
  objc_opt_class();
  v36 = __UIAccessibilityCastAsClass();
  v35 = MEMORY[0x29EDC9748](v36);
  objc_storeStrong(&v36, 0);
  v38 = v35;
  memset(__b, 0, sizeof(__b));
  obj = [(UICollectionViewAccessibility *)v41 subviews];
  v13 = [obj countByEnumeratingWithState:__b objects:v42 count:16];
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

      v34 = *(__b[1] + 8 * v10);
      objc_opt_class();
      v7 = 0;
      if (objc_opt_isKindOfClass())
      {
        v27 = 0;
        v28 = &v27;
        v29 = 0x20000000;
        v30 = 32;
        v31 = 0;
        v21 = MEMORY[0x29EDCA5F8];
        v22 = -1073741824;
        v23 = 0;
        v24 = __71__UICollectionViewAccessibility__accessibilityOtherCollectionViewItems__block_invoke;
        v25 = &unk_29F30CC70;
        v26[1] = &v27;
        v26[0] = MEMORY[0x29EDC9748](v34);
        AXPerformSafeBlock();
        v20 = v28[3] & 1;
        objc_storeStrong(v26, 0);
        _Block_object_dispose(&v27, 8);
        v7 = v20;
      }

      v32 = v7 & 1;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (v32) && ([v34 _accessibilityViewIsVisible])
        {
          if ((v32 & 1) == 0)
          {
            goto LABEL_18;
          }

          v6 = v38;
          v18 = 0;
          objc_opt_class();
          v17 = __UIAccessibilityCastAsClass();
          if (v18)
          {
            abort();
          }

          v16 = MEMORY[0x29EDC9748](v17);
          objc_storeStrong(&v17, 0);
          v19 = [v6 indexPathForCell:?];
          *&v2 = MEMORY[0x29EDC9740](v16).n128_u64[0];
          v5 = [v39 objectForKey:{v19, v2}];
          MEMORY[0x29EDC9740](v5);
          v15 = v5 ? 3 : 0;
          objc_storeStrong(&v19, 0);
          if (!v15)
          {
LABEL_18:
            [v40[0] addObject:v34];
          }
        }
      }

      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v42 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  v4 = MEMORY[0x29EDC9748](v40[0]);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(v40, 0);

  return v4;
}

double __71__UICollectionViewAccessibility__accessibilityOtherCollectionViewItems__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [v2 safeValueForKey:@"_layoutAttributes"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 _isStyledAsHeaderOrFooterFromLayoutAttributes:?];
  *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
  return result;
}

- (id)_accessibilityIndexPathToOtherCollectionViewItems
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = self;
  v13[1] = a2;
  v13[0] = [MEMORY[0x29EDB8E00] dictionary];
  memset(__b, 0, sizeof(__b));
  obj = [(UICollectionViewAccessibility *)v14 _accessibilityOtherCollectionViewItems];
  v9 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
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

      v12 = *(__b[1] + 8 * v6);
      location = [(UICollectionViewAccessibility *)v14 indexPathForSupplementaryView:v12];
      if (location)
      {
        [v13[0] setObject:v12 forKey:location];
      }

      objc_storeStrong(&location, 0);
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  v3 = MEMORY[0x29EDC9748](v13[0]);
  objc_storeStrong(v13, 0);

  return v3;
}

- (id)accessibilityElementAtIndex:(int64_t)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9 = [(UICollectionViewAccessibility *)self axData];
  if (v10 < [(AXCollectionViewData *)v9 childCount])
  {
    if ([(AXCollectionViewData *)v9 childCount])
    {
      v5 = [(UICollectionViewAccessibility *)v12 _axIndexPathForGlobalRow:v10];
      if (v5)
      {
        v13 = [(UICollectionViewAccessibility *)v12 accessibilityCollectionCellElementForIndexPath:v5];
      }

      else
      {
        v13 = 0;
      }

      v6 = 1;
      objc_storeStrong(&v5, 0);
    }

    else
    {
      v13 = 0;
      v6 = 1;
    }
  }

  else
  {
    location = [(UICollectionViewAccessibility *)v12 _accessibilityOtherCollectionViewItems];
    v7 = &v10[[(AXCollectionViewData *)v9]];
    if ((v7 & 0x8000000000000000) != 0 || v7 >= [location count])
    {
      v13 = 0;
      v6 = 1;
    }

    else
    {
      v13 = [location objectAtIndex:v7];
      v6 = 1;
    }

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&v9, 0);
  v3 = v13;

  return v3;
}

- (int64_t)indexOfAccessibilityElement:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v10;
    v5 = [location[0] indexPath];
    v11 = [(UICollectionViewAccessibility *)v4 _axGlobalRowForIndexPath:v5];
    MEMORY[0x29EDC9740](v5);
  }

  else
  {
    v8 = [(UICollectionViewAccessibility *)v10 _accessibilityOtherCollectionViewItems];
    v7 = [v8 indexOfObject:location[0]];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = [(UICollectionViewAccessibility *)v10 axData];
      v11 = [(AXCollectionViewData *)v6 childCount]+ v7;
      MEMORY[0x29EDC9740](v6);
    }

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(location, 0);
  return v11;
}

- (int64_t)accessibilityContainerType
{
  v5 = [(UICollectionViewAccessibility *)self storedAccessibilityContainerType];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v5)
  {
    v4 = [(UICollectionViewAccessibility *)self storedAccessibilityContainerType];
    v7 = [v4 integerValue];
    MEMORY[0x29EDC9740](v4);
  }

  else if ([(UICollectionViewAccessibility *)self numberOfSections]<= 0 || ([(UICollectionViewAccessibility *)self isAccessibilityElement]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return 4;
  }

  return v7;
}

- (BOOL)_accessibilityDescendantElementAtIndexPathIsValid:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(UICollectionViewAccessibility *)v6 safeValueForKey:@"delegate"];
  v7 = !v4 || v4 == v6 || ([v4 _accessibilityDescendantElementAtIndexPathIsValid:location[0]] & 1) != 0;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (id)_accessibilityScannerGroupElements
{
  v44 = *MEMORY[0x29EDCA608];
  v37 = self;
  v36[1] = a2;
  if (([(UICollectionViewAccessibility *)self _accessibilityTreatCollectionViewRowsAsScannerGroups]& 1) != 0)
  {
    v38 = [(UICollectionViewAccessibility *)v37 _accessibilityScannerGroupElementsGroupedByRow];
  }

  else
  {
    v36[0] = [MEMORY[0x29EDB8DE8] array];
    v24 = [MEMORY[0x29EDC7328] defaultSwitchControlOptions];
    v35 = [(UICollectionViewAccessibility *)v37 _accessibilityViewChildrenWithOptions:?];
    v34 = 0x7FFFFFFFFFFFFFFFLL;
    v33 = 0;
    v32 = 64;
    if ([(UICollectionViewAccessibility *)v37 numberOfSections]> 1)
    {
      v32 |= 0x10uLL;
    }

    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v35);
    v23 = [obj countByEnumeratingWithState:__b objects:v43 count:16];
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

        v31 = *(__b[1] + 8 * v20);
        v29 = 0x7FFFFFFFFFFFFFFFLL;
        v28 = [(UICollectionViewAccessibility *)v37 _accessibilityIndexPathOfDirectSubviewForDescendantElement:v31 withElementKind:0];
        if (v28)
        {
          v29 = [v28 section];
        }

        if (v29 != v34)
        {
          if ([v33 count])
          {
            v41[0] = @"GroupElements";
            v42[0] = v33;
            v41[1] = @"GroupTraits";
            v17 = [MEMORY[0x29EDBA070] numberWithUnsignedLong:v32];
            v42[1] = v17;
            v41[2] = @"GroupScanBehaviorTraits";
            v42[2] = &unk_2A238E798;
            v41[3] = @"GroupIdentifier";
            v14 = MEMORY[0x29EDBA0F8];
            v16 = [(UICollectionViewAccessibility *)v37 _accessibilityGroupIdentifier];
            v15 = [v14 stringWithFormat:@"%@-%lu", v16, v34];
            v42[3] = v15;
            v27 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v42 forKeys:v41 count:4];
            MEMORY[0x29EDC9740](v15);
            MEMORY[0x29EDC9740](v16);
            *&v2 = MEMORY[0x29EDC9740](v17).n128_u64[0];
            [v36[0] addObject:{v27, v2}];
            objc_storeStrong(&v27, 0);
          }

          v34 = v29;
          objc_storeStrong(&v33, 0);
          if (v29 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
            v4 = v33;
            v33 = v3;
            MEMORY[0x29EDC9740](v4);
          }
        }

        if (v33)
        {
          v5 = MEMORY[0x29EDC9748](v33);
        }

        else
        {
          v5 = MEMORY[0x29EDC9748](v36[0]);
        }

        v26 = v5;
        [v31 _accessibilityProcessScannerGroupElementPieces:v5];
        objc_storeStrong(&v26, 0);
        objc_storeStrong(&v28, 0);
        ++v20;
        if (v18 + 1 >= v21)
        {
          v20 = 0;
          v21 = [obj countByEnumeratingWithState:__b objects:v43 count:16];
          if (!v21)
          {
            break;
          }
        }
      }
    }

    *&v6 = MEMORY[0x29EDC9740](obj).n128_u64[0];
    if ([v33 count])
    {
      v39[0] = @"GroupElements";
      v40[0] = v33;
      v39[1] = @"GroupTraits";
      v13 = [MEMORY[0x29EDBA070] numberWithUnsignedLong:v32];
      v40[1] = v13;
      v39[2] = @"GroupScanBehaviorTraits";
      v40[2] = &unk_2A238E798;
      v39[3] = @"GroupIdentifier";
      v10 = MEMORY[0x29EDBA0F8];
      v12 = [(UICollectionViewAccessibility *)v37 _accessibilityGroupIdentifier];
      v11 = [v10 stringWithFormat:@"%@-%lu", v12, v34];
      v40[3] = v11;
      v25 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v40 forKeys:v39 count:4];
      MEMORY[0x29EDC9740](v11);
      MEMORY[0x29EDC9740](v12);
      *&v7 = MEMORY[0x29EDC9740](v13).n128_u64[0];
      [v36[0] addObject:{v25, v7}];
      objc_storeStrong(&v25, 0);
    }

    v38 = MEMORY[0x29EDC9748](v36[0]);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(v36, 0);
  }

  v8 = v38;

  return v8;
}

- (id)_accessibilityScannerGroupElementsGroupedByRow
{
  v47 = *MEMORY[0x29EDCA608];
  v40 = a1;
  if (a1)
  {
    v39 = [MEMORY[0x29EDB8DE8] array];
    v24 = [MEMORY[0x29EDC7328] defaultSwitchControlOptions];
    v38 = [v40 _accessibilityViewChildrenWithOptions:?];
    v37 = 80;
    v36 = [v40 _accessibilityCollectionViewItemsPerRow];
    v35 = 0;
    v34 = [MEMORY[0x29EDB8DE8] array];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v38);
    v26 = [obj countByEnumeratingWithState:__b objects:v46 count:16];
    if (v26)
    {
      v21 = *__b[2];
      v22 = 0;
      v23 = v26;
      while (1)
      {
        v20 = v22;
        if (*__b[2] != v21)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(__b[1] + 8 * v22);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v39 addObject:v33];
        }

        else
        {
          v31 = [v33 _accessibilityIndexPath];
          if (v31 || (v19 = [v33 _accessibilityAncestorIsKindOf:objc_opt_class()], v1 = objc_msgSend(v19, "_accessibilityIndexPath"), v2 = v31, v31 = v1, MEMORY[0x29EDC9740](v2), MEMORY[0x29EDC9740](v19), v31))
          {
            v3 = [v31 item];
            v29 = v3 / v36;
            if (v3 / v36 == v35)
            {
              [v34 addObject:v33];
            }

            else
            {
              if ([v34 count])
              {
                v44[0] = @"GroupElements";
                v18 = [MEMORY[0x29EDB8D80] arrayWithArray:v34];
                v45[0] = v18;
                v44[1] = @"GroupTraits";
                v17 = [MEMORY[0x29EDBA070] numberWithUnsignedLong:v37];
                v45[1] = v17;
                v44[2] = @"GroupScanBehaviorTraits";
                v45[2] = &unk_2A238E798;
                v44[3] = @"GroupIdentifier";
                v14 = MEMORY[0x29EDBA0F8];
                v16 = [v40 _accessibilityGroupIdentifier];
                v15 = [v14 stringWithFormat:@"%@-%lu", v16, v35];
                v45[3] = v15;
                v28 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v45 forKeys:v44 count:4];
                MEMORY[0x29EDC9740](v15);
                MEMORY[0x29EDC9740](v16);
                MEMORY[0x29EDC9740](v17);
                *&v4 = MEMORY[0x29EDC9740](v18).n128_u64[0];
                [v39 addObject:{v28, v4}];
                [v34 removeAllObjects];
                objc_storeStrong(&v28, 0);
              }

              v35 = v29;
              [v34 addObject:v33];
            }

            v30 = 0;
          }

          else
          {
            v30 = 3;
          }

          objc_storeStrong(&v31, 0);
        }

        ++v22;
        if (v20 + 1 >= v23)
        {
          v22 = 0;
          v23 = [obj countByEnumeratingWithState:__b objects:v46 count:16];
          if (!v23)
          {
            break;
          }
        }
      }
    }

    *&v5 = MEMORY[0x29EDC9740](obj).n128_u64[0];
    if ([v34 count])
    {
      v42[0] = @"GroupElements";
      v13 = [MEMORY[0x29EDB8D80] arrayWithArray:v34];
      v43[0] = v13;
      v42[1] = @"GroupTraits";
      v12 = [MEMORY[0x29EDBA070] numberWithUnsignedLong:v37];
      v43[1] = v12;
      v42[2] = @"GroupScanBehaviorTraits";
      v43[2] = &unk_2A238E798;
      v42[3] = @"GroupIdentifier";
      v9 = MEMORY[0x29EDBA0F8];
      v11 = [v40 _accessibilityGroupIdentifier];
      v10 = [v9 stringWithFormat:@"%@-%lu", v11, v35];
      v43[3] = v10;
      v27 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v43 forKeys:v42 count:4];
      MEMORY[0x29EDC9740](v10);
      MEMORY[0x29EDC9740](v11);
      MEMORY[0x29EDC9740](v12);
      *&v6 = MEMORY[0x29EDC9740](v13).n128_u64[0];
      [v39 addObject:{v27, v6}];
      [v34 removeAllObjects];
      objc_storeStrong(&v27, 0);
    }

    v41 = MEMORY[0x29EDC9748](v39);
    v30 = 1;
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
  }

  else
  {
    v41 = 0;
  }

  v7 = v41;

  return v7;
}

- (id)_accessibilitySortedElementsWithin
{
  v7 = self;
  location[1] = a2;
  location[0] = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
  v5 = MEMORY[0x29EDC9748](v7);
  if ((__67__UICollectionViewAccessibility__accessibilitySortedElementsWithin__block_invoke)())
  {
    v8 = [(UICollectionViewAccessibility *)v7 _accessibilitySortedViewChildrenWithOptions:?];
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(&v5, 0);
  if (!v4)
  {
    v8 = [(UICollectionViewAccessibility *)v7 _accessibilitySortedElementsWithinWithOptions:location[0]];
  }

  objc_storeStrong(location, 0);
  v2 = v8;

  return v2;
}

BOOL __67__UICollectionViewAccessibility__accessibilitySortedElementsWithin__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &UICollectionElementKindCell_block_invoke_2_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_596);
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

  return Implementation != UICollectionElementKindCell_block_invoke_2_BaseImplementation;
}

void __67__UICollectionViewAccessibility__accessibilitySortedElementsWithin__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilitySortedElementsWithin);
  if (InstanceMethod)
  {
    UICollectionElementKindCell_block_invoke_2_BaseImplementation = method_getImplementation(InstanceMethod);
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

- (id)_accessibilitySortedViewChildrenWithOptions:(void *)a1
{
  v42 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v42)
  {
    [v42 _accessibilityEnsureViewsAroundAreLoaded];
    v39 = [v42 _accessibilityViewChildrenWithOptions:location];
    v16 = [v42 collectionViewLayout];
    objc_opt_class();
    v36 = 0;
    v17 = 1;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v37 = [v42 collectionViewLayout];
      v36 = 1;
      v17 = [v37 _accessibilitySortCollectionViewLogically];
    }

    if (v36)
    {
      MEMORY[0x29EDC9740](v37);
    }

    *&v2 = MEMORY[0x29EDC9740](v16).n128_u64[0];
    v38 = v17 & 1;
    v15 = [v42 accessibilityComparatorForSorting];
    *&v3 = MEMORY[0x29EDC9740](v15).n128_u64[0];
    if (v15)
    {
      v14 = [v42 accessibilityComparatorForSorting];
      v4 = [v39 sortedArrayUsingComparator:?];
      v5 = v39;
      v39 = v4;
      MEMORY[0x29EDC9740](v5);
      MEMORY[0x29EDC9740](v14);
    }

    else if ([v42 _accessibilityOnlyComparesByXAxis])
    {
      v6 = [v42 _accessibilityGeometrySortedElements:v39];
      v7 = v39;
      v39 = v6;
      MEMORY[0x29EDC9740](v7);
    }

    else if (v38)
    {
      v35 = [v42 collectionViewLayout];
      v13 = v39;
      v28 = MEMORY[0x29EDCA5F8];
      v29 = -1073741824;
      v30 = 0;
      v31 = __77__UICollectionViewAccessibility__accessibilitySortedViewChildrenWithOptions___block_invoke;
      v32 = &unk_29F30D390;
      v33 = MEMORY[0x29EDC9748](v42);
      v34 = MEMORY[0x29EDC9748](v35);
      v8 = [v13 sortedArrayUsingComparator:&v28];
      v9 = v39;
      v39 = v8;
      MEMORY[0x29EDC9740](v9);
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v35, 0);
    }

    v12 = v39;
    v21 = MEMORY[0x29EDCA5F8];
    v22 = -1073741824;
    v23 = 0;
    v24 = __77__UICollectionViewAccessibility__accessibilitySortedViewChildrenWithOptions___block_invoke_2;
    v25 = &unk_29F30D318;
    v26 = MEMORY[0x29EDC9748](v42);
    v27 = [v12 indexesOfObjectsPassingTest:&v21];
    if ([v27 count])
    {
      v20 = [v39 mutableCopy];
      [v20 removeObjectsAtIndexes:v27];
      objc_storeStrong(&v39, v20);
      objc_storeStrong(&v20, 0);
    }

    v19 = [(UICollectionViewAccessibility *)v42 _axIndexBar];
    if (v19)
    {
      v18 = [v39 mutableCopy];
      [v18 removeObject:v19];
      [v18 insertObject:v19 atIndex:0];
      objc_storeStrong(&v39, v18);
      objc_storeStrong(&v18, 0);
    }

    v43 = MEMORY[0x29EDC9748](v39);
    v40 = 1;
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v39, 0);
  }

  else
  {
    v43 = 0;
    v40 = 1;
  }

  objc_storeStrong(&location, 0);
  v10 = v43;

  return v10;
}

- (id)_accessibilitySortedElementsWithinWithOptions:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = MEMORY[0x29EDCA5F8];
  v8 = -1073741824;
  v9 = 0;
  v10 = __79__UICollectionViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke;
  v11 = &unk_29F30CEB0;
  v12 = MEMORY[0x29EDC9748](v15);
  v13 = (__79__UICollectionViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke)();
  v5 = MEMORY[0x29EDC9748](v15);
  v6 = (__79__UICollectionViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke_602)();
  if (v13 & 1) == 0 || (v6)
  {
    v16 = [(UICollectionViewAccessibility *)v15 _accessibilitySortedViewChildrenWithOptions:?];
  }

  else
  {
    v16 = [(UICollectionViewAccessibility *)v15 _accessibilitySortedElementsWithin];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  v3 = v16;

  return v3;
}

BOOL __79__UICollectionViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &UICollectionElementKindCell_block_invoke_3_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_601);
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

  return Implementation != UICollectionElementKindCell_block_invoke_3_BaseImplementation;
}

void __79__UICollectionViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilitySortedElementsWithin);
  if (InstanceMethod)
  {
    UICollectionElementKindCell_block_invoke_3_BaseImplementation = method_getImplementation(InstanceMethod);
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

BOOL __79__UICollectionViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke_602(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &UICollectionElementKindCell_block_invoke_4_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_605);
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

  return Implementation != UICollectionElementKindCell_block_invoke_4_BaseImplementation;
}

void __79__UICollectionViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke_2_603(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilitySortedElementsWithinWithOptions_);
  if (InstanceMethod)
  {
    UICollectionElementKindCell_block_invoke_4_BaseImplementation = method_getImplementation(InstanceMethod);
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

uint64_t __77__UICollectionViewAccessibility__accessibilitySortedViewChildrenWithOptions___block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v48 = 0;
  objc_storeStrong(&v48, a3);
  v47 = a1;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v3 = a1[4];
  v42 = 0;
  v26 = [v3 _accessibilityIndexPathOfDirectSubviewForDescendantElement:location[0] withElementKind:&v42];
  objc_storeStrong(&v45, v42);
  v43 = v26;
  v4 = a1[4];
  v40 = v44;
  v28 = [v4 _accessibilityIndexPathOfDirectSubviewForDescendantElement:v48 withElementKind:&v40];
  objc_storeStrong(&v44, v40);
  v41 = v28;
  if (v43 && v41)
  {
    v39 = [v43 section];
    v38 = [v41 section];
    if (v39 == v38)
    {
      v24 = 0;
    }

    else
    {
      v5 = 1;
      if (v39 < v38)
      {
        v5 = -1;
      }

      v24 = v5;
    }

    v46 = v24;
    if (!v24)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) == 0 || ([v45 isEqualToString:v44])
      {
        if ([v45 isEqualToString:@"UICollectionElementKindCell"] & 1) != 0 && (objc_msgSend(v44, "isEqualToString:", @"UICollectionElementKindCell"))
        {
          v37 = [v43 item];
          v36 = [v41 item];
          if (v37 == v36)
          {
            v23 = 0;
          }

          else
          {
            v6 = 1;
            if (v37 < v36)
            {
              v6 = -1;
            }

            v23 = v6;
          }

          v46 = v23;
        }
      }

      else if ([v45 isEqualToString:*MEMORY[0x29EDC8048]])
      {
        v46 = -1;
      }

      else if ([v44 isEqualToString:*MEMORY[0x29EDC8048]])
      {
        v46 = 1;
      }

      else if ([v45 isEqualToString:*MEMORY[0x29EDC8040]])
      {
        v46 = 1;
      }

      else if ([v44 isEqualToString:*MEMORY[0x29EDC8040]])
      {
        v46 = -1;
      }
    }

    if (([a1[4] _accessibilityIsRTL] & 1) != 0 && v46)
    {
      [location[0] accessibilityFrame];
      *v35 = v7;
      *&v35[8] = v8;
      *&v35[16] = v9;
      *&v35[24] = v10;
      [v48 accessibilityFrame];
      rect.origin.x = v11;
      rect.origin.y = v12;
      rect.size.width = v13;
      rect.size.height = v14;
      [a1[4] _accessibilityAllowedGeometryOverlap];
      v33 = v15;
      v22 = 0;
      if (CGFAbs(*&v35[8] - rect.origin.y) < v15)
      {
        v22 = CGFAbs(*&v35[24] - rect.size.height) < v33;
      }

      if (v22)
      {
        MinX = CGRectGetMinX(*v35);
        v31 = CGRectGetMinX(rect);
        MaxX = CGRectGetMaxX(*v35);
        v29 = CGRectGetMaxX(rect);
        if (v31 > MinX || MinX >= MaxX || (v21 = 1, MaxX > v29))
        {
          v20 = 0;
          if (MinX <= v31)
          {
            v20 = 0;
            if (v31 < v29)
            {
              v20 = v29 <= MaxX;
            }
          }

          v21 = v20;
        }

        if (*v35 < rect.origin.x && v46 == -1 || (v19 = 0, *v35 > rect.origin.x) && (v19 = 0, v46 == 1))
        {
          v19 = v21 ^ 1;
        }

        if (v19)
        {
          v16 = 1;
          if (v46 == 1)
          {
            v16 = -1;
          }

          v46 = v16;
        }
      }
    }
  }

  if (!v46)
  {
    v46 = [location[0] accessibilityCompareGeometry:v48];
  }

  v18 = v46;
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(location, 0);
  return v18;
}

uint64_t __77__UICollectionViewAccessibility__accessibilitySortedViewChildrenWithOptions___block_invoke_2(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[3] = a3;
  v9[2] = a4;
  v9[1] = a1;
  v9[0] = [a1[4] _accessibilityIndexPathOfDirectSubviewForDescendantElement:location[0] withElementKind:0];
  v8 = [a1[4] _accessibilityDescendantElementAtIndexPathIsValid:v9[0]] ^ 1;
  objc_storeStrong(v9, 0);
  objc_storeStrong(location, 0);
  return v8;
}

- (id)_axIndexBar
{
  v6 = a1;
  if (a1)
  {
    location = 0;
    v4 = MEMORY[0x29EDC9748](v6);
    obj = [v4 accessoryViewAtEdge:1];
    NSClassFromString(&cfstr_Uiindexbaracce_0.isa);
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&location, obj);
    }

    v7 = MEMORY[0x29EDC9748](location);
    objc_storeStrong(&obj, 0);
    objc_storeStrong(&v4, 0);
    objc_storeStrong(&location, 0);
  }

  else
  {
    v7 = 0;
  }

  v1 = v7;

  return v1;
}

- (CGRect)_visibleBounds
{
  v17 = self;
  v16 = a2;
  memset(&v18, 0, sizeof(v18));
  v15.receiver = self;
  v15.super_class = UICollectionViewAccessibility;
  [(UICollectionViewAccessibility *)&v15 _visibleBounds];
  v18.origin.x = v2;
  v18.origin.y = v3;
  v18.size.width = v4;
  v18.size.height = v5;
  if (UIAccessibilityIsVoiceOverRunning() && [(UICollectionViewAccessibility *)v17 isAccessibilityOpaqueElementProvider])
  {
    [(UICollectionViewAccessibility *)v17 _accessibilityBoundsOfCellsToLoad];
    r2.origin.x = v6;
    r2.origin.y = v7;
    r2.size.width = v8;
    r2.size.height = v9;
    v18 = CGRectUnion(v18, r2);
  }

  y = v18.origin.y;
  x = v18.origin.x;
  height = v18.size.height;
  width = v18.size.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)_accessibilityIndexPathOfDirectSubviewForDescendantElement:(id)a3 withElementKind:(id *)a4
{
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = a4;
  v34 = MEMORY[0x29EDC9748](v37);
  v33 = [location[0] _accessibilityFindAncestor:&__block_literal_global_615 startWithSelf:1];
  v32 = 0;
  do
  {
    v31 = [v33 superview];
    v14 = 1;
    if (v31 != v34)
    {
      v14 = v31 == 0;
    }

    v32 = v14;
    if (!v14)
    {
      objc_storeStrong(&v33, v31);
    }

    objc_storeStrong(&v31, 0);
  }

  while (!v32);
  v30 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v35)
    {
      v4 = @"UICollectionElementKindCell";
      *v35 = @"UICollectionElementKindCell";
    }

    v5 = [v34 indexPathForCell:v33];
    v6 = v30;
    v30 = v5;
    MEMORY[0x29EDC9740](v6);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v35)
      {
        v28 = 0;
        objc_opt_class();
        v13 = [v33 safeValueForKey:@"_layoutAttributes"];
        v27 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v13);
        v26 = MEMORY[0x29EDC9748](v27);
        objc_storeStrong(&v27, 0);
        v29 = v26;
        v12 = [v26 representedElementKind];
        if (v12)
        {
          v11 = v12;
        }

        else
        {
          v11 = @"UICollectionElementKindCell";
        }

        v7 = v11;
        *v35 = v11;
        MEMORY[0x29EDC9740](v12);
        objc_storeStrong(&v29, 0);
      }

      v19 = 0;
      v20 = &v19;
      v21 = 838860800;
      v22 = 48;
      v23 = __Block_byref_object_copy__6;
      v24 = __Block_byref_object_dispose__6;
      v25 = 0;
      v18[1] = &v19;
      v17 = MEMORY[0x29EDC9748](v34);
      v18[0] = MEMORY[0x29EDC9748](v33);
      AXPerformSafeBlock();
      v16 = MEMORY[0x29EDC9748](v20[5]);
      objc_storeStrong(v18, 0);
      objc_storeStrong(&v17, 0);
      _Block_object_dispose(&v19, 8);
      objc_storeStrong(&v25, 0);
      v8 = v30;
      v30 = v16;
      MEMORY[0x29EDC9740](v8);
    }
  }

  v10 = MEMORY[0x29EDC9748](v30);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);

  return v10;
}

uint64_t __108__UICollectionViewAccessibility__accessibilityIndexPathOfDirectSubviewForDescendantElement_withElementKind___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

double __108__UICollectionViewAccessibility__accessibilityIndexPathOfDirectSubviewForDescendantElement_withElementKind___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) indexPathForSupplementaryView:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
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

- (id)_accessibilitySupplementaryHeaderViews
{
  v25[1] = *MEMORY[0x29EDCA608];
  v24 = self;
  v23[1] = a2;
  v22.receiver = self;
  v22.super_class = UICollectionViewAccessibility;
  v23[0] = [(UICollectionViewAccessibility *)&v22 _accessibilitySupplementaryHeaderViews];
  if (!v23[0])
  {
    v2 = [MEMORY[0x29EDB8D80] array];
    v3 = v23[0];
    v23[0] = v2;
    MEMORY[0x29EDC9740](v3);
  }

  v21 = [(UICollectionViewAccessibility *)v24 _axIndexBar];
  if (v21)
  {
    if ([v23[0] count])
    {
      v20 = [MEMORY[0x29EDB8DE8] arrayWithObject:v21];
      [v20 addObjectsFromArray:v23[0]];
      objc_storeStrong(v23, v20);
      objc_storeStrong(&v20, 0);
    }

    else
    {
      v25[0] = v21;
      v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v25 count:1];
      v5 = v23[0];
      v23[0] = v4;
      MEMORY[0x29EDC9740](v5);
    }
  }

  v19 = [(UICollectionViewAccessibility *)v24 _accessibilityCollectionViewSupplementaryViews];
  v6 = [v19 ax_filteredArrayUsingBlock:&__block_literal_global_619];
  v7 = v19;
  v19 = v6;
  *&v8 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  v15 = [(UICollectionViewAccessibility *)v24 safeArrayForKey:v8];
  v14 = [v15 ax_filteredArrayUsingBlock:&__block_literal_global_625];
  v18 = [v14 firstObject];
  MEMORY[0x29EDC9740](v14);
  v16 = [v18 safeArrayForKey:{@"subviews", MEMORY[0x29EDC9740](v15).n128_f64[0]}];
  v17 = [v16 ax_filteredArrayUsingBlock:&__block_literal_global_627];
  if ([v17 count])
  {
    v10 = [v19 arrayByAddingObjectsFromArray:v17];
    v11 = v19;
    v19 = v10;
    *&v9 = MEMORY[0x29EDC9740](v11).n128_u64[0];
  }

  v13 = [v23[0] arrayByAddingObjectsFromArray:{v19, v9}];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(v23, 0);

  return v13;
}

uint64_t __71__UICollectionViewAccessibility__accessibilitySupplementaryHeaderViews__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSClassFromString(&cfstr_Uiswipeactionp_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

uint64_t __71__UICollectionViewAccessibility__accessibilitySupplementaryHeaderViews__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSClassFromString(&cfstr_Uicollectionvi_17.isa);
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v3 = [location[0] _accessibilityViewIsVisible];
  }

  objc_storeStrong(location, 0);
  return v3 & 1;
}

uint64_t __71__UICollectionViewAccessibility__accessibilitySupplementaryHeaderViews__block_invoke_3(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSClassFromString(&cfstr_Uiswipeactionp_0.isa);
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v3 = [location[0] _accessibilityViewIsVisible];
  }

  objc_storeStrong(location, 0);
  return v3 & 1;
}

- (id)accessibilityLabel
{
  v8 = self;
  v7 = a2;
  v5 = [(UICollectionViewAccessibility *)self accessibilityUserDefinedLabel];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v5)
  {
    v9 = [(UICollectionViewAccessibility *)v8 accessibilityUserDefinedLabel];
  }

  else if (!UIAccessibilityIsVoiceOverRunning() || ([(UICollectionViewAccessibility *)v8 isAccessibilityElement]& 1) != 0)
  {
    v6.receiver = v8;
    v6.super_class = UICollectionViewAccessibility;
    v9 = [(UICollectionViewAccessibility *)&v6 accessibilityLabel];
  }

  else
  {
    v9 = 0;
  }

  v3 = v9;

  return v3;
}

- (id)_accessibilityCollectionViewSupplementaryViews
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = self;
  v13[1] = a2;
  v13[0] = [MEMORY[0x29EDB8DE8] array];
  if (_AXSAutomationEnabled())
  {
    location = [(UICollectionViewAccessibility *)v14 visibleCells];
    memset(__b, 0, sizeof(__b));
    obj = [(UICollectionViewAccessibility *)v14 subviews];
    v9 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
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

        v11 = *(__b[1] + 8 * v6);
        if ([location containsObject:v11] & 1) == 0 && (objc_msgSend(v11, "_accessibilityViewIsVisible"))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v13[0] addObject:v11];
          }
        }

        ++v6;
        if (v4 + 1 >= v7)
        {
          v6 = 0;
          v7 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
          if (!v7)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    objc_storeStrong(&location, 0);
  }

  v3 = MEMORY[0x29EDC9748](v13[0]);
  objc_storeStrong(v13, 0);

  return v3;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v9 = self;
  location[1] = a2;
  location[0] = [(UICollectionViewAccessibility *)self _accessibilityCollectionViewSupplementaryViews];
  v2 = [location[0] ax_filteredArrayUsingBlock:&__block_literal_global_637];
  v3 = location[0];
  location[0] = v2;
  if ([v2 count])
  {
    v10 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v6.receiver = v9;
    v6.super_class = UICollectionViewAccessibility;
    v10 = [(UICollectionViewAccessibility *)&v6 _accessibilitySupplementaryFooterViews];
  }

  v7 = 1;
  objc_storeStrong(location, 0);
  v4 = v10;

  return v4;
}

uint64_t __71__UICollectionViewAccessibility__accessibilitySupplementaryFooterViews__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSClassFromString(&cfstr_Uiswipeactionp_0.isa);
  v3 = objc_opt_isKindOfClass() ^ 1;
  objc_storeStrong(location, 0);
  return v3 & 1;
}

- (id)_accessibilitySupplementaryViewSectionHeaderIdentifiers
{
  v23 = *MEMORY[0x29EDCA608];
  v21 = self;
  v20[1] = a2;
  v19.receiver = self;
  v19.super_class = UICollectionViewAccessibility;
  v10 = [(UICollectionViewAccessibility *)&v19 _accessibilitySupplementaryViewSectionHeaderIdentifiers];
  v20[0] = AXGuaranteedMutableArray();
  *&v2 = MEMORY[0x29EDC9740](v10).n128_u64[0];
  v18 = [(UICollectionViewAccessibility *)v21 safeDictionaryForKey:@"_supplementaryViewClassDict", v2];
  memset(__b, 0, sizeof(__b));
  obj = [v18 allKeys];
  v12 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
  if (v12)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v12;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(__b[1] + 8 * v8);
      if ([v17 localizedCaseInsensitiveContainsString:@"header"])
      {
        v14 = 0;
        v15 = 0;
        v14 = [v17 rangeOfString:@"/"];
        v15 = v3;
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v20[0] addObject:v17];
        }

        else
        {
          location = [v17 substringToIndex:v14];
          if ([location length])
          {
            [v20[0] addObject:location];
          }

          objc_storeStrong(&location, 0);
        }
      }

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  v5 = MEMORY[0x29EDC9748](v20[0]);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(v20, 0);

  return v5;
}

- (id)_accessibilitySupplementaryHeaderViewAtIndexPath:(id)a3
{
  v30 = *MEMORY[0x29EDCA608];
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  memset(__b, 0, sizeof(__b));
  obj = [(UICollectionViewAccessibility *)v27 _accessibilitySupplementaryViewSectionHeaderIdentifiers];
  v10 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
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

      v25 = *(__b[1] + 8 * v7);
      v16 = 0;
      v17 = &v16;
      v18 = 838860800;
      v19 = 48;
      v20 = __Block_byref_object_copy__6;
      v21 = __Block_byref_object_dispose__6;
      v22 = 0;
      v15[1] = &v16;
      v13 = MEMORY[0x29EDC9748](v27);
      v14 = MEMORY[0x29EDC9748](v25);
      v15[0] = MEMORY[0x29EDC9748](location[0]);
      AXPerformSafeBlock();
      v12 = MEMORY[0x29EDC9748](v17[5]);
      objc_storeStrong(v15, 0);
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v13, 0);
      _Block_object_dispose(&v16, 8);
      objc_storeStrong(&v22, 0);
      v23 = v12;
      if (v12)
      {
        v28 = MEMORY[0x29EDC9748](v23);
        v11 = 1;
      }

      else
      {
        v11 = 0;
      }

      objc_storeStrong(&v23, 0);
      if (v11)
      {
        break;
      }

      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
        if (!v8)
        {
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
LABEL_11:
    v11 = 0;
  }

  MEMORY[0x29EDC9740](obj);
  if (!v11)
  {
    v28 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v28;

  return v3;
}

double __82__UICollectionViewAccessibility__accessibilitySupplementaryHeaderViewAtIndexPath___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) supplementaryViewForElementKind:*(a1 + 40) atIndexPath:*(a1 + 48)];
  v2 = *(*(a1 + 56) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (id)_accessibilityLayoutAttributesForSupplementaryHeaderViewAtIndexPath:(id)a3
{
  v30 = *MEMORY[0x29EDCA608];
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  memset(__b, 0, sizeof(__b));
  obj = [(UICollectionViewAccessibility *)v27 _accessibilitySupplementaryViewSectionHeaderIdentifiers];
  v10 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
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

      v25 = *(__b[1] + 8 * v7);
      v16 = 0;
      v17 = &v16;
      v18 = 838860800;
      v19 = 48;
      v20 = __Block_byref_object_copy__6;
      v21 = __Block_byref_object_dispose__6;
      v22 = 0;
      v15[1] = &v16;
      v13 = MEMORY[0x29EDC9748](v27);
      v14 = MEMORY[0x29EDC9748](v25);
      v15[0] = MEMORY[0x29EDC9748](location[0]);
      AXPerformSafeBlock();
      v12 = MEMORY[0x29EDC9748](v17[5]);
      objc_storeStrong(v15, 0);
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v13, 0);
      _Block_object_dispose(&v16, 8);
      objc_storeStrong(&v22, 0);
      v23 = v12;
      if (v12)
      {
        v28 = MEMORY[0x29EDC9748](v23);
        v11 = 1;
      }

      else
      {
        v11 = 0;
      }

      objc_storeStrong(&v23, 0);
      if (v11)
      {
        break;
      }

      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
        if (!v8)
        {
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
LABEL_11:
    v11 = 0;
  }

  MEMORY[0x29EDC9740](obj);
  if (!v11)
  {
    v28 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v28;

  return v3;
}

double __101__UICollectionViewAccessibility__accessibilityLayoutAttributesForSupplementaryHeaderViewAtIndexPath___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) layoutAttributesForSupplementaryElementOfKind:*(a1 + 40) atIndexPath:*(a1 + 48)];
  v2 = *(*(a1 + 56) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (unint64_t)_accessibilityScanningBehaviorTraits
{
  v8 = self;
  v7 = a2;
  v6 = 0;
  location = [(UICollectionViewAccessibility *)self safeValueForKey:@"collectionViewLayout"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [location safeIntegerForKey:@"scrollDirection"];
    if (v4)
    {
      v6 = v4 == 1;
    }

    else
    {
      v6 = 1;
    }
  }

  v3 = v6 | 0xC;
  objc_storeStrong(&location, 0);
  return v3;
}

- (BOOL)canBecomeFocused
{
  v8 = self;
  v7 = a2;
  if (([(UICollectionViewAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    v5 = 0;
    v3 = 0;
    if (([(UICollectionViewAccessibility *)v8 safeBoolForKey:@"_isFocusedOrAncestorOfFocusedView"]& 1) == 0)
    {
      v6 = [(UICollectionViewAccessibility *)v8 _axGetLastFocusedChild];
      v5 = 1;
      v3 = v6 != 0;
    }

    v9 = v3;
    if (v5)
    {
      MEMORY[0x29EDC9740](v6);
    }
  }

  else
  {
    v4.receiver = v8;
    v4.super_class = UICollectionViewAccessibility;
    return [(UICollectionViewAccessibility *)&v4 canBecomeFocused];
  }

  return v9;
}

- (id)preferredFocusedView
{
  v29 = self;
  v28[1] = a2;
  v27.receiver = self;
  v27.super_class = UICollectionViewAccessibility;
  v28[0] = [(UICollectionViewAccessibility *)&v27 preferredFocusedView];
  if (([(UICollectionViewAccessibility *)v29 _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    v26 = [(UICollectionViewAccessibility *)v29 _axGetLastFocusedChild];
    v25 = [v26 _accessibilityFindAncestor:&__block_literal_global_653 startWithSelf:1];
    v23 = 0;
    objc_opt_class();
    v22 = __UIAccessibilityCastAsClass();
    v21 = MEMORY[0x29EDC9748](v22);
    objc_storeStrong(&v22, 0);
    v12 = [v21 _accessibilityViewIsVisible];
    *&v2 = MEMORY[0x29EDC9740](v21).n128_u64[0];
    v24 = v12;
    v18 = 0;
    v13 = 0;
    if ([v25 _isEligibleForFocusInteraction])
    {
      v13 = 0;
      if ([v25 isUserInteractionEnabled])
      {
        v19 = [v25 _accessibilityIndexPath];
        v18 = 1;
        v13 = v19 != 0;
      }
    }

    if (v18)
    {
      MEMORY[0x29EDC9740](v19);
    }

    v20 = v13;
    v11 = 0;
    if (v26)
    {
      v11 = 0;
      if (v24)
      {
        v10 = 1;
        if (v25)
        {
          v10 = v20;
        }

        v11 = v10;
      }
    }

    v17 = v11;
    if ((v11 & 1) == 0)
    {
      v16 = 0;
      objc_opt_class();
      v15 = __UIAccessibilityCastAsSafeCategory();
      v14 = MEMORY[0x29EDC9748](v15);
      objc_storeStrong(&v15, 0);
      v8 = v25;
      v9 = [(UICollectionViewAccessibility *)v29 visibleCells];
      v3 = [(UIViewAccessibility *)v14 _accessibilityViewMatchingFKAView:v8 inArray:v9];
      v4 = v26;
      v26 = v3;
      MEMORY[0x29EDC9740](v4);
      MEMORY[0x29EDC9740](v9);
      *&v5 = MEMORY[0x29EDC9740](v14).n128_u64[0];
      [(UICollectionViewAccessibility *)v29 _axSetLastFocusedChild:v26, v5];
      v17 = v26 != 0;
    }

    if (v17)
    {
      objc_storeStrong(v28, v26);
    }

    else
    {
      [(UICollectionViewAccessibility *)v29 _axSetLastFocusedChild:0];
    }

    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
  }

  v7 = MEMORY[0x29EDC9748](v28[0]);
  objc_storeStrong(v28, 0);

  return v7;
}

uint64_t __53__UICollectionViewAccessibility_preferredFocusedView__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

- (uint64_t)_axGetShouldIgnorePromiseRegions
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

- (uint64_t)_axSetShouldIgnorePromiseRegions:(uint64_t)result
{
  if (result)
  {
    return __UIAccessibilitySetAssociatedBool();
  }

  return result;
}

- (id)_fulfillPromisedFocusRegionForLayoutAttributes:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (([(UICollectionViewAccessibility *)v8 _accessibilityIsFKARunningForFocusItem]& 1) != 0 && ([(UICollectionViewAccessibility *)v8 _axGetShouldIgnorePromiseRegions]& 1) != 0)
  {
    v9 = 0;
    v6 = 1;
  }

  else
  {
    v5.receiver = v8;
    v5.super_class = UICollectionViewAccessibility;
    v9 = [(UICollectionViewAccessibility *)&v5 _fulfillPromisedFocusRegionForLayoutAttributes:location[0]];
    v6 = 1;
  }

  objc_storeStrong(location, 0);
  v3 = v9;

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
  v7.super_class = UICollectionViewAccessibility;
  v8 = [(UICollectionViewAccessibility *)&v7 _shouldSelectionFollowFocusForIndexPath:location[0] initiatedBySelection:a4];
  if (([(UICollectionViewAccessibility *)v11 _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    v8 = 0;
  }

  v5 = v8;
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (id)accessibilityElementForRow:(unint64_t)a3 andColumn:(unint64_t)a4
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = [(UICollectionViewAccessibility *)self _accessibilityGetBlockForAttribute:5006];
  if (v8)
  {
    v13 = (*(v8 + 2))(v8, v10, v9);
    v7 = 1;
  }

  else
  {
    v6 = [MEMORY[0x29EDB9FE0] indexPathForItem:v10 inSection:v9];
    v13 = [(UICollectionViewAccessibility *)v12 accessibilityCellForRowAtIndexPath:v6];
    v7 = 1;
    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(&v8, 0);
  v4 = v13;

  return v4;
}

- (id)_accessibilitySelectedChildren
{
  v20 = self;
  v19[1] = a2;
  v19[0] = [(UICollectionViewAccessibility *)self indexPathsForSelectedItems];
  if ([(UICollectionViewAccessibility *)v20 _accessibilityShouldUseCollectionViewCellAccessibilityElements])
  {
    v5 = v19[0];
    v13 = MEMORY[0x29EDCA5F8];
    v14 = -1073741824;
    v15 = 0;
    v16 = __63__UICollectionViewAccessibility__accessibilitySelectedChildren__block_invoke;
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
    v9 = __63__UICollectionViewAccessibility__accessibilitySelectedChildren__block_invoke_2;
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

id __63__UICollectionViewAccessibility__accessibilitySelectedChildren__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] accessibilityCollectionCellElementForIndexPath:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

id __63__UICollectionViewAccessibility__accessibilitySelectedChildren__block_invoke_2(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] accessibilityCellForRowAtIndexPath:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_accessibilityOpaqueHeaderElementInDirection:(int64_t)a3 childElement:(id)a4
{
  v43 = *MEMORY[0x29EDCA608];
  v39 = self;
  v38 = a2;
  v37 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v35 = 0;
  v34 = [MEMORY[0x29EDC7328] options];
  if (location)
  {
    v33 = [(UICollectionViewAccessibility *)v39 _accessibilitySortedElementsWithin];
    v32 = [MEMORY[0x29EDB8DE8] array];
    v31 = 0;
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v33);
    v18 = [obj countByEnumeratingWithState:__b objects:v42 count:16];
    if (v18)
    {
      v14 = *__b[2];
      v15 = 0;
      v16 = v18;
      while (1)
      {
        v13 = v15;
        if (*__b[2] != v14)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(__b[1] + 8 * v15);
        v28 = [v30 _accessibilityLeafDescendantsWithOptions:v34];
        [v32 addObjectsFromArray:v28];
        if (v30 == location)
        {
          objc_storeStrong(&v31, v28);
        }

        objc_storeStrong(&v28, 0);
        ++v15;
        if (v13 + 1 >= v16)
        {
          v15 = 0;
          v16 = [obj countByEnumeratingWithState:__b objects:v42 count:16];
          if (!v16)
          {
            break;
          }
        }
      }
    }

    *&v6 = MEMORY[0x29EDC9740](obj).n128_u64[0];
    v27 = 0;
    if (v31)
    {
      v25 = 0;
      v23 = 0;
      if (v37 == 1)
      {
        v26 = [v31 lastObject];
        v25 = 1;
        objc_storeStrong(&v27, v26);
      }

      else
      {
        v24 = [v31 firstObject];
        v23 = 1;
        objc_storeStrong(&v27, v24);
      }

      if (v23)
      {
        MEMORY[0x29EDC9740](v24);
      }

      if (v25)
      {
        MEMORY[0x29EDC9740](v26);
      }
    }

    else
    {
      objc_storeStrong(&v27, location);
    }

    v22 = [v32 indexOfObject:v27];
    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      _AXAssert();
      v19 = AXLogOpaqueElements();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_64_8_64(v40, location, v32);
        _os_log_debug_impl(&dword_29C4D6000, v19, OS_LOG_TYPE_DEBUG, "Could not find child element %@ in collection view elements %@. Falling through to existing search code.", v40, 0x16u);
      }

      objc_storeStrong(&v19, 0);
    }

    else
    {
      v7 = [(UICollectionViewAccessibility *)v39 _axOpaqueHeaderElementInDirection:v37 withinElements:v32 startIndex:v22];
      v8 = v35;
      v35 = v7;
      MEMORY[0x29EDC9740](v8);
      oslog = AXLogOpaqueElements();
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v41, v35);
        _os_log_debug_impl(&dword_29C4D6000, oslog, type, "Header from existing sorted elements within: %@", v41, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      if (!v35)
      {
        v9 = [(UICollectionViewAccessibility *)v39 _axOffScreenOpaqueHeaderElementInDirection:v37 options:v34 childElement:location];
        v10 = v35;
        v35 = v9;
        MEMORY[0x29EDC9740](v10);
      }
    }

    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v33, 0);
  }

  else
  {
    v4 = [(UICollectionViewAccessibility *)v39 _axFirstLastOpaqueHeaderElementInDirection:v37 options:v34];
    v5 = v35;
    v35 = v4;
    MEMORY[0x29EDC9740](v5);
  }

  v12 = MEMORY[0x29EDC9748](v35);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&location, 0);

  return v12;
}

- (id)_axOffScreenOpaqueHeaderElementInDirection:(int64_t)a3 options:(id)a4 childElement:(id)a5
{
  v46[1] = *MEMORY[0x29EDCA608];
  v44 = self;
  v43 = a2;
  v42 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v40 = 0;
  objc_storeStrong(&v40, a5);
  v39 = 0;
  v38 = MEMORY[0x29EDC9748](v44);
  [v38 contentOffset];
  *&v37 = v5;
  *(&v37 + 1) = v6;
  v36 = [v38 indexPathsForVisibleItems];
  v35 = [objc_alloc(MEMORY[0x29EDBA0F0]) initWithKey:@"section" ascending:1];
  v46[0] = v35;
  v24 = [MEMORY[0x29EDB8D80] arrayWithObjects:v46 count:1];
  v23 = [v36 sortedArrayUsingDescriptors:?];
  v34 = [v23 mutableCopy];
  MEMORY[0x29EDC9740](v23);
  if ([v36 count])
  {
    if (v42 == 1)
    {
      v21 = [v34 lastObject];
      v33 = [v21 section] + 1;
      v32 = [v38 numberOfSections];
      for (i = v33; i < v32; ++i)
      {
        v7 = [(UICollectionViewAccessibility *)v44 _axFirstLastOpaqueHeaderElementFromSection:i options:location direction:v42];
        v8 = v39;
        v39 = v7;
        MEMORY[0x29EDC9740](v8);
        if (v39)
        {
          break;
        }
      }
    }

    else
    {
      v19 = [v34 firstObject];
      v20 = [v19 section];
      *&v9 = MEMORY[0x29EDC9740](v19).n128_u64[0];
      v30 = v20;
      for (j = v20; (j & 0x8000000000000000) == 0; --j)
      {
        v10 = [(UICollectionViewAccessibility *)v44 _axFirstLastOpaqueHeaderElementFromSection:j options:location direction:v42, v9];
        v11 = v39;
        v39 = v10;
        *&v12 = MEMORY[0x29EDC9740](v11).n128_u64[0];
        if ([v39 _accessibilityIsDescendantOfElement:{v40, v12}])
        {
          objc_storeStrong(&v39, 0);
        }

        if (v39)
        {
          break;
        }
      }
    }
  }

  else
  {
    v28 = AXLogOpaqueElements();
    v27 = 2;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      log = v28;
      type = v27;
      __os_log_helper_16_0_0(v26);
      _os_log_debug_impl(&dword_29C4D6000, log, type, "Got a collection view with no visible index paths! Falling back to usual opaque element search logic.", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
  }

  if (!v39)
  {
    oslog = AXLogOpaqueElements();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v45, v40);
      _os_log_debug_impl(&dword_29C4D6000, oslog, OS_LOG_TYPE_DEBUG, "No headers found after %@.", v45, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [v38 setContentOffset:v37];
    v13 = [MEMORY[0x29EDB8E28] null];
    v14 = v39;
    v39 = v13;
    MEMORY[0x29EDC9740](v14);
  }

  v16 = MEMORY[0x29EDC9748](v39);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&location, 0);

  return v16;
}

- (id)_axFirstLastOpaqueHeaderElementFromSection:(int64_t)a3 options:(id)a4 direction:(int64_t)a5
{
  v30 = self;
  v29 = a2;
  v28 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v26 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 838860800;
  v22 = 48;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  v18 = MEMORY[0x29EDC9748](v30);
  v17 = [MEMORY[0x29EDB9FE0] indexPathForItem:0 inSection:v28];
  v16 = [(UICollectionViewAccessibility *)v30 _accessibilityLayoutAttributesForSupplementaryHeaderViewAtIndexPath:v17];
  [v16 frame];
  *&v9 = v32.origin.x;
  *(&v9 + 1) = *&v32.origin.y;
  *&v10 = v32.size.width;
  *(&v10 + 1) = *&v32.size.height;
  v14 = v9;
  v15 = v10;
  if (!CGRectIsEmpty(v32))
  {
    if ([v18 numberOfItemsInSection:v28] > 0)
    {
      [v18 scrollToItemAtIndexPath:v17 atScrollPosition:0 animated:0];
    }

    [v18 layoutIfNeeded];
    v13 = [(UICollectionViewAccessibility *)v30 _accessibilitySupplementaryHeaderViewAtIndexPath:v17];
    v5 = [v13 _accessibilityLeafDescendantsWithOptions:location];
    v12 = v5;
    if (v26 == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    [v5 enumerateObjectsWithOptions:v6 usingBlock:?];
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
  }

  v8 = MEMORY[0x29EDC9748](v20[5]);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  _Block_object_dispose(&v19, 8);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&location, 0);

  return v8;
}

void __94__UICollectionViewAccessibility__axFirstLastOpaqueHeaderElementFromSection_options_direction___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [location[0] accessibilityTraits];
  if ((v4 & *MEMORY[0x29EDC7F80]) != 0)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), location[0]);
    *a4 = 1;
  }

  objc_storeStrong(location, 0);
}

- (id)_axOpaqueHeaderElementInDirection:(int64_t)a3 withinElements:(id)a4 startIndex:(unint64_t)a5
{
  v21 = self;
  v20 = a2;
  v19 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v17 = a5;
  v16 = 0;
  if (v19 == 1)
  {
    v15 = [location count];
    for (i = v17 + 1; i < v15; ++i)
    {
      obj = [location objectAtIndexedSubscript:i];
      v5 = [obj accessibilityTraits];
      if ((v5 & *MEMORY[0x29EDC7F80]) != 0)
      {
        objc_storeStrong(&v16, obj);
        v12 = 2;
      }

      else
      {
        v12 = 0;
      }

      objc_storeStrong(&obj, 0);
      if (v12)
      {
        break;
      }
    }
  }

  else
  {
    for (j = v17 - 1; (j & 0x8000000000000000) == 0; --j)
    {
      v10 = [location objectAtIndexedSubscript:j];
      v6 = [v10 accessibilityTraits];
      if ((v6 & *MEMORY[0x29EDC7F80]) != 0)
      {
        objc_storeStrong(&v16, v10);
        v12 = 5;
      }

      else
      {
        v12 = 0;
      }

      objc_storeStrong(&v10, 0);
      if (v12)
      {
        break;
      }
    }
  }

  v8 = MEMORY[0x29EDC9748](v16);
  v12 = 1;
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);

  return v8;
}

- (id)_axFirstLastOpaqueHeaderElementInDirection:(int64_t)a3 options:(id)a4
{
  v26 = *MEMORY[0x29EDCA608];
  v24 = self;
  v23 = a2;
  v22 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v20 = 0;
  v19 = MEMORY[0x29EDC9748](v24);
  v18 = [v19 numberOfSections];
  [v19 contentOffset];
  *&v17 = v4;
  *(&v17 + 1) = v5;
  if (v22 == 1)
  {
    for (i = 0; i < v18; ++i)
    {
      v6 = [(UICollectionViewAccessibility *)v24 _axFirstLastOpaqueHeaderElementFromSection:i options:location direction:v22];
      v7 = v20;
      v20 = v6;
      MEMORY[0x29EDC9740](v7);
      if (v20)
      {
        break;
      }
    }
  }

  else
  {
    for (j = v18 - 1; (j & 0x8000000000000000) == 0; --j)
    {
      v8 = [(UICollectionViewAccessibility *)v24 _axFirstLastOpaqueHeaderElementFromSection:j options:location direction:v22];
      v9 = v20;
      v20 = v8;
      MEMORY[0x29EDC9740](v9);
      if (v20)
      {
        break;
      }
    }
  }

  if (!v20)
  {
    oslog = AXLogOpaqueElements();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v25, v24);
      _os_log_debug_impl(&dword_29C4D6000, oslog, OS_LOG_TYPE_DEBUG, "No headers found in %@.", v25, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [v19 setContentOffset:v17];
    v10 = [MEMORY[0x29EDB8E28] null];
    v11 = v20;
    v20 = v10;
    MEMORY[0x29EDC9740](v11);
  }

  v13 = MEMORY[0x29EDC9748](v20);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&location, 0);

  return v13;
}

@end