@interface SearchResultsDataProvider
- (ActionCoordination)actionCoordinator;
- (BOOL)_isItemVenue:(id)venue;
- (GEOObserverHashTable)observers;
- (NSArray)searchResults;
- (SearchResultsDataProvider)init;
- (id)_identifierForMapItem:(id)item;
- (id)_identifierForVenueCardItem:(id)item;
- (id)_orderedCurrentSearchResults;
- (id)_searchSessionErrorString;
- (id)venueProviderForMapItem:(id)item;
- (void)_notifyObservers;
- (void)_setSearchSession:(id)session;
- (void)_updateAndNotifyObservers:(BOOL)observers;
- (void)_updateCurrentSearchSession;
- (void)addVenueProviderForMapItem:(id)item;
- (void)dealloc;
- (void)downloadVenueInfoForMapItem:(id)item;
- (void)handleVenueSearchResultsWithSelectedSearchResult:(id)result searchFieldItem:(id)item browseCategories:(id)categories;
- (void)performSearchForSuggestion:(id)suggestion;
- (void)presentVenueWithVenueCardItem:(id)item;
- (void)searchSessionManagerSessionDidFail;
- (void)searchSessionManagerSessionDidInvalidate;
- (void)searchSessionManagerSessionDidReceiveUpdate;
- (void)searchSessionManagerSessionWillPerformSearch;
- (void)selectCategory:(id)category forVenueWithVenueIdentifier:(id)identifier;
- (void)setActionCoordinator:(id)coordinator;
- (void)setActive:(BOOL)active;
- (void)venueCategoryContentDownloader:(id)downloader didChangeMapItem:(id)item;
- (void)venueCategoryContentDownloader:(id)downloader didFailToFetchMapItemWithError:(id)error;
- (void)venueCategoryContentDownloader:(id)downloader didReceiveAutoCompleteSubcategories:(id)subcategories subcategoriesType:(int)type;
- (void)venueCategoryContentDownloader:(id)downloader didReceiveSearchResults:(id)results shouldSwitchToBestFloor:(BOOL)floor;
- (void)venueCategoryContentDownloaderDidCancel:(id)cancel;
- (void)venueCategoryContentDownloaderDidFail:(id)fail;
- (void)venueCategoryContentDownloaderDidStart:(id)start;
@end

@implementation SearchResultsDataProvider

- (ActionCoordination)actionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);

  return WeakRetained;
}

- (void)searchSessionManagerSessionWillPerformSearch
{
  v3 = sub_1000410AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    searchSession = self->_searchSession;
    originalSearchInfo = self->_originalSearchInfo;
    v6 = 138412546;
    v7 = searchSession;
    v8 = 2112;
    v9 = originalSearchInfo;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Session will perform search: %@, original search info: %@", &v6, 0x16u);
  }

  [(SearchResultsDataProvider *)self _updateCurrentSearchSession];
}

- (void)searchSessionManagerSessionDidReceiveUpdate
{
  v3 = sub_1000410AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    searchSession = self->_searchSession;
    v5 = 138412290;
    v6 = searchSession;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Session did receive update for session: %@", &v5, 0xCu);
  }

  [(SearchResultsDataProvider *)self _updateCurrentSearchSession];
}

- (void)searchSessionManagerSessionDidInvalidate
{
  v3 = sub_1000410AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    searchSession = self->_searchSession;
    v5 = 138412290;
    v6 = searchSession;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Search Session did invalidate for session: %@", &v5, 0xCu);
  }

  [(SearchResultsDataProvider *)self _updateCurrentSearchSession];
}

- (void)searchSessionManagerSessionDidFail
{
  v3 = sub_1000410AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    searchSession = self->_searchSession;
    v5 = 138412290;
    v6 = searchSession;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Search Session did fail for session: %@", &v5, 0xCu);
  }

  [(SearchResultsDataProvider *)self _updateCurrentSearchSession];
}

