@interface RouteNoQueryDataSource
- (RouteNoQueryDataSource)initWithTableView:(id)view filterPredicate:(id)predicate;
- (id)_allDataProviders;
- (id)newTraits;
- (id)objectAtIndexPath:(id)path;
- (id)placeSummaryTemplateForObject:(id)object;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_addAnalyticsInfo;
- (void)_buildContents;
- (void)_createDataProviders;
- (void)_hoverGestureRecognizerStateDidChange:(id)change;
- (void)_sendNoTypingACAnalyticsForSelectedAtIndexPath:(id)path;
- (void)_updateContents;
- (void)setActive:(BOOL)active;
- (void)setUserLocationSearchResult:(id)result;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)updateTableViewHeader:(BOOL)header;
@end

@implementation RouteNoQueryDataSource

- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  lastSelectedIndexPath = self->_lastSelectedIndexPath;
  contextCopy = context;
  viewCopy = view;
  [viewCopy deselectRowAtIndexPath:lastSelectedIndexPath animated:0];
  nextFocusedIndexPath = [contextCopy nextFocusedIndexPath];
  [viewCopy selectRowAtIndexPath:nextFocusedIndexPath animated:0 scrollPosition:0];

  nextFocusedIndexPath2 = [contextCopy nextFocusedIndexPath];

  v12 = self->_lastSelectedIndexPath;
  self->_lastSelectedIndexPath = nextFocusedIndexPath2;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v9 = [(RouteNoQueryDataSource *)self objectAtIndexPath:pathCopy];
  [(DataSource *)self sendAnalyticsForDataAtIndexPath:pathCopy object:v9 action:2007];
  [(RouteNoQueryDataSource *)self _sendNoTypingACAnalyticsForSelectedAtIndexPath:pathCopy];
  delegate = [(DataSource *)self delegate];
  [delegate dataSource:self itemTapped:v9];

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  cachedViewModelForIndexPath = self->_cachedViewModelForIndexPath;
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [path row]);
  v9 = [(NSMutableDictionary *)cachedViewModelForIndexPath objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [viewCopy dequeueReusableCellWithIdentifier:v11];

    [v12 configureWithTemplate:v9 query:0 asyncDataManager:self->_placeSummaryAsyncDataManager delegate:0];
  }

  else
  {
    v12 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
  }

  return v12;
}

- (id)newTraits
{
  delegate = [(DataSource *)self delegate];
  if ([delegate conformsToProtocol:&OBJC_PROTOCOL___RouteNoQueryDataSourceDelegate])
  {
    v3 = delegate;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  newTraits = [v4 newTraits];
  if (newTraits)
  {
    v6 = newTraits;
  }

  else
  {
    v6 = objc_alloc_init(GEOMapServiceTraits);
  }

  v7 = v6;

  return v7;
}

- (void)_sendNoTypingACAnalyticsForSelectedAtIndexPath:(id)path
{
  pathCopy = path;
  objectsForAnalytics = [(DataSource *)self objectsForAnalytics];
  if (objectsForAnalytics)
  {
    contents = self->_contents;
    analyticsContext = [(RouteNoQueryDataSource *)self analyticsContext];
    newTraits = [(RouteNoQueryDataSource *)self newTraits];
    v8 = [MapsAnalyticsHelper acSuggestionEntriesFromAutoCompleteObjects:contents context:analyticsContext mapsSuggestionsInsights:0 skipReportASearchItems:1 traits:newTraits];
  }

  else
  {
    v8 = 0;
  }

  if (pathCopy)
  {
    v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [pathCopy row]);
    [GEOAPPortal captureClientACSuggestionWithQuery:&stru_1016631F0 queryTokens:0 entries:v8 selectedIndex:v9 selectedSectionIndex:0 withinSectionSelectedIndex:0 isRetainedQuery:0 isRerankerTriggered:0 shouldDifferentiateClientAndServerResults:0];
  }

  else
  {
    [GEOAPPortal captureClientACSuggestionWithQuery:&stru_1016631F0 queryTokens:0 entries:v8 selectedIndex:0 selectedSectionIndex:0 withinSectionSelectedIndex:0 isRetainedQuery:0 isRerankerTriggered:0 shouldDifferentiateClientAndServerResults:0];
  }
}

