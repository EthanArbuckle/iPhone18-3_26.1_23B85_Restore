@interface NBSearchDataSource
- (BOOL)_isSearchCancelled;
- (NBSearchDataSource)init;
- (unint64_t)count;
- (void)_combineSearchResults;
- (void)dealloc;
- (void)filterResultsUsingSearchString:(id)string completion:(id)completion;
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

- (void)filterResultsUsingSearchString:(id)string completion:(id)completion
{
  stringCopy = string;
  completionCopy = completion;
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
    v33 = stringCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Starting search for term '%@'", buf, 0xCu);
  }

  results = self->_results;
  self->_results = 0;

  v12 = [stringCopy copy];
  searchString = self->_searchString;
  self->_searchString = v12;

  if ([(NSString *)self->_searchString length])
  {
    searchQuery = [(NBSearchDataSource *)self searchQuery];
    nb_existingSearchPredicate = [searchQuery nb_existingSearchPredicate];
    if (nb_existingSearchPredicate)
    {
      [searchQuery removeFilterPredicate:nb_existingSearchPredicate];
    }

    [searchQuery setCollectionPropertiesToFetch:0];
    v16 = self->_searchString;
    v17 = [NSSet setWithObjects:MPMediaItemPropertyArtist, MPMediaItemPropertyTitle, 0];
    v18 = [_MPMediaSearchStringPredicate predicateWithSearchString:v16 forProperties:v17];

    [searchQuery addFilterPredicate:v18];
    v19 = objc_opt_new();
    v20 = [[_NBMediaSearchOperation alloc] initWithSearchDataSource:self searchString:stringCopy];
    v21 = self->_mediaSearchOperation;
    self->_mediaSearchOperation = v20;

    [v19 addObject:self->_mediaSearchOperation];
    familyDSIDs = [(NBSearchDataSource *)self familyDSIDs];
    v23 = [familyDSIDs count] == 0;

    if (!v23)
    {
      v24 = [[_NBJaliscoSearchOperation alloc] initWithSearchDataSource:self searchString:stringCopy];
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
    v30 = completionCopy;
    v29 = stringCopy;
    [(NSOperationQueue *)operationQueue addBarrierBlock:v28];

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }

  else if (completionCopy)
  {
    v27 = NBDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = stringCopy;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Completed search for term '%@'", buf, 0xCu);
    }

    completionCopy[2](completionCopy);
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
      selfCopy = self;
      results = [(_NBMediaSearchOperation *)self->_mediaSearchOperation results];
      v6 = +[NSMutableSet set];
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v7 = results;
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

      v16 = selfCopy;
      results2 = [(_NBJaliscoSearchOperation *)selfCopy->_jaliscoSearchOperation results];
      if ([v7 count] && !objc_msgSend(results2, "count"))
      {
        v45 = NBDefaultLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = [v7 count];
          searchString = [(NBSearchDataSource *)selfCopy searchString];
          *buf = 134218242;
          v70 = v46;
          v16 = selfCopy;
          v71 = 2112;
          v72 = searchString;
          _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "Only media items(%lu) found for search: %@", buf, 0x16u);
        }

        v48 = v7;
      }

      else
      {
        if (![results2 count] || objc_msgSend(v7, "count"))
        {
          if ([v7 count] && objc_msgSend(results2, "count"))
          {
            v18 = NBDefaultLog();
            v62 = results2;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = [results2 count];
              v20 = [v7 count];
              searchString2 = [(NBSearchDataSource *)selfCopy searchString];
              *buf = 134218498;
              v70 = v19;
              v71 = 2048;
              v72 = v20;
              v73 = 2112;
              v74 = searchString2;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Combining jalisco items (%lu) and media items (%lu) for search: %@", buf, 0x20u);

              results2 = v62;
            }

            v22 = objc_opt_new();
            objectEnumerator = [v7 objectEnumerator];
            objectEnumerator2 = [results2 objectEnumerator];
            v63 = objectEnumerator;
            nextObject = [objectEnumerator nextObject];
            nextObject2 = [objectEnumerator2 nextObject];
            v28 = nextObject2;
            if (nextObject)
            {
              v29 = selfCopy;
              if (nextObject2)
              {
                *&v27 = 138412290;
                v60 = v27;
                while (1)
                {
                  if ([(NBSearchDataSource *)v29 _isSearchCancelled])
                  {
                    goto LABEL_49;
                  }

                  storeID = [v28 storeID];
                  v31 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [storeID integerValue]);
                  v32 = [v6 containsObject:v31];

                  if (v32)
                  {
                    break;
                  }

                  title = [v28 title];
                  if (!title)
                  {
                    goto LABEL_32;
                  }

                  v35 = title;
                  title2 = [nextObject title];
                  title3 = [v28 title];
                  v38 = [title2 localizedCaseInsensitiveCompare:title3];

                  v39 = v38 + 1 == 0;
                  v29 = selfCopy;
                  if (!v39)
                  {
LABEL_32:
                    [v22 addObject:v28];
LABEL_33:
                    nextObject3 = [objectEnumerator2 nextObject];
                    v41 = v28;
                    v28 = nextObject3;
                    goto LABEL_34;
                  }

                  [v22 addObject:nextObject];
                  nextObject4 = [v63 nextObject];
                  v41 = nextObject;
                  nextObject = nextObject4;
LABEL_34:

                  if (!nextObject || !v28)
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
            if (nextObject)
            {
              do
              {
LABEL_49:
                [v22 addObject:nextObject];
                nextObject5 = [v63 nextObject];

                nextObject = nextObject5;
              }

              while (nextObject5);
            }

            if (v28)
            {
              *&v27 = 138412290;
              v61 = v27;
              do
              {
                storeID2 = [v28 storeID];
                v54 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [storeID2 integerValue]);
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

                nextObject6 = [objectEnumerator2 nextObject];

                v28 = nextObject6;
              }

              while (nextObject6);
            }

            v58 = [v22 copy];
            results = selfCopy->_results;
            selfCopy->_results = v58;

            results2 = v62;
          }

          else
          {
            v43 = NBDefaultLog();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              searchString3 = [(NBSearchDataSource *)selfCopy searchString];
              *buf = 138412290;
              v70 = searchString3;
              _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "No jalisco or media items found for search:%@", buf, 0xCu);
            }

            v22 = selfCopy->_results;
            selfCopy->_results = &__NSArray0__struct;
          }

          goto LABEL_58;
        }

        v49 = NBDefaultLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = [results2 count];
          searchString4 = [(NBSearchDataSource *)selfCopy searchString];
          *buf = 134218242;
          v70 = v50;
          v16 = selfCopy;
          v71 = 2112;
          v72 = searchString4;
          _os_log_impl(&dword_0, v49, OS_LOG_TYPE_INFO, "Only jalisco items(%lu) found for search: %@", buf, 0x16u);
        }

        v48 = results2;
      }

      v22 = v16->_results;
      v16->_results = v48;
LABEL_58:
    }
  }
}

@end