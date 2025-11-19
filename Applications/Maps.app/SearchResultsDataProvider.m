@interface SearchResultsDataProvider
- (ActionCoordination)actionCoordinator;
- (BOOL)_isItemVenue:(id)a3;
- (GEOObserverHashTable)observers;
- (NSArray)searchResults;
- (SearchResultsDataProvider)init;
- (id)_identifierForMapItem:(id)a3;
- (id)_identifierForVenueCardItem:(id)a3;
- (id)_orderedCurrentSearchResults;
- (id)_searchSessionErrorString;
- (id)venueProviderForMapItem:(id)a3;
- (void)_notifyObservers;
- (void)_setSearchSession:(id)a3;
- (void)_updateAndNotifyObservers:(BOOL)a3;
- (void)_updateCurrentSearchSession;
- (void)addVenueProviderForMapItem:(id)a3;
- (void)dealloc;
- (void)downloadVenueInfoForMapItem:(id)a3;
- (void)handleVenueSearchResultsWithSelectedSearchResult:(id)a3 searchFieldItem:(id)a4 browseCategories:(id)a5;
- (void)performSearchForSuggestion:(id)a3;
- (void)presentVenueWithVenueCardItem:(id)a3;
- (void)searchSessionManagerSessionDidFail;
- (void)searchSessionManagerSessionDidInvalidate;
- (void)searchSessionManagerSessionDidReceiveUpdate;
- (void)searchSessionManagerSessionWillPerformSearch;
- (void)selectCategory:(id)a3 forVenueWithVenueIdentifier:(id)a4;
- (void)setActionCoordinator:(id)a3;
- (void)setActive:(BOOL)a3;
- (void)venueCategoryContentDownloader:(id)a3 didChangeMapItem:(id)a4;
- (void)venueCategoryContentDownloader:(id)a3 didFailToFetchMapItemWithError:(id)a4;
- (void)venueCategoryContentDownloader:(id)a3 didReceiveAutoCompleteSubcategories:(id)a4 subcategoriesType:(int)a5;
- (void)venueCategoryContentDownloader:(id)a3 didReceiveSearchResults:(id)a4 shouldSwitchToBestFloor:(BOOL)a5;
- (void)venueCategoryContentDownloaderDidCancel:(id)a3;
- (void)venueCategoryContentDownloaderDidFail:(id)a3;
- (void)venueCategoryContentDownloaderDidStart:(id)a3;
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

- (void)venueCategoryContentDownloader:(id)a3 didReceiveAutoCompleteSubcategories:(id)a4 subcategoriesType:(int)a5
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

- (void)venueCategoryContentDownloader:(id)a3 didReceiveSearchResults:(id)a4 shouldSwitchToBestFloor:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
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

  if (v8)
  {
    venues = self->_venues;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10069B74C;
    v15[3] = &unk_101625DF8;
    v16 = v8;
    v17 = v9;
    v18 = self;
    [(NSMutableDictionary *)venues enumerateKeysAndObjectsUsingBlock:v15];
  }
}

- (void)venueCategoryContentDownloaderDidCancel:(id)a3
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

- (void)venueCategoryContentDownloaderDidFail:(id)a3
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

- (void)venueCategoryContentDownloader:(id)a3 didFailToFetchMapItemWithError:(id)a4
{
  v4 = a4;
  v5 = sub_1000410AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = v4;
    v6 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@ failed to download venue info with error: %{public}@", &v7, 0x16u);
  }
}

- (void)venueCategoryContentDownloader:(id)a3 didChangeMapItem:(id)a4
{
  v6 = a4;
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

  v11 = [(SearchResultsDataProvider *)self _identifierForMapItem:v6];
  v12 = [(NSMutableDictionary *)self->_venues objectForKeyedSubscript:v11];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 venueCardItem];

    if (!v14)
    {
      v15 = [VenueSearchCardItem alloc];
      v16 = [v13 currentCategory];
      v17 = [(VenueSearchCardItem *)v15 initWithMapItem:v6 searchCategory:v16];
      [v13 setVenueCardItem:v17];
    }
  }
}