- (void)_addAnalyticsInfo
{
  v3 = [[AutocompleteContext alloc] initWithQueryString:&stru_1016631F0];
  analyticsContext = self->_analyticsContext;
  self->_analyticsContext = v3;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_contents;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [AutocompleteMatchInfo matchInfoWithType:0, v13];
        analyticsContext = [(RouteNoQueryDataSource *)self analyticsContext];
        [analyticsContext setMatchInfo:v11 forObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (id)objectAtIndexPath:(id)path
{
  v4 = [path row];
  if (v4 >= [(NSArray *)self->_contents count])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_contents objectAtIndexedSubscript:v4];
  }

  return v5;
}

- (void)setUserLocationSearchResult:(id)result
{
  resultCopy = result;
  if (self->_userLocationSearchResult != resultCopy)
  {
    v6 = resultCopy;
    objc_storeStrong(&self->_userLocationSearchResult, result);
    [(RouteNoQueryDataSource *)self _updateContents];
    resultCopy = v6;
  }
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  if ([(DataSource *)self active]!= active)
  {
    v15.receiver = self;
    v15.super_class = RouteNoQueryDataSource;
    [(DataSource *)&v15 setActive:activeCopy];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    _allDataProviders = [(RouteNoQueryDataSource *)self _allDataProviders];
    v6 = [_allDataProviders countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(_allDataProviders);
          }

          [*(*(&v11 + 1) + 8 * v9) setActive:activeCopy];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [_allDataProviders countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }

    [(RouteNoQueryDataSource *)self _updateContents];
    if (!activeCopy)
    {
      LOBYTE(v10) = 0;
      [(DataSource *)self sendAnalyticsForDataAtIndexPath:0 object:0 childPlaceIndexPath:0 childPlaceObject:0 action:0 eventValue:0 populateSearchTapEvent:v10];
    }
  }
}

- (void)_updateContents
{
  [(RouteNoQueryDataSource *)self _buildContents];
  [(RouteNoQueryDataSource *)self _addAnalyticsInfo];
  delegate = [(DataSource *)self delegate];
  [delegate dataSourceUpdated:self];
}

- (id)placeSummaryTemplateForObject:(id)object
{
  objectCopy = object;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100B112BC;
  v29 = sub_100B112CC;
  v30 = 0;
  v5 = [[_TtC4Maps29PlaceSummaryTextHighlightType alloc] initWithHighlightType:0];
  v6 = [[_TtC4Maps38PlaceSummaryTextHighlightConfiguration alloc] initWithTypedAutocompleteQuery:0 type:v5];
  tableView = [(DataSource *)self tableView];
  [tableView frame];
  Width = CGRectGetWidth(v32);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    historyEntry = [objectCopy historyEntry];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100B112D4;
    v22[3] = &unk_101656AC0;
    v24 = &v25;
    v23 = v6;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100B11334;
    v17[3] = &unk_101638308;
    v20 = &v25;
    v21 = Width;
    v18 = v23;
    selfCopy = self;
    [historyEntry ifSearch:v22 ifRoute:0 ifPlaceDisplay:v17 ifTransitLineItem:0];

    currentLocation = v23;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = objectCopy;
      currentLocation = [(DataSource *)self currentLocation];
      v12 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory viewModelWithSearchResult:v11 highlightConfiguration:v6 currentLocation:currentLocation availableWidth:0 searchAlongRoute:Width];
      v13 = v26[5];
      v26[5] = v12;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_8;
      }

      v14 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory viewModelWithCoreRecentContact:objectCopy highlightConfiguration:v6 searchAlongRoute:0];
      currentLocation = v26[5];
      v26[5] = v14;
    }
  }

LABEL_8:
  v15 = v26[5];

  _Block_object_dispose(&v25, 8);

  return v15;
}

