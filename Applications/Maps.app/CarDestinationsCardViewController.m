@interface CarDestinationsCardViewController
- (BOOL)_shouldChangeToSuggestionEntries:(id)a3;
- (BOOL)_shouldUpdateSection:(int64_t)a3;
- (CarDestinationsCardViewController)initWithDelegate:(id)a3;
- (CarDestinationsCardViewControllerDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_allDataProviders;
- (id)_titleForSection:(int64_t)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)uniqueName;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_beginUpdates;
- (void)_buildRecents;
- (void)_endUpdates;
- (void)_loadSharedTripsWithShouldReload:(BOOL)a3;
- (void)_prepareQuickRouteETAsIfNeeded;
- (void)_refreshNumberOfRowsInSection;
- (void)_reloadData;
- (void)_reloadRecents;
- (void)_reloadSection:(int64_t)a3;
- (void)carMapsSuggestionControllerDidRefresh:(id)a3;
- (void)homeDataProvidingObjectDidUpdate:(id)a3;
- (void)setSuggestions:(id)a3 reload:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CarDestinationsCardViewController

- (CarDestinationsCardViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)preferredFocusEnvironments
{
  if ([(CarDestinationsCardViewController *)self isViewLoaded])
  {
    v3 = [(CarBaseSearchViewController *)self tableView];
    v6 = v3;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (NSArray)focusOrderSubItems
{
  if ([(CarDestinationsCardViewController *)self isViewLoaded])
  {
    v3 = [(CarBaseSearchViewController *)self tableView];
    v4 = [v3 _car_visibleCells];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (void)tableView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v6 = [a4 nextFocusedIndexPath];
  self->_focusMovedFromFirstRow |= [v6 row] != 0;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 section] != 2)
  {
    if (![v10 section])
    {
      v11 = [v10 row];
      v12 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
      if (![v12 count])
      {
LABEL_6:

        goto LABEL_7;
      }

      v13 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
      v14 = [v13 count];

      if (v11 < v14)
      {
        v15 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
        v12 = [v15 objectAtIndexedSubscript:v11];

        v16 = [v12 _transportTypeStringForAnalytics];
        [GEOAPPortal captureUserAction:9002 target:738 value:v16];

        goto LABEL_6;
      }
    }

LABEL_7:
    v17.receiver = self;
    v17.super_class = CarDestinationsCardViewController;
    [(CarBaseSearchViewController *)&v17 tableView:v8 willDisplayCell:v9 forRowAtIndexPath:v10];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 == 2)
  {
    v14 = [(CarDestinationsCardViewController *)self delegate];
    [v14 destinationsCardDidSelectSavedPlaces:self];
    goto LABEL_12;
  }

  if (v8 == 1)
  {
    v14 = [(CarDestinationsCardViewController *)self delegate];
    v19 = [(CarDestinationsCardViewController *)self recents];
    v20 = [v19 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
    [v14 destinationsCard:self didSelectRecent:v20];

LABEL_12:
    goto LABEL_13;
  }

  if (!v8)
  {
    v9 = [v7 row];
    v10 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
    if ([v10 count])
    {
      v11 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
      v12 = [v11 count];

      if (v9 < v12)
      {
        v13 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
        v14 = [v13 objectAtIndexedSubscript:v9];

        v15 = [v14 _transportTypeStringForAnalytics];
        [GEOAPPortal captureUserAction:9003 target:738 value:v15];

        v16 = [(CarDestinationsCardViewController *)self delegate];
        v17 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
        v18 = [v17 objectAtIndexedSubscript:v9];
        [v16 destinationsCard:self didSelectRecent:v18];

LABEL_11:
        goto LABEL_12;
      }
    }

    else
    {
    }

    v21 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
    v22 = v9 - [v21 count];

    v14 = [(CarDestinationsCardViewController *)self delegate];
    v16 = [(CarDestinationsCardViewController *)self suggestions];
    v23 = [v16 objectAtIndexedSubscript:v22];
    [v14 destinationsCard:self didSelectSuggestion:v23];

    goto LABEL_11;
  }

LABEL_13:
  v24.receiver = self;
  v24.super_class = CarDestinationsCardViewController;
  [(CarBaseSearchViewController *)&v24 tableView:v6 didSelectRowAtIndexPath:v7];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 >= 2)
  {
    if (v8 == 2)
    {
      v10 = +[CarSearchCategoryCell reuseIdentifier];
      v11 = [v6 dequeueReusableCellWithIdentifier:v10 forIndexPath:v7];

      [v11 setupWithSavedPlaces];
      goto LABEL_18;
    }

    v12 = sub_100006E1C();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v14 = self;
    if (!v14)
    {
      v19 = @"<nil>";
      goto LABEL_15;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(CarDestinationsCardViewController *)v14 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

        goto LABEL_13;
      }
    }

    v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_13:

LABEL_15:
    *buf = 138543362;
    v23 = v19;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%{public}@] CarDestinationsCardVC tried to dequeue a cell for invalid section.", buf, 0xCu);

LABEL_16:
    v9 = objc_alloc_init(UITableViewCell);
    goto LABEL_17;
  }

  v21.receiver = self;
  v21.super_class = CarDestinationsCardViewController;
  v9 = [(CarBaseSearchViewController *)&v21 tableView:v6 cellForRowAtIndexPath:v7];
