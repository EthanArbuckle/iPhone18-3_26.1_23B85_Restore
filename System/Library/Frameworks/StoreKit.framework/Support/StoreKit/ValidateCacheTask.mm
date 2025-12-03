@interface ValidateCacheTask
- (ValidateCacheTask)initWithClient:(id)client includeFinishedConsumables:(BOOL)consumables dbStore:(id)store;
- (void)main;
@end

@implementation ValidateCacheTask

- (ValidateCacheTask)initWithClient:(id)client includeFinishedConsumables:(BOOL)consumables dbStore:(id)store
{
  clientCopy = client;
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = ValidateCacheTask;
  v11 = [(Task *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong((v11 + 50), client);
    v12[42] = consumables;
    objc_storeStrong((v12 + 58), store);
  }

  return v12;
}

- (void)main
{
  client = [(ValidateCacheTask *)self client];
  client2 = [(ValidateCacheTask *)self client];
  v79 = [client2 bag];

  *(&self->super._finished + 2) = 0;
  *(&self->_logKey + 2) = 0;
  if ([client hasEverHadIAPs])
  {
LABEL_2:
    v5 = 0;
    goto LABEL_13;
  }

  v6 = +[_TtC9storekitd6BagKey ignoreIAPQueueCheckSuppression];
  v7 = [v79 BOOLForKey:v6];
  v8 = [v7 valueWithError:0];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
    if (qword_1003D3FE8 != -1)
    {
      sub_1002CA958();
    }

    v10 = qword_1003D3FC8;
    if (os_log_type_enabled(qword_1003D3FC8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      logKey = [(ValidateCacheTask *)self logKey];
      requestBundleID = [client requestBundleID];
      *buf = 138543618;
      *&buf[4] = logKey;
      *&buf[12] = 2114;
      *&buf[14] = requestBundleID;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Allowing queue check for client with no history of IAPs.", buf, 0x16u);
    }

    goto LABEL_2;
  }

  if (qword_1003D3FE8 != -1)
  {
    sub_1002CA958();
  }

  v14 = qword_1003D3FC8;
  if (os_log_type_enabled(qword_1003D3FC8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    logKey2 = [(ValidateCacheTask *)self logKey];
    requestBundleID2 = [client requestBundleID];
    *buf = 138543618;
    *&buf[4] = logKey2;
    *&buf[12] = 2114;
    *&buf[14] = requestBundleID2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Supressing queue check for client with no history of IAPs.", buf, 0x16u);
  }

  v5 = 1;
LABEL_13:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v108 = sub_1000333B4;
  v109 = sub_1000333C4;
  v110 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x3032000000;
  v98 = sub_1000333B4;
  v99 = sub_1000333C4;
  v100 = 0;
  v91 = 0;
  v92 = &v91;
  v93 = 0x2020000000;
  v94 = 0;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  store = [(ValidateCacheTask *)self store];
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_1000333CC;
  v81[3] = &unk_100381108;
  v83 = buf;
  v19 = client;
  v82 = v19;
  v84 = &v95;
  v85 = &v91;
  v86 = &v87;
  [store readUsingSession:v81];

  includeFinishedConsumables = [(ValidateCacheTask *)self includeFinishedConsumables];
  if (*(v92 + 24) != includeFinishedConsumables)
  {
    store2 = [(ValidateCacheTask *)self store];
    requestBundleID3 = [v19 requestBundleID];
    [store2 clearTransactionsForBundleID:requestBundleID3];

    if (v5)
    {
      if (qword_1003D3FE8 != -1)
      {
        sub_1002CA96C();
      }

      v32 = qword_1003D3FC8;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        logKey3 = [(ValidateCacheTask *)self logKey];
        requestBundleID4 = [v19 requestBundleID];
        includeFinishedConsumables2 = [(ValidateCacheTask *)self includeFinishedConsumables];
        v36 = @"NO";
        *v101 = 138543874;
        v102 = logKey3;
        v103 = 2114;
        if (includeFinishedConsumables2)
        {
          v36 = @"YES";
        }

        v104 = requestBundleID4;
        v105 = 2114;
        v106 = v36;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping transaction sync for %{public}@ where includeFinishedConsumables (%{public}@) doesn't match cache", v101, 0x20u);
      }

      goto LABEL_50;
    }

    if (qword_1003D3FE8 != -1)
    {
      sub_1002CA96C();
    }

    v37 = qword_1003D3FC8;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      logKey4 = [(ValidateCacheTask *)self logKey];
      requestBundleID5 = [v19 requestBundleID];
      includeFinishedConsumables3 = [(ValidateCacheTask *)self includeFinishedConsumables];
      v41 = @"NO";
      *v101 = 138543874;
      v102 = logKey4;
      v103 = 2114;
      if (includeFinishedConsumables3)
      {
        v41 = @"YES";
      }

      v104 = requestBundleID5;
      v105 = 2114;
      v106 = v41;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%{public}@] Forcing transaction sync for %{public}@ because includeFinishedConsumables (%{public}@) doesn't match cache", v101, 0x20u);
    }

    goto LABEL_55;
  }

  if (!*(*&buf[8] + 40))
  {
    if (v5)
    {
      if (qword_1003D3FE8 != -1)
      {
        sub_1002CA96C();
      }

      v32 = qword_1003D3FC8;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        logKey5 = [(ValidateCacheTask *)self logKey];
        requestBundleID6 = [v19 requestBundleID];
        *v101 = 138543618;
        v102 = logKey5;
        v103 = 2114;
        v104 = requestBundleID6;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping transaction sync for %{public}@ with no history.", v101, 0x16u);
      }

      goto LABEL_50;
    }

    if (qword_1003D3FE8 != -1)
    {
      sub_1002CA96C();
    }

    v37 = qword_1003D3FC8;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      logKey6 = [(ValidateCacheTask *)self logKey];
      requestBundleID7 = [v19 requestBundleID];
      *v101 = 138543618;
      v102 = logKey6;
      v103 = 2114;
      v104 = requestBundleID7;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%{public}@] Forcing transaction sync for %{public}@ because there is no history", v101, 0x16u);
    }

