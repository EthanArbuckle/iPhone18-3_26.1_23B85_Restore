@interface LoadUnfinishedInAppTransactionsTask
+ (BOOL)_invalidateLegacyTransactionCacheInDataStore:(id)a3 bundleID:(id)a4 logKey:(id)a5;
+ (BOOL)invalidateCacheForBundleID:(id)a3 withLogKey:(id)a4;
+ (id)_newDataStore;
- (BOOL)_cacheLegacyTransactions:(id)a3 inDataStore:(id)a4;
- (BOOL)_ignoreHasEverHadIAPsWithBag:(id)a3;
- (BOOL)_invalidateLegacyTransactionCacheInDataStore:(id)a3;
- (BOOL)_shouldCheckServerQueueWithDataStore:(id)a3 bag:(id)a4;
- (LoadUnfinishedInAppTransactionsTask)initWithClient:(id)a3;
- (id)_cachedLegacyTransactionsFromDataStore:(id)a3 error:(id *)a4;
- (id)_checkServerQueueAndCacheTransactionsWithDataStore:(id)a3 bag:(id)a4 error:(id *)a5;
- (id)_pendingTransactionsResponseWithParameters:(id)a3 requestEncoder:(id)a4 bag:(id)a5 error:(id *)a6;
- (id)_transactionsFromQueueCheckWithBag:(id)a3 error:(id *)a4;
- (int64_t)_pendingTransactionsCountWithParameters:(id)a3 requestEncoder:(id)a4 bag:(id)a5 error:(id *)a6;
- (void)_fromDataStore:(id)a3 getCachedAccountToken:(id *)a4 lastUpdated:(id *)a5;
- (void)main;
@end

@implementation LoadUnfinishedInAppTransactionsTask

- (LoadUnfinishedInAppTransactionsTask)initWithClient:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = LoadUnfinishedInAppTransactionsTask;
  v6 = [(Task *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 50), a3);
    v8 = +[NSUUID lib_shortLogKey];
    v9 = *(v7 + 58);
    *(v7 + 58) = v8;

    v7[42] = 0;
  }

  return v7;
}

- (void)main
{
  v3 = +[LoadUnfinishedInAppTransactionsTask _newDataStore];
  v4 = [(LoadUnfinishedInAppTransactionsTask *)self client];
  v5 = [v4 bag];

  v6 = [(LoadUnfinishedInAppTransactionsTask *)self client];
  v7 = [v6 currentAccountToken];
  if (v7)
  {
  }

  else
  {
    v8 = [(LoadUnfinishedInAppTransactionsTask *)self client];
    v9 = [v8 objc_clientType];

    if (v9 != 3)
    {
      if (qword_1003D4380 != -1)
      {
        sub_1002CDBE0();
      }

      v24 = qword_1003D4360;
      if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
        v26 = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
        *buf = 138543618;
        v38 = self;
        v39 = 2114;
        v40 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Ignoring pending transaction queue check because there is no account", buf, 0x16u);
      }

      v27 = *(&self->_receiptInstallURL + 2);
      *(&self->_receiptInstallURL + 2) = &__NSArray0__struct;

      goto LABEL_38;
    }
  }

  if ([(LoadUnfinishedInAppTransactionsTask *)self _shouldCheckServerQueueWithDataStore:v3 bag:v5])
  {
    v36 = 0;
    v10 = [(LoadUnfinishedInAppTransactionsTask *)self _checkServerQueueAndCacheTransactionsWithDataStore:v3 bag:v5 error:&v36];
    v11 = v36;
    v12 = *(&self->_receiptInstallURL + 2);
    *(&self->_receiptInstallURL + 2) = v10;

    if (v11)
    {
      v35 = 0;
      [(LoadUnfinishedInAppTransactionsTask *)self _fromDataStore:v3 getCachedAccountToken:&v35 lastUpdated:0];
      v13 = v35;
      if (v13 && (-[LoadUnfinishedInAppTransactionsTask client](self, "client"), v14 = objc_claimAutoreleasedReturnValue(), [v14 currentAccountToken], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v13, "isEqualToString:", v15), v15, v14, v16))
      {
        if (qword_1003D4380 != -1)
        {
          sub_1002CDBF4();
        }

        if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_ERROR))
        {
          sub_1002CDCBC();
        }

        v34 = v11;
        v17 = [(LoadUnfinishedInAppTransactionsTask *)self _cachedLegacyTransactionsFromDataStore:v3 error:&v34];
        v18 = v34;

        v19 = *(&self->_receiptInstallURL + 2);
        *(&self->_receiptInstallURL + 2) = v17;

        v11 = v18;
      }

      else
      {
        if (qword_1003D4380 != -1)
        {
          sub_1002CDBF4();
        }

        if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_ERROR))
        {
          sub_1002CDD5C();
        }
      }

      goto LABEL_28;
    }

