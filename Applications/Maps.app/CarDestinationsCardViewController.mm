@interface CarDestinationsCardViewController
- (BOOL)_shouldChangeToSuggestionEntries:(id)entries;
- (BOOL)_shouldUpdateSection:(int64_t)section;
- (CarDestinationsCardViewController)initWithDelegate:(id)delegate;
- (CarDestinationsCardViewControllerDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_allDataProviders;
- (id)_titleForSection:(int64_t)section;
- (id)itemAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)uniqueName;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_beginUpdates;
- (void)_buildRecents;
- (void)_endUpdates;
- (void)_loadSharedTripsWithShouldReload:(BOOL)reload;
- (void)_prepareQuickRouteETAsIfNeeded;
- (void)_refreshNumberOfRowsInSection;
- (void)_reloadData;
- (void)_reloadRecents;
- (void)_reloadSection:(int64_t)section;
- (void)carMapsSuggestionControllerDidRefresh:(id)refresh;
- (void)homeDataProvidingObjectDidUpdate:(id)update;
- (void)setSuggestions:(id)suggestions reload:(BOOL)reload;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
    tableView = [(CarBaseSearchViewController *)self tableView];
    v6 = tableView;
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
    tableView = [(CarBaseSearchViewController *)self tableView];
    _car_visibleCells = [tableView _car_visibleCells];
  }

  else
  {
    _car_visibleCells = &__NSArray0__struct;
  }

  return _car_visibleCells;
}

- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedIndexPath = [context nextFocusedIndexPath];
  self->_focusMovedFromFirstRow |= [nextFocusedIndexPath row] != 0;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  if ([pathCopy section] != 2)
  {
    if (![pathCopy section])
    {
      v11 = [pathCopy row];
      sharedTripSummaries = [(CarDestinationsCardViewController *)self sharedTripSummaries];
      if (![sharedTripSummaries count])
      {
LABEL_6:

        goto LABEL_7;
      }

      sharedTripSummaries2 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
      v14 = [sharedTripSummaries2 count];

      if (v11 < v14)
      {
        sharedTripSummaries3 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
        sharedTripSummaries = [sharedTripSummaries3 objectAtIndexedSubscript:v11];

        _transportTypeStringForAnalytics = [sharedTripSummaries _transportTypeStringForAnalytics];
        [GEOAPPortal captureUserAction:9002 target:738 value:_transportTypeStringForAnalytics];

        goto LABEL_6;
      }
    }

LABEL_7:
    v17.receiver = self;
    v17.super_class = CarDestinationsCardViewController;
    [(CarBaseSearchViewController *)&v17 tableView:viewCopy willDisplayCell:cellCopy forRowAtIndexPath:pathCopy];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == 2)
  {
    delegate = [(CarDestinationsCardViewController *)self delegate];
    [delegate destinationsCardDidSelectSavedPlaces:self];
    goto LABEL_12;
  }

  if (section == 1)
  {
    delegate = [(CarDestinationsCardViewController *)self delegate];
    recents = [(CarDestinationsCardViewController *)self recents];
    v20 = [recents objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    [delegate destinationsCard:self didSelectRecent:v20];

LABEL_12:
    goto LABEL_13;
  }

  if (!section)
  {
    v9 = [pathCopy row];
    sharedTripSummaries = [(CarDestinationsCardViewController *)self sharedTripSummaries];
    if ([sharedTripSummaries count])
    {
      sharedTripSummaries2 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
      v12 = [sharedTripSummaries2 count];

      if (v9 < v12)
      {
        sharedTripSummaries3 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
        delegate = [sharedTripSummaries3 objectAtIndexedSubscript:v9];

        _transportTypeStringForAnalytics = [delegate _transportTypeStringForAnalytics];
        [GEOAPPortal captureUserAction:9003 target:738 value:_transportTypeStringForAnalytics];

        delegate2 = [(CarDestinationsCardViewController *)self delegate];
        sharedTripSummaries4 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
        v18 = [sharedTripSummaries4 objectAtIndexedSubscript:v9];
        [delegate2 destinationsCard:self didSelectRecent:v18];

LABEL_11:
        goto LABEL_12;
      }
    }

    else
    {
    }

    sharedTripSummaries5 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
    v22 = v9 - [sharedTripSummaries5 count];

    delegate = [(CarDestinationsCardViewController *)self delegate];
    delegate2 = [(CarDestinationsCardViewController *)self suggestions];
    v23 = [delegate2 objectAtIndexedSubscript:v22];
    [delegate destinationsCard:self didSelectSuggestion:v23];

    goto LABEL_11;
  }

LABEL_13:
  v24.receiver = self;
  v24.super_class = CarDestinationsCardViewController;
  [(CarBaseSearchViewController *)&v24 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section >= 2)
  {
    if (section == 2)
    {
      v10 = +[CarSearchCategoryCell reuseIdentifier];
      v11 = [viewCopy dequeueReusableCellWithIdentifier:v10 forIndexPath:pathCopy];

      [v11 setupWithSavedPlaces];
      goto LABEL_18;
    }

    v12 = sub_100006E1C();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_15;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(CarDestinationsCardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v16, selfCopy, v18];

        goto LABEL_13;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v16, selfCopy];
LABEL_13:

LABEL_15:
    *buf = 138543362;
    v23 = selfCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%{public}@] CarDestinationsCardVC tried to dequeue a cell for invalid section.", buf, 0xCu);

