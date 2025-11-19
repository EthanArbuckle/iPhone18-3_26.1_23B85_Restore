@interface ReceiptManager
+ (id)managerForClient:(id)a3;
+ (void)clearLegacyTransactionCacheForBundleIDs:(id)a3;
+ (void)handleAppInstallForBundleIDs:(id)a3;
+ (void)handleAppUninstallForBundleIDs:(id)a3;
- (BOOL)_clearCachedLegacyTransactionsWithLogKey:(id)a3;
- (BOOL)_includeFinishedConsumables;
- (BOOL)_needsSubscriptionStatusSyncForStatusDictionary:(id)a3 logKey:(id)a4;
- (BOOL)_resetLastUpdatedForLegacyTransactionsWithLogKey:(id)a3;
- (BOOL)_setTransactionInfo:(id)a3 unfinishedIDs:(id)a4 includesFinishedConsumables:(BOOL)a5 forRevision:(id)a6 logKey:(id)a7 containsSubscriptions:(BOOL *)a8;
- (BOOL)invalidateLegacyTransactionCache;
- (BOOL)isTransactionFinishedForID:(id)a3;
- (NSDate)lastUpdated;
- (ReceiptManager)initWithClient:(id)a3;
- (id)_configureMetricsEventWithBeforeTransactionCount:(unint64_t)a3 beforeTransactions:(id)a4 beforeStatuses:(id)a5;
- (id)_readSubscriptionStatusForTransactionID:(id)a3;
- (id)databaseStore;
- (id)legacyTransactionDatabaseStore;
- (id)readSubscriptionStatusForSubscriptionGroupID:(id)a3;
- (void)_checkTransactionAgeAndSyncWithLogKey:(id)a3 completionHandler:(id)a4;
- (void)_clearOfferEligibilityCacheForSubscriptionGroupID:(id)a3 client:(id)a4 logKey:(id)a5;
- (void)_manualSyncWithLogKey:(id)a3 completionHandler:(id)a4;
- (void)_setUnfinishedForTransactionIDs:(id)a3 logKey:(id)a4;
- (void)_syncSubscriptionStatusWithReason:(int64_t)a3 logKey:(id)a4 completionHandler:(id)a5;
- (void)_syncTransactionsAndSubscriptionStatusWithReason:(int64_t)a3 logKey:(id)a4 completionHandler:(id)a5;
- (void)appTransactionWithDialogContext:(id)a3 ignoreCache:(BOOL)a4 completionHandler:(id)a5;
- (void)authenticateAndSyncWithDialogContext:(id)a3 completionHandler:(id)a4;
- (void)clearTransactions;
- (void)enumerateCurrentReceiptsForProductID:(id)a3 skipTransactionSync:(BOOL)a4 usingBlock:(id)a5 completionHandler:(id)a6;
- (void)enumerateReceiptsForProductID:(id)a3 skipTransactionSync:(BOOL)a4 usingBlock:(id)a5 completionHandler:(id)a6;
- (void)enumerateSubscriptionStatusSkippingStatusSync:(BOOL)a3 usingBlock:(id)a4 completionHandler:(id)a5;
- (void)enumerateUnfinishedTransactionsSkippingTransactionSync:(BOOL)a3 usingBlock:(id)a4 completionHandler:(id)a5;
- (void)isEligibleForIntroductoryOfferForSubscriptionGroupID:(id)a3 storefrontID:(id)a4 completionHandler:(id)a5;
- (void)readAllTransactionsForProductID:(id)a3 usingBlock:(id)a4 productIDLog:(id)a5 logKey:(id)a6;
- (void)readCurrentTransactionsForProductID:(id)a3 usingBlock:(id)a4 productIDLog:(id)a5 logKey:(id)a6;
- (void)readSubscriptionStatusUsingBlock:(id)a3 statusCount:(unint64_t *)a4;
- (void)readUnfinishedTransactionsUsingBlock:(id)a3 logKey:(id)a4;
- (void)removeCachedLegacyTransactionWithID:(id)a3;
- (void)requestUnifiedAppReceiptWithDialogContext:(id)a3 logKey:(id)a4 options:(id)a5 completionHandler:(id)a6;
- (void)setFinishedForTransactionID:(id)a3;
- (void)setTransactionInfo:(id)a3 unfinishedIDs:(id)a4 forRevision:(id)a5;
- (void)subscriptionStatusForSubscriptionGroupID:(id)a3 skipStatusSync:(BOOL)a4 completionHandler:(id)a5;
- (void)subscriptionStatusForTransactionID:(id)a3 skipStatusSync:(BOOL)a4 completionHandler:(id)a5;
- (void)syncReceiptsWithReason:(int64_t)a3 completionHandler:(id)a4;
- (void)syncSubscriptionStatusWithReason:(int64_t)a3 completionHandler:(id)a4;
- (void)transactionWithID:(id)a3 completionHandler:(id)a4;
@end

@implementation ReceiptManager

