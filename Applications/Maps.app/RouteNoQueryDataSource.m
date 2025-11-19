@interface RouteNoQueryDataSource
- (RouteNoQueryDataSource)initWithTableView:(id)a3 filterPredicate:(id)a4;
- (id)_allDataProviders;
- (id)newTraits;
- (id)objectAtIndexPath:(id)a3;
- (id)placeSummaryTemplateForObject:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_addAnalyticsInfo;
- (void)_buildContents;
- (void)_createDataProviders;
- (void)_hoverGestureRecognizerStateDidChange:(id)a3;
- (void)_sendNoTypingACAnalyticsForSelectedAtIndexPath:(id)a3;
- (void)_updateContents;
- (void)setActive:(BOOL)a3;
- (void)setUserLocationSearchResult:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)updateTableViewHeader:(BOOL)a3;
@end

@implementation RouteNoQueryDataSource

- (void)tableView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  lastSelectedIndexPath = self->_lastSelectedIndexPath;
  v8 = a4;
  v9 = a3;
  [v9 deselectRowAtIndexPath:lastSelectedIndexPath animated:0];
  v10 = [v8 nextFocusedIndexPath];
  [v9 selectRowAtIndexPath:v10 animated:0 scrollPosition:0];

  v11 = [v8 nextFocusedIndexPath];

  v12 = self->_lastSelectedIndexPath;
  self->_lastSelectedIndexPath = v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(RouteNoQueryDataSource *)self objectAtIndexPath:v6];
  [(DataSource *)self sendAnalyticsForDataAtIndexPath:v6 object:v9 action:2007];
  [(RouteNoQueryDataSource *)self _sendNoTypingACAnalyticsForSelectedAtIndexPath:v6];
  v8 = [(DataSource *)self delegate];
  [v8 dataSource:self itemTapped:v9];

  [v7 deselectRowAtIndexPath:v6 animated:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  cachedViewModelForIndexPath = self->_cachedViewModelForIndexPath;
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a4 row]);
  v9 = [(NSMutableDictionary *)cachedViewModelForIndexPath objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v6 dequeueReusableCellWithIdentifier:v11];

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
  v2 = [(DataSource *)self delegate];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___RouteNoQueryDataSourceDelegate])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 newTraits];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = objc_alloc_init(GEOMapServiceTraits);
  }

  v7 = v6;

  return v7;
}

- (void)_sendNoTypingACAnalyticsForSelectedAtIndexPath:(id)a3
{
  v10 = a3;
  v4 = [(DataSource *)self objectsForAnalytics];
  if (v4)
  {
    contents = self->_contents;
    v6 = [(RouteNoQueryDataSource *)self analyticsContext];
    v7 = [(RouteNoQueryDataSource *)self newTraits];
    v8 = [MapsAnalyticsHelper acSuggestionEntriesFromAutoCompleteObjects:contents context:v6 mapsSuggestionsInsights:0 skipReportASearchItems:1 traits:v7];
  }

  else
  {
    v8 = 0;
  }

  if (v10)
  {
    v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 row]);
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
        v12 = [(RouteNoQueryDataSource *)self analyticsContext];
        [v12 setMatchInfo:v11 forObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (id)objectAtIndexPath:(id)a3
{
  v4 = [a3 row];
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

- (void)setUserLocationSearchResult:(id)a3
{
  v5 = a3;
  if (self->_userLocationSearchResult != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_userLocationSearchResult, a3);
    [(RouteNoQueryDataSource *)self _updateContents];
    v5 = v6;
  }
}

- (void)setActive:(BOOL)a3
{
  v3 = a3;
  if ([(DataSource *)self active]!= a3)
  {
    v15.receiver = self;
    v15.super_class = RouteNoQueryDataSource;
    [(DataSource *)&v15 setActive:v3];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(RouteNoQueryDataSource *)self _allDataProviders];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
            objc_enumerationMutation(v5);
          }

          [*(*(&v11 + 1) + 8 * v9) setActive:v3];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }

    [(RouteNoQueryDataSource *)self _updateContents];
    if (!v3)
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
  v3 = [(DataSource *)self delegate];
  [v3 dataSourceUpdated:self];
}

- (id)placeSummaryTemplateForObject:(id)a3
{
  v4 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100B112BC;
  v29 = sub_100B112CC;
  v30 = 0;
  v5 = [[_TtC4Maps29PlaceSummaryTextHighlightType alloc] initWithHighlightType:0];
  v6 = [[_TtC4Maps38PlaceSummaryTextHighlightConfiguration alloc] initWithTypedAutocompleteQuery:0 type:v5];
  v7 = [(DataSource *)self tableView];
  [v7 frame];
  Width = CGRectGetWidth(v32);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v4 historyEntry];
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
    v19 = self;
    [v9 ifSearch:v22 ifRoute:0 ifPlaceDisplay:v17 ifTransitLineItem:0];

    v10 = v23;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v4;
      v10 = [(DataSource *)self currentLocation];
      v12 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory viewModelWithSearchResult:v11 highlightConfiguration:v6 currentLocation:v10 availableWidth:0 searchAlongRoute:Width];
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

      v14 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory viewModelWithCoreRecentContact:v4 highlightConfiguration:v6 searchAlongRoute:0];
      v10 = v26[5];
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

    v5 = [(MarkedLocationDataProvider *)self->_markedLocationDataProvider markedLocation];
    if (v5)
    {
      [(NSArray *)v4 addObject:v5];
    }

    v6 = [(RecentsDataProvider *)self->_recentsDataProvider recents];
    [(NSArray *)v4 addObjectsFromArray:v6];

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

