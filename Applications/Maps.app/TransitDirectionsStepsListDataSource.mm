@interface TransitDirectionsStepsListDataSource
- (BOOL)_shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)_supportsFooterItem;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)hasIncidentItems;
- (BOOL)pptTestHasNextStep;
- (BOOL)pptTestMoveToBoardStep;
- (BOOL)shouldShowSeparatorForItemAtIndexPath:(id)path insets:(NSDirectionalEdgeInsets *)insets;
- (BOOL)transitDirectionsListView:(id)view canSelectItem:(id)item;
- (CGRect)frameOfDisplayedComposedRouteStepCell;
- (GEOComposedRouteStep)activeComposedRouteStep;
- (GEOComposedRouteStep)displayedComposedRouteStep;
- (MNLocation)matchedLocation;
- (MapsThrottler)matchedLocationThrottler;
- (NSArray)_transitDirectionsListItems;
- (NSArray)transitSegmentSectionRanges;
- (NSIndexPath)activeItemIndexPath;
- (NSMapTable)estimatedHeightsByItem;
- (TransitDirectionsListView)listView;
- (TransitDirectionsStepsListDataProvider)dataProvider;
- (TransitDirectionsStepsListDataSource)initWithRoute:(id)route;
- (TransitDirectionsStepsListDataSource)initWithRoute:(id)route delegate:(id)delegate forNavigation:(BOOL)navigation;
- (TransitDirectionsStepsListDelegate)delegate;
- (UICollectionView)collectionView;
- (UIScrollViewDelegate)scrollViewDelegate;
- (UITableView)tableView;
- (_NSRange)_segementRangeForItemAtIndexPath:(id)path;
- (double)_availableWidth;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (id)_activeItem;
- (id)_additionalSelectionIndexPathsForIndexPath:(id)path;
- (id)_displayedItem;
- (id)_expandedItemsIndices;
- (id)_flatIndexFromIndexPath:(id)path;
- (id)_footerCellForIndexPath:(id)path inCollectionView:(id)view;
- (id)_footerCellForIndexPath:(id)path inTableView:(id)view;
- (id)_indexPathFromFlatIndexPath:(id)path;
- (id)_itemIndexPathForStepIndex:(unint64_t)index;
- (id)_scrollView;
- (id)activeItemForTransitDirectionsListView:(id)view;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)displayedItemIndexForAnalytics;
- (id)displayedTransitDirectionsListItemIndexPath;
- (id)listItemForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (id)transitDirectionsListView:(id)view stepViewForItemAtIndexPath:(id)path;
- (int64_t)_cellNavStateForItem:(id)item atIndexPath:(id)path;
- (int64_t)_userInterfaceIdiom;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)pptTestCurrentStepIndex;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_numberOfRowsInSection:(unint64_t)section;
- (unint64_t)_numberOfSections;
- (unint64_t)_stepViewDisplayOptionsForSection:(unint64_t)section;
- (unint64_t)activeItemIndex;
- (unint64_t)displayedItemIndex;
- (unint64_t)indexOfItem:(id)item;
- (void)_cacheHeightForRow:(id)row atIndexPath:(id)path;
- (void)_configureFooterView:(id)view;
- (void)_configureSeparatorForCell:(id)cell forRowAtIndexPath:(id)path;
- (void)_configureStepView:(id)view forItem:(id)item atIndexPath:(id)path;
- (void)_configureTransitDirectionsCollectionViewCell:(id)cell withItem:(id)item atIndexPath:(id)path;
- (void)_didFinishAnimatingListView;
- (void)_expandItemsAtIndices:(id)indices;
- (void)_localeDidChange;
- (void)_measureShieldWidthForListWidth:(double)width;
- (void)_notifyDelegateOfUpdatedActiveStep;
- (void)_notifyDelegateOfUpdatedDisplayedStep;
- (void)_rebuildItems;
- (void)_refreshActiveItemIndexPath;
- (void)_refreshDisplayedItemIndexPath;
- (void)_refreshItemInstructionStrings;
- (void)_reloadListViewForRouteChange;
- (void)_reloadListViewForRouteChangeIfNotAnimating:(id)animating;
- (void)_reloadVisibleCells;
- (void)_resetArtworkSizesForAdaptiveItems;
- (void)_resetRowHeightCache;
- (void)_scrollToDisplayedItemIfNeeded:(id)needed animated:(BOOL)animated;
- (void)_scrollToFirstCell;
- (void)_setUseCollapsedDisplayStyle:(BOOL)style;
- (void)_transitDirectionsCell:(id)cell wantsToExpandOrCollapseItem:(id)item inCollectionView:(id)view;
- (void)_transitDirectionsCell:(id)cell wantsToExpandOrCollapseItem:(id)item inTableView:(id)view;
- (void)_transitDirectionsStepView:(id)view wantsToExpandOrCollapseItem:(id)item inListView:(id)listView;
- (void)_updateActiveItemInListViewIfNeeded;
- (void)_updateDisplayStyleInVisibleCells;
- (void)_updateFooterInListView;
- (void)_updateListForClusteredRideOptionChangeInClusteredSegment:(id)segment;
- (void)_updateRegisteredCellClasses;
- (void)collapseAllItems;
- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path;
- (void)composedRoute:(id)route appliedTransitRouteUpdates:(id)updates;
- (void)composedRoute:(id)route changedSelectedRideInClusteredSegment:(id)segment fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)dealloc;
- (void)didTapGetTicketsOnRoutePlanningFooterView:(id)view;
- (void)didTapReportAProblemButtonOnRoutePlanningFooterView:(id)view;
- (void)didTapShareButtonOnRoutePlanningFooterView:(id)view;
- (void)expandAllItems;
- (void)navigationProvider:(id)provider didChangeToNavigating:(BOOL)navigating withRoute:(id)route;
- (void)navigationProvider:(id)provider didReceiveRealtimeUpdates:(id)updates;
- (void)navigationProvider:(id)provider didUpdateActiveStepIndex:(unint64_t)index;
- (void)navigationProvider:(id)provider didUpdateDisplayedStepIndex:(unint64_t)index;
- (void)navigationProvider:(id)provider didUpdateRoute:(id)route;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pptTestMoveToNextStep;
- (void)recalculateLeadingInstructionMarginForWidth:(double)width;
- (void)routePlanningView:(id)view didTapGetTicketsForURL:(id)l;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setActive:(BOOL)active;
- (void)setActiveComposedRouteStepIndex:(unint64_t)index;
- (void)setCollectionView:(id)view;
- (void)setDelegate:(id)delegate;
- (void)setDisplayedComposedRouteStepIndex:(unint64_t)index;
- (void)setEnableNavigationUpdates:(BOOL)updates;
- (void)setFlattenToSingleSection:(BOOL)section;
- (void)setListView:(id)view;
- (void)setMatchedLocation:(id)location;
- (void)setRoute:(id)route;
- (void)setTableView:(id)view;
- (void)setUseCollapsedDisplayStyle:(BOOL)style;
- (void)tableView:(id)view didHighlightRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didUnhighlightRowAtIndexPath:(id)path;
- (void)tableViewDidFinishReload:(id)reload;
- (void)transitDirectionsBoardingInfoStepView:(id)view didSelectScheduleForItem:(id)item;
- (void)transitDirectionsCell:(id)cell didTapAdvisory:(id)advisory;
- (void)transitDirectionsCell:(id)cell wantsToExpandOrCollapseItem:(id)item;
- (void)transitDirectionsClusteredVehiclesCellDidTapAlternateRouteButtonInCell:(id)cell;
- (void)transitDirectionsListView:(id)view didDisplayAdvisory:(id)advisory;
- (void)transitDirectionsListView:(id)view didSelectItem:(id)item;
- (void)updateForClusteredLegSelectedRideIndexChange;
@end

@implementation TransitDirectionsStepsListDataSource

- (TransitDirectionsListView)listView
{
  WeakRetained = objc_loadWeakRetained(&self->_listView);

  return WeakRetained;
}

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

- (UIScrollViewDelegate)scrollViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegate);

  return WeakRetained;
}

- (TransitDirectionsStepsListDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)pptTestMoveToBoardStep
{
  pptTestCurrentStepIndex = [(TransitDirectionsStepsListDataSource *)self pptTestCurrentStepIndex];
  if (pptTestCurrentStepIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = pptTestCurrentStepIndex;
  dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  items = [dataProvider items];

  while (v5 < [items count])
  {
    v8 = [items objectAtIndexedSubscript:v5];
    if ([v8 type] == 2)
    {
      if (v8)
      {
        -[DirectionsStepsListNavigationProvider setDisplayedStepIndex:](self->_navigationProvider, "setDisplayedStepIndex:", [v8 matchingRouteStepIndex]);

        v4 = 1;
        goto LABEL_10;
      }

      break;
    }

    ++v5;
  }

  v4 = 0;
LABEL_10:

  return v4;
}

- (void)pptTestMoveToNextStep
{
  if ([(TransitDirectionsStepsListDataSource *)self pptTestHasNextStep])
  {
    pptTestCurrentStepIndex = [(TransitDirectionsStepsListDataSource *)self pptTestCurrentStepIndex];
    dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
    v5 = [NSIndexPath indexPathForItem:0 inSection:pptTestCurrentStepIndex + 1];
    v7 = [dataProvider itemAtIndexPath:v5];

    v6 = v7;
    if (v7)
    {
      -[DirectionsStepsListNavigationProvider setDisplayedStepIndex:](self->_navigationProvider, "setDisplayedStepIndex:", [v7 matchingRouteStepIndex]);
      v6 = v7;
    }
  }
}

- (BOOL)pptTestHasNextStep
{
  displayedTransitDirectionsListItemIndexPath = [(TransitDirectionsStepsListDataSource *)self displayedTransitDirectionsListItemIndexPath];
  v4 = displayedTransitDirectionsListItemIndexPath;
  if (displayedTransitDirectionsListItemIndexPath)
  {
    section = [displayedTransitDirectionsListItemIndexPath section];
    v6 = section < [(TransitDirectionsStepsListDataSource *)self _numberOfSections];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)pptTestCurrentStepIndex
{
  displayedTransitDirectionsListItemIndexPath = [(TransitDirectionsStepsListDataSource *)self displayedTransitDirectionsListItemIndexPath];
  v3 = displayedTransitDirectionsListItemIndexPath;
  if (displayedTransitDirectionsListItemIndexPath)
  {
    section = [displayedTransitDirectionsListItemIndexPath section];
  }

  else
  {
    section = 0x7FFFFFFFFFFFFFFFLL;
  }

  return section;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  scrollViewDelegate = [(TransitDirectionsStepsListDataSource *)self scrollViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    scrollViewDelegate2 = [(TransitDirectionsStepsListDataSource *)self scrollViewDelegate];
    [scrollViewDelegate2 scrollViewWillBeginDragging:draggingCopy];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  scrollViewDelegate = [(TransitDirectionsStepsListDataSource *)self scrollViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    scrollViewDelegate2 = [(TransitDirectionsStepsListDataSource *)self scrollViewDelegate];
    [scrollViewDelegate2 scrollViewDidScroll:scrollCopy];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  delegate = [(TransitDirectionsStepsListDataSource *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    if (y <= 0.0)
    {
      v11 = 7;
    }

    else
    {
      v11 = 8;
    }

    v12 = +[MKMapService sharedService];
    delegate2 = [(TransitDirectionsStepsListDataSource *)self delegate];
    currentUITargetForAnalytics = [delegate2 currentUITargetForAnalytics];
    displayedItemIndexForAnalytics = [(TransitDirectionsStepsListDataSource *)self displayedItemIndexForAnalytics];
    [v12 captureUserAction:v11 onTarget:currentUITargetForAnalytics eventValue:0 transitStep:displayedItemIndexForAnalytics];
  }

  scrollViewDelegate = [(TransitDirectionsStepsListDataSource *)self scrollViewDelegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    scrollViewDelegate2 = [(TransitDirectionsStepsListDataSource *)self scrollViewDelegate];
    [scrollViewDelegate2 scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:{x, y}];
  }
}

- (BOOL)shouldShowSeparatorForItemAtIndexPath:(id)path insets:(NSDirectionalEdgeInsets *)insets
{
  pathCopy = path;
  top = insets->top;
  leading = insets->leading;
  bottom = insets->bottom;
  trailing = insets->trailing;
  v11 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:pathCopy];
  v12 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v11];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = pathCopy;
    _numberOfSections = [(TransitDirectionsStepsListDataSource *)self _numberOfSections];
    dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
    v14 = [dataProvider numberOfItemsInSection:{objc_msgSend(v11, "section")}];

    v15 = v12;
    if ((-[TransitDirectionsStepsListDataSource _stepViewDisplayOptionsForSection:](self, "_stepViewDisplayOptionsForSection:", [v11 section]) & 4) != 0)
    {
      nextItem = [v15 nextItem];
      if (nextItem)
      {
        v17 = nextItem;
        do
        {
          parentItem = [v17 parentItem];
          v19 = parentItem;
          if (parentItem == v15)
          {
          }

          else
          {
            parentItem2 = [v17 parentItem];
            parentItem3 = [v15 parentItem];

            if (parentItem2 != parentItem3)
            {
              break;
            }
          }

          v14 -= [v17 shouldHideInExpandedDisplayStyle];
          nextItem2 = [v17 nextItem];

          v17 = nextItem2;
        }

        while (nextItem2);
      }
    }

    v23 = v14 - 1;
    v24 = [v11 row];
    LOBYTE(v14) = v14 - 1 == v24;
    options = [(TransitDirectionsStepsListDataSource *)self options];
    _supportsFooterItem = [(TransitDirectionsStepsListDataSource *)self _supportsFooterItem];
    if ((options & 8) != 0 && v23 == v24)
    {
      v27 = -2;
      if (!_supportsFooterItem)
      {
        v27 = -1;
      }

      pathCopy = v33;
      if ((v27 + _numberOfSections) == [v33 section])
      {
        LOBYTE(v14) = 1;
      }

      else
      {
        [(TransitDirectionsStepsListDataSource *)self leadingInstructionMargin];
        leading = v30;
        LOBYTE(v14) = 1;
        trailing = 16.0;
      }
    }

    else
    {
      [(TransitDirectionsStepsListDataSource *)self leadingInstructionMargin];
      leading = v28;
      trailing = 16.0;
      if ((options & 8) == 0 && v23 == v24)
      {
        LOBYTE(v14) = (_numberOfSections - 1) != [v11 section] && v23 == v24;
      }

      pathCopy = v33;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      LODWORD(v14) = [v12 isEqualToString:@"TransitDirectionsListSharingIdentifier"] ^ 1;
    }

    else
    {
      LOBYTE(v14) = 1;
    }
  }

  insets->top = top;
  insets->leading = leading;
  insets->bottom = bottom;
  insets->trailing = trailing;

  return v14;
}

- (BOOL)_shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:pathCopy];
  v6 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v8;
  if (!v8)
  {
    if ([(TransitDirectionsStepsListDataSource *)self allowsStepSelection])
    {
      [v6 isEqual:@"TransitDirectionsListSharingIdentifier"];
    }

LABEL_14:
    allowsStepSelection = 0;
    goto LABEL_15;
  }

  if ([v8 type] == 7 || objc_msgSend(v9, "type") == 13 || !-[TransitDirectionsStepsListDataSource allowsStepSelection](self, "allowsStepSelection"))
  {
    goto LABEL_14;
  }

  if (![v9 type])
  {
    allowsStepSelection = [(TransitDirectionsStepsListDataSource *)self allowsStepSelection];
    goto LABEL_15;
  }

  if ([v6 isEqual:@"TransitDirectionsListSharingIdentifier"])
  {
    goto LABEL_14;
  }

  if ([v9 selectable])
  {
    allowsStepSelection = 1;
  }

  else
  {
    v12 = [(TransitDirectionsStepsListDataSource *)self _additionalSelectionIndexPathsForIndexPath:pathCopy];
    firstObject = [v12 firstObject];
    if ([firstObject compare:pathCopy] == -1)
    {
      allowsStepSelection = [(TransitDirectionsStepsListDataSource *)self _shouldHighlightItemAtIndexPath:firstObject];
    }

    else
    {
      allowsStepSelection = 0;
    }
  }

LABEL_15:

  return allowsStepSelection;
}

- (id)_additionalSelectionIndexPathsForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:pathCopy];
  v6 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v5];
  v7 = +[NSMutableArray array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v6;
    v8 = v6;
    v26 = v5;
    v9 = v5;
    if (([v8 selectable] & 1) == 0)
    {
      while ([v9 row] >= 1)
      {
        v10 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v9 row] - 1, objc_msgSend(v9, "section"));

        v11 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v10];

        v8 = v11;
        v9 = v10;
        if ([v11 selectable])
        {
          goto LABEL_6;
        }
      }
    }

    v10 = v9;
    v11 = v8;
