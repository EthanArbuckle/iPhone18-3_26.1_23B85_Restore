@interface LoadUnfinishedInAppTransactionsTask
+ (BOOL)_invalidateLegacyTransactionCacheInDataStore:(id)store bundleID:(id)d logKey:(id)key;
+ (BOOL)invalidateCacheForBundleID:(id)d withLogKey:(id)key;
+ (id)_newDataStore;
- (BOOL)_cacheLegacyTransactions:(id)transactions inDataStore:(id)store;
- (BOOL)_ignoreHasEverHadIAPsWithBag:(id)bag;
- (BOOL)_invalidateLegacyTransactionCacheInDataStore:(id)store;
- (BOOL)_shouldCheckServerQueueWithDataStore:(id)store bag:(id)bag;
- (LoadUnfinishedInAppTransactionsTask)initWithClient:(id)client;
- (id)_cachedLegacyTransactionsFromDataStore:(id)store error:(id *)error;
- (id)_checkServerQueueAndCacheTransactionsWithDataStore:(id)store bag:(id)bag error:(id *)error;
- (id)_pendingTransactionsResponseWithParameters:(id)parameters requestEncoder:(id)encoder bag:(id)bag error:(id *)error;
- (id)_transactionsFromQueueCheckWithBag:(id)bag error:(id *)error;
- (int64_t)_pendingTransactionsCountWithParameters:(id)parameters requestEncoder:(id)encoder bag:(id)bag error:(id *)error;
- (void)_fromDataStore:(id)store getCachedAccountToken:(id *)token lastUpdated:(id *)updated;
- (void)main;
@end

@implementation LoadUnfinishedInAppTransactionsTask

