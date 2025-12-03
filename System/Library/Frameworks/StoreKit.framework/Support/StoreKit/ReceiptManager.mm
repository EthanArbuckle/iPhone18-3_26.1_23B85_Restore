@interface ReceiptManager
+ (id)managerForClient:(id)client;
+ (void)clearLegacyTransactionCacheForBundleIDs:(id)ds;
+ (void)handleAppInstallForBundleIDs:(id)ds;
+ (void)handleAppUninstallForBundleIDs:(id)ds;
- (BOOL)_clearCachedLegacyTransactionsWithLogKey:(id)key;
- (BOOL)_includeFinishedConsumables;
- (BOOL)_needsSubscriptionStatusSyncForStatusDictionary:(id)dictionary logKey:(id)key;
- (BOOL)_resetLastUpdatedForLegacyTransactionsWithLogKey:(id)key;
- (BOOL)_setTransactionInfo:(id)info unfinishedIDs:(id)ds includesFinishedConsumables:(BOOL)consumables forRevision:(id)revision logKey:(id)key containsSubscriptions:(BOOL *)subscriptions;
- (BOOL)invalidateLegacyTransactionCache;
- (BOOL)isTransactionFinishedForID:(id)d;
- (NSDate)lastUpdated;
- (ReceiptManager)initWithClient:(id)client;
- (id)_configureMetricsEventWithBeforeTransactionCount:(unint64_t)count beforeTransactions:(id)transactions beforeStatuses:(id)statuses;
- (id)_readSubscriptionStatusForTransactionID:(id)d;
- (id)databaseStore;
- (id)legacyTransactionDatabaseStore;
- (id)readSubscriptionStatusForSubscriptionGroupID:(id)d;
- (void)_checkTransactionAgeAndSyncWithLogKey:(id)key completionHandler:(id)handler;
- (void)_clearOfferEligibilityCacheForSubscriptionGroupID:(id)d client:(id)client logKey:(id)key;
- (void)_manualSyncWithLogKey:(id)key completionHandler:(id)handler;
- (void)_setUnfinishedForTransactionIDs:(id)ds logKey:(id)key;
- (void)_syncSubscriptionStatusWithReason:(int64_t)reason logKey:(id)key completionHandler:(id)handler;
- (void)_syncTransactionsAndSubscriptionStatusWithReason:(int64_t)reason logKey:(id)key completionHandler:(id)handler;
- (void)appTransactionWithDialogContext:(id)context ignoreCache:(BOOL)cache completionHandler:(id)handler;
- (void)authenticateAndSyncWithDialogContext:(id)context completionHandler:(id)handler;
- (void)clearTransactions;
- (void)enumerateCurrentReceiptsForProductID:(id)d skipTransactionSync:(BOOL)sync usingBlock:(id)block completionHandler:(id)handler;
- (void)enumerateReceiptsForProductID:(id)d skipTransactionSync:(BOOL)sync usingBlock:(id)block completionHandler:(id)handler;
- (void)enumerateSubscriptionStatusSkippingStatusSync:(BOOL)sync usingBlock:(id)block completionHandler:(id)handler;
- (void)enumerateUnfinishedTransactionsSkippingTransactionSync:(BOOL)sync usingBlock:(id)block completionHandler:(id)handler;
- (void)isEligibleForIntroductoryOfferForSubscriptionGroupID:(id)d storefrontID:(id)iD completionHandler:(id)handler;
- (void)readAllTransactionsForProductID:(id)d usingBlock:(id)block productIDLog:(id)log logKey:(id)key;
- (void)readCurrentTransactionsForProductID:(id)d usingBlock:(id)block productIDLog:(id)log logKey:(id)key;
- (void)readSubscriptionStatusUsingBlock:(id)block statusCount:(unint64_t *)count;
- (void)readUnfinishedTransactionsUsingBlock:(id)block logKey:(id)key;
- (void)removeCachedLegacyTransactionWithID:(id)d;
- (void)requestUnifiedAppReceiptWithDialogContext:(id)context logKey:(id)key options:(id)options completionHandler:(id)handler;
- (void)setFinishedForTransactionID:(id)d;
- (void)setTransactionInfo:(id)info unfinishedIDs:(id)ds forRevision:(id)revision;
- (void)subscriptionStatusForSubscriptionGroupID:(id)d skipStatusSync:(BOOL)sync completionHandler:(id)handler;
- (void)subscriptionStatusForTransactionID:(id)d skipStatusSync:(BOOL)sync completionHandler:(id)handler;
- (void)syncReceiptsWithReason:(int64_t)reason completionHandler:(id)handler;
- (void)syncSubscriptionStatusWithReason:(int64_t)reason completionHandler:(id)handler;
- (void)transactionWithID:(id)d completionHandler:(id)handler;
@end

@implementation ReceiptManager