- (void)venueCategoryContentDownloader:(id)downloader didReceiveAutoCompleteSubcategories:(id)subcategories subcategoriesType:(int)type
{
  v6 = sub_1000410AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = NSStringFromSelector(a2);
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ %@", &v10, 0x16u);
  }
}

- (void)venueCategoryContentDownloader:(id)downloader didReceiveSearchResults:(id)results shouldSwitchToBestFloor:(BOOL)floor
{
  downloaderCopy = downloader;
  resultsCopy = results;
  v10 = sub_1000410AC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = NSStringFromSelector(a2);
    *buf = 138412546;
    v20 = v11;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@ %@", buf, 0x16u);
  }

  if (downloaderCopy)
  {
    venues = self->_venues;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10069B74C;
    v15[3] = &unk_101625DF8;
    v16 = downloaderCopy;
    v17 = resultsCopy;
    selfCopy = self;
    [(NSMutableDictionary *)venues enumerateKeysAndObjectsUsingBlock:v15];
  }
}

- (void)venueCategoryContentDownloaderDidCancel:(id)cancel
{
  v4 = sub_1000410AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = NSStringFromSelector(a2);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ %@", &v8, 0x16u);
  }
}

- (void)venueCategoryContentDownloaderDidFail:(id)fail
{
  v4 = sub_1000410AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = NSStringFromSelector(a2);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ %@", &v8, 0x16u);
  }
}

- (void)venueCategoryContentDownloader:(id)downloader didFailToFetchMapItemWithError:(id)error
{
  errorCopy = error;
  v5 = sub_1000410AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = errorCopy;
    v6 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@ failed to download venue info with error: %{public}@", &v7, 0x16u);
  }
}

- (void)venueCategoryContentDownloader:(id)downloader didChangeMapItem:(id)item
{
  itemCopy = item;
  v7 = sub_1000410AC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = NSStringFromSelector(a2);
    v18 = 138412546;
    v19 = v8;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ %@", &v18, 0x16u);
  }

  v11 = [(SearchResultsDataProvider *)self _identifierForMapItem:itemCopy];
  v12 = [(NSMutableDictionary *)self->_venues objectForKeyedSubscript:v11];
  v13 = v12;
  if (v12)
  {
    venueCardItem = [v12 venueCardItem];

    if (!venueCardItem)
    {
      v15 = [VenueSearchCardItem alloc];
      currentCategory = [v13 currentCategory];
      v17 = [(VenueSearchCardItem *)v15 initWithMapItem:itemCopy searchCategory:currentCategory];
      [v13 setVenueCardItem:v17];
    }
  }
}

- (void)venueCategoryContentDownloaderDidStart:(id)start
{
  v4 = sub_1000410AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = NSStringFromSelector(a2);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ %@", &v8, 0x16u);
  }
}

- (void)_setSearchSession:(id)session
{
  sessionCopy = session;
  v5 = sessionCopy;
  if (self->_searchSession != sessionCopy && ([(SearchSession *)sessionCopy isEqual:?]& 1) == 0)
  {
    if ([(SearchSession *)v5 isInvalidated])
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    searchSession = self->_searchSession;
    self->_searchSession = v6;

    originalSearchInfo = self->_originalSearchInfo;
    self->_originalSearchInfo = 0;

    relatedSuggestion = self->_relatedSuggestion;
    self->_relatedSuggestion = 0;
  }

  v10 = sub_1000410AC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = self->_searchSession;
    v12 = self->_originalSearchInfo;
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Updated Search Session : %@ Search Info: %@", &v13, 0x16u);
  }

  [(SearchResultsDataProvider *)self _updateAndNotifyObservers:1];
}

- (void)_updateCurrentSearchSession
{
  actionCoordinator = [(SearchResultsDataProvider *)self actionCoordinator];
  currentSearchSession = [actionCoordinator currentSearchSession];

  [(SearchResultsDataProvider *)self _setSearchSession:currentSearchSession];
}