LABEL_34:
    if (qword_1003D4380 != -1)
    {
      sub_1002CDBF4();
    }

    v28 = qword_1003D4360;
    if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      v30 = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
      v31 = [*(&self->_receiptInstallURL + 2) count];
      *buf = 138543874;
      v38 = self;
      v39 = 2114;
      v40 = v30;
      v41 = 2048;
      v42 = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Finished loading %lu pending transactions", buf, 0x20u);
    }

LABEL_38:
    [(AsyncTask *)self completeWithSuccess];
    goto LABEL_39;
  }

  v33 = 0;
  v20 = [(LoadUnfinishedInAppTransactionsTask *)self _cachedLegacyTransactionsFromDataStore:v3 error:&v33];
  v21 = v33;
  v22 = *(&self->_receiptInstallURL + 2);
  *(&self->_receiptInstallURL + 2) = v20;

  if (!v21)
  {
    goto LABEL_34;
  }

  if (qword_1003D4380 != -1)
  {
    sub_1002CDBF4();
  }

  if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_ERROR))
  {
    sub_1002CDC1C();
  }

  v32 = v21;
  v23 = [(LoadUnfinishedInAppTransactionsTask *)self _checkServerQueueAndCacheTransactionsWithDataStore:v3 bag:v5 error:&v32];
  v11 = v32;

  v13 = *(&self->_receiptInstallURL + 2);
  *(&self->_receiptInstallURL + 2) = v23;
LABEL_28:

  if (!v11)
  {
    goto LABEL_34;
  }

  if (qword_1003D4380 != -1)
  {
    sub_1002CDBF4();
  }

  if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_ERROR))
  {
    sub_1002CDDFC();
  }

  [(AsyncTask *)self completeWithError:v11];

LABEL_39:
}

+ (BOOL)invalidateCacheForBundleID:(id)a3 withLogKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _newDataStore];
  LOBYTE(a1) = [a1 _invalidateLegacyTransactionCacheInDataStore:v8 bundleID:v7 logKey:v6];

  return a1;
}

+ (id)_newDataStore
{
  v2 = [LegacyTransactionDatabaseStore alloc];
  v3 = +[Environment sharedInstance];
  v4 = [v3 userDatabase];
  v5 = [(SQLiteDatabaseStore *)v2 initWithDatabase:v4];

  return v5;
}