+ (id)managerForClient:(id)a3
{
  v3 = a3;
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
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

+ (void)handleAppInstallForBundleIDs:(id)a3
{
  v4 = a3;
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v5 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v22 = a1;
    v23 = 2114;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handling app install for %{public}@", buf, 0x16u);
  }

  v14 = +[Environment sharedInstance];
  v6 = [v14 userDatabase];
  v7 = [(SQLiteDatabaseStore *)[InAppReceiptDatabaseStore alloc] initWithDatabase:v6];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v4;
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
        v15[5] = a1;
        [(SQLiteDatabaseStore *)v7 modifyUsingTransaction:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

+ (void)handleAppUninstallForBundleIDs:(id)a3
{
  v4 = a3;
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v5 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v25 = a1;
    v26 = 2114;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handling app uninstall for %{public}@", buf, 0x16u);
  }

  v15 = +[Environment sharedInstance];
  v6 = [v15 userDatabase];
  v7 = [(SQLiteDatabaseStore *)[InAppReceiptDatabaseStore alloc] initWithDatabase:v6];
  v14 = v6;
  v8 = [(SQLiteDatabaseStore *)[LegacyTransactionDatabaseStore alloc] initWithDatabase:v6];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v4;
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
        v18[5] = a1;
        [(SQLiteDatabaseStore *)v7 modifyUsingTransaction:v18];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10000EC7C;
        v17[3] = &unk_10037FD78;
        v17[4] = v13;
        v17[5] = a1;
        [(SQLiteDatabaseStore *)v8 modifyUsingTransaction:v17];
      }

      v10 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }
}

+ (void)clearLegacyTransactionCacheForBundleIDs:(id)a3
{
  v4 = a3;
  v13 = +[Environment sharedInstance];
  v5 = [v13 userDatabase];
  v6 = [(SQLiteDatabaseStore *)[LegacyTransactionDatabaseStore alloc] initWithDatabase:v5];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v4;
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
        v14[5] = a1;
        [(SQLiteDatabaseStore *)v6 modifyUsingTransaction:v14];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (ReceiptManager)initWithClient:(id)a3
{
  v5 = a3;
  v44.receiver = self;
  v44.super_class = ReceiptManager;
  v6 = [(ReceiptManager *)&v44 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_client, a3);
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
    v20 = [v5 requestBundleID];
    v21 = [InAppReceiptDatabaseShared databasePathsForBundleID:v20 error:0];

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
  v2 = self;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&v2->_databaseStore);
  if (!WeakRetained)
  {
    v4 = +[Environment sharedInstance];
    v5 = [v4 userDatabase];
    WeakRetained = [(SQLiteDatabaseStore *)[InAppReceiptDatabaseStore alloc] initWithDatabase:v5];
    objc_storeWeak(&v2->_databaseStore, WeakRetained);
  }

  objc_sync_exit(v2);

  return WeakRetained;
}

- (id)legacyTransactionDatabaseStore
{
  v2 = self;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&v2->_legacyTransactionDatabaseStore);
  if (!WeakRetained)
  {
    v4 = +[Environment sharedInstance];
    v5 = [v4 userDatabase];
    WeakRetained = [(SQLiteDatabaseStore *)[LegacyTransactionDatabaseStore alloc] initWithDatabase:v5];
    objc_storeWeak(&v2->_legacyTransactionDatabaseStore, WeakRetained);
  }

  objc_sync_exit(v2);

  return WeakRetained;
}

- (void)appTransactionWithDialogContext:(id)a3 ignoreCache:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = self->_appTransactionsCompletionHandlers;
  objc_sync_enter(v10);
  v11 = objc_retainBlock(v9);
  [(NSMutableArray *)v10 addObject:v11];

  v12 = [(ReceiptManager *)self appTransactionReadOperation];

  if (!v12)
  {
    v13 = [AppTransactionReadTask alloc];
    v14 = [(ReceiptManager *)self client];
    v15 = [(ReceiptManager *)self databaseStore];
    v16 = [(ReceiptManager *)self syncQueue];
    v17 = [(AppTransactionReadTask *)v13 initWithClient:v14 ignoreCache:v6 dbStore:v15 syncQueue:v16];

    [(AppTransactionReadTask *)v17 setDialogContext:v8];
    v18 = +[NSUUID lib_shortLogKey];
    [(AppTransactionReadTask *)v17 setLogKey:v18];

    objc_initWeak(&location, v17);
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_10000F7A0;
    v23 = &unk_10037FDA0;
    objc_copyWeak(&v26, &location);
    v24 = v10;
    v25 = self;
    [(AppTransactionReadTask *)v17 setCompletionBlock:&v20];
    [(ReceiptManager *)self setAppTransactionReadOperation:v17, v20, v21, v22, v23];
    v19 = [(ReceiptManager *)self readQueue];
    [v19 addOperation:v17];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v10);
}

- (void)authenticateAndSyncWithDialogContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSUUID lib_shortLogKey];
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v9 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(ReceiptManager *)self client];
    v12 = [v11 requestBundleID];
    *buf = 138543618;
    v20 = v8;
    v21 = 2114;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting authenticate and sync for %{public}@", buf, 0x16u);
  }

  v13 = [(ReceiptManager *)self client];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000FB5C;
  v16[3] = &unk_10037FDF0;
  v17 = v8;
  v18 = v6;
  v16[4] = self;
  v14 = v8;
  v15 = v6;
  [_TtC9storekitd19objc_AccountManager authenticateWithClient:v13 reason:@"StoreKit client initiated for syncing transactions" dialogContext:v7 logKey:v14 completionHandler:v16];
}

- (void)clearTransactions
{
  v5 = [(ReceiptManager *)self databaseStore];
  v3 = [(ReceiptManager *)self client];
  v4 = [v3 requestBundleID];
  [v5 clearTransactionsForBundleID:v4];
}