LABEL_6:
    if (([v11 selectable] & 1) == 0)
    {
      v21 = sub_10006D178();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v28 = "[TransitDirectionsStepsListDataSource _additionalSelectionIndexPathsForIndexPath:]";
        v29 = 2080;
        v30 = "TransitDirectionsStepsListDataSource.m";
        v31 = 1024;
        v32 = 2349;
        v33 = 2080;
        v34 = "currentTransitItem.selectable";
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v22 = sub_10006D178();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v28 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
    v13 = [dataProvider numberOfItemsInSection:{objc_msgSend(v10, "section")}];

    v14 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v10 row] + 1, objc_msgSend(v10, "section"));

    v15 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v14];

    if ([v14 row] < v13)
    {
      while (1)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v15 selectable] & 1) != 0 || objc_msgSend(v15, "type") == 7)
        {
          break;
        }

        v16 = [(TransitDirectionsStepsListDataSource *)self _flatIndexFromIndexPath:v14];
        v17 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v16 row], objc_msgSend(pathCopy, "section"));
        [v7 addObject:v17];

        v18 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v16 row] + 1, objc_msgSend(v16, "section"));

        v19 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v18];

        v15 = v19;
        v14 = v18;
        if ([v18 row] >= v13)
        {
          goto LABEL_14;
        }
      }
    }

    v18 = v14;
    v19 = v15;
LABEL_14:

    v6 = v25;
    v5 = v26;
  }

  return v7;
}

- (void)_updateActiveItemInListViewIfNeeded
{
  listView = [(TransitDirectionsStepsListDataSource *)self listView];
  listView2 = [(TransitDirectionsStepsListDataSource *)self listView];
  v4 = [(TransitDirectionsStepsListDataSource *)self activeItemForTransitDirectionsListView:listView2];
  [listView setActiveTransitDirectionsListItem:v4];
}

- (void)transitDirectionsListView:(id)view didDisplayAdvisory:(id)advisory
{
  advisoryCopy = advisory;
  v7 = +[MKMapService sharedService];
  delegate = [(TransitDirectionsStepsListDataSource *)self delegate];
  [v7 captureUserAction:247 onTarget:objc_msgSend(delegate forAdvisory:{"currentUITargetForAnalytics"), advisoryCopy}];
}

- (void)transitDirectionsListView:(id)view didSelectItem:(id)item
{
  viewCopy = view;
  itemCopy = item;
  if ([itemCopy type] == 4 && (-[TransitDirectionsStepsListDataSource delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, (v8 & 1) != 0))
  {
    delegate2 = [viewCopy stepViewForItem:itemCopy];
    [(TransitDirectionsStepsListDataSource *)self transitDirectionsClusteredVehiclesCellDidTapAlternateRouteButtonInCell:delegate2];
  }

  else
  {
    delegate = [(TransitDirectionsStepsListDataSource *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      goto LABEL_7;
    }

    delegate2 = [(TransitDirectionsStepsListDataSource *)self delegate];
    [delegate2 transitDirectionsStepsListDataSource:self didTapRowForItem:itemCopy];
  }

LABEL_7:
}

- (BOOL)transitDirectionsListView:(id)view canSelectItem:(id)item
{
  itemCopy = item;
  dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  v7 = [dataProvider indexPathForItem:itemCopy];

  v8 = [(TransitDirectionsStepsListDataSource *)self _flatIndexFromIndexPath:v7];
  LOBYTE(self) = [(TransitDirectionsStepsListDataSource *)self _shouldHighlightItemAtIndexPath:v8];

  return self;
}

- (id)activeItemForTransitDirectionsListView:(id)view
{
  highlightingBehaviour = [(TransitDirectionsStepsListDataSource *)self highlightingBehaviour];
  if (highlightingBehaviour == 2)
  {
    _displayedItem = [(TransitDirectionsStepsListDataSource *)self _displayedItem];
    _activeItem = [(TransitDirectionsStepsListDataSource *)self _activeItem];

    if (_displayedItem == _activeItem)
    {
      v7 = 0;
    }

    else
    {
      v7 = _displayedItem;
    }
  }

  else
  {
    if (highlightingBehaviour == 1)
    {
      [(TransitDirectionsStepsListDataSource *)self _displayedItem];
    }

    else
    {
      [(TransitDirectionsStepsListDataSource *)self _activeItem];
    }
    v7 = ;
  }

  return v7;
}

- (void)_configureStepView:(id)view forItem:(id)item atIndexPath:(id)path
{
  viewCopy = view;
  itemCopy = item;
  pathCopy = path;
  if ([viewCopy conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsExpandableCell])
  {
    [viewCopy setExpandableCellDelegate:self];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy setBoardingInfoDelegate:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [viewCopy setDelegate:self];
    }
  }

  [(TransitDirectionsStepsListDataSource *)self leadingInstructionMargin];
  [viewCopy setLeadingInstructionMargin:?];
  [viewCopy setUseNavigationMetrics:{-[TransitDirectionsStepsListDataSource _useNavigationMetrics](self, "_useNavigationMetrics")}];
  [viewCopy setDisplayOptions:{-[TransitDirectionsStepsListDataSource _stepViewDisplayOptionsForSection:](self, "_stepViewDisplayOptionsForSection:", objc_msgSend(pathCopy, "section"))}];
  [viewCopy configureWithItem:itemCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = viewCopy;
    if ([pathCopy row] <= 0)
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315906;
        v19 = "[TransitDirectionsStepsListDataSource _configureStepView:forItem:atIndexPath:]";
        v20 = 2080;
        v21 = "TransitDirectionsStepsListDataSource.m";
        v22 = 1024;
        v23 = 2243;
        v24 = 2080;
        v25 = "indexPath.row > 0";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v18, 0x26u);
      }

      if (sub_100E03634())
      {
        v16 = sub_10006D178();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = +[NSThread callStackSymbols];
          v18 = 138412290;
          v19 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", &v18, 0xCu);
        }
      }
    }

    if ([pathCopy row] >= 1)
    {
      v12 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [pathCopy row] - 1, objc_msgSend(pathCopy, "section"));
      dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
      v14 = [dataProvider itemAtIndexPath:v12];

      [v11 setPreviousItem:v14 withPreviousNavigationState:{-[TransitDirectionsStepsListDataSource _cellNavStateForItem:atIndexPath:](self, "_cellNavStateForItem:atIndexPath:", v14, v12)}];
    }
  }

  [viewCopy setNavigationState:{-[TransitDirectionsStepsListDataSource _cellNavStateForItem:atIndexPath:](self, "_cellNavStateForItem:atIndexPath:", itemCopy, pathCopy)}];
}

- (id)transitDirectionsListView:(id)view stepViewForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:pathCopy];
  v9 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v8];
  v10 = [viewCopy dequeueStepViewForItem:v9];

  [(TransitDirectionsStepsListDataSource *)self _configureStepView:v10 forItem:v9 atIndexPath:pathCopy];

  return v10;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(TransitDirectionsStepsListDataSource *)self _additionalSelectionIndexPathsForIndexPath:pathCopy];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  indexPathsForSelectedItems = [viewCopy indexPathsForSelectedItems];
  v10 = [indexPathsForSelectedItems countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v38;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        if (([v14 isEqual:pathCopy] & 1) == 0 && (objc_msgSend(v8, "containsObject:", v14) & 1) == 0)
        {
          [viewCopy deselectItemAtIndexPath:v14 animated:0];
        }
      }

      v11 = [indexPathsForSelectedItems countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v11);
  }

  if (sub_10000FA08(viewCopy) == 5)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = v8;
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v33 + 1) + 8 * j);
          v21 = [viewCopy cellForItemAtIndexPath:{v20, v33}];
          if (([v21 isSelected] & 1) == 0)
          {
            [viewCopy selectItemAtIndexPath:v20 animated:0 scrollPosition:0];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v17);
    }
  }

  v22 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:pathCopy, v33];
  v23 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v22];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = [v8 firstObject];
    if ([firstObject compare:pathCopy] == -1)
    {
      v25 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:firstObject];
      v26 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v25];

      v23 = v26;
    }

    v23 = v23;
    if ([v23 type] == 4 && (-[TransitDirectionsStepsListDataSource delegate](self, "delegate"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_opt_respondsToSelector(), v27, (v28 & 1) != 0))
    {
      delegate2 = [viewCopy cellForItemAtIndexPath:pathCopy];
      stepView = [delegate2 stepView];
      [(TransitDirectionsStepsListDataSource *)self transitDirectionsClusteredVehiclesCellDidTapAlternateRouteButtonInCell:stepView];
    }

    else
    {
      delegate = [(TransitDirectionsStepsListDataSource *)self delegate];
      v32 = objc_opt_respondsToSelector();

      if ((v32 & 1) == 0)
      {
LABEL_31:

        goto LABEL_32;
      }

      delegate2 = [(TransitDirectionsStepsListDataSource *)self delegate];
      [delegate2 transitDirectionsStepsListDataSource:self didTapRowForItem:v23];
    }

    goto LABEL_31;
  }

LABEL_32:
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(TransitDirectionsStepsListDataSource *)self _additionalSelectionIndexPathsForIndexPath:path];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [viewCopy selectItemAtIndexPath:*(*(&v13 + 1) + 8 * v11) animated:0 scrollPosition:0];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return 1;
}

- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(TransitDirectionsStepsListDataSource *)self _additionalSelectionIndexPathsForIndexPath:path];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [viewCopy cellForItemAtIndexPath:*(*(&v13 + 1) + 8 * v11)];
        [v12 setHighlighted:0];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(TransitDirectionsStepsListDataSource *)self _additionalSelectionIndexPathsForIndexPath:path];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [viewCopy cellForItemAtIndexPath:*(*(&v13 + 1) + 8 * v11)];
        [v12 setHighlighted:1];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_configureTransitDirectionsCollectionViewCell:(id)cell withItem:(id)item atIndexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  pathCopy = path;
  if ([cellCopy conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsExpandableCell])
  {
    [cellCopy setExpandableCellDelegate:self];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stepView = [cellCopy stepView];
    [stepView setBoardingInfoDelegate:self];
LABEL_7:

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stepView = [cellCopy stepView];
    [stepView setDelegate:self];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy setDelegate:self];
  }

LABEL_8:
  [(TransitDirectionsStepsListDataSource *)self leadingInstructionMargin];
  [cellCopy setLeadingInstructionMargin:?];
  [cellCopy setUseNavigationMetrics:{-[TransitDirectionsStepsListDataSource _useNavigationMetrics](self, "_useNavigationMetrics")}];
  [cellCopy setDisplayOptions:{-[TransitDirectionsStepsListDataSource _stepViewDisplayOptionsForSection:](self, "_stepViewDisplayOptionsForSection:", objc_msgSend(pathCopy, "section"))}];
  [cellCopy configureWithItem:itemCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stepView2 = [cellCopy stepView];
    if ([pathCopy row] <= 0)
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = 136315906;
        v20 = "[TransitDirectionsStepsListDataSource _configureTransitDirectionsCollectionViewCell:withItem:atIndexPath:]";
        v21 = 2080;
        v22 = "TransitDirectionsStepsListDataSource.m";
        v23 = 1024;
        v24 = 2097;
        v25 = 2080;
        v26 = "indexPath.row > 0";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v19, 0x26u);
      }

      if (sub_100E03634())
      {
        v17 = sub_10006D178();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = +[NSThread callStackSymbols];
          v19 = 138412290;
          v20 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", &v19, 0xCu);
        }
      }
    }

    if ([pathCopy row] >= 1)
    {
      v13 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [pathCopy row] - 1, objc_msgSend(pathCopy, "section"));
      dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
      v15 = [dataProvider itemAtIndexPath:v13];

      [stepView2 setPreviousItem:v15 withPreviousNavigationState:{-[TransitDirectionsStepsListDataSource _cellNavStateForItem:atIndexPath:](self, "_cellNavStateForItem:atIndexPath:", v15, v13)}];
    }
  }

  [cellCopy setNavigationState:{-[TransitDirectionsStepsListDataSource _cellNavStateForItem:atIndexPath:](self, "_cellNavStateForItem:atIndexPath:", itemCopy, pathCopy)}];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:pathCopy];
  v9 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [TransitDirectionsCell dequeueCellForListItem:v9 fromCollectionView:viewCopy atIndexPath:pathCopy];
    [(TransitDirectionsStepsListDataSource *)self _configureTransitDirectionsCollectionViewCell:v10 withItem:v9 atIndexPath:pathCopy];
  }

  else if ([v9 isEqual:@"TransitDirectionsListSharingIdentifier"])
  {
    v10 = [(TransitDirectionsStepsListDataSource *)self _footerCellForIndexPath:pathCopy inCollectionView:viewCopy];
  }

  else
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315650;
      v18 = "[TransitDirectionsStepsListDataSource collectionView:cellForItemAtIndexPath:]";
      v19 = 2080;
      v20 = "TransitDirectionsStepsListDataSource.m";
      v21 = 1024;
      v22 = 2064;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v17, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[NSThread callStackSymbols];
        v17 = 138412290;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
      }
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:pathCopy];
  }

  return v10;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  if ([(TransitDirectionsStepsListDataSource *)self shouldFlattenToSingleSection])
  {
    if (![(TransitDirectionsStepsListDataSource *)self _numberOfSections])
    {
      return 0;
    }

    v6 = 0;
    v7 = 0;
    do
    {
      v7 += [(TransitDirectionsStepsListDataSource *)self _numberOfRowsInSection:v6++];
    }

    while (v6 < [(TransitDirectionsStepsListDataSource *)self _numberOfSections]);
    return v7;
  }

  else
  {

    return [(TransitDirectionsStepsListDataSource *)self _numberOfRowsInSection:section];
  }
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  if ([(TransitDirectionsStepsListDataSource *)self shouldFlattenToSingleSection])
  {
    return 1;
  }

  return [(TransitDirectionsStepsListDataSource *)self _numberOfSections];
}

- (void)_updateListForClusteredRideOptionChangeInClusteredSegment:(id)segment
{
  segmentCopy = segment;
  if (!self->_clusteredRideUpdateThrottler)
  {
    v5 = sub_100E74344();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
LABEL_9:

      objc_initWeak(buf, self);
      v12 = [MapsThrottler alloc];
      v13 = &_dispatch_main_q;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100E74398;
      v17[3] = &unk_101656988;
      objc_copyWeak(&v18, buf);
      v14 = [(MapsThrottler *)v12 initWithInitialValue:0 throttlingInterval:&_dispatch_main_q queue:v17 updateHandler:0.0];
      clusteredRideUpdateThrottler = self->_clusteredRideUpdateThrottler;
      self->_clusteredRideUpdateThrottler = v14;

      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);
      goto LABEL_10;
    }

    selfCopy = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

    *buf = 138543362;
    v20 = selfCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Will prepare transit clustered ride update throttler to prevent more than one rebuild/reload per run loop", buf, 0xCu);

    goto LABEL_9;
  }

LABEL_10:
  v16 = +[NSDate date];
  [(MapsThrottler *)self->_clusteredRideUpdateThrottler setValue:v16];
}

- (void)transitDirectionsClusteredVehiclesCellDidTapAlternateRouteButtonInCell:(id)cell
{
  cellCopy = cell;
  displayedItemIndexForAnalytics = [(TransitDirectionsStepsListDataSource *)self displayedItemIndexForAnalytics];
  [GEOAPPortal captureUserAction:17098 target:0 value:0 transitStep:displayedItemIndexForAnalytics];

  delegate = [(TransitDirectionsStepsListDataSource *)self delegate];
  LOBYTE(displayedItemIndexForAnalytics) = objc_opt_respondsToSelector();

  if (displayedItemIndexForAnalytics)
  {
    delegate2 = [(TransitDirectionsStepsListDataSource *)self delegate];
    [delegate2 transitDirectionsStepsListDataSource:self didTapClusteredVehiclesCell:cellCopy];
  }
}