- (void)_buildContents
{
  if ([(DataSource *)self active])
  {
    v3 = +[NSMutableArray array];
    v4 = v3;
    if (self->_userLocationSearchResult)
    {
      [(NSArray *)v3 addObject:?];
    }

    markedLocation = [(MarkedLocationDataProvider *)self->_markedLocationDataProvider markedLocation];
    if (markedLocation)
    {
      [(NSArray *)v4 addObject:markedLocation];
    }

    recents = [(RecentsDataProvider *)self->_recentsDataProvider recents];
    [(NSArray *)v4 addObjectsFromArray:recents];

    v7 = [(RecentsDataFilter *)self->_recentsDataFilter filteredRecents:v4 excludingDuplicatesOfEntries:&__NSArray0__struct];
    contents = self->_contents;
    self->_contents = v7;
  }

  else
  {
    v4 = self->_contents;
    self->_contents = &__NSArray0__struct;
  }

  v15 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSArray count](self->_contents, "count")}];
  if ([(NSArray *)self->_contents count])
  {
    v9 = 0;
    do
    {
      v10 = [(NSArray *)self->_contents objectAtIndexedSubscript:v9];
      v11 = [(RouteNoQueryDataSource *)self placeSummaryTemplateForObject:v10];
      if (v11)
      {
        v12 = [NSNumber numberWithUnsignedInteger:v9];
        [v15 setObject:v11 forKeyedSubscript:v12];
      }

      ++v9;
    }

    while (v9 < [(NSArray *)self->_contents count]);
  }

  v13 = [v15 copy];
  cachedViewModelForIndexPath = self->_cachedViewModelForIndexPath;
  self->_cachedViewModelForIndexPath = v13;
}

- (id)_allDataProviders
{
  recentsDataProvider = self->_recentsDataProvider;
  v5[0] = self->_markedLocationDataProvider;
  v5[1] = recentsDataProvider;
  v3 = [NSArray arrayWithObjects:v5 count:2];

  return v3;
}

- (void)_createDataProviders
{
  v3 = objc_alloc_init(MarkedLocationDataProvider);
  markedLocationDataProvider = self->_markedLocationDataProvider;
  self->_markedLocationDataProvider = v3;

  v5 = objc_alloc_init(RecentsDataProvider);
  recentsDataProvider = self->_recentsDataProvider;
  self->_recentsDataProvider = v5;
}

- (void)_hoverGestureRecognizerStateDidChange:(id)change
{
  changeCopy = change;
  tableView = [(DataSource *)self tableView];
  dataSource = [tableView dataSource];
  v6 = dataSource;
  if (dataSource == self)
  {
    _maps_isHovering = [changeCopy _maps_isHovering];

    if (!_maps_isHovering)
    {
      goto LABEL_9;
    }

    tableView2 = [(DataSource *)self tableView];
    [changeCopy locationInView:tableView2];
    v10 = v9;
    v12 = v11;

    tableView3 = [(DataSource *)self tableView];
    v14 = [tableView3 indexPathForRowAtPoint:{v10, v12}];

    tableView4 = [(DataSource *)self tableView];
    v16 = [tableView4 cellForRowAtIndexPath:v14];

    if (v16 && ([v16 frame], v28.x = v10, v28.y = v12, CGRectContainsPoint(v29, v28)))
    {
      if (v14)
      {
        if ([v14 isEqual:self->_lastSelectedIndexPath])
        {
          v17 = 0;
LABEL_15:
          tableView5 = [(DataSource *)self tableView];
          [tableView5 selectRowAtIndexPath:v14 animated:0 scrollPosition:0];

          objc_storeStrong(&self->_lastSelectedIndexPath, v14);
          if (v16)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [v16 canBecomeFirstResponder];
            }
          }

          [v16 becomeFirstResponder];
LABEL_19:

          if (!v17)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        v20 = 0;
LABEL_14:
        v17 = self->_lastSelectedIndexPath;
        lastSelectedIndexPath = self->_lastSelectedIndexPath;
        self->_lastSelectedIndexPath = 0;

        if (v20)
        {
          goto LABEL_19;
        }

        goto LABEL_15;
      }
    }

    else
    {

      v14 = 0;
    }

    v20 = 1;
    goto LABEL_14;
  }