- (void)enumerateCurrentReceiptsForProductID:(id)a3 skipTransactionSync:(BOOL)a4 usingBlock:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v10 = a3;
  v38 = a5;
  v37 = a6;
  v11 = +[NSUUID lib_shortLogKey];
  if (v10)
  {
    v12 = [NSString stringWithFormat:@" ProductID: %@", v10];
  }

  else
  {
    v12 = &stru_10039AA00;
  }

  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v13 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [(ReceiptManager *)self client];
    v16 = [v15 requestBundleID];
    *buf = 138543874;
    v52 = v11;
    v53 = 2114;
    v54 = v16;
    v55 = 2114;
    v56 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Enumerating current transactions for %{public}@%{public}@", buf, 0x20u);
  }

  if (v8)
  {
    v17 = [(ReceiptManager *)self readQueue];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10000FFE4;
    v45[3] = &unk_10037FE18;
    v18 = &v46;
    v45[4] = self;
    v46 = v10;
    v36 = &v49;
    v19 = &v47;
    v20 = &v48;
    v47 = v12;
    v48 = v11;
    v21 = &v50;
    v22 = v37;
    v23 = v38;
    v49 = v38;
    v50 = v37;
    v24 = v37;
    v25 = v11;
    v26 = v12;
    v27 = v38;
    v28 = v10;
    [v17 addOperationWithBlock:v45];
  }

  else
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100010034;
    v39[3] = &unk_10037FE40;
    v39[4] = self;
    v40 = v10;
    v36 = &v43;
    v19 = &v41;
    v20 = &v42;
    v41 = v12;
    v42 = v11;
    v21 = &v44;
    v23 = v38;
    v29 = self;
    v22 = v37;
    v43 = v38;
    v44 = v37;
    v30 = v37;
    v31 = v11;
    v32 = v12;
    v33 = v38;
    v34 = v10;
    v35 = v29;
    v18 = &v40;
    [(ReceiptManager *)v35 _checkTransactionAgeAndSyncWithLogKey:v31 completionHandler:v39];
  }
}

- (void)readCurrentTransactionsForProductID:(id)a3 usingBlock:(id)a4 productIDLog:(id)a5 logKey:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v14 = [(ReceiptManager *)self databaseStore];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_1000102F8;
  v24 = &unk_10037FE90;
  v15 = v10;
  v25 = v15;
  v26 = self;
  v28 = &v29;
  v16 = v11;
  v27 = v16;
  [v14 readUsingSession:&v21];

  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BF8();
  }

  v17 = qword_1003D3C10;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v30[3];
    v19 = [(ReceiptManager *)self client:v21];
    v20 = [v19 requestBundleID];
    *buf = 138544130;
    v34 = v13;
    v35 = 2048;
    v36 = v18;
    v37 = 2114;
    v38 = v20;
    v39 = 2114;
    v40 = v12;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished enumerating %li current transactions for %{public}@%{public}@", buf, 0x2Au);
  }

  _Block_object_dispose(&v29, 8);
}

- (void)enumerateReceiptsForProductID:(id)a3 skipTransactionSync:(BOOL)a4 usingBlock:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v10 = a3;
  v38 = a5;
  v37 = a6;
  v11 = +[NSUUID lib_shortLogKey];
  if (v10)
  {
    v12 = [NSString stringWithFormat:@" ProductID: %@", v10];
  }

  else
  {
    v12 = &stru_10039AA00;
  }

  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v13 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [(ReceiptManager *)self client];
    v16 = [v15 requestBundleID];
    *buf = 138543874;
    v52 = v11;
    v53 = 2114;
    v54 = v16;
    v55 = 2114;
    v56 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Enumerating transactions for %{public}@%{public}@", buf, 0x20u);
  }

  if (v8)
  {
    v17 = [(ReceiptManager *)self readQueue];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100010710;
    v45[3] = &unk_10037FE18;
    v18 = &v46;
    v45[4] = self;
    v46 = v10;
    v36 = &v49;
    v19 = &v47;
    v20 = &v48;
    v47 = v12;
    v48 = v11;
    v21 = &v50;
    v22 = v37;
    v23 = v38;
    v49 = v38;
    v50 = v37;
    v24 = v37;
    v25 = v11;
    v26 = v12;
    v27 = v38;
    v28 = v10;
    [v17 addOperationWithBlock:v45];
  }

  else
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100010760;
    v39[3] = &unk_10037FE40;
    v39[4] = self;
    v40 = v10;
    v36 = &v43;
    v19 = &v41;
    v20 = &v42;
    v41 = v12;
    v42 = v11;
    v21 = &v44;
    v23 = v38;
    v29 = self;
    v22 = v37;
    v43 = v38;
    v44 = v37;
    v30 = v37;
    v31 = v11;
    v32 = v12;
    v33 = v38;
    v34 = v10;
    v35 = v29;
    v18 = &v40;
    [(ReceiptManager *)v35 _checkTransactionAgeAndSyncWithLogKey:v31 completionHandler:v39];
  }
}