- (void)transitDirectionsBoardingInfoStepView:(id)view didSelectScheduleForItem:(id)item
{
  itemCopy = item;
  type = [itemCopy type];
  v6 = itemCopy;
  if (itemCopy && type == 9)
  {
    while (1)
    {
      v12 = v6;
      if ([v6 type] == 2)
      {
        break;
      }

      nextItem = [v12 nextItem];

      v6 = nextItem;
      if (!nextItem)
      {
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  v13 = v6;
  if ([v6 type] == 2)
  {
    delegate = [(TransitDirectionsStepsListDataSource *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate2 = [(TransitDirectionsStepsListDataSource *)self delegate];
      [delegate2 transitDirectionsStepsListDataSource:self didSelectTrip:v13];
    }
  }
}

- (void)didTapReportAProblemButtonOnRoutePlanningFooterView:(id)view
{
  delegate = [(TransitDirectionsStepsListDataSource *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = +[MKMapService sharedService];
    delegate2 = [(TransitDirectionsStepsListDataSource *)self delegate];
    currentUITargetForAnalytics = [delegate2 currentUITargetForAnalytics];
    displayedItemIndexForAnalytics = [(TransitDirectionsStepsListDataSource *)self displayedItemIndexForAnalytics];
    [v6 captureUserAction:5013 onTarget:currentUITargetForAnalytics eventValue:0 transitStep:displayedItemIndexForAnalytics];
  }

  delegate3 = [(TransitDirectionsStepsListDataSource *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate4 = [(TransitDirectionsStepsListDataSource *)self delegate];
    [delegate4 directionsStepsListDidTapRAPButton:self];
  }
}

- (void)routePlanningView:(id)view didTapGetTicketsForURL:(id)l
{
  lCopy = l;
  delegate = [(TransitDirectionsStepsListDataSource *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(TransitDirectionsStepsListDataSource *)self delegate];
    [delegate2 transitDirectionsStepsListDataSource:self didTapGetTicketsWithURL:lCopy];
  }
}

- (void)didTapGetTicketsOnRoutePlanningFooterView:(id)view
{
  delegate = [(TransitDirectionsStepsListDataSource *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(TransitDirectionsStepsListDataSource *)self delegate];
    ticketingSegmentsForSelectedRides = [(GEOComposedRoute *)self->_route ticketingSegmentsForSelectedRides];
    [delegate2 transitDirectionsStepsListDataSource:self didTapGetTicketsForSegments:ticketingSegmentsForSelectedRides];
  }
}

- (void)didTapShareButtonOnRoutePlanningFooterView:(id)view
{
  delegate = [(TransitDirectionsStepsListDataSource *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = +[MKMapService sharedService];
    delegate2 = [(TransitDirectionsStepsListDataSource *)self delegate];
    currentUITargetForAnalytics = [delegate2 currentUITargetForAnalytics];
    displayedItemIndexForAnalytics = [(TransitDirectionsStepsListDataSource *)self displayedItemIndexForAnalytics];
    [v6 captureUserAction:6013 onTarget:currentUITargetForAnalytics eventValue:0 transitStep:displayedItemIndexForAnalytics];
  }

  delegate3 = [(TransitDirectionsStepsListDataSource *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate4 = [(TransitDirectionsStepsListDataSource *)self delegate];
    [delegate4 directionsStepsListDidTapShareButton:self];
  }
}

- (void)_transitDirectionsStepView:(id)view wantsToExpandOrCollapseItem:(id)item inListView:(id)listView
{
  itemCopy = item;
  if (listView)
  {
    dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
    v9 = [dataProvider indexPathForItem:itemCopy];

    if (itemCopy && v9)
    {
      self->_animatingExpansion = 1;
      delegate = [(TransitDirectionsStepsListDataSource *)self delegate];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        delegate2 = [(TransitDirectionsStepsListDataSource *)self delegate];
        [delegate2 transitDirectionsStepsListDataSource:self willExpandItem:itemCopy];
      }

      [itemCopy setExpanded:{objc_msgSend(itemCopy, "expanded") ^ 1}];
      listView = [(TransitDirectionsStepsListDataSource *)self listView];
      section = [v9 section];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100E74D80;
      v18[3] = &unk_101661570;
      v18[4] = self;
      v19 = itemCopy;
      [listView reloadSectionAtIndex:section animated:1 completion:v18];
    }

    else
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v21 = "[TransitDirectionsStepsListDataSource _transitDirectionsStepView:wantsToExpandOrCollapseItem:inListView:]";
        v22 = 2080;
        v23 = "TransitDirectionsStepsListDataSource.m";
        v24 = 1024;
        v25 = 1888;
        v26 = 2080;
        v27 = "indexPath != nil && item != nil";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v16 = sub_10006D178();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v21 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }
}

- (void)_transitDirectionsCell:(id)cell wantsToExpandOrCollapseItem:(id)item inCollectionView:(id)view
{
  cellCopy = cell;
  itemCopy = item;
  if (view)
  {
    collectionView = [(TransitDirectionsStepsListDataSource *)self collectionView];
    v11 = [collectionView indexPathForCell:cellCopy];

    if (itemCopy && v11)
    {
      self->_animatingExpansion = 1;
      if (([itemCopy expanded] & 1) == 0)
      {
        delegate = [(TransitDirectionsStepsListDataSource *)self delegate];
        v13 = objc_opt_respondsToSelector();

        if (v13)
        {
          delegate2 = [(TransitDirectionsStepsListDataSource *)self delegate];
          [delegate2 transitDirectionsStepsListDataSource:self willExpandItem:itemCopy];
        }
      }

      collectionView2 = [(TransitDirectionsStepsListDataSource *)self collectionView];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100E7521C;
      v21[3] = &unk_101656A00;
      v21[4] = self;
      v22 = v11;
      v23 = itemCopy;
      v24 = cellCopy;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100E75904;
      v19[3] = &unk_101661570;
      v19[4] = self;
      v20 = v23;
      [collectionView2 performBatchUpdates:v21 completion:v19];
    }

    else
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v26 = "[TransitDirectionsStepsListDataSource _transitDirectionsCell:wantsToExpandOrCollapseItem:inCollectionView:]";
        v27 = 2080;
        v28 = "TransitDirectionsStepsListDataSource.m";
        v29 = 1024;
        v30 = 1814;
        v31 = 2080;
        v32 = "indexPath != nil && item != nil";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v17 = sub_10006D178();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v26 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }
}

- (void)_transitDirectionsCell:(id)cell wantsToExpandOrCollapseItem:(id)item inTableView:(id)view
{
  cellCopy = cell;
  itemCopy = item;
  if (view)
  {
    tableView = [(TransitDirectionsStepsListDataSource *)self tableView];
    v11 = [tableView indexPathForCell:cellCopy];

    if (itemCopy && v11)
    {
      self->_animatingExpansion = 1;
      delegate = [(TransitDirectionsStepsListDataSource *)self delegate];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        delegate2 = [(TransitDirectionsStepsListDataSource *)self delegate];
        [delegate2 transitDirectionsStepsListDataSource:self willExpandItem:itemCopy];
      }

      tableView2 = [(TransitDirectionsStepsListDataSource *)self tableView];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100E75D94;
      v21[3] = &unk_101656A00;
      v21[4] = self;
      v22 = v11;
      v23 = itemCopy;
      v24 = cellCopy;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100E76484;
      v19[3] = &unk_101661570;
      v19[4] = self;
      v20 = v23;
      [tableView2 performBatchUpdates:v21 completion:v19];
    }

    else
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v26 = "[TransitDirectionsStepsListDataSource _transitDirectionsCell:wantsToExpandOrCollapseItem:inTableView:]";
        v27 = 2080;
        v28 = "TransitDirectionsStepsListDataSource.m";
        v29 = 1024;
        v30 = 1740;
        v31 = 2080;
        v32 = "indexPath != nil && item != nil";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v17 = sub_10006D178();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v26 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }
}

- (void)transitDirectionsCell:(id)cell wantsToExpandOrCollapseItem:(id)item
{
  itemCopy = item;
  cellCopy = cell;
  cell = [cellCopy cell];
  tableView = [(TransitDirectionsStepsListDataSource *)self tableView];
  [(TransitDirectionsStepsListDataSource *)self _transitDirectionsCell:cell wantsToExpandOrCollapseItem:itemCopy inTableView:tableView];

  cell2 = [cellCopy cell];
  collectionView = [(TransitDirectionsStepsListDataSource *)self collectionView];
  [(TransitDirectionsStepsListDataSource *)self _transitDirectionsCell:cell2 wantsToExpandOrCollapseItem:itemCopy inCollectionView:collectionView];

  listView = [(TransitDirectionsStepsListDataSource *)self listView];
  [(TransitDirectionsStepsListDataSource *)self _transitDirectionsStepView:cellCopy wantsToExpandOrCollapseItem:itemCopy inListView:listView];
}

- (void)transitDirectionsCell:(id)cell didTapAdvisory:(id)advisory
{
  cellCopy = cell;
  advisoryCopy = advisory;
  v7 = +[MKMapService sharedService];
  delegate = [(TransitDirectionsStepsListDataSource *)self delegate];
  [v7 captureUserAction:250 onTarget:objc_msgSend(delegate forAdvisory:{"currentUITargetForAnalytics"), advisoryCopy}];

  delegate2 = [(TransitDirectionsStepsListDataSource *)self delegate];
  LOBYTE(delegate) = objc_opt_respondsToSelector();

  if (delegate)
  {
    delegate3 = [(TransitDirectionsStepsListDataSource *)self delegate];
    [delegate3 transitDirectionsStepsListDataSource:self didTapIncidentsCell:cellCopy withAdvisory:advisoryCopy];
  }
}

- (void)_configureSeparatorForCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v8 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![cellCopy conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsCell] || (objc_opt_respondsToSelector() & 1) == 0)
    {
      v24 = sub_10006D178();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v27 = 136315906;
        v28 = "[TransitDirectionsStepsListDataSource _configureSeparatorForCell:forRowAtIndexPath:]";
        v29 = 2080;
        v30 = "TransitDirectionsStepsListDataSource.m";
        v31 = 1024;
        v32 = 1686;
        v33 = 2080;
        v34 = "[cell isKindOfClass:[MKTableViewCell class]] && [cell conformsToProtocol:@protocol(TransitDirectionsCell)] && [cell respondsToSelector:@selector(setUseLeadingInstructionMarginAsLeadingSeparatorInset:)]";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v27, 0x26u);
      }

      if (sub_100E03634())
      {
        v25 = sub_10006D178();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = +[NSThread callStackSymbols];
          v27 = 138412290;
          v28 = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%@", &v27, 0xCu);
        }
      }
    }

    tableView = [(TransitDirectionsStepsListDataSource *)self tableView];
    if (tableView)
    {
      [(TransitDirectionsStepsListDataSource *)self tableView];
    }

    else
    {
      [(TransitDirectionsStepsListDataSource *)self collectionView];
    }
    v10 = ;
    numberOfSections = [v10 numberOfSections];

    tableView2 = [(TransitDirectionsStepsListDataSource *)self tableView];
    if (tableView2)
    {
      tableView3 = [(TransitDirectionsStepsListDataSource *)self tableView];
      v14 = -[TransitDirectionsStepsListDataSource tableView:numberOfRowsInSection:](self, "tableView:numberOfRowsInSection:", tableView3, [pathCopy section]);
    }

    else
    {
      tableView3 = [(TransitDirectionsStepsListDataSource *)self collectionView];
      v14 = -[TransitDirectionsStepsListDataSource collectionView:numberOfItemsInSection:](self, "collectionView:numberOfItemsInSection:", tableView3, [pathCopy section]);
    }

    v15 = v14;

    v16 = (v15 - 1);
    v17 = [pathCopy row];
    options = [(TransitDirectionsStepsListDataSource *)self options];
    _supportsFooterItem = [(TransitDirectionsStepsListDataSource *)self _supportsFooterItem];
    v20 = 1;
    if ((options & 8) != 0 && v16 == v17)
    {
      v21 = -2;
      if (!_supportsFooterItem)
      {
        v21 = -1;
      }

      v20 = &numberOfSections[v21] != [pathCopy section];
    }

    v22 = cellCopy;
    [v22 setUseLeadingInstructionMarginAsLeadingSeparatorInset:v20];
    if (v16 == v17)
    {
      v23 = 1;
    }

    else
    {
      v23 = v20 ^ 1;
    }

    [v22 set_mapkit_separatorStyleOverride:v23];
  }
}

- (void)_configureFooterView:(id)view
{
  route = self->_route;
  viewCopy = view;
  ticketingSegmentsForSelectedRides = [(GEOComposedRoute *)route ticketingSegmentsForSelectedRides];
  v6 = [ticketingSegmentsForSelectedRides count];

  v7 = sub_10000FA08(viewCopy) != 5;
  if (v6)
  {
    v8 = (2 * v7) | 4;
  }

  else
  {
    v8 = 2 * v7;
  }

  [viewCopy setVisibleCommandSet:v8];
  [viewCopy setDelegate:self];
}

- (id)_footerCellForIndexPath:(id)path inCollectionView:(id)view
{
  v5 = [view dequeueReusableCellWithReuseIdentifier:@"TransitDirectionsListSharingIdentifier" forIndexPath:path];
  footerView = [v5 footerView];
  [(TransitDirectionsStepsListDataSource *)self _configureFooterView:footerView];

  return v5;
}

- (id)_footerCellForIndexPath:(id)path inTableView:(id)view
{
  if (view)
  {
    v5 = [view dequeueReusableCellWithIdentifier:@"TransitDirectionsListSharingIdentifier" forIndexPath:path];
  }

  else
  {
    v5 = [[RoutePlanningFooterCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  }

  v6 = v5;
  [(RoutePlanningFooterCell *)v5 set_mapkit_separatorStyleOverride:0];
  footerView = [(RoutePlanningFooterCell *)v6 footerView];
  [(TransitDirectionsStepsListDataSource *)self _configureFooterView:footerView];

  return v6;
}

- (_NSRange)_segementRangeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(TransitDirectionsStepsListDataSource *)self transitSegmentSectionRanges];
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v23;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v11 = 0;
      v20 = &v6[v8];
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        rangeValue = [*(*(&v22 + 1) + 8 * v11) rangeValue];
        v14 = v13;
        section = [pathCopy section];
        v17 = section >= rangeValue && section - rangeValue < v14;
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v17)
          {
            v10 = v8;
          }

          else
          {
            v10 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v17)
          {
            v7 = 1;
          }
        }

        else
        {
          if (!v17)
          {
            goto LABEL_25;
          }

          ++v7;
        }

        ++v8;
        ++v11;
      }

      while (v6 != v11);
      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      v8 = v20;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_25:

  v18 = v10;
  v19 = v7;
  result.length = v19;
  result.location = v18;
  return result;
}

- (int64_t)_cellNavStateForItem:(id)item atIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  activeItemIndexPath = [(TransitDirectionsStepsListDataSource *)self activeItemIndexPath];
  if (activeItemIndexPath)
  {
    matchedLocation = [(TransitDirectionsStepsListDataSource *)self matchedLocation];
    _navigation_isStale = [matchedLocation _navigation_isStale];

    section = [pathCopy section];
    section2 = [activeItemIndexPath section];
    v13 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:pathCopy];
    if (section != section2)
    {
      if ([activeItemIndexPath compare:v13] == 1)
      {
        v19 = [(TransitDirectionsStepsListDataSource *)self _segementRangeForItemAtIndexPath:activeItemIndexPath];
        v21 = v20;
        v22 = [(TransitDirectionsStepsListDataSource *)self _segementRangeForItemAtIndexPath:v13];
        v24 = v23;
        v30.location = v19;
        v30.length = v21;
        v31.location = v22;
        v31.length = v24;
        v25 = NSIntersectionRange(v30, v31);
        if (v25.length)
        {
          if (v25.location == v22 && v25.length == v24)
          {
            v18 = 1;
          }

          else
          {
            parentItem = [itemCopy parentItem];
            v27 = parentItem == 0;

            v18 = 2 * v27;
          }
        }

        else
        {
          v18 = 3;
        }
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_24;
    }

    matchingRouteStepIndex = [itemCopy matchingRouteStepIndex];
    activeComposedRouteStepIndex = self->_activeComposedRouteStepIndex;
    parentItem2 = [itemCopy parentItem];
    if (!parentItem2)
    {
      goto LABEL_21;
    }

    v17 = parentItem2;
    if ([itemCopy type] == 5 || objc_msgSend(itemCopy, "type") == 14)
    {
    }

    else
    {
      type = [itemCopy type];

      if (type != 6)
      {
        goto LABEL_21;
      }
    }

    if (matchingRouteStepIndex <= activeComposedRouteStepIndex)
    {
      if (_navigation_isStale)
      {
        v18 = 1;
      }

      else
      {
        v18 = 5;
      }

LABEL_24:

      goto LABEL_25;
    }

LABEL_21:
    if (_navigation_isStale)
    {
      v18 = 0;
    }

    else
    {
      v18 = 4;
    }

    goto LABEL_24;
  }

  v18 = 0;
LABEL_25:

  return v18;
}

