@interface FRTodayAgent
- (BOOL)_mayWidgetsBeVisible;
- (BOOL)_updateDropboxWithAccessors:(id)a3;
- (FRTodayAgent)init;
- (FRTodayAgent)initWithFeedPersonalizer:(id)a3 purchaseController:(id)a4 subscriptionController:(id)a5 localNewsChannelService:(id)a6 bundleSubscriptionManager:(id)a7 personalizationDataGenerator:(id)a8 privateDataContext:(id)a9 userEmbeddingGenerator:(id)a10;
- (id)_accessorToUpdateRecentlyReadItems;
- (void)_didBecomeActive;
- (void)_didEnterBackground;
- (void)_historyDidClear;
- (void)_markDirtyWithFlags:(unint64_t)a3 qualityOfService:(int64_t)a4;
- (void)_markPurchasesDirty;
- (void)_updateSuspensionState;
- (void)_willResignActive;
- (void)dealloc;
- (void)enable;
- (void)operationThrottler:(id)a3 performAsyncOperationWithQualityOfService:(int64_t)a4 completion:(id)a5;
- (void)privateDataControllerDidBecomeClean:(id)a3;
- (void)readingHistory:(id)a3 didChangeFeaturesForArticles:(id)a4;
- (void)serviceWidgetIfNeededWithCompletion:(id)a3;
- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8;
@end

@implementation FRTodayAgent

- (void)_updateSuspensionState
{
  if ([(FRTodayAgent *)self isEnabled])
  {
    v3 = [(FRTodayAgent *)self _mayWidgetsBeVisible]^ 1;
  }

  else
  {
    v3 = 1;
  }

  v4 = [(FRTodayAgent *)self operationThrottler];
  [v4 setSuspended:v3];
}

- (void)_didBecomeActive
{
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = [(FRTodayAgent *)self fileCoordinatedTodayPrivateDataTransactionQueue];
  [(FRTodayAgent *)self privateDataContext];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10005342C;
  v11 = v10 = &unk_1000C57A0;
  v12 = v3;
  v5 = v3;
  v6 = v11;
  [v4 dequeueTransactionsWithCompletion:&v7];
  [(FRTodayAgent *)self _markDirtyWithFlags:96, v7, v8, v9, v10];
  [(FRTodayAgent *)self _updateSuspensionState];
}

