@interface FRArticlePrefetchManager
- (FRArticlePrefetchManager)initWithCloudContext:(id)a3 articleContentPool:(id)a4;
- (id)keyedOperationQueue:(id)a3 performAsyncOperationForKey:(id)a4 completion:(id)a5;
- (void)_prefetchRequestsChanged;
- (void)_revisitSuspendedState;
- (void)addPrefetchInterestInHeadline:(id)a3 priority:(unint64_t)a4 options:(unint64_t)a5;
- (void)dealloc;
- (void)popPrefetchSuspended;
- (void)pushPrefetchSuspended;
- (void)removePrefetchInterestInHeadline:(id)a3;
- (void)resetPrefetchStateForArticleID:(id)a3 withHeadline:(id)a4;
@end

@implementation FRArticlePrefetchManager

- (void)_revisitSuspendedState
{
  if ([(FRArticlePrefetchManager *)self suspendedDepth]< 1)
  {
    v5 = [(FRArticlePrefetchManager *)self context];
    v4 = [v5 networkReachability];
    [(FCKeyedOperationQueue *)self->_prefetchQueue setSuspended:FRShouldPrefetchIgnoringNetworkInterface(v4) ^ 1];
  }

  else
  {
    prefetchQueue = self->_prefetchQueue;

    [(FCKeyedOperationQueue *)prefetchQueue setSuspended:1];
  }
}

- (FRArticlePrefetchManager)initWithCloudContext:(id)a3 articleContentPool:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = FRArticlePrefetchManager;
  v9 = [(FRArticlePrefetchManager *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    objc_storeStrong(&v10->_articleContentPool, a4);
    v11 = [[FCKeyedOperationQueue alloc] initWithDelegate:v10 maxConcurrentOperationCount:1];
    prefetchQueue = v10->_prefetchQueue;
    v10->_prefetchQueue = v11;

    v13 = FCDispatchQueueForQualityOfService();
    [(FCKeyedOperationQueue *)v10->_prefetchQueue setExecutionQueue:v13];

    v14 = objc_alloc_init(NSMutableDictionary);
    prefetchRequestsByID = v10->_prefetchRequestsByID;
    v10->_prefetchRequestsByID = v14;

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v10 selector:"_prefetchRequestsChanged" name:@"FRArticlePrefetchRequestsDidChangeNotification" object:v10];

    v17 = [(FRArticlePrefetchManager *)v10 context];
    v18 = [v17 networkReachability];
    [v18 addObserver:v10];

    [(FRArticlePrefetchManager *)v10 _revisitSuspendedState];
  }

  return v10;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = FRArticlePrefetchManager;
  [(FRArticlePrefetchManager *)&v4 dealloc];
}

- (void)addPrefetchInterestInHeadline:(id)a3 priority:(unint64_t)a4 options:(unint64_t)a5
{
  v8 = a3;
  +[NSThread isMainThread];
  if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10007422C();
  }

  v9 = [(FRArticlePrefetchManager *)self prefetchRequestsByID];
  v10 = [v8 articleID];
  v11 = [v9 objectForKey:v10];

  if (!v11)
  {
    v12 = FRArticlePrefetchLog;
    if (os_log_type_enabled(FRArticlePrefetchLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [v8 articleID];
      v15 = [v8 title];
      v23 = 138412546;
      v24 = v14;
      v25 = 2114;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "prefetch interest added to article %@, '%{public}@'", &v23, 0x16u);
    }

    v16 = [(FRArticlePrefetchManager *)self articleContentPool];
    v17 = [v8 articleID];
    [v16 addInterestInArticleWithID:v17];

    v18 = objc_alloc_init(FRArticlePrefetchRequest);
    [(FRArticlePrefetchRequest *)v18 setHeadline:v8];
    [(FRArticlePrefetchRequest *)v18 setPriority:a4];
    [(FRArticlePrefetchRequest *)v18 setOptions:a5];
    v19 = [(FRArticlePrefetchManager *)self prefetchRequestsByID];
    v20 = [v8 articleID];
    [v19 setObject:v18 forKey:v20];

    v21 = [NSNotification notificationWithName:@"FRArticlePrefetchRequestsDidChangeNotification" object:self];
    v22 = +[NSNotificationQueue defaultQueue];
    [v22 enqueueNotification:v21 postingStyle:1];
  }
}