- (void)performSearchForSuggestion:(id)suggestion
{
  if (suggestion)
  {
    suggestionCopy = suggestion;
    v8 = objc_alloc_init(SearchFieldItem);
    [(SearchFieldItem *)v8 setSuggestion:suggestionCopy];
    WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);
    [WeakRetained viewController:0 doSearchItem:v8 withUserInfo:0];

    [(SearchResultsDataProvider *)self _updateCurrentSearchSession];
    v6 = +[MKMapService sharedService];
    searchBarDisplayToken = [suggestionCopy searchBarDisplayToken];

    [v6 captureUserAction:2020 onTarget:101 eventValue:searchBarDisplayToken];
  }
}

- (void)selectCategory:(id)category forVenueWithVenueIdentifier:(id)identifier
{
  categoryCopy = category;
  v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [identifier venueID]);
  v7 = [(NSMutableDictionary *)self->_venues objectForKeyedSubscript:v9];
  [v7 setCurrentCategory:categoryCopy];

  actionCoordinator = [(SearchResultsDataProvider *)self actionCoordinator];
  [v7 performSearchWithActionCoordination:actionCoordinator];
}

- (void)handleVenueSearchResultsWithSelectedSearchResult:(id)result searchFieldItem:(id)item browseCategories:(id)categories
{
  resultCopy = result;
  itemCopy = item;
  categoriesCopy = categories;
  venueCategoryItem = [itemCopy venueCategoryItem];
  venueIdentifier = [venueCategoryItem venueIdentifier];

  v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [venueIdentifier venueID]);
  v13 = v12;
  if (v12 && [v12 integerValue])
  {
    v14 = [(NSMutableDictionary *)self->_venues objectForKeyedSubscript:v13];
    contentDownloader = [v14 contentDownloader];
    if (contentDownloader)
    {
      venueCategoryItem2 = [itemCopy venueCategoryItem];
      isAutoCompleteCategory = [venueCategoryItem2 isAutoCompleteCategory];

      if (isAutoCompleteCategory)
      {
        [contentDownloader searchDidReceiveAutoCompleteSubcategories:categoriesCopy];
      }

      [contentDownloader searchDidReceiveResults:resultCopy];
    }
  }
}

- (void)presentVenueWithVenueCardItem:(id)item
{
  itemCopy = item;
  if ([itemCopy conformsToProtocol:&OBJC_PROTOCOL___VenueCategoryCardItem])
  {
    v4 = [(SearchResultsDataProvider *)self _identifierForVenueCardItem:itemCopy];
    if (v4)
    {
      v5 = [(NSMutableDictionary *)self->_venues objectForKeyedSubscript:v4];
      if (!v5)
      {
        v5 = [[SearchResultVenueSubDataProvider alloc] initWithDelegate:self];
        [(NSMutableDictionary *)self->_venues setObject:v5 forKeyedSubscript:v4];
      }
    }

    else
    {
      v5 = 0;
    }

    [(SearchResultVenueSubDataProvider *)v5 setVenueCardItem:itemCopy];
    actionCoordinator = [(SearchResultsDataProvider *)self actionCoordinator];
    [(SearchResultVenueSubDataProvider *)v5 performSearchWithActionCoordination:actionCoordinator];
  }

  else
  {
    [itemCopy conformsToProtocol:&OBJC_PROTOCOL___VenueAutoCompleteCategoryCardItem];
  }
}

- (void)addVenueProviderForMapItem:(id)item
{
  itemCopy = item;
  v4 = [(SearchResultsDataProvider *)self _identifierForMapItem:?];
  v5 = [(NSMutableDictionary *)self->_venues objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [[SearchResultVenueSubDataProvider alloc] initWithDelegate:self];
    [(NSMutableDictionary *)self->_venues setObject:v5 forKeyedSubscript:v4];
  }

  venueCardItem = [(SearchResultVenueSubDataProvider *)v5 venueCardItem];

  if (!venueCardItem)
  {
    _browseCategories = [itemCopy _browseCategories];
    firstObject = [_browseCategories firstObject];

    v9 = [[VenueSearchCardItem alloc] initWithMapItem:itemCopy searchCategory:firstObject];
    [(SearchResultVenueSubDataProvider *)v5 setVenueCardItem:v9];
  }
}

