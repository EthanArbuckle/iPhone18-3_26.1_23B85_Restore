@interface SearchBarSearchManager
- (SearchBarSearchManager)initWithDelegate:(id)delegate;
- (SearchBarSearchManagerDelegate)delegate;
- (int64_t)_integerValueForDefaultsKey:(id)key networkDefaultsKey:(id)defaultsKey;
- (void)_searchUsingSearchRequest:(id)request backfill:(int64_t)backfill;
- (void)dealloc;
- (void)historyOperation:(id)operation didFindMatches:(id)matches;
- (void)searchAddressBookOperation:(id)operation didMatchResults:(id)results;
- (void)searchFindMyFriendOperation:(id)operation didMatchResults:(id)results;
- (void)searchMapsSyncOperation:(id)operation didMatchResults:(id)results;
- (void)searchName:(id)name forSearchMode:(unsigned int)mode backfill:(int64_t)backfill context:(id)context originationType:(int)type;
- (void)searchRecentsOperation:(id)operation didMatchResults:(id)results;
@end

@implementation SearchBarSearchManager

- (SearchBarSearchManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_searchUsingSearchRequest:(id)request backfill:(int64_t)backfill
{
  requestCopy = request;
  v4 = sub_100067540();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    searchName = [requestCopy searchName];
    *buf = 138412290;
    v77 = searchName;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "SearchBarSearchManager - collecting results for query: %@", buf, 0xCu);
  }

  v6 = objc_alloc_init(NSOperationQueue);
  searchQueue = self->_searchQueue;
  self->_searchQueue = v6;

  [(NSOperationQueue *)self->_searchQueue setName:@"com.apple.Maps.SearchBarSearchManager"];
  [(NSOperationQueue *)self->_searchQueue setMaxConcurrentOperationCount:1];
  [(NSOperationQueue *)self->_searchQueue setQualityOfService:25];
  v8 = +[MapsRadarController sharedInstance];
  [v8 addAttachmentProvider:self->_searchQueue];

  self->signpostID = 0xEEEEB0B5B2B2EEEELL;
  v9 = objc_alloc_init(SearchBarSearchResults);
  searchResults = self->_searchResults;
  self->_searchResults = v9;

  searchName2 = [requestCopy searchName];
  [(SearchBarSearchManager *)self setQuery:searchName2];

  context = [requestCopy context];
  v12 = [(SearchBarSearchManager *)self _integerValueForDefaultsKey:@"HistorySearchOrderKey" networkDefaultsKey:145, &unk_10163D8F0];
  v13 = [(SearchBarSearchManager *)self _integerValueForDefaultsKey:@"RecentsSeachOrderKey" networkDefaultsKey:143, &unk_10163D880];
  v14 = [(SearchBarSearchManager *)self _integerValueForDefaultsKey:@"AddressBookSearchOrderKey" networkDefaultsKey:141, &unk_10163D810];
  v15 = [(SearchBarSearchManager *)self _integerValueForDefaultsKey:@"AutocompleteSearchFindMyKey" networkDefaultsKey:613, &unk_101643468];
  v63 = [(SearchBarSearchManager *)self _integerValueForDefaultsKey:@"AutocompleteSearchMapsSyncKey" networkDefaultsKey:770, &unk_1016453B8];
  BOOL = GEOConfigGetBOOL();
  v16 = +[NSMutableDictionary dictionary];
  v17 = +[Recents sharedRecents];
  recents = [v17 recents];
  v19 = [recents copy];

  v20 = [SearchHistoryOperation alloc];
  searchName3 = [requestCopy searchName];
  v22 = -[SearchHistoryOperation initWithSearchQuery:searchMode:history:context:](v20, "initWithSearchQuery:searchMode:history:context:", searchName3, [requestCopy searchMode], v19, context);

  searchName4 = [requestCopy searchName];
  v24 = [NSString stringWithFormat:@"%@-%@", @"HistoryOperation", searchName4];
  [(SearchHistoryOperation *)v22 setName:v24];

  [(SearchHistoryOperation *)v22 setDelegate:self];
  v25 = [NSNumber numberWithInteger:v12];
  [v16 setObject:v22 forKeyedSubscript:v25];

  if (+[MapsSuggestionsSiri isEnabled])
  {
    v26 = [[SearchRecentsOperation alloc] initWithSearchQuery:self->_query context:context];
    [(SearchRecentsOperation *)v26 setDelegate:self];
    searchName5 = [requestCopy searchName];
    v28 = [NSString stringWithFormat:@"%@-%@", @"RecentsOperation", searchName5];
    [(SearchRecentsOperation *)v26 setName:v28];

    v29 = [NSNumber numberWithInteger:v13];
    [v16 setObject:v26 forKeyedSubscript:v29];
  }

  if ((MapsFeature_IsEnabled_MapsWally() & 1) == 0)
  {
    v30 = [[SearchAddressBookOperation alloc] initWithSearchQuery:self->_query context:context];
    [(SearchAddressBookOperation *)v30 setDelegate:self];
    searchName6 = [requestCopy searchName];
    v32 = [NSString stringWithFormat:@"%@-%@", @"AddressBookOperation", searchName6];
    [(SearchAddressBookOperation *)v30 setName:v32];

    v33 = [NSNumber numberWithInteger:v14];
    [v16 setObject:v30 forKeyedSubscript:v33];
  }

  if (MapsFeature_IsEnabled_MapsWally())
  {
    if ([requestCopy searchMode] == 3)
    {
      v34 = [[SearchAddressBookOperation alloc] initWithSearchQuery:self->_query context:context];
      v35 = @"CarPlay-AddressBookOperation";
    }

    else
    {
      v36 = +[MapsOfflineUIHelper sharedHelper];
      isUsingOfflineMaps = [v36 isUsingOfflineMaps];

      v34 = -[SearchFindMyFriendOperation initWithSearchQuery:context:isOffline:singularResults:searchFindMySession:]([_TtC4Maps27SearchFindMyFriendOperation alloc], "initWithSearchQuery:context:isOffline:singularResults:searchFindMySession:", self->_query, context, isUsingOfflineMaps, [requestCopy originationType] - 1 < 2, self->_findMySession);
      v14 = v15;
      v35 = @"SearchFMOperation";
    }

    [(SearchAddressBookOperation *)v34 setDelegate:self];
    searchName7 = [requestCopy searchName];
    v39 = [NSString stringWithFormat:@"%@-%@", v35, searchName7];
    [(SearchAddressBookOperation *)v34 setName:v39];

    v40 = [NSNumber numberWithInteger:v14];
    [v16 setObject:v34 forKeyedSubscript:v40];
  }

  if (BOOL)
  {
    if ([requestCopy originationType])
    {
      v41 = 0;
    }

    else
    {
      v41 = [requestCopy searchMode] == 1;
    }

    v42 = [[_TtC4Maps23SearchMapsSyncOperation alloc] initWithSearchQuery:self->_query context:context includeCustomRoutes:v41];
    [(SearchMapsSyncOperation *)v42 setDelegate:self];
    searchName8 = [requestCopy searchName];
    v44 = [NSString stringWithFormat:@"%@-%@", @"MapsSyncOperation", searchName8];
    [(SearchMapsSyncOperation *)v42 setName:v44];

    v45 = [NSNumber numberWithInteger:v63];
    [v16 setObject:v42 forKeyedSubscript:v45];
  }

  v46 = sub_1006B6214();
  v47 = v46;
  signpostID = self->signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "CollectingClientResults", "", buf, 2u);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  allKeys = [v16 allKeys];
  v50 = [allKeys sortedArrayUsingSelector:"compare:"];

  v51 = [v50 countByEnumeratingWithState:&v72 objects:v82 count:16];
  if (v51)
  {
    v52 = *v73;
    do
    {
      for (i = 0; i != v51; i = i + 1)
      {
        if (*v73 != v52)
        {
          objc_enumerationMutation(v50);
        }

        v54 = [v16 objectForKeyedSubscript:*(*(&v72 + 1) + 8 * i)];
        v55 = sub_100067540();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          name = [v54 name];
          *buf = 138412290;
          v77 = name;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "SearchBarSearchManager - Adding operation: %@", buf, 0xCu);
        }

        [(NSOperationQueue *)self->_searchQueue addOperation:v54];
      }

      v51 = [v50 countByEnumeratingWithState:&v72 objects:v82 count:16];
    }

    while (v51);
  }

  v57 = sub_100067540();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v58 = self->_searchQueue;
    operations = [(NSOperationQueue *)v58 operations];
    query = self->_query;
    *buf = 138412802;
    v77 = v58;
    v78 = 2112;
    v79 = operations;
    v80 = 2112;
    v81 = query;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "SearchBarSearchManager - searchQueue:%@ \n operations: %@ \n searchQuery: %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v61 = self->_searchQueue;
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_1006B6268;
  v69[3] = &unk_10162BD20;
  objc_copyWeak(v71, buf);
  v71[1] = backfill;
  v69[4] = self;
  v62 = context;
  v70 = v62;
  [(NSOperationQueue *)v61 addOperationWithBlock:v69];

  objc_destroyWeak(v71);
  objc_destroyWeak(buf);
}