- (void)readAllTransactionsForProductID:(id)a3 usingBlock:(id)a4 productIDLog:(id)a5 logKey:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v14 = [(ReceiptManager *)self databaseStore];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_100010A24;
  v24 = &unk_10037FE90;
  v15 = v10;
  v25 = v15;
  v26 = self;
  v28 = &v29;
  v16 = v11;
  v27 = v16;
  [v14 readUsingSession:&v21];

  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BF8();
  }

  v17 = qword_1003D3C10;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v30[3];
    v19 = [(ReceiptManager *)self client:v21];
    v20 = [v19 requestBundleID];
    *buf = 138544130;
    v34 = v13;
    v35 = 2048;
    v36 = v18;
    v37 = 2114;
    v38 = v20;
    v39 = 2114;
    v40 = v12;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished enumerating %li transactions for %{public}@%{public}@", buf, 0x2Au);
  }

  _Block_object_dispose(&v29, 8);
}

- (void)enumerateUnfinishedTransactionsSkippingTransactionSync:(BOOL)a3 usingBlock:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NSUUID lib_shortLogKey];
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v11 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [(ReceiptManager *)self client];
    v14 = [v13 requestBundleID];
    *buf = 138543618;
    v34 = v10;
    v35 = 2114;
    v36 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Enumerating unfinished transactions for %{public}@", buf, 0x16u);
  }

  if (v6)
  {
    v15 = [(ReceiptManager *)self readQueue];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100010D98;
    v29[3] = &unk_10037FEB8;
    v16 = &v31;
    v17 = &v30;
    v29[4] = self;
    v30 = v10;
    v18 = &v32;
    v31 = v8;
    v32 = v9;
    v19 = v9;
    v20 = v10;
    v21 = v8;
    [v15 addOperationWithBlock:v29];
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
    v27 = v8;
    v28 = v9;
    v22 = v9;
    v23 = v10;
    v24 = v8;
    [(ReceiptManager *)self _checkTransactionAgeAndSyncWithLogKey:v23 completionHandler:v25];
  }
}

- (void)readUnfinishedTransactionsUsingBlock:(id)a3 logKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = [(ReceiptManager *)self databaseStore];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100011058;
  v14[3] = &unk_10037FF08;
  v14[4] = self;
  v16 = &v17;
  v9 = v6;
  v15 = v9;
  [v8 readUsingSession:v14];

  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BF8();
  }

  v10 = qword_1003D3C10;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v18[3];
    v12 = [(ReceiptManager *)self client];
    v13 = [v12 requestBundleID];
    *buf = 138543874;
    v22 = v7;
    v23 = 2048;
    v24 = v11;
    v25 = 2114;
    v26 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished enumerating %li unfinished transactions for %{public}@", buf, 0x20u);
  }

  _Block_object_dispose(&v17, 8);
}

- (void)transactionWithID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10000E4AC;
  v19 = sub_10000E4BC;
  v20 = 0;
  v8 = [(ReceiptManager *)self databaseStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000112B8;
  v11[3] = &unk_10037FF30;
  v14 = &v15;
  v9 = v6;
  v12 = v9;
  v13 = self;
  [v8 readUsingSession:v11];

  v10 = [v16[5] receipt];
  v7[2](v7, v10);

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
    v6 = [(ReceiptManager *)self client];
    v7 = [v6 requestBundleID];
    v10 = 138543874;
    v11 = self;
    v12 = 2114;
    v13 = v3;
    v14 = 2114;
    v15 = v7;
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

- (void)isEligibleForIntroductoryOfferForSubscriptionGroupID:(id)a3 storefrontID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  +[NSUUID lib_shortLogKey];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000115C4;
  v16 = v15[3] = &unk_10037FF58;
  v17 = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v16;
  [(ReceiptManager *)self _checkTransactionAgeAndSyncWithLogKey:v14 completionHandler:v15];
}

- (BOOL)isTransactionFinishedForID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(ReceiptManager *)self databaseStore];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100011DC0;
  v8[3] = &unk_10037FF30;
  v11 = &v12;
  v6 = v4;
  v9 = v6;
  v10 = self;
  [v5 readUsingSession:v8];

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
  v3 = [(ReceiptManager *)self databaseStore];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100011F70;
  v6[3] = &unk_10037FF80;
  v6[4] = self;
  v6[5] = &v7;
  [v3 readUsingSession:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)removeCachedLegacyTransactionWithID:(id)a3
{
  v4 = a3;
  v5 = +[NSUUID lib_shortLogKey];
  v6 = [(ReceiptManager *)self legacyTransactionDatabaseStore];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000120D8;
  v8[3] = &unk_10037FFA8;
  v9 = v4;
  v10 = self;
  v7 = v4;
  [v6 modifyUsingTransaction:v8];
}

- (void)requestUnifiedAppReceiptWithDialogContext:(id)a3 logKey:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v14 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [(ReceiptManager *)self client];
    v17 = [v16 requestBundleID];
    *buf = 138543874;
    v37 = v11;
    v38 = 2114;
    v39 = v17;
    v40 = 2114;
    v41 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting unified receipt for %{public}@ with options: %{public}@", buf, 0x20u);
  }

  v18 = [FetchReceiptTask alloc];
  v19 = [(ReceiptManager *)self client];
  v20 = [(FetchReceiptTask *)v18 initWithClient:v19];

  [(FetchReceiptTask *)v20 setLogKey:v11];
  [(FetchReceiptTask *)v20 setDialogContext:v10];
  v21 = [v12 objectForKeyedSubscript:@"expired"];
  v22 = [v21 BOOLValue];

  if (v22)
  {
    [(FetchReceiptTask *)v20 setReceiptFlags:[(FetchReceiptTask *)v20 receiptFlags]| 1];
  }

  v23 = [v12 objectForKeyedSubscript:@"revoked"];
  v24 = [v23 BOOLValue];

  if (v24)
  {
    [(FetchReceiptTask *)v20 setReceiptFlags:[(FetchReceiptTask *)v20 receiptFlags]| 2];
  }

  v25 = [v12 objectForKeyedSubscript:@"vpp"];
  v26 = [v25 BOOLValue];

  if (v26)
  {
    [(FetchReceiptTask *)v20 setReceiptFlags:[(FetchReceiptTask *)v20 receiptFlags]| 8];
  }

  objc_initWeak(buf, v20);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100012480;
  v30[3] = &unk_10037FFF8;
  objc_copyWeak(&v35, buf);
  v27 = v13;
  v34 = v27;
  v28 = v11;
  v31 = v28;
  v32 = self;
  v29 = v12;
  v33 = v29;
  [(FetchReceiptTask *)v20 setCompletionBlock:v30];
  [(AsyncTask *)v20 start];

  objc_destroyWeak(&v35);
  objc_destroyWeak(buf);
}