- (void)downloadVenueInfoForMapItem:(id)item
{
  v5 = [(SearchResultsDataProvider *)self venueProviderForMapItem:item];
  actionCoordinator = [(SearchResultsDataProvider *)self actionCoordinator];
  [v5 performSearchWithActionCoordination:actionCoordinator];
}

- (id)venueProviderForMapItem:(id)item
{
  v4 = [(SearchResultsDataProvider *)self _identifierForMapItem:item];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_venues objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_identifierForVenueCardItem:(id)item
{
  itemCopy = item;
  if ([itemCopy isVenueItem])
  {
    v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [itemCopy venueID]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_identifierForMapItem:(id)item
{
  itemCopy = item;
  if ([itemCopy _maps_isVenueOrBuilding] && (objc_msgSend(itemCopy, "_venueInfo"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "venueIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "_hasVenueID"), v5, v4, v6))
  {
    _venueInfo = [itemCopy _venueInfo];
    venueIdentifier = [_venueInfo venueIdentifier];
    v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [venueIdentifier venueID]);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_searchSessionErrorString
{
  v3 = MKCurrentNetworkConnectionFailureDiagnosis();
  if (v3 <= 4)
  {
    v4 = off_101625E18[v3];
    v5 = +[NSBundle mainBundle];
    v2 = [v5 localizedStringForKey:v4 value:@"localized string not found" table:0];
  }

  return v2;
}

- (GEOObserverHashTable)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___HomeDataProvidingObserver queue:0];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (id)_orderedCurrentSearchResults
{
  currentResults = [(SearchSession *)self->_searchSession currentResults];
  currentResultsSearchInfo = [(SearchSession *)self->_searchSession currentResultsSearchInfo];
  v5 = sub_100067540();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v22 = 134218242;
    v23 = [currentResults count];
    v24 = 2112;
    v25 = currentResultsSearchInfo;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[SearchResultsDataProvider] SearchResultsCount:%ld searchInfo: %@", &v22, 0x16u);
  }

  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    searchSectionList = [currentResultsSearchInfo searchSectionList];
    if (!searchSectionList || (v7 = searchSectionList, [currentResultsSearchInfo searchSectionList], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "searchSections"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8, v7, !v10))
    {
      v17 = sub_100067540();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        searchSession = self->_searchSession;
        v22 = 138412290;
        v23 = searchSession;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[SearchResultsDataProvider] Search session is missing section list: %@. Using alphabetical ordering.", &v22, 0xCu);
      }

      v13 = [[AlphabeticallyOrderedDataSource alloc] initWithAlphabeticallySortableObject:currentResults];
      v14 = sub_100067540();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }

      orderedObjects = [(AlphabeticallyOrderedDataSource *)v13 orderedObjects];
      v19 = [(SearchSession *)orderedObjects count];
      v22 = 134217984;
      v23 = v19;
      v16 = "[SearchResultsDataProvider] AlphabeticallyOrderedDataSource objects count: %ld";
      goto LABEL_15;
    }

    v11 = [SearchListOrderedDataSource alloc];
    searchSectionList2 = [currentResultsSearchInfo searchSectionList];
    v13 = [(SearchListOrderedDataSource *)v11 initWithObjects:currentResults searchSectionList:searchSectionList2];

    v14 = sub_1000410AC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      orderedObjects = [(AlphabeticallyOrderedDataSource *)v13 orderedObjects];
      v22 = 138412290;
      v23 = orderedObjects;
      v16 = "[SearchResultsDataProvider] ListOrderedDataSource objects: %@)";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, v16, &v22, 0xCu);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if ([currentResultsSearchInfo sortOrder] == 1)
  {
    v13 = [[AlphabeticallyOrderedDataSource alloc] initWithAlphabeticallySortableObject:currentResults];
    v14 = sub_1000410AC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      orderedObjects = [(AlphabeticallyOrderedDataSource *)v13 orderedObjects];
      v22 = 138412290;
      v23 = orderedObjects;
      v16 = "[SearchResultsDataProvider] AlphabeticallyOrderedDataSource objects: %@)";
      goto LABEL_15;
    }

LABEL_16:

    orderedObjects2 = [(AlphabeticallyOrderedDataSource *)v13 orderedObjects];

    goto LABEL_18;
  }

  orderedObjects2 = currentResults;
LABEL_18:

  return orderedObjects2;
}

- (void)_notifyObservers
{
  v3 = sub_1000410AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    observers = self->_observers;
    searchSession = self->_searchSession;
    active = self->_active;
    v7 = 138412802;
    v8 = observers;
    v9 = 2112;
    v10 = searchSession;
    v11 = 1024;
    v12 = active;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Notifying observers : %@ for Search Session: %@, Active: %d", &v7, 0x1Cu);
  }

  if (self->_active)
  {
    [(GEOObserverHashTable *)self->_observers homeDataProvidingObjectDidUpdate:self];
  }
}