- (int64_t)_integerValueForDefaultsKey:(id)key networkDefaultsKey:(id)defaultsKey
{
  keyCopy = key;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 objectForKey:keyCopy];

  if (v6)
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    Integer = [v7 integerForKey:keyCopy];
  }

  else
  {
    Integer = GEOConfigGetInteger();
  }

  return Integer;
}

- (void)searchName:(id)name forSearchMode:(unsigned int)mode backfill:(int64_t)backfill context:(id)context originationType:(int)type
{
  v7 = *&type;
  v9 = *&mode;
  contextCopy = context;
  nameCopy = name;
  v14 = objc_alloc_init(SearchBarSearchManagerRequest);
  [(SearchBarSearchManagerRequest *)v14 setSearchName:nameCopy];

  [(SearchBarSearchManagerRequest *)v14 setSearchMode:v9];
  [(SearchBarSearchManagerRequest *)v14 setContext:contextCopy];

  [(SearchBarSearchManagerRequest *)v14 setOriginationType:v7];
  [(SearchBarSearchManager *)self _searchUsingSearchRequest:v14 backfill:backfill];
}

- (void)searchMapsSyncOperation:(id)operation didMatchResults:(id)results
{
  operationCopy = operation;
  resultsCopy = results;
  v8 = resultsCopy;
  if (resultsCopy && [resultsCopy count])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006B66F4;
    block[3] = &unk_101661A40;
    block[4] = self;
    v10 = v8;
    v11 = operationCopy;
    dispatch_sync(&_dispatch_main_q, block);
  }
}