- (void)venueCategoryContentDownloaderDidStart:(id)a3
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

- (void)_setSearchSession:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_searchSession != v4 && ([(SearchSession *)v4 isEqual:?]& 1) == 0)
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
  v3 = [(SearchResultsDataProvider *)self actionCoordinator];
  v4 = [v3 currentSearchSession];

  [(SearchResultsDataProvider *)self _setSearchSession:v4];
}

- (void)performSearchForSuggestion:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v8 = objc_alloc_init(SearchFieldItem);
    [(SearchFieldItem *)v8 setSuggestion:v4];
    WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);
    [WeakRetained viewController:0 doSearchItem:v8 withUserInfo:0];

    [(SearchResultsDataProvider *)self _updateCurrentSearchSession];
    v6 = +[MKMapService sharedService];
    v7 = [v4 searchBarDisplayToken];

    [v6 captureUserAction:2020 onTarget:101 eventValue:v7];
  }
}

- (void)selectCategory:(id)a3 forVenueWithVenueIdentifier:(id)a4
{
  v6 = a3;
  v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [a4 venueID]);
  v7 = [(NSMutableDictionary *)self->_venues objectForKeyedSubscript:v9];
  [v7 setCurrentCategory:v6];

  v8 = [(SearchResultsDataProvider *)self actionCoordinator];
  [v7 performSearchWithActionCoordination:v8];
}

- (void)handleVenueSearchResultsWithSelectedSearchResult:(id)a3 searchFieldItem:(id)a4 browseCategories:(id)a5
{
  v18 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 venueCategoryItem];
  v11 = [v10 venueIdentifier];

  v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v11 venueID]);
  v13 = v12;
  if (v12 && [v12 integerValue])
  {
    v14 = [(NSMutableDictionary *)self->_venues objectForKeyedSubscript:v13];
    v15 = [v14 contentDownloader];
    if (v15)
    {
      v16 = [v8 venueCategoryItem];
      v17 = [v16 isAutoCompleteCategory];

      if (v17)
      {
        [v15 searchDidReceiveAutoCompleteSubcategories:v9];
      }

      [v15 searchDidReceiveResults:v18];
    }
  }
}

- (void)presentVenueWithVenueCardItem:(id)a3
{
  v7 = a3;
  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___VenueCategoryCardItem])
  {
    v4 = [(SearchResultsDataProvider *)self _identifierForVenueCardItem:v7];
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

    [(SearchResultVenueSubDataProvider *)v5 setVenueCardItem:v7];
    v6 = [(SearchResultsDataProvider *)self actionCoordinator];
    [(SearchResultVenueSubDataProvider *)v5 performSearchWithActionCoordination:v6];
  }

  else
  {
    [v7 conformsToProtocol:&OBJC_PROTOCOL___VenueAutoCompleteCategoryCardItem];
  }
}

- (void)addVenueProviderForMapItem:(id)a3
{
  v10 = a3;
  v4 = [(SearchResultsDataProvider *)self _identifierForMapItem:?];
  v5 = [(NSMutableDictionary *)self->_venues objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [[SearchResultVenueSubDataProvider alloc] initWithDelegate:self];
    [(NSMutableDictionary *)self->_venues setObject:v5 forKeyedSubscript:v4];
  }

  v6 = [(SearchResultVenueSubDataProvider *)v5 venueCardItem];

  if (!v6)
  {
    v7 = [v10 _browseCategories];
    v8 = [v7 firstObject];

    v9 = [[VenueSearchCardItem alloc] initWithMapItem:v10 searchCategory:v8];
    [(SearchResultVenueSubDataProvider *)v5 setVenueCardItem:v9];
  }
}

- (void)downloadVenueInfoForMapItem:(id)a3
{
  v5 = [(SearchResultsDataProvider *)self venueProviderForMapItem:a3];
  v4 = [(SearchResultsDataProvider *)self actionCoordinator];
  [v5 performSearchWithActionCoordination:v4];
}

