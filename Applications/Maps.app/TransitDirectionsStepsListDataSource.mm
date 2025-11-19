@interface TransitDirectionsStepsListDataSource
- (BOOL)_shouldHighlightItemAtIndexPath:(id)a3;
- (BOOL)_supportsFooterItem;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)hasIncidentItems;
- (BOOL)pptTestHasNextStep;
- (BOOL)pptTestMoveToBoardStep;
- (BOOL)shouldShowSeparatorForItemAtIndexPath:(id)a3 insets:(NSDirectionalEdgeInsets *)a4;
- (BOOL)transitDirectionsListView:(id)a3 canSelectItem:(id)a4;
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
- (TransitDirectionsStepsListDataSource)initWithRoute:(id)a3;
- (TransitDirectionsStepsListDataSource)initWithRoute:(id)a3 delegate:(id)a4 forNavigation:(BOOL)a5;
- (TransitDirectionsStepsListDelegate)delegate;
- (UICollectionView)collectionView;
- (UIScrollViewDelegate)scrollViewDelegate;
- (UITableView)tableView;
- (_NSRange)_segementRangeForItemAtIndexPath:(id)a3;
- (double)_availableWidth;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (id)_activeItem;
- (id)_additionalSelectionIndexPathsForIndexPath:(id)a3;
- (id)_displayedItem;
- (id)_expandedItemsIndices;
- (id)_flatIndexFromIndexPath:(id)a3;
- (id)_footerCellForIndexPath:(id)a3 inCollectionView:(id)a4;
- (id)_footerCellForIndexPath:(id)a3 inTableView:(id)a4;
- (id)_indexPathFromFlatIndexPath:(id)a3;
- (id)_itemIndexPathForStepIndex:(unint64_t)a3;
- (id)_scrollView;
- (id)activeItemForTransitDirectionsListView:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)displayedItemIndexForAnalytics;
- (id)displayedTransitDirectionsListItemIndexPath;
- (id)listItemForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (id)transitDirectionsListView:(id)a3 stepViewForItemAtIndexPath:(id)a4;
- (int64_t)_cellNavStateForItem:(id)a3 atIndexPath:(id)a4;
- (int64_t)_userInterfaceIdiom;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)pptTestCurrentStepIndex;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_numberOfRowsInSection:(unint64_t)a3;
- (unint64_t)_numberOfSections;
- (unint64_t)_stepViewDisplayOptionsForSection:(unint64_t)a3;
- (unint64_t)activeItemIndex;
- (unint64_t)displayedItemIndex;
- (unint64_t)indexOfItem:(id)a3;
- (void)_cacheHeightForRow:(id)a3 atIndexPath:(id)a4;
- (void)_configureFooterView:(id)a3;
- (void)_configureSeparatorForCell:(id)a3 forRowAtIndexPath:(id)a4;
- (void)_configureStepView:(id)a3 forItem:(id)a4 atIndexPath:(id)a5;
- (void)_configureTransitDirectionsCollectionViewCell:(id)a3 withItem:(id)a4 atIndexPath:(id)a5;
- (void)_didFinishAnimatingListView;
- (void)_expandItemsAtIndices:(id)a3;
- (void)_localeDidChange;
- (void)_measureShieldWidthForListWidth:(double)a3;
- (void)_notifyDelegateOfUpdatedActiveStep;
- (void)_notifyDelegateOfUpdatedDisplayedStep;
- (void)_rebuildItems;
- (void)_refreshActiveItemIndexPath;
- (void)_refreshDisplayedItemIndexPath;
- (void)_refreshItemInstructionStrings;
- (void)_reloadListViewForRouteChange;
- (void)_reloadListViewForRouteChangeIfNotAnimating:(id)a3;
- (void)_reloadVisibleCells;
- (void)_resetArtworkSizesForAdaptiveItems;
- (void)_resetRowHeightCache;
- (void)_scrollToDisplayedItemIfNeeded:(id)a3 animated:(BOOL)a4;
- (void)_scrollToFirstCell;
- (void)_setUseCollapsedDisplayStyle:(BOOL)a3;
- (void)_transitDirectionsCell:(id)a3 wantsToExpandOrCollapseItem:(id)a4 inCollectionView:(id)a5;
- (void)_transitDirectionsCell:(id)a3 wantsToExpandOrCollapseItem:(id)a4 inTableView:(id)a5;
- (void)_transitDirectionsStepView:(id)a3 wantsToExpandOrCollapseItem:(id)a4 inListView:(id)a5;
- (void)_updateActiveItemInListViewIfNeeded;
- (void)_updateDisplayStyleInVisibleCells;
- (void)_updateFooterInListView;
- (void)_updateListForClusteredRideOptionChangeInClusteredSegment:(id)a3;
- (void)_updateRegisteredCellClasses;
- (void)collapseAllItems;
- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4;
- (void)composedRoute:(id)a3 appliedTransitRouteUpdates:(id)a4;
- (void)composedRoute:(id)a3 changedSelectedRideInClusteredSegment:(id)a4 fromIndex:(unint64_t)a5 toIndex:(unint64_t)a6;
- (void)dealloc;
- (void)didTapGetTicketsOnRoutePlanningFooterView:(id)a3;
- (void)didTapReportAProblemButtonOnRoutePlanningFooterView:(id)a3;
- (void)didTapShareButtonOnRoutePlanningFooterView:(id)a3;
- (void)expandAllItems;
- (void)navigationProvider:(id)a3 didChangeToNavigating:(BOOL)a4 withRoute:(id)a5;
- (void)navigationProvider:(id)a3 didReceiveRealtimeUpdates:(id)a4;
- (void)navigationProvider:(id)a3 didUpdateActiveStepIndex:(unint64_t)a4;
- (void)navigationProvider:(id)a3 didUpdateDisplayedStepIndex:(unint64_t)a4;
- (void)navigationProvider:(id)a3 didUpdateRoute:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pptTestMoveToNextStep;
- (void)recalculateLeadingInstructionMarginForWidth:(double)a3;
- (void)routePlanningView:(id)a3 didTapGetTicketsForURL:(id)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setActive:(BOOL)a3;
- (void)setActiveComposedRouteStepIndex:(unint64_t)a3;
- (void)setCollectionView:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDisplayedComposedRouteStepIndex:(unint64_t)a3;
- (void)setEnableNavigationUpdates:(BOOL)a3;
- (void)setFlattenToSingleSection:(BOOL)a3;
- (void)setListView:(id)a3;
- (void)setMatchedLocation:(id)a3;
- (void)setRoute:(id)a3;
- (void)setTableView:(id)a3;
- (void)setUseCollapsedDisplayStyle:(BOOL)a3;
- (void)tableView:(id)a3 didHighlightRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didUnhighlightRowAtIndexPath:(id)a4;
- (void)tableViewDidFinishReload:(id)a3;
- (void)transitDirectionsBoardingInfoStepView:(id)a3 didSelectScheduleForItem:(id)a4;
- (void)transitDirectionsCell:(id)a3 didTapAdvisory:(id)a4;
- (void)transitDirectionsCell:(id)a3 wantsToExpandOrCollapseItem:(id)a4;
- (void)transitDirectionsClusteredVehiclesCellDidTapAlternateRouteButtonInCell:(id)a3;
- (void)transitDirectionsListView:(id)a3 didDisplayAdvisory:(id)a4;
- (void)transitDirectionsListView:(id)a3 didSelectItem:(id)a4;
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
  v3 = [(TransitDirectionsStepsListDataSource *)self pptTestCurrentStepIndex];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = v3;
  v6 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  v7 = [v6 items];

  while (v5 < [v7 count])
  {
    v8 = [v7 objectAtIndexedSubscript:v5];
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
    v3 = [(TransitDirectionsStepsListDataSource *)self pptTestCurrentStepIndex];
    v4 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
    v5 = [NSIndexPath indexPathForItem:0 inSection:v3 + 1];
    v7 = [v4 itemAtIndexPath:v5];

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
  v3 = [(TransitDirectionsStepsListDataSource *)self displayedTransitDirectionsListItemIndexPath];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 section];
    v6 = v5 < [(TransitDirectionsStepsListDataSource *)self _numberOfSections];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)pptTestCurrentStepIndex
{
  v2 = [(TransitDirectionsStepsListDataSource *)self displayedTransitDirectionsListItemIndexPath];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 section];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v7 = a3;
  v4 = [(TransitDirectionsStepsListDataSource *)self scrollViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(TransitDirectionsStepsListDataSource *)self scrollViewDelegate];
    [v6 scrollViewWillBeginDragging:v7];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v7 = a3;
  v4 = [(TransitDirectionsStepsListDataSource *)self scrollViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(TransitDirectionsStepsListDataSource *)self scrollViewDelegate];
    [v6 scrollViewDidScroll:v7];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v19 = a3;
  v9 = [(TransitDirectionsStepsListDataSource *)self delegate];
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
    v13 = [(TransitDirectionsStepsListDataSource *)self delegate];
    v14 = [v13 currentUITargetForAnalytics];
    v15 = [(TransitDirectionsStepsListDataSource *)self displayedItemIndexForAnalytics];
    [v12 captureUserAction:v11 onTarget:v14 eventValue:0 transitStep:v15];
  }

  v16 = [(TransitDirectionsStepsListDataSource *)self scrollViewDelegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [(TransitDirectionsStepsListDataSource *)self scrollViewDelegate];
    [v18 scrollViewWillEndDragging:v19 withVelocity:a5 targetContentOffset:{x, y}];
  }
}

- (BOOL)shouldShowSeparatorForItemAtIndexPath:(id)a3 insets:(NSDirectionalEdgeInsets *)a4
{
  v6 = a3;
  top = a4->top;
  leading = a4->leading;
  bottom = a4->bottom;
  trailing = a4->trailing;
  v11 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:v6];
  v12 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v11];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v6;
    v32 = [(TransitDirectionsStepsListDataSource *)self _numberOfSections];
    v13 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
    v14 = [v13 numberOfItemsInSection:{objc_msgSend(v11, "section")}];

    v15 = v12;
    if ((-[TransitDirectionsStepsListDataSource _stepViewDisplayOptionsForSection:](self, "_stepViewDisplayOptionsForSection:", [v11 section]) & 4) != 0)
    {
      v16 = [v15 nextItem];
      if (v16)
      {
        v17 = v16;
        do
        {
          v18 = [v17 parentItem];
          v19 = v18;
          if (v18 == v15)
          {
          }

          else
          {
            v20 = [v17 parentItem];
            v21 = [v15 parentItem];

            if (v20 != v21)
            {
              break;
            }
          }

          v14 -= [v17 shouldHideInExpandedDisplayStyle];
          v22 = [v17 nextItem];

          v17 = v22;
        }

        while (v22);
      }
    }

    v23 = v14 - 1;
    v24 = [v11 row];
    LOBYTE(v14) = v14 - 1 == v24;
    v25 = [(TransitDirectionsStepsListDataSource *)self options];
    v26 = [(TransitDirectionsStepsListDataSource *)self _supportsFooterItem];
    if ((v25 & 8) != 0 && v23 == v24)
    {
      v27 = -2;
      if (!v26)
      {
        v27 = -1;
      }

      v6 = v33;
      if ((v27 + v32) == [v33 section])
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
      if ((v25 & 8) == 0 && v23 == v24)
      {
        LOBYTE(v14) = (v32 - 1) != [v11 section] && v23 == v24;
      }

      v6 = v33;
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

  a4->top = top;
  a4->leading = leading;
  a4->bottom = bottom;
  a4->trailing = trailing;

  return v14;
}