- (void)_updateAndNotifyObservers:(BOOL)observers
{
  observersCopy = observers;
  v5 = sub_1000410AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    searchSession = self->_searchSession;
    active = self->_active;
    *buf = 138412546;
    v79 = searchSession;
    v80 = 1024;
    LODWORD(v81) = active;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Will notify observers for Search Session: %@, Active: %d", buf, 0x12u);
  }

  if (self->_active)
  {
    isLoading = self->_isLoading;
    isLoading = [(SearchSession *)self->_searchSession isLoading];
    if (isLoading != isLoading)
    {
      self->_isLoading = [(SearchSession *)self->_searchSession isLoading];
    }

    currentResultsSearchInfo = [(SearchSession *)self->_searchSession currentResultsSearchInfo];
    aSelector = a2;
    if ([(SearchInfo *)currentResultsSearchInfo singleResultMode])
    {
      results = [(SearchInfo *)currentResultsSearchInfo results];
      firstObject = [results firstObject];
      v12 = [(SearchResultsDataProvider *)self _isItemVenue:firstObject];

      suggestion = [(SearchSession *)self->_searchSession suggestion];

      v14 = (suggestion == 0) & ~v12;
    }

    else
    {
      v14 = 0;
    }

    if ([(SearchSession *)self->_searchSession isSpotlightPunchInSearch])
    {
      v15 = +[UIDevice currentDevice];
      v16 = [v15 userInterfaceIdiom] != 5;

      v14 &= v16;
    }

    if (currentResultsSearchInfo == self->_searchInfo)
    {
      v75 = 1;
    }

    else
    {
      v75 = [(SearchInfo *)currentResultsSearchInfo isEqual:?];
      if (((v75 | v14) & 1) == 0)
      {
        objc_storeStrong(&self->_searchInfo, currentResultsSearchInfo);
        if (!self->_originalSearchInfo)
        {
          objc_storeStrong(&self->_originalSearchInfo, currentResultsSearchInfo);
        }

        v75 = 0;
      }
    }

    lastError = [(SearchSession *)self->_searchSession lastError];
    if (lastError)
    {
    }

    else if ([(SearchInfo *)currentResultsSearchInfo searchResultType]!= 2)
    {
      _searchSessionErrorString = 0;
      goto LABEL_21;
    }

    _searchSessionErrorString = [(SearchResultsDataProvider *)self _searchSessionErrorString];
LABEL_21:
    errorString = self->_errorString;
    if (errorString == _searchSessionErrorString || ([(NSString *)errorString isEqual:_searchSessionErrorString]& 1) != 0)
    {
      v65 = 1;
    }

    else
    {
      objc_storeStrong(&self->_errorString, _searchSessionErrorString);
      v65 = 0;
    }

    _orderedCurrentSearchResults = [(SearchResultsDataProvider *)self _orderedCurrentSearchResults];
    v76 = _orderedCurrentSearchResults;
    if (_orderedCurrentSearchResults == self->_searchResults)
    {
      v74 = 1;
    }

    else
    {
      v74 = [(NSArray *)_orderedCurrentSearchResults isEqual:?];
      if (((v74 | v14) & 1) == 0)
      {
        v21 = [(NSArray *)v76 copy];
        searchResults = self->_searchResults;
        self->_searchResults = v21;

        [(NSMutableDictionary *)self->_venues removeAllObjects];
        v74 = 0;
LABEL_32:
        if ([(SearchInfo *)currentResultsSearchInfo hasRelatedSearchSuggestion])
        {
          v23 = [RelatedSearchSuggestion alloc];
          resultDisplayHeader = [(SearchInfo *)currentResultsSearchInfo resultDisplayHeader];
          [(SearchInfo *)currentResultsSearchInfo substitutes];
          v26 = v25 = v14;
          [(SearchInfo *)currentResultsSearchInfo dymSuggestionVisibleTime];
          v28 = [(RelatedSearchSuggestion *)v23 initWithResultDisplayHeader:resultDisplayHeader substitutes:v26 visibleTime:[(SearchInfo *)currentResultsSearchInfo showDymSuggestionCloseButton] showCloseButton:v27];
          relatedSuggestion = self->_relatedSuggestion;
          self->_relatedSuggestion = v28;

          v14 = v25;
        }

        suggestions = [self->_originalSearchInfo suggestions];
        defaultSuggestion = [self->_originalSearchInfo defaultSuggestion];
        if (defaultSuggestion && [suggestions count])
        {
          v92 = defaultSuggestion;
          v32 = [NSArray arrayWithObjects:&v92 count:1];
          v33 = [v32 arrayByAddingObjectsFromArray:suggestions];

          v34 = v33;
          suggestion2 = [(SearchSession *)self->_searchSession suggestion];
          v36 = suggestion2;
          if (suggestion2)
          {
            v37 = suggestion2;
          }

          else
          {
            v37 = defaultSuggestion;
          }

          v38 = v37;
        }

        else
        {
          v38 = 0;
          v34 = 0;
        }

        v71 = suggestions;
        v68 = v38;
        if (v38 == self->_currentSuggestion || ([(GEORelatedSearchSuggestion *)v38 isEqual:?]& 1) != 0)
        {
          v39 = @"NO";
        }

        else
        {
          objc_storeStrong(&self->_currentSuggestion, v38);
          v39 = @"YES";
        }

        v72 = _searchSessionErrorString;
        v69 = v34;
        if (v34 == self->_suggestions)
        {
          v40 = @"NO";
        }

        else if (([(NSArray *)v34 isEqual:?]& 1) != 0)
        {
          v40 = @"NO";
        }

        else
        {
          v41 = [(NSArray *)v34 copy];
          suggestions = self->_suggestions;
          self->_suggestions = v41;

          v40 = @"YES";
        }

        v70 = defaultSuggestion;
        v43 = sub_1000410AC();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = objc_opt_class();
          v45 = NSStringFromClass(v44);
          v46 = NSStringFromSelector(aSelector);
          v47 = [(NSArray *)self->_searchResults count];
          v63 = v14;
          v48 = @"NO";
          if (!v75)
          {
            v48 = @"YES";
          }

          v64 = isLoading;
          v49 = v48;
          v50 = @"NO";
          if (!v74)
          {
            v50 = @"YES";
          }

          aSelectora = currentResultsSearchInfo;
          v51 = v50;
          v52 = v39;
          v53 = v40;
          v54 = self->_errorString;
          *buf = 138414082;
          v79 = v45;
          v80 = 2112;
          v81 = v46;
          v82 = 1024;
          *v83 = v47;
          *&v83[4] = 2112;
          *&v83[6] = v49;
          v84 = 2112;
          v85 = v51;
          v86 = 2112;
          v87 = v52;
          v88 = 2112;
          v89 = v53;
          v90 = 2112;
          v91 = v54;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%@ %@, # searchResults = %d, searchInfoDidChange = %@, searchResultsDidChange = %@, currentSuggetionDidChange = %@, suggestionsDidChange = %@, Error String: %@", buf, 0x4Eu);

          v14 = v63;
          currentResultsSearchInfo = aSelectora;

          isLoading = v64;
        }

        if (isLoading == isLoading && ((v14 | v75 & v65 & v74) & 1) != 0)
        {
          [(SearchResultsDataProvider *)self _notifyObservers];
          v55 = sub_1000410AC();
          v56 = v72;
          v57 = v69;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            v58 = @"NO";
            v59 = @"YES";
            if (!v14)
            {
              v59 = @"NO";
            }

            v60 = v59;
            v61 = [(NSArray *)v76 count];
            *buf = 138412802;
            v79 = @"NO";
            v80 = 2112;
            v81 = v60;
            v82 = 2048;
            *v83 = v61;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "loadingDidChange : %@ ignoredSingleResult: %@ Search result count: %ld", buf, 0x20u);
          }

          v62 = v71;
        }

        else
        {
          v62 = v71;
          v56 = v72;
          v57 = v69;
          if (observersCopy)
          {
            [(SearchResultsDataProvider *)self _notifyObservers];
          }
        }

        return;
      }
    }

    if (!self->_searchSession && [(SearchResultsDataProvider *)self isInVenueBrowseMode])
    {
      [(NSMutableDictionary *)self->_venues removeAllObjects];
      [(SearchResultsDataProvider *)self _notifyObservers];
    }

    goto LABEL_32;
  }
}