- (void)_cacheHeightForRow:(id)row atIndexPath:(id)path
{
  rowCopy = row;
  v7 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:path];
  v8 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v7];
  if (v8)
  {
    estimatedHeightsByItem = [(TransitDirectionsStepsListDataSource *)self estimatedHeightsByItem];
    [rowCopy bounds];
    v10 = [NSNumber numberWithDouble:CGRectGetHeight(v20)];
    [estimatedHeightsByItem setObject:v10 forKey:v8];
    goto LABEL_3;
  }

  v11 = sub_10006D178();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315906;
    v13 = "[TransitDirectionsStepsListDataSource _cacheHeightForRow:atIndexPath:]";
    v14 = 2080;
    v15 = "TransitDirectionsStepsListDataSource.m";
    v16 = 1024;
    v17 = 1570;
    v18 = 2080;
    v19 = "item";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v12, 0x26u);
  }

  if (sub_100E03634())
  {
    estimatedHeightsByItem = sub_10006D178();
    if (!os_log_type_enabled(estimatedHeightsByItem, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v10 = +[NSThread callStackSymbols];
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, estimatedHeightsByItem, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
LABEL_3:

LABEL_4:
  }
}

- (void)tableViewDidFinishReload:(id)reload
{
  reloadCopy = reload;
  if (self->_routeSetAwaitingTableViewReload)
  {
    self->_routeSetAwaitingTableViewReload = 0;
    v14 = reloadCopy;
    [reloadCopy contentOffset];
    v6 = v5;
    v8 = v7;
    tableView = [(TransitDirectionsStepsListDataSource *)self tableView];
    safeAreaLayoutGuide = [tableView safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    v11 = -CGRectGetMinY(v16);
    v12 = v6 == 0.0 && v8 == v11;
    if (v12 || [v14 numberOfSections] < 1)
    {
    }

    else
    {
      v13 = [v14 numberOfRowsInSection:0];

      reloadCopy = v14;
      if (v13 < 1)
      {
        goto LABEL_11;
      }

      tableView = [NSIndexPath indexPathForRow:0 inSection:0];
      [v14 scrollToRowAtIndexPath:tableView atScrollPosition:1 animated:0];
    }

    reloadCopy = v14;
  }

LABEL_11:
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(TransitDirectionsStepsListDataSource *)self _additionalSelectionIndexPathsForIndexPath:pathCopy];
  v9 = sub_10000FA08(viewCopy);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  indexPathsForSelectedRows = [viewCopy indexPathsForSelectedRows];
  v11 = [indexPathsForSelectedRows countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      v14 = 0;
      do
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(indexPathsForSelectedRows);
        }

        v15 = *(*(&v28 + 1) + 8 * v14);
        if (v9 != 5 || ([*(*(&v28 + 1) + 8 * v14) isEqual:pathCopy] & 1) == 0 && (objc_msgSend(v8, "containsObject:", v15) & 1) == 0)
        {
          [viewCopy deselectRowAtIndexPath:v15 animated:v9 != 5];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [indexPathsForSelectedRows countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }

  v16 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:pathCopy];
  v17 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v16];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = [v8 firstObject];
    if ([firstObject compare:v16] == -1)
    {
      v19 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:firstObject];

      v17 = v19;
    }

    v17 = v17;
    if ([v17 type] == 3 && (-[TransitDirectionsStepsListDataSource delegate](self, "delegate"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_opt_respondsToSelector(), v20, (v21 & 1) != 0))
    {
      delegate = [(TransitDirectionsStepsListDataSource *)self delegate];
      [delegate transitDirectionsStepsListDataSource:self didSelectTrip:v17];
    }

    else if ([v17 type] == 4 && (-[TransitDirectionsStepsListDataSource delegate](self, "delegate"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_opt_respondsToSelector(), v23, (v24 & 1) != 0))
    {
      delegate = [viewCopy cellForRowAtIndexPath:v16];
      stepView = [delegate stepView];
      [(TransitDirectionsStepsListDataSource *)self transitDirectionsClusteredVehiclesCellDidTapAlternateRouteButtonInCell:stepView];
    }

    else
    {
      delegate2 = [(TransitDirectionsStepsListDataSource *)self delegate];
      v27 = objc_opt_respondsToSelector();

      if ((v27 & 1) == 0)
      {
LABEL_24:

        goto LABEL_25;
      }

      delegate = [(TransitDirectionsStepsListDataSource *)self delegate];
      [delegate transitDirectionsStepsListDataSource:self didTapRowForItem:v17];
    }

    goto LABEL_24;
  }

LABEL_25:
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(TransitDirectionsStepsListDataSource *)self _additionalSelectionIndexPathsForIndexPath:pathCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [viewCopy selectRowAtIndexPath:*(*(&v14 + 1) + 8 * i) animated:0 scrollPosition:0];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  return pathCopy;
}

- (void)tableView:(id)view didUnhighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:path];
  v8 = [(TransitDirectionsStepsListDataSource *)self _additionalSelectionIndexPathsForIndexPath:v7];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [viewCopy cellForRowAtIndexPath:*(*(&v14 + 1) + 8 * v12)];
        [v13 setHighlighted:0];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)tableView:(id)view didHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(TransitDirectionsStepsListDataSource *)self _additionalSelectionIndexPathsForIndexPath:path];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [viewCopy cellForRowAtIndexPath:*(*(&v13 + 1) + 8 * v11)];
        [v12 setHighlighted:1];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  v5 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:path];
  v6 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v5];
  estimatedHeightsByItem = [(TransitDirectionsStepsListDataSource *)self estimatedHeightsByItem];
  v8 = [estimatedHeightsByItem objectForKey:v6];

  if (v8)
  {
    [v8 floatValue];
    v10 = v9;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [TransitDirectionsStepView estimatedHeightForListItem:v6];
      v10 = v11;
    }

    else
    {
      v10 = 70.0;
    }
  }

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:pathCopy];
  v9 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [TransitDirectionsCell dequeueCellForListItem:v9 fromTableView:viewCopy atIndexPath:pathCopy];
    if ([v10 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsExpandableCell])
    {
      [v10 setExpandableCellDelegate:self];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stepView = [v10 stepView];
      [stepView setBoardingInfoDelegate:self];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setDelegate:self];
        }

LABEL_11:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [(TransitDirectionsStepsListDataSource *)self leadingInstructionMargin];
          [v10 setLeadingInstructionMargin:?];
        }

        [v10 setUseNavigationMetrics:{-[TransitDirectionsStepsListDataSource _useNavigationMetrics](self, "_useNavigationMetrics")}];
        [v10 setDisplayOptions:{-[TransitDirectionsStepsListDataSource _stepViewDisplayOptionsForSection:](self, "_stepViewDisplayOptionsForSection:", objc_msgSend(pathCopy, "section"))}];
        [v10 configureWithItem:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          stepView2 = [v10 stepView];
          if ([pathCopy row] <= 0)
          {
            v23 = sub_10006D178();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v26 = 136315906;
              v27 = "[TransitDirectionsStepsListDataSource tableView:cellForRowAtIndexPath:]";
              v28 = 2080;
              v29 = "TransitDirectionsStepsListDataSource.m";
              v30 = 1024;
              v31 = 1434;
              v32 = 2080;
              v33 = "indexPath.row > 0";
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v26, 0x26u);
            }

            if (sub_100E03634())
            {
              v24 = sub_10006D178();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v25 = +[NSThread callStackSymbols];
                v26 = 138412290;
                v27 = v25;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@", &v26, 0xCu);
              }
            }
          }

          if ([pathCopy row] >= 1)
          {
            v13 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [pathCopy row] - 1, objc_msgSend(pathCopy, "section"));
            dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
            v15 = [dataProvider itemAtIndexPath:v13];

            [stepView2 setPreviousItem:v15 withPreviousNavigationState:{-[TransitDirectionsStepsListDataSource _cellNavStateForItem:atIndexPath:](self, "_cellNavStateForItem:atIndexPath:", v15, v13)}];
          }
        }

        [v10 setNavigationState:{-[TransitDirectionsStepsListDataSource _cellNavStateForItem:atIndexPath:](self, "_cellNavStateForItem:atIndexPath:", v9, pathCopy)}];
        if (v10)
        {
          goto LABEL_26;
        }

        goto LABEL_19;
      }

      stepView = [v10 stepView];
      [stepView setDelegate:self];
    }

    goto LABEL_11;
  }

  if ([v9 isEqual:@"TransitDirectionsListSharingIdentifier"])
  {
    v10 = [(TransitDirectionsStepsListDataSource *)self _footerCellForIndexPath:pathCopy inTableView:viewCopy];
    goto LABEL_27;
  }

LABEL_19:
  v16 = sub_10006D178();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v26 = 136315650;
    v27 = "[TransitDirectionsStepsListDataSource tableView:cellForRowAtIndexPath:]";
    v28 = 2080;
    v29 = "TransitDirectionsStepsListDataSource.m";
    v30 = 1024;
    v31 = 1453;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v26, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = +[NSThread callStackSymbols];
      v26 = 138412290;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", &v26, 0xCu);
    }
  }

  v19 = [MKTableViewCell alloc];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v10 = [v19 initWithStyle:0 reuseIdentifier:v21];

LABEL_26:
  [(TransitDirectionsStepsListDataSource *)self _configureSeparatorForCell:v10 forRowAtIndexPath:pathCopy];
LABEL_27:

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(TransitDirectionsStepsListDataSource *)self shouldFlattenToSingleSection])
  {
    if (![(TransitDirectionsStepsListDataSource *)self _numberOfSections])
    {
      return 0;
    }

    v6 = 0;
    v7 = 0;
    do
    {
      v7 += [(TransitDirectionsStepsListDataSource *)self _numberOfRowsInSection:v6++];
    }

    while (v6 < [(TransitDirectionsStepsListDataSource *)self _numberOfSections]);
    return v7;
  }

  else
  {

    return [(TransitDirectionsStepsListDataSource *)self _numberOfRowsInSection:section];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if ([(TransitDirectionsStepsListDataSource *)self shouldFlattenToSingleSection])
  {
    return 1;
  }

  return [(TransitDirectionsStepsListDataSource *)self _numberOfSections];
}

- (void)_resetRowHeightCache
{
  estimatedHeightsByItem = [(TransitDirectionsStepsListDataSource *)self estimatedHeightsByItem];
  [estimatedHeightsByItem removeAllObjects];
}

- (NSMapTable)estimatedHeightsByItem
{
  estimatedHeightsByItem = self->_estimatedHeightsByItem;
  if (!estimatedHeightsByItem)
  {
    v4 = [NSMapTable mapTableWithKeyOptions:261 valueOptions:0];
    v5 = self->_estimatedHeightsByItem;
    self->_estimatedHeightsByItem = v4;

    estimatedHeightsByItem = self->_estimatedHeightsByItem;
  }

  return estimatedHeightsByItem;
}

- (unint64_t)_stepViewDisplayOptionsForSection:(unint64_t)section
{
  if (section == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v3 = 4;
  v4 = 2;
  if (!self->_useCollapsedDisplayStyle)
  {
    v4 = 4;
  }

  if (self->_navigationProvider)
  {
    v5 = !self->_useCollapsedDisplayStyle;
  }

  else
  {
    v3 = v4;
    v5 = 1;
  }

  if (!v5)
  {
    displayedItemIndex = [(TransitDirectionsStepsListDataSource *)self displayedItemIndex];
    v3 = 2;
    if (displayedItemIndex == section)
    {
      return 3;
    }
  }

  return v3;
}

- (void)_updateDisplayStyleInVisibleCells
{
  collectionView = [(TransitDirectionsStepsListDataSource *)self collectionView];

  if (!collectionView)
  {
    tableView = [(TransitDirectionsStepsListDataSource *)self tableView];

    if (tableView)
    {
      tableView2 = [(TransitDirectionsStepsListDataSource *)self tableView];
      visibleCells = [tableView2 visibleCells];

      tableView3 = [(TransitDirectionsStepsListDataSource *)self tableView];
      indexPathsForVisibleRows = [tableView3 indexPathsForVisibleRows];

      v16 = sub_100E74344();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
LABEL_33:

        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_100E78968;
        v38[3] = &unk_1016569B0;
        v39 = indexPathsForVisibleRows;
        selfCopy = self;
        v35 = indexPathsForVisibleRows;
        [visibleCells enumerateObjectsUsingBlock:v38];
        v36 = v39;
        goto LABEL_34;
      }

      selfCopy2 = self;
      if (!selfCopy2)
      {
        selfCopy2 = @"<nil>";
        goto LABEL_32;
      }

      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      if (objc_opt_respondsToSelector())
      {
        v20 = [(TransitDirectionsStepsListDataSource *)selfCopy2 performSelector:"accessibilityIdentifier"];
        v21 = v20;
        if (v20 && ![v20 isEqualToString:v19])
        {
          selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v19, selfCopy2, v21];

          goto LABEL_18;
        }
      }

      selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v19, selfCopy2];
LABEL_18:

LABEL_32:
      *buf = 138543362;
      v45 = selfCopy2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[%{public}@] Updating displayStyle in individual cells in table view", buf, 0xCu);

      goto LABEL_33;
    }

    listView = [(TransitDirectionsStepsListDataSource *)self listView];

    if (!listView)
    {
      return;
    }

    listView2 = [(TransitDirectionsStepsListDataSource *)self listView];
    visibleCells = [listView2 allStepViews];

    v25 = sub_100E74344();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
LABEL_40:

      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100E78A60;
      v37[3] = &unk_1016569D8;
      v37[4] = self;
      [visibleCells enumerateObjectsUsingBlock:v37];
      goto LABEL_35;
    }

    selfCopy3 = self;
    if (!selfCopy3)
    {
      selfCopy3 = @"<nil>";
      goto LABEL_39;
    }

    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    if (objc_opt_respondsToSelector())
    {
      v29 = [(TransitDirectionsStepsListDataSource *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v30 = v29;
      if (v29 && ![v29 isEqualToString:v28])
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v28, selfCopy3, v30];

        goto LABEL_27;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v28, selfCopy3];
LABEL_27:

LABEL_39:
    *buf = 138543362;
    v45 = selfCopy3;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "[%{public}@] Updating displayStyle in individual step views in list view", buf, 0xCu);

    goto LABEL_40;
  }

  v4 = sub_100E74344();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    selfCopy4 = self;
    if (!selfCopy4)
    {
      selfCopy4 = @"<nil>";
      goto LABEL_29;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(TransitDirectionsStepsListDataSource *)selfCopy4 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        selfCopy4 = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy4, v9];

        goto LABEL_9;
      }
    }

    selfCopy4 = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy4];
LABEL_9:

LABEL_29:
    *buf = 138543362;
    v45 = selfCopy4;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] Updating displayStyle in individual visible cells in collection view", buf, 0xCu);
  }

  collectionView2 = [(TransitDirectionsStepsListDataSource *)self collectionView];
  visibleCells = [collectionView2 visibleCells];

  collectionView3 = [(TransitDirectionsStepsListDataSource *)self collectionView];
  indexPathsForVisibleItems = [collectionView3 indexPathsForVisibleItems];

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100E78870;
  v41[3] = &unk_1016568E8;
  v42 = indexPathsForVisibleItems;
  selfCopy5 = self;
  v35 = indexPathsForVisibleItems;
  [visibleCells enumerateObjectsUsingBlock:v41];
  v36 = v42;
LABEL_34:

LABEL_35:
}

- (void)_setUseCollapsedDisplayStyle:(BOOL)style
{
  self->_useCollapsedDisplayStyle = style;
  [(TransitDirectionsStepsListDataSource *)self _updateDisplayStyleInVisibleCells];
  _scrollView = [(TransitDirectionsStepsListDataSource *)self _scrollView];
  [_scrollView layoutBelowIfNeeded];

  listView = [(TransitDirectionsStepsListDataSource *)self listView];
  [listView reloadSeparators];
}

- (void)setUseCollapsedDisplayStyle:(BOOL)style
{
  if (self->_useCollapsedDisplayStyle != style)
  {
    [(TransitDirectionsStepsListDataSource *)self _setUseCollapsedDisplayStyle:?];
  }
}

- (void)setMatchedLocation:(id)location
{
  locationCopy = location;
  matchedLocationThrottler = [(TransitDirectionsStepsListDataSource *)self matchedLocationThrottler];
  [matchedLocationThrottler setValue:locationCopy];
}

- (MNLocation)matchedLocation
{
  matchedLocationThrottler = [(TransitDirectionsStepsListDataSource *)self matchedLocationThrottler];
  value = [matchedLocationThrottler value];

  return value;
}

- (MapsThrottler)matchedLocationThrottler
{
  matchedLocationThrottler = self->_matchedLocationThrottler;
  if (!matchedLocationThrottler)
  {
    objc_initWeak(&location, self);
    v4 = [MapsThrottler alloc];
    v5 = &_dispatch_main_q;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100E78D84;
    v9[3] = &unk_101656988;
    objc_copyWeak(&v10, &location);
    v6 = [(MapsThrottler *)v4 initWithInitialValue:0 throttlingInterval:&_dispatch_main_q queue:v9 updateHandler:10.0];
    v7 = self->_matchedLocationThrottler;
    self->_matchedLocationThrottler = v6;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    matchedLocationThrottler = self->_matchedLocationThrottler;
  }

  return matchedLocationThrottler;
}