- (BOOL)_shouldHighlightItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:v4];
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
    v10 = 0;
    goto LABEL_15;
  }

  if ([v8 type] == 7 || objc_msgSend(v9, "type") == 13 || !-[TransitDirectionsStepsListDataSource allowsStepSelection](self, "allowsStepSelection"))
  {
    goto LABEL_14;
  }

  if (![v9 type])
  {
    v10 = [(TransitDirectionsStepsListDataSource *)self allowsStepSelection];
    goto LABEL_15;
  }

  if ([v6 isEqual:@"TransitDirectionsListSharingIdentifier"])
  {
    goto LABEL_14;
  }

  if ([v9 selectable])
  {
    v10 = 1;
  }

  else
  {
    v12 = [(TransitDirectionsStepsListDataSource *)self _additionalSelectionIndexPathsForIndexPath:v4];
    v13 = [v12 firstObject];
    if ([v13 compare:v4] == -1)
    {
      v10 = [(TransitDirectionsStepsListDataSource *)self _shouldHighlightItemAtIndexPath:v13];
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_15:

  return v10;
}

- (id)_additionalSelectionIndexPathsForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:v4];
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

    v12 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
    v13 = [v12 numberOfItemsInSection:{objc_msgSend(v10, "section")}];

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
        v17 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v16 row], objc_msgSend(v4, "section"));
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
  v5 = [(TransitDirectionsStepsListDataSource *)self listView];
  v3 = [(TransitDirectionsStepsListDataSource *)self listView];
  v4 = [(TransitDirectionsStepsListDataSource *)self activeItemForTransitDirectionsListView:v3];
  [v5 setActiveTransitDirectionsListItem:v4];
}

- (void)transitDirectionsListView:(id)a3 didDisplayAdvisory:(id)a4
{
  v5 = a4;
  v7 = +[MKMapService sharedService];
  v6 = [(TransitDirectionsStepsListDataSource *)self delegate];
  [v7 captureUserAction:247 onTarget:objc_msgSend(v6 forAdvisory:{"currentUITargetForAnalytics"), v5}];
}

- (void)transitDirectionsListView:(id)a3 didSelectItem:(id)a4
{
  v12 = a3;
  v6 = a4;
  if ([v6 type] == 4 && (-[TransitDirectionsStepsListDataSource delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, (v8 & 1) != 0))
  {
    v9 = [v12 stepViewForItem:v6];
    [(TransitDirectionsStepsListDataSource *)self transitDirectionsClusteredVehiclesCellDidTapAlternateRouteButtonInCell:v9];
  }

  else
  {
    v10 = [(TransitDirectionsStepsListDataSource *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      goto LABEL_7;
    }

    v9 = [(TransitDirectionsStepsListDataSource *)self delegate];
    [v9 transitDirectionsStepsListDataSource:self didTapRowForItem:v6];
  }

LABEL_7:
}

- (BOOL)transitDirectionsListView:(id)a3 canSelectItem:(id)a4
{
  v5 = a4;
  v6 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  v7 = [v6 indexPathForItem:v5];

  v8 = [(TransitDirectionsStepsListDataSource *)self _flatIndexFromIndexPath:v7];
  LOBYTE(self) = [(TransitDirectionsStepsListDataSource *)self _shouldHighlightItemAtIndexPath:v8];

  return self;
}

- (id)activeItemForTransitDirectionsListView:(id)a3
{
  v4 = [(TransitDirectionsStepsListDataSource *)self highlightingBehaviour];
  if (v4 == 2)
  {
    v5 = [(TransitDirectionsStepsListDataSource *)self _displayedItem];
    v6 = [(TransitDirectionsStepsListDataSource *)self _activeItem];

    if (v5 == v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    if (v4 == 1)
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

- (void)_configureStepView:(id)a3 forItem:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsExpandableCell])
  {
    [v8 setExpandableCellDelegate:self];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setBoardingInfoDelegate:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v8 setDelegate:self];
    }
  }

  [(TransitDirectionsStepsListDataSource *)self leadingInstructionMargin];
  [v8 setLeadingInstructionMargin:?];
  [v8 setUseNavigationMetrics:{-[TransitDirectionsStepsListDataSource _useNavigationMetrics](self, "_useNavigationMetrics")}];
  [v8 setDisplayOptions:{-[TransitDirectionsStepsListDataSource _stepViewDisplayOptionsForSection:](self, "_stepViewDisplayOptionsForSection:", objc_msgSend(v10, "section"))}];
  [v8 configureWithItem:v9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v8;
    if ([v10 row] <= 0)
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

    if ([v10 row] >= 1)
    {
      v12 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v10 row] - 1, objc_msgSend(v10, "section"));
      v13 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
      v14 = [v13 itemAtIndexPath:v12];

      [v11 setPreviousItem:v14 withPreviousNavigationState:{-[TransitDirectionsStepsListDataSource _cellNavStateForItem:atIndexPath:](self, "_cellNavStateForItem:atIndexPath:", v14, v12)}];
    }
  }

  [v8 setNavigationState:{-[TransitDirectionsStepsListDataSource _cellNavStateForItem:atIndexPath:](self, "_cellNavStateForItem:atIndexPath:", v9, v10)}];
}

- (id)transitDirectionsListView:(id)a3 stepViewForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:v6];
  v9 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v8];
  v10 = [v7 dequeueStepViewForItem:v9];

  [(TransitDirectionsStepsListDataSource *)self _configureStepView:v10 forItem:v9 atIndexPath:v6];

  return v10;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TransitDirectionsStepsListDataSource *)self _additionalSelectionIndexPathsForIndexPath:v7];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = [v6 indexPathsForSelectedItems];
  v10 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        if (([v14 isEqual:v7] & 1) == 0 && (objc_msgSend(v8, "containsObject:", v14) & 1) == 0)
        {
          [v6 deselectItemAtIndexPath:v14 animated:0];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v11);
  }

  if (sub_10000FA08(v6) == 5)
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
          v21 = [v6 cellForItemAtIndexPath:{v20, v33}];
          if (([v21 isSelected] & 1) == 0)
          {
            [v6 selectItemAtIndexPath:v20 animated:0 scrollPosition:0];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v17);
    }
  }

  v22 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:v7, v33];
  v23 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v22];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = [v8 firstObject];
    if ([v24 compare:v7] == -1)
    {
      v25 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:v24];
      v26 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v25];

      v23 = v26;
    }

    v23 = v23;
    if ([v23 type] == 4 && (-[TransitDirectionsStepsListDataSource delegate](self, "delegate"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_opt_respondsToSelector(), v27, (v28 & 1) != 0))
    {
      v29 = [v6 cellForItemAtIndexPath:v7];
      v30 = [v29 stepView];
      [(TransitDirectionsStepsListDataSource *)self transitDirectionsClusteredVehiclesCellDidTapAlternateRouteButtonInCell:v30];
    }

    else
    {
      v31 = [(TransitDirectionsStepsListDataSource *)self delegate];
      v32 = objc_opt_respondsToSelector();

      if ((v32 & 1) == 0)
      {
LABEL_31:

        goto LABEL_32;
      }

      v29 = [(TransitDirectionsStepsListDataSource *)self delegate];
      [v29 transitDirectionsStepsListDataSource:self didTapRowForItem:v23];
    }

    goto LABEL_31;
  }

LABEL_32:
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = [(TransitDirectionsStepsListDataSource *)self _additionalSelectionIndexPathsForIndexPath:a4];
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

        [v6 selectItemAtIndexPath:*(*(&v13 + 1) + 8 * v11) animated:0 scrollPosition:0];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return 1;
}

- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = [(TransitDirectionsStepsListDataSource *)self _additionalSelectionIndexPathsForIndexPath:a4];
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

        v12 = [v6 cellForItemAtIndexPath:*(*(&v13 + 1) + 8 * v11)];
        [v12 setHighlighted:0];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = [(TransitDirectionsStepsListDataSource *)self _additionalSelectionIndexPathsForIndexPath:a4];
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

        v12 = [v6 cellForItemAtIndexPath:*(*(&v13 + 1) + 8 * v11)];
        [v12 setHighlighted:1];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_configureTransitDirectionsCollectionViewCell:(id)a3 withItem:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsExpandableCell])
  {
    [v8 setExpandableCellDelegate:self];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v8 stepView];
    [v11 setBoardingInfoDelegate:self];
LABEL_7:

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v8 stepView];
    [v11 setDelegate:self];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setDelegate:self];
  }

LABEL_8:
  [(TransitDirectionsStepsListDataSource *)self leadingInstructionMargin];
  [v8 setLeadingInstructionMargin:?];
  [v8 setUseNavigationMetrics:{-[TransitDirectionsStepsListDataSource _useNavigationMetrics](self, "_useNavigationMetrics")}];
  [v8 setDisplayOptions:{-[TransitDirectionsStepsListDataSource _stepViewDisplayOptionsForSection:](self, "_stepViewDisplayOptionsForSection:", objc_msgSend(v10, "section"))}];
  [v8 configureWithItem:v9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v8 stepView];
    if ([v10 row] <= 0)
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

    if ([v10 row] >= 1)
    {
      v13 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v10 row] - 1, objc_msgSend(v10, "section"));
      v14 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
      v15 = [v14 itemAtIndexPath:v13];

      [v12 setPreviousItem:v15 withPreviousNavigationState:{-[TransitDirectionsStepsListDataSource _cellNavStateForItem:atIndexPath:](self, "_cellNavStateForItem:atIndexPath:", v15, v13)}];
    }
  }

  [v8 setNavigationState:{-[TransitDirectionsStepsListDataSource _cellNavStateForItem:atIndexPath:](self, "_cellNavStateForItem:atIndexPath:", v9, v10)}];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:v7];
  v9 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [TransitDirectionsCell dequeueCellForListItem:v9 fromCollectionView:v6 atIndexPath:v7];
    [(TransitDirectionsStepsListDataSource *)self _configureTransitDirectionsCollectionViewCell:v10 withItem:v9 atIndexPath:v7];
  }

  else if ([v9 isEqual:@"TransitDirectionsListSharingIdentifier"])
  {
    v10 = [(TransitDirectionsStepsListDataSource *)self _footerCellForIndexPath:v7 inCollectionView:v6];
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
    v10 = [v6 dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:v7];
  }

  return v10;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
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

    return [(TransitDirectionsStepsListDataSource *)self _numberOfRowsInSection:a4];
  }
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  if ([(TransitDirectionsStepsListDataSource *)self shouldFlattenToSingleSection])
  {
    return 1;
  }

  return [(TransitDirectionsStepsListDataSource *)self _numberOfSections];
}

- (void)_updateListForClusteredRideOptionChangeInClusteredSegment:(id)a3
{
  v4 = a3;
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

    v6 = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(TransitDirectionsStepsListDataSource *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

    *buf = 138543362;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Will prepare transit clustered ride update throttler to prevent more than one rebuild/reload per run loop", buf, 0xCu);

    goto LABEL_9;
  }

LABEL_10:
  v16 = +[NSDate date];
  [(MapsThrottler *)self->_clusteredRideUpdateThrottler setValue:v16];
}

- (void)transitDirectionsClusteredVehiclesCellDidTapAlternateRouteButtonInCell:(id)a3
{
  v7 = a3;
  v4 = [(TransitDirectionsStepsListDataSource *)self displayedItemIndexForAnalytics];
  [GEOAPPortal captureUserAction:17098 target:0 value:0 transitStep:v4];

  v5 = [(TransitDirectionsStepsListDataSource *)self delegate];
  LOBYTE(v4) = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = [(TransitDirectionsStepsListDataSource *)self delegate];
    [v6 transitDirectionsStepsListDataSource:self didTapClusteredVehiclesCell:v7];
  }
}