- (FRTodayAgent)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRTodayAgent init]";
    v8 = 2080;
    v9 = "FRTodayAgent.m";
    v10 = 1024;
    v11 = 62;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRTodayAgent init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FRTodayAgent)initWithFeedPersonalizer:(id)a3 purchaseController:(id)a4 subscriptionController:(id)a5 localNewsChannelService:(id)a6 bundleSubscriptionManager:(id)a7 personalizationDataGenerator:(id)a8 privateDataContext:(id)a9 userEmbeddingGenerator:(id)a10
{
  v17 = a3;
  obj = a4;
  v18 = a4;
  v49 = a5;
  v19 = a5;
  v50 = a6;
  v55 = a6;
  v52 = a7;
  v54 = a8;
  v20 = a9;
  v53 = a10;
  if (!v17 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100071C28();
  }

  v51 = v18;
  if (!v18 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100071CEC();
  }

  v21 = v19;
  if (!v19 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100071DB0();
  }

  if (!v55 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100071E74();
  }

  if (!v54 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100071F38();
    if (v20)
    {
      goto LABEL_18;
    }
  }

  else if (v20)
  {
    goto LABEL_18;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100071FFC();
  }

LABEL_18:
  if (!v53 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000720C0();
  }

  v56.receiver = self;
  v56.super_class = FRTodayAgent;
  v22 = [(FRTodayAgent *)&v56 init];
  v23 = v22;
  if (v22)
  {
    v47 = v17;
    objc_storeStrong(&v22->_feedPersonalizer, a3);
    v24 = dispatch_group_create();
    transactionProcessingGroup = v23->_transactionProcessingGroup;
    v23->_transactionProcessingGroup = v24;

    v26 = [FCFileCoordinatedTodayPrivateDataTransactionQueue alloc];
    v27 = FCURLForTodayPrivateDataTransactionQueue();
    v28 = [v26 initWithFileURL:v27];
    fileCoordinatedTodayPrivateDataTransactionQueue = v23->_fileCoordinatedTodayPrivateDataTransactionQueue;
    v23->_fileCoordinatedTodayPrivateDataTransactionQueue = v28;

    v30 = [FCFileCoordinatedTodayDropbox alloc];
    v31 = FCURLForTodayDropbox();
    v32 = [v30 initWithFileURL:v31];
    fileCoordinatedTodayDropbox = v23->_fileCoordinatedTodayDropbox;
    v23->_fileCoordinatedTodayDropbox = v32;

    objc_storeStrong(&v23->_personalizationDataGenerator, a8);
    v34 = [v20 personalizationData];
    [v34 addStateObserver:v23];
    objc_storeStrong(&v23->_purchaseController, obj);
    v35 = +[NSNotificationCenter defaultCenter];
    [v35 addObserver:v23 selector:"_markPurchasesDirty" name:FCPurchaseListChangedNotificationName object:0];
    v36 = [v20 readingHistory];
    [v36 addObserver:v23];
    [v36 addStateObserver:v23];
    objc_storeStrong(&v23->_subscriptionController, v49);
    [v19 addObserver:v23];
    objc_storeStrong(&v23->_localNewsChannelService, v50);
    objc_storeStrong(&v23->_bundleSubscriptionManager, a7);
    [v52 addObserver:v23];
    objc_storeStrong(&v23->_privateDataContext, a9);
    v37 = [v20 userInfo];
    [v37 addObserver:v23];

    objc_storeStrong(&v23->_userEmbeddingGenerator, a10);
    [v35 addObserver:v23 selector:"_didBecomeActive" name:UIApplicationDidBecomeActiveNotification object:0];
    [v35 addObserver:v23 selector:"_willResignActive" name:UIApplicationWillResignActiveNotification object:0];
    [v35 addObserver:v23 selector:"_didEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];
    v38 = +[FCFileCoordinatedTodayDropboxTransaction transactionOfIdentity];
    if (v38)
    {
      [NSMutableArray arrayWithObject:v38];
    }

    else
    {
      +[NSMutableArray array];
    }
    v39 = ;
    seenArticlesTransactions = v23->_seenArticlesTransactions;
    v23->_seenArticlesTransactions = v39;

    v41 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v42 = dispatch_queue_create("com.apple.news.today-agent.work", v41);
    workQueue = v23->_workQueue;
    v23->_workQueue = v42;

    v44 = [[FCBoostableOperationThrottler alloc] initWithDelegate:v23];
    operationThrottler = v23->_operationThrottler;
    v23->_operationThrottler = v44;

    [(FRTodayAgent *)v23 _updateSuspensionState];
    [(FRTodayAgent *)v23 _markDirtyWithFlags:144];

    v17 = v47;
  }

  return v23;
}

- (void)enable
{
  [(FRTodayAgent *)self setEnabled:1];

  [(FRTodayAgent *)self _updateSuspensionState];
}

- (void)serviceWidgetIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FRTodayAgent *)self operationThrottler];
  [v5 tickleWithCompletion:v4];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationDidBecomeActiveNotification object:0];
  [v3 removeObserver:self name:UIApplicationWillResignActiveNotification object:0];
  [v3 removeObserver:self name:UIApplicationDidEnterBackgroundNotification object:0];
  [v3 removeObserver:self name:FCPurchaseListChangedNotificationName object:0];

  v4.receiver = self;
  v4.super_class = FRTodayAgent;
  [(FRTodayAgent *)&v4 dealloc];
}

- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8
{
  v14 = a5;
  v12 = a6;
  v13 = a7;
  if ([a4 count] || objc_msgSend(v14, "count") || objc_msgSend(v12, "count") || objc_msgSend(v13, "count"))
  {
    [(FRTodayAgent *)self _markDirtyWithFlags:8];
  }
}