- (void)removePrefetchInterestInHeadline:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000742F0();
  }

  v5 = [(FRArticlePrefetchManager *)self prefetchRequestsByID];
  v6 = [v4 articleID];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = FRArticlePrefetchLog;
    if (os_log_type_enabled(FRArticlePrefetchLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v4 articleID];
      v11 = [v4 title];
      v18 = 138412546;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "prefetch interest removed from article %@, '%{public}@'", &v18, 0x16u);
    }

    v12 = [(FRArticlePrefetchManager *)self articleContentPool];
    v13 = [v4 articleID];
    [v12 removeInterestInArticleWithID:v13];

    v14 = [(FRArticlePrefetchManager *)self prefetchRequestsByID];
    v15 = [v4 articleID];
    [v14 removeObjectForKey:v15];

    v16 = [NSNotification notificationWithName:@"FRArticlePrefetchRequestsDidChangeNotification" object:self];
    v17 = +[NSNotificationQueue defaultQueue];
    [v17 enqueueNotification:v16 postingStyle:1];
  }
}

- (void)resetPrefetchStateForArticleID:(id)a3 withHeadline:(id)a4
{
  v6 = a3;
  v7 = a4;
  +[NSThread isMainThread];
  if (v6)
  {
    if (v7)
    {
      v8 = [(FRArticlePrefetchManager *)self articleContentPool];
      [v8 flushContentWithArticleID:v6];

      v9 = [(FRArticlePrefetchManager *)self prefetchRequestsByID];
      v10 = [v9 objectForKey:v6];

      if (v10)
      {
        v11 = [(FRArticlePrefetchManager *)self prefetchQueue];
        [v11 setKeyQueue:0];

        v12 = [v10 headline];
        [(FRArticlePrefetchManager *)self removePrefetchInterestInHeadline:v12];

        -[FRArticlePrefetchManager addPrefetchInterestInHeadline:priority:options:](self, "addPrefetchInterestInHeadline:priority:options:", v7, [v10 priority], objc_msgSend(v10, "options"));
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000743B4();
  }

  if (!v7)
  {
LABEL_9:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100074478();
    }
  }

LABEL_11:
}

- (void)pushPrefetchSuspended
{
  +[NSThread isMainThread];
  [(FRArticlePrefetchManager *)self setSuspendedDepth:[(FRArticlePrefetchManager *)self suspendedDepth]+ 1];

  [(FRArticlePrefetchManager *)self _revisitSuspendedState];
}

- (void)popPrefetchSuspended
{
  +[NSThread isMainThread];
  if (![(FRArticlePrefetchManager *)self suspendedDepth]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10007453C();
  }

  [(FRArticlePrefetchManager *)self setSuspendedDepth:[(FRArticlePrefetchManager *)self suspendedDepth]- 1];
  [(FRArticlePrefetchManager *)self _revisitSuspendedState];
}

- (id)keyedOperationQueue:(id)a3 performAsyncOperationForKey:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  objc_opt_class();
  v9 = FCCheckedDynamicCast();

  v10 = objc_alloc_init(FCOnce);
  v11 = [(FRArticlePrefetchManager *)self articleContentPool];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10005CDAC;
  v24[3] = &unk_1000C1BD8;
  v12 = v10;
  v25 = v12;
  v13 = v7;
  v26 = v13;
  v14 = [v9 executeWithArticleContentPool:v11 completionHandler:v24];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10005CEE4;
  v20[3] = &unk_1000C4808;
  v21 = v14;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v14;
  v18 = [FCCancelHandler cancelHandlerWithBlock:v20];

  return v18;
}

- (void)_prefetchRequestsChanged
{
  +[NSThread isMainThread];
  v3 = +[NSMutableOrderedSet orderedSet];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(FRArticlePrefetchManager *)self prefetchRequestsByID];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = [(FRArticlePrefetchManager *)self prefetchRequestsByID];
        v11 = [v10 objectForKey:v9];

        v12 = [v11 headline];
        v13 = [v12 isDeleted];

        if ((v13 & 1) == 0)
        {
          [v11 addPrefetchOperationsToOrderedSet:v3];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  [v3 sortUsingComparator:&stru_1000C5CC8];
  v14 = [(FRArticlePrefetchManager *)self prefetchQueue];
  [v14 setKeyQueue:v3];
}

@end