- (BOOL)_shouldCheckServerQueueWithDataStore:(id)a3 bag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(LoadUnfinishedInAppTransactionsTask *)self client];
  v9 = [v8 objc_clientType];

  if (v9 == 3)
  {
    if (qword_1003D4380 != -1)
    {
      sub_1002CDBE0();
    }

    v10 = qword_1003D4360;
    if (!os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v11 = v10;
    v12 = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
    *buf = 138543618;
    v42 = self;
    v43 = 2114;
    v44 = v12;
    v13 = "[%{public}@][%{public}@]: Checking pending transaction queue for Xcode test environment";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);

LABEL_12:
    v15 = 1;
    goto LABEL_13;
  }

  if ([(LoadUnfinishedInAppTransactionsTask *)self forceServerCheck])
  {
    if (qword_1003D4380 != -1)
    {
      sub_1002CDBE0();
    }

    v14 = qword_1003D4360;
    if (!os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v11 = v14;
    v12 = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
    *buf = 138543618;
    v42 = self;
    v43 = 2114;
    v44 = v12;
    v13 = "[%{public}@][%{public}@]: Forcing pending transaction queue check";
    goto LABEL_11;
  }

  v17 = [(LoadUnfinishedInAppTransactionsTask *)self client];
  if ([v17 hasEverHadIAPs])
  {
  }

  else
  {
    v18 = [(LoadUnfinishedInAppTransactionsTask *)self _ignoreHasEverHadIAPsWithBag:v7];

    if ((v18 & 1) == 0)
    {
      v15 = 0;
      goto LABEL_13;
    }
  }

  v39 = 0;
  v40 = 0;
  [(LoadUnfinishedInAppTransactionsTask *)self _fromDataStore:v6 getCachedAccountToken:&v40 lastUpdated:&v39];
  v19 = v40;
  v20 = v39;
  if (v19 && (-[LoadUnfinishedInAppTransactionsTask client](self, "client"), v21 = objc_claimAutoreleasedReturnValue(), [v21 currentAccountToken], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", v19), v22, v21, (v23 & 1) != 0))
  {
    v24 = +[_TtC9storekitd6BagKey transactionReceiptsMaxAge];
    v25 = [v7 integerForKey:v24];

    v38 = 0;
    v26 = [v25 valueWithError:&v38];
    v27 = v38;
    if (v27)
    {
      if (qword_1003D4380 != -1)
      {
        sub_1002CDBF4();
      }

      if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_ERROR))
      {
        sub_1002CDE9C();
      }

      v15 = 0;
    }

    else
    {
      v31 = v20;
      if (!v20)
      {
        v31 = +[NSDate distantPast];
      }

      [v26 doubleValue];
      v32 = [v31 dateByAddingTimeInterval:?];
      if (!v20)
      {
      }

      v33 = +[NSDate now];
      v34 = [v33 compare:v32];

      if (v34 == 1)
      {
        v35 = sub_10004D9D0();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
          *buf = 138543618;
          v42 = self;
          v43 = 2114;
          v44 = v36;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Checking pending transaction queue because lastUpdated is older than maxAge", buf, 0x16u);
        }

        v15 = 1;
      }

      else
      {

        v15 = 0;
      }

      v26 = v37;
    }
  }

  else
  {
    if (qword_1003D4380 != -1)
    {
      sub_1002CDBF4();
    }

    v28 = qword_1003D4360;
    if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      v30 = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
      *buf = 138543618;
      v42 = self;
      v43 = 2114;
      v44 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Checking pending transaction queue because the tokens don't match", buf, 0x16u);
    }

    v15 = 1;
  }

LABEL_13:
  return v15;
}

- (BOOL)_ignoreHasEverHadIAPsWithBag:(id)a3
{
  v4 = a3;
  v5 = [(LoadUnfinishedInAppTransactionsTask *)self client];
  v6 = [v5 hasEverHadIAPs];

  if ((v6 & 1) == 0)
  {
    v8 = +[_TtC9storekitd6BagKey ignoreIAPQueueCheckSuppression];
    v9 = [v4 BOOLForKey:v8];

    v18 = 0;
    v10 = [v9 valueWithError:&v18];
    v11 = v18;
    v7 = [v10 BOOLValue];

    if (v11)
    {
      if (qword_1003D4380 != -1)
      {
        sub_1002CDBF4();
      }

      if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_ERROR))
      {
        sub_1002CDF3C();
      }
    }

    else
    {
      if (v7)
      {
        if (qword_1003D4380 != -1)
        {
          sub_1002CDBF4();
        }

        v12 = qword_1003D4360;
        if (!os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v13 = v12;
        v14 = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
        *buf = 138543618;
        v20 = self;
        v21 = 2114;
        v22 = v14;
        v15 = "[%{public}@][%{public}@]: Allowing pending transaction queue check for client with no history of IAPs";
      }

      else
      {
        if (qword_1003D4380 != -1)
        {
          sub_1002CDBF4();
        }

        v16 = qword_1003D4360;
        if (!os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v13 = v16;
        v14 = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
        *buf = 138543618;
        v20 = self;
        v21 = 2114;
        v22 = v14;
        v15 = "[%{public}@][%{public}@]: Ignoring pending transaction queue check for client with no history of IAPs";
      }

      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v15, buf, 0x16u);
    }

LABEL_18:

    goto LABEL_19;
  }

  LOBYTE(v7) = 0;