- (void)searchFindMyFriendOperation:(id)operation didMatchResults:(id)results
{
  operationCopy = operation;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006B68C0;
  block[3] = &unk_101661A40;
  resultsCopy = results;
  selfCopy = self;
  v12 = operationCopy;
  v7 = operationCopy;
  v8 = resultsCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)searchAddressBookOperation:(id)operation didMatchResults:(id)results
{
  operationCopy = operation;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006B6A94;
  block[3] = &unk_101661A40;
  resultsCopy = results;
  selfCopy = self;
  v12 = operationCopy;
  v7 = operationCopy;
  v8 = resultsCopy;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)searchRecentsOperation:(id)operation didMatchResults:(id)results
{
  operationCopy = operation;
  resultsCopy = results;
  v8 = resultsCopy;
  if (resultsCopy && [resultsCopy count])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006B6CA4;
    block[3] = &unk_101661A40;
    block[4] = self;
    v10 = v8;
    v11 = operationCopy;
    dispatch_sync(&_dispatch_main_q, block);
  }
}

- (void)historyOperation:(id)operation didFindMatches:(id)matches
{
  operationCopy = operation;
  matchesCopy = matches;
  v8 = matchesCopy;
  if (matchesCopy && [matchesCopy count])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006B6E7C;
    block[3] = &unk_101661A40;
    block[4] = self;
    v10 = v8;
    v11 = operationCopy;
    dispatch_sync(&_dispatch_main_q, block);
  }
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_searchQueue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = SearchBarSearchManager;
  [(SearchBarSearchManager *)&v3 dealloc];
}

- (SearchBarSearchManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = SearchBarSearchManager;
  v5 = [(SearchBarSearchManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(SearchBarSearchManager *)v5 setDelegate:delegateCopy];
    v7 = objc_alloc_init(SearchBarSearchResults);
    searchResults = v6->_searchResults;
    v6->_searchResults = v7;

    v9 = objc_alloc_init(_TtC4Maps19SearchFindMySession);
    findMySession = v6->_findMySession;
    v6->_findMySession = v9;
  }

  return v6;
}

@end