- (void)_hoverGestureRecognizerStateDidChange:(id)a3
{
  v26 = a3;
  v4 = [(DataSource *)self tableView];
  v5 = [v4 dataSource];
  v6 = v5;
  if (v5 == self)
  {
    v7 = [v26 _maps_isHovering];

    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = [(DataSource *)self tableView];
    [v26 locationInView:v8];
    v10 = v9;
    v12 = v11;

    v13 = [(DataSource *)self tableView];
    v14 = [v13 indexPathForRowAtPoint:{v10, v12}];

    v15 = [(DataSource *)self tableView];
    v16 = [v15 cellForRowAtIndexPath:v14];

    if (v16 && ([v16 frame], v28.x = v10, v28.y = v12, CGRectContainsPoint(v29, v28)))
    {
      if (v14)
      {
        if ([v14 isEqual:self->_lastSelectedIndexPath])
        {
          v17 = 0;
LABEL_15:
          v22 = [(DataSource *)self tableView];
          [v22 selectRowAtIndexPath:v14 animated:0 scrollPosition:0];

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
  if ([v26 state] == 3)
  {
    v18 = self->_lastSelectedIndexPath;
    if (v18)
    {
      v17 = v18;
      v19 = self->_lastSelectedIndexPath;
      self->_lastSelectedIndexPath = 0;

LABEL_20:
      v23 = [(DataSource *)self tableView];
      v24 = [v23 cellForRowAtIndexPath:v17];

      [v24 resignFirstResponder];
      v25 = [(DataSource *)self tableView];
      [v25 deselectRowAtIndexPath:v17 animated:0];
    }
  }

LABEL_21:
}

- (void)updateTableViewHeader:(BOOL)a3
{
  if (a3)
  {
    v3 = +[NSBundle mainBundle];
    v26 = [v3 localizedStringForKey:@"[Offline Route Planning] Recents" value:@"localized string not found" table:0];

    v4 = [_TtC4Maps25StandardSectionHeaderView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [(StandardSectionHeaderView *)v4 initWithFrame:CGRectZero.origin.x, y, width, height];
    [(StandardSectionHeaderView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(StandardSectionHeaderView *)v8 setTitle:v26];
    [(StandardSectionHeaderView *)v8 setSectionHeaderSize:0];
    [(StandardSectionHeaderView *)v8 setSectionHeaderPosition:0];
    +[_TtC4Maps23MapsDesignConstantsShim textHorizontalPadding];
    v10 = v9;
    v11 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 addSubview:v8];
    v25 = [(StandardSectionHeaderView *)v8 leadingAnchor];
    v24 = [v11 leadingAnchor];
    v23 = [v25 constraintEqualToAnchor:v24 constant:v10];
    v29[0] = v23;
    v22 = [(StandardSectionHeaderView *)v8 trailingAnchor];
    v21 = [v11 trailingAnchor];
    v12 = [v22 constraintEqualToAnchor:v21 constant:-v10];
    v29[1] = v12;
    v13 = [v11 topAnchor];
    v14 = [(StandardSectionHeaderView *)v8 topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v29[2] = v15;
    v16 = [v11 bottomAnchor];
    v17 = [(StandardSectionHeaderView *)v8 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v29[3] = v18;
    v19 = [NSArray arrayWithObjects:v29 count:4];
    [NSLayoutConstraint activateConstraints:v19];

    v20 = [(DataSource *)self tableView];
    [v20 setTableHeaderView:v11];
  }

  else
  {
    v28 = [(DataSource *)self tableView];
    [v28 setTableHeaderView:0];
  }
}

- (RouteNoQueryDataSource)initWithTableView:(id)a3 filterPredicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = RouteNoQueryDataSource;
  v8 = [(DataSource *)&v29 initWithTableView:v6 updateLocation:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_filterPredicate, a4);
    v10 = [[RecentsDataFilter alloc] initWithSearchMode:2 filterPredicate:v7];
    recentsDataFilter = v9->_recentsDataFilter;
    v9->_recentsDataFilter = v10;

    [(RouteNoQueryDataSource *)v9 _createDataProviders];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = [(RouteNoQueryDataSource *)v9 _allDataProviders];
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v25 + 1) + 8 * v16) observers];
          [v17 registerObserver:v9];

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v14);
    }

    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [v6 registerClass:v18 forCellReuseIdentifier:v20];

    if (sub_10000FA08(v6) == 5)
    {
      v21 = [[UIHoverGestureRecognizer alloc] initWithTarget:v9 action:"_hoverGestureRecognizerStateDidChange:"];
      [v6 addGestureRecognizer:v21];
    }

    v22 = objc_alloc_init(_TtC4Maps28PlaceSummaryAsyncDataManager);
    placeSummaryAsyncDataManager = v9->_placeSummaryAsyncDataManager;
    v9->_placeSummaryAsyncDataManager = v22;
  }

  return v9;
}

@end