LABEL_17:
  v11 = v9;
LABEL_18:

  return v11;
}

- (id)itemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  if (v5 == 1)
  {
    v11 = [(CarDestinationsCardViewController *)self recents];
    v12 = [v4 row];
    v10 = v11;
LABEL_11:
    v16 = [v10 objectAtIndexedSubscript:v12];

    goto LABEL_13;
  }

  if (!v5)
  {
    v6 = [v4 row];
    v7 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
    if ([v7 count])
    {
      v8 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
      v9 = [v8 count];

      if (v6 < v9)
      {
        v10 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
LABEL_10:
        v11 = v10;
        v12 = v6;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v13 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
    v6 = (v6 - [v13 count]);

    v14 = [(CarDestinationsCardViewController *)self suggestions];
    v15 = [v14 count];

    if (v15 > v6)
    {
      v10 = [(CarDestinationsCardViewController *)self suggestions];
      goto LABEL_10;
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section] > 1)
  {
    v9 = 44.0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CarDestinationsCardViewController;
    [(CarBaseSearchViewController *)&v11 tableView:v6 heightForRowAtIndexPath:v7];
    v9 = v8;
  }

  return v9;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v4 = objc_alloc_init(UITableViewHeaderFooterView);
  v5 = objc_alloc_init(UIView);
  [v4 setBackgroundView:v5];

  return v4;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(CarDestinationsCardViewController *)self _titleForSection:a4];
  if (v7)
  {
    v8 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"TableHeaderViewReuseIdentifier"];
    [v8 setAccessibilityIdentifier:@"CarDestinationsTableHeader"];
    v9 = [v8 titleLabel];
    [v9 setText:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = [(CarBaseSearchViewController *)self tableView];
  v7 = [(CarDestinationsCardViewController *)self tableView:v6 numberOfRowsInSection:a4];

  v8 = 0.0;
  if (a4 <= 1 && v7)
  {
    v9 = [(CarBaseSearchViewController *)self tableView];
    v10 = [(CarDestinationsCardViewController *)self numberOfSectionsInTableView:v9];

    while (1)
    {
      v11 = a4++;
      if (a4 >= v10)
      {
        break;
      }

      v12 = [(CarBaseSearchViewController *)self tableView];
      v13 = [(CarDestinationsCardViewController *)self tableView:v12 numberOfRowsInSection:a4];

      if (v13 > 0)
      {
        a4 = v11 + 1;
        break;
      }
    }

    if (v11 <= 1)
    {
      v14 = [(CarDestinationsCardViewController *)self _titleForSection:a4];
      if ([v14 length])
      {
        v8 = 3.0;
      }

      else
      {
        v8 = 10.0;
      }

      v15 = [(CarBaseSearchViewController *)self tableView];
      v16 = [(CarDestinationsCardViewController *)self tableView:v15 numberOfRowsInSection:a4];

      if (v16 <= 0)
      {
        return 0.0;
      }
    }
  }

  return v8;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v4 = 0.0;
  if (a4 <= 1)
  {
    v7 = [(CarBaseSearchViewController *)self tableView];
    if ([(CarDestinationsCardViewController *)self tableView:v7 numberOfRowsInSection:a4]<= 0)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 17.0;
    }
  }

  return v4;
}