- (void)_localeDidChange
{
  [(TransitDirectionsStepsListDataSource *)self _refreshItemInstructionStrings];

  [(TransitDirectionsStepsListDataSource *)self _reloadListViewForRouteChangeIfNotAnimating];
}

- (id)displayedItemIndexForAnalytics
{
  displayedItemIndex = [(TransitDirectionsStepsListDataSource *)self displayedItemIndex];
  if (displayedItemIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [NSNumber numberWithUnsignedInteger:displayedItemIndex];
  }

  return v3;
}

- (unint64_t)indexOfItem:(id)item
{
  itemCopy = item;
  dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  v6 = [dataProvider indexPathForItem:itemCopy];

  section = [v6 section];
  return section;
}

- (unint64_t)displayedItemIndex
{
  displayedItemIndexPath = [(TransitDirectionsStepsListDataSource *)self displayedItemIndexPath];
  section = [displayedItemIndexPath section];

  return section;
}

- (GEOComposedRouteStep)displayedComposedRouteStep
{
  _displayedItem = [(TransitDirectionsStepsListDataSource *)self _displayedItem];
  matchingRouteStep = [_displayedItem matchingRouteStep];
  if (!matchingRouteStep && [_displayedItem type])
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      activeItemIndexPath = [(TransitDirectionsStepsListDataSource *)self activeItemIndexPath];
      v8 = [NSString stringWithFormat:@"No step found for updated matched index path %@", activeItemIndexPath];
      *buf = 136316162;
      v12 = "[TransitDirectionsStepsListDataSource displayedComposedRouteStep]";
      v13 = 2080;
      v14 = "TransitDirectionsStepsListDataSource.m";
      v15 = 1024;
      v16 = 1203;
      v17 = 2080;
      v18 = "step || item.type == TransitDirectionsListItemTypeOrigin";
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
    }

    if (sub_100E03634())
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v12 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  return matchingRouteStep;
}

- (id)_displayedItem
{
  displayedItemIndexPath = [(TransitDirectionsStepsListDataSource *)self displayedItemIndexPath];

  if (displayedItemIndexPath)
  {
    dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
    displayedItemIndexPath2 = [(TransitDirectionsStepsListDataSource *)self displayedItemIndexPath];
    v6 = [dataProvider itemAtIndexPath:displayedItemIndexPath2];

    parentItem = [v6 parentItem];

    if (parentItem)
    {
      parentItem2 = [v6 parentItem];

      v6 = parentItem2;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)activeItemIndex
{
  activeItemIndexPath = [(TransitDirectionsStepsListDataSource *)self activeItemIndexPath];
  section = [activeItemIndexPath section];

  return section;
}

- (GEOComposedRouteStep)activeComposedRouteStep
{
  _activeItem = [(TransitDirectionsStepsListDataSource *)self _activeItem];
  matchingRouteStep = [_activeItem matchingRouteStep];
  if (!matchingRouteStep && [_activeItem type])
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      activeItemIndexPath = [(TransitDirectionsStepsListDataSource *)self activeItemIndexPath];
      v8 = [NSString stringWithFormat:@"No step found for updated matched index path %@", activeItemIndexPath];
      *buf = 136316162;
      v12 = "[TransitDirectionsStepsListDataSource activeComposedRouteStep]";
      v13 = 2080;
      v14 = "TransitDirectionsStepsListDataSource.m";
      v15 = 1024;
      v16 = 1177;
      v17 = 2080;
      v18 = "step || item.type == TransitDirectionsListItemTypeOrigin";
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
    }

    if (sub_100E03634())
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v12 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  return matchingRouteStep;
}

- (id)_activeItem
{
  activeItemIndexPath = [(TransitDirectionsStepsListDataSource *)self activeItemIndexPath];

  if (activeItemIndexPath)
  {
    dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
    activeItemIndexPath2 = [(TransitDirectionsStepsListDataSource *)self activeItemIndexPath];
    v6 = [dataProvider itemAtIndexPath:activeItemIndexPath2];

    parentItem = [v6 parentItem];

    if (parentItem)
    {
      parentItem2 = [v6 parentItem];

      v6 = parentItem2;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_notifyDelegateOfUpdatedDisplayedStep
{
  delegate = [(TransitDirectionsStepsListDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    displayedItemIndexPath = [(TransitDirectionsStepsListDataSource *)self displayedItemIndexPath];

    if (!displayedItemIndexPath)
    {
      return;
    }

    displayedComposedRouteStep = [(TransitDirectionsStepsListDataSource *)self displayedComposedRouteStep];
    if (!displayedComposedRouteStep)
    {
      goto LABEL_18;
    }

    v5 = sub_100E74344();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_17:

      delegate2 = [(TransitDirectionsStepsListDataSource *)self delegate];
      [delegate2 transitDirectionsStepsListDataSource:self didUpdateDisplayedGuidanceStep:displayedComposedRouteStep];

LABEL_18:
      return;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_16;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_11;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_11:

LABEL_16:
    displayedComposedRouteStepIndex = selfCopy->_displayedComposedRouteStepIndex;
    *buf = 138543874;
    v16 = selfCopy;
    v17 = 2048;
    v18 = displayedComposedRouteStepIndex;
    v19 = 2112;
    v20 = displayedComposedRouteStep;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Notifying delegate of updated DISPLAYED (parent) route step for index %lu: %@", buf, 0x20u);

    goto LABEL_17;
  }
}

- (void)_notifyDelegateOfUpdatedActiveStep
{
  delegate = [(TransitDirectionsStepsListDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    activeItemIndexPath = [(TransitDirectionsStepsListDataSource *)self activeItemIndexPath];

    if (!activeItemIndexPath)
    {
      return;
    }

    activeComposedRouteStep = [(TransitDirectionsStepsListDataSource *)self activeComposedRouteStep];
    if (!activeComposedRouteStep)
    {
      goto LABEL_18;
    }

    v5 = sub_100E74344();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_17:

      delegate2 = [(TransitDirectionsStepsListDataSource *)self delegate];
      [delegate2 transitDirectionsStepsListDataSource:self didUpdateActiveGuidanceStep:activeComposedRouteStep];

LABEL_18:
      return;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_16;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_11;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_11:

LABEL_16:
    activeComposedRouteStepIndex = selfCopy->_activeComposedRouteStepIndex;
    *buf = 138543874;
    v16 = selfCopy;
    v17 = 2048;
    v18 = activeComposedRouteStepIndex;
    v19 = 2112;
    v20 = activeComposedRouteStep;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Notifying delegate of updated ACTIVE (parent) route step for index %lu: %@", buf, 0x20u);

    goto LABEL_17;
  }
}

- (CGRect)frameOfDisplayedComposedRouteStepCell
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100E79B10;
  v24[3] = &unk_101656960;
  v24[4] = self;
  v7 = objc_retainBlock(v24);
  displayedItemIndexPath = [(TransitDirectionsStepsListDataSource *)self displayedItemIndexPath];
  section = [displayedItemIndexPath section];
  dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  v11 = [dataProvider numberOfItemsInSection:section];

  if (v11 < 1)
  {
    v19 = height;
  }

  else
  {
    for (i = 0; i != v11; ++i)
    {
      v13 = [NSIndexPath indexPathForRow:i inSection:section];
      v14 = [(TransitDirectionsStepsListDataSource *)self _flatIndexFromIndexPath:v13];
      (v7[2])(v7, v14);
      v19 = v18;
      if (i)
      {
        v19 = CGRectGetHeight(*&v15) + height;
      }

      else
      {
        width = v17;
        y = v16;
        x = v15;
      }

      height = v19;
    }
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)_itemIndexPathForStepIndex:(unint64_t)index
{
  if (index != 0x7FFFFFFFFFFFFFFFLL && [(GEOComposedRoute *)self->_route stepsCount]> index)
  {
    dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
    numberOfSections = [dataProvider numberOfSections];

    if (numberOfSections >= 1)
    {
      v7 = 0;
      v8 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
      v25 = numberOfSections;
      do
      {
        dataProvider2 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
        v10 = [dataProvider2 numberOfItemsInSection:v7 includingHiddenSubitems:1];

        if (v10 >= 1)
        {
          v11 = v10;
          v12 = 0;
          v26 = v10;
          v27 = v7;
          do
          {
            v13 = [v8[427] indexPathForRow:v12 inSection:v7];
            v14 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v13];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
              if ([v15 matchingRouteStepIndex] == index)
              {
LABEL_23:

                goto LABEL_31;
              }

              v30 = 0u;
              v31 = 0u;
              v28 = 0u;
              v29 = 0u;
              composedRouteSteps = [v15 composedRouteSteps];
              v17 = [composedRouteSteps countByEnumeratingWithState:&v28 objects:v38 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v29;
                while (2)
                {
                  for (i = 0; i != v18; i = i + 1)
                  {
                    if (*v29 != v19)
                    {
                      objc_enumerationMutation(composedRouteSteps);
                    }

                    if ([*(*(&v28 + 1) + 8 * i) stepIndex] == index)
                    {

                      goto LABEL_23;
                    }
                  }

                  v18 = [composedRouteSteps countByEnumeratingWithState:&v28 objects:v38 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }

              numberOfSections = v25;
              v11 = v26;
              v7 = v27;
              v8 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
            }

            ++v12;
          }

          while (v12 != v11);
        }

        ++v7;
      }

      while (v7 != numberOfSections);
    }

    if (index)
    {
      v13 = [(TransitDirectionsStepsListDataSource *)self _itemIndexPathForStepIndex:index - 1];
      goto LABEL_31;
    }

    v21 = sub_10006D178();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v33 = "[TransitDirectionsStepsListDataSource _itemIndexPathForStepIndex:]";
      v34 = 2080;
      v35 = "TransitDirectionsStepsListDataSource.m";
      v36 = 1024;
      v37 = 1094;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v22 = sub_10006D178();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v33 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v13 = 0;
LABEL_31:

  return v13;
}

- (void)_refreshDisplayedItemIndexPath
{
  v3 = self->_displayedItemIndexPath;
  displayedComposedRouteStepIndex = self->_displayedComposedRouteStepIndex;
  if (displayedComposedRouteStepIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    displayedComposedRouteStepIndex = self->_activeComposedRouteStepIndex;
  }

  if (!self->_navigationProvider)
  {
    v6 = sub_100E74344();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_28;
    }

    selfCopy = self;
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    if (objc_opt_respondsToSelector())
    {
      v23 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
      v24 = v23;
      if (v23 && ![v23 isEqualToString:v22])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v22, selfCopy, v24];

        goto LABEL_27;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v22, selfCopy];
LABEL_27:

    *buf = 138543362;
    v35 = selfCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}@] Not navigating, clearing displayed step index path", buf, 0xCu);

    goto LABEL_28;
  }

  if (displayedComposedRouteStepIndex == 0x7FFFFFFFFFFFFFFFLL || displayedComposedRouteStepIndex >= [(GEOComposedRoute *)self->_route stepsCount])
  {
    v6 = sub_100E74344();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_28:
      v5 = 0;
      goto LABEL_29;
    }

    selfCopy2 = self;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(TransitDirectionsStepsListDataSource *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v15, selfCopy2, v17];

        goto LABEL_20;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v15, selfCopy2];
LABEL_20:

    stepsCount = [(GEOComposedRoute *)selfCopy2->_route stepsCount];
    *buf = 138543874;
    v35 = selfCopy2;
    v36 = 2048;
    v37 = displayedComposedRouteStepIndex;
    v38 = 2048;
    *v39 = stepsCount;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Displayed step index %lu is out of bounds %lu", buf, 0x20u);

    goto LABEL_28;
  }

  v5 = [(TransitDirectionsStepsListDataSource *)self _itemIndexPathForStepIndex:displayedComposedRouteStepIndex];
  if (!v5)
  {
    v30 = sub_10006D178();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      displayedComposedRouteStepIndex = [NSString stringWithFormat:@"No indexPath found for displayed step with index %lu", displayedComposedRouteStepIndex];
      *buf = 136316162;
      v35 = "[TransitDirectionsStepsListDataSource _refreshDisplayedItemIndexPath]";
      v36 = 2080;
      v37 = "TransitDirectionsStepsListDataSource.m";
      v38 = 1024;
      *v39 = 1043;
      *&v39[4] = 2080;
      *&v39[6] = "indexPath != nil";
      v40 = 2112;
      v41 = displayedComposedRouteStepIndex;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
    }

    if (sub_100E03634())
    {
      v32 = sub_10006D178();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v35 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v6 = sub_100E74344();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    selfCopy3 = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(TransitDirectionsStepsListDataSource *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy3, v11];

        goto LABEL_13;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy3];
LABEL_13:

    *buf = 138543874;
    v35 = selfCopy3;
    v36 = 2048;
    v37 = displayedComposedRouteStepIndex;
    v38 = 2112;
    *v39 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] displayed stepIndex %lu corresponds to indexPath: %@", buf, 0x20u);
  }

LABEL_29:

  displayedItemIndexPath = self->_displayedItemIndexPath;
  self->_displayedItemIndexPath = v5;

  v27 = self->_displayedItemIndexPath;
  v28 = v3;
  if (v28 | v27)
  {
    v29 = [v27 isEqual:v28];

    if ((v29 & 1) == 0)
    {
      [(TransitDirectionsStepsListDataSource *)self _updateActiveItemInListViewIfNeeded];
      [(TransitDirectionsStepsListDataSource *)self _updateDisplayStyleInVisibleCells];
      [(TransitDirectionsStepsListDataSource *)self _notifyDelegateOfUpdatedDisplayedStep];
    }
  }
}

- (id)displayedTransitDirectionsListItemIndexPath
{
  displayedItemIndexPath = self->_displayedItemIndexPath;
  if (!displayedItemIndexPath)
  {
    [(TransitDirectionsStepsListDataSource *)self _refreshDisplayedItemIndexPath];
    displayedItemIndexPath = self->_displayedItemIndexPath;
  }

  return displayedItemIndexPath;
}

- (void)setDisplayedComposedRouteStepIndex:(unint64_t)index
{
  if (self->_displayedComposedRouteStepIndex != index)
  {
    if (![(TransitDirectionsStepsListDataSource *)self enableNavigationUpdates]|| [(DirectionsStepsListNavigationProvider *)self->_navigationProvider displayedStepIndex]== index)
    {
      v5 = sub_100E74344();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
LABEL_11:

        self->_displayedComposedRouteStepIndex = index;
        [(TransitDirectionsStepsListDataSource *)self _refreshDisplayedItemIndexPath];
        return;
      }

      selfCopy = self;
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      if (objc_opt_respondsToSelector())
      {
        v9 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
        v10 = v9;
        if (v9 && ![v9 isEqualToString:v8])
        {
          selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

          goto LABEL_10;
        }
      }

      selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_10:

      displayedComposedRouteStepIndex = self->_displayedComposedRouteStepIndex;
      *buf = 138543874;
      v21 = selfCopy;
      v22 = 2048;
      indexCopy2 = displayedComposedRouteStepIndex;
      v24 = 2048;
      indexCopy = index;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Displayed step index changed from %lu to %lu", buf, 0x20u);

      goto LABEL_11;
    }

    v13 = sub_100E74344();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    selfCopy2 = self;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(TransitDirectionsStepsListDataSource *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v16, selfCopy2, v18];

        goto LABEL_18;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v16, selfCopy2];
LABEL_18:

    *buf = 138543618;
    v21 = selfCopy2;
    v22 = 2048;
    indexCopy2 = index;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}@] Updating navigation provider with updated displayed step index %lu", buf, 0x16u);

LABEL_19:
    [(DirectionsStepsListNavigationProvider *)self->_navigationProvider setDisplayedStepIndex:index];
  }
}

- (void)_refreshActiveItemIndexPath
{
  v3 = self->_activeItemIndexPath;
  if (!self->_navigationProvider)
  {
    v6 = sub_100E74344();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_26;
    }

    selfCopy = self;
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    if (objc_opt_respondsToSelector())
    {
      v23 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
      v24 = v23;
      if (v23 && ![v23 isEqualToString:v22])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v22, selfCopy, v24];

        goto LABEL_25;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v22, selfCopy];