- (LoadUnfinishedInAppTransactionsTask)initWithClient:(id)client
{
  clientCopy = client;
  v11.receiver = self;
  v11.super_class = LoadUnfinishedInAppTransactionsTask;
  v6 = [(Task *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 50), client);
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
  client = [(LoadUnfinishedInAppTransactionsTask *)self client];
  v5 = [client bag];

  client2 = [(LoadUnfinishedInAppTransactionsTask *)self client];
  currentAccountToken = [client2 currentAccountToken];
  if (currentAccountToken)
  {
  }

  else
  {
    client3 = [(LoadUnfinishedInAppTransactionsTask *)self client];
    objc_clientType = [client3 objc_clientType];

    if (objc_clientType != 3)
    {
      if (qword_1003D4380 != -1)
      {
        sub_1002CDBE0();
      }

      v24 = qword_1003D4360;
      if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
        logKey = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
        *buf = 138543618;
        selfCopy2 = self;
        v39 = 2114;
        v40 = logKey;
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
      logKey2 = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
      v31 = [*(&self->_receiptInstallURL + 2) count];
      *buf = 138543874;
      selfCopy2 = self;
      v39 = 2114;
      v40 = logKey2;
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

+ (BOOL)invalidateCacheForBundleID:(id)d withLogKey:(id)key
{
  keyCopy = key;
  dCopy = d;
  _newDataStore = [self _newDataStore];
  LOBYTE(self) = [self _invalidateLegacyTransactionCacheInDataStore:_newDataStore bundleID:dCopy logKey:keyCopy];

  return self;
}

+ (id)_newDataStore
{
  v2 = [LegacyTransactionDatabaseStore alloc];
  v3 = +[Environment sharedInstance];
  userDatabase = [v3 userDatabase];
  v5 = [(SQLiteDatabaseStore *)v2 initWithDatabase:userDatabase];

  return v5;
}

- (BOOL)_shouldCheckServerQueueWithDataStore:(id)store bag:(id)bag
{
  storeCopy = store;
  bagCopy = bag;
  client = [(LoadUnfinishedInAppTransactionsTask *)self client];
  objc_clientType = [client objc_clientType];

  if (objc_clientType == 3)
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
    logKey = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
    *buf = 138543618;
    selfCopy4 = self;
    v43 = 2114;
    v44 = logKey;
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
    logKey = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
    *buf = 138543618;
    selfCopy4 = self;
    v43 = 2114;
    v44 = logKey;
    v13 = "[%{public}@][%{public}@]: Forcing pending transaction queue check";
    goto LABEL_11;
  }

  client2 = [(LoadUnfinishedInAppTransactionsTask *)self client];
  if ([client2 hasEverHadIAPs])
  {
  }

  else
  {
    v18 = [(LoadUnfinishedInAppTransactionsTask *)self _ignoreHasEverHadIAPsWithBag:bagCopy];

    if ((v18 & 1) == 0)
    {
      v15 = 0;
      goto LABEL_13;
    }
  }

  v39 = 0;
  v40 = 0;
  [(LoadUnfinishedInAppTransactionsTask *)self _fromDataStore:storeCopy getCachedAccountToken:&v40 lastUpdated:&v39];
  v19 = v40;
  v20 = v39;
  if (v19 && (-[LoadUnfinishedInAppTransactionsTask client](self, "client"), v21 = objc_claimAutoreleasedReturnValue(), [v21 currentAccountToken], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", v19), v22, v21, (v23 & 1) != 0))
  {
    v24 = +[_TtC9storekitd6BagKey transactionReceiptsMaxAge];
    v25 = [bagCopy integerForKey:v24];

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
          logKey2 = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
          *buf = 138543618;
          selfCopy4 = self;
          v43 = 2114;
          v44 = logKey2;
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
      logKey3 = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
      *buf = 138543618;
      selfCopy4 = self;
      v43 = 2114;
      v44 = logKey3;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Checking pending transaction queue because the tokens don't match", buf, 0x16u);
    }

    v15 = 1;
  }

LABEL_13:
  return v15;
}

- (BOOL)_ignoreHasEverHadIAPsWithBag:(id)bag
{
  bagCopy = bag;
  client = [(LoadUnfinishedInAppTransactionsTask *)self client];
  hasEverHadIAPs = [client hasEverHadIAPs];

  if ((hasEverHadIAPs & 1) == 0)
  {
    v8 = +[_TtC9storekitd6BagKey ignoreIAPQueueCheckSuppression];
    v9 = [bagCopy BOOLForKey:v8];

    v18 = 0;
    v10 = [v9 valueWithError:&v18];
    v11 = v18;
    bOOLValue = [v10 BOOLValue];

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
      if (bOOLValue)
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
        logKey = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
        *buf = 138543618;
        selfCopy2 = self;
        v21 = 2114;
        v22 = logKey;
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
        logKey = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
        *buf = 138543618;
        selfCopy2 = self;
        v21 = 2114;
        v22 = logKey;
        v15 = "[%{public}@][%{public}@]: Ignoring pending transaction queue check for client with no history of IAPs";
      }

      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v15, buf, 0x16u);
    }

LABEL_18:

    goto LABEL_19;
  }

  LOBYTE(bOOLValue) = 0;
LABEL_19:

  return bOOLValue;
}

- (id)_checkServerQueueAndCacheTransactionsWithDataStore:(id)store bag:(id)bag error:(id *)error
{
  v19 = 0;
  storeCopy = store;
  v9 = [(LoadUnfinishedInAppTransactionsTask *)self _transactionsFromQueueCheckWithBag:bag error:&v19];
  v10 = v19;
  v11 = v10;
  if (v10)
  {
    if (error)
    {
      v12 = v10;
      *error = v11;
    }

    if (qword_1003D4380 != -1)
    {
      sub_1002CDBF4();
    }

    if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_ERROR))
    {
      sub_1002CDFDC();
    }

    [(LoadUnfinishedInAppTransactionsTask *)self _invalidateLegacyTransactionCacheInDataStore:storeCopy];

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
      logKey = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
      v17 = [v9 count];
      *buf = 138543874;
      selfCopy = self;
      v22 = 2114;
      v23 = logKey;
      v24 = 2048;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Found %lu pending transactions in the queue", buf, 0x20u);
    }

    [(LoadUnfinishedInAppTransactionsTask *)self _cacheLegacyTransactions:v9 inDataStore:storeCopy];

    v13 = v9;
  }

  return v13;
}