- (void)readingHistory:(id)a3 didChangeFeaturesForArticles:(id)a4
{
  v6 = a3;
  v7 = a4;
  +[NSThread isMainThread];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 9;
  v8 = [v7 copy];
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000531AC;
  v19[3] = &unk_1000C5750;
  v23 = &v29;
  v24 = &v25;
  v11 = v6;
  v20 = v11;
  v12 = v9;
  v21 = v12;
  v13 = v10;
  v22 = v13;
  [v8 enumerateKeysAndObjectsUsingBlock:v19];
  if ([v12 count] || objc_msgSend(v13, "count"))
  {
    v14 = [v11 historyItemsForArticleIDs:v12];
    v15 = [FCFileCoordinatedTodayDropboxTransaction transactionToMutateSeenArticlesWithInsertedOrUpdatedHistoryItems:v14 deletedArticleIDs:v13];
    if (v15)
    {
      v16 = [(FRTodayAgent *)self seenArticlesTransactions];
      [v16 addObject:v15];
    }
  }

  if (v30[3])
  {
    v17 = FRTodayAgentLog;
    if (os_log_type_enabled(FRTodayAgentLog, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Marking reading history as dirty", v18, 2u);
    }

    [(FRTodayAgent *)self _markDirtyWithFlags:v30[3] qualityOfService:v26[3]];
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
}

- (void)_historyDidClear
{
  +[NSThread isMainThread];
  v4 = +[FCFileCoordinatedTodayDropboxTransaction transactionToClearSeenArticles];
  if (v4)
  {
    v3 = [(FRTodayAgent *)self seenArticlesTransactions];
    [v3 addObject:v4];
  }

  [(FRTodayAgent *)self _markDirtyWithFlags:6];
}

- (void)privateDataControllerDidBecomeClean:(id)a3
{
  v10 = a3;
  v4 = [(FRTodayAgent *)self privateDataContext];
  v5 = [v4 personalizationData];

  if (v5 == v10)
  {
    v9 = 64;
  }

  else
  {
    v6 = [(FRTodayAgent *)self privateDataContext];
    v7 = [v6 readingHistory];

    v8 = v10;
    if (v7 != v10)
    {
      goto LABEL_6;
    }

    v9 = 6;
  }

  [(FRTodayAgent *)self _markDirtyWithFlags:v9];
  v8 = v10;
LABEL_6:
}

- (void)_markPurchasesDirty
{
  +[NSThread isMainThread];

  [(FRTodayAgent *)self _markDirtyWithFlags:32];
}

- (void)_willResignActive
{
  [(FRTodayAgent *)self setEnabled:1];
  [(FRTodayAgent *)self _updateSuspensionState];
  v3 = [(FRTodayAgent *)self operationThrottler];
  v4 = [v3 allUnhandledMergedData];

  if ((v4 & 2) != 0)
  {
    v5 = [(FRTodayAgent *)self workQueue];
    FCDispatchAsyncWithQualityOfService();
  }
}

- (void)_didEnterBackground
{
  [(FRTodayAgent *)self _updateSuspensionState];
  v3 = +[UIApplication sharedApplication];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100053974;
  v11[3] = &unk_1000C46F0;
  v11[4] = &v12;
  v4 = [v3 beginBackgroundTaskWithName:@"TodayAgentUpdate" expirationHandler:v11];
  v13[3] = v4;
  v5 = [(FRTodayAgent *)self operationThrottler];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000539D4;
  v8[3] = &unk_1000C5598;
  v6 = v3;
  v9 = v6;
  v10 = &v12;
  [v5 tickleWithQualityOfService:25 data:0 completion:v8];

  v7 = [(FRTodayAgent *)self workQueue];
  FCDispatchAsyncWithQualityOfService();

  _Block_object_dispose(&v12, 8);
}

- (BOOL)_mayWidgetsBeVisible
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 applicationState] != 0;

  return v3;
}

- (void)_markDirtyWithFlags:(unint64_t)a3 qualityOfService:(int64_t)a4
{
  v6 = [(FRTodayAgent *)self operationThrottler];
  [v6 tickleWithQualityOfService:a4 data:a3 completion:0];
}

- (id)_accessorToUpdateRecentlyReadItems
{
  v2 = [(FRTodayAgent *)self privateDataContext];
  v3 = [v2 readingHistory];
  v4 = [v3 mostRecentlyReadArticlesWithMaxCount:200];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100053BA4;
  v8[3] = &unk_1000C5828;
  v9 = v4;
  v5 = v4;
  v6 = objc_retainBlock(v8);

  return v6;
}

- (BOOL)_updateDropboxWithAccessors:(id)a3
{
  v4 = a3;
  v5 = [(FRTodayAgent *)self fileCoordinatedTodayDropbox];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100053D64;
  v15[3] = &unk_1000C5828;
  v6 = v4;
  v16 = v6;
  v7 = [v5 depositSyncWithAccessor:v15];

  if (v7)
  {
    v8 = [CHSTimelineController alloc];
    v9 = [v8 initWithExtensionBundleIdentifier:NSSNewsTodayWidgetBundleID kind:NSSNewsTodayWidgetKind];
    v10 = [v9 reloadTimelineWithReason:@"todayDataChanged"];

    v11 = [CHSTimelineController alloc];
    v12 = [v11 initWithExtensionBundleIdentifier:NSSNewsTagWidgetBundleID kind:NSSNewsTagWidgetKind];
    v13 = [v12 reloadTimelineWithReason:@"todayDataChanged"];
  }

  return v7;
}

- (void)operationThrottler:(id)a3 performAsyncOperationWithQualityOfService:(int64_t)a4 completion:(id)a5
{
  v6 = a5;
  v7 = [(FRTodayAgent *)self operationThrottler];
  v8 = [v7 mergedData];

  v9 = FRTodayAgentLog;
  if (os_log_type_enabled(FRTodayAgentLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Performing throttler operation with flags %ld", buf, 0xCu);
  }

  if (v8)
  {
    v10 = [(FRTodayAgent *)self transactionProcessingGroup];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100054034;
    v13[3] = &unk_1000C5940;
    v14 = v6;
    v15 = v8;
    v13[4] = self;
    v11 = v6;
    dispatch_group_notify(v10, &_dispatch_main_q, v13);

    v12 = v14;
  }

  else
  {
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100054024;
    v19 = &unk_1000C3098;
    v20 = v6;
    v6[2](v6);
    v12 = v6;
  }
}

@end