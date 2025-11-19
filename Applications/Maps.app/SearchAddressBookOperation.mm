@interface SearchAddressBookOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (SearchAddressBookOperation)initWithSearchQuery:(id)a3 context:(id)a4;
- (SearchAddressBookOperationDelegate)delegate;
- (void)_markOperationAsFinished;
- (void)main;
- (void)setExecuting:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
@end

@implementation SearchAddressBookOperation

- (SearchAddressBookOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)_markOperationAsFinished
{
  [(SearchAddressBookOperation *)self willChangeValueForKey:@"isFinished"];
  [(SearchAddressBookOperation *)self willChangeValueForKey:@"isExecuting"];
  os_unfair_lock_lock(&self->_stateLock);
  if (([(SearchAddressBookOperation *)self isCancelled]& 1) == 0)
  {
    self->_isFinished = 1;
    self->_isExecuting = 0;
  }

  os_unfair_lock_unlock(&self->_stateLock);
  [(SearchAddressBookOperation *)self didChangeValueForKey:@"isFinished"];
  [(SearchAddressBookOperation *)self didChangeValueForKey:@"isExecuting"];
  v3 = sub_100067540();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "SearchAddressBookOperation - Mark operation as Finished", v4, 2u);
  }
}

- (void)setExecuting:(BOOL)a3
{
  [(SearchAddressBookOperation *)self willChangeValueForKey:@"isExecuting"];
  os_unfair_lock_lock(&self->_stateLock);
  self->_isExecuting = a3;
  os_unfair_lock_unlock(&self->_stateLock);

  [(SearchAddressBookOperation *)self didChangeValueForKey:@"isExecuting"];
}

- (void)setFinished:(BOOL)a3
{
  [(SearchAddressBookOperation *)self willChangeValueForKey:@"isFinished"];
  os_unfair_lock_lock(&self->_stateLock);
  self->_isFinished = a3;
  os_unfair_lock_unlock(&self->_stateLock);

  [(SearchAddressBookOperation *)self didChangeValueForKey:@"isFinished"];
}

- (BOOL)isExecuting
{
  os_unfair_lock_lock(&self->_stateLock);
  isExecuting = self->_isExecuting;
  os_unfair_lock_unlock(&self->_stateLock);
  return isExecuting;
}

- (BOOL)isFinished
{
  os_unfair_lock_lock(&self->_stateLock);
  isFinished = self->_isFinished;
  os_unfair_lock_unlock(&self->_stateLock);
  return isFinished;
}

