@interface SearchHistoryOperation
- (BOOL)_removeCompletionItemForStringKey:(id)a3 query:(id)a4 fromCompletions:(id)a5;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (SearchHistoryOperation)initWithSearchQuery:(id)a3 searchMode:(unsigned int)a4 history:(id)a5 context:(id)a6;
- (SearchHistoryOperationDelegate)delegate;
- (id)_historyResultsForSearchQuery:(id)a3 searchMode:(unsigned int)a4;
- (id)shortAddressForMapItem:(id)a3;
- (void)main;
- (void)setExecuting:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
@end

@implementation SearchHistoryOperation

- (SearchHistoryOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setExecuting:(BOOL)a3
{
  [(SearchHistoryOperation *)self willChangeValueForKey:@"isExecuting"];
  os_unfair_lock_lock(&self->_stateLock);
  self->_isExecuting = a3;
  os_unfair_lock_unlock(&self->_stateLock);

  [(SearchHistoryOperation *)self didChangeValueForKey:@"isExecuting"];
}

- (void)setFinished:(BOOL)a3
{
  [(SearchHistoryOperation *)self willChangeValueForKey:@"isFinished"];
  os_unfair_lock_lock(&self->_stateLock);
  self->_isFinished = a3;
  os_unfair_lock_unlock(&self->_stateLock);

  [(SearchHistoryOperation *)self didChangeValueForKey:@"isFinished"];
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

- (id)_historyResultsForSearchQuery:(id)a3 searchMode:(unsigned int)a4
{
  v5 = a3;
  if ([v5 length] && (objc_msgSend(v5, "isEqualToString:", @" ") & 1) == 0)
  {
    v21 = v5;
    v20 = +[NSMutableArray array];
    v7 = objc_alloc_init(NSMutableDictionary);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = self->_history;
    v8 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          v5 = v21;
          if (([(SearchHistoryOperation *)self isCancelled]& 1) != 0)
          {

            v6 = 0;
            v17 = v20;
            goto LABEL_14;
          }

          v13 = [v12 historyEntry];
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_100C460A4;
          v27[3] = &unk_10164E7F8;
          v27[4] = v12;
          v14 = v21;
          v28 = v14;
          v29 = self;
          v15 = v20;
          v30 = v15;
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_100C462E4;
          v22[3] = &unk_10164E820;
          v22[4] = self;
          v23 = v14;
          v24 = v7;
          v25 = v12;
          v26 = v15;
          [v13 ifSearch:v27 ifRoute:0 ifPlaceDisplay:v22 ifTransitLineItem:&stru_10164E860];
        }

        v9 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v16 = [v7 allValues];
    v17 = v20;
    [v20 addObjectsFromArray:v16];

    [v20 sortUsingFunction:sub_100C46730 context:0];
    v6 = [v20 copy];
    v5 = v21;
LABEL_14:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)shortAddressForMapItem:(id)a3
{
  v3 = a3;
  v4 = [v3 _addressFormattedAsName];
  if (![v4 length])
  {
    v5 = [v3 _addressFormattedAsShortenedAddress];

    v4 = v5;
  }

  return v4;
}

- (BOOL)_removeCompletionItemForStringKey:(id)a3 query:(id)a4 fromCompletions:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 _web_hasCaseInsensitivePrefix:a4];
  if (v9)
  {
    v10 = [v7 lowercaseString];
    v11 = [v10 stringByRemovingPunctuation];

    [v8 removeObjectForKey:v11];
  }

  return v9;
}

- (void)main
{
  if ([(SearchHistoryOperation *)self isCancelled])
  {
    v3 = sub_100067540();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SearchHistoryOperation: %@ - is cancelled before starting", &v11, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained historyOperation:self didFindMatches:&__NSArray0__struct];

    [(SearchHistoryOperation *)self setFinished:1];
  }

  else
  {
    [(SearchHistoryOperation *)self setExecuting:1];
    v5 = sub_100067540();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SearchHistoryOperation - collecting results", &v11, 2u);
    }

    v6 = [(SearchHistoryOperation *)self _historyResultsForSearchQuery:self->_searchQuery searchMode:self->_searchMode];
    [(SearchHistoryOperation *)self willChangeValueForKey:@"isFinished"];
    [(SearchHistoryOperation *)self willChangeValueForKey:@"isExecuting"];
    os_unfair_lock_lock(&self->_stateLock);
    if (([(SearchHistoryOperation *)self isCancelled]& 1) == 0)
    {
      self->_isFinished = 1;
      self->_isExecuting = 0;
    }

    os_unfair_lock_unlock(&self->_stateLock);
    [(SearchHistoryOperation *)self didChangeValueForKey:@"isFinished"];
    [(SearchHistoryOperation *)self didChangeValueForKey:@"isExecuting"];
    v7 = sub_100067540();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 count];
      v11 = 134217984;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "SearchHistoryOperation - collected %lu results", &v11, 0xCu);
    }

    v9 = objc_loadWeakRetained(&self->_delegate);
    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 historyOperation:self didFindMatches:v6];
    }
  }
}

- (SearchHistoryOperation)initWithSearchQuery:(id)a3 searchMode:(unsigned int)a4 history:(id)a5 context:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = SearchHistoryOperation;
  v14 = [(SearchHistoryOperation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_searchQuery, a3);
    v15->_searchMode = a4;
    v15->_stateLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v15->_history, a5);
    objc_storeStrong(&v15->_context, a6);
  }

  return v15;
}

@end