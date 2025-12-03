@interface FRArticlePrefetchManager
- (FRArticlePrefetchManager)initWithCloudContext:(id)context articleContentPool:(id)pool;
- (id)keyedOperationQueue:(id)queue performAsyncOperationForKey:(id)key completion:(id)completion;
- (void)_prefetchRequestsChanged;
- (void)_revisitSuspendedState;
- (void)addPrefetchInterestInHeadline:(id)headline priority:(unint64_t)priority options:(unint64_t)options;
- (void)dealloc;
- (void)popPrefetchSuspended;
- (void)pushPrefetchSuspended;
- (void)removePrefetchInterestInHeadline:(id)headline;
- (void)resetPrefetchStateForArticleID:(id)d withHeadline:(id)headline;
@end

@implementation FRArticlePrefetchManager

- (void)_revisitSuspendedState
{
  if ([(FRArticlePrefetchManager *)self suspendedDepth]< 1)
  {
    context = [(FRArticlePrefetchManager *)self context];
    networkReachability = [context networkReachability];
    [(FCKeyedOperationQueue *)self->_prefetchQueue setSuspended:FRShouldPrefetchIgnoringNetworkInterface(networkReachability) ^ 1];
  }

  else
  {
    prefetchQueue = self->_prefetchQueue;

    [(FCKeyedOperationQueue *)prefetchQueue setSuspended:1];
  }
}

- (FRArticlePrefetchManager)initWithCloudContext:(id)context articleContentPool:(id)pool
{
  contextCopy = context;
  poolCopy = pool;
  v20.receiver = self;
  v20.super_class = FRArticlePrefetchManager;
  v9 = [(FRArticlePrefetchManager *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_articleContentPool, pool);
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

    context = [(FRArticlePrefetchManager *)v10 context];
    networkReachability = [context networkReachability];
    [networkReachability addObserver:v10];

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

- (void)addPrefetchInterestInHeadline:(id)headline priority:(unint64_t)priority options:(unint64_t)options
{
  headlineCopy = headline;
  +[NSThread isMainThread];
  if (!headlineCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10007422C();
  }

  prefetchRequestsByID = [(FRArticlePrefetchManager *)self prefetchRequestsByID];
  articleID = [headlineCopy articleID];
  v11 = [prefetchRequestsByID objectForKey:articleID];

  if (!v11)
  {
    v12 = FRArticlePrefetchLog;
    if (os_log_type_enabled(FRArticlePrefetchLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      articleID2 = [headlineCopy articleID];
      title = [headlineCopy title];
      v23 = 138412546;
      v24 = articleID2;
      v25 = 2114;
      v26 = title;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "prefetch interest added to article %@, '%{public}@'", &v23, 0x16u);
    }

    articleContentPool = [(FRArticlePrefetchManager *)self articleContentPool];
    articleID3 = [headlineCopy articleID];
    [articleContentPool addInterestInArticleWithID:articleID3];

    v18 = objc_alloc_init(FRArticlePrefetchRequest);
    [(FRArticlePrefetchRequest *)v18 setHeadline:headlineCopy];
    [(FRArticlePrefetchRequest *)v18 setPriority:priority];
    [(FRArticlePrefetchRequest *)v18 setOptions:options];
    prefetchRequestsByID2 = [(FRArticlePrefetchManager *)self prefetchRequestsByID];
    articleID4 = [headlineCopy articleID];
    [prefetchRequestsByID2 setObject:v18 forKey:articleID4];

    v21 = [NSNotification notificationWithName:@"FRArticlePrefetchRequestsDidChangeNotification" object:self];
    v22 = +[NSNotificationQueue defaultQueue];
    [v22 enqueueNotification:v21 postingStyle:1];
  }
}

- (void)removePrefetchInterestInHeadline:(id)headline
{
  headlineCopy = headline;
  +[NSThread isMainThread];
  if (!headlineCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000742F0();
  }

  prefetchRequestsByID = [(FRArticlePrefetchManager *)self prefetchRequestsByID];
  articleID = [headlineCopy articleID];
  v7 = [prefetchRequestsByID objectForKey:articleID];

  if (v7)
  {
    v8 = FRArticlePrefetchLog;
    if (os_log_type_enabled(FRArticlePrefetchLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      articleID2 = [headlineCopy articleID];
      title = [headlineCopy title];
      v18 = 138412546;
      v19 = articleID2;
      v20 = 2114;
      v21 = title;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "prefetch interest removed from article %@, '%{public}@'", &v18, 0x16u);
    }

    articleContentPool = [(FRArticlePrefetchManager *)self articleContentPool];
    articleID3 = [headlineCopy articleID];
    [articleContentPool removeInterestInArticleWithID:articleID3];

    prefetchRequestsByID2 = [(FRArticlePrefetchManager *)self prefetchRequestsByID];
    articleID4 = [headlineCopy articleID];
    [prefetchRequestsByID2 removeObjectForKey:articleID4];

    v16 = [NSNotification notificationWithName:@"FRArticlePrefetchRequestsDidChangeNotification" object:self];
    v17 = +[NSNotificationQueue defaultQueue];
    [v17 enqueueNotification:v16 postingStyle:1];
  }
}

- (void)resetPrefetchStateForArticleID:(id)d withHeadline:(id)headline
{
  dCopy = d;
  headlineCopy = headline;
  +[NSThread isMainThread];
  if (dCopy)
  {
    if (headlineCopy)
    {
      articleContentPool = [(FRArticlePrefetchManager *)self articleContentPool];
      [articleContentPool flushContentWithArticleID:dCopy];

      prefetchRequestsByID = [(FRArticlePrefetchManager *)self prefetchRequestsByID];
      v10 = [prefetchRequestsByID objectForKey:dCopy];

      if (v10)
      {
        prefetchQueue = [(FRArticlePrefetchManager *)self prefetchQueue];
        [prefetchQueue setKeyQueue:0];

        headline = [v10 headline];
        [(FRArticlePrefetchManager *)self removePrefetchInterestInHeadline:headline];

        -[FRArticlePrefetchManager addPrefetchInterestInHeadline:priority:options:](self, "addPrefetchInterestInHeadline:priority:options:", headlineCopy, [v10 priority], objc_msgSend(v10, "options"));
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000743B4();
  }

  if (!headlineCopy)
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

- (id)keyedOperationQueue:(id)queue performAsyncOperationForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  objc_opt_class();
  v9 = FCCheckedDynamicCast();

  v10 = objc_alloc_init(FCOnce);
  articleContentPool = [(FRArticlePrefetchManager *)self articleContentPool];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10005CDAC;
  v24[3] = &unk_1000C1BD8;
  v12 = v10;
  v25 = v12;
  v13 = completionCopy;
  v26 = v13;
  v14 = [v9 executeWithArticleContentPool:articleContentPool completionHandler:v24];

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
  prefetchRequestsByID = [(FRArticlePrefetchManager *)self prefetchRequestsByID];
  v5 = [prefetchRequestsByID countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(prefetchRequestsByID);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        prefetchRequestsByID2 = [(FRArticlePrefetchManager *)self prefetchRequestsByID];
        v11 = [prefetchRequestsByID2 objectForKey:v9];

        headline = [v11 headline];
        isDeleted = [headline isDeleted];

        if ((isDeleted & 1) == 0)
        {
          [v11 addPrefetchOperationsToOrderedSet:v3];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [prefetchRequestsByID countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  [v3 sortUsingComparator:&stru_1000C5CC8];
  prefetchQueue = [(FRArticlePrefetchManager *)self prefetchQueue];
  [prefetchQueue setKeyQueue:v3];
}

@end