- (void)setFinishedForTransactionID:(id)a3
{
  v4 = a3;
  v5 = +[NSUUID lib_shortLogKey];
  v6 = [(ReceiptManager *)self databaseStore];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000128B0;
  v14[3] = &unk_100380020;
  v7 = v4;
  v15 = v7;
  v16 = self;
  v17 = v5;
  v8 = v5;
  [v6 modifyUsingTransaction:v14];

  v9 = [(ReceiptManager *)self legacyTransactionDatabaseStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100012930;
  v11[3] = &unk_10037FFA8;
  v12 = v7;
  v13 = self;
  v10 = v7;
  [v9 modifyUsingTransaction:v11];
}

- (void)subscriptionStatusForSubscriptionGroupID:(id)a3 skipStatusSync:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = +[NSUUID lib_shortLogKey];
  v11 = v10;
  if (v6)
  {
    v12 = [(ReceiptManager *)self readQueue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100012B24;
    v24[3] = &unk_10037FDC8;
    v13 = &v25;
    v24[4] = self;
    v25 = v8;
    v14 = &v26;
    v26 = v9;
    v15 = v9;
    v16 = v8;
    [v12 addOperationWithBlock:v24];
  }

  else
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100012C58;
    v20[3] = &unk_100380070;
    v13 = &v21;
    v20[4] = self;
    v21 = v8;
    v14 = &v22;
    v17 = v10;
    v22 = v17;
    v23 = v9;
    v18 = v9;
    v19 = v8;
    [(ReceiptManager *)self _checkTransactionAgeAndSyncWithLogKey:v17 completionHandler:v20];
    v12 = v23;
  }
}

- (id)readSubscriptionStatusForSubscriptionGroupID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10000E4AC;
  v17 = sub_10000E4BC;
  v18 = 0;
  v5 = [(ReceiptManager *)self databaseStore];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100013218;
  v9[3] = &unk_10037FF30;
  v12 = &v13;
  v6 = v4;
  v10 = v6;
  v11 = self;
  [v5 readUsingSession:v9];

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

- (void)subscriptionStatusForTransactionID:(id)a3 skipStatusSync:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = +[NSUUID lib_shortLogKey];
  v11 = v10;
  if (v6)
  {
    v12 = [(ReceiptManager *)self readQueue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10001343C;
    v24[3] = &unk_10037FDC8;
    v13 = &v25;
    v24[4] = self;
    v25 = v8;
    v14 = &v26;
    v26 = v9;
    v15 = v9;
    v16 = v8;
    [v12 addOperationWithBlock:v24];
  }

  else
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100013570;
    v20[3] = &unk_100380070;
    v13 = &v21;
    v20[4] = self;
    v21 = v8;
    v14 = &v22;
    v17 = v10;
    v22 = v17;
    v23 = v9;
    v18 = v9;
    v19 = v8;
    [(ReceiptManager *)self _checkTransactionAgeAndSyncWithLogKey:v17 completionHandler:v20];
    v12 = v23;
  }
}

- (id)_readSubscriptionStatusForTransactionID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10000E4AC;
  v17 = sub_10000E4BC;
  v18 = 0;
  v5 = [(ReceiptManager *)self databaseStore];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100013B30;
  v9[3] = &unk_10037FF30;
  v12 = &v13;
  v6 = v4;
  v10 = v6;
  v11 = self;
  [v5 readUsingSession:v9];

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

- (void)enumerateSubscriptionStatusSkippingStatusSync:(BOOL)a3 usingBlock:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v10 = +[NSUUID lib_shortLogKey];
  v11 = v10;
  if (v6)
  {
    v12 = [(ReceiptManager *)self readQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100013DA4;
    v20[3] = &unk_100380098;
    v20[4] = self;
    v21 = v8;
    v22[1] = v23;
    v22[0] = v9;
    [v12 addOperationWithBlock:v20];
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
    v17 = v8;
    v19 = v23;
    v18 = v9;
    [(ReceiptManager *)self _checkTransactionAgeAndSyncWithLogKey:v16 completionHandler:v15];
    v13 = &v16;
    v14 = &v17;
    v12 = v18;
  }

  _Block_object_dispose(v23, 8);
}

- (void)readSubscriptionStatusUsingBlock:(id)a3 statusCount:(unint64_t *)a4
{
  v6 = a3;
  *a4 = 0;
  v7 = [(ReceiptManager *)self databaseStore];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100014520;
  v9[3] = &unk_100380138;
  v10 = v6;
  v11 = a4;
  v9[4] = self;
  v8 = v6;
  [v7 readUsingSession:v9];
}

