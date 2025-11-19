@interface SearchHomeRecentSearchesDataFetcher
- (SearchHomeDataFetcherDelegate)delegate;
- (SearchHomeRecentSearchesDataFetcher)initWithDelegate:(id)a3 isSearchAlongRoute:(BOOL)a4;
- (void)fetchContent;
- (void)updateContent;
@end

@implementation SearchHomeRecentSearchesDataFetcher

- (SearchHomeDataFetcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateContent
{
  v2 = sub_10075072C();
  v3 = os_signpost_id_generate(v2);

  v4 = sub_10075072C();
  v5 = v4;
  spid = v3;
  v43 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "UpdateContent", "", buf, 2u);
  }

  v6 = +[Recents sharedRecents];
  v7 = [v6 recents];
  v8 = [v7 reverseObjectEnumerator];
  v9 = [v8 allObjects];

  v51 = objc_alloc_init(NSMutableArray);
  v50 = objc_alloc_init(NSMutableDictionary);
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v76 objects:v83 count:16];
  if (v10)
  {
    v11 = *v77;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v77 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v76 + 1) + 8 * i);
        objc_initWeak(buf, v13);
        v14 = [v13 historyEntry];
        v73[0] = _NSConcreteStackBlock;
        v73[1] = 3221225472;
        v73[2] = sub_100750780;
        v73[3] = &unk_101628000;
        objc_copyWeak(&v75, buf);
        v15 = v51;
        v74 = v15;
        v69[0] = _NSConcreteStackBlock;
        v69[1] = 3221225472;
        v69[2] = sub_1007507DC;
        v69[3] = &unk_101628028;
        objc_copyWeak(&v72, buf);
        v70 = v50;
        v71 = v15;
        [v14 ifSearch:v73 ifRoute:0 ifPlaceDisplay:v69 ifTransitLineItem:0];

        objc_destroyWeak(&v72);
        objc_destroyWeak(&v75);
        objc_destroyWeak(buf);
      }

      v10 = [obj countByEnumeratingWithState:&v76 objects:v83 count:16];
    }

    while (v10);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v45 = [v50 allKeys];
  v47 = [v45 countByEnumeratingWithState:&v65 objects:v82 count:16];
  if (v47)
  {
    v46 = *v66;
    do
    {
      v16 = 0;
      do
      {
        if (*v66 != v46)
        {
          v17 = v16;
          objc_enumerationMutation(v45);
          v16 = v17;
        }

        v48 = v16;
        v18 = *(*(&v65 + 1) + 8 * v16);
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v19 = v51;
        v20 = [v19 countByEnumeratingWithState:&v61 objects:v81 count:16];
        if (v20)
        {
          v21 = *v62;
          v22 = 0x7FFFFFFFFFFFFFFFLL;
          do
          {
            for (j = 0; j != v20; j = j + 1)
            {
              if (*v62 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v61 + 1) + 8 * j);
              v25 = [v24 historyEntry];
              v26 = [v25 storageIdentifier];
              v27 = [v26 isEqual:v18];

              if (v27)
              {
                v22 = [v19 indexOfObject:v24];
              }
            }

            v20 = [v19 countByEnumeratingWithState:&v61 objects:v81 count:16];
          }

          while (v20);

          if (v22 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v19 removeObjectAtIndex:v22];
          }
        }

        else
        {
        }

        v16 = v48 + 1;
      }

      while ((v48 + 1) != v47);
      v47 = [v45 countByEnumeratingWithState:&v65 objects:v82 count:16];
    }

    while (v47);
  }

  self->_isFetchingDataComplete = 1;
  v28 = [(SearchHomeRecentSearchesDataFetcher *)self recentSearches];
  v29 = [v51 isEqualToArray:v28];

  if ((v29 & 1) == 0)
  {
    v30 = objc_alloc_init(NSMutableArray);
    *buf = 0;
    v56 = buf;
    v57 = 0x3032000000;
    v58 = sub_100750884;
    v59 = sub_100750894;
    v60 = 0;
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_10075089C;
    v52[3] = &unk_1016280A0;
    v31 = v30;
    v53 = v31;
    v54 = buf;
    [v51 enumerateObjectsUsingBlock:v52];
    [(SearchHomeRecentSearchesDataFetcher *)self setRecentSearches:v31];
    v32 = +[NSBundle mainBundle];
    v33 = [v32 localizedStringForKey:@"[Search Home] Recents" value:@"localized string not found" table:0];

    v34 = [SearchHomeRecentSearchesDataProvider alloc];
    v35 = [(SearchHomeRecentSearchesDataFetcher *)self recentSearches];
    v36 = [(SearchHomeRecentSearchesDataProvider *)v34 initWithObjects:v35 type:1 identifier:@"SearchHomeRecents" title:v33];

    v80 = v36;
    v37 = [NSArray arrayWithObjects:&v80 count:1];
    dataProviders = self->_dataProviders;
    self->_dataProviders = v37;

    v39 = [(SearchHomeRecentSearchesDataFetcher *)self delegate];
    [v39 didUpdateDataFetcher:self];

    _Block_object_dispose(buf, 8);
  }

  v40 = sub_10075072C();
  v41 = v40;
  if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_INTERVAL_END, spid, "UpdateContent", "", buf, 2u);
  }
}

- (void)fetchContent
{
  v3 = [(SearchHomeRecentSearchesDataFetcher *)self delegate];
  [v3 didUpdateDataFetcher:self];
}

- (SearchHomeRecentSearchesDataFetcher)initWithDelegate:(id)a3 isSearchAlongRoute:(BOOL)a4
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SearchHomeRecentSearchesDataFetcher;
  v6 = [(SearchHomeRecentSearchesDataFetcher *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_delegate, v5);
    v7->_isFetchingDataComplete = 0;
    v8 = +[Recents sharedRecents];
    [v8 addObserver:v7];

    [(SearchHomeRecentSearchesDataFetcher *)v7 updateContent];
  }

  return v7;
}

@end