- (void)main
{
  v2 = self;
  if ([(SearchAddressBookOperation *)self isCancelled])
  {
    v3 = sub_100067540();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "SearchAddressBookOperation - Operation is cancelled", buf, 2u);
    }

    v4 = [(SearchAddressBookOperation *)v2 delegate];
    [v4 searchAddressBookOperation:v2 didMatchResults:&__NSArray0__struct];

    [(SearchAddressBookOperation *)v2 setFinished:1];
    return;
  }

  [(SearchAddressBookOperation *)v2 setExecuting:1];
  v5 = sub_100067540();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SearchAddressBookOperation - collecting results", buf, 2u);
  }

  if (+[AddressBookManager addressBookAllowed])
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = +[NSMutableArray array];
    v8 = +[NSMutableDictionary dictionary];
    v9 = +[NSMutableDictionary dictionary];
    v10 = +[AddressBookManager sharedManager];
    v11 = [v10 contactStore];

    v12 = [CNContactFetchRequest alloc];
    v13 = +[AddressBookManager sharedManager];
    v14 = [v13 properties];
    v15 = [v12 initWithKeysToFetch:v14];

    v16 = [CNContact predicateForContactsMatchingName:v2->_searchQuery options:3];
    [v15 setPredicate:v16];

    [v15 setSortOrder:1];
    v68 = 0;
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100D0C748;
    v64[3] = &unk_101655688;
    v64[4] = v2;
    v17 = v7;
    v65 = v17;
    v57 = v8;
    v66 = v57;
    v18 = v9;
    v67 = v18;
    [v11 enumerateContactsWithFetchRequest:v15 error:&v68 usingBlock:v64];
    v19 = v68;
    if (GEOConfigGetBOOL() && [v17 count])
    {
      v51 = v19;
      v52 = v17;
      v53 = v15;
      v54 = v6;
      v55 = v11;
      v56 = v2;
      v20 = +[_CDPeopleSuggesterContext currentContext];
      [v20 setConsumerIdentifier:@"com.apple.Maps.autocomplete"];
      v21 = +[NSDate date];
      [v20 setDate:v21];

      v22 = +[_CDPeopleSuggesterSettings defaultSettings];
      [v22 setMaxNumberOfPeopleSuggested:100];
      [v22 setAggregateByIdentifier:1];
      v23 = +[_CDPeopleSuggester peopleSuggester];
      v50 = v20;
      [v23 setContext:v20];
      v49 = v22;
      [v23 setSettings:v22];
      v48 = v23;
      v24 = [v23 suggestPeopleWithError:0];
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v25 = [v24 countByEnumeratingWithState:&v60 objects:v71 count:16];
      if (!v25)
      {
        goto LABEL_31;
      }

      v26 = v25;
      v27 = *v61;
      while (1)
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v61 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v60 + 1) + 8 * i);
          v30 = [v29 contact];
          v31 = v30;
          if (v30)
          {
            v32 = [v30 personId];
            if ([v31 personIdType] == 1)
            {
              v33 = [v18 objectForKeyedSubscript:v32];
            }

            else
            {
              v33 = 0;
            }

            if ([v31 personIdType] == 3)
            {
              v34 = [v57 objectForKeyedSubscript:v32];

              v33 = v34;
              if (!v34)
              {
                v33 = [v18 objectForKeyedSubscript:v32];
                goto LABEL_22;
              }

LABEL_23:
              [v33 peopleSuggesterRank];
              if (v35 == 0.0 || ([v33 peopleSuggesterRank], v37 = v36, objc_msgSend(v29, "rank"), v37 >= v38))
              {
                [v29 rank];
              }

              else
              {
                [v33 peopleSuggesterRank];
              }

              [v33 setPeopleSuggesterRank:?];
            }

            else
            {
LABEL_22:
              if (v33)
              {
                goto LABEL_23;
              }
            }
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v60 objects:v71 count:16];
        if (!v26)
        {
LABEL_31:

          v11 = v55;
          v2 = v56;
          v15 = v53;
          v6 = v54;
          v19 = v51;
          v17 = v52;
          break;
        }
      }
    }

    [v17 sortUsingSelector:"compare:"];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_100D0C86C;
    v58[3] = &unk_1016513F8;
    v58[4] = v2;
    v39 = v17;
    v40 = v6;
    v59 = v40;
    [v39 enumerateObjectsUsingBlock:v58];
  }

  else
  {
    v40 = 0;
  }

  v41 = sub_100067540();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    v42 = [v40 count];
    *buf = 134217984;
    v70 = v42;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "SearchAddressBookOperation - collected %lu results", buf, 0xCu);
  }

  if (([(SearchAddressBookOperation *)v2 isCancelled]& 1) != 0)
  {
    v43 = sub_100067540();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "SearchAddressBookOperation - The operation was cancelled.", buf, 2u);
    }

    [(SearchAddressBookOperation *)v2 _markOperationAsFinished];
    v44 = [(SearchAddressBookOperation *)v2 delegate];
    v45 = v44;
    v46 = &__NSArray0__struct;
    v47 = v2;
  }

  else
  {
    [(SearchAddressBookOperation *)v2 _markOperationAsFinished];
    v44 = [(SearchAddressBookOperation *)v2 delegate];
    v45 = v44;
    v47 = v2;
    v46 = v40;
  }

  [v44 searchAddressBookOperation:v47 didMatchResults:v46];
}

- (SearchAddressBookOperation)initWithSearchQuery:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SearchAddressBookOperation;
  v8 = [(SearchAddressBookOperation *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    searchQuery = v8->_searchQuery;
    v8->_searchQuery = v9;

    objc_storeStrong(&v8->_context, a4);
    v11 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v12 = [v6 componentsSeparatedByCharactersInSet:v11];
    searchTerms = v8->_searchTerms;
    v8->_searchTerms = v12;
  }

  return v8;
}

@end