- (void)setTransactionInfo:(id)a3 unfinishedIDs:(id)a4 forRevision:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSUUID lib_shortLogKey];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v12 = [(ReceiptManager *)self databaseStore];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100014760;
  v13[3] = &unk_10037FF80;
  v13[4] = self;
  v13[5] = &v14;
  [v12 readUsingSession:v13];

  [(ReceiptManager *)self _setTransactionInfo:v8 unfinishedIDs:v9 includesFinishedConsumables:*(v15 + 24) forRevision:v10 logKey:v11 containsSubscriptions:0];
  _Block_object_dispose(&v14, 8);
}

- (void)syncReceiptsWithReason:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = +[NSUUID lib_shortLogKey];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000148B4;
  v9[3] = &unk_10037FFD0;
  v10 = v6;
  v8 = v6;
  [(ReceiptManager *)self _syncTransactionsAndSubscriptionStatusWithReason:a3 logKey:v7 completionHandler:v9];
}

- (void)syncSubscriptionStatusWithReason:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = +[NSUUID lib_shortLogKey];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100014A60;
  v9[3] = &unk_10037FFD0;
  v10 = v6;
  v8 = v6;
  [(ReceiptManager *)self _syncSubscriptionStatusWithReason:a3 logKey:v7 completionHandler:v9];
}

- (void)_checkTransactionAgeAndSyncWithLogKey:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_validateCompletionHandlers;
  v9 = [(ReceiptManager *)self _includeFinishedConsumables];
  v10 = [ValidateCacheTask alloc];
  v11 = [(ReceiptManager *)self client];
  v12 = [(ReceiptManager *)self databaseStore];
  v13 = [(ValidateCacheTask *)v10 initWithClient:v11 includeFinishedConsumables:v9 dbStore:v12];

  objc_initWeak(&location, v13);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100014D54;
  v20[3] = &unk_1003801B0;
  objc_copyWeak(&v24, &location);
  v14 = v8;
  v21 = v14;
  v22 = self;
  v15 = v6;
  v23 = v15;
  [(ValidateCacheTask *)v13 setCompletionBlock:v20];
  v16 = v14;
  objc_sync_enter(v16);
  v17 = objc_retainBlock(v7);
  [(NSMutableArray *)v16 addObject:v17];

  v18 = [(ReceiptManager *)self validateTask];

  if (!v18)
  {
    [(ReceiptManager *)self setValidateTask:v13];
    v19 = [(ReceiptManager *)self syncQueue];
    [v19 addOperation:v13];
  }

  objc_sync_exit(v16);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (BOOL)_clearCachedLegacyTransactionsWithLogKey:(id)a3
{
  v4 = a3;
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
    v6 = [(ReceiptManager *)self client];
    v7 = [v6 requestBundleID];
    *buf = 138543874;
    v20 = self;
    v21 = 2114;
    v22 = v4;
    v23 = 2114;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@] Clearing cached legacy transactions for %{public}@", buf, 0x20u);
  }

  v8 = [(ReceiptManager *)self legacyTransactionDatabaseStore];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000152E8;
  v14[3] = &unk_1003801D8;
  v14[4] = self;
  v14[5] = &v15;
  [v8 modifyUsingTransaction:v14];

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
      v12 = [(ReceiptManager *)self client];
      v13 = [v12 requestBundleID];
      *buf = 138543874;
      v20 = self;
      v21 = 2114;
      v22 = v4;
      v23 = 2114;
      v24 = v13;
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
    v8 = [(ReceiptManager *)self client];
    v9 = [v8 callerBundleID];
    v10 = [(ReceiptManager *)self client];
    v11 = [v10 requestBundleID];
    if ([v9 isEqualToString:v11])
    {
    }

    else
    {
      v12 = [(ReceiptManager *)self client];
      v13 = [v12 callerBundleID];
      v14 = [v13 hasSuffix:@".watchkitapp"];

      if ((v14 & 1) == 0)
      {
        v22 = 0;
        v23 = &v22;
        v24 = 0x2020000000;
        v25 = 0;
        v20 = [(ReceiptManager *)self databaseStore];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100015600;
        v21[3] = &unk_10037FF80;
        v21[4] = self;
        v21[5] = &v22;
        [v20 readUsingSession:v21];

        v7 = *(v23 + 24);
        _Block_object_dispose(&v22, 8);
        return v7 & 1;
      }
    }

    v15 = [(ReceiptManager *)self client];
    v16 = [v15 callerBundleURL];
    v17 = [NSBundle bundleWithURL:v16];

    v18 = [v17 infoDictionary];
    LOBYTE(v16) = [v18 tcr_BOOLForKey:@"SKIncludeConsumableInAppPurchaseHistory"];

    return v16;
  }

  v3 = CFPreferencesCopyAppValue(@"SKIncludeConsumableInAppPurchaseHistory", +[_TtC9storekitd18AppDefaultsManager kSKUserDefaultsIdentifier]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_6;
  }

  v4 = [(ReceiptManager *)self client];
  v5 = [v4 callerBundleID];
  v6 = [v3 containsObject:v5];

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = 1;
  return v7 & 1;
}