LABEL_19:

  return v7;
}

- (id)_checkServerQueueAndCacheTransactionsWithDataStore:(id)a3 bag:(id)a4 error:(id *)a5
{
  v19 = 0;
  v8 = a3;
  v9 = [(LoadUnfinishedInAppTransactionsTask *)self _transactionsFromQueueCheckWithBag:a4 error:&v19];
  v10 = v19;
  v11 = v10;
  if (v10)
  {
    if (a5)
    {
      v12 = v10;
      *a5 = v11;
    }

    if (qword_1003D4380 != -1)
    {
      sub_1002CDBF4();
    }

    if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_ERROR))
    {
      sub_1002CDFDC();
    }

    [(LoadUnfinishedInAppTransactionsTask *)self _invalidateLegacyTransactionCacheInDataStore:v8];

    v13 = 0;
  }

  else
  {
    if (qword_1003D4380 != -1)
    {
      sub_1002CDBF4();
    }

    v14 = qword_1003D4360;
    if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
      v17 = [v9 count];
      *buf = 138543874;
      v21 = self;
      v22 = 2114;
      v23 = v16;
      v24 = 2048;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Found %lu pending transactions in the queue", buf, 0x20u);
    }

    [(LoadUnfinishedInAppTransactionsTask *)self _cacheLegacyTransactions:v9 inDataStore:v8];

    v13 = v9;
  }

  return v13;
}

- (id)_transactionsFromQueueCheckWithBag:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (qword_1003D4380 != -1)
  {
    sub_1002CDBE0();
  }

  v7 = qword_1003D4360;
  if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
    *buf = 138543362;
    v51 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting server purchase queue check", buf, 0xCu);
  }

  v10 = [(LoadUnfinishedInAppTransactionsTask *)self client];
  v11 = [v10 urlRequestEncoder];

  v12 = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
  [v11 setLogUUID:v12];

  v13 = [(LoadUnfinishedInAppTransactionsTask *)self client];
  v14 = [(LoadUnfinishedInAppTransactionsTask *)self receiptInstallURL];
  [v13 queryWith:1 customReceiptURL:v14];
  v15 = v47 = self;
  v16 = [v15 mutableCopy];

  v17 = self;
  v49 = 0;
  v18 = [(LoadUnfinishedInAppTransactionsTask *)self _pendingTransactionsCountWithParameters:v16 requestEncoder:v11 bag:v6 error:&v49];
  v19 = v49;
  if (v19)
  {
    v20 = v19;
    if (a4)
    {
      v21 = v19;
      v22 = 0;
      *a4 = v20;
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_37;
  }

  v46 = [NSMutableArray arrayWithCapacity:v18];
  if ((v18 - 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    goto LABEL_29;
  }

  v45 = a4;
  v23 = +[NSMutableArray array];
  v44 = v16;
  v24 = [v16 mutableCopy];
  v25 = 0;
  while (1)
  {
    if (![v23 count])
    {
      [v24 setObject:0 forKeyedSubscript:@"startId"];
      [v24 setObject:0 forKeyedSubscript:@"endId"];
      goto LABEL_14;
    }

    v26 = [v23 objectAtIndexedSubscript:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    [v24 addEntriesFromDictionary:v26];
    [v23 removeObjectAtIndex:0];

LABEL_14:
    v48 = v25;
    v27 = [(LoadUnfinishedInAppTransactionsTask *)v17 _pendingTransactionsResponseWithParameters:v24 requestEncoder:v11 bag:v6 error:&v48];
    v20 = v48;

    if (v27)
    {
      v28 = v11;
      v29 = v6;
      v30 = [(LoadUnfinishedInAppTransactionsTask *)v17 client];
      v31 = [(LoadUnfinishedInAppTransactionsTask *)v17 receiptInstallURL];
      v32 = v17;
      v33 = v31;
      v34 = [(LoadUnfinishedInAppTransactionsTask *)v32 logKey];
      v35 = sub_100027E30(v27, v30, v33, 1, v34, 0, 0);

      [v46 addObjectsFromArray:v35];
      v36 = [v27 tcr_arrayForKey:@"more"];
      if ([v36 count])
      {
        [v23 addObjectsFromArray:v36];
      }

      v6 = v29;
      v11 = v28;
      v17 = v47;
    }

    v25 = v20;
    if (![v23 count])
    {
      goto LABEL_26;
    }
  }

  if (qword_1003D4380 != -1)
  {
    sub_1002CDBF4();
  }

  if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_ERROR))
  {
    sub_1002CE07C();
  }

  v20 = v25;
LABEL_26:

  v16 = v44;
  if (v20)
  {
    if (v45)
    {
      v37 = v20;
      v22 = 0;
      *v45 = v20;
    }

    else
    {
      v22 = 0;
    }

    v38 = v46;
    goto LABEL_36;
  }

LABEL_29:
  if (qword_1003D4380 != -1)
  {
    sub_1002CDBF4();
  }

  v38 = v46;
  v39 = qword_1003D4360;
  if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_DEFAULT))
  {
    v40 = v39;
    v41 = [(LoadUnfinishedInAppTransactionsTask *)v17 logKey];
    v42 = [v46 count];
    *buf = 138543618;
    v51 = v41;
    v52 = 2048;
    v53 = v42;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[%{public}@] Found %lu transactions in pending queue", buf, 0x16u);
  }

  v22 = [v46 copy];
  v20 = 0;