- (id)_titleForSection:(int64_t)a3
{
  if (a3 == 2)
  {
    v8 = &stru_1016631F0;
    goto LABEL_13;
  }

  if (a3 == 1)
  {
    v4 = [(CarDestinationsCardViewController *)self recents];
    if ([v4 count])
    {
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"CarDestinations_DestinationsHeader_Recents";
      goto LABEL_8;
    }

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  if (a3)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v4 = [(CarBaseSearchViewController *)self tableView];
  if ([(CarDestinationsCardViewController *)self tableView:v4 numberOfRowsInSection:0]< 1)
  {
    goto LABEL_11;
  }

  v5 = +[NSBundle mainBundle];
  v6 = v5;
  v7 = @"CarDestinations_DestinationsHeader_Suggestions";
LABEL_8:
  v8 = [v5 localizedStringForKey:v7 value:@"localized string not found" table:0];

LABEL_12:
LABEL_13:

  return v8;
}

- (void)_refreshNumberOfRowsInSection
{
  v3 = +[CarDisplayController maximumListLength];
  v4 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
  v5 = v3 - [v4 count];

  v6 = [(CarDestinationsCardViewController *)self recents];
  if (v5 - [v6 count] < 4)
  {
    v8 = 3;
  }

  else
  {
    v7 = [(CarDestinationsCardViewController *)self recents];
    v8 = v5 - [v7 count];
  }

  v9 = [(CarDestinationsCardViewController *)self suggestions];
  if ([v9 count] >= v8)
  {
    p_siriSuggestionsCount = &self->_siriSuggestionsCount;
    self->_siriSuggestionsCount = v8;
  }

  else
  {
    v10 = [(CarDestinationsCardViewController *)self suggestions];
    p_siriSuggestionsCount = &self->_siriSuggestionsCount;
    self->_siriSuggestionsCount = [v10 count];
  }

  v15 = [(CarDestinationsCardViewController *)self recents];
  v12 = [v15 count];
  v13 = v5 - *p_siriSuggestionsCount;
  if (v12 >= v13)
  {
    self->_recentsCount = v13;
  }

  else
  {
    v14 = [(CarDestinationsCardViewController *)self recents];
    self->_recentsCount = [v14 count];
  }
}

- (BOOL)_shouldUpdateSection:(int64_t)a3
{
  p_recentsCount = &self->_recentsCount;
  recentsCount = self->_recentsCount;
  p_siriSuggestionsCount = &self->_siriSuggestionsCount;
  siriSuggestionsCount = self->_siriSuggestionsCount;
  [(CarDestinationsCardViewController *)self _refreshNumberOfRowsInSection];
  if (!a3)
  {
    return *p_siriSuggestionsCount != siriSuggestionsCount;
  }

  if (a3 == 1)
  {
    p_siriSuggestionsCount = p_recentsCount;
    siriSuggestionsCount = recentsCount;
    return *p_siriSuggestionsCount != siriSuggestionsCount;
  }

  return 1;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  [(CarDestinationsCardViewController *)self _refreshNumberOfRowsInSection];
  if (a4 == 2)
  {
    return self->_showCollectionsEntry;
  }

  if (a4 == 1)
  {
    return self->_recentsCount;
  }

  if (a4)
  {
    return 0;
  }

  siriSuggestionsCount = self->_siriSuggestionsCount;
  v7 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
  v8 = [v7 count] + siriSuggestionsCount;

  return v8;
}

- (void)carMapsSuggestionControllerDidRefresh:(id)a3
{
  v7 = a3;
  v4 = [v7 suggestions];
  v5 = [(CarDestinationsCardViewController *)self _shouldChangeToSuggestionEntries:v4];

  if (v5)
  {
    self->_refreshQuickRouteManagers = 1;
    v6 = [v7 suggestions];
    [(CarDestinationsCardViewController *)self setSuggestions:v6];
  }
}

- (BOOL)_shouldChangeToSuggestionEntries:(id)a3
{
  v4 = a3;
  v5 = [(CarDestinationsCardViewController *)self suggestions];
  v6 = [v5 count];
  v7 = [v4 count];

  if (v6 == v7)
  {
    v8 = [(CarDestinationsCardViewController *)self suggestions];
    v9 = [v8 count];

    if (v9)
    {
      v10 = 0;
      do
      {
        v11 = [(CarDestinationsCardViewController *)self suggestions];
        v12 = [v11 objectAtIndexedSubscript:v10];

        v13 = [v4 objectAtIndexedSubscript:v10];
        v14 = [v12 uniqueIdentifier];
        v15 = [v13 uniqueIdentifier];
        v16 = [v14 isEqualToString:v15];

        if ((v16 & 1) == 0)
        {
          break;
        }

        ++v10;
        v17 = [(CarDestinationsCardViewController *)self suggestions];
        v18 = [v17 count];
      }

      while (v10 < v18);
      v19 = v16 ^ 1;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

- (void)setSuggestions:(id)a3 reload:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_suggestions != v7)
  {
    v8 = sub_100006E1C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(NSArray *)self->_suggestions count];
      v10 = [(NSArray *)v7 count];
      v11 = @"NO";
      if (v4)
      {
        v11 = @"YES";
      }

      v12 = v11;
      v13 = 134218498;
      v14 = v9;
      v15 = 2048;
      v16 = v10;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Destinations: suggestions changed. before: %ld, after: %ld, reload: %@", &v13, 0x20u);
    }

    if (v4)
    {
      [(CarDestinationsCardViewController *)self _beginUpdates];
      objc_storeStrong(&self->_suggestions, a3);
      [(CarDestinationsCardViewController *)self _reloadSection:0];
      [(CarDestinationsCardViewController *)self _reloadRecents];
      [(CarDestinationsCardViewController *)self _endUpdates];
      if (!self->_focusMovedFromFirstRow)
      {
        [(CarDestinationsCardViewController *)self setNeedsFocusUpdate];
      }
    }

    else
    {
      self->_needReloadSuggestionSection = 1;
      objc_storeStrong(&self->_suggestions, a3);
      [(CarDestinationsCardViewController *)self _reloadRecents];
    }
  }
}