+ (id)managerForClient:(id)client
{
  clientCopy = client;
  if (qword_1003D3BE0 != -1)
  {
    sub_1002C7BD0();
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10000E4AC;
  v15 = sub_10000E4BC;
  v16 = 0;
  v4 = qword_1003D3BD8;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000E4C4;
  v8[3] = &unk_10037F7D0;
  v9 = clientCopy;
  v10 = &v11;
  v5 = clientCopy;
  dispatch_sync(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

+ (void)handleAppInstallForBundleIDs:(id)ds
{
  dsCopy = ds;
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v5 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v23 = 2114;
    v24 = dsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handling app install for %{public}@", buf, 0x16u);
  }

  v14 = +[Environment sharedInstance];
  userDatabase = [v14 userDatabase];
  v7 = [(SQLiteDatabaseStore *)[InAppReceiptDatabaseStore alloc] initWithDatabase:userDatabase];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = dsCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10000E7DC;
        v15[3] = &unk_10037FD50;
        v15[4] = v13;
        v15[5] = self;
        [(SQLiteDatabaseStore *)v7 modifyUsingTransaction:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

+ (void)handleAppUninstallForBundleIDs:(id)ds
{
  dsCopy = ds;
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v5 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v26 = 2114;
    v27 = dsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handling app uninstall for %{public}@", buf, 0x16u);
  }

  v15 = +[Environment sharedInstance];
  userDatabase = [v15 userDatabase];
  v7 = [(SQLiteDatabaseStore *)[InAppReceiptDatabaseStore alloc] initWithDatabase:userDatabase];
  v14 = userDatabase;
  v8 = [(SQLiteDatabaseStore *)[LegacyTransactionDatabaseStore alloc] initWithDatabase:userDatabase];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = dsCopy;
  v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10000EB64;
        v18[3] = &unk_10037FD50;
        v18[4] = v13;
        v18[5] = self;
        [(SQLiteDatabaseStore *)v7 modifyUsingTransaction:v18];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10000EC7C;
        v17[3] = &unk_10037FD78;
        v17[4] = v13;
        v17[5] = self;
        [(SQLiteDatabaseStore *)v8 modifyUsingTransaction:v17];
      }

      v10 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }
}

+ (void)clearLegacyTransactionCacheForBundleIDs:(id)ds
{
  dsCopy = ds;
  v13 = +[Environment sharedInstance];
  userDatabase = [v13 userDatabase];
  v6 = [(SQLiteDatabaseStore *)[LegacyTransactionDatabaseStore alloc] initWithDatabase:userDatabase];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = dsCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10000EF2C;
        v14[3] = &unk_10037FD78;
        v14[4] = v12;
        v14[5] = self;
        [(SQLiteDatabaseStore *)v6 modifyUsingTransaction:v14];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (ReceiptManager)initWithClient:(id)client
{
  clientCopy = client;
  v44.receiver = self;
  v44.super_class = ReceiptManager;
  v6 = [(ReceiptManager *)&v44 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_client, client);
    v8 = objc_opt_new();
    appTransactionsCompletionHandlers = v7->_appTransactionsCompletionHandlers;
    v7->_appTransactionsCompletionHandlers = v8;

    v10 = objc_opt_new();
    statusSyncCompletionHandlers = v7->_statusSyncCompletionHandlers;
    v7->_statusSyncCompletionHandlers = v10;

    v12 = objc_opt_new();
    transactionSyncCompletionHandlers = v7->_transactionSyncCompletionHandlers;
    v7->_transactionSyncCompletionHandlers = v12;

    v14 = objc_opt_new();
    validateCompletionHandlers = v7->_validateCompletionHandlers;
    v7->_validateCompletionHandlers = v14;

    v16 = objc_opt_new();
    readQueue = v7->_readQueue;
    v7->_readQueue = v16;

    [(NSOperationQueue *)v7->_readQueue setMaxConcurrentOperationCount:4];
    v18 = objc_opt_new();
    syncQueue = v7->_syncQueue;
    v7->_syncQueue = v18;

    [(NSOperationQueue *)v7->_syncQueue setMaxConcurrentOperationCount:1];
    requestBundleID = [clientCopy requestBundleID];
    v21 = [InAppReceiptDatabaseShared databasePathsForBundleID:requestBundleID error:0];

    if (v21)
    {
      v37 = v7;
      v38 = +[NSUUID lib_shortLogKey];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v36 = v21;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v40 objects:v51 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v41;
        do
        {
          v26 = 0;
          do
          {
            if (*v41 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v40 + 1) + 8 * v26);
            v28 = +[NSFileManager defaultManager];
            v29 = [v28 fileExistsAtPath:v27];

            if (v29)
            {
              if (qword_1003D3C30 != -1)
              {
                sub_1002C7BF8();
              }

              v30 = qword_1003D3C10;
              if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_INFO))
              {
                *buf = 138543618;
                v46 = v38;
                v47 = 2114;
                v48 = v27;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "[%{public}@] Removing app receipts db at %{public}@", buf, 0x16u);
              }

              v31 = +[NSFileManager defaultManager];
              v39 = 0;
              v32 = [v31 removeItemAtPath:v27 error:&v39];
              v33 = v39;

              if ((v32 & 1) == 0)
              {
                if (qword_1003D3C30 != -1)
                {
                  sub_1002C7BF8();
                }

                v34 = qword_1003D3C10;
                if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543874;
                  v46 = v38;
                  v47 = 2114;
                  v48 = v27;
                  v49 = 2114;
                  v50 = v33;
                  _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "[%{public}@] Error removing receipts at %{public}@ - %{public}@", buf, 0x20u);
                }
              }
            }

            v26 = v26 + 1;
          }

          while (v24 != v26);
          v24 = [v22 countByEnumeratingWithState:&v40 objects:v51 count:16];
        }

        while (v24);
      }

      v7 = v37;
      v21 = v36;
    }
  }

  return v7;
}