LABEL_55:

    *(&self->super._finished + 2) = 1;
    *(&self->_logKey + 2) = 0;
    goto LABEL_79;
  }

  if (v96[5])
  {
    currentAccountToken = [v19 currentAccountToken];
    v22 = currentAccountToken;
    v23 = v96[5];
    if (!currentAccountToken)
    {
      if (v23)
      {
        if (qword_1003D3FE8 != -1)
        {
          sub_1002CA96C();
        }

        v50 = qword_1003D3FC8;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          logKey7 = [(ValidateCacheTask *)self logKey];
          requestBundleID8 = [v19 requestBundleID];
          *v101 = 138543618;
          v102 = logKey7;
          v103 = 2114;
          v104 = requestBundleID8;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing all transactions %{public}@ because there is no account", v101, 0x16u);
        }

        store3 = [(ValidateCacheTask *)self store];
        requestBundleID9 = [v19 requestBundleID];
        [store3 clearTransactionsForBundleID:requestBundleID9];
      }

      goto LABEL_78;
    }

    if (([currentAccountToken isEqualToString:v23] & 1) == 0)
    {
      store4 = [(ValidateCacheTask *)self store];
      requestBundleID10 = [v19 requestBundleID];
      [store4 clearTransactionsForBundleID:requestBundleID10];

      if (v5)
      {
        if (qword_1003D3FE8 != -1)
        {
          sub_1002CA96C();
        }

        v57 = qword_1003D3FC8;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          logKey8 = [(ValidateCacheTask *)self logKey];
          requestBundleID11 = [v19 requestBundleID];
          *v101 = 138543618;
          v102 = logKey8;
          v103 = 2114;
          v104 = requestBundleID11;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping transaction sync for %{public}@ where the tokens don't match", v101, 0x16u);
        }
      }

      else
      {
        if (qword_1003D3FE8 != -1)
        {
          sub_1002CA96C();
        }

        v63 = qword_1003D3FC8;
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          logKey9 = [(ValidateCacheTask *)self logKey];
          requestBundleID12 = [v19 requestBundleID];
          *v101 = 138543618;
          v102 = logKey9;
          v103 = 2114;
          v104 = requestBundleID12;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "[%{public}@] Forcing transaction sync for %{public}@ because the tokens don't match", v101, 0x16u);
        }

        *(&self->super._finished + 2) = 1;
        *(&self->_logKey + 2) = 5;
      }

      goto LABEL_78;
    }

    v24 = +[_TtC9storekitd6BagKey transactionReceiptsMaxAge];
    v25 = [v79 integerForKey:v24];

    v80 = 0;
    v26 = [v25 valueWithError:&v80];
    v27 = v80;
    if (v27)
    {
      if (qword_1003D3FE8 != -1)
      {
        sub_1002CA96C();
      }

      v28 = v26;
      v29 = qword_1003D3FC8;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        logKey10 = [(ValidateCacheTask *)self logKey];
        requestBundleID13 = [v19 requestBundleID];
        *v101 = 138543874;
        v102 = logKey10;
        v103 = 2114;
        v104 = requestBundleID13;
        v105 = 2114;
        v106 = v27;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[%{public}@] Error getting max age for %{public}@ transaction history: %{public}@", v101, 0x20u);
      }

      goto LABEL_23;
    }

    if (v5)
    {
      v29 = sub_100033370();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        logKey11 = [(ValidateCacheTask *)self logKey];
        requestBundleID14 = [v19 requestBundleID];
        *v101 = 138543618;
        v102 = logKey11;
        v103 = 2114;
        v104 = requestBundleID14;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping transaction sync for %{public}@ lastUpdated check", v101, 0x16u);

        v28 = v26;
      }

      else
      {
        v28 = v26;
      }

      goto LABEL_23;
    }

    v68 = *(*&buf[8] + 40);
    v28 = v26;
    [v26 doubleValue];
    v29 = [v68 dateByAddingTimeInterval:?];
    v69 = +[NSDate now];
    v70 = [v69 compare:v29] == 1;

    v27 = 0;
    if (v70)
    {
      v71 = sub_100033370();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        logKey12 = [(ValidateCacheTask *)self logKey];
        requestBundleID15 = [v19 requestBundleID];
        *v101 = 138543618;
        v102 = logKey12;
        v103 = 2114;
        v104 = requestBundleID15;
        v76 = requestBundleID15;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "[%{public}@] Forcing transaction sync for %{public}@ because lastUpdated is older than maxAge", v101, 0x16u);
      }
    }

    else
    {
      if (*(v88 + 24) != 1)
      {
LABEL_23:

LABEL_78:
        goto LABEL_79;
      }

      v71 = sub_100033370();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        logKey13 = [(ValidateCacheTask *)self logKey];
        requestBundleID16 = [v19 requestBundleID];
        *v101 = 138543618;
        v102 = logKey13;
        v103 = 2114;
        v104 = requestBundleID16;
        v76 = requestBundleID16;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "[%{public}@] Forcing transaction sync for %{public}@ because transaction history has a recently expired subscription", v101, 0x16u);
      }
    }

    *(&self->super._finished + 2) = 1;
    *(&self->_logKey + 2) = 3;
    goto LABEL_23;
  }

  store5 = [(ValidateCacheTask *)self store];
  requestBundleID17 = [v19 requestBundleID];
  [store5 clearTransactionsForBundleID:requestBundleID17];

  if (v5)
  {
    if (qword_1003D3FE8 != -1)
    {
      sub_1002CA96C();
    }

    v32 = qword_1003D3FC8;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      logKey14 = [(ValidateCacheTask *)self logKey];
      requestBundleID18 = [v19 requestBundleID];
      *v101 = 138543618;
      v102 = logKey14;
      v103 = 2114;
      v104 = requestBundleID18;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping transaction sync for %{public}@ where the cached history has no token.", v101, 0x16u);
    }

LABEL_50:

    goto LABEL_79;
  }

  if (qword_1003D3FE8 != -1)
  {
    sub_1002CA96C();
  }

  v60 = qword_1003D3FC8;
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    logKey15 = [(ValidateCacheTask *)self logKey];
    requestBundleID19 = [v19 requestBundleID];
    *v101 = 138543618;
    v102 = logKey15;
    v103 = 2114;
    v104 = requestBundleID19;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "[%{public}@] Forcing transaction sync for %{public}@ because the cached history has no token", v101, 0x16u);
  }

  *(&self->super._finished + 2) = 1;
  *(&self->_logKey + 2) = 5;
LABEL_79:
  [(AsyncTask *)self completeWithSuccess];

  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(&v91, 8);
  _Block_object_dispose(&v95, 8);

  _Block_object_dispose(buf, 8);
}

@end