LABEL_16:
    v9 = objc_alloc_init(UITableViewCell);
    goto LABEL_17;
  }

  v21.receiver = self;
  v21.super_class = CarDestinationsCardViewController;
  v9 = [(CarBaseSearchViewController *)&v21 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
LABEL_17:
  v11 = v9;
LABEL_18:

  return v11;
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section == 1)
  {
    recents = [(CarDestinationsCardViewController *)self recents];
    v12 = [pathCopy row];
    sharedTripSummaries3 = recents;
LABEL_11:
    v16 = [sharedTripSummaries3 objectAtIndexedSubscript:v12];

    goto LABEL_13;
  }

  if (!section)
  {
    v6 = [pathCopy row];
    sharedTripSummaries = [(CarDestinationsCardViewController *)self sharedTripSummaries];
    if ([sharedTripSummaries count])
    {
      sharedTripSummaries2 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
      v9 = [sharedTripSummaries2 count];

      if (v6 < v9)
      {
        sharedTripSummaries3 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
LABEL_10:
        recents = sharedTripSummaries3;
        v12 = v6;
        goto LABEL_11;
      }
    }

    else
    {
    }

    sharedTripSummaries4 = [(CarDestinationsCardViewController *)self sharedTripSummaries];
    v6 = (v6 - [sharedTripSummaries4 count]);

    suggestions = [(CarDestinationsCardViewController *)self suggestions];
    v15 = [suggestions count];

    if (v15 > v6)
    {
      sharedTripSummaries3 = [(CarDestinationsCardViewController *)self suggestions];
      goto LABEL_10;
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] > 1)
  {
    v9 = 44.0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CarDestinationsCardViewController;
    [(CarBaseSearchViewController *)&v11 tableView:viewCopy heightForRowAtIndexPath:pathCopy];
    v9 = v8;
  }

  return v9;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v4 = objc_alloc_init(UITableViewHeaderFooterView);
  v5 = objc_alloc_init(UIView);
  [v4 setBackgroundView:v5];

  return v4;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(CarDestinationsCardViewController *)self _titleForSection:section];
  if (v7)
  {
    v8 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"TableHeaderViewReuseIdentifier"];
    [v8 setAccessibilityIdentifier:@"CarDestinationsTableHeader"];
    titleLabel = [v8 titleLabel];
    [titleLabel setText:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  tableView = [(CarBaseSearchViewController *)self tableView];
  v7 = [(CarDestinationsCardViewController *)self tableView:tableView numberOfRowsInSection:section];

  v8 = 0.0;
  if (section <= 1 && v7)
  {
    tableView2 = [(CarBaseSearchViewController *)self tableView];
    v10 = [(CarDestinationsCardViewController *)self numberOfSectionsInTableView:tableView2];

    while (1)
    {
      v11 = section++;
      if (section >= v10)
      {
        break;
      }

      tableView3 = [(CarBaseSearchViewController *)self tableView];
      v13 = [(CarDestinationsCardViewController *)self tableView:tableView3 numberOfRowsInSection:section];

      if (v13 > 0)
      {
        section = v11 + 1;
        break;
      }
    }

    if (v11 <= 1)
    {
      v14 = [(CarDestinationsCardViewController *)self _titleForSection:section];
      if ([v14 length])
      {
        v8 = 3.0;
      }

      else
      {
        v8 = 10.0;
      }

      tableView4 = [(CarBaseSearchViewController *)self tableView];
      v16 = [(CarDestinationsCardViewController *)self tableView:tableView4 numberOfRowsInSection:section];

      if (v16 <= 0)
      {
        return 0.0;
      }
    }
  }

  return v8;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v4 = 0.0;
  if (section <= 1)
  {
    tableView = [(CarBaseSearchViewController *)self tableView];
    if ([(CarDestinationsCardViewController *)self tableView:tableView numberOfRowsInSection:section]<= 0)
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

- (id)_titleForSection:(int64_t)section
{
  if (section == 2)
  {
    v8 = &stru_1016631F0;
    goto LABEL_13;
  }

  if (section == 1)
  {
    recents = [(CarDestinationsCardViewController *)self recents];
    if ([recents count])
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

  if (section)
  {
    v8 = 0;
    goto LABEL_13;
  }

  recents = [(CarBaseSearchViewController *)self tableView];
  if ([(CarDestinationsCardViewController *)self tableView:recents numberOfRowsInSection:0]< 1)
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
  sharedTripSummaries = [(CarDestinationsCardViewController *)self sharedTripSummaries];
  v5 = v3 - [sharedTripSummaries count];

  recents = [(CarDestinationsCardViewController *)self recents];
  if (v5 - [recents count] < 4)
  {
    v8 = 3;
  }

  else
  {
    recents2 = [(CarDestinationsCardViewController *)self recents];
    v8 = v5 - [recents2 count];
  }

  suggestions = [(CarDestinationsCardViewController *)self suggestions];
  if ([suggestions count] >= v8)
  {
    p_siriSuggestionsCount = &self->_siriSuggestionsCount;
    self->_siriSuggestionsCount = v8;
  }

  else
  {
    suggestions2 = [(CarDestinationsCardViewController *)self suggestions];
    p_siriSuggestionsCount = &self->_siriSuggestionsCount;
    self->_siriSuggestionsCount = [suggestions2 count];
  }

  recents3 = [(CarDestinationsCardViewController *)self recents];
  v12 = [recents3 count];
  v13 = v5 - *p_siriSuggestionsCount;
  if (v12 >= v13)
  {
    self->_recentsCount = v13;
  }

  else
  {
    recents4 = [(CarDestinationsCardViewController *)self recents];
    self->_recentsCount = [recents4 count];
  }
}

- (BOOL)_shouldUpdateSection:(int64_t)section
{
  p_recentsCount = &self->_recentsCount;
  recentsCount = self->_recentsCount;
  p_siriSuggestionsCount = &self->_siriSuggestionsCount;
  siriSuggestionsCount = self->_siriSuggestionsCount;
  [(CarDestinationsCardViewController *)self _refreshNumberOfRowsInSection];
  if (!section)
  {
    return *p_siriSuggestionsCount != siriSuggestionsCount;
  }

  if (section == 1)
  {
    p_siriSuggestionsCount = p_recentsCount;
    siriSuggestionsCount = recentsCount;
    return *p_siriSuggestionsCount != siriSuggestionsCount;
  }

  return 1;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  [(CarDestinationsCardViewController *)self _refreshNumberOfRowsInSection];
  if (section == 2)
  {
    return self->_showCollectionsEntry;
  }

  if (section == 1)
  {
    return self->_recentsCount;
  }

  if (section)
  {
    return 0;
  }

  siriSuggestionsCount = self->_siriSuggestionsCount;
  sharedTripSummaries = [(CarDestinationsCardViewController *)self sharedTripSummaries];
  v8 = [sharedTripSummaries count] + siriSuggestionsCount;

  return v8;
}

- (void)carMapsSuggestionControllerDidRefresh:(id)refresh
{
  refreshCopy = refresh;
  suggestions = [refreshCopy suggestions];
  v5 = [(CarDestinationsCardViewController *)self _shouldChangeToSuggestionEntries:suggestions];

  if (v5)
  {
    self->_refreshQuickRouteManagers = 1;
    suggestions2 = [refreshCopy suggestions];
    [(CarDestinationsCardViewController *)self setSuggestions:suggestions2];
  }
}

- (BOOL)_shouldChangeToSuggestionEntries:(id)entries
{
  entriesCopy = entries;
  suggestions = [(CarDestinationsCardViewController *)self suggestions];
  v6 = [suggestions count];
  v7 = [entriesCopy count];

  if (v6 == v7)
  {
    suggestions2 = [(CarDestinationsCardViewController *)self suggestions];
    v9 = [suggestions2 count];

    if (v9)
    {
      v10 = 0;
      do
      {
        suggestions3 = [(CarDestinationsCardViewController *)self suggestions];
        v12 = [suggestions3 objectAtIndexedSubscript:v10];

        v13 = [entriesCopy objectAtIndexedSubscript:v10];
        uniqueIdentifier = [v12 uniqueIdentifier];
        uniqueIdentifier2 = [v13 uniqueIdentifier];
        v16 = [uniqueIdentifier isEqualToString:uniqueIdentifier2];

        if ((v16 & 1) == 0)
        {
          break;
        }

        ++v10;
        suggestions4 = [(CarDestinationsCardViewController *)self suggestions];
        v18 = [suggestions4 count];
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

- (void)setSuggestions:(id)suggestions reload:(BOOL)reload
{
  reloadCopy = reload;
  suggestionsCopy = suggestions;
  if (self->_suggestions != suggestionsCopy)
  {
    v8 = sub_100006E1C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(NSArray *)self->_suggestions count];
      v10 = [(NSArray *)suggestionsCopy count];
      v11 = @"NO";
      if (reloadCopy)
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

    if (reloadCopy)
    {
      [(CarDestinationsCardViewController *)self _beginUpdates];
      objc_storeStrong(&self->_suggestions, suggestions);
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
      objc_storeStrong(&self->_suggestions, suggestions);
      [(CarDestinationsCardViewController *)self _reloadRecents];
    }
  }
}

- (id)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (void)homeDataProvidingObjectDidUpdate:(id)update
{
  if (self->_sharedTripsDataProvider == update)
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
  markedLocation = [(MarkedLocationDataProvider *)self->_markedLocationDataProvider markedLocation];
  if (markedLocation)
  {
    [v7 addObject:markedLocation];
  }

  recents = [(RecentsDataProvider *)self->_recentsDataProvider recents];
  [v7 addObjectsFromArray:recents];

  v5 = [(RecentsDataFilter *)self->_recentsDataFilter filteredRecents:v7 excludingDuplicatesOfEntries:self->_suggestions];
  v6 = [v5 copy];
  [(CarDestinationsCardViewController *)self setRecents:v6];
}

- (void)_reloadRecents
{
  recents = [(CarDestinationsCardViewController *)self recents];
  [(CarDestinationsCardViewController *)self _buildRecents];
  recents2 = [(CarDestinationsCardViewController *)self recents];
  if ([recents2 isEqualToArray:recents])
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
    tableView = [(CarBaseSearchViewController *)self tableView];
    [tableView reloadData];
  }

  else
  {
    [(CarDestinationsCardViewController *)self _reloadSection:1];
  }

LABEL_8:
}

- (void)_loadSharedTripsWithShouldReload:(BOOL)reload
{
  reloadCopy = reload;
  sharedTripSummaries = [(CarDestinationsCardViewController *)self sharedTripSummaries];
  sharedTripSummaries2 = [(SharedTripsDataProvider *)self->_sharedTripsDataProvider sharedTripSummaries];
  v7 = sharedTripSummaries;
  v8 = sharedTripSummaries2;
  if (v7 | v8)
  {
    v9 = v8;
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      sharedTripSummaries3 = [(SharedTripsDataProvider *)self->_sharedTripsDataProvider sharedTripSummaries];
      [(CarDestinationsCardViewController *)self setSharedTripSummaries:sharedTripSummaries3];

      if (reloadCopy)
      {

        [(CarDestinationsCardViewController *)self _reloadSection:0];
      }
    }
  }
}

- (void)_reloadSection:(int64_t)section
{
  v5 = [NSIndexSet indexSetWithIndex:section];
  if (!self->_batchingUpdates)
  {
    [(CarDestinationsCardViewController *)self _prepareQuickRouteETAsIfNeeded];
  }

  tableView = [(CarBaseSearchViewController *)self tableView];
  [tableView reloadSections:v5 withRowAnimation:100];
}

- (void)_reloadData
{
  if (!self->_batchingUpdates)
  {
    v4 = +[CarDisplayController sharedInstance];
    mapsSuggestionsController = [v4 mapsSuggestionsController];
    suggestions = [mapsSuggestionsController suggestions];
    [(CarDestinationsCardViewController *)self setSuggestions:suggestions reload:0];

    [(CarDestinationsCardViewController *)self _loadSharedTripsWithShouldReload:0];
    [(CarDestinationsCardViewController *)self _reloadRecents];
    [(CarDestinationsCardViewController *)self _prepareQuickRouteETAsIfNeeded];
    v7 = +[CollectionManager sharedManager];
    currentCollectionsForCarPlay = [v7 currentCollectionsForCarPlay];
    self->_showCollectionsEntry = [currentCollectionsForCarPlay count] != 0;

    tableView = [(CarBaseSearchViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)_endUpdates
{
  self->_batchingUpdates = 0;
  [(CarDestinationsCardViewController *)self _prepareQuickRouteETAsIfNeeded];
  tableView = [(CarBaseSearchViewController *)self tableView];
  [tableView endUpdates];
}

- (void)_beginUpdates
{
  if (!self->_batchingUpdates)
  {
    self->_batchingUpdates = 1;
    tableView = [(CarBaseSearchViewController *)self tableView];
    [tableView beginUpdates];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  v15.receiver = self;
  v15.super_class = CarDestinationsCardViewController;
  [(CarBaseSearchViewController *)&v15 viewWillDisappear:disappear];
  v4 = +[CarDisplayController sharedInstance];
  mapsSuggestionsController = [v4 mapsSuggestionsController];
  [mapsSuggestionsController unregisterObserver:self];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  _allDataProviders = [(CarDestinationsCardViewController *)self _allDataProviders];
  v7 = [_allDataProviders countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(_allDataProviders);
        }

        [*(*(&v11 + 1) + 8 * v10) setActive:0];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [_allDataProviders countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CarDestinationsCardViewController;
  [(CarBaseSearchViewController *)&v5 viewDidAppear:appear];
  v4 = +[_TtC4Maps32MyRecentsContaineeViewController PPTMyRecentsViewControllerDidAppearNotification];
  [PPTNotificationCenter postNotificationIfNeededWithName:v4 object:self userInfo:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v15.receiver = self;
  v15.super_class = CarDestinationsCardViewController;
  [(CarBaseSearchViewController *)&v15 viewWillAppear:appear];
  v4 = +[CarDisplayController sharedInstance];
  mapsSuggestionsController = [v4 mapsSuggestionsController];
  [mapsSuggestionsController registerObserver:self];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  _allDataProviders = [(CarDestinationsCardViewController *)self _allDataProviders];
  v7 = [_allDataProviders countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(_allDataProviders);
        }

        [*(*(&v11 + 1) + 8 * v10) setActive:1];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [_allDataProviders countByEnumeratingWithState:&v11 objects:v16 count:16];
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
  view = [(CarDestinationsCardViewController *)self view];
  [view setAccessibilityIdentifier:@"CarDestinationsCard"];

  v4 = [[CarTableView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CarBaseSearchViewController *)self setTableView:v4];

  tableView = [(CarBaseSearchViewController *)self tableView];
  [tableView setAccessibilityIdentifier:@"CarDestinationsCardTableView"];

  tableView2 = [(CarBaseSearchViewController *)self tableView];
  [tableView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView3 = [(CarBaseSearchViewController *)self tableView];
  LODWORD(v8) = 1148846080;
  [tableView3 setContentCompressionResistancePriority:0 forAxis:v8];

  tableView4 = [(CarBaseSearchViewController *)self tableView];
  LODWORD(v10) = 1148846080;
  [tableView4 setContentCompressionResistancePriority:1 forAxis:v10];

  tableView5 = [(CarBaseSearchViewController *)self tableView];
  [tableView5 setDataSource:self];

  tableView6 = [(CarBaseSearchViewController *)self tableView];
  [tableView6 setDelegate:self];

  v13 = +[UIColor clearColor];
  tableView7 = [(CarBaseSearchViewController *)self tableView];
  [tableView7 setBackgroundColor:v13];

  tableView8 = [(CarBaseSearchViewController *)self tableView];
  [tableView8 _setHeaderAndFooterViewsFloat:0];

  tableView9 = [(CarBaseSearchViewController *)self tableView];
  [tableView9 setRowHeight:44.0];

  tableView10 = [(CarBaseSearchViewController *)self tableView];
  v18 = objc_opt_class();
  v19 = +[CarSearchCategoryCell reuseIdentifier];
  [tableView10 registerClass:v18 forCellReuseIdentifier:v19];

  tableView11 = [(CarBaseSearchViewController *)self tableView];
  v21 = objc_opt_class();
  v22 = +[CarSearchItemCell reuseIdentifier];
  [tableView11 registerClass:v21 forCellReuseIdentifier:v22];

  tableView12 = [(CarBaseSearchViewController *)self tableView];
  v24 = objc_opt_class();
  v25 = +[CarDestinationsTableHeaderView reuseIdentifier];
  [tableView12 registerClass:v24 forHeaderFooterViewReuseIdentifier:v25];

  view2 = [(CarDestinationsCardViewController *)self view];
  tableView13 = [(CarBaseSearchViewController *)self tableView];
  [view2 addSubview:tableView13];

  tableView14 = [(CarBaseSearchViewController *)self tableView];
  view3 = [(CarDestinationsCardViewController *)self view];
  v30 = [tableView14 _maps_constraintsForCenteringInView:view3];
  [NSLayoutConstraint activateConstraints:v30];
}

- (CarDestinationsCardViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v27.receiver = self;
  v27.super_class = CarDestinationsCardViewController;
  v5 = [(CarBaseSearchViewController *)&v27 initWithDisabledETAUpdates:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
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
    _allDataProviders = [(CarDestinationsCardViewController *)v6 _allDataProviders];
    v17 = [_allDataProviders countByEnumeratingWithState:&v23 objects:v28 count:16];
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
            objc_enumerationMutation(_allDataProviders);
          }

          observers = [*(*(&v23 + 1) + 8 * v20) observers];
          [observers registerObserver:v6];

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [_allDataProviders countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v18);
    }

    v6->_focusMovedFromFirstRow = 0;
  }

  return v6;
}

@end