- (id)databaseStore
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_databaseStore);
  if (!WeakRetained)
  {
    v4 = +[Environment sharedInstance];
    userDatabase = [v4 userDatabase];
    WeakRetained = [(SQLiteDatabaseStore *)[InAppReceiptDatabaseStore alloc] initWithDatabase:userDatabase];
    objc_storeWeak(&selfCopy->_databaseStore, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

- (id)legacyTransactionDatabaseStore
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_legacyTransactionDatabaseStore);
  if (!WeakRetained)
  {
    v4 = +[Environment sharedInstance];
    userDatabase = [v4 userDatabase];
    WeakRetained = [(SQLiteDatabaseStore *)[LegacyTransactionDatabaseStore alloc] initWithDatabase:userDatabase];
    objc_storeWeak(&selfCopy->_legacyTransactionDatabaseStore, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

- (void)appTransactionWithDialogContext:(id)context ignoreCache:(BOOL)cache completionHandler:(id)handler
{
  cacheCopy = cache;
  contextCopy = context;
  handlerCopy = handler;
  v10 = self->_appTransactionsCompletionHandlers;
  objc_sync_enter(v10);
  v11 = objc_retainBlock(handlerCopy);
  [(NSMutableArray *)v10 addObject:v11];

  appTransactionReadOperation = [(ReceiptManager *)self appTransactionReadOperation];

  if (!appTransactionReadOperation)
  {
    v13 = [AppTransactionReadTask alloc];
    client = [(ReceiptManager *)self client];
    databaseStore = [(ReceiptManager *)self databaseStore];
    syncQueue = [(ReceiptManager *)self syncQueue];
    v17 = [(AppTransactionReadTask *)v13 initWithClient:client ignoreCache:cacheCopy dbStore:databaseStore syncQueue:syncQueue];

    [(AppTransactionReadTask *)v17 setDialogContext:contextCopy];
    v18 = +[NSUUID lib_shortLogKey];
    [(AppTransactionReadTask *)v17 setLogKey:v18];

    objc_initWeak(&location, v17);
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_10000F7A0;
    v23 = &unk_10037FDA0;
    objc_copyWeak(&v26, &location);
    v24 = v10;
    selfCopy = self;
    [(AppTransactionReadTask *)v17 setCompletionBlock:&v20];
    [(ReceiptManager *)self setAppTransactionReadOperation:v17, v20, v21, v22, v23];
    readQueue = [(ReceiptManager *)self readQueue];
    [readQueue addOperation:v17];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v10);
}

- (void)authenticateAndSyncWithDialogContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  v8 = +[NSUUID lib_shortLogKey];
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v9 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    client = [(ReceiptManager *)self client];
    requestBundleID = [client requestBundleID];
    *buf = 138543618;
    v20 = v8;
    v21 = 2114;
    v22 = requestBundleID;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting authenticate and sync for %{public}@", buf, 0x16u);
  }

  client2 = [(ReceiptManager *)self client];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000FB5C;
  v16[3] = &unk_10037FDF0;
  v17 = v8;
  v18 = handlerCopy;
  v16[4] = self;
  v14 = v8;
  v15 = handlerCopy;
  [_TtC9storekitd19objc_AccountManager authenticateWithClient:client2 reason:@"StoreKit client initiated for syncing transactions" dialogContext:contextCopy logKey:v14 completionHandler:v16];
}

- (void)clearTransactions
{
  databaseStore = [(ReceiptManager *)self databaseStore];
  client = [(ReceiptManager *)self client];
  requestBundleID = [client requestBundleID];
  [databaseStore clearTransactionsForBundleID:requestBundleID];
}

- (void)enumerateCurrentReceiptsForProductID:(id)d skipTransactionSync:(BOOL)sync usingBlock:(id)block completionHandler:(id)handler
{
  syncCopy = sync;
  dCopy = d;
  blockCopy = block;
  handlerCopy = handler;
  v11 = +[NSUUID lib_shortLogKey];
  if (dCopy)
  {
    dCopy = [NSString stringWithFormat:@" ProductID: %@", dCopy];
  }

  else
  {
    dCopy = &stru_10039AA00;
  }

  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v13 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    client = [(ReceiptManager *)self client];
    requestBundleID = [client requestBundleID];
    *buf = 138543874;
    v52 = v11;
    v53 = 2114;
    v54 = requestBundleID;
    v55 = 2114;
    v56 = dCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Enumerating current transactions for %{public}@%{public}@", buf, 0x20u);
  }

  if (syncCopy)
  {
    readQueue = [(ReceiptManager *)self readQueue];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10000FFE4;
    v45[3] = &unk_10037FE18;
    v18 = &v46;
    v45[4] = self;
    v46 = dCopy;
    v36 = &v49;
    v19 = &v47;
    v20 = &v48;
    v47 = dCopy;
    v48 = v11;
    v21 = &v50;
    v22 = handlerCopy;
    v23 = blockCopy;
    v49 = blockCopy;
    v50 = handlerCopy;
    v24 = handlerCopy;
    v25 = v11;
    v26 = dCopy;
    v27 = blockCopy;
    v28 = dCopy;
    [readQueue addOperationWithBlock:v45];
  }

  else
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100010034;
    v39[3] = &unk_10037FE40;
    v39[4] = self;
    v40 = dCopy;
    v36 = &v43;
    v19 = &v41;
    v20 = &v42;
    v41 = dCopy;
    v42 = v11;
    v21 = &v44;
    v23 = blockCopy;
    selfCopy = self;
    v22 = handlerCopy;
    v43 = blockCopy;
    v44 = handlerCopy;
    v30 = handlerCopy;
    v31 = v11;
    v32 = dCopy;
    v33 = blockCopy;
    v34 = dCopy;
    v35 = selfCopy;
    v18 = &v40;
    [(ReceiptManager *)v35 _checkTransactionAgeAndSyncWithLogKey:v31 completionHandler:v39];
  }
}

- (void)readCurrentTransactionsForProductID:(id)d usingBlock:(id)block productIDLog:(id)log logKey:(id)key
{
  dCopy = d;
  blockCopy = block;
  logCopy = log;
  keyCopy = key;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  databaseStore = [(ReceiptManager *)self databaseStore];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_1000102F8;
  v24 = &unk_10037FE90;
  v15 = dCopy;
  v25 = v15;
  selfCopy = self;
  v28 = &v29;
  v16 = blockCopy;
  v27 = v16;
  [databaseStore readUsingSession:&v21];

  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BF8();
  }

  v17 = qword_1003D3C10;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v30[3];
    v19 = [(ReceiptManager *)self client:v21];
    requestBundleID = [v19 requestBundleID];
    *buf = 138544130;
    v34 = keyCopy;
    v35 = 2048;
    v36 = v18;
    v37 = 2114;
    v38 = requestBundleID;
    v39 = 2114;
    v40 = logCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished enumerating %li current transactions for %{public}@%{public}@", buf, 0x2Au);
  }

  _Block_object_dispose(&v29, 8);
}

- (void)enumerateReceiptsForProductID:(id)d skipTransactionSync:(BOOL)sync usingBlock:(id)block completionHandler:(id)handler
{
  syncCopy = sync;
  dCopy = d;
  blockCopy = block;
  handlerCopy = handler;
  v11 = +[NSUUID lib_shortLogKey];
  if (dCopy)
  {
    dCopy = [NSString stringWithFormat:@" ProductID: %@", dCopy];
  }

  else
  {
    dCopy = &stru_10039AA00;
  }

  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v13 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    client = [(ReceiptManager *)self client];
    requestBundleID = [client requestBundleID];
    *buf = 138543874;
    v52 = v11;
    v53 = 2114;
    v54 = requestBundleID;
    v55 = 2114;
    v56 = dCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Enumerating transactions for %{public}@%{public}@", buf, 0x20u);
  }

  if (syncCopy)
  {
    readQueue = [(ReceiptManager *)self readQueue];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100010710;
    v45[3] = &unk_10037FE18;
    v18 = &v46;
    v45[4] = self;
    v46 = dCopy;
    v36 = &v49;
    v19 = &v47;
    v20 = &v48;
    v47 = dCopy;
    v48 = v11;
    v21 = &v50;
    v22 = handlerCopy;
    v23 = blockCopy;
    v49 = blockCopy;
    v50 = handlerCopy;
    v24 = handlerCopy;
    v25 = v11;
    v26 = dCopy;
    v27 = blockCopy;
    v28 = dCopy;
    [readQueue addOperationWithBlock:v45];
  }

  else
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100010760;
    v39[3] = &unk_10037FE40;
    v39[4] = self;
    v40 = dCopy;
    v36 = &v43;
    v19 = &v41;
    v20 = &v42;
    v41 = dCopy;
    v42 = v11;
    v21 = &v44;
    v23 = blockCopy;
    selfCopy = self;
    v22 = handlerCopy;
    v43 = blockCopy;
    v44 = handlerCopy;
    v30 = handlerCopy;
    v31 = v11;
    v32 = dCopy;
    v33 = blockCopy;
    v34 = dCopy;
    v35 = selfCopy;
    v18 = &v40;
    [(ReceiptManager *)v35 _checkTransactionAgeAndSyncWithLogKey:v31 completionHandler:v39];
  }
}