LABEL_36:

LABEL_37:

  return v22;
}

- (int64_t)_pendingTransactionsCountWithParameters:(id)a3 requestEncoder:(id)a4 bag:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[_TtC9storekitd6BagKey pendingTransactionsCountURL];
  v14 = [v10 URLForKey:v13];

  v15 = [v11 requestWithMethod:4 bagURL:v14 parameters:v12];

  v31 = 0;
  v16 = [v15 resultWithError:&v31];
  v17 = v31;
  if (v17)
  {
    v18 = v17;
    if (a6)
    {
      v19 = v17;
      *a6 = v18;
    }

    if (qword_1003D4380 != -1)
    {
      sub_1002CDBF4();
    }

    if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_ERROR))
    {
      sub_1002CE11C();
    }

    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = [(LoadUnfinishedInAppTransactionsTask *)self client];
    v22 = [v21 urlSession];

    v23 = [v22 dataTaskPromiseWithRequest:v16];
    v30 = 0;
    v24 = [v23 resultWithError:&v30];
    v25 = v30;
    v18 = v25;
    if (v25)
    {
      if (a6)
      {
        v26 = v25;
        *a6 = v18;
      }

      if (qword_1003D4380 != -1)
      {
        sub_1002CDBF4();
      }

      if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_ERROR))
      {
        sub_1002CE1BC();
      }

      v20 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v27 = [v24 object];
      v28 = [v27 objectForKeyedSubscript:@"download-queue-item-count"];
      v20 = [v28 integerValue];
    }
  }

  return v20;
}

- (id)_pendingTransactionsResponseWithParameters:(id)a3 requestEncoder:(id)a4 bag:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[_TtC9storekitd6BagKey pendingTransactionsURL];
  v14 = [v10 URLForKey:v13];

  v15 = [v11 requestWithMethod:4 bagURL:v14 parameters:v12];

  v29 = 0;
  v16 = [v15 resultWithError:&v29];
  v17 = v29;
  if (v17)
  {
    v18 = v17;
    if (a6)
    {
      v19 = v17;
      *a6 = v18;
    }

    if (qword_1003D4380 != -1)
    {
      sub_1002CDBF4();
    }

    if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_ERROR))
    {
      sub_1002CE25C();
    }

    v20 = 0;
  }

  else
  {
    v21 = [(LoadUnfinishedInAppTransactionsTask *)self client];
    v22 = [v21 urlSession];

    v23 = [v22 dataTaskPromiseWithRequest:v16];
    v28 = 0;
    v24 = [v23 resultWithError:&v28];
    v25 = v28;
    v18 = v25;
    if (v25)
    {
      if (a6)
      {
        v26 = v25;
        *a6 = v18;
      }

      if (qword_1003D4380 != -1)
      {
        sub_1002CDBF4();
      }

      if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_ERROR))
      {
        sub_1002CE2FC();
      }

      v20 = 0;
    }

    else
    {
      v20 = [v24 object];
    }
  }

  return v20;
}