LABEL_9:
  if ([changeCopy state] == 3)
  {
    v18 = self->_lastSelectedIndexPath;
    if (v18)
    {
      v17 = v18;
      v19 = self->_lastSelectedIndexPath;
      self->_lastSelectedIndexPath = 0;

LABEL_20:
      tableView6 = [(DataSource *)self tableView];
      v24 = [tableView6 cellForRowAtIndexPath:v17];

      [v24 resignFirstResponder];
      tableView7 = [(DataSource *)self tableView];
      [tableView7 deselectRowAtIndexPath:v17 animated:0];
    }
  }

LABEL_21:
}

- (void)updateTableViewHeader:(BOOL)header
{
  if (header)
  {
    v3 = +[NSBundle mainBundle];
    v26 = [v3 localizedStringForKey:@"[Offline Route Planning] Recents" value:@"localized string not found" table:0];

    v4 = [_TtC4Maps25StandardSectionHeaderView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    height = [(StandardSectionHeaderView *)v4 initWithFrame:CGRectZero.origin.x, y, width, height];
    [(StandardSectionHeaderView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
    [(StandardSectionHeaderView *)height setTitle:v26];
    [(StandardSectionHeaderView *)height setSectionHeaderSize:0];
    [(StandardSectionHeaderView *)height setSectionHeaderPosition:0];
    +[_TtC4Maps23MapsDesignConstantsShim textHorizontalPadding];
    v10 = v9;
    v11 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 addSubview:height];
    leadingAnchor = [(StandardSectionHeaderView *)height leadingAnchor];
    leadingAnchor2 = [v11 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v10];
    v29[0] = v23;
    trailingAnchor = [(StandardSectionHeaderView *)height trailingAnchor];
    trailingAnchor2 = [v11 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v10];
    v29[1] = v12;
    topAnchor = [v11 topAnchor];
    topAnchor2 = [(StandardSectionHeaderView *)height topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v29[2] = v15;
    bottomAnchor = [v11 bottomAnchor];
    bottomAnchor2 = [(StandardSectionHeaderView *)height bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v29[3] = v18;
    v19 = [NSArray arrayWithObjects:v29 count:4];
    [NSLayoutConstraint activateConstraints:v19];

    tableView = [(DataSource *)self tableView];
    [tableView setTableHeaderView:v11];
  }

  else
  {
    tableView2 = [(DataSource *)self tableView];
    [tableView2 setTableHeaderView:0];
  }
}

- (RouteNoQueryDataSource)initWithTableView:(id)view filterPredicate:(id)predicate
{
  viewCopy = view;
  predicateCopy = predicate;
  v29.receiver = self;
  v29.super_class = RouteNoQueryDataSource;
  v8 = [(DataSource *)&v29 initWithTableView:viewCopy updateLocation:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_filterPredicate, predicate);
    v10 = [[RecentsDataFilter alloc] initWithSearchMode:2 filterPredicate:predicateCopy];
    recentsDataFilter = v9->_recentsDataFilter;
    v9->_recentsDataFilter = v10;

    [(RouteNoQueryDataSource *)v9 _createDataProviders];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    _allDataProviders = [(RouteNoQueryDataSource *)v9 _allDataProviders];
    v13 = [_allDataProviders countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        v16 = 0;
        do
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(_allDataProviders);
          }

          observers = [*(*(&v25 + 1) + 8 * v16) observers];
          [observers registerObserver:v9];

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [_allDataProviders countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v14);
    }

    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [viewCopy registerClass:v18 forCellReuseIdentifier:v20];

    if (sub_10000FA08(viewCopy) == 5)
    {
      v21 = [[UIHoverGestureRecognizer alloc] initWithTarget:v9 action:"_hoverGestureRecognizerStateDidChange:"];
      [viewCopy addGestureRecognizer:v21];
    }

    v22 = objc_alloc_init(_TtC4Maps28PlaceSummaryAsyncDataManager);
    placeSummaryAsyncDataManager = v9->_placeSummaryAsyncDataManager;
    v9->_placeSummaryAsyncDataManager = v22;
  }

  return v9;
}

@end