- (void)transitDirectionsBoardingInfoStepView:(id)a3 didSelectScheduleForItem:(id)a4
{
  v11 = a4;
  v5 = [v11 type];
  v6 = v11;
  if (v11 && v5 == 9)
  {
    while (1)
    {
      v12 = v6;
      if ([v6 type] == 2)
      {
        break;
      }

      v7 = [v12 nextItem];

      v6 = v7;
      if (!v7)
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
    v8 = [(TransitDirectionsStepsListDataSource *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(TransitDirectionsStepsListDataSource *)self delegate];
      [v10 transitDirectionsStepsListDataSource:self didSelectTrip:v13];
    }
  }
}

- (void)didTapReportAProblemButtonOnRoutePlanningFooterView:(id)a3
{
  v4 = [(TransitDirectionsStepsListDataSource *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = +[MKMapService sharedService];
    v7 = [(TransitDirectionsStepsListDataSource *)self delegate];
    v8 = [v7 currentUITargetForAnalytics];
    v9 = [(TransitDirectionsStepsListDataSource *)self displayedItemIndexForAnalytics];
    [v6 captureUserAction:5013 onTarget:v8 eventValue:0 transitStep:v9];
  }

  v10 = [(TransitDirectionsStepsListDataSource *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(TransitDirectionsStepsListDataSource *)self delegate];
    [v12 directionsStepsListDidTapRAPButton:self];
  }
}

- (void)routePlanningView:(id)a3 didTapGetTicketsForURL:(id)a4
{
  v8 = a4;
  v5 = [(TransitDirectionsStepsListDataSource *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(TransitDirectionsStepsListDataSource *)self delegate];
    [v7 transitDirectionsStepsListDataSource:self didTapGetTicketsWithURL:v8];
  }
}

- (void)didTapGetTicketsOnRoutePlanningFooterView:(id)a3
{
  v4 = [(TransitDirectionsStepsListDataSource *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = [(TransitDirectionsStepsListDataSource *)self delegate];
    v6 = [(GEOComposedRoute *)self->_route ticketingSegmentsForSelectedRides];
    [v7 transitDirectionsStepsListDataSource:self didTapGetTicketsForSegments:v6];
  }
}

- (void)didTapShareButtonOnRoutePlanningFooterView:(id)a3
{
  v4 = [(TransitDirectionsStepsListDataSource *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = +[MKMapService sharedService];
    v7 = [(TransitDirectionsStepsListDataSource *)self delegate];
    v8 = [v7 currentUITargetForAnalytics];
    v9 = [(TransitDirectionsStepsListDataSource *)self displayedItemIndexForAnalytics];
    [v6 captureUserAction:6013 onTarget:v8 eventValue:0 transitStep:v9];
  }

  v10 = [(TransitDirectionsStepsListDataSource *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(TransitDirectionsStepsListDataSource *)self delegate];
    [v12 directionsStepsListDidTapShareButton:self];
  }
}

- (void)_transitDirectionsStepView:(id)a3 wantsToExpandOrCollapseItem:(id)a4 inListView:(id)a5
{
  v7 = a4;
  if (a5)
  {
    v8 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
    v9 = [v8 indexPathForItem:v7];

    if (v7 && v9)
    {
      self->_animatingExpansion = 1;
      v10 = [(TransitDirectionsStepsListDataSource *)self delegate];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        v12 = [(TransitDirectionsStepsListDataSource *)self delegate];
        [v12 transitDirectionsStepsListDataSource:self willExpandItem:v7];
      }

      [v7 setExpanded:{objc_msgSend(v7, "expanded") ^ 1}];
      v13 = [(TransitDirectionsStepsListDataSource *)self listView];
      v14 = [v9 section];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100E74D80;
      v18[3] = &unk_101661570;
      v18[4] = self;
      v19 = v7;
      [v13 reloadSectionAtIndex:v14 animated:1 completion:v18];
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

- (void)_transitDirectionsCell:(id)a3 wantsToExpandOrCollapseItem:(id)a4 inCollectionView:(id)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    v10 = [(TransitDirectionsStepsListDataSource *)self collectionView];
    v11 = [v10 indexPathForCell:v8];

    if (v9 && v11)
    {
      self->_animatingExpansion = 1;
      if (([v9 expanded] & 1) == 0)
      {
        v12 = [(TransitDirectionsStepsListDataSource *)self delegate];
        v13 = objc_opt_respondsToSelector();

        if (v13)
        {
          v14 = [(TransitDirectionsStepsListDataSource *)self delegate];
          [v14 transitDirectionsStepsListDataSource:self willExpandItem:v9];
        }
      }

      v15 = [(TransitDirectionsStepsListDataSource *)self collectionView];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100E7521C;
      v21[3] = &unk_101656A00;
      v21[4] = self;
      v22 = v11;
      v23 = v9;
      v24 = v8;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100E75904;
      v19[3] = &unk_101661570;
      v19[4] = self;
      v20 = v23;
      [v15 performBatchUpdates:v21 completion:v19];
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

- (void)_transitDirectionsCell:(id)a3 wantsToExpandOrCollapseItem:(id)a4 inTableView:(id)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    v10 = [(TransitDirectionsStepsListDataSource *)self tableView];
    v11 = [v10 indexPathForCell:v8];

    if (v9 && v11)
    {
      self->_animatingExpansion = 1;
      v12 = [(TransitDirectionsStepsListDataSource *)self delegate];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        v14 = [(TransitDirectionsStepsListDataSource *)self delegate];
        [v14 transitDirectionsStepsListDataSource:self willExpandItem:v9];
      }

      v15 = [(TransitDirectionsStepsListDataSource *)self tableView];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100E75D94;
      v21[3] = &unk_101656A00;
      v21[4] = self;
      v22 = v11;
      v23 = v9;
      v24 = v8;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100E76484;
      v19[3] = &unk_101661570;
      v19[4] = self;
      v20 = v23;
      [v15 performBatchUpdates:v21 completion:v19];
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

- (void)transitDirectionsCell:(id)a3 wantsToExpandOrCollapseItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 cell];
  v9 = [(TransitDirectionsStepsListDataSource *)self tableView];
  [(TransitDirectionsStepsListDataSource *)self _transitDirectionsCell:v8 wantsToExpandOrCollapseItem:v6 inTableView:v9];

  v10 = [v7 cell];
  v11 = [(TransitDirectionsStepsListDataSource *)self collectionView];
  [(TransitDirectionsStepsListDataSource *)self _transitDirectionsCell:v10 wantsToExpandOrCollapseItem:v6 inCollectionView:v11];

  v12 = [(TransitDirectionsStepsListDataSource *)self listView];
  [(TransitDirectionsStepsListDataSource *)self _transitDirectionsStepView:v7 wantsToExpandOrCollapseItem:v6 inListView:v12];
}

- (void)transitDirectionsCell:(id)a3 didTapAdvisory:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = +[MKMapService sharedService];
  v8 = [(TransitDirectionsStepsListDataSource *)self delegate];
  [v7 captureUserAction:250 onTarget:objc_msgSend(v8 forAdvisory:{"currentUITargetForAnalytics"), v6}];

  v9 = [(TransitDirectionsStepsListDataSource *)self delegate];
  LOBYTE(v8) = objc_opt_respondsToSelector();

  if (v8)
  {
    v10 = [(TransitDirectionsStepsListDataSource *)self delegate];
    [v10 transitDirectionsStepsListDataSource:self didTapIncidentsCell:v11 withAdvisory:v6];
  }
}

- (void)_configureSeparatorForCell:(id)a3 forRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v6 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsCell] || (objc_opt_respondsToSelector() & 1) == 0)
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

    v9 = [(TransitDirectionsStepsListDataSource *)self tableView];
    if (v9)
    {
      [(TransitDirectionsStepsListDataSource *)self tableView];
    }

    else
    {
      [(TransitDirectionsStepsListDataSource *)self collectionView];
    }
    v10 = ;
    v11 = [v10 numberOfSections];

    v12 = [(TransitDirectionsStepsListDataSource *)self tableView];
    if (v12)
    {
      v13 = [(TransitDirectionsStepsListDataSource *)self tableView];
      v14 = -[TransitDirectionsStepsListDataSource tableView:numberOfRowsInSection:](self, "tableView:numberOfRowsInSection:", v13, [v7 section]);
    }

    else
    {
      v13 = [(TransitDirectionsStepsListDataSource *)self collectionView];
      v14 = -[TransitDirectionsStepsListDataSource collectionView:numberOfItemsInSection:](self, "collectionView:numberOfItemsInSection:", v13, [v7 section]);
    }

    v15 = v14;

    v16 = (v15 - 1);
    v17 = [v7 row];
    v18 = [(TransitDirectionsStepsListDataSource *)self options];
    v19 = [(TransitDirectionsStepsListDataSource *)self _supportsFooterItem];
    v20 = 1;
    if ((v18 & 8) != 0 && v16 == v17)
    {
      v21 = -2;
      if (!v19)
      {
        v21 = -1;
      }

      v20 = &v11[v21] != [v7 section];
    }

    v22 = v6;
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

- (void)_configureFooterView:(id)a3
{
  route = self->_route;
  v9 = a3;
  v5 = [(GEOComposedRoute *)route ticketingSegmentsForSelectedRides];
  v6 = [v5 count];

  v7 = sub_10000FA08(v9) != 5;
  if (v6)
  {
    v8 = (2 * v7) | 4;
  }

  else
  {
    v8 = 2 * v7;
  }

  [v9 setVisibleCommandSet:v8];
  [v9 setDelegate:self];
}

- (id)_footerCellForIndexPath:(id)a3 inCollectionView:(id)a4
{
  v5 = [a4 dequeueReusableCellWithReuseIdentifier:@"TransitDirectionsListSharingIdentifier" forIndexPath:a3];
  v6 = [v5 footerView];
  [(TransitDirectionsStepsListDataSource *)self _configureFooterView:v6];

  return v5;
}

- (id)_footerCellForIndexPath:(id)a3 inTableView:(id)a4
{
  if (a4)
  {
    v5 = [a4 dequeueReusableCellWithIdentifier:@"TransitDirectionsListSharingIdentifier" forIndexPath:a3];
  }

  else
  {
    v5 = [[RoutePlanningFooterCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  }

  v6 = v5;
  [(RoutePlanningFooterCell *)v5 set_mapkit_separatorStyleOverride:0];
  v7 = [(RoutePlanningFooterCell *)v6 footerView];
  [(TransitDirectionsStepsListDataSource *)self _configureFooterView:v7];

  return v6;
}

- (_NSRange)_segementRangeForItemAtIndexPath:(id)a3
{
  v4 = a3;
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

        v12 = [*(*(&v22 + 1) + 8 * v11) rangeValue];
        v14 = v13;
        v15 = [v4 section];
        v17 = v15 >= v12 && v15 - v12 < v14;
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

- (int64_t)_cellNavStateForItem:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TransitDirectionsStepsListDataSource *)self activeItemIndexPath];
  if (v8)
  {
    v9 = [(TransitDirectionsStepsListDataSource *)self matchedLocation];
    v10 = [v9 _navigation_isStale];

    v11 = [v7 section];
    v12 = [v8 section];
    v13 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:v7];
    if (v11 != v12)
    {
      if ([v8 compare:v13] == 1)
      {
        v19 = [(TransitDirectionsStepsListDataSource *)self _segementRangeForItemAtIndexPath:v8];
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
            v26 = [v6 parentItem];
            v27 = v26 == 0;

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

    v14 = [v6 matchingRouteStepIndex];
    activeComposedRouteStepIndex = self->_activeComposedRouteStepIndex;
    v16 = [v6 parentItem];
    if (!v16)
    {
      goto LABEL_21;
    }

    v17 = v16;
    if ([v6 type] == 5 || objc_msgSend(v6, "type") == 14)
    {
    }

    else
    {
      v28 = [v6 type];

      if (v28 != 6)
      {
        goto LABEL_21;
      }
    }

    if (v14 <= activeComposedRouteStepIndex)
    {
      if (v10)
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
    if (v10)
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

- (void)_cacheHeightForRow:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:a4];
  v8 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v7];
  if (v8)
  {
    v9 = [(TransitDirectionsStepsListDataSource *)self estimatedHeightsByItem];
    [v6 bounds];
    v10 = [NSNumber numberWithDouble:CGRectGetHeight(v20)];
    [v9 setObject:v10 forKey:v8];
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
    v9 = sub_10006D178();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v10 = +[NSThread callStackSymbols];
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
LABEL_3:

LABEL_4:
  }
}

- (void)tableViewDidFinishReload:(id)a3
{
  v4 = a3;
  if (self->_routeSetAwaitingTableViewReload)
  {
    self->_routeSetAwaitingTableViewReload = 0;
    v14 = v4;
    [v4 contentOffset];
    v6 = v5;
    v8 = v7;
    v9 = [(TransitDirectionsStepsListDataSource *)self tableView];
    v10 = [v9 safeAreaLayoutGuide];
    [v10 layoutFrame];
    v11 = -CGRectGetMinY(v16);
    v12 = v6 == 0.0 && v8 == v11;
    if (v12 || [v14 numberOfSections] < 1)
    {
    }

    else
    {
      v13 = [v14 numberOfRowsInSection:0];

      v4 = v14;
      if (v13 < 1)
      {
        goto LABEL_11;
      }

      v9 = [NSIndexPath indexPathForRow:0 inSection:0];
      [v14 scrollToRowAtIndexPath:v9 atScrollPosition:1 animated:0];
    }

    v4 = v14;
  }

LABEL_11:
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TransitDirectionsStepsListDataSource *)self _additionalSelectionIndexPathsForIndexPath:v7];
  v9 = sub_10000FA08(v6);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = [v6 indexPathsForSelectedRows];
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * v14);
        if (v9 != 5 || ([*(*(&v28 + 1) + 8 * v14) isEqual:v7] & 1) == 0 && (objc_msgSend(v8, "containsObject:", v15) & 1) == 0)
        {
          [v6 deselectRowAtIndexPath:v15 animated:v9 != 5];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }

  v16 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:v7];
  v17 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v16];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v8 firstObject];
    if ([v18 compare:v16] == -1)
    {
      v19 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v18];

      v17 = v19;
    }

    v17 = v17;
    if ([v17 type] == 3 && (-[TransitDirectionsStepsListDataSource delegate](self, "delegate"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_opt_respondsToSelector(), v20, (v21 & 1) != 0))
    {
      v22 = [(TransitDirectionsStepsListDataSource *)self delegate];
      [v22 transitDirectionsStepsListDataSource:self didSelectTrip:v17];
    }

    else if ([v17 type] == 4 && (-[TransitDirectionsStepsListDataSource delegate](self, "delegate"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_opt_respondsToSelector(), v23, (v24 & 1) != 0))
    {
      v22 = [v6 cellForRowAtIndexPath:v16];
      v25 = [v22 stepView];
      [(TransitDirectionsStepsListDataSource *)self transitDirectionsClusteredVehiclesCellDidTapAlternateRouteButtonInCell:v25];
    }

    else
    {
      v26 = [(TransitDirectionsStepsListDataSource *)self delegate];
      v27 = objc_opt_respondsToSelector();

      if ((v27 & 1) == 0)
      {
LABEL_24:

        goto LABEL_25;
      }

      v22 = [(TransitDirectionsStepsListDataSource *)self delegate];
      [v22 transitDirectionsStepsListDataSource:self didTapRowForItem:v17];
    }

    goto LABEL_24;
  }

LABEL_25:
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
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
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v6 selectRowAtIndexPath:*(*(&v14 + 1) + 8 * i) animated:0 scrollPosition:0];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)tableView:(id)a3 didUnhighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:a4];
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

        v13 = [v6 cellForRowAtIndexPath:*(*(&v14 + 1) + 8 * v12)];
        [v13 setHighlighted:0];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)tableView:(id)a3 didHighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = [(TransitDirectionsStepsListDataSource *)self _additionalSelectionIndexPathsForIndexPath:a4];
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

        v12 = [v6 cellForRowAtIndexPath:*(*(&v13 + 1) + 8 * v11)];
        [v12 setHighlighted:1];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v5 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:a4];
  v6 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v5];
  v7 = [(TransitDirectionsStepsListDataSource *)self estimatedHeightsByItem];
  v8 = [v7 objectForKey:v6];

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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TransitDirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:v7];
  v9 = [(TransitDirectionsStepsListDataSource *)self listItemForIndexPath:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [TransitDirectionsCell dequeueCellForListItem:v9 fromTableView:v6 atIndexPath:v7];
    if ([v10 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsExpandableCell])
    {
      [v10 setExpandableCellDelegate:self];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 stepView];
      [v11 setBoardingInfoDelegate:self];
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
        [v10 setDisplayOptions:{-[TransitDirectionsStepsListDataSource _stepViewDisplayOptionsForSection:](self, "_stepViewDisplayOptionsForSection:", objc_msgSend(v7, "section"))}];
        [v10 configureWithItem:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v10 stepView];
          if ([v7 row] <= 0)
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

          if ([v7 row] >= 1)
          {
            v13 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v7 row] - 1, objc_msgSend(v7, "section"));
            v14 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
            v15 = [v14 itemAtIndexPath:v13];

            [v12 setPreviousItem:v15 withPreviousNavigationState:{-[TransitDirectionsStepsListDataSource _cellNavStateForItem:atIndexPath:](self, "_cellNavStateForItem:atIndexPath:", v15, v13)}];
          }
        }

        [v10 setNavigationState:{-[TransitDirectionsStepsListDataSource _cellNavStateForItem:atIndexPath:](self, "_cellNavStateForItem:atIndexPath:", v9, v7)}];
        if (v10)
        {
          goto LABEL_26;
        }

        goto LABEL_19;
      }

      v11 = [v10 stepView];
      [v11 setDelegate:self];
    }

    goto LABEL_11;
  }

  if ([v9 isEqual:@"TransitDirectionsListSharingIdentifier"])
  {
    v10 = [(TransitDirectionsStepsListDataSource *)self _footerCellForIndexPath:v7 inTableView:v6];
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
  [(TransitDirectionsStepsListDataSource *)self _configureSeparatorForCell:v10 forRowAtIndexPath:v7];
LABEL_27:

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
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

    return [(TransitDirectionsStepsListDataSource *)self _numberOfRowsInSection:a4];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if ([(TransitDirectionsStepsListDataSource *)self shouldFlattenToSingleSection])
  {
    return 1;
  }

  return [(TransitDirectionsStepsListDataSource *)self _numberOfSections];
}