LABEL_25:

    *buf = 138543362;
    v35 = selfCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}@] Not navigating, clearing active step index path", buf, 0xCu);

    goto LABEL_26;
  }

  activeComposedRouteStepIndex = self->_activeComposedRouteStepIndex;
  if (activeComposedRouteStepIndex == 0x7FFFFFFFFFFFFFFFLL || activeComposedRouteStepIndex >= [(GEOComposedRoute *)self->_route stepsCount])
  {
    v6 = sub_100E74344();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_26:
      v5 = 0;
      goto LABEL_27;
    }

    selfCopy2 = self;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(TransitDirectionsStepsListDataSource *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v15, selfCopy2, v17];

        goto LABEL_18;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v15, selfCopy2];
LABEL_18:

    stepsCount = [(GEOComposedRoute *)selfCopy2->_route stepsCount];
    *buf = 138543874;
    v35 = selfCopy2;
    v36 = 2048;
    v37 = activeComposedRouteStepIndex;
    v38 = 2048;
    *v39 = stepsCount;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Active step index %lu is out of bounds %lu", buf, 0x20u);

    goto LABEL_26;
  }

  v5 = [(TransitDirectionsStepsListDataSource *)self _itemIndexPathForStepIndex:activeComposedRouteStepIndex];
  if (!v5)
  {
    v30 = sub_10006D178();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      activeComposedRouteStepIndex = [NSString stringWithFormat:@"No indexPath found for active step with index %lu", activeComposedRouteStepIndex];
      *buf = 136316162;
      v35 = "[TransitDirectionsStepsListDataSource _refreshActiveItemIndexPath]";
      v36 = 2080;
      v37 = "TransitDirectionsStepsListDataSource.m";
      v38 = 1024;
      *v39 = 984;
      *&v39[4] = 2080;
      *&v39[6] = "indexPath != nil";
      v40 = 2112;
      v41 = activeComposedRouteStepIndex;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
    }

    if (sub_100E03634())
    {
      v32 = sub_10006D178();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v35 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v6 = sub_100E74344();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    selfCopy3 = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(TransitDirectionsStepsListDataSource *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy3, v11];

        goto LABEL_11;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy3];
LABEL_11:

    *buf = 138543874;
    v35 = selfCopy3;
    v36 = 2048;
    v37 = activeComposedRouteStepIndex;
    v38 = 2112;
    *v39 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Active stepIndex %lu corresponds to indexPath: %@", buf, 0x20u);
  }

LABEL_27:

  activeItemIndexPath = self->_activeItemIndexPath;
  self->_activeItemIndexPath = v5;

  v27 = self->_activeItemIndexPath;
  v28 = v3;
  if (v28 | v27)
  {
    v29 = [v27 isEqual:v28];

    if ((v29 & 1) == 0)
    {
      [(TransitDirectionsStepsListDataSource *)self _updateActiveItemInListViewIfNeeded];
      [(TransitDirectionsStepsListDataSource *)self _notifyDelegateOfUpdatedActiveStep];
    }
  }
}

- (NSIndexPath)activeItemIndexPath
{
  activeItemIndexPath = self->_activeItemIndexPath;
  if (!activeItemIndexPath)
  {
    [(TransitDirectionsStepsListDataSource *)self _refreshActiveItemIndexPath];
    activeItemIndexPath = self->_activeItemIndexPath;
  }

  return activeItemIndexPath;
}

- (void)setActiveComposedRouteStepIndex:(unint64_t)index
{
  activeComposedRouteStepIndex = self->_activeComposedRouteStepIndex;
  if (activeComposedRouteStepIndex != index)
  {
    v6 = sub_100E74344();
    v7 = v6;
    if (index == 0x7FFFFFFFFFFFFFFFLL && activeComposedRouteStepIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
LABEL_11:

        return;
      }

      selfCopy = self;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      if (objc_opt_respondsToSelector())
      {
        v11 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
        v12 = v11;
        if (v11 && ![v11 isEqualToString:v10])
        {
          selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v10, selfCopy, v12];

          goto LABEL_10;
        }
      }

      selfCopy = [NSString stringWithFormat:@"%@<%p>", v10, selfCopy];
LABEL_10:

      *buf = 138543362;
      v22 = selfCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "[%{public}@] Suppressing attempt to set matched step index to NSNotFound", buf, 0xCu);

      goto LABEL_11;
    }

    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    selfCopy2 = self;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(TransitDirectionsStepsListDataSource *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v16, selfCopy2, v18];

        goto LABEL_18;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v16, selfCopy2];
LABEL_18:

    v20 = self->_activeComposedRouteStepIndex;
    *buf = 138543874;
    v22 = selfCopy2;
    v23 = 2048;
    v24 = v20;
    v25 = 2048;
    indexCopy = index;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Active step index changed from %lu to %lu", buf, 0x20u);

LABEL_19:
    self->_activeComposedRouteStepIndex = index;
    [(TransitDirectionsStepsListDataSource *)self _refreshActiveItemIndexPath];
    [(TransitDirectionsStepsListDataSource *)self _refreshDisplayedItemIndexPath];
  }
}

- (void)navigationProvider:(id)provider didReceiveRealtimeUpdates:(id)updates
{
  updatesCopy = updates;
  [PPTNotificationCenter postNotificationIfNeededWithName:@"MapsTestingTransitRouteUpdateWillUpdateRoute" object:0 userInfo:0];
  route = [(TransitDirectionsStepsListDataSource *)self route];
  [route applyUpdatesToTransitRoute:updatesCopy];

  [PPTNotificationCenter postNotificationIfNeededWithName:@"MapsTestingTransitRouteUpdateDidUpdateRoute" object:0 userInfo:0];
}

- (void)navigationProvider:(id)provider didUpdateDisplayedStepIndex:(unint64_t)index
{
  v6 = self->_displayedItemIndexPath;
  v7 = sub_100E74344();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v10, selfCopy, v12];

        goto LABEL_7;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v10, selfCopy];
LABEL_7:

    activeComposedRouteStepIndex = selfCopy->_activeComposedRouteStepIndex;
    displayedComposedRouteStepIndex = selfCopy->_displayedComposedRouteStepIndex;
    *buf = 138544130;
    v17 = selfCopy;
    v18 = 2048;
    indexCopy = index;
    v20 = 2048;
    v21 = displayedComposedRouteStepIndex;
    v22 = 2048;
    v23 = activeComposedRouteStepIndex;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Displayed step index did change to %lu (previous: %lu, activeStepIndex: %lu)", buf, 0x2Au);
  }

  [(TransitDirectionsStepsListDataSource *)self setDisplayedComposedRouteStepIndex:index];
  [(TransitDirectionsStepsListDataSource *)self _scrollToDisplayedItemIfNeeded:v6 animated:1];
}

- (void)navigationProvider:(id)provider didUpdateActiveStepIndex:(unint64_t)index
{
  providerCopy = provider;
  v7 = providerCopy;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = sub_100E74344();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
LABEL_30:

      goto LABEL_31;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_29;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v11, selfCopy, v13];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v11, selfCopy];
LABEL_9:

LABEL_29:
    *buf = 138543362;
    v32 = selfCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] Auto-advance step index is NSNotFound, meaning no matched step. Ignore it and maintain what we have.", buf, 0xCu);

    goto LABEL_30;
  }

  if ([providerCopy displayedStepIndex] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v7, "displayedStepIndex") <= index)
  {
    v24 = sub_100E74344();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
LABEL_36:

      self->_activeComposedRouteStepIndex = index;
      [v7 setDisplayedStepIndex:0x7FFFFFFFFFFFFFFFLL];
      goto LABEL_31;
    }

    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_35;
    }

    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    if (objc_opt_respondsToSelector())
    {
      v28 = [(TransitDirectionsStepsListDataSource *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v29 = v28;
      if (v28 && ![v28 isEqualToString:v27])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v27, selfCopy2, v29];

        goto LABEL_27;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v27, selfCopy2];
LABEL_27:

LABEL_35:
    *buf = 138543874;
    v32 = selfCopy2;
    v33 = 2048;
    indexCopy2 = index;
    v35 = 2048;
    displayedStepIndex = [v7 displayedStepIndex];
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[%{public}@] Auto-advance step index %lu has caught up to manually-selected step index %lu", buf, 0x20u);

    goto LABEL_36;
  }

  activeComposedRouteStepIndex = self->_activeComposedRouteStepIndex;
  displayedItemIndexPath = [(TransitDirectionsStepsListDataSource *)self displayedItemIndexPath];
  v17 = sub_100E74344();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    selfCopy3 = self;
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    if (objc_opt_respondsToSelector())
    {
      v21 = [(TransitDirectionsStepsListDataSource *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v22 = v21;
      if (v21 && ![v21 isEqualToString:v20])
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v20, selfCopy3, v22];

        goto LABEL_18;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v20, selfCopy3];
LABEL_18:

    *buf = 138544130;
    v32 = selfCopy3;
    v33 = 2048;
    indexCopy2 = index;
    v35 = 2048;
    displayedStepIndex = activeComposedRouteStepIndex;
    v37 = 2048;
    displayedStepIndex2 = [v7 displayedStepIndex];
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}@] Auto-advanced to step index %lu (previous: %lu, displayedStepIndex: %lu)", buf, 0x2Au);
  }

  [(TransitDirectionsStepsListDataSource *)self setActiveComposedRouteStepIndex:index];
  [(TransitDirectionsStepsListDataSource *)self _scrollToDisplayedItemIfNeeded:displayedItemIndexPath animated:1];

LABEL_31:
}

- (void)navigationProvider:(id)provider didUpdateRoute:(id)route
{
  providerCopy = provider;
  [(TransitDirectionsStepsListDataSource *)self setRoute:route];
  -[TransitDirectionsStepsListDataSource navigationProvider:didUpdateActiveStepIndex:](self, "navigationProvider:didUpdateActiveStepIndex:", providerCopy, [providerCopy activeStepIndex]);
  -[TransitDirectionsStepsListDataSource navigationProvider:didUpdateDisplayedStepIndex:](self, "navigationProvider:didUpdateDisplayedStepIndex:", providerCopy, [providerCopy displayedStepIndex]);
}

- (void)navigationProvider:(id)provider didChangeToNavigating:(BOOL)navigating withRoute:(id)route
{
  if (navigating)
  {
    [(TransitDirectionsStepsListDataSource *)self navigationProvider:provider didUpdateRoute:route];
  }
}

- (void)setEnableNavigationUpdates:(BOOL)updates
{
  if (self->_enableNavigationUpdates != updates)
  {
    self->_enableNavigationUpdates = updates;
    if (updates)
    {
      v4 = [[DirectionsStepsListNavigationProvider alloc] initWithDelegate:self];
      navigationProvider = self->_navigationProvider;
      self->_navigationProvider = v4;

      v6 = self->_navigationProvider;
      isNavigating = [(DirectionsStepsListNavigationProvider *)v6 isNavigating];
      route = [(DirectionsStepsListNavigationProvider *)self->_navigationProvider route];
      [(TransitDirectionsStepsListDataSource *)self navigationProvider:v6 didChangeToNavigating:isNavigating withRoute:route];
    }

    else
    {
      v9 = self->_navigationProvider;
      self->_navigationProvider = 0;

      if (!self->_route)
      {
        v12 = sub_10006D178();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v15 = 136315906;
          v16 = "[TransitDirectionsStepsListDataSource setEnableNavigationUpdates:]";
          v17 = 2080;
          v18 = "TransitDirectionsStepsListDataSource.m";
          v19 = 1024;
          v20 = 868;
          v21 = 2080;
          v22 = "_route != nil";
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v15, 0x26u);
        }

        if (sub_100E03634())
        {
          v13 = sub_10006D178();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = +[NSThread callStackSymbols];
            v15 = 138412290;
            v16 = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", &v15, 0xCu);
          }
        }
      }

      transitDirectionsStepsListDataProvider = [(GEOComposedRoute *)self->_route transitDirectionsStepsListDataProvider];
      dataProvider = self->_dataProvider;
      self->_dataProvider = transitDirectionsStepsListDataProvider;

      [(TransitDirectionsStepsListDataSource *)self setActiveComposedRouteStepIndex:0x7FFFFFFFFFFFFFFFLL];
      [(TransitDirectionsStepsListDataSource *)self setDisplayedComposedRouteStepIndex:0x7FFFFFFFFFFFFFFFLL];
    }

    [(TransitDirectionsStepsListDataSource *)self _reloadListViewForRouteChange];
  }
}

- (void)composedRoute:(id)route appliedTransitRouteUpdates:(id)updates
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E7BB34;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)composedRoute:(id)route changedSelectedRideInClusteredSegment:(id)segment fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  routeCopy = route;
  segmentCopy = segment;
  objc_initWeak(&location, self);
  v10 = &_dispatch_main_q;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v18 = sub_100E7BD24;
  v19 = &unk_101661340;
  objc_copyWeak(&v21, &location);
  v11 = segmentCopy;
  v20 = v11;
  v12 = &_dispatch_main_q;
  v13 = v17;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v15 = dispatch_queue_get_label(0);
  if (label == v15 || label && v15 && !strcmp(label, v15))
  {
    v16 = objc_autoreleasePoolPush();
    v18(v13);
    objc_autoreleasePoolPop(v16);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v13);
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)_expandItemsAtIndices:(id)indices
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100E7BDF8;
  v3[3] = &unk_101656938;
  v3[4] = self;
  [indices enumerateIndexesUsingBlock:v3];
}

- (id)_expandedItemsIndices
{
  v3 = +[NSMutableIndexSet indexSet];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  items = [dataProvider items];

  v6 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(items);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem] && objc_msgSend(v11, "expanded"))
        {
          [v3 addIndex:v8];
        }

        ++v8;
      }

      v7 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)_rebuildItems
{
  v3 = sub_100E74344();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v13 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] rebuildItems", buf, 0xCu);
  }

  _expandedItemsIndices = [(TransitDirectionsStepsListDataSource *)self _expandedItemsIndices];
  dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  [dataProvider forceRebuild];

  [(TransitDirectionsStepsListDataSource *)self _expandItemsAtIndices:_expandedItemsIndices];
}

- (void)updateForClusteredLegSelectedRideIndexChange
{
  v3 = sub_100E74344();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v11 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] updateForClusteredLegSelectedRideIndexChanage", buf, 0xCu);
  }

  [(TransitDirectionsStepsListDataSource *)self _rebuildItems];
}

- (void)_refreshItemInstructionStrings
{
  v3 = sub_100E74344();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v11 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] refreshItemInstructionStrings", buf, 0xCu);
  }

  [(TransitDirectionsStepsListDataSource *)self _rebuildItems];
}

- (void)expandAllItems
{
  v3 = sub_100E74344();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v26 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] Expand all items", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  items = [dataProvider items];

  v12 = [items countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(items);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        if ([v16 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem])
        {
          [v16 setExpanded:1];
        }
      }

      v13 = [items countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  tableView = [(TransitDirectionsStepsListDataSource *)self tableView];
  [tableView reloadData];

  collectionView = [(TransitDirectionsStepsListDataSource *)self collectionView];
  [collectionView reloadData];

  listView = [(TransitDirectionsStepsListDataSource *)self listView];
  [listView reloadData];
}