- (id)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (void)homeDataProvidingObjectDidUpdate:(id)a3
{
  if (self->_sharedTripsDataProvider == a3)
  {
    [(CarDestinationsCardViewController *)self _loadSharedTripsWithShouldReload:1];
  }

  else
  {
    [(CarDestinationsCardViewController *)self _reloadRecents];
  }
}

- (void)_buildRecents
{
  v7 = +[NSMutableArray array];
  v3 = [(MarkedLocationDataProvider *)self->_markedLocationDataProvider markedLocation];
  if (v3)
  {
    [v7 addObject:v3];
  }

  v4 = [(RecentsDataProvider *)self->_recentsDataProvider recents];
  [v7 addObjectsFromArray:v4];

  v5 = [(RecentsDataFilter *)self->_recentsDataFilter filteredRecents:v7 excludingDuplicatesOfEntries:self->_suggestions];
  v6 = [v5 copy];
  [(CarDestinationsCardViewController *)self setRecents:v6];
}

- (void)_reloadRecents
{
  v6 = [(CarDestinationsCardViewController *)self recents];
  [(CarDestinationsCardViewController *)self _buildRecents];
  v3 = [(CarDestinationsCardViewController *)self recents];
  if ([v3 isEqualToArray:v6])
  {
    v4 = [(CarDestinationsCardViewController *)self _shouldUpdateSection:1];

    if ((v4 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  self->_refreshQuickRouteManagers = 1;
  if (self->_needReloadSuggestionSection)
  {
    self->_needReloadSuggestionSection = 0;
    [(CarDestinationsCardViewController *)self _prepareQuickRouteETAsIfNeeded];
    v5 = [(CarBaseSearchViewController *)self tableView];
    [v5 reloadData];
  }

  else
  {
    [(CarDestinationsCardViewController *)self _reloadSection:1];
  }

LABEL_8:
}

- (void)_loadSharedTripsWithShouldReload:(BOOL)a3
{
  v3 = a3;
  v5 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
  v6 = [(SharedTripsDataProvider *)self->_sharedTripsDataProvider sharedTripSummaries];
  v7 = v5;
  v8 = v6;
  if (v7 | v8)
  {
    v9 = v8;
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      v11 = [(SharedTripsDataProvider *)self->_sharedTripsDataProvider sharedTripSummaries];
      [(CarDestinationsCardViewController *)self setSharedTripSummaries:v11];

      if (v3)
      {

        [(CarDestinationsCardViewController *)self _reloadSection:0];
      }
    }
  }
}

- (void)_reloadSection:(int64_t)a3
{
  v5 = [NSIndexSet indexSetWithIndex:a3];
  if (!self->_batchingUpdates)
  {
    [(CarDestinationsCardViewController *)self _prepareQuickRouteETAsIfNeeded];
  }

  v4 = [(CarBaseSearchViewController *)self tableView];
  [v4 reloadSections:v5 withRowAnimation:100];
}

- (void)_reloadData
{
  if (!self->_batchingUpdates)
  {
    v4 = +[CarDisplayController sharedInstance];
    v5 = [v4 mapsSuggestionsController];
    v6 = [v5 suggestions];
    [(CarDestinationsCardViewController *)self setSuggestions:v6 reload:0];

    [(CarDestinationsCardViewController *)self _loadSharedTripsWithShouldReload:0];
    [(CarDestinationsCardViewController *)self _reloadRecents];
    [(CarDestinationsCardViewController *)self _prepareQuickRouteETAsIfNeeded];
    v7 = +[CollectionManager sharedManager];
    v8 = [v7 currentCollectionsForCarPlay];
    self->_showCollectionsEntry = [v8 count] != 0;

    v9 = [(CarBaseSearchViewController *)self tableView];
    [v9 reloadData];
  }
}

- (void)_endUpdates
{
  self->_batchingUpdates = 0;
  [(CarDestinationsCardViewController *)self _prepareQuickRouteETAsIfNeeded];
  v3 = [(CarBaseSearchViewController *)self tableView];
  [v3 endUpdates];
}

- (void)_beginUpdates
{
  if (!self->_batchingUpdates)
  {
    self->_batchingUpdates = 1;
    v3 = [(CarBaseSearchViewController *)self tableView];
    [v3 beginUpdates];
  }
}

- (id)_allDataProviders
{
  recentsDataProvider = self->_recentsDataProvider;
  v5[0] = self->_sharedTripsDataProvider;
  v5[1] = recentsDataProvider;
  v5[2] = self->_markedLocationDataProvider;
  v3 = [NSArray arrayWithObjects:v5 count:3];

  return v3;
}

- (void)_prepareQuickRouteETAsIfNeeded
{
  if (!self->_batchingUpdates && self->_refreshQuickRouteManagers)
  {
    [(CarBaseSearchViewController *)self prepareQuickRouteETAs];
    self->_refreshQuickRouteManagers = 0;
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = CarDestinationsCardViewController;
  [(CarBaseSearchViewController *)&v15 viewWillDisappear:a3];
  v4 = +[CarDisplayController sharedInstance];
  v5 = [v4 mapsSuggestionsController];
  [v5 unregisterObserver:self];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(CarDestinationsCardViewController *)self _allDataProviders];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) setActive:0];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CarDestinationsCardViewController;
  [(CarBaseSearchViewController *)&v5 viewDidAppear:a3];
  v4 = +[_TtC4Maps32MyRecentsContaineeViewController PPTMyRecentsViewControllerDidAppearNotification];
  [PPTNotificationCenter postNotificationIfNeededWithName:v4 object:self userInfo:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = CarDestinationsCardViewController;
  [(CarBaseSearchViewController *)&v15 viewWillAppear:a3];
  v4 = +[CarDisplayController sharedInstance];
  v5 = [v4 mapsSuggestionsController];
  [v5 registerObserver:self];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(CarDestinationsCardViewController *)self _allDataProviders];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) setActive:1];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }

  [(CarDestinationsCardViewController *)self _reloadData];
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = CarDestinationsCardViewController;
  [(CarDestinationsCardViewController *)&v31 viewDidLoad];
  v3 = [(CarDestinationsCardViewController *)self view];
  [v3 setAccessibilityIdentifier:@"CarDestinationsCard"];

  v4 = [[CarTableView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CarBaseSearchViewController *)self setTableView:v4];

  v5 = [(CarBaseSearchViewController *)self tableView];
  [v5 setAccessibilityIdentifier:@"CarDestinationsCardTableView"];

  v6 = [(CarBaseSearchViewController *)self tableView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(CarBaseSearchViewController *)self tableView];
  LODWORD(v8) = 1148846080;
  [v7 setContentCompressionResistancePriority:0 forAxis:v8];

  v9 = [(CarBaseSearchViewController *)self tableView];
  LODWORD(v10) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v10];

  v11 = [(CarBaseSearchViewController *)self tableView];
  [v11 setDataSource:self];

  v12 = [(CarBaseSearchViewController *)self tableView];
  [v12 setDelegate:self];

  v13 = +[UIColor clearColor];
  v14 = [(CarBaseSearchViewController *)self tableView];
  [v14 setBackgroundColor:v13];

  v15 = [(CarBaseSearchViewController *)self tableView];
  [v15 _setHeaderAndFooterViewsFloat:0];

  v16 = [(CarBaseSearchViewController *)self tableView];
  [v16 setRowHeight:44.0];

  v17 = [(CarBaseSearchViewController *)self tableView];
  v18 = objc_opt_class();
  v19 = +[CarSearchCategoryCell reuseIdentifier];
  [v17 registerClass:v18 forCellReuseIdentifier:v19];

  v20 = [(CarBaseSearchViewController *)self tableView];
  v21 = objc_opt_class();
  v22 = +[CarSearchItemCell reuseIdentifier];
  [v20 registerClass:v21 forCellReuseIdentifier:v22];

  v23 = [(CarBaseSearchViewController *)self tableView];
  v24 = objc_opt_class();
  v25 = +[CarDestinationsTableHeaderView reuseIdentifier];
  [v23 registerClass:v24 forHeaderFooterViewReuseIdentifier:v25];

  v26 = [(CarDestinationsCardViewController *)self view];
  v27 = [(CarBaseSearchViewController *)self tableView];
  [v26 addSubview:v27];

  v28 = [(CarBaseSearchViewController *)self tableView];
  v29 = [(CarDestinationsCardViewController *)self view];
  v30 = [v28 _maps_constraintsForCenteringInView:v29];
  [NSLayoutConstraint activateConstraints:v30];
}