- (void)_resetRowHeightCache
{
  v2 = [(TransitDirectionsStepsListDataSource *)self estimatedHeightsByItem];
  [v2 removeAllObjects];
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

- (unint64_t)_stepViewDisplayOptionsForSection:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
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
    v7 = [(TransitDirectionsStepsListDataSource *)self displayedItemIndex];
    v3 = 2;
    if (v7 == a3)
    {
      return 3;
    }
  }

  return v3;
}

- (void)_updateDisplayStyleInVisibleCells
{
  v3 = [(TransitDirectionsStepsListDataSource *)self collectionView];

  if (!v3)
  {
    v11 = [(TransitDirectionsStepsListDataSource *)self tableView];

    if (v11)
    {
      v12 = [(TransitDirectionsStepsListDataSource *)self tableView];
      v13 = [v12 visibleCells];

      v14 = [(TransitDirectionsStepsListDataSource *)self tableView];
      v15 = [v14 indexPathsForVisibleRows];

      v16 = sub_100E74344();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
LABEL_33:

        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_100E78968;
        v38[3] = &unk_1016569B0;
        v39 = v15;
        v40 = self;
        v35 = v15;
        [v13 enumerateObjectsUsingBlock:v38];
        v36 = v39;
        goto LABEL_34;
      }

      v17 = self;
      if (!v17)
      {
        v22 = @"<nil>";
        goto LABEL_32;
      }

      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      if (objc_opt_respondsToSelector())
      {
        v20 = [(TransitDirectionsStepsListDataSource *)v17 performSelector:"accessibilityIdentifier"];
        v21 = v20;
        if (v20 && ![v20 isEqualToString:v19])
        {
          v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

          goto LABEL_18;
        }
      }

      v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_18:

LABEL_32:
      *buf = 138543362;
      v45 = v22;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[%{public}@] Updating displayStyle in individual cells in table view", buf, 0xCu);

      goto LABEL_33;
    }

    v23 = [(TransitDirectionsStepsListDataSource *)self listView];

    if (!v23)
    {
      return;
    }

    v24 = [(TransitDirectionsStepsListDataSource *)self listView];
    v13 = [v24 allStepViews];

    v25 = sub_100E74344();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
LABEL_40:

      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100E78A60;
      v37[3] = &unk_1016569D8;
      v37[4] = self;
      [v13 enumerateObjectsUsingBlock:v37];
      goto LABEL_35;
    }

    v26 = self;
    if (!v26)
    {
      v31 = @"<nil>";
      goto LABEL_39;
    }

    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    if (objc_opt_respondsToSelector())
    {
      v29 = [(TransitDirectionsStepsListDataSource *)v26 performSelector:"accessibilityIdentifier"];
      v30 = v29;
      if (v29 && ![v29 isEqualToString:v28])
      {
        v31 = [NSString stringWithFormat:@"%@<%p, %@>", v28, v26, v30];

        goto LABEL_27;
      }
    }

    v31 = [NSString stringWithFormat:@"%@<%p>", v28, v26];
LABEL_27:

LABEL_39:
    *buf = 138543362;
    v45 = v31;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "[%{public}@] Updating displayStyle in individual step views in list view", buf, 0xCu);

    goto LABEL_40;
  }

  v4 = sub_100E74344();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = self;
    if (!v5)
    {
      v10 = @"<nil>";
      goto LABEL_29;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(TransitDirectionsStepsListDataSource *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_9;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_9:

LABEL_29:
    *buf = 138543362;
    v45 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] Updating displayStyle in individual visible cells in collection view", buf, 0xCu);
  }

  v32 = [(TransitDirectionsStepsListDataSource *)self collectionView];
  v13 = [v32 visibleCells];

  v33 = [(TransitDirectionsStepsListDataSource *)self collectionView];
  v34 = [v33 indexPathsForVisibleItems];

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100E78870;
  v41[3] = &unk_1016568E8;
  v42 = v34;
  v43 = self;
  v35 = v34;
  [v13 enumerateObjectsUsingBlock:v41];
  v36 = v42;
LABEL_34:

LABEL_35:
}

- (void)_setUseCollapsedDisplayStyle:(BOOL)a3
{
  self->_useCollapsedDisplayStyle = a3;
  [(TransitDirectionsStepsListDataSource *)self _updateDisplayStyleInVisibleCells];
  v4 = [(TransitDirectionsStepsListDataSource *)self _scrollView];
  [v4 layoutBelowIfNeeded];

  v5 = [(TransitDirectionsStepsListDataSource *)self listView];
  [v5 reloadSeparators];
}

- (void)setUseCollapsedDisplayStyle:(BOOL)a3
{
  if (self->_useCollapsedDisplayStyle != a3)
  {
    [(TransitDirectionsStepsListDataSource *)self _setUseCollapsedDisplayStyle:?];
  }
}

- (void)setMatchedLocation:(id)a3
{
  v4 = a3;
  v5 = [(TransitDirectionsStepsListDataSource *)self matchedLocationThrottler];
  [v5 setValue:v4];
}

