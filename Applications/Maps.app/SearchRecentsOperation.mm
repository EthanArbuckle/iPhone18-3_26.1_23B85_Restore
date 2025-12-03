@interface SearchRecentsOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (SearchRecentsOperation)initWithSearchQuery:(id)query context:(id)context;
- (SearchRecentsOperationDelegate)delegate;
- (void)start;
@end

@implementation SearchRecentsOperation

- (SearchRecentsOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
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

- (void)start
{
  if ([(SearchRecentsOperation *)self isCancelled])
  {
    v3 = sub_100067540();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SearchRecentsOperation: %@ - is cancelled before starting", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained searchRecentsOperation:self didMatchResults:&__NSArray0__struct];
  }

  else
  {
    [(SearchRecentsOperation *)self willChangeValueForKey:@"isExecuting"];
    os_unfair_lock_lock(&self->_stateLock);
    self->_isExecuting = 1;
    os_unfair_lock_unlock(&self->_stateLock);
    [(SearchRecentsOperation *)self didChangeValueForKey:@"isExecuting"];
    v5 = sub_100067540();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SearchRecentsOperation: %@ - collecting results", buf, 0xCu);
    }

    v6 = CRAddressKindMapLocation;
    v26 = CRAddressKindMapLocation;
    v7 = [NSArray arrayWithObjects:&v26 count:1];
    WeakRetained = [CRSearchPredicate predicateForKey:@"kind" inCollection:v7];

    v20 = [CRSearchPredicate predicateForKey:@"displayName" matchingText:self->_query comparison:1];
    v19 = [CRSearchPredicate predicateForKey:@"address" matchingText:self->_query comparison:1];
    v25[0] = v20;
    v25[1] = v19;
    v8 = [NSArray arrayWithObjects:v25 count:2];
    v9 = [CRSearchPredicate predicateSatisfyingAnySubpredicate:v8];

    v10 = objc_alloc_init(CRSearchQuery);
    v24[0] = WeakRetained;
    v24[1] = v9;
    v11 = [NSArray arrayWithObjects:v24 count:2];
    v12 = [CRSearchPredicate predicateSatisfyingAllSubpredicates:v11];
    [v10 setSearchPredicate:v12];

    query = self->_query;
    v23 = v6;
    v14 = [NSArray arrayWithObjects:&v23 count:1];
    v15 = [CRSearchQuery frecencyComparatorForSearch:query preferredKinds:v14 sendingAddress:0 queryOptions:0];
    [v10 setComparator:v15];

    v22 = CRRecentsDomainMaps;
    v16 = [NSArray arrayWithObjects:&v22 count:1];
    [v10 setDomains:v16];

    v17 = +[CRRecentContactsLibrary defaultInstance];
    v18 = dispatch_get_global_queue(25, 0);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100EC99A0;
    v21[3] = &unk_101660FB0;
    v21[4] = self;
    [v17 performRecentsSearch:v10 queue:v18 completion:v21];
  }
}

- (SearchRecentsOperation)initWithSearchQuery:(id)query context:(id)context
{
  queryCopy = query;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = SearchRecentsOperation;
  v8 = [(SearchRecentsOperation *)&v12 init];
  if (v8)
  {
    v9 = [queryCopy copy];
    query = v8->_query;
    v8->_query = v9;

    objc_storeStrong(&v8->_context, context);
    v8->_stateLock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

@end