- (CarDestinationsCardViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = CarDestinationsCardViewController;
  v5 = [(CarBaseSearchViewController *)&v27 initWithDisabledETAUpdates:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [NSPredicate predicateWithBlock:&stru_1016551E0];
    v8 = [[RecentsDataFilter alloc] initWithSearchMode:1 filterPredicate:v7];
    recentsDataFilter = v6->_recentsDataFilter;
    v6->_recentsDataFilter = v8;

    v10 = objc_alloc_init(RecentsDataProvider);
    recentsDataProvider = v6->_recentsDataProvider;
    v6->_recentsDataProvider = v10;

    v12 = objc_alloc_init(MarkedLocationDataProvider);
    markedLocationDataProvider = v6->_markedLocationDataProvider;
    v6->_markedLocationDataProvider = v12;

    v14 = [[SharedTripsDataProvider alloc] initWithCombineAllTrips:1];
    sharedTripsDataProvider = v6->_sharedTripsDataProvider;
    v6->_sharedTripsDataProvider = v14;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = [(CarDestinationsCardViewController *)v6 _allDataProviders];
    v17 = [v16 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        v20 = 0;
        do
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v23 + 1) + 8 * v20) observers];
          [v21 registerObserver:v6];

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v18);
    }

    v6->_focusMovedFromFirstRow = 0;
  }

  return v6;
}

@end