- (MNLocation)matchedLocation
{
  v2 = [(TransitDirectionsStepsListDataSource *)self matchedLocationThrottler];
  v3 = [v2 value];

  return v3;
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
  v2 = [(TransitDirectionsStepsListDataSource *)self displayedItemIndex];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [NSNumber numberWithUnsignedInteger:v2];
  }

  return v3;
}

- (unint64_t)indexOfItem:(id)a3
{
  v4 = a3;
  v5 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  v6 = [v5 indexPathForItem:v4];

  v7 = [v6 section];
  return v7;
}

- (unint64_t)displayedItemIndex
{
  v2 = [(TransitDirectionsStepsListDataSource *)self displayedItemIndexPath];
  v3 = [v2 section];

  return v3;
}

- (GEOComposedRouteStep)displayedComposedRouteStep
{
  v3 = [(TransitDirectionsStepsListDataSource *)self _displayedItem];
  v4 = [v3 matchingRouteStep];
  if (!v4 && [v3 type])
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(TransitDirectionsStepsListDataSource *)self activeItemIndexPath];
      v8 = [NSString stringWithFormat:@"No step found for updated matched index path %@", v7];
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

  return v4;
}

- (id)_displayedItem
{
  v3 = [(TransitDirectionsStepsListDataSource *)self displayedItemIndexPath];

  if (v3)
  {
    v4 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
    v5 = [(TransitDirectionsStepsListDataSource *)self displayedItemIndexPath];
    v6 = [v4 itemAtIndexPath:v5];

    v7 = [v6 parentItem];

    if (v7)
    {
      v8 = [v6 parentItem];

      v6 = v8;
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
  v2 = [(TransitDirectionsStepsListDataSource *)self activeItemIndexPath];
  v3 = [v2 section];

  return v3;
}

- (GEOComposedRouteStep)activeComposedRouteStep
{
  v3 = [(TransitDirectionsStepsListDataSource *)self _activeItem];
  v4 = [v3 matchingRouteStep];
  if (!v4 && [v3 type])
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(TransitDirectionsStepsListDataSource *)self activeItemIndexPath];
      v8 = [NSString stringWithFormat:@"No step found for updated matched index path %@", v7];
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

  return v4;
}

- (id)_activeItem
{
  v3 = [(TransitDirectionsStepsListDataSource *)self activeItemIndexPath];

  if (v3)
  {
    v4 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
    v5 = [(TransitDirectionsStepsListDataSource *)self activeItemIndexPath];
    v6 = [v4 itemAtIndexPath:v5];

    v7 = [v6 parentItem];

    if (v7)
    {
      v8 = [v6 parentItem];

      v6 = v8;
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
  v14 = [(TransitDirectionsStepsListDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(TransitDirectionsStepsListDataSource *)self displayedItemIndexPath];

    if (!v3)
    {
      return;
    }

    v4 = [(TransitDirectionsStepsListDataSource *)self displayedComposedRouteStep];
    if (!v4)
    {
      goto LABEL_18;
    }

    v5 = sub_100E74344();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_17:

      v13 = [(TransitDirectionsStepsListDataSource *)self delegate];
      [v13 transitDirectionsStepsListDataSource:self didUpdateDisplayedGuidanceStep:v4];

LABEL_18:
      return;
    }

    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_16;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(TransitDirectionsStepsListDataSource *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_11;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_11:

LABEL_16:
    displayedComposedRouteStepIndex = v6->_displayedComposedRouteStepIndex;
    *buf = 138543874;
    v16 = v11;
    v17 = 2048;
    v18 = displayedComposedRouteStepIndex;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Notifying delegate of updated DISPLAYED (parent) route step for index %lu: %@", buf, 0x20u);

    goto LABEL_17;
  }
}

- (void)_notifyDelegateOfUpdatedActiveStep
{
  v14 = [(TransitDirectionsStepsListDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(TransitDirectionsStepsListDataSource *)self activeItemIndexPath];

    if (!v3)
    {
      return;
    }

    v4 = [(TransitDirectionsStepsListDataSource *)self activeComposedRouteStep];
    if (!v4)
    {
      goto LABEL_18;
    }

    v5 = sub_100E74344();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_17:

      v13 = [(TransitDirectionsStepsListDataSource *)self delegate];
      [v13 transitDirectionsStepsListDataSource:self didUpdateActiveGuidanceStep:v4];

LABEL_18:
      return;
    }

    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_16;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(TransitDirectionsStepsListDataSource *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_11;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_11:

LABEL_16:
    activeComposedRouteStepIndex = v6->_activeComposedRouteStepIndex;
    *buf = 138543874;
    v16 = v11;
    v17 = 2048;
    v18 = activeComposedRouteStepIndex;
    v19 = 2112;
    v20 = v4;
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
  v8 = [(TransitDirectionsStepsListDataSource *)self displayedItemIndexPath];
  v9 = [v8 section];
  v10 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  v11 = [v10 numberOfItemsInSection:v9];

  if (v11 < 1)
  {
    v19 = height;
  }

  else
  {
    for (i = 0; i != v11; ++i)
    {
      v13 = [NSIndexPath indexPathForRow:i inSection:v9];
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

- (id)_itemIndexPathForStepIndex:(unint64_t)a3
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && [(GEOComposedRoute *)self->_route stepsCount]> a3)
  {
    v5 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
    v6 = [v5 numberOfSections];

    if (v6 >= 1)
    {
      v7 = 0;
      v8 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
      v25 = v6;
      do
      {
        v9 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
        v10 = [v9 numberOfItemsInSection:v7 includingHiddenSubitems:1];

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
              if ([v15 matchingRouteStepIndex] == a3)
              {
LABEL_23:

                goto LABEL_31;
              }

              v30 = 0u;
              v31 = 0u;
              v28 = 0u;
              v29 = 0u;
              v16 = [v15 composedRouteSteps];
              v17 = [v16 countByEnumeratingWithState:&v28 objects:v38 count:16];
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
                      objc_enumerationMutation(v16);
                    }

                    if ([*(*(&v28 + 1) + 8 * i) stepIndex] == a3)
                    {

                      goto LABEL_23;
                    }
                  }

                  v18 = [v16 countByEnumeratingWithState:&v28 objects:v38 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }

              v6 = v25;
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

      while (v7 != v6);
    }

    if (a3)
    {
      v13 = [(TransitDirectionsStepsListDataSource *)self _itemIndexPathForStepIndex:a3 - 1];
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

    v20 = self;
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    if (objc_opt_respondsToSelector())
    {
      v23 = [(TransitDirectionsStepsListDataSource *)v20 performSelector:"accessibilityIdentifier"];
      v24 = v23;
      if (v23 && ![v23 isEqualToString:v22])
      {
        v25 = [NSString stringWithFormat:@"%@<%p, %@>", v22, v20, v24];

        goto LABEL_27;
      }
    }

    v25 = [NSString stringWithFormat:@"%@<%p>", v22, v20];
LABEL_27:

    *buf = 138543362;
    v35 = v25;
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

    v13 = self;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(TransitDirectionsStepsListDataSource *)v13 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

        goto LABEL_20;
      }
    }

    v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_20:

    v19 = [(GEOComposedRoute *)v13->_route stepsCount];
    *buf = 138543874;
    v35 = v18;
    v36 = 2048;
    v37 = displayedComposedRouteStepIndex;
    v38 = 2048;
    *v39 = v19;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Displayed step index %lu is out of bounds %lu", buf, 0x20u);

    goto LABEL_28;
  }

  v5 = [(TransitDirectionsStepsListDataSource *)self _itemIndexPathForStepIndex:displayedComposedRouteStepIndex];
  if (!v5)
  {
    v30 = sub_10006D178();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [NSString stringWithFormat:@"No indexPath found for displayed step with index %lu", displayedComposedRouteStepIndex];
      *buf = 136316162;
      v35 = "[TransitDirectionsStepsListDataSource _refreshDisplayedItemIndexPath]";
      v36 = 2080;
      v37 = "TransitDirectionsStepsListDataSource.m";
      v38 = 1024;
      *v39 = 1043;
      *&v39[4] = 2080;
      *&v39[6] = "indexPath != nil";
      v40 = 2112;
      v41 = v31;
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
    v7 = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(TransitDirectionsStepsListDataSource *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_13;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_13:

    *buf = 138543874;
    v35 = v12;
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

- (void)setDisplayedComposedRouteStepIndex:(unint64_t)a3
{
  if (self->_displayedComposedRouteStepIndex != a3)
  {
    if (![(TransitDirectionsStepsListDataSource *)self enableNavigationUpdates]|| [(DirectionsStepsListNavigationProvider *)self->_navigationProvider displayedStepIndex]== a3)
    {
      v5 = sub_100E74344();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
LABEL_11:

        self->_displayedComposedRouteStepIndex = a3;
        [(TransitDirectionsStepsListDataSource *)self _refreshDisplayedItemIndexPath];
        return;
      }

      v6 = self;
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      if (objc_opt_respondsToSelector())
      {
        v9 = [(TransitDirectionsStepsListDataSource *)v6 performSelector:"accessibilityIdentifier"];
        v10 = v9;
        if (v9 && ![v9 isEqualToString:v8])
        {
          v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

          goto LABEL_10;
        }
      }

      v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_10:

      displayedComposedRouteStepIndex = self->_displayedComposedRouteStepIndex;
      *buf = 138543874;
      v21 = v11;
      v22 = 2048;
      v23 = displayedComposedRouteStepIndex;
      v24 = 2048;
      v25 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Displayed step index changed from %lu to %lu", buf, 0x20u);

      goto LABEL_11;
    }

    v13 = sub_100E74344();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    v14 = self;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(TransitDirectionsStepsListDataSource *)v14 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

        goto LABEL_18;
      }
    }

    v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_18:

    *buf = 138543618;
    v21 = v19;
    v22 = 2048;
    v23 = a3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}@] Updating navigation provider with updated displayed step index %lu", buf, 0x16u);

LABEL_19:
    [(DirectionsStepsListNavigationProvider *)self->_navigationProvider setDisplayedStepIndex:a3];
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

    v20 = self;
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    if (objc_opt_respondsToSelector())
    {
      v23 = [(TransitDirectionsStepsListDataSource *)v20 performSelector:"accessibilityIdentifier"];
      v24 = v23;
      if (v23 && ![v23 isEqualToString:v22])
      {
        v25 = [NSString stringWithFormat:@"%@<%p, %@>", v22, v20, v24];

        goto LABEL_25;
      }
    }

    v25 = [NSString stringWithFormat:@"%@<%p>", v22, v20];
LABEL_25:

    *buf = 138543362;
    v35 = v25;
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

    v13 = self;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(TransitDirectionsStepsListDataSource *)v13 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

        goto LABEL_18;
      }
    }

    v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_18:

    v19 = [(GEOComposedRoute *)v13->_route stepsCount];
    *buf = 138543874;
    v35 = v18;
    v36 = 2048;
    v37 = activeComposedRouteStepIndex;
    v38 = 2048;
    *v39 = v19;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Active step index %lu is out of bounds %lu", buf, 0x20u);

    goto LABEL_26;
  }

  v5 = [(TransitDirectionsStepsListDataSource *)self _itemIndexPathForStepIndex:activeComposedRouteStepIndex];
  if (!v5)
  {
    v30 = sub_10006D178();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [NSString stringWithFormat:@"No indexPath found for active step with index %lu", activeComposedRouteStepIndex];
      *buf = 136316162;
      v35 = "[TransitDirectionsStepsListDataSource _refreshActiveItemIndexPath]";
      v36 = 2080;
      v37 = "TransitDirectionsStepsListDataSource.m";
      v38 = 1024;
      *v39 = 984;
      *&v39[4] = 2080;
      *&v39[6] = "indexPath != nil";
      v40 = 2112;
      v41 = v31;
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
    v7 = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(TransitDirectionsStepsListDataSource *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_11;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_11:

    *buf = 138543874;
    v35 = v12;
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

- (void)setActiveComposedRouteStepIndex:(unint64_t)a3
{
  activeComposedRouteStepIndex = self->_activeComposedRouteStepIndex;
  if (activeComposedRouteStepIndex != a3)
  {
    v6 = sub_100E74344();
    v7 = v6;
    if (a3 == 0x7FFFFFFFFFFFFFFFLL && activeComposedRouteStepIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
LABEL_11:

        return;
      }

      v8 = self;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      if (objc_opt_respondsToSelector())
      {
        v11 = [(TransitDirectionsStepsListDataSource *)v8 performSelector:"accessibilityIdentifier"];
        v12 = v11;
        if (v11 && ![v11 isEqualToString:v10])
        {
          v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

          goto LABEL_10;
        }
      }

      v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_10:

      *buf = 138543362;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "[%{public}@] Suppressing attempt to set matched step index to NSNotFound", buf, 0xCu);

      goto LABEL_11;
    }

    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    v14 = self;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(TransitDirectionsStepsListDataSource *)v14 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

        goto LABEL_18;
      }
    }

    v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_18:

    v20 = self->_activeComposedRouteStepIndex;
    *buf = 138543874;
    v22 = v19;
    v23 = 2048;
    v24 = v20;
    v25 = 2048;
    v26 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Active step index changed from %lu to %lu", buf, 0x20u);