- (id)venueProviderForMapItem:(id)a3
{
  v4 = [(SearchResultsDataProvider *)self _identifierForMapItem:a3];
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

- (id)_identifierForVenueCardItem:(id)a3
{
  v3 = a3;
  if ([v3 isVenueItem])
  {
    v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 venueID]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_identifierForMapItem:(id)a3
{
  v3 = a3;
  if ([v3 _maps_isVenueOrBuilding] && (objc_msgSend(v3, "_venueInfo"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "venueIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "_hasVenueID"), v5, v4, v6))
  {
    v7 = [v3 _venueInfo];
    v8 = [v7 venueIdentifier];
    v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 venueID]);
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
  v3 = [(SearchSession *)self->_searchSession currentResults];
  v4 = [(SearchSession *)self->_searchSession currentResultsSearchInfo];
  v5 = sub_100067540();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v22 = 134218242;
    v23 = [v3 count];
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[SearchResultsDataProvider] SearchResultsCount:%ld searchInfo: %@", &v22, 0x16u);
  }

  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    v6 = [v4 searchSectionList];
    if (!v6 || (v7 = v6, [v4 searchSectionList], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "searchSections"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8, v7, !v10))
    {
      v17 = sub_100067540();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        searchSession = self->_searchSession;
        v22 = 138412290;
        v23 = searchSession;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[SearchResultsDataProvider] Search session is missing section list: %@. Using alphabetical ordering.", &v22, 0xCu);
      }

      v13 = [[AlphabeticallyOrderedDataSource alloc] initWithAlphabeticallySortableObject:v3];
      v14 = sub_100067540();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }

      v15 = [(AlphabeticallyOrderedDataSource *)v13 orderedObjects];
      v19 = [(SearchSession *)v15 count];
      v22 = 134217984;
      v23 = v19;
      v16 = "[SearchResultsDataProvider] AlphabeticallyOrderedDataSource objects count: %ld";
      goto LABEL_15;
    }

    v11 = [SearchListOrderedDataSource alloc];
    v12 = [v4 searchSectionList];
    v13 = [(SearchListOrderedDataSource *)v11 initWithObjects:v3 searchSectionList:v12];

    v14 = sub_1000410AC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [(AlphabeticallyOrderedDataSource *)v13 orderedObjects];
      v22 = 138412290;
      v23 = v15;
      v16 = "[SearchResultsDataProvider] ListOrderedDataSource objects: %@)";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, v16, &v22, 0xCu);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if ([v4 sortOrder] == 1)
  {
    v13 = [[AlphabeticallyOrderedDataSource alloc] initWithAlphabeticallySortableObject:v3];
    v14 = sub_1000410AC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [(AlphabeticallyOrderedDataSource *)v13 orderedObjects];
      v22 = 138412290;
      v23 = v15;
      v16 = "[SearchResultsDataProvider] AlphabeticallyOrderedDataSource objects: %@)";
      goto LABEL_15;
    }

LABEL_16:

    v20 = [(AlphabeticallyOrderedDataSource *)v13 orderedObjects];

    goto LABEL_18;
  }

  v20 = v3;
LABEL_18:

  return v20;
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

