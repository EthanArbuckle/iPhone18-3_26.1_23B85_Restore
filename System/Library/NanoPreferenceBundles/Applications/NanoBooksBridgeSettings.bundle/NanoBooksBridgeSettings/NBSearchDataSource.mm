@interface NBSearchDataSource
- (BOOL)_isSearchCancelled;
- (NBSearchDataSource)init;
- (unint64_t)count;
- (void)_combineSearchResults;
- (void)dealloc;
- (void)filterResultsUsingSearchString:(id)a3 completion:(id)a4;
@end

@implementation NBSearchDataSource

- (NBSearchDataSource)init
{
  v9.receiver = self;
  v9.super_class = NBSearchDataSource;
  v2 = [(NBSearchDataSource *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    v5 = +[MPMediaQuery nb_storeOnlyAudiobooksQuery];
    searchQuery = v2->_searchQuery;
    v2->_searchQuery = v5;

    familyDSIDs = v2->_familyDSIDs;
    v2->_familyDSIDs = &__NSArray0__struct;
  }

  return v2;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = NBSearchDataSource;
  [(NBSearchDataSource *)&v3 dealloc];
}

- (unint64_t)count
{
  result = [(NSString *)self->_searchString length];
  if (result)
  {
    results = self->_results;

    return [(NSArray *)results count];
  }

  return result;
}

- (void)filterResultsUsingSearchString:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  [(NSOperationQueue *)self->_operationQueue waitUntilAllOperationsAreFinished];
  mediaSearchOperation = self->_mediaSearchOperation;
  self->_mediaSearchOperation = 0;

  jaliscoSearchOperation = self->_jaliscoSearchOperation;
  self->_jaliscoSearchOperation = 0;

  v10 = NBDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v33 = v6;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Starting search for term '%@'", buf, 0xCu);
  }

  results = self->_results;
  self->_results = 0;

  v12 = [v6 copy];
  searchString = self->_searchString;
  self->_searchString = v12;

  if ([(NSString *)self->_searchString length])
  {
    v14 = [(NBSearchDataSource *)self searchQuery];
    v15 = [v14 nb_existingSearchPredicate];
    if (v15)
    {
      [v14 removeFilterPredicate:v15];
    }

    [v14 setCollectionPropertiesToFetch:0];
    v16 = self->_searchString;
    v17 = [NSSet setWithObjects:MPMediaItemPropertyArtist, MPMediaItemPropertyTitle, 0];
    v18 = [_MPMediaSearchStringPredicate predicateWithSearchString:v16 forProperties:v17];

    [v14 addFilterPredicate:v18];
    v19 = objc_opt_new();
    v20 = [[_NBMediaSearchOperation alloc] initWithSearchDataSource:self searchString:v6];
    v21 = self->_mediaSearchOperation;
    self->_mediaSearchOperation = v20;

    [v19 addObject:self->_mediaSearchOperation];
    v22 = [(NBSearchDataSource *)self familyDSIDs];
    v23 = [v22 count] == 0;

    if (!v23)
    {
      v24 = [[_NBJaliscoSearchOperation alloc] initWithSearchDataSource:self searchString:v6];
      v25 = self->_jaliscoSearchOperation;
      self->_jaliscoSearchOperation = v24;

      [v19 addObject:self->_jaliscoSearchOperation];
    }

    [(NSOperationQueue *)self->_operationQueue addOperations:v19 waitUntilFinished:0];
    objc_initWeak(buf, self);
    operationQueue = self->_operationQueue;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_E358;
    v28[3] = &unk_20C00;
    objc_copyWeak(&v31, buf);
    v30 = v7;
    v29 = v6;
    [(NSOperationQueue *)operationQueue addBarrierBlock:v28];

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }

  else if (v7)
  {
    v27 = NBDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = v6;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Completed search for term '%@'", buf, 0xCu);
    }

    v7[2](v7);
  }
}

- (BOOL)_isSearchCancelled
{
  mediaSearchOperation = self->_mediaSearchOperation;
  if (mediaSearchOperation && ([(_NBMediaSearchOperation *)mediaSearchOperation isCancelled]& 1) != 0)
  {
    LOBYTE(jaliscoSearchOperation) = 1;
  }

  else
  {
    jaliscoSearchOperation = self->_jaliscoSearchOperation;
    if (jaliscoSearchOperation)
    {

      LOBYTE(jaliscoSearchOperation) = [(_NBJaliscoSearchOperation *)jaliscoSearchOperation isCancelled];
    }
  }

  return jaliscoSearchOperation;
}