LABEL_19:
    self->_activeComposedRouteStepIndex = a3;
    [(TransitDirectionsStepsListDataSource *)self _refreshActiveItemIndexPath];
    [(TransitDirectionsStepsListDataSource *)self _refreshDisplayedItemIndexPath];
  }
}

- (void)navigationProvider:(id)a3 didReceiveRealtimeUpdates:(id)a4
{
  v5 = a4;
  [PPTNotificationCenter postNotificationIfNeededWithName:@"MapsTestingTransitRouteUpdateWillUpdateRoute" object:0 userInfo:0];
  v6 = [(TransitDirectionsStepsListDataSource *)self route];
  [v6 applyUpdatesToTransitRoute:v5];

  [PPTNotificationCenter postNotificationIfNeededWithName:@"MapsTestingTransitRouteUpdateDidUpdateRoute" object:0 userInfo:0];
}

- (void)navigationProvider:(id)a3 didUpdateDisplayedStepIndex:(unint64_t)a4
{
  v6 = self->_displayedItemIndexPath;
  v7 = sub_100E74344();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = self;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(TransitDirectionsStepsListDataSource *)v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_7;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_7:

    activeComposedRouteStepIndex = v8->_activeComposedRouteStepIndex;
    displayedComposedRouteStepIndex = v8->_displayedComposedRouteStepIndex;
    *buf = 138544130;
    v17 = v13;
    v18 = 2048;
    v19 = a4;
    v20 = 2048;
    v21 = displayedComposedRouteStepIndex;
    v22 = 2048;
    v23 = activeComposedRouteStepIndex;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Displayed step index did change to %lu (previous: %lu, activeStepIndex: %lu)", buf, 0x2Au);
  }

  [(TransitDirectionsStepsListDataSource *)self setDisplayedComposedRouteStepIndex:a4];
  [(TransitDirectionsStepsListDataSource *)self _scrollToDisplayedItemIfNeeded:v6 animated:1];
}

- (void)navigationProvider:(id)a3 didUpdateActiveStepIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = sub_100E74344();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
LABEL_30:

      goto LABEL_31;
    }

    v9 = self;
    if (!v9)
    {
      v14 = @"<nil>";
      goto LABEL_29;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(TransitDirectionsStepsListDataSource *)v9 performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        v14 = [NSString stringWithFormat:@"%@<%p, %@>", v11, v9, v13];

        goto LABEL_9;
      }
    }

    v14 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_9:

LABEL_29:
    *buf = 138543362;
    v32 = v14;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] Auto-advance step index is NSNotFound, meaning no matched step. Ignore it and maintain what we have.", buf, 0xCu);

    goto LABEL_30;
  }

  if ([v6 displayedStepIndex] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v7, "displayedStepIndex") <= a4)
  {
    v24 = sub_100E74344();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
LABEL_36:

      self->_activeComposedRouteStepIndex = a4;
      [v7 setDisplayedStepIndex:0x7FFFFFFFFFFFFFFFLL];
      goto LABEL_31;
    }

    v25 = self;
    if (!v25)
    {
      v30 = @"<nil>";
      goto LABEL_35;
    }

    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    if (objc_opt_respondsToSelector())
    {
      v28 = [(TransitDirectionsStepsListDataSource *)v25 performSelector:"accessibilityIdentifier"];
      v29 = v28;
      if (v28 && ![v28 isEqualToString:v27])
      {
        v30 = [NSString stringWithFormat:@"%@<%p, %@>", v27, v25, v29];

        goto LABEL_27;
      }
    }

    v30 = [NSString stringWithFormat:@"%@<%p>", v27, v25];
LABEL_27:

LABEL_35:
    *buf = 138543874;
    v32 = v30;
    v33 = 2048;
    v34 = a4;
    v35 = 2048;
    v36 = [v7 displayedStepIndex];
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[%{public}@] Auto-advance step index %lu has caught up to manually-selected step index %lu", buf, 0x20u);

    goto LABEL_36;
  }

  activeComposedRouteStepIndex = self->_activeComposedRouteStepIndex;
  v16 = [(TransitDirectionsStepsListDataSource *)self displayedItemIndexPath];
  v17 = sub_100E74344();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = self;
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    if (objc_opt_respondsToSelector())
    {
      v21 = [(TransitDirectionsStepsListDataSource *)v18 performSelector:"accessibilityIdentifier"];
      v22 = v21;
      if (v21 && ![v21 isEqualToString:v20])
      {
        v23 = [NSString stringWithFormat:@"%@<%p, %@>", v20, v18, v22];

        goto LABEL_18;
      }
    }

    v23 = [NSString stringWithFormat:@"%@<%p>", v20, v18];
LABEL_18:

    *buf = 138544130;
    v32 = v23;
    v33 = 2048;
    v34 = a4;
    v35 = 2048;
    v36 = activeComposedRouteStepIndex;
    v37 = 2048;
    v38 = [v7 displayedStepIndex];
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}@] Auto-advanced to step index %lu (previous: %lu, displayedStepIndex: %lu)", buf, 0x2Au);
  }

  [(TransitDirectionsStepsListDataSource *)self setActiveComposedRouteStepIndex:a4];
  [(TransitDirectionsStepsListDataSource *)self _scrollToDisplayedItemIfNeeded:v16 animated:1];

LABEL_31:
}

- (void)navigationProvider:(id)a3 didUpdateRoute:(id)a4
{
  v6 = a3;
  [(TransitDirectionsStepsListDataSource *)self setRoute:a4];
  -[TransitDirectionsStepsListDataSource navigationProvider:didUpdateActiveStepIndex:](self, "navigationProvider:didUpdateActiveStepIndex:", v6, [v6 activeStepIndex]);
  -[TransitDirectionsStepsListDataSource navigationProvider:didUpdateDisplayedStepIndex:](self, "navigationProvider:didUpdateDisplayedStepIndex:", v6, [v6 displayedStepIndex]);
}

- (void)navigationProvider:(id)a3 didChangeToNavigating:(BOOL)a4 withRoute:(id)a5
{
  if (a4)
  {
    [(TransitDirectionsStepsListDataSource *)self navigationProvider:a3 didUpdateRoute:a5];
  }
}

- (void)setEnableNavigationUpdates:(BOOL)a3
{
  if (self->_enableNavigationUpdates != a3)
  {
    self->_enableNavigationUpdates = a3;
    if (a3)
    {
      v4 = [[DirectionsStepsListNavigationProvider alloc] initWithDelegate:self];
      navigationProvider = self->_navigationProvider;
      self->_navigationProvider = v4;

      v6 = self->_navigationProvider;
      v7 = [(DirectionsStepsListNavigationProvider *)v6 isNavigating];
      v8 = [(DirectionsStepsListNavigationProvider *)self->_navigationProvider route];
      [(TransitDirectionsStepsListDataSource *)self navigationProvider:v6 didChangeToNavigating:v7 withRoute:v8];
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

      v10 = [(GEOComposedRoute *)self->_route transitDirectionsStepsListDataProvider];
      dataProvider = self->_dataProvider;
      self->_dataProvider = v10;

      [(TransitDirectionsStepsListDataSource *)self setActiveComposedRouteStepIndex:0x7FFFFFFFFFFFFFFFLL];
      [(TransitDirectionsStepsListDataSource *)self setDisplayedComposedRouteStepIndex:0x7FFFFFFFFFFFFFFFLL];
    }

    [(TransitDirectionsStepsListDataSource *)self _reloadListViewForRouteChange];
  }
}

- (void)composedRoute:(id)a3 appliedTransitRouteUpdates:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E7BB34;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)composedRoute:(id)a3 changedSelectedRideInClusteredSegment:(id)a4 fromIndex:(unint64_t)a5 toIndex:(unint64_t)a6
{
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, self);
  v10 = &_dispatch_main_q;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v18 = sub_100E7BD24;
  v19 = &unk_101661340;
  objc_copyWeak(&v21, &location);
  v11 = v9;
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

- (void)_expandItemsAtIndices:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100E7BDF8;
  v3[3] = &unk_101656938;
  v3[4] = self;
  [a3 enumerateIndexesUsingBlock:v3];
}

- (id)_expandedItemsIndices
{
  v3 = +[NSMutableIndexSet indexSet];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  v5 = [v4 items];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem] && objc_msgSend(v11, "expanded"))
        {
          [v3 addIndex:v8];
        }

        ++v8;
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(TransitDirectionsStepsListDataSource *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] rebuildItems", buf, 0xCu);
  }

  v10 = [(TransitDirectionsStepsListDataSource *)self _expandedItemsIndices];
  v11 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  [v11 forceRebuild];

  [(TransitDirectionsStepsListDataSource *)self _expandItemsAtIndices:v10];
}

- (void)updateForClusteredLegSelectedRideIndexChange
{
  v3 = sub_100E74344();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(TransitDirectionsStepsListDataSource *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] updateForClusteredLegSelectedRideIndexChanage", buf, 0xCu);
  }

  [(TransitDirectionsStepsListDataSource *)self _rebuildItems];
}

- (void)_refreshItemInstructionStrings
{
  v3 = sub_100E74344();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(TransitDirectionsStepsListDataSource *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] refreshItemInstructionStrings", buf, 0xCu);
  }

  [(TransitDirectionsStepsListDataSource *)self _rebuildItems];
}