- (id)_transactionsFromQueueCheckWithBag:(id)bag error:(id *)error
{
  bagCopy = bag;
  if (qword_1003D4380 != -1)
  {
    sub_1002CDBE0();
  }

  v7 = qword_1003D4360;
  if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    logKey = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
    *buf = 138543362;
    v51 = logKey;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting server purchase queue check", buf, 0xCu);
  }

  client = [(LoadUnfinishedInAppTransactionsTask *)self client];
  urlRequestEncoder = [client urlRequestEncoder];

  logKey2 = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
  [urlRequestEncoder setLogUUID:logKey2];

  client2 = [(LoadUnfinishedInAppTransactionsTask *)self client];
  receiptInstallURL = [(LoadUnfinishedInAppTransactionsTask *)self receiptInstallURL];
  [client2 queryWith:1 customReceiptURL:receiptInstallURL];
  v15 = v47 = self;
  v16 = [v15 mutableCopy];

  selfCopy = self;
  v49 = 0;
  v18 = [(LoadUnfinishedInAppTransactionsTask *)self _pendingTransactionsCountWithParameters:v16 requestEncoder:urlRequestEncoder bag:bagCopy error:&v49];
  v19 = v49;
  if (v19)
  {
    v20 = v19;
    if (error)
    {
      v21 = v19;
      v22 = 0;
      *error = v20;
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

  errorCopy = error;
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
    v27 = [(LoadUnfinishedInAppTransactionsTask *)selfCopy _pendingTransactionsResponseWithParameters:v24 requestEncoder:urlRequestEncoder bag:bagCopy error:&v48];
    v20 = v48;

    if (v27)
    {
      v28 = urlRequestEncoder;
      v29 = bagCopy;
      client3 = [(LoadUnfinishedInAppTransactionsTask *)selfCopy client];
      receiptInstallURL2 = [(LoadUnfinishedInAppTransactionsTask *)selfCopy receiptInstallURL];
      v32 = selfCopy;
      v33 = receiptInstallURL2;
      logKey3 = [(LoadUnfinishedInAppTransactionsTask *)v32 logKey];
      v35 = sub_100027E30(v27, client3, v33, 1, logKey3, 0, 0);

      [v46 addObjectsFromArray:v35];
      v36 = [v27 tcr_arrayForKey:@"more"];
      if ([v36 count])
      {
        [v23 addObjectsFromArray:v36];
      }

      bagCopy = v29;
      urlRequestEncoder = v28;
      selfCopy = v47;
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
    if (errorCopy)
    {
      v37 = v20;
      v22 = 0;
      *errorCopy = v20;
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
    logKey4 = [(LoadUnfinishedInAppTransactionsTask *)selfCopy logKey];
    v42 = [v46 count];
    *buf = 138543618;
    v51 = logKey4;
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

- (int64_t)_pendingTransactionsCountWithParameters:(id)parameters requestEncoder:(id)encoder bag:(id)bag error:(id *)error
{
  bagCopy = bag;
  encoderCopy = encoder;
  parametersCopy = parameters;
  v13 = +[_TtC9storekitd6BagKey pendingTransactionsCountURL];
  v14 = [bagCopy URLForKey:v13];

  v15 = [encoderCopy requestWithMethod:4 bagURL:v14 parameters:parametersCopy];

  v31 = 0;
  v16 = [v15 resultWithError:&v31];
  v17 = v31;
  if (v17)
  {
    v18 = v17;
    if (error)
    {
      v19 = v17;
      *error = v18;
    }

    if (qword_1003D4380 != -1)
    {
      sub_1002CDBF4();
    }

    if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_ERROR))
    {
      sub_1002CE11C();
    }

    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    client = [(LoadUnfinishedInAppTransactionsTask *)self client];
    urlSession = [client urlSession];

    v23 = [urlSession dataTaskPromiseWithRequest:v16];
    v30 = 0;
    v24 = [v23 resultWithError:&v30];
    v25 = v30;
    v18 = v25;
    if (v25)
    {
      if (error)
      {
        v26 = v25;
        *error = v18;
      }

      if (qword_1003D4380 != -1)
      {
        sub_1002CDBF4();
      }

      if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_ERROR))
      {
        sub_1002CE1BC();
      }

      integerValue = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      object = [v24 object];
      v28 = [object objectForKeyedSubscript:@"download-queue-item-count"];
      integerValue = [v28 integerValue];
    }
  }

  return integerValue;
}