- (void)_combineSearchResults
{
  mediaSearchOperation = self->_mediaSearchOperation;
  if (!mediaSearchOperation || ([(_NBMediaSearchOperation *)mediaSearchOperation isCancelled]& 1) == 0)
  {
    jaliscoSearchOperation = self->_jaliscoSearchOperation;
    if (!jaliscoSearchOperation || ([(_NBJaliscoSearchOperation *)jaliscoSearchOperation isCancelled]& 1) == 0)
    {
      v64 = self;
      v5 = [(_NBMediaSearchOperation *)self->_mediaSearchOperation results];
      v6 = +[NSMutableSet set];
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v65 objects:v75 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v66;
        v11 = MPMediaItemPropertyStoreID;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v66 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v65 + 1) + 8 * i);
            objc_opt_class();
            v14 = [v13 valueForProperty:v11];
            v15 = BUDynamicCast();

            if (v15)
            {
              [v6 addObject:v15];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v65 objects:v75 count:16];
        }

        while (v9);
      }

      v16 = v64;
      v17 = [(_NBJaliscoSearchOperation *)v64->_jaliscoSearchOperation results];
      if ([v7 count] && !objc_msgSend(v17, "count"))
      {
        v45 = NBDefaultLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = [v7 count];
          v47 = [(NBSearchDataSource *)v64 searchString];
          *buf = 134218242;
          v70 = v46;
          v16 = v64;
          v71 = 2112;
          v72 = v47;
          _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "Only media items(%lu) found for search: %@", buf, 0x16u);
        }

        v48 = v7;
      }

      else
      {
        if (![v17 count] || objc_msgSend(v7, "count"))
        {
          if ([v7 count] && objc_msgSend(v17, "count"))
          {
            v18 = NBDefaultLog();
            v62 = v17;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = [v17 count];
              v20 = [v7 count];
              v21 = [(NBSearchDataSource *)v64 searchString];
              *buf = 134218498;
              v70 = v19;
              v71 = 2048;
              v72 = v20;
              v73 = 2112;
              v74 = v21;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Combining jalisco items (%lu) and media items (%lu) for search: %@", buf, 0x20u);

              v17 = v62;
            }

            v22 = objc_opt_new();
            v23 = [v7 objectEnumerator];
            v24 = [v17 objectEnumerator];
            v63 = v23;
            v25 = [v23 nextObject];
            v26 = [v24 nextObject];
            v28 = v26;
            if (v25)
            {
              v29 = v64;
              if (v26)
              {
                *&v27 = 138412290;
                v60 = v27;
                while (1)
                {
                  if ([(NBSearchDataSource *)v29 _isSearchCancelled])
                  {
                    goto LABEL_49;
                  }

                  v30 = [v28 storeID];
                  v31 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v30 integerValue]);
                  v32 = [v6 containsObject:v31];

                  if (v32)
                  {
                    break;
                  }

                  v34 = [v28 title];
                  if (!v34)
                  {
                    goto LABEL_32;
                  }

                  v35 = v34;
                  v36 = [v25 title];
                  v37 = [v28 title];
                  v38 = [v36 localizedCaseInsensitiveCompare:v37];

                  v39 = v38 + 1 == 0;
                  v29 = v64;
                  if (!v39)
                  {
LABEL_32:
                    [v22 addObject:v28];
LABEL_33:
                    v40 = [v24 nextObject];
                    v41 = v28;
                    v28 = v40;
                    goto LABEL_34;
                  }

                  [v22 addObject:v25];
                  v42 = [v63 nextObject];
                  v41 = v25;
                  v25 = v42;
LABEL_34:

                  if (!v25 || !v28)
                  {
                    goto LABEL_48;
                  }
                }

                v33 = NBDefaultLog();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                {
                  *buf = v60;
                  v70 = v28;
                  _os_log_debug_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, "Skipping jalisco item %@", buf, 0xCu);
                }

                goto LABEL_33;
              }
            }

LABEL_48:
            if (v25)
            {
              do
              {
LABEL_49:
                [v22 addObject:v25];
                v52 = [v63 nextObject];

                v25 = v52;
              }

              while (v52);
            }

            if (v28)
            {
              *&v27 = 138412290;
              v61 = v27;
              do
              {
                v53 = [v28 storeID];
                v54 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v53 integerValue]);
                v55 = [v6 containsObject:v54];

                if ((v55 & 1) == 0)
                {
                  v56 = NBDefaultLog();
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = v61;
                    v70 = v28;
                    _os_log_debug_impl(&dword_0, v56, OS_LOG_TYPE_DEBUG, "Skipping jalisco item %@", buf, 0xCu);
                  }

                  [v22 addObject:v28];
                }

                v57 = [v24 nextObject];

                v28 = v57;
              }

              while (v57);
            }

            v58 = [v22 copy];
            results = v64->_results;
            v64->_results = v58;

            v17 = v62;
          }

          else
          {
            v43 = NBDefaultLog();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              v44 = [(NBSearchDataSource *)v64 searchString];
              *buf = 138412290;
              v70 = v44;
              _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "No jalisco or media items found for search:%@", buf, 0xCu);
            }

            v22 = v64->_results;
            v64->_results = &__NSArray0__struct;
          }

          goto LABEL_58;
        }

        v49 = NBDefaultLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = [v17 count];
          v51 = [(NBSearchDataSource *)v64 searchString];
          *buf = 134218242;
          v70 = v50;
          v16 = v64;
          v71 = 2112;
          v72 = v51;
          _os_log_impl(&dword_0, v49, OS_LOG_TYPE_INFO, "Only jalisco items(%lu) found for search: %@", buf, 0x16u);
        }

        v48 = v17;
      }

      v22 = v16->_results;
      v16->_results = v48;
LABEL_58:
    }
  }
}

@end