- (void)_fromDataStore:(id)a3 getCachedAccountToken:(id *)a4 lastUpdated:(id *)a5
{
  v8 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10004EEFC;
  v20 = sub_10004EF0C;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10004EEFC;
  v14 = sub_10004EF0C;
  v15 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004EF14;
  v9[3] = &unk_100382098;
  v9[4] = self;
  v9[5] = &v16;
  v9[6] = &v10;
  [v8 readUsingSession:v9];
  if (a4)
  {
    *a4 = v17[5];
  }

  if (a5)
  {
    *a5 = v11[5];
  }

  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
}

- (id)_cachedLegacyTransactionsFromDataStore:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (qword_1003D4380 != -1)
  {
    sub_1002CDBE0();
  }

  v7 = qword_1003D4360;
  if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Checking pending transactions cache", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = sub_10004EEFC;
  v30 = sub_10004EF0C;
  v31 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10004EEFC;
  v20 = sub_10004EF0C;
  v21 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004F2FC;
  v15[3] = &unk_100382098;
  v15[4] = self;
  v15[5] = buf;
  v15[6] = &v16;
  [v6 readUsingSession:v15];
  if (a4)
  {
    *a4 = v17[5];
  }

  if (qword_1003D4380 != -1)
  {
    sub_1002CDBF4();
  }

  v10 = qword_1003D4360;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
    v12 = [*(*&buf[8] + 40) count];
    *v22 = 138543874;
    v23 = self;
    v24 = 2114;
    v25 = v11;
    v26 = 2048;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Found %lu cached pending transactions", v22, 0x20u);
  }

  v13 = *(*&buf[8] + 40);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(buf, 8);

  return v13;
}

- (BOOL)_cacheLegacyTransactions:(id)a3 inDataStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004F5EC;
  v15[3] = &unk_1003820C0;
  v17 = &v18;
  v15[4] = self;
  v8 = v6;
  v16 = v8;
  [v7 modifyUsingTransaction:v15];
  if (v19[3])
  {
    v9 = 1;
  }

  else
  {
    if (qword_1003D4380 != -1)
    {
      sub_1002CDBF4();
    }

    v10 = qword_1003D4360;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
      v13 = [(LoadUnfinishedInAppTransactionsTask *)self client];
      v14 = [v13 requestBundleID];
      *buf = 138543874;
      v23 = self;
      v24 = 2114;
      v25 = v12;
      v26 = 2114;
      v27 = v14;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}@][%{public}@]: Failed to cache pending transactions for %{public}@", buf, 0x20u);
    }

    v9 = *(v19 + 24);
  }

  _Block_object_dispose(&v18, 8);
  return v9 & 1;
}

- (BOOL)_invalidateLegacyTransactionCacheInDataStore:(id)a3
{
  v4 = a3;
  v5 = [(LoadUnfinishedInAppTransactionsTask *)self client];
  v6 = [v5 requestBundleID];
  v7 = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
  v8 = [LoadUnfinishedInAppTransactionsTask _invalidateLegacyTransactionCacheInDataStore:v4 bundleID:v6 logKey:v7];

  return v8;
}

+ (BOOL)_invalidateLegacyTransactionCacheInDataStore:(id)a3 bundleID:(id)a4 logKey:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004F9CC;
  v15[3] = &unk_1003801D8;
  v17 = &v18;
  v11 = v9;
  v16 = v11;
  [v8 modifyUsingTransaction:v15];
  if (v19[3])
  {
    v12 = 1;
  }

  else
  {
    if (qword_1003D4380 != -1)
    {
      sub_1002CDBF4();
    }

    v13 = qword_1003D4360;
    if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v23 = a1;
      v24 = 2114;
      v25 = v10;
      v26 = 2114;
      v27 = v11;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%{public}@][%{public}@]: Failed to mark pending transactions cache stale for %{public}@", buf, 0x20u);
    }

    v12 = *(v19 + 24);
  }

  _Block_object_dispose(&v18, 8);
  return v12 & 1;
}

@end