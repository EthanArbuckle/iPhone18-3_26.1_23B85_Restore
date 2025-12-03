@interface SearchResultsItemSource
- (SearchResultsItemSource)init;
- (id)allItems;
- (id)keysForSearchResult:(id)result;
- (void)_updateSearchResults:(id)results;
- (void)checkForVisitedPlacesPOI:(id)i searchResult:(id)result;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setPreferredDisplayedSearchResultType:(int64_t)type;
- (void)setSearchResults:(id)results;
- (void)setShouldHideSearchResults:(BOOL)results;
@end

@implementation SearchResultsItemSource

- (SearchResultsItemSource)init
{
  v7.receiver = self;
  v7.super_class = SearchResultsItemSource;
  v2 = [(SearchResultsItemSource *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("SearchResultsItemSource.lock", v3);
    lockQueue = v2->_lockQueue;
    v2->_lockQueue = v4;
  }

  return v2;
}

- (id)allItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100D59728;
  v10 = sub_100D59738;
  v11 = 0;
  lockQueue = self->_lockQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100016170;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lockQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setPreferredDisplayedSearchResultType:(int64_t)type
{
  if (self->_preferredDisplayedSearchResultType != type)
  {
    self->_preferredDisplayedSearchResultType = type;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allItems = [(SearchResultsItemSource *)self allItems];
    v6 = [allItems countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(allItems);
          }

          [*(*(&v10 + 1) + 8 * i) setPreferredDisplayedSearchResultType:type];
        }

        v7 = [allItems countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(PersonalizedItemSource *)self _notifyObserversItemsDidChange];
  }
}

- (void)setShouldHideSearchResults:(BOOL)results
{
  if (self->_shouldHideSearchResults == results)
  {
    return;
  }

  resultsCopy = results;
  v5 = sub_1000177D0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(SearchResultsItemSource *)selfCopy performSelector:"accessibilityIdentifier"];
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
    if (resultsCopy)
    {
      v12 = @"YES";
    }

    v13 = v12;
    *buf = 138543618;
    v29 = selfCopy;
    v30 = 2112;
    v31 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set shouldHideSearchResults: %@", buf, 0x16u);
  }

  self->_shouldHideSearchResults = resultsCopy;
  allItems = [(SearchResultsItemSource *)self allItems];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = [allItems countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(allItems);
        }

        [*(*(&v23 + 1) + 8 * v18) setShouldBeHiddenFromMap:resultsCopy];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [allItems countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  lockQueue = self->_lockQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D58D20;
  block[3] = &unk_101661A90;
  block[4] = self;
  v22 = allItems;
  v20 = allItems;
  dispatch_sync(lockQueue, block);
  [(PersonalizedItemSource *)self _notifyObserversItemsDidChange];
}

- (id)keysForSearchResult:(id)result
{
  resultCopy = result;
  if (resultCopy)
  {
    v4 = +[NSMutableSet set];
    personalizedItemKey = [resultCopy personalizedItemKey];
    [v4 addObject:personalizedItemKey];

    if ([resultCopy type] == 3)
    {
      v6 = [DroppedPinMapItemKey alloc];
      [resultCopy coordinate];
      v7 = [(DroppedPinMapItemKey *)v6 initWithCoordinate:?];
      [v4 addObject:v7];
    }
  }

  else
  {
    v4 = +[NSSet set];
  }

  return v4;
}

- (void)checkForVisitedPlacesPOI:(id)i searchResult:(id)result
{
  iCopy = i;
  resultCopy = result;
  personalizedItemKey = [resultCopy personalizedItemKey];
  if (personalizedItemKey)
  {
    if (!self->_mode)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_initWeak(&location, self);
        mapItem = [resultCopy mapItem];
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100D58FB0;
        v10[3] = &unk_10165F3F0;
        objc_copyWeak(&v13, &location);
        v11 = iCopy;
        v12 = resultCopy;
        [v11 isVisitedMapItem:mapItem completionHandler:v10];

        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (void)_updateSearchResults:(id)results
{
  resultsCopy = results;
  if (self->_mode > 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = objc_opt_class();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = resultsCopy;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      v10 = 0;
      do
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v31 + 1) + 8 * v10);
        v12 = [[v5 alloc] initWithSearchResult:v11];
        [(SearchResultsItemSource *)self checkForVisitedPlacesPOI:v12 searchResult:v11];
        if (v12)
        {
          [v12 setSource:self];
          [(NSMapTable *)self->_allSearchResults setObject:v12 forKey:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  v24 = v6;

  v13 = [NSMutableArray arrayWithCapacity:[(NSArray *)self->_searchResults count]];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = self->_searchResults;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v28;
    do
    {
      v19 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v14);
        }

        ++v17;
        v20 = [(NSMapTable *)self->_allSearchResults objectForKey:*(*(&v27 + 1) + 8 * v19)];
        v21 = v20;
        if (v20)
        {
          [v20 setSortOrder:v17];
          [v21 setShouldBeHiddenFromMap:self->_shouldHideSearchResults];
          [v21 setPreferredDisplayedSearchResultType:self->_preferredDisplayedSearchResultType];
          [v13 addObject:v21];
        }

        v19 = v19 + 1;
      }

      while (v16 != v19);
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v16);
  }

  lockQueue = self->_lockQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D59358;
  block[3] = &unk_101661A90;
  block[4] = self;
  v26 = v13;
  v23 = v13;
  dispatch_sync(lockQueue, block);
  [(PersonalizedItemSource *)self _notifyObserversItemsDidChange];
}

- (void)setSearchResults:(id)results
{
  resultsCopy = results;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = self->_searchResults;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v25 + 1) + 8 * v9) removeObserver:self forKeyPath:@"reverseGeocoded"];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v10 = [resultsCopy copy];
  searchResults = self->_searchResults;
  self->_searchResults = v10;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = self->_searchResults;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v21 + 1) + 8 * v16) addObserver:self forKeyPath:@"reverseGeocoded" options:0 context:off_101935B08];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }

  v17 = +[NSMapTable strongToStrongObjectsMapTable];
  allSearchResults = self->_allSearchResults;
  self->_allSearchResults = v17;

  lockQueue = self->_lockQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D59614;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_sync(lockQueue, block);
  [(SearchResultsItemSource *)self _updateSearchResults:self->_searchResults];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_101935B08 == context)
  {
    objectCopy = object;
    objectCopy2 = object;
    objectCopy3 = [NSArray arrayWithObjects:&objectCopy count:1];

    [(SearchResultsItemSource *)self _updateSearchResults:objectCopy3];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SearchResultsItemSource;
    objectCopy3 = object;
    [(SearchResultsItemSource *)&v12 observeValueForKeyPath:path ofObject:objectCopy3 change:change context:context];
  }
}

- (void)dealloc
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_searchResults;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) removeObserver:self forKeyPath:@"reverseGeocoded"];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = SearchResultsItemSource;
  [(SearchResultsItemSource *)&v8 dealloc];
}

@end