- (void)_manualSyncWithLogKey:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = [(ReceiptManager *)self databaseStore];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000158CC;
  v15[3] = &unk_100380200;
  v15[4] = self;
  v15[5] = v18;
  v15[6] = v20;
  v15[7] = v16;
  [v8 readUsingSession:v15];

  [(ReceiptManager *)self clearTransactions];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000159BC;
  v10[3] = &unk_100380250;
  v10[4] = self;
  v12 = v20;
  v13 = v18;
  v14 = v16;
  v9 = v7;
  v11 = v9;
  [(ReceiptManager *)self _syncTransactionsAndSubscriptionStatusWithReason:4 logKey:v6 completionHandler:v10];

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);

  _Block_object_dispose(v20, 8);
}

- (id)_configureMetricsEventWithBeforeTransactionCount:(unint64_t)a3 beforeTransactions:(id)a4 beforeStatuses:(id)a5
{
  v8 = a4;
  v9 = a5;
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
  v10 = [(ReceiptManager *)self databaseStore];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100015D00;
  v14[3] = &unk_100380200;
  v14[4] = self;
  v14[5] = &v21;
  v14[6] = &v27;
  v14[7] = &v15;
  [v10 readUsingSession:v14];

  [v22[5] minusSet:v8];
  [v16[5] minusSet:v9];
  v11 = objc_opt_new();
  [v11 setTransactionsCountDifference:v28[3] - a3];
  [v11 setModifiedOrAddedTransactionsCount:{objc_msgSend(v22[5], "count")}];
  [v11 setModifiedOrAddedStatusesCount:{objc_msgSend(v16[5], "count")}];
  v12 = [(ReceiptManager *)self client];
  [v11 configureWithClient:v12];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v11;
}

- (BOOL)_resetLastUpdatedForLegacyTransactionsWithLogKey:(id)a3
{
  v4 = a3;
  if (qword_1003D3C30 != -1)
  {
    sub_1002C7BE4();
  }

  v5 = qword_1003D3C10;
  if (os_log_type_enabled(qword_1003D3C10, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(ReceiptManager *)self client];
    v8 = [v7 requestBundleID];
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    *&buf[22] = 2114;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@] Invalidating pending transactions cache for %{public}@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v23) = 1;
  v9 = [(ReceiptManager *)self legacyTransactionDatabaseStore];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000160A0;
  v15[3] = &unk_1003801D8;
  v15[4] = self;
  v15[5] = buf;
  [v9 modifyUsingTransaction:v15];

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
      v13 = [(ReceiptManager *)self client];
      v14 = [v13 requestBundleID];
      *v16 = 138543874;
      v17 = self;
      v18 = 2114;
      v19 = v4;
      v20 = 2114;
      v21 = v14;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{public}@][%{public}@] Failed to invalidate cached transactions for %{public}@", v16, 0x20u);
    }

    v10 = *(*&buf[8] + 24);
  }

  _Block_object_dispose(buf, 8);

  return v10 & 1;
}

- (BOOL)_setTransactionInfo:(id)a3 unfinishedIDs:(id)a4 includesFinishedConsumables:(BOOL)a5 forRevision:(id)a6 logKey:(id)a7 containsSubscriptions:(BOOL *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 1;
  v18 = [(ReceiptManager *)self databaseStore];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000162C4;
  v25[3] = &unk_100380278;
  v31 = &v34;
  v19 = v14;
  v26 = v19;
  v20 = v15;
  v27 = v20;
  v28 = self;
  v21 = v17;
  v29 = v21;
  v32 = a8;
  v22 = v16;
  v30 = v22;
  v33 = a5;
  [v18 modifyUsingTransaction:v25];

  v23 = *(v35 + 24);
  _Block_object_dispose(&v34, 8);

  return v23;
}

- (void)_setUnfinishedForTransactionIDs:(id)a3 logKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ReceiptManager *)self databaseStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100016754;
  v11[3] = &unk_100380020;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [v8 modifyUsingTransaction:v11];
}

- (BOOL)_needsSubscriptionStatusSyncForStatusDictionary:(id)a3 logKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"lastUpdated"];
  v9 = [(ReceiptManager *)self client];
  v10 = [v9 bag];

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
    v17 = [v6 objectForKeyedSubscript:@"subscriptionGroupIdentifier"];
    *buf = 138543874;
    v25 = v7;
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
    v20 = [v6 objectForKeyedSubscript:@"subscriptionGroupIdentifier"];
    *buf = 138543618;
    v25 = v7;
    v26 = 2114;
    v27 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Forcing subscription status sync for %{public}@ because lastUpdated is older than maxAge", buf, 0x16u);
  }

  v21 = 1;
LABEL_14:

  return v21;
}