- (id)_pendingTransactionsResponseWithParameters:(id)parameters requestEncoder:(id)encoder bag:(id)bag error:(id *)error
{
  bagCopy = bag;
  encoderCopy = encoder;
  parametersCopy = parameters;
  v13 = +[_TtC9storekitd6BagKey pendingTransactionsURL];
  v14 = [bagCopy URLForKey:v13];

  v15 = [encoderCopy requestWithMethod:4 bagURL:v14 parameters:parametersCopy];

  v29 = 0;
  v16 = [v15 resultWithError:&v29];
  v17 = v29;
  if (v17)
  {
    v18 = v17;
    if (error)
    {
      v19 = v17;
      *error = v18;
    }

    if (qword_1003D4380 != -1)
    {
      sub_1002CDBF4();
    }

    if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_ERROR))
    {
      sub_1002CE25C();
    }

    object = 0;
  }

  else
  {
    client = [(LoadUnfinishedInAppTransactionsTask *)self client];
    urlSession = [client urlSession];

    v23 = [urlSession dataTaskPromiseWithRequest:v16];
    v28 = 0;
    v24 = [v23 resultWithError:&v28];
    v25 = v28;
    v18 = v25;
    if (v25)
    {
      if (error)
      {
        v26 = v25;
        *error = v18;
      }

      if (qword_1003D4380 != -1)
      {
        sub_1002CDBF4();
      }

      if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_ERROR))
      {
        sub_1002CE2FC();
      }

      object = 0;
    }

    else
    {
      object = [v24 object];
    }
  }

  return object;
}

- (void)_fromDataStore:(id)store getCachedAccountToken:(id *)token lastUpdated:(id *)updated
{
  storeCopy = store;
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
  [storeCopy readUsingSession:v9];
  if (token)
  {
    *token = v17[5];
  }

  if (updated)
  {
    *updated = v11[5];
  }

  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
}

- (id)_cachedLegacyTransactionsFromDataStore:(id)store error:(id *)error
{
  storeCopy = store;
  if (qword_1003D4380 != -1)
  {
    sub_1002CDBE0();
  }

  v7 = qword_1003D4360;
  if (os_log_type_enabled(qword_1003D4360, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    logKey = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = logKey;
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
  [storeCopy readUsingSession:v15];
  if (error)
  {
    *error = v17[5];
  }

  if (qword_1003D4380 != -1)
  {
    sub_1002CDBF4();
  }

  v10 = qword_1003D4360;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    logKey2 = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
    v12 = [*(*&buf[8] + 40) count];
    *v22 = 138543874;
    selfCopy = self;
    v24 = 2114;
    v25 = logKey2;
    v26 = 2048;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Found %lu cached pending transactions", v22, 0x20u);
  }

  v13 = *(*&buf[8] + 40);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(buf, 8);

  return v13;
}

- (BOOL)_cacheLegacyTransactions:(id)transactions inDataStore:(id)store
{
  transactionsCopy = transactions;
  storeCopy = store;
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
  v8 = transactionsCopy;
  v16 = v8;
  [storeCopy modifyUsingTransaction:v15];
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
      logKey = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
      client = [(LoadUnfinishedInAppTransactionsTask *)self client];
      requestBundleID = [client requestBundleID];
      *buf = 138543874;
      selfCopy = self;
      v24 = 2114;
      v25 = logKey;
      v26 = 2114;
      v27 = requestBundleID;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}@][%{public}@]: Failed to cache pending transactions for %{public}@", buf, 0x20u);
    }

    v9 = *(v19 + 24);
  }

  _Block_object_dispose(&v18, 8);
  return v9 & 1;
}

- (BOOL)_invalidateLegacyTransactionCacheInDataStore:(id)store
{
  storeCopy = store;
  client = [(LoadUnfinishedInAppTransactionsTask *)self client];
  requestBundleID = [client requestBundleID];
  logKey = [(LoadUnfinishedInAppTransactionsTask *)self logKey];
  v8 = [LoadUnfinishedInAppTransactionsTask _invalidateLegacyTransactionCacheInDataStore:storeCopy bundleID:requestBundleID logKey:logKey];

  return v8;
}

+ (BOOL)_invalidateLegacyTransactionCacheInDataStore:(id)store bundleID:(id)d logKey:(id)key
{
  storeCopy = store;
  dCopy = d;
  keyCopy = key;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004F9CC;
  v15[3] = &unk_1003801D8;
  v17 = &v18;
  v11 = dCopy;
  v16 = v11;
  [storeCopy modifyUsingTransaction:v15];
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
      selfCopy = self;
      v24 = 2114;
      v25 = keyCopy;
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