- (void)_updateAndNotifyObservers:(BOOL)a3
{
  v77 = a3;
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
    v73 = [(SearchSession *)self->_searchSession isLoading];
    if (isLoading != v73)
    {
      self->_isLoading = [(SearchSession *)self->_searchSession isLoading];
    }

    v9 = [(SearchSession *)self->_searchSession currentResultsSearchInfo];
    aSelector = a2;
    if ([(SearchInfo *)v9 singleResultMode])
    {
      v10 = [(SearchInfo *)v9 results];
      v11 = [v10 firstObject];
      v12 = [(SearchResultsDataProvider *)self _isItemVenue:v11];

      v13 = [(SearchSession *)self->_searchSession suggestion];

      v14 = (v13 == 0) & ~v12;
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

    if (v9 == self->_searchInfo)
    {
      v75 = 1;
    }

    else
    {
      v75 = [(SearchInfo *)v9 isEqual:?];
      if (((v75 | v14) & 1) == 0)
      {
        objc_storeStrong(&self->_searchInfo, v9);
        if (!self->_originalSearchInfo)
        {
          objc_storeStrong(&self->_originalSearchInfo, v9);
        }

        v75 = 0;
      }
    }

    v17 = [(SearchSession *)self->_searchSession lastError];
    if (v17)
    {
    }

    else if ([(SearchInfo *)v9 searchResultType]!= 2)
    {
      v18 = 0;
      goto LABEL_21;
    }

    v18 = [(SearchResultsDataProvider *)self _searchSessionErrorString];
LABEL_21:
    errorString = self->_errorString;
    if (errorString == v18 || ([(NSString *)errorString isEqual:v18]& 1) != 0)
    {
      v65 = 1;
    }

    else
    {
      objc_storeStrong(&self->_errorString, v18);
      v65 = 0;
    }

    v20 = [(SearchResultsDataProvider *)self _orderedCurrentSearchResults];
    v76 = v20;
    if (v20 == self->_searchResults)
    {
      v74 = 1;
    }

    else
    {
      v74 = [(NSArray *)v20 isEqual:?];
      if (((v74 | v14) & 1) == 0)
      {
        v21 = [(NSArray *)v76 copy];
        searchResults = self->_searchResults;
        self->_searchResults = v21;

        [(NSMutableDictionary *)self->_venues removeAllObjects];
        v74 = 0;
LABEL_32:
        if ([(SearchInfo *)v9 hasRelatedSearchSuggestion])
        {
          v23 = [RelatedSearchSuggestion alloc];
          v24 = [(SearchInfo *)v9 resultDisplayHeader];
          [(SearchInfo *)v9 substitutes];
          v26 = v25 = v14;
          [(SearchInfo *)v9 dymSuggestionVisibleTime];
          v28 = [(RelatedSearchSuggestion *)v23 initWithResultDisplayHeader:v24 substitutes:v26 visibleTime:[(SearchInfo *)v9 showDymSuggestionCloseButton] showCloseButton:v27];
          relatedSuggestion = self->_relatedSuggestion;
          self->_relatedSuggestion = v28;

          v14 = v25;
        }

        v30 = [self->_originalSearchInfo suggestions];
        v31 = [self->_originalSearchInfo defaultSuggestion];
        if (v31 && [v30 count])
        {
          v92 = v31;
          v32 = [NSArray arrayWithObjects:&v92 count:1];
          v33 = [v32 arrayByAddingObjectsFromArray:v30];

          v34 = v33;
          v35 = [(SearchSession *)self->_searchSession suggestion];
          v36 = v35;
          if (v35)
          {
            v37 = v35;
          }

          else
          {
            v37 = v31;
          }

          v38 = v37;
        }

        else
        {
          v38 = 0;
          v34 = 0;
        }

        v71 = v30;
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

        v72 = v18;
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

        v70 = v31;
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

          aSelectora = v9;
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
          v9 = aSelectora;

          isLoading = v64;
        }

        if (isLoading == v73 && ((v14 | v75 & v65 & v74) & 1) != 0)
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
          if (v77)
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
    v3 = [(NSMutableDictionary *)self->_venues allValues];
    v4 = [v3 firstObject];

    v5 = [v4 venueCardItem];
    v6 = [v5 venueMapItem];

    if (v6)
    {
      v7 = [[SearchResult alloc] initWithMapItem:v6];
      v10 = v7;
      v8 = [NSArray arrayWithObjects:&v10 count:1];

      goto LABEL_6;
    }
  }

  v8 = self->_searchResults;
LABEL_6:

  return v8;
}

- (BOOL)_isItemVenue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 mapItem];
    v5 = [v4 _venueFeatureType] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    if (!a3)
    {
      [(NSMutableDictionary *)self->_venues removeAllObjects];
    }
  }
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);
  v4 = [WeakRetained searchSessionManager];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = SearchResultsDataProvider;
  [(SearchResultsDataProvider *)&v5 dealloc];
}

- (void)setActionCoordinator:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_actionCoordinator);
    v6 = [v5 searchSessionManager];
    [v6 removeObserver:self];

    v7 = objc_storeWeak(&self->_actionCoordinator, obj);
    v8 = [obj searchSessionManager];
    [v8 addObserver:self];

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