- (void)collapseAllItems
{
  dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  hasBuiltItems = [dataProvider hasBuiltItems];

  if (!hasBuiltItems)
  {
    return;
  }

  v5 = sub_100E74344();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_11;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_9:

LABEL_11:
    *buf = 138543362;
    v28 = selfCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Collapse all items", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  dataProvider2 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  items = [dataProvider2 items];

  v14 = [items countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(items);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        if ([v18 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem])
        {
          [v18 setExpanded:0];
        }
      }

      v15 = [items countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  tableView = [(TransitDirectionsStepsListDataSource *)self tableView];
  [tableView reloadData];

  collectionView = [(TransitDirectionsStepsListDataSource *)self collectionView];
  [collectionView reloadData];

  listView = [(TransitDirectionsStepsListDataSource *)self listView];
  [listView reloadData];
}

- (BOOL)hasIncidentItems
{
  dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  hasIncidentItems = [dataProvider hasIncidentItems];

  return hasIncidentItems;
}

- (NSArray)transitSegmentSectionRanges
{
  dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  segmentRanges = [dataProvider segmentRanges];

  return segmentRanges;
}

- (id)_indexPathFromFlatIndexPath:(id)path
{
  pathCopy = path;
  if ([(TransitDirectionsStepsListDataSource *)self shouldFlattenToSingleSection])
  {
    v5 = [pathCopy row];
    _numberOfSections = [(TransitDirectionsStepsListDataSource *)self _numberOfSections];
    if (!_numberOfSections)
    {
LABEL_6:
      v10 = 0;
      goto LABEL_10;
    }

    v7 = _numberOfSections;
    v8 = 0;
    while (1)
    {
      v9 = [(TransitDirectionsStepsListDataSource *)self _numberOfRowsInSection:v8];
      if (v5 < v9)
      {
        break;
      }

      ++v8;
      v5 -= v9;
      if (v7 == v8)
      {
        goto LABEL_6;
      }
    }

    v11 = [NSIndexPath indexPathForRow:v5 inSection:v8];
  }

  else
  {
    v11 = pathCopy;
  }

  v10 = v11;
LABEL_10:

  return v10;
}

- (id)_flatIndexFromIndexPath:(id)path
{
  pathCopy = path;
  if ([(TransitDirectionsStepsListDataSource *)self shouldFlattenToSingleSection])
  {
    v5 = [pathCopy row];
    section = [pathCopy section];
    if (section)
    {
      v7 = section;
      for (i = 0; i != v7; ++i)
      {
        v5 = &v5[[(TransitDirectionsStepsListDataSource *)self _numberOfRowsInSection:i]];
      }
    }

    v9 = [NSIndexPath indexPathForRow:v5 inSection:0];
  }

  else
  {
    v9 = pathCopy;
  }

  v10 = v9;

  return v10;
}

- (unint64_t)_numberOfRowsInSection:(unint64_t)section
{
  _numberOfSections = [(TransitDirectionsStepsListDataSource *)self _numberOfSections];
  if ([(TransitDirectionsStepsListDataSource *)self _supportsFooterItem]&& ([(TransitDirectionsStepsListDataSource *)self options]& 8) != 0 && _numberOfSections - 1 == section)
  {
    return 1;
  }

  dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  v8 = [dataProvider numberOfItemsInSection:section];

  return v8;
}

- (unint64_t)_numberOfSections
{
  dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  numberOfSections = [dataProvider numberOfSections];

  if ([(TransitDirectionsStepsListDataSource *)self _supportsFooterItem])
  {
    numberOfSections += ([(TransitDirectionsStepsListDataSource *)self options]>> 3) & 1;
  }

  return numberOfSections;
}

- (id)listItemForIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    _numberOfSections = [(TransitDirectionsStepsListDataSource *)self _numberOfSections];
    if (-[TransitDirectionsStepsListDataSource _supportsFooterItem](self, "_supportsFooterItem") && (-[TransitDirectionsStepsListDataSource options](self, "options") & 8) != 0 && (_numberOfSections - 1) == [pathCopy section])
    {
      v6 = @"TransitDirectionsListSharingIdentifier";
    }

    else
    {
      dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
      v6 = [dataProvider itemAtIndexPath:pathCopy];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_supportsFooterItem
{
  tableView = [(TransitDirectionsStepsListDataSource *)self tableView];
  if (tableView)
  {
    v4 = 1;
  }

  else
  {
    collectionView = [(TransitDirectionsStepsListDataSource *)self collectionView];
    v4 = collectionView != 0;
  }

  return v4;
}

- (void)_scrollToDisplayedItemIfNeeded:(id)needed animated:(BOOL)animated
{
  animatedCopy = animated;
  neededCopy = needed;
  if ([(TransitDirectionsStepsListDataSource *)self automaticallyScrollToDisplayedStep])
  {
    _scrollView = [(TransitDirectionsStepsListDataSource *)self _scrollView];
    v9 = _scrollView;
    if (!_scrollView)
    {
      goto LABEL_55;
    }

    [_scrollView bounds];
    if (fabs(v10) <= 2.22044605e-16)
    {
      goto LABEL_55;
    }

    [v9 contentSize];
    if (fabs(v11) <= 2.22044605e-16)
    {
      goto LABEL_55;
    }

    tableView = [(TransitDirectionsStepsListDataSource *)self tableView];
    if (tableView)
    {
      tableView2 = [(TransitDirectionsStepsListDataSource *)self tableView];
      if ([tableView2 numberOfSections] >= 1)
      {

LABEL_55:
        goto LABEL_56;
      }
    }

    collectionView = [(TransitDirectionsStepsListDataSource *)self collectionView];
    if (collectionView)
    {
      v14 = collectionView;
      collectionView2 = [(TransitDirectionsStepsListDataSource *)self collectionView];
      numberOfSections = [collectionView2 numberOfSections];

      if (tableView)
      {
      }

      if (numberOfSections > 0)
      {
        goto LABEL_55;
      }
    }

    else if (tableView)
    {
    }

    if (neededCopy || ([(TransitDirectionsStepsListDataSource *)self displayedItemIndexPath], (v20 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      section = [neededCopy section];
      displayedItemIndexPath = [(TransitDirectionsStepsListDataSource *)self displayedItemIndexPath];
      section2 = [displayedItemIndexPath section];

      if (section == section2)
      {
        goto LABEL_55;
      }
    }

    else
    {
    }

    v21 = sub_100E74344();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
LABEL_30:

      [(TransitDirectionsStepsListDataSource *)self frameOfDisplayedComposedRouteStepCell];
      x = v56.origin.x;
      y = v56.origin.y;
      width = v56.size.width;
      height = v56.size.height;
      if (CGRectIsNull(v56))
      {
        v33 = sub_100E74344();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          selfCopy = self;
          if (!selfCopy)
          {
            selfCopy = @"<nil>";
            goto LABEL_50;
          }

          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          if (objc_opt_respondsToSelector())
          {
            v37 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
            v38 = v37;
            if (v37 && ![v37 isEqualToString:v36])
            {
              selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v36, selfCopy, v38];

              goto LABEL_38;
            }
          }

          selfCopy = [NSString stringWithFormat:@"%@<%p>", v36, selfCopy];
LABEL_38:

LABEL_50:
          displayedItemIndexPath2 = [(TransitDirectionsStepsListDataSource *)selfCopy displayedItemIndexPath];
          *buf = 138543618;
          v51 = selfCopy;
          v52 = 2114;
          v53 = displayedItemIndexPath2;
          v49 = "[%{public}@] Couldn't scroll to displayed step: %{public}@ (invalid frame)";
LABEL_53:
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, v49, buf, 0x16u);
        }

LABEL_54:

        goto LABEL_55;
      }

      v57.origin.x = x;
      v57.origin.y = y;
      v57.size.width = width;
      v57.size.height = height;
      MinY = CGRectGetMinY(v57);
      [v9 contentInset];
      v42 = MinY - v41;
      if (!__isnand())
      {
        [v9 setContentOffset:animatedCopy animated:{0.0, v42}];
        goto LABEL_55;
      }

      v33 = sub_100E74344();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }

      selfCopy2 = self;
      if (!selfCopy2)
      {
        selfCopy = @"<nil>";
        goto LABEL_52;
      }

      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      if (objc_opt_respondsToSelector())
      {
        v46 = [(TransitDirectionsStepsListDataSource *)selfCopy2 performSelector:"accessibilityIdentifier"];
        v47 = v46;
        if (v46 && ![v46 isEqualToString:v45])
        {
          selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v45, selfCopy2, v47];

          goto LABEL_47;
        }
      }

      selfCopy = [NSString stringWithFormat:@"%@<%p>", v45, selfCopy2];
LABEL_47:

LABEL_52:
      displayedItemIndexPath2 = [(TransitDirectionsStepsListDataSource *)selfCopy2 displayedItemIndexPath];
      *buf = 138543618;
      v51 = selfCopy;
      v52 = 2114;
      v53 = displayedItemIndexPath2;
      v49 = "[%{public}@] Couldn't scroll to displayed step: %{public}@ (invalid offset)";
      goto LABEL_53;
    }

    selfCopy3 = self;
    if (!selfCopy3)
    {
      selfCopy3 = @"<nil>";
      goto LABEL_29;
    }

    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    if (objc_opt_respondsToSelector())
    {
      v25 = [(TransitDirectionsStepsListDataSource *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v26 = v25;
      if (v25 && ![v25 isEqualToString:v24])
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v24, selfCopy3, v26];

        goto LABEL_27;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v24, selfCopy3];
LABEL_27:

LABEL_29:
    displayedItemIndexPath3 = [(TransitDirectionsStepsListDataSource *)selfCopy3 displayedItemIndexPath];
    *buf = 138543874;
    v51 = selfCopy3;
    v52 = 2112;
    v53 = neededCopy;
    v54 = 2112;
    v55 = displayedItemIndexPath3;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}@] Scrolling to updated displayed index path (previous: %@, updated: %@)", buf, 0x20u);

    goto LABEL_30;
  }

LABEL_56:
}

- (void)_scrollToFirstCell
{
  v3 = sub_100E74344();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v43 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] Scrolling to first cell", buf, 0xCu);
  }

  tableView = [(TransitDirectionsStepsListDataSource *)self tableView];
  if (!tableView)
  {
    goto LABEL_19;
  }

  tableView4 = tableView;
  tableView2 = [(TransitDirectionsStepsListDataSource *)self tableView];
  if ([tableView2 numberOfSections] < 1)
  {
    goto LABEL_18;
  }

  tableView3 = [(TransitDirectionsStepsListDataSource *)self tableView];
  [tableView3 bounds];
  v15 = v14;
  v17 = v16;
  height = CGSizeZero.height;

  if (CGSizeZero.width != v15 || height != v17)
  {
    tableView4 = [(TransitDirectionsStepsListDataSource *)self tableView];
    tableView2 = [NSIndexPath indexPathForItem:0 inSection:0];
    [tableView4 scrollToRowAtIndexPath:tableView2 atScrollPosition:1 animated:0];
LABEL_18:
  }

LABEL_19:
  collectionView = [(TransitDirectionsStepsListDataSource *)self collectionView];
  if (!collectionView)
  {
    goto LABEL_27;
  }

  collectionView4 = collectionView;
  collectionView2 = [(TransitDirectionsStepsListDataSource *)self collectionView];
  if ([collectionView2 numberOfSections] < 1)
  {
    goto LABEL_26;
  }

  collectionView3 = [(TransitDirectionsStepsListDataSource *)self collectionView];
  [collectionView3 bounds];
  v25 = v24;
  v27 = v26;
  v28 = CGSizeZero.height;

  if (CGSizeZero.width != v25 || v28 != v27)
  {
    collectionView4 = [(TransitDirectionsStepsListDataSource *)self collectionView];
    collectionView2 = [NSIndexPath indexPathForItem:0 inSection:0];
    [collectionView4 scrollToItemAtIndexPath:collectionView2 atScrollPosition:1 animated:0];
LABEL_26:
  }

LABEL_27:
  listView = [(TransitDirectionsStepsListDataSource *)self listView];
  if (listView)
  {
    v31 = listView;
    listView2 = [(TransitDirectionsStepsListDataSource *)self listView];
    [listView2 bounds];
    v34 = v33;
    v36 = v35;
    v37 = CGSizeZero.height;

    if (CGSizeZero.width != v34 || v37 != v36)
    {
      listView3 = [(TransitDirectionsStepsListDataSource *)self listView];
      listView4 = [(TransitDirectionsStepsListDataSource *)self listView];
      [listView4 contentInset];
      [listView3 setContentOffset:0 animated:{0.0, v41}];
    }
  }
}

- (void)_resetArtworkSizesForAdaptiveItems
{
  self->_listWidthForLeadingInset = 0.0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  items = [dataProvider items];

  v4 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(items);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          if ([v9 adaptiveShieldSize])
          {
            [v9 setSelectedSize:{objc_msgSend(v9, "initialAdaptiveSizeGroup")}];
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_measureShieldWidthForListWidth:(double)width
{
  if (self->_listWidthForLeadingInset != width)
  {
    self->_listWidthForLeadingInset = width;
    _scrollView = [(TransitDirectionsStepsListDataSource *)self _scrollView];
    v6 = dbl_101212AA0[sub_10000FA08(_scrollView) == 5];

    _scrollView2 = [(TransitDirectionsStepsListDataSource *)self _scrollView];
    sub_10000FA08(_scrollView2);

    _scrollView3 = [(TransitDirectionsStepsListDataSource *)self _scrollView];
    if (sub_10000FA08(_scrollView3) == 5)
    {
      v9 = 30.0;
    }

    else
    {
      v9 = 40.0;
    }

    v10 = +[NSMapTable strongToStrongObjectsMapTable];
    dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
    items = [dataProvider items];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100E7DBA0;
    v31[3] = &unk_101656910;
    v13 = v10;
    v32 = v13;
    v14 = sub_100021DB0(items, v31);

    *v28 = v9;
    *&v28[1] = width - v6;
    v29 = xmmword_101212AB0;
    v30 = xmmword_101212AB0;
    v15 = [[TransitDirectionsListArtworkWidthCalculator alloc] initWithSizedArtworks:v14 sizeParameter:v28];
    v16 = [(TransitDirectionsListArtworkWidthCalculator *)v15 calculateArtworkViewWidthAndArtworkSizes:&self->_transitDirectionsListInstructionsLeadingInset];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v24 + 1) + 8 * i);
          v22 = [v16 objectForKey:v21];
          v23 = [v13 objectForKey:v21];
          [v23 setSelectedSize:{objc_msgSend(v22, "shieldSize")}];
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v18);
    }
  }
}

- (void)recalculateLeadingInstructionMarginForWidth:(double)width
{
  [(TransitDirectionsStepsListDataSource *)self _resetArtworkSizesForAdaptiveItems];
  [(TransitDirectionsStepsListDataSource *)self _measureShieldWidthForListWidth:width];
  self->_listWidthForCachedRowHeights = width;
}

- (int64_t)_userInterfaceIdiom
{
  _scrollView = [(TransitDirectionsStepsListDataSource *)self _scrollView];
  traitCollection = [_scrollView traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  return userInterfaceIdiom;
}

- (double)_availableWidth
{
  _scrollView = [(TransitDirectionsStepsListDataSource *)self _scrollView];
  [_scrollView bounds];
  Width = CGRectGetWidth(v5);

  return Width;
}

- (void)_didFinishAnimatingListView
{
  if (self->_listViewReloadWaitingAnimationCompletion)
  {
    v3 = sub_100E74344();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
LABEL_12:

      self->_listViewReloadWaitingAnimationCompletion = 0;
      goto LABEL_13;
    }

    selfCopy = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

    if (selfCopy->_reloadTableCompletionBlock)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = v10;
    *buf = 138543618;
    v13 = selfCopy;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] Will perform deferred table reload (completion block: %@)", buf, 0x16u);

    goto LABEL_12;
  }

LABEL_13:
  [(TransitDirectionsStepsListDataSource *)self _reloadListViewForRouteChange];
}

- (void)_updateFooterInListView
{
  listView = [(TransitDirectionsStepsListDataSource *)self listView];

  if (listView)
  {
    options = [(TransitDirectionsStepsListDataSource *)self options];
    listView2 = [(TransitDirectionsStepsListDataSource *)self listView];
    footerView = [listView2 footerView];
    v7 = footerView;
    if ((options & 8) != 0)
    {

      if (v7)
      {
        listView3 = [(TransitDirectionsStepsListDataSource *)self listView];
        footerView2 = [listView3 footerView];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = footerView2;
        }

        else
        {
          v10 = 0;
        }

        listView5 = v10;

        [(TransitDirectionsStepsListDataSource *)self _configureFooterView:listView5];
      }

      else
      {
        listView5 = [[RoutePlanningFooterView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
        [(TransitDirectionsStepsListDataSource *)self _configureFooterView:listView5];
        listView4 = [(TransitDirectionsStepsListDataSource *)self listView];
        [listView4 setFooterView:listView5];

        v12 = +[UIColor clearColor];
        [(RoutePlanningFooterView *)listView5 setBackgroundColor:v12];
      }
    }

    else
    {

      if (!v7)
      {
        return;
      }

      listView5 = [(TransitDirectionsStepsListDataSource *)self listView];
      [(RoutePlanningFooterView *)listView5 setFooterView:0];
    }
  }
}

- (void)_reloadVisibleCells
{
  collectionView = [(TransitDirectionsStepsListDataSource *)self collectionView];

  if (!collectionView)
  {
    tableView = [(TransitDirectionsStepsListDataSource *)self tableView];

    if (tableView)
    {
      v12 = sub_100E74344();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
LABEL_33:

        tableView2 = [(TransitDirectionsStepsListDataSource *)self tableView];
LABEL_38:
        visibleCells = tableView2;
        [tableView2 reloadData];
        goto LABEL_39;
      }

      selfCopy = self;
      if (!selfCopy)
      {
        selfCopy = @"<nil>";
        goto LABEL_32;
      }

      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      if (objc_opt_respondsToSelector())
      {
        v16 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
        v17 = v16;
        if (v16 && ![v16 isEqualToString:v15])
        {
          selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v15, selfCopy, v17];

          goto LABEL_18;
        }
      }

      selfCopy = [NSString stringWithFormat:@"%@<%p>", v15, selfCopy];
LABEL_18:

LABEL_32:
      *buf = 138543362;
      v37 = selfCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[%{public}@] Reloading visible cells in table view", buf, 0xCu);

      goto LABEL_33;
    }

    listView = [(TransitDirectionsStepsListDataSource *)self listView];

    if (!listView)
    {
      return;
    }

    v20 = sub_100E74344();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
LABEL_37:

      tableView2 = [(TransitDirectionsStepsListDataSource *)self listView];
      goto LABEL_38;
    }

    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_36;
    }

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [(TransitDirectionsStepsListDataSource *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ![v24 isEqualToString:v23])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v23, selfCopy2, v25];

        goto LABEL_27;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v23, selfCopy2];