- (void)expandAllItems
{
  v3 = sub_100E74344();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(TransitDirectionsStepsListDataSource *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] Expand all items", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  v11 = [v10 items];

  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        if ([v16 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem])
        {
          [v16 setExpanded:1];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v17 = [(TransitDirectionsStepsListDataSource *)self tableView];
  [v17 reloadData];

  v18 = [(TransitDirectionsStepsListDataSource *)self collectionView];
  [v18 reloadData];

  v19 = [(TransitDirectionsStepsListDataSource *)self listView];
  [v19 reloadData];
}

- (void)collapseAllItems
{
  v3 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  v4 = [v3 hasBuiltItems];

  if (!v4)
  {
    return;
  }

  v5 = sub_100E74344();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_11;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(TransitDirectionsStepsListDataSource *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_9;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_9:

LABEL_11:
    *buf = 138543362;
    v28 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Collapse all items", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  v13 = [v12 items];

  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        if ([v18 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem])
        {
          [v18 setExpanded:0];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  v19 = [(TransitDirectionsStepsListDataSource *)self tableView];
  [v19 reloadData];

  v20 = [(TransitDirectionsStepsListDataSource *)self collectionView];
  [v20 reloadData];

  v21 = [(TransitDirectionsStepsListDataSource *)self listView];
  [v21 reloadData];
}

- (BOOL)hasIncidentItems
{
  v2 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  v3 = [v2 hasIncidentItems];

  return v3;
}

- (NSArray)transitSegmentSectionRanges
{
  v2 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  v3 = [v2 segmentRanges];

  return v3;
}

- (id)_indexPathFromFlatIndexPath:(id)a3
{
  v4 = a3;
  if ([(TransitDirectionsStepsListDataSource *)self shouldFlattenToSingleSection])
  {
    v5 = [v4 row];
    v6 = [(TransitDirectionsStepsListDataSource *)self _numberOfSections];
    if (!v6)
    {
LABEL_6:
      v10 = 0;
      goto LABEL_10;
    }

    v7 = v6;
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
    v11 = v4;
  }

  v10 = v11;
LABEL_10:

  return v10;
}

- (id)_flatIndexFromIndexPath:(id)a3
{
  v4 = a3;
  if ([(TransitDirectionsStepsListDataSource *)self shouldFlattenToSingleSection])
  {
    v5 = [v4 row];
    v6 = [v4 section];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v5 = &v5[[(TransitDirectionsStepsListDataSource *)self _numberOfRowsInSection:i]];
      }
    }

    v9 = [NSIndexPath indexPathForRow:v5 inSection:0];
  }

  else
  {
    v9 = v4;
  }

  v10 = v9;

  return v10;
}

- (unint64_t)_numberOfRowsInSection:(unint64_t)a3
{
  v5 = [(TransitDirectionsStepsListDataSource *)self _numberOfSections];
  if ([(TransitDirectionsStepsListDataSource *)self _supportsFooterItem]&& ([(TransitDirectionsStepsListDataSource *)self options]& 8) != 0 && v5 - 1 == a3)
  {
    return 1;
  }

  v7 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  v8 = [v7 numberOfItemsInSection:a3];

  return v8;
}

- (unint64_t)_numberOfSections
{
  v3 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  v4 = [v3 numberOfSections];

  if ([(TransitDirectionsStepsListDataSource *)self _supportsFooterItem])
  {
    v4 += ([(TransitDirectionsStepsListDataSource *)self options]>> 3) & 1;
  }

  return v4;
}

- (id)listItemForIndexPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(TransitDirectionsStepsListDataSource *)self _numberOfSections];
    if (-[TransitDirectionsStepsListDataSource _supportsFooterItem](self, "_supportsFooterItem") && (-[TransitDirectionsStepsListDataSource options](self, "options") & 8) != 0 && (v5 - 1) == [v4 section])
    {
      v6 = @"TransitDirectionsListSharingIdentifier";
    }

    else
    {
      v7 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
      v6 = [v7 itemAtIndexPath:v4];
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
  v3 = [(TransitDirectionsStepsListDataSource *)self tableView];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(TransitDirectionsStepsListDataSource *)self collectionView];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)_scrollToDisplayedItemIfNeeded:(id)a3 animated:(BOOL)a4
{
  v5 = a4;
  v7 = a3;
  if ([(TransitDirectionsStepsListDataSource *)self automaticallyScrollToDisplayedStep])
  {
    v8 = [(TransitDirectionsStepsListDataSource *)self _scrollView];
    v9 = v8;
    if (!v8)
    {
      goto LABEL_55;
    }

    [v8 bounds];
    if (fabs(v10) <= 2.22044605e-16)
    {
      goto LABEL_55;
    }

    [v9 contentSize];
    if (fabs(v11) <= 2.22044605e-16)
    {
      goto LABEL_55;
    }

    v12 = [(TransitDirectionsStepsListDataSource *)self tableView];
    if (v12)
    {
      v4 = [(TransitDirectionsStepsListDataSource *)self tableView];
      if ([v4 numberOfSections] >= 1)
      {

LABEL_55:
        goto LABEL_56;
      }
    }

    v13 = [(TransitDirectionsStepsListDataSource *)self collectionView];
    if (v13)
    {
      v14 = v13;
      v15 = [(TransitDirectionsStepsListDataSource *)self collectionView];
      v16 = [v15 numberOfSections];

      if (v12)
      {
      }

      if (v16 > 0)
      {
        goto LABEL_55;
      }
    }

    else if (v12)
    {
    }

    if (v7 || ([(TransitDirectionsStepsListDataSource *)self displayedItemIndexPath], (v20 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v17 = [v7 section];
      v18 = [(TransitDirectionsStepsListDataSource *)self displayedItemIndexPath];
      v19 = [v18 section];

      if (v17 == v19)
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
          v34 = self;
          if (!v34)
          {
            v39 = @"<nil>";
            goto LABEL_50;
          }

          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          if (objc_opt_respondsToSelector())
          {
            v37 = [(TransitDirectionsStepsListDataSource *)v34 performSelector:"accessibilityIdentifier"];
            v38 = v37;
            if (v37 && ![v37 isEqualToString:v36])
            {
              v39 = [NSString stringWithFormat:@"%@<%p, %@>", v36, v34, v38];

              goto LABEL_38;
            }
          }

          v39 = [NSString stringWithFormat:@"%@<%p>", v36, v34];
LABEL_38:

LABEL_50:
          v48 = [(TransitDirectionsStepsListDataSource *)v34 displayedItemIndexPath];
          *buf = 138543618;
          v51 = v39;
          v52 = 2114;
          v53 = v48;
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
        [v9 setContentOffset:v5 animated:{0.0, v42}];
        goto LABEL_55;
      }

      v33 = sub_100E74344();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }

      v43 = self;
      if (!v43)
      {
        v39 = @"<nil>";
        goto LABEL_52;
      }

      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      if (objc_opt_respondsToSelector())
      {
        v46 = [(TransitDirectionsStepsListDataSource *)v43 performSelector:"accessibilityIdentifier"];
        v47 = v46;
        if (v46 && ![v46 isEqualToString:v45])
        {
          v39 = [NSString stringWithFormat:@"%@<%p, %@>", v45, v43, v47];

          goto LABEL_47;
        }
      }

      v39 = [NSString stringWithFormat:@"%@<%p>", v45, v43];
LABEL_47:

LABEL_52:
      v48 = [(TransitDirectionsStepsListDataSource *)v43 displayedItemIndexPath];
      *buf = 138543618;
      v51 = v39;
      v52 = 2114;
      v53 = v48;
      v49 = "[%{public}@] Couldn't scroll to displayed step: %{public}@ (invalid offset)";
      goto LABEL_53;
    }

    v22 = self;
    if (!v22)
    {
      v27 = @"<nil>";
      goto LABEL_29;
    }

    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    if (objc_opt_respondsToSelector())
    {
      v25 = [(TransitDirectionsStepsListDataSource *)v22 performSelector:"accessibilityIdentifier"];
      v26 = v25;
      if (v25 && ![v25 isEqualToString:v24])
      {
        v27 = [NSString stringWithFormat:@"%@<%p, %@>", v24, v22, v26];

        goto LABEL_27;
      }
    }

    v27 = [NSString stringWithFormat:@"%@<%p>", v24, v22];
LABEL_27:

LABEL_29:
    v28 = [(TransitDirectionsStepsListDataSource *)v22 displayedItemIndexPath];
    *buf = 138543874;
    v51 = v27;
    v52 = 2112;
    v53 = v7;
    v54 = 2112;
    v55 = v28;
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
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(TransitDirectionsStepsListDataSource *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v43 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] Scrolling to first cell", buf, 0xCu);
  }

  v10 = [(TransitDirectionsStepsListDataSource *)self tableView];
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  v12 = [(TransitDirectionsStepsListDataSource *)self tableView];
  if ([v12 numberOfSections] < 1)
  {
    goto LABEL_18;
  }

  v13 = [(TransitDirectionsStepsListDataSource *)self tableView];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  height = CGSizeZero.height;

  if (CGSizeZero.width != v15 || height != v17)
  {
    v11 = [(TransitDirectionsStepsListDataSource *)self tableView];
    v12 = [NSIndexPath indexPathForItem:0 inSection:0];
    [v11 scrollToRowAtIndexPath:v12 atScrollPosition:1 animated:0];
LABEL_18:
  }

LABEL_19:
  v20 = [(TransitDirectionsStepsListDataSource *)self collectionView];
  if (!v20)
  {
    goto LABEL_27;
  }

  v21 = v20;
  v22 = [(TransitDirectionsStepsListDataSource *)self collectionView];
  if ([v22 numberOfSections] < 1)
  {
    goto LABEL_26;
  }

  v23 = [(TransitDirectionsStepsListDataSource *)self collectionView];
  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v28 = CGSizeZero.height;

  if (CGSizeZero.width != v25 || v28 != v27)
  {
    v21 = [(TransitDirectionsStepsListDataSource *)self collectionView];
    v22 = [NSIndexPath indexPathForItem:0 inSection:0];
    [v21 scrollToItemAtIndexPath:v22 atScrollPosition:1 animated:0];
LABEL_26:
  }

LABEL_27:
  v30 = [(TransitDirectionsStepsListDataSource *)self listView];
  if (v30)
  {
    v31 = v30;
    v32 = [(TransitDirectionsStepsListDataSource *)self listView];
    [v32 bounds];
    v34 = v33;
    v36 = v35;
    v37 = CGSizeZero.height;

    if (CGSizeZero.width != v34 || v37 != v36)
    {
      v39 = [(TransitDirectionsStepsListDataSource *)self listView];
      v40 = [(TransitDirectionsStepsListDataSource *)self listView];
      [v40 contentInset];
      [v39 setContentOffset:0 animated:{0.0, v41}];
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
  v2 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  v3 = [v2 items];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
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
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_measureShieldWidthForListWidth:(double)a3
{
  if (self->_listWidthForLeadingInset != a3)
  {
    self->_listWidthForLeadingInset = a3;
    v5 = [(TransitDirectionsStepsListDataSource *)self _scrollView];
    v6 = dbl_101212AA0[sub_10000FA08(v5) == 5];

    v7 = [(TransitDirectionsStepsListDataSource *)self _scrollView];
    sub_10000FA08(v7);

    v8 = [(TransitDirectionsStepsListDataSource *)self _scrollView];
    if (sub_10000FA08(v8) == 5)
    {
      v9 = 30.0;
    }

    else
    {
      v9 = 40.0;
    }

    v10 = +[NSMapTable strongToStrongObjectsMapTable];
    v11 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
    v12 = [v11 items];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100E7DBA0;
    v31[3] = &unk_101656910;
    v13 = v10;
    v32 = v13;
    v14 = sub_100021DB0(v12, v31);

    *v28 = v9;
    *&v28[1] = a3 - v6;
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

- (void)recalculateLeadingInstructionMarginForWidth:(double)a3
{
  [(TransitDirectionsStepsListDataSource *)self _resetArtworkSizesForAdaptiveItems];
  [(TransitDirectionsStepsListDataSource *)self _measureShieldWidthForListWidth:a3];
  self->_listWidthForCachedRowHeights = a3;
}

- (int64_t)_userInterfaceIdiom
{
  v2 = [(TransitDirectionsStepsListDataSource *)self _scrollView];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  return v4;
}

- (double)_availableWidth
{
  v2 = [(TransitDirectionsStepsListDataSource *)self _scrollView];
  [v2 bounds];
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

    v4 = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(TransitDirectionsStepsListDataSource *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

    if (v4->_reloadTableCompletionBlock)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = v10;
    *buf = 138543618;
    v13 = v9;
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
  v3 = [(TransitDirectionsStepsListDataSource *)self listView];

  if (v3)
  {
    v4 = [(TransitDirectionsStepsListDataSource *)self options];
    v5 = [(TransitDirectionsStepsListDataSource *)self listView];
    v6 = [v5 footerView];
    v7 = v6;
    if ((v4 & 8) != 0)
    {

      if (v7)
      {
        v8 = [(TransitDirectionsStepsListDataSource *)self listView];
        v9 = [v8 footerView];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v13 = v10;

        [(TransitDirectionsStepsListDataSource *)self _configureFooterView:v13];
      }

      else
      {
        v13 = [[RoutePlanningFooterView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
        [(TransitDirectionsStepsListDataSource *)self _configureFooterView:v13];
        v11 = [(TransitDirectionsStepsListDataSource *)self listView];
        [v11 setFooterView:v13];

        v12 = +[UIColor clearColor];
        [(RoutePlanningFooterView *)v13 setBackgroundColor:v12];
      }
    }

    else
    {

      if (!v7)
      {
        return;
      }

      v13 = [(TransitDirectionsStepsListDataSource *)self listView];
      [(RoutePlanningFooterView *)v13 setFooterView:0];
    }
  }
}

- (void)_reloadVisibleCells
{
  v3 = [(TransitDirectionsStepsListDataSource *)self collectionView];

  if (!v3)
  {
    v11 = [(TransitDirectionsStepsListDataSource *)self tableView];

    if (v11)
    {
      v12 = sub_100E74344();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
LABEL_33:

        v32 = [(TransitDirectionsStepsListDataSource *)self tableView];
LABEL_38:
        v30 = v32;
        [v32 reloadData];
        goto LABEL_39;
      }

      v13 = self;
      if (!v13)
      {
        v18 = @"<nil>";
        goto LABEL_32;
      }

      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      if (objc_opt_respondsToSelector())
      {
        v16 = [(TransitDirectionsStepsListDataSource *)v13 performSelector:"accessibilityIdentifier"];
        v17 = v16;
        if (v16 && ![v16 isEqualToString:v15])
        {
          v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

          goto LABEL_18;
        }
      }

      v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_18:

LABEL_32:
      *buf = 138543362;
      v37 = v18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[%{public}@] Reloading visible cells in table view", buf, 0xCu);

      goto LABEL_33;
    }

    v19 = [(TransitDirectionsStepsListDataSource *)self listView];

    if (!v19)
    {
      return;
    }

    v20 = sub_100E74344();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
LABEL_37:

      v32 = [(TransitDirectionsStepsListDataSource *)self listView];
      goto LABEL_38;
    }

    v21 = self;
    if (!v21)
    {
      v26 = @"<nil>";
      goto LABEL_36;
    }

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [(TransitDirectionsStepsListDataSource *)v21 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ![v24 isEqualToString:v23])
      {
        v26 = [NSString stringWithFormat:@"%@<%p, %@>", v23, v21, v25];

        goto LABEL_27;
      }
    }

    v26 = [NSString stringWithFormat:@"%@<%p>", v23, v21];
LABEL_27:

LABEL_36:
    *buf = 138543362;
    v37 = v26;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "[%{public}@] Reloading all cells in list view", buf, 0xCu);

    goto LABEL_37;
  }

  v4 = sub_100E74344();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = self;
    if (!v5)
    {
      v10 = @"<nil>";
      goto LABEL_29;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(TransitDirectionsStepsListDataSource *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_9;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_9:

LABEL_29:
    *buf = 138543362;
    v37 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] Reloading individual visible cells in collection view", buf, 0xCu);
  }

  v27 = [(TransitDirectionsStepsListDataSource *)self collectionView];
  v28 = [v27 indexPathsForVisibleItems];

  v29 = [(TransitDirectionsStepsListDataSource *)self collectionView];
  v30 = [v29 visibleCells];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100E7E530;
  v33[3] = &unk_1016568E8;
  v34 = v28;
  v35 = self;
  v31 = v28;
  [v30 enumerateObjectsUsingBlock:v33];

LABEL_39:
}

- (void)_reloadListViewForRouteChangeIfNotAnimating:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
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
    v8 = self;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(TransitDirectionsStepsListDataSource *)v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_8;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_8:

    v14 = @"YES";
    if (!v4)
    {
      v14 = @"NO";
    }

    v15 = v14;
    *buf = 138543618;
    v17 = v13;
    v18 = 2112;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}@] Will defer table reload until after expansion/collapse animation (completion block: %@)", buf, 0x16u);
  }

LABEL_13:
}