- (void)_syncSubscriptionStatusWithReason:(int64_t)a3 logKey:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3 != 2)
  {
    goto LABEL_5;
  }

  v10 = [(ReceiptManager *)self client];
  v11 = [v10 objc_clientType];

  if (v11 == 3)
  {
    goto LABEL_5;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v44 = sub_10000E4AC;
  v45 = sub_10000E4BC;
  v46 = 0;
  v12 = [(ReceiptManager *)self databaseStore];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100016F7C;
  v38[3] = &unk_10037FF80;
  v38[4] = self;
  v38[5] = buf;
  [v12 readUsingSession:v38];

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
      v15 = [(ReceiptManager *)self client];
      v16 = [v15 requestBundleID];
      *buf = 138543874;
      *&buf[4] = v8;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      *&buf[22] = 2048;
      v44 = a3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting subscription status sync for %{public}@ reason %ld", buf, 0x20u);
    }

    v17 = [LoadSubscriptionStatusTask alloc];
    v18 = [(ReceiptManager *)self client];
    v19 = [(LoadSubscriptionStatusTask *)v17 initWithSubscriptionGroupID:0 reason:a3 client:v18];

    [(LoadSubscriptionStatusTask *)v19 setLogKey:v8];
    objc_initWeak(buf, v19);
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_10001702C;
    v32 = &unk_10037FDA0;
    objc_copyWeak(&v35, buf);
    v33 = v8;
    v34 = self;
    [(LoadSubscriptionStatusTask *)v19 setCompletionBlock:&v29];
    v20 = self->_statusSyncCompletionHandlers;
    objc_sync_enter(v20);
    statusSyncCompletionHandlers = self->_statusSyncCompletionHandlers;
    v22 = objc_retainBlock(v9);
    [(NSMutableArray *)statusSyncCompletionHandlers addObject:v22, v29, v30, v31, v32];

    v23 = [(ReceiptManager *)self subscriptionStatusSyncOperation];
    LODWORD(v22) = v23 == 0;

    if (v22)
    {
      [(ReceiptManager *)self setSubscriptionStatusSyncOperation:v19];
      v24 = [(ReceiptManager *)self syncQueue];
      [v24 addOperation:v19];
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
    v26 = [(ReceiptManager *)self client];
    v27 = [v26 requestBundleID];
    *v39 = 138543618;
    v40 = v8;
    v41 = 2114;
    v42 = v27;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring subscription status sync from push notification for %{public}@ since the app has not queried status", v39, 0x16u);
  }

  v28 = [(ReceiptManager *)self readQueue];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100017018;
  v36[3] = &unk_10037F820;
  v37 = v9;
  [v28 addOperationWithBlock:v36];

  _Block_object_dispose(buf, 8);
LABEL_12:
}

- (void)_syncTransactionsAndSubscriptionStatusWithReason:(int64_t)a3 logKey:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_10000E4AC;
  v47 = sub_10000E4BC;
  v48 = 0;
  v10 = [(ReceiptManager *)self databaseStore];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100017D84;
  v42[3] = &unk_10037FF80;
  v42[4] = self;
  v42[5] = &v43;
  [v10 readUsingSession:v42];

  if (a3 != 2 || v44[5] || (-[ReceiptManager client](self, "client"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 objc_clientType] == 3, v11, v12))
  {
    v13 = [(ReceiptManager *)self _includeFinishedConsumables];
    if (qword_1003D3C30 != -1)
    {
      sub_1002C7BF8();
    }

    v14 = qword_1003D3C10;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v44[5];
      v16 = [(ReceiptManager *)self client];
      v17 = [v16 requestBundleID];
      *buf = 138544130;
      v50 = v8;
      v51 = 2048;
      v52 = a3;
      v53 = 2114;
      v54 = v15;
      v55 = 2114;
      v56 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting receipt sync with reason %ld from revision %{public}@ for %{public}@", buf, 0x2Au);
    }

    v18 = [LoadInAppReceiptsTask alloc];
    v19 = v44[5];
    v20 = [(ReceiptManager *)self client];
    v21 = [(LoadInAppReceiptsTask *)v18 initWithLocalRevision:v19 reason:a3 includeFinishedConsumables:v13 client:v20];

    [(LoadInAppReceiptsTask *)v21 setLogKey:v8];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100017E20;
    v38[3] = &unk_1003802C8;
    v38[4] = self;
    v41 = v13;
    v22 = v8;
    v39 = v22;
    v40 = a3;
    [(LoadInAppReceiptsTask *)v21 setReceiverBlock:v38];
    objc_initWeak(buf, v21);
    v31 = _NSConcreteStackBlock;
    v32 = 3221225472;
    v33 = sub_100017FD4;
    v34 = &unk_100380318;
    objc_copyWeak(v37, buf);
    v35 = v22;
    v36 = self;
    v37[1] = a3;
    [(LoadInAppReceiptsTask *)v21 setCompletionBlock:&v31];
    v23 = self->_transactionSyncCompletionHandlers;
    objc_sync_enter(v23);
    transactionSyncCompletionHandlers = self->_transactionSyncCompletionHandlers;
    v25 = objc_retainBlock(v9);
    [(NSMutableArray *)transactionSyncCompletionHandlers addObject:v25, v31, v32, v33, v34];

    v26 = [(ReceiptManager *)self transactionSyncOperation];
    LODWORD(v25) = v26 == 0;

    if (v25)
    {
      [(ReceiptManager *)self setTransactionSyncOperation:v21];
      v27 = [(ReceiptManager *)self syncQueue];
      [v27 addOperation:v21];
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
      v29 = [(ReceiptManager *)self client];
      v30 = [v29 requestBundleID];
      *buf = 138543618;
      v50 = v8;
      v51 = 2114;
      v52 = v30;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring transaction sync from push notification for %{public}@ since the app has not queried history", buf, 0x16u);
    }

    (*(v9 + 2))(v9, 0);
  }

  _Block_object_dispose(&v43, 8);
}

- (void)_clearOfferEligibilityCacheForSubscriptionGroupID:(id)a3 client:(id)a4 logKey:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = a4;
  v14 = self;
  sub_100149D08(v7, v9, v13, v10, v12);
}

@end