- (void)readAllTransactionsForProductID:(id)d usingBlock:(id)block productIDLog:(id)log logKey:(id)key
{
  dCopy = d;
  blockCopy = block;
  logCopy = log;
  keyCopy = key;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  databaseStore = [(ReceiptManager *)self databaseStore];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_100010A24;
  v24 = &unk_10037FE90;
  v15 = dCopy;
  v25 = v15;
  selfCopy = self;
  v28 = &v29;
  v16 = blockCopy;
  v27 = v16;
  [databaseStore readUsingSession:&v21];

  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BF8();
  }

  v17 = qword_1003D3C10;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v30[3];
    v19 = [(ReceiptManager *)self client:v21];
    requestBundleID = [v19 requestBundleID];
    *buf = 138544130;
    v34 = keyCopy;
    v35 = 2048;
    v36 = v18;
    v37 = 2114;
    v38 = requestBundleID;
    v39 = 2114;
    v40 = logCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished enumerating %li transactions for %{public}@%{public}@", buf, 0x2Au);
  }

  _Block_object_dispose(&v29, 8);
}

- (void)enumerateUnfinishedTransactionsSkippingTransactionSync:(BOOL)sync usingBlock:(id)block completionHandler:(id)handler
{
  syncCopy = sync;
  blockCopy = block;
  handlerCopy = handler;
  v10 = +[NSUUID lib_shortLogKey];
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v11 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    client = [(ReceiptManager *)self client];
    requestBundleID = [client requestBundleID];
    *buf = 138543618;
    v34 = v10;
    v35 = 2114;
    v36 = requestBundleID;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Enumerating unfinished transactions for %{public}@", buf, 0x16u);
  }

  if (syncCopy)
  {
    readQueue = [(ReceiptManager *)self readQueue];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100010D98;
    v29[3] = &unk_10037FEB8;
    v16 = &v31;
    v17 = &v30;
    v29[4] = self;
    v30 = v10;
    v18 = &v32;
    v31 = blockCopy;
    v32 = handlerCopy;
    v19 = handlerCopy;
    v20 = v10;
    v21 = blockCopy;
    [readQueue addOperationWithBlock:v29];
  }

  else
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100010DE8;
    v25[3] = &unk_10037FEE0;
    v16 = &v27;
    v17 = &v26;
    v25[4] = self;
    v26 = v10;
    v18 = &v28;
    v27 = blockCopy;
    v28 = handlerCopy;
    v22 = handlerCopy;
    v23 = v10;
    v24 = blockCopy;
    [(ReceiptManager *)self _checkTransactionAgeAndSyncWithLogKey:v23 completionHandler:v25];
  }
}

- (void)readUnfinishedTransactionsUsingBlock:(id)block logKey:(id)key
{
  blockCopy = block;
  keyCopy = key;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  databaseStore = [(ReceiptManager *)self databaseStore];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100011058;
  v14[3] = &unk_10037FF08;
  v14[4] = self;
  v16 = &v17;
  v9 = blockCopy;
  v15 = v9;
  [databaseStore readUsingSession:v14];

  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BF8();
  }

  v10 = qword_1003D3C10;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v18[3];
    client = [(ReceiptManager *)self client];
    requestBundleID = [client requestBundleID];
    *buf = 138543874;
    v22 = keyCopy;
    v23 = 2048;
    v24 = v11;
    v25 = 2114;
    v26 = requestBundleID;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished enumerating %li unfinished transactions for %{public}@", buf, 0x20u);
  }

  _Block_object_dispose(&v17, 8);
}

- (void)transactionWithID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10000E4AC;
  v19 = sub_10000E4BC;
  v20 = 0;
  databaseStore = [(ReceiptManager *)self databaseStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000112B8;
  v11[3] = &unk_10037FF30;
  v14 = &v15;
  v9 = dCopy;
  v12 = v9;
  selfCopy = self;
  [databaseStore readUsingSession:v11];

  receipt = [v16[5] receipt];
  handlerCopy[2](handlerCopy, receipt);

  _Block_object_dispose(&v15, 8);
}

- (BOOL)invalidateLegacyTransactionCache
{
  v3 = +[NSUUID lib_shortLogKey];
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v4 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    client = [(ReceiptManager *)self client];
    requestBundleID = [client requestBundleID];
    v10 = 138543874;
    selfCopy = self;
    v12 = 2114;
    v13 = v3;
    v14 = 2114;
    v15 = requestBundleID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@] Invalidating legacy cache for %{public}@", &v10, 0x20u);
  }

  if ([(ReceiptManager *)self _clearCachedLegacyTransactionsWithLogKey:v3])
  {
    v8 = [(ReceiptManager *)self _resetLastUpdatedForLegacyTransactionsWithLogKey:v3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)isEligibleForIntroductoryOfferForSubscriptionGroupID:(id)d storefrontID:(id)iD completionHandler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  +[NSUUID lib_shortLogKey];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000115C4;
  v16 = v15[3] = &unk_10037FF58;
  selfCopy = self;
  v18 = dCopy;
  v19 = iDCopy;
  v20 = handlerCopy;
  v11 = handlerCopy;
  v12 = iDCopy;
  v13 = dCopy;
  v14 = v16;
  [(ReceiptManager *)self _checkTransactionAgeAndSyncWithLogKey:v14 completionHandler:v15];
}

- (BOOL)isTransactionFinishedForID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  databaseStore = [(ReceiptManager *)self databaseStore];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100011DC0;
  v8[3] = &unk_10037FF30;
  v11 = &v12;
  v6 = dCopy;
  v9 = v6;
  selfCopy = self;
  [databaseStore readUsingSession:v8];

  LOBYTE(self) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return self;
}

- (NSDate)lastUpdated
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000E4AC;
  v11 = sub_10000E4BC;
  v12 = 0;
  databaseStore = [(ReceiptManager *)self databaseStore];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100011F70;
  v6[3] = &unk_10037FF80;
  v6[4] = self;
  v6[5] = &v7;
  [databaseStore readUsingSession:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)removeCachedLegacyTransactionWithID:(id)d
{
  dCopy = d;
  v5 = +[NSUUID lib_shortLogKey];
  legacyTransactionDatabaseStore = [(ReceiptManager *)self legacyTransactionDatabaseStore];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000120D8;
  v8[3] = &unk_10037FFA8;
  v9 = dCopy;
  selfCopy = self;
  v7 = dCopy;
  [legacyTransactionDatabaseStore modifyUsingTransaction:v8];
}