- (void)_reloadListViewForRouteChange
{
  v3 = [(TransitDirectionsStepsListDataSource *)self _scrollView];

  v4 = sub_100E74344();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (!v3)
  {
    if (!v5)
    {
      goto LABEL_24;
    }

    v12 = self;
    if (!v12)
    {
      v17 = @"<nil>";
      goto LABEL_23;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(TransitDirectionsStepsListDataSource *)v12 performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        v17 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v12, v16];

        goto LABEL_17;
      }
    }

    v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_17:

LABEL_23:
    *buf = 138543362;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] Will not reload table for route change, no scroll view yet", buf, 0xCu);

    goto LABEL_24;
  }

  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = self;
  if (!v6)
  {
    v11 = @"<nil>";
    goto LABEL_19;
  }

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  if (objc_opt_respondsToSelector())
  {
    v9 = [(TransitDirectionsStepsListDataSource *)v6 performSelector:"accessibilityIdentifier"];
    v10 = v9;
    if (v9 && ![v9 isEqualToString:v8])
    {
      v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

      goto LABEL_9;
    }
  }

  v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_9:

LABEL_19:
  *buf = 138543362;
  v23 = v11;
  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] Will reload table for route change", buf, 0xCu);

LABEL_20:
  [(TransitDirectionsStepsListDataSource *)self _resetRowHeightCache];
  [(TransitDirectionsStepsListDataSource *)self _availableWidth];
  [(TransitDirectionsStepsListDataSource *)self recalculateLeadingInstructionMarginForWidth:?];
  v18 = [(TransitDirectionsStepsListDataSource *)self tableView];
  [v18 reloadData];

  v19 = [(TransitDirectionsStepsListDataSource *)self collectionView];
  [v19 reloadData];

  v20 = [(TransitDirectionsStepsListDataSource *)self listView];
  [v20 reloadData];

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
  v3 = [(TransitDirectionsStepsListDataSource *)self tableView];

  if (v3)
  {
    v4 = [(TransitDirectionsStepsListDataSource *)self tableView];
    [TransitDirectionsCell registerCellsForTableView:v4];

    v5 = [(TransitDirectionsStepsListDataSource *)self tableView];
    [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"TransitDirectionsListSharingIdentifier"];
  }

  v6 = [(TransitDirectionsStepsListDataSource *)self collectionView];

  if (v6)
  {
    v7 = [(TransitDirectionsStepsListDataSource *)self collectionView];
    [TransitDirectionsCell registerCellsForCollectionView:v7];

    v8 = [(TransitDirectionsStepsListDataSource *)self collectionView];
    [v8 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"TransitDirectionsListSharingIdentifier"];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(TransitDirectionsStepsListDataSource *)self _scrollView];

  if (v13 == v11)
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
      v23 = [(TransitDirectionsStepsListDataSource *)self tableView];
      [v23 reloadData];

      v24 = [(TransitDirectionsStepsListDataSource *)self collectionView];
      [v24 reloadData];

      v25 = [(TransitDirectionsStepsListDataSource *)self listView];
      [v25 reloadData];

      goto LABEL_12;
    }

    v17 = self;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(TransitDirectionsStepsListDataSource *)v17 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ![v20 isEqualToString:v19])
      {
        v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

        goto LABEL_10;
      }
    }

    v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_10:

    *buf = 138543362;
    v28 = v22;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[%{public}@] available width did change", buf, 0xCu);

    goto LABEL_11;
  }

  v26.receiver = self;
  v26.super_class = TransitDirectionsStepsListDataSource;
  [(TransitDirectionsStepsListDataSource *)&v26 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_12:
}

- (void)setFlattenToSingleSection:(BOOL)a3
{
  if (self->_flattenToSingleSection != a3)
  {
    self->_flattenToSingleSection = a3;
    [(TransitDirectionsStepsListDataSource *)self _reloadListViewForRouteChange];
  }
}

- (void)setListView:(id)a3
{
  obj = a3;
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

- (void)setCollectionView:(id)a3
{
  obj = a3;
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

- (void)setTableView:(id)a3
{
  obj = a3;
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
  v3 = [(TransitDirectionsStepsListDataSource *)self tableView];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(TransitDirectionsStepsListDataSource *)self collectionView];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(TransitDirectionsStepsListDataSource *)self listView];
    }

    v5 = v8;
  }

  return v5;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  obj = v4;
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

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v3 = a3;
    v5 = sub_100E74344();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
LABEL_11:

      self->_active = v3;
      [(MKTransitItemReferenceDateUpdater *)self->_referenceDateUpdater setActive:v3];
      if (v3)
      {
        [(TransitDirectionsStepsListDataSource *)self _reloadListViewForRouteChange];
      }

      return;
    }

    v6 = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(TransitDirectionsStepsListDataSource *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

    v12 = @"NO";
    if (v3)
    {
      v12 = @"YES";
    }

    v13 = v12;
    *buf = 138543618;
    v15 = v11;
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
        v4 = [[TransitDirectionsStepsListDataProvider alloc] initWithRoute:self->_route forGuidance:1];
      }

      else
      {
        v4 = [dataProvider transitDirectionsStepsListDataProvider];
      }

      v5 = self->_dataProvider;
      self->_dataProvider = v4;

      dataProvider = self->_dataProvider;
    }
  }

  return dataProvider;
}

- (void)setRoute:(id)a3
{
  v5 = a3;
  route = self->_route;
  if (route != v5)
  {
    [(GEOComposedRoute *)route unregisterObserver:self];
    dataProvider = self->_dataProvider;
    self->_dataProvider = 0;

    objc_storeStrong(&self->_route, a3);
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

    v9 = self;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(TransitDirectionsStepsListDataSource *)v9 performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        v14 = [NSString stringWithFormat:@"%@<%p, %@>", v11, v9, v13];

        goto LABEL_8;
      }
    }

    v14 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_8:

    *buf = 138543618;
    v20 = v14;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}@] setRoute: %@", buf, 0x16u);

    goto LABEL_9;
  }

LABEL_10:
}

- (TransitDirectionsStepsListDataSource)initWithRoute:(id)a3 delegate:(id)a4 forNavigation:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [(TransitDirectionsStepsListDataSource *)self initWithRoute:a3];
  v10 = v9;
  if (v9)
  {
    [(TransitDirectionsStepsListDataSource *)v9 setEnableNavigationUpdates:v5];
    [(TransitDirectionsStepsListDataSource *)v10 setAllowStepSelection:v5];
    [(TransitDirectionsStepsListDataSource *)v10 setDelegate:v8];
  }

  return v10;
}

- (TransitDirectionsStepsListDataSource)initWithRoute:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(&v7->_route, a3);
    if (v5 && [v5 transportType] != 1)
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
  v3 = [(TransitDirectionsStepsListDataSource *)self tableView];
  [v3 removeObserver:self forKeyPath:@"bounds"];

  v4 = [(TransitDirectionsStepsListDataSource *)self collectionView];
  [v4 removeObserver:self forKeyPath:@"bounds"];

  v5 = [(TransitDirectionsStepsListDataSource *)self listView];
  [v5 removeObserver:self forKeyPath:@"bounds"];

  v6.receiver = self;
  v6.super_class = TransitDirectionsStepsListDataSource;
  [(TransitDirectionsStepsListDataSource *)&v6 dealloc];
}

- (NSArray)_transitDirectionsListItems
{
  v2 = [(TransitDirectionsStepsListDataSource *)self dataProvider];
  v3 = [v2 items];

  return v3;
}

@end