LABEL_27:

LABEL_36:
    *buf = 138543362;
    v37 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "[%{public}@] Reloading all cells in list view", buf, 0xCu);

    goto LABEL_37;
  }

  v4 = sub_100E74344();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    selfCopy3 = self;
    if (!selfCopy3)
    {
      selfCopy3 = @"<nil>";
      goto LABEL_29;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(TransitDirectionsStepsListDataSource *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy3, v9];

        goto LABEL_9;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy3];
LABEL_9:

LABEL_29:
    *buf = 138543362;
    v37 = selfCopy3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] Reloading individual visible cells in collection view", buf, 0xCu);
  }

  collectionView2 = [(TransitDirectionsStepsListDataSource *)self collectionView];
  indexPathsForVisibleItems = [collectionView2 indexPathsForVisibleItems];

  collectionView3 = [(TransitDirectionsStepsListDataSource *)self collectionView];
  visibleCells = [collectionView3 visibleCells];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100E7E530;
  v33[3] = &unk_1016568E8;
  v34 = indexPathsForVisibleItems;
  selfCopy4 = self;
  v31 = indexPathsForVisibleItems;
  [visibleCells enumerateObjectsUsingBlock:v33];

LABEL_39:
}

- (void)_reloadListViewForRouteChangeIfNotAnimating:(id)animating
{
  animatingCopy = animating;
  v5 = [animatingCopy copy];
  reloadTableCompletionBlock = self->_reloadTableCompletionBlock;
  self->_reloadTableCompletionBlock = v5;

  if (!self->_animatingExpansion)
  {
    [(TransitDirectionsStepsListDataSource *)self _didFinishAnimatingListView];
    goto LABEL_13;
  }

  self->_listViewReloadWaitingAnimationCompletion = 1;
  v7 = sub_100E74344();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    selfCopy = self;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v10, selfCopy, v12];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v10, selfCopy];
LABEL_8:

    v14 = @"YES";
    if (!animatingCopy)
    {
      v14 = @"NO";
    }

    v15 = v14;
    *buf = 138543618;
    v17 = selfCopy;
    v18 = 2112;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}@] Will defer table reload until after expansion/collapse animation (completion block: %@)", buf, 0x16u);
  }

LABEL_13:
}

- (void)_reloadListViewForRouteChange
{
  _scrollView = [(TransitDirectionsStepsListDataSource *)self _scrollView];

  v4 = sub_100E74344();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (!_scrollView)
  {
    if (!v5)
    {
      goto LABEL_24;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_23;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v14, selfCopy, v16];

        goto LABEL_17;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v14, selfCopy];
LABEL_17:

LABEL_23:
    *buf = 138543362;
    v23 = selfCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] Will not reload table for route change, no scroll view yet", buf, 0xCu);

    goto LABEL_24;
  }

  if (!v5)
  {
    goto LABEL_20;
  }

  selfCopy2 = self;
  if (!selfCopy2)
  {
    selfCopy2 = @"<nil>";
    goto LABEL_19;
  }

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  if (objc_opt_respondsToSelector())
  {
    v9 = [(TransitDirectionsStepsListDataSource *)selfCopy2 performSelector:"accessibilityIdentifier"];
    v10 = v9;
    if (v9 && ![v9 isEqualToString:v8])
    {
      selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy2, v10];

      goto LABEL_9;
    }
  }

  selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy2];
LABEL_9:

LABEL_19:
  *buf = 138543362;
  v23 = selfCopy2;
  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] Will reload table for route change", buf, 0xCu);

LABEL_20:
  [(TransitDirectionsStepsListDataSource *)self _resetRowHeightCache];
  [(TransitDirectionsStepsListDataSource *)self _availableWidth];
  [(TransitDirectionsStepsListDataSource *)self recalculateLeadingInstructionMarginForWidth:?];
  tableView = [(TransitDirectionsStepsListDataSource *)self tableView];
  [tableView reloadData];

  collectionView = [(TransitDirectionsStepsListDataSource *)self collectionView];
  [collectionView reloadData];

  listView = [(TransitDirectionsStepsListDataSource *)self listView];
  [listView reloadData];

  [(TransitDirectionsStepsListDataSource *)self _updateFooterInListView];
  v4 = objc_retainBlock(self->_reloadTableCompletionBlock);
  reloadTableCompletionBlock = self->_reloadTableCompletionBlock;
  self->_reloadTableCompletionBlock = 0;

  if (v4)
  {
    (*(v4 + 16))(v4);
  }

LABEL_24:
}

- (void)_updateRegisteredCellClasses
{
  tableView = [(TransitDirectionsStepsListDataSource *)self tableView];

  if (tableView)
  {
    tableView2 = [(TransitDirectionsStepsListDataSource *)self tableView];
    [TransitDirectionsCell registerCellsForTableView:tableView2];

    tableView3 = [(TransitDirectionsStepsListDataSource *)self tableView];
    [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"TransitDirectionsListSharingIdentifier"];
  }

  collectionView = [(TransitDirectionsStepsListDataSource *)self collectionView];

  if (collectionView)
  {
    collectionView2 = [(TransitDirectionsStepsListDataSource *)self collectionView];
    [TransitDirectionsCell registerCellsForCollectionView:collectionView2];

    collectionView3 = [(TransitDirectionsStepsListDataSource *)self collectionView];
    [collectionView3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"TransitDirectionsListSharingIdentifier"];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  _scrollView = [(TransitDirectionsStepsListDataSource *)self _scrollView];

  if (_scrollView == objectCopy)
  {
    [(TransitDirectionsStepsListDataSource *)self _availableWidth];
    v15 = v14;
    if (self->_listWidthForCachedRowHeights == v14)
    {
      goto LABEL_12;
    }

    v16 = sub_100E74344();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
LABEL_11:

      [(TransitDirectionsStepsListDataSource *)self recalculateLeadingInstructionMarginForWidth:v15];
      tableView = [(TransitDirectionsStepsListDataSource *)self tableView];
      [tableView reloadData];

      collectionView = [(TransitDirectionsStepsListDataSource *)self collectionView];
      [collectionView reloadData];

      listView = [(TransitDirectionsStepsListDataSource *)self listView];
      [listView reloadData];

      goto LABEL_12;
    }

    selfCopy = self;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v19, selfCopy, v21];

        goto LABEL_10;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v19, selfCopy];
LABEL_10:

    *buf = 138543362;
    v28 = selfCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[%{public}@] available width did change", buf, 0xCu);

    goto LABEL_11;
  }

  v26.receiver = self;
  v26.super_class = TransitDirectionsStepsListDataSource;
  [(TransitDirectionsStepsListDataSource *)&v26 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_12:
}

- (void)setFlattenToSingleSection:(BOOL)section
{
  if (self->_flattenToSingleSection != section)
  {
    self->_flattenToSingleSection = section;
    [(TransitDirectionsStepsListDataSource *)self _reloadListViewForRouteChange];
  }
}

- (void)setListView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_listView);
  if (WeakRetained != obj)
  {
    if (WeakRetained)
    {
      [WeakRetained removeObserver:self forKeyPath:@"bounds"];
    }

    objc_storeWeak(&self->_listView, obj);
    if (obj)
    {
      [(TransitDirectionsStepsListDataSource *)self setTableView:0];
      [(TransitDirectionsStepsListDataSource *)self setCollectionView:0];
      [(TransitDirectionsStepsListDataSource *)self _updateRegisteredCellClasses];
      [obj addObserver:self forKeyPath:@"bounds" options:1 context:0];
      [(TransitDirectionsStepsListDataSource *)self _reloadListViewForRouteChange];
      [(TransitDirectionsStepsListDataSource *)self _updateActiveItemInListViewIfNeeded];
      [(TransitDirectionsStepsListDataSource *)self _updateFooterInListView];
    }
  }
}

- (void)setCollectionView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  if (WeakRetained != obj)
  {
    if (WeakRetained)
    {
      [WeakRetained removeObserver:self forKeyPath:@"bounds"];
    }

    objc_storeWeak(&self->_collectionView, obj);
    if (obj)
    {
      [(TransitDirectionsStepsListDataSource *)self setTableView:0];
      [(TransitDirectionsStepsListDataSource *)self setListView:0];
      [(TransitDirectionsStepsListDataSource *)self _updateRegisteredCellClasses];
      [obj addObserver:self forKeyPath:@"bounds" options:1 context:0];
      [(TransitDirectionsStepsListDataSource *)self _resetRowHeightCache];
      [(TransitDirectionsStepsListDataSource *)self _reloadListViewForRouteChange];
    }
  }
}

- (void)setTableView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  if (WeakRetained != obj)
  {
    if (WeakRetained)
    {
      [WeakRetained removeObserver:self forKeyPath:@"bounds"];
    }

    objc_storeWeak(&self->_tableView, obj);
    if (obj)
    {
      [(TransitDirectionsStepsListDataSource *)self setCollectionView:0];
      [(TransitDirectionsStepsListDataSource *)self setListView:0];
      [(TransitDirectionsStepsListDataSource *)self _updateRegisteredCellClasses];
      [obj addObserver:self forKeyPath:@"bounds" options:1 context:0];
      [(TransitDirectionsStepsListDataSource *)self _resetRowHeightCache];
      [(TransitDirectionsStepsListDataSource *)self _reloadListViewForRouteChange];
    }
  }
}

- (id)_scrollView
{
  tableView = [(TransitDirectionsStepsListDataSource *)self tableView];
  v4 = tableView;
  if (tableView)
  {
    v5 = tableView;
  }

  else
  {
    collectionView = [(TransitDirectionsStepsListDataSource *)self collectionView];
    v7 = collectionView;
    if (collectionView)
    {
      listView = collectionView;
    }

    else
    {
      listView = [(TransitDirectionsStepsListDataSource *)self listView];
    }

    v5 = listView;
  }

  return v5;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  obj = delegateCopy;
  v6 = WeakRetained;
  if (obj | v6)
  {
    v7 = [obj isEqual:v6];

    if ((v7 & 1) == 0)
    {
      objc_storeWeak(&self->_delegate, 0);
      [(TransitDirectionsStepsListDataSource *)self _refreshActiveItemIndexPath];
      [(TransitDirectionsStepsListDataSource *)self _refreshDisplayedItemIndexPath];
      objc_storeWeak(&self->_delegate, obj);
      [(TransitDirectionsStepsListDataSource *)self _notifyDelegateOfUpdatedActiveStep];
      [(TransitDirectionsStepsListDataSource *)self _notifyDelegateOfUpdatedDisplayedStep];
    }
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    activeCopy = active;
    v5 = sub_100E74344();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
LABEL_11:

      self->_active = activeCopy;
      [(MKTransitItemReferenceDateUpdater *)self->_referenceDateUpdater setActive:activeCopy];
      if (activeCopy)
      {
        [(TransitDirectionsStepsListDataSource *)self _reloadListViewForRouteChange];
      }

      return;
    }

    selfCopy = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

    v12 = @"NO";
    if (activeCopy)
    {
      v12 = @"YES";
    }

    v13 = v12;
    *buf = 138543618;
    v15 = selfCopy;
    v16 = 2114;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] setActive: %{public}@", buf, 0x16u);

    goto LABEL_11;
  }
}

- (TransitDirectionsStepsListDataProvider)dataProvider
{
  dataProvider = self->_dataProvider;
  if (!dataProvider)
  {
    dataProvider = self->_route;
    if (dataProvider)
    {
      if (self->_navigationProvider)
      {
        transitDirectionsStepsListDataProvider = [[TransitDirectionsStepsListDataProvider alloc] initWithRoute:self->_route forGuidance:1];
      }

      else
      {
        transitDirectionsStepsListDataProvider = [dataProvider transitDirectionsStepsListDataProvider];
      }

      v5 = self->_dataProvider;
      self->_dataProvider = transitDirectionsStepsListDataProvider;

      dataProvider = self->_dataProvider;
    }
  }

  return dataProvider;
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  route = self->_route;
  if (route != routeCopy)
  {
    [(GEOComposedRoute *)route unregisterObserver:self];
    dataProvider = self->_dataProvider;
    self->_dataProvider = 0;

    objc_storeStrong(&self->_route, route);
    [(GEOComposedRoute *)self->_route registerObserver:self];
    v8 = sub_100E74344();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
LABEL_9:

      [(TransitDirectionsStepsListDataSource *)self _rebuildItems];
      *&self->_activeComposedRouteStepIndex = xmmword_101212AC0;
      activeItemIndexPath = self->_activeItemIndexPath;
      self->_activeItemIndexPath = 0;

      displayedItemIndexPath = self->_displayedItemIndexPath;
      self->_displayedItemIndexPath = 0;

      [(TransitDirectionsStepsListDataSource *)self _prepareForUpdatedRoute];
      self->_routeSetAwaitingTableViewReload = 1;
      objc_initWeak(buf, self);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100E7F7B0;
      v17[3] = &unk_101661B98;
      objc_copyWeak(&v18, buf);
      [(TransitDirectionsStepsListDataSource *)self _reloadListViewForRouteChangeIfNotAnimating:v17];
      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);
      goto LABEL_10;
    }

    selfCopy = self;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(TransitDirectionsStepsListDataSource *)selfCopy performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v11, selfCopy, v13];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v11, selfCopy];
LABEL_8:

    *buf = 138543618;
    v20 = selfCopy;
    v21 = 2112;
    v22 = routeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}@] setRoute: %@", buf, 0x16u);

    goto LABEL_9;
  }

LABEL_10:
}

- (TransitDirectionsStepsListDataSource)initWithRoute:(id)route delegate:(id)delegate forNavigation:(BOOL)navigation
{
  navigationCopy = navigation;
  delegateCopy = delegate;
  v9 = [(TransitDirectionsStepsListDataSource *)self initWithRoute:route];
  v10 = v9;
  if (v9)
  {
    [(TransitDirectionsStepsListDataSource *)v9 setEnableNavigationUpdates:navigationCopy];
    [(TransitDirectionsStepsListDataSource *)v10 setAllowStepSelection:navigationCopy];
    [(TransitDirectionsStepsListDataSource *)v10 setDelegate:delegateCopy];
  }

  return v10;
}

- (TransitDirectionsStepsListDataSource)initWithRoute:(id)route
{
  routeCopy = route;
  v16.receiver = self;
  v16.super_class = TransitDirectionsStepsListDataSource;
  v6 = [(TransitDirectionsStepsListDataSource *)&v16 init];
  v7 = v6;
  if (v6)
  {
    v6->_options = 1;
    *&v6->_activeComposedRouteStepIndex = xmmword_101212AC0;
    v8 = [[MKTransitItemReferenceDateUpdater alloc] initWithDelegate:v6];
    referenceDateUpdater = v7->_referenceDateUpdater;
    v7->_referenceDateUpdater = v8;

    v7->_highlightingBehaviour = 0;
    objc_storeStrong(&v7->_route, route);
    if (routeCopy && [routeCopy transportType] != 1)
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v18 = "[TransitDirectionsStepsListDataSource initWithRoute:]";
        v19 = 2080;
        v20 = "TransitDirectionsStepsListDataSource.m";
        v21 = 1024;
        v22 = 171;
        v23 = 2080;
        v24 = "!route || route.transportType == GEOTransportType_TRANSIT";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v14 = sub_10006D178();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v18 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    v10 = +[NSNotificationCenter defaultCenter];
    v11 = MNLocaleDidChangeNotification();
    [v10 addObserver:v7 selector:"_localeDidChange" name:v11 object:0];
  }

  return v7;
}

- (void)dealloc
{
  tableView = [(TransitDirectionsStepsListDataSource *)self tableView];
  [tableView removeObserver:self forKeyPath:@"bounds"];

  collectionView = [(TransitDirectionsStepsListDataSource *)self collectionView];
  [collectionView removeObserver:self forKeyPath:@"bounds"];

  listView = [(TransitDirectionsStepsListDataSource *)self listView];
  [listView removeObserver:self forKeyPath:@"bounds"];

  v6.receiver = self;
  v6.super_class = TransitDirectionsStepsListDataSource;
  [(TransitDirectionsStepsListDataSource *)&v6 dealloc];
}

- (NSArray)_transitDirectionsListItems
{
  dataProvider = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  items = [dataProvider items];

  return items;
}

@end