- (void)requestUnifiedAppReceiptWithDialogContext:(id)context logKey:(id)key options:(id)options completionHandler:(id)handler
{
  contextCopy = context;
  keyCopy = key;
  optionsCopy = options;
  handlerCopy = handler;
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v14 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    client = [(ReceiptManager *)self client];
    requestBundleID = [client requestBundleID];
    *buf = 138543874;
    v37 = keyCopy;
    v38 = 2114;
    v39 = requestBundleID;
    v40 = 2114;
    v41 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting unified receipt for %{public}@ with options: %{public}@", buf, 0x20u);
  }

  v18 = [FetchReceiptTask alloc];
  client2 = [(ReceiptManager *)self client];
  v20 = [(FetchReceiptTask *)v18 initWithClient:client2];

  [(FetchReceiptTask *)v20 setLogKey:keyCopy];
  [(FetchReceiptTask *)v20 setDialogContext:contextCopy];
  v21 = [optionsCopy objectForKeyedSubscript:@"expired"];
  bOOLValue = [v21 BOOLValue];

  if (bOOLValue)
  {
    [(FetchReceiptTask *)v20 setReceiptFlags:[(FetchReceiptTask *)v20 receiptFlags]| 1];
  }

  v23 = [optionsCopy objectForKeyedSubscript:@"revoked"];
  bOOLValue2 = [v23 BOOLValue];

  if (bOOLValue2)
  {
    [(FetchReceiptTask *)v20 setReceiptFlags:[(FetchReceiptTask *)v20 receiptFlags]| 2];
  }

  v25 = [optionsCopy objectForKeyedSubscript:@"vpp"];
  bOOLValue3 = [v25 BOOLValue];

  if (bOOLValue3)
  {
    [(FetchReceiptTask *)v20 setReceiptFlags:[(FetchReceiptTask *)v20 receiptFlags]| 8];
  }

  objc_initWeak(buf, v20);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100012480;
  v30[3] = &unk_10037FFF8;
  objc_copyWeak(&v35, buf);
  v27 = handlerCopy;
  v34 = v27;
  v28 = keyCopy;
  v31 = v28;
  selfCopy = self;
  v29 = optionsCopy;
  v33 = v29;
  [(FetchReceiptTask *)v20 setCompletionBlock:v30];
  [(AsyncTask *)v20 start];

  objc_destroyWeak(&v35);
  objc_destroyWeak(buf);
}

- (void)setFinishedForTransactionID:(id)d
{
  dCopy = d;
  v5 = +[NSUUID lib_shortLogKey];
  databaseStore = [(ReceiptManager *)self databaseStore];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000128B0;
  v14[3] = &unk_100380020;
  v7 = dCopy;
  v15 = v7;
  selfCopy = self;
  v17 = v5;
  v8 = v5;
  [databaseStore modifyUsingTransaction:v14];

  legacyTransactionDatabaseStore = [(ReceiptManager *)self legacyTransactionDatabaseStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100012930;
  v11[3] = &unk_10037FFA8;
  v12 = v7;
  selfCopy2 = self;
  v10 = v7;
  [legacyTransactionDatabaseStore modifyUsingTransaction:v11];
}

- (void)subscriptionStatusForSubscriptionGroupID:(id)d skipStatusSync:(BOOL)sync completionHandler:(id)handler
{
  syncCopy = sync;
  dCopy = d;
  handlerCopy = handler;
  v10 = +[NSUUID lib_shortLogKey];
  v11 = v10;
  if (syncCopy)
  {
    readQueue = [(ReceiptManager *)self readQueue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100012B24;
    v24[3] = &unk_10037FDC8;
    v13 = &v25;
    v24[4] = self;
    v25 = dCopy;
    v14 = &v26;
    v26 = handlerCopy;
    v15 = handlerCopy;
    v16 = dCopy;
    [readQueue addOperationWithBlock:v24];
  }

  else
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100012C58;
    v20[3] = &unk_100380070;
    v13 = &v21;
    v20[4] = self;
    v21 = dCopy;
    v14 = &v22;
    v17 = v10;
    v22 = v17;
    v23 = handlerCopy;
    v18 = handlerCopy;
    v19 = dCopy;
    [(ReceiptManager *)self _checkTransactionAgeAndSyncWithLogKey:v17 completionHandler:v20];
    readQueue = v23;
  }
}

- (id)readSubscriptionStatusForSubscriptionGroupID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10000E4AC;
  v17 = sub_10000E4BC;
  v18 = 0;
  databaseStore = [(ReceiptManager *)self databaseStore];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100013218;
  v9[3] = &unk_10037FF30;
  v12 = &v13;
  v6 = dCopy;
  v10 = v6;
  selfCopy = self;
  [databaseStore readUsingSession:v9];

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

- (void)subscriptionStatusForTransactionID:(id)d skipStatusSync:(BOOL)sync completionHandler:(id)handler
{
  syncCopy = sync;
  dCopy = d;
  handlerCopy = handler;
  v10 = +[NSUUID lib_shortLogKey];
  v11 = v10;
  if (syncCopy)
  {
    readQueue = [(ReceiptManager *)self readQueue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10001343C;
    v24[3] = &unk_10037FDC8;
    v13 = &v25;
    v24[4] = self;
    v25 = dCopy;
    v14 = &v26;
    v26 = handlerCopy;
    v15 = handlerCopy;
    v16 = dCopy;
    [readQueue addOperationWithBlock:v24];
  }

  else
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100013570;
    v20[3] = &unk_100380070;
    v13 = &v21;
    v20[4] = self;
    v21 = dCopy;
    v14 = &v22;
    v17 = v10;
    v22 = v17;
    v23 = handlerCopy;
    v18 = handlerCopy;
    v19 = dCopy;
    [(ReceiptManager *)self _checkTransactionAgeAndSyncWithLogKey:v17 completionHandler:v20];
    readQueue = v23;
  }
}

- (id)_readSubscriptionStatusForTransactionID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10000E4AC;
  v17 = sub_10000E4BC;
  v18 = 0;
  databaseStore = [(ReceiptManager *)self databaseStore];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100013B30;
  v9[3] = &unk_10037FF30;
  v12 = &v13;
  v6 = dCopy;
  v10 = v6;
  selfCopy = self;
  [databaseStore readUsingSession:v9];

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

- (void)enumerateSubscriptionStatusSkippingStatusSync:(BOOL)sync usingBlock:(id)block completionHandler:(id)handler
{
  syncCopy = sync;
  blockCopy = block;
  handlerCopy = handler;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v10 = +[NSUUID lib_shortLogKey];
  v11 = v10;
  if (syncCopy)
  {
    readQueue = [(ReceiptManager *)self readQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100013DA4;
    v20[3] = &unk_100380098;
    v20[4] = self;
    v21 = blockCopy;
    v22[1] = v23;
    v22[0] = handlerCopy;
    [readQueue addOperationWithBlock:v20];
    v13 = &v21;
    v14 = v22;
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100013EE4;
    v15[3] = &unk_1003800E8;
    v15[4] = self;
    v16 = v10;
    v17 = blockCopy;
    v19 = v23;
    v18 = handlerCopy;
    [(ReceiptManager *)self _checkTransactionAgeAndSyncWithLogKey:v16 completionHandler:v15];
    v13 = &v16;
    v14 = &v17;
    readQueue = v18;
  }

  _Block_object_dispose(v23, 8);
}

- (void)readSubscriptionStatusUsingBlock:(id)block statusCount:(unint64_t *)count
{
  blockCopy = block;
  *count = 0;
  databaseStore = [(ReceiptManager *)self databaseStore];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100014520;
  v9[3] = &unk_100380138;
  v10 = blockCopy;
  countCopy = count;
  v9[4] = self;
  v8 = blockCopy;
  [databaseStore readUsingSession:v9];
}

- (void)setTransactionInfo:(id)info unfinishedIDs:(id)ds forRevision:(id)revision
{
  infoCopy = info;
  dsCopy = ds;
  revisionCopy = revision;
  v11 = +[NSUUID lib_shortLogKey];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  databaseStore = [(ReceiptManager *)self databaseStore];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100014760;
  v13[3] = &unk_10037FF80;
  v13[4] = self;
  v13[5] = &v14;
  [databaseStore readUsingSession:v13];

  [(ReceiptManager *)self _setTransactionInfo:infoCopy unfinishedIDs:dsCopy includesFinishedConsumables:*(v15 + 24) forRevision:revisionCopy logKey:v11 containsSubscriptions:0];
  _Block_object_dispose(&v14, 8);
}

- (void)syncReceiptsWithReason:(int64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = +[NSUUID lib_shortLogKey];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000148B4;
  v9[3] = &unk_10037FFD0;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ReceiptManager *)self _syncTransactionsAndSubscriptionStatusWithReason:reason logKey:v7 completionHandler:v9];
}

- (void)syncSubscriptionStatusWithReason:(int64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = +[NSUUID lib_shortLogKey];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100014A60;
  v9[3] = &unk_10037FFD0;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ReceiptManager *)self _syncSubscriptionStatusWithReason:reason logKey:v7 completionHandler:v9];
}

- (void)_checkTransactionAgeAndSyncWithLogKey:(id)key completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  v8 = self->_validateCompletionHandlers;
  _includeFinishedConsumables = [(ReceiptManager *)self _includeFinishedConsumables];
  v10 = [ValidateCacheTask alloc];
  client = [(ReceiptManager *)self client];
  databaseStore = [(ReceiptManager *)self databaseStore];
  v13 = [(ValidateCacheTask *)v10 initWithClient:client includeFinishedConsumables:_includeFinishedConsumables dbStore:databaseStore];

  objc_initWeak(&location, v13);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100014D54;
  v20[3] = &unk_1003801B0;
  objc_copyWeak(&v24, &location);
  v14 = v8;
  v21 = v14;
  selfCopy = self;
  v15 = keyCopy;
  v23 = v15;
  [(ValidateCacheTask *)v13 setCompletionBlock:v20];
  v16 = v14;
  objc_sync_enter(v16);
  v17 = objc_retainBlock(handlerCopy);
  [(NSMutableArray *)v16 addObject:v17];

  validateTask = [(ReceiptManager *)self validateTask];

  if (!validateTask)
  {
    [(ReceiptManager *)self setValidateTask:v13];
    syncQueue = [(ReceiptManager *)self syncQueue];
    [syncQueue addOperation:v13];
  }

  objc_sync_exit(v16);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (BOOL)_clearCachedLegacyTransactionsWithLogKey:(id)key
{
  keyCopy = key;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BF8();
  }

  v5 = qword_1003D3C10;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    client = [(ReceiptManager *)self client];
    requestBundleID = [client requestBundleID];
    *buf = 138543874;
    selfCopy2 = self;
    v21 = 2114;
    v22 = keyCopy;
    v23 = 2114;
    v24 = requestBundleID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@] Clearing cached legacy transactions for %{public}@", buf, 0x20u);
  }

  legacyTransactionDatabaseStore = [(ReceiptManager *)self legacyTransactionDatabaseStore];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000152E8;
  v14[3] = &unk_1003801D8;
  v14[4] = self;
  v14[5] = &v15;
  [legacyTransactionDatabaseStore modifyUsingTransaction:v14];

  if (v16[3])
  {
    v9 = 1;
  }

  else
  {
    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BF8();
    }

    v10 = qword_1003D3C10;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      client2 = [(ReceiptManager *)self client];
      requestBundleID2 = [client2 requestBundleID];
      *buf = 138543874;
      selfCopy2 = self;
      v21 = 2114;
      v22 = keyCopy;
      v23 = 2114;
      v24 = requestBundleID2;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}@][%{public}@] Failed to clear cached transactions for %{public}@", buf, 0x20u);
    }

    v9 = *(v16 + 24);
  }

  _Block_object_dispose(&v15, 8);

  return v9 & 1;
}

- (BOOL)_includeFinishedConsumables
{
  if (!sub_100070464())
  {
LABEL_6:
    client = [(ReceiptManager *)self client];
    callerBundleID = [client callerBundleID];
    client2 = [(ReceiptManager *)self client];
    requestBundleID = [client2 requestBundleID];
    if ([callerBundleID isEqualToString:requestBundleID])
    {
    }

    else
    {
      client3 = [(ReceiptManager *)self client];
      callerBundleID2 = [client3 callerBundleID];
      v14 = [callerBundleID2 hasSuffix:@".watchkitapp"];

      if ((v14 & 1) == 0)
      {
        v22 = 0;
        v23 = &v22;
        v24 = 0x2020000000;
        v25 = 0;
        databaseStore = [(ReceiptManager *)self databaseStore];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100015600;
        v21[3] = &unk_10037FF80;
        v21[4] = self;
        v21[5] = &v22;
        [databaseStore readUsingSession:v21];

        v7 = *(v23 + 24);
        _Block_object_dispose(&v22, 8);
        return v7 & 1;
      }
    }

    client4 = [(ReceiptManager *)self client];
    callerBundleURL = [client4 callerBundleURL];
    v17 = [NSBundle bundleWithURL:callerBundleURL];

    infoDictionary = [v17 infoDictionary];
    LOBYTE(callerBundleURL) = [infoDictionary tcr_BOOLForKey:@"SKIncludeConsumableInAppPurchaseHistory"];

    return callerBundleURL;
  }

  v3 = CFPreferencesCopyAppValue(@"SKIncludeConsumableInAppPurchaseHistory", +[_TtC9storekitd18AppDefaultsManager kSKUserDefaultsIdentifier]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_6;
  }

  client5 = [(ReceiptManager *)self client];
  callerBundleID3 = [client5 callerBundleID];
  v6 = [v3 containsObject:callerBundleID3];

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = 1;
  return v7 & 1;
}

- (void)_manualSyncWithLogKey:(id)key completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_10000E4AC;
  v18[4] = sub_10000E4BC;
  v19 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_10000E4AC;
  v16[4] = sub_10000E4BC;
  v17 = 0;
  databaseStore = [(ReceiptManager *)self databaseStore];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000158CC;
  v15[3] = &unk_100380200;
  v15[4] = self;
  v15[5] = v18;
  v15[6] = v20;
  v15[7] = v16;
  [databaseStore readUsingSession:v15];

  [(ReceiptManager *)self clearTransactions];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000159BC;
  v10[3] = &unk_100380250;
  v10[4] = self;
  v12 = v20;
  v13 = v18;
  v14 = v16;
  v9 = handlerCopy;
  v11 = v9;
  [(ReceiptManager *)self _syncTransactionsAndSubscriptionStatusWithReason:4 logKey:keyCopy completionHandler:v10];

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);

  _Block_object_dispose(v20, 8);
}

- (id)_configureMetricsEventWithBeforeTransactionCount:(unint64_t)count beforeTransactions:(id)transactions beforeStatuses:(id)statuses
{
  transactionsCopy = transactions;
  statusesCopy = statuses;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10000E4AC;
  v25 = sub_10000E4BC;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10000E4AC;
  v19 = sub_10000E4BC;
  v20 = 0;
  databaseStore = [(ReceiptManager *)self databaseStore];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100015D00;
  v14[3] = &unk_100380200;
  v14[4] = self;
  v14[5] = &v21;
  v14[6] = &v27;
  v14[7] = &v15;
  [databaseStore readUsingSession:v14];

  [v22[5] minusSet:transactionsCopy];
  [v16[5] minusSet:statusesCopy];
  v11 = objc_opt_new();
  [v11 setTransactionsCountDifference:v28[3] - count];
  [v11 setModifiedOrAddedTransactionsCount:{objc_msgSend(v22[5], "count")}];
  [v11 setModifiedOrAddedStatusesCount:{objc_msgSend(v16[5], "count")}];
  client = [(ReceiptManager *)self client];
  [v11 configureWithClient:client];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v11;
}

- (BOOL)_resetLastUpdatedForLegacyTransactionsWithLogKey:(id)key
{
  keyCopy = key;
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v5 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    client = [(ReceiptManager *)self client];
    requestBundleID = [client requestBundleID];
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = keyCopy;
    *&buf[22] = 2114;
    v23 = requestBundleID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@] Invalidating pending transactions cache for %{public}@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v23) = 1;
  legacyTransactionDatabaseStore = [(ReceiptManager *)self legacyTransactionDatabaseStore];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000160A0;
  v15[3] = &unk_1003801D8;
  v15[4] = self;
  v15[5] = buf;
  [legacyTransactionDatabaseStore modifyUsingTransaction:v15];

  if (*(*&buf[8] + 24))
  {
    v10 = 1;
  }

  else
  {
    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BF8();
    }

    v11 = qword_1003D3C10;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      client2 = [(ReceiptManager *)self client];
      requestBundleID2 = [client2 requestBundleID];
      *v16 = 138543874;
      selfCopy = self;
      v18 = 2114;
      v19 = keyCopy;
      v20 = 2114;
      v21 = requestBundleID2;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{public}@][%{public}@] Failed to invalidate cached transactions for %{public}@", v16, 0x20u);
    }

    v10 = *(*&buf[8] + 24);
  }

  _Block_object_dispose(buf, 8);

  return v10 & 1;
}

- (BOOL)_setTransactionInfo:(id)info unfinishedIDs:(id)ds includesFinishedConsumables:(BOOL)consumables forRevision:(id)revision logKey:(id)key containsSubscriptions:(BOOL *)subscriptions
{
  infoCopy = info;
  dsCopy = ds;
  revisionCopy = revision;
  keyCopy = key;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 1;
  databaseStore = [(ReceiptManager *)self databaseStore];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000162C4;
  v25[3] = &unk_100380278;
  v31 = &v34;
  v19 = infoCopy;
  v26 = v19;
  v20 = dsCopy;
  v27 = v20;
  selfCopy = self;
  v21 = keyCopy;
  v29 = v21;
  subscriptionsCopy = subscriptions;
  v22 = revisionCopy;
  v30 = v22;
  consumablesCopy = consumables;
  [databaseStore modifyUsingTransaction:v25];

  v23 = *(v35 + 24);
  _Block_object_dispose(&v34, 8);

  return v23;
}

- (void)_setUnfinishedForTransactionIDs:(id)ds logKey:(id)key
{
  dsCopy = ds;
  keyCopy = key;
  databaseStore = [(ReceiptManager *)self databaseStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100016754;
  v11[3] = &unk_100380020;
  v12 = dsCopy;
  selfCopy = self;
  v14 = keyCopy;
  v9 = keyCopy;
  v10 = dsCopy;
  [databaseStore modifyUsingTransaction:v11];
}

- (BOOL)_needsSubscriptionStatusSyncForStatusDictionary:(id)dictionary logKey:(id)key
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  v8 = [dictionaryCopy objectForKeyedSubscript:@"lastUpdated"];
  client = [(ReceiptManager *)self client];
  v10 = [client bag];

  v11 = +[_TtC9storekitd6BagKey subscriptionStatusMaxAge];
  v12 = [v10 integerForKey:v11];

  v23 = 0;
  v13 = [v12 valueWithError:&v23];
  v14 = v23;
  if (v14)
  {
    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BF8();
    }

    v15 = qword_1003D3C10;
    if (!os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v16 = v15;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"subscriptionGroupIdentifier"];
    *buf = 138543874;
    v25 = keyCopy;
    v26 = 2114;
    v27 = v17;
    v28 = 2114;
    v29 = v14;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%{public}@] Error getting max age for %{public}@ subscription status: %{public}@", buf, 0x20u);

LABEL_12:
LABEL_13:
    v21 = 0;
    goto LABEL_14;
  }

  [v13 doubleValue];
  v16 = [v8 dateByAddingTimeInterval:?];
  if ([v8 compare:v16] != 1)
  {
    goto LABEL_12;
  }

  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BF8();
  }

  v18 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"subscriptionGroupIdentifier"];
    *buf = 138543618;
    v25 = keyCopy;
    v26 = 2114;
    v27 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Forcing subscription status sync for %{public}@ because lastUpdated is older than maxAge", buf, 0x16u);
  }

  v21 = 1;
LABEL_14:

  return v21;
}

- (void)_syncSubscriptionStatusWithReason:(int64_t)reason logKey:(id)key completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  if (reason != 2)
  {
    goto LABEL_5;
  }

  client = [(ReceiptManager *)self client];
  objc_clientType = [client objc_clientType];

  if (objc_clientType == 3)
  {
    goto LABEL_5;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  reasonCopy = sub_10000E4AC;
  v45 = sub_10000E4BC;
  v46 = 0;
  databaseStore = [(ReceiptManager *)self databaseStore];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100016F7C;
  v38[3] = &unk_10037FF80;
  v38[4] = self;
  v38[5] = buf;
  [databaseStore readUsingSession:v38];

  if (*(*&buf[8] + 40))
  {
    _Block_object_dispose(buf, 8);

LABEL_5:
    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BF8();
    }

    v13 = qword_1003D3C10;
    if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      client2 = [(ReceiptManager *)self client];
      requestBundleID = [client2 requestBundleID];
      *buf = 138543874;
      *&buf[4] = keyCopy;
      *&buf[12] = 2114;
      *&buf[14] = requestBundleID;
      *&buf[22] = 2048;
      reasonCopy = reason;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting subscription status sync for %{public}@ reason %ld", buf, 0x20u);
    }

    v17 = [LoadSubscriptionStatusTask alloc];
    client3 = [(ReceiptManager *)self client];
    v19 = [(LoadSubscriptionStatusTask *)v17 initWithSubscriptionGroupID:0 reason:reason client:client3];

    [(LoadSubscriptionStatusTask *)v19 setLogKey:keyCopy];
    objc_initWeak(buf, v19);
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_10001702C;
    v32 = &unk_10037FDA0;
    objc_copyWeak(&v35, buf);
    v33 = keyCopy;
    selfCopy = self;
    [(LoadSubscriptionStatusTask *)v19 setCompletionBlock:&v29];
    v20 = self->_statusSyncCompletionHandlers;
    objc_sync_enter(v20);
    statusSyncCompletionHandlers = self->_statusSyncCompletionHandlers;
    v22 = objc_retainBlock(handlerCopy);
    [(NSMutableArray *)statusSyncCompletionHandlers addObject:v22, v29, v30, v31, v32];

    subscriptionStatusSyncOperation = [(ReceiptManager *)self subscriptionStatusSyncOperation];
    LODWORD(v22) = subscriptionStatusSyncOperation == 0;

    if (v22)
    {
      [(ReceiptManager *)self setSubscriptionStatusSyncOperation:v19];
      syncQueue = [(ReceiptManager *)self syncQueue];
      [syncQueue addOperation:v19];
    }

    objc_sync_exit(v20);

    objc_destroyWeak(&v35);
    objc_destroyWeak(buf);

    goto LABEL_12;
  }

  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BF8();
  }

  v25 = qword_1003D3C10;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    client4 = [(ReceiptManager *)self client];
    requestBundleID2 = [client4 requestBundleID];
    *v39 = 138543618;
    v40 = keyCopy;
    v41 = 2114;
    v42 = requestBundleID2;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring subscription status sync from push notification for %{public}@ since the app has not queried status", v39, 0x16u);
  }

  readQueue = [(ReceiptManager *)self readQueue];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100017018;
  v36[3] = &unk_10037F820;
  v37 = handlerCopy;
  [readQueue addOperationWithBlock:v36];

  _Block_object_dispose(buf, 8);
LABEL_12:
}

- (void)_syncTransactionsAndSubscriptionStatusWithReason:(int64_t)reason logKey:(id)key completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_10000E4AC;
  v47 = sub_10000E4BC;
  v48 = 0;
  databaseStore = [(ReceiptManager *)self databaseStore];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100017D84;
  v42[3] = &unk_10037FF80;
  v42[4] = self;
  v42[5] = &v43;
  [databaseStore readUsingSession:v42];

  if (reason != 2 || v44[5] || (-[ReceiptManager client](self, "client"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 objc_clientType] == 3, v11, v12))
  {
    _includeFinishedConsumables = [(ReceiptManager *)self _includeFinishedConsumables];
    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BF8();
    }

    v14 = qword_1003D3C10;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v44[5];
      client = [(ReceiptManager *)self client];
      requestBundleID = [client requestBundleID];
      *buf = 138544130;
      v50 = keyCopy;
      v51 = 2048;
      reasonCopy = reason;
      v53 = 2114;
      v54 = v15;
      v55 = 2114;
      v56 = requestBundleID;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting receipt sync with reason %ld from revision %{public}@ for %{public}@", buf, 0x2Au);
    }

    v18 = [LoadInAppReceiptsTask alloc];
    v19 = v44[5];
    client2 = [(ReceiptManager *)self client];
    v21 = [(LoadInAppReceiptsTask *)v18 initWithLocalRevision:v19 reason:reason includeFinishedConsumables:_includeFinishedConsumables client:client2];

    [(LoadInAppReceiptsTask *)v21 setLogKey:keyCopy];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100017E20;
    v38[3] = &unk_1003802C8;
    v38[4] = self;
    v41 = _includeFinishedConsumables;
    v22 = keyCopy;
    v39 = v22;
    reasonCopy2 = reason;
    [(LoadInAppReceiptsTask *)v21 setReceiverBlock:v38];
    objc_initWeak(buf, v21);
    v31 = _NSConcreteStackBlock;
    v32 = 3221225472;
    v33 = sub_100017FD4;
    v34 = &unk_100380318;
    objc_copyWeak(v37, buf);
    v35 = v22;
    selfCopy = self;
    v37[1] = reason;
    [(LoadInAppReceiptsTask *)v21 setCompletionBlock:&v31];
    v23 = self->_transactionSyncCompletionHandlers;
    objc_sync_enter(v23);
    transactionSyncCompletionHandlers = self->_transactionSyncCompletionHandlers;
    v25 = objc_retainBlock(handlerCopy);
    [(NSMutableArray *)transactionSyncCompletionHandlers addObject:v25, v31, v32, v33, v34];

    transactionSyncOperation = [(ReceiptManager *)self transactionSyncOperation];
    LODWORD(v25) = transactionSyncOperation == 0;

    if (v25)
    {
      [(ReceiptManager *)self setTransactionSyncOperation:v21];
      syncQueue = [(ReceiptManager *)self syncQueue];
      [syncQueue addOperation:v21];
    }

    objc_sync_exit(v23);

    objc_destroyWeak(v37);
    objc_destroyWeak(buf);
  }

  else
  {
    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BF8();
    }

    v28 = qword_1003D3C10;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      client3 = [(ReceiptManager *)self client];
      requestBundleID2 = [client3 requestBundleID];
      *buf = 138543618;
      v50 = keyCopy;
      v51 = 2114;
      reasonCopy = requestBundleID2;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring transaction sync from push notification for %{public}@ since the app has not queried history", buf, 0x16u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  _Block_object_dispose(&v43, 8);
}

- (void)_clearOfferEligibilityCacheForSubscriptionGroupID:(id)d client:(id)client logKey:(id)key
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  clientCopy = client;
  selfCopy = self;
  sub_100149D08(v7, v9, clientCopy, v10, v12);
}

@end