- (NSArray)searchResults
{
  if ([(SearchResultsDataProvider *)self isInVenueBrowseMode])
  {
    allValues = [(NSMutableDictionary *)self->_venues allValues];
    firstObject = [allValues firstObject];

    venueCardItem = [firstObject venueCardItem];
    venueMapItem = [venueCardItem venueMapItem];

    if (venueMapItem)
    {
      v7 = [[SearchResult alloc] initWithMapItem:venueMapItem];
      v10 = v7;
      v8 = [NSArray arrayWithObjects:&v10 count:1];

      goto LABEL_6;
    }
  }

  v8 = self->_searchResults;
LABEL_6:

  return v8;
}

- (BOOL)_isItemVenue:(id)venue
{
  venueCopy = venue;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mapItem = [venueCopy mapItem];
    v5 = [mapItem _venueFeatureType] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    if (!active)
    {
      [(NSMutableDictionary *)self->_venues removeAllObjects];
    }
  }
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);
  searchSessionManager = [WeakRetained searchSessionManager];
  [searchSessionManager removeObserver:self];

  v5.receiver = self;
  v5.super_class = SearchResultsDataProvider;
  [(SearchResultsDataProvider *)&v5 dealloc];
}

- (void)setActionCoordinator:(id)coordinator
{
  obj = coordinator;
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_actionCoordinator);
    searchSessionManager = [v5 searchSessionManager];
    [searchSessionManager removeObserver:self];

    v7 = objc_storeWeak(&self->_actionCoordinator, obj);
    searchSessionManager2 = [obj searchSessionManager];
    [searchSessionManager2 addObserver:self];

    [(SearchResultsDataProvider *)self _updateCurrentSearchSession];
  }
}

- (SearchResultsDataProvider)init
{
  v6.receiver = self;
  v6.super_class = SearchResultsDataProvider;
  v2 = [(SearchResultsDataProvider *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    venues = v2->_venues;
    v2->_venues = v3;
  }

  return v2;
}

@end