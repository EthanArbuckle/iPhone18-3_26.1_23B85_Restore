@interface ValidateCacheTask
- (ValidateCacheTask)initWithClient:(id)a3 includeFinishedConsumables:(BOOL)a4 dbStore:(id)a5;
- (void)main;
@end

@implementation ValidateCacheTask

- (ValidateCacheTask)initWithClient:(id)a3 includeFinishedConsumables:(BOOL)a4 dbStore:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ValidateCacheTask;
  v11 = [(Task *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong((v11 + 50), a3);
    v12[42] = a4;
    objc_storeStrong((v12 + 58), a5);
  }

  return v12;
}

- (void)main
{
  v3 = [(ValidateCacheTask *)self client];
  v4 = [(ValidateCacheTask *)self client];
  v79 = [v4 bag];

  *(&self->super._finished + 2) = 0;
  *(&self->_logKey + 2) = 0;
  if ([v3 hasEverHadIAPs])
  {
LABEL_2:
    v5 = 0;
    goto LABEL_13;
  }

  v6 = +[_TtC9storekitd6BagKey ignoreIAPQueueCheckSuppression];
  v7 = [v79 BOOLForKey:v6];
  v8 = [v7 valueWithError:0];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    if (qword_1003D3FE8 != -1)
    {
      sub_1002CA958();
    }

    v10 = qword_1003D3FC8;
    if (os_log_type_enabled(qword_1003D3FC8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [(ValidateCacheTask *)self logKey];
      v13 = [v3 requestBundleID];
      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2114;
      *&buf[14] = v13;
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
    v16 = [(ValidateCacheTask *)self logKey];
    v17 = [v3 requestBundleID];
    *buf = 138543618;
    *&buf[4] = v16;
    *&buf[12] = 2114;
    *&buf[14] = v17;
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
  v18 = [(ValidateCacheTask *)self store];
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_1000333CC;
  v81[3] = &unk_100381108;
  v83 = buf;
  v19 = v3;
  v82 = v19;
  v84 = &v95;
  v85 = &v91;
  v86 = &v87;
  [v18 readUsingSession:v81];

  v20 = [(ValidateCacheTask *)self includeFinishedConsumables];
  if (*(v92 + 24) != v20)
  {
    v30 = [(ValidateCacheTask *)self store];
    v31 = [v19 requestBundleID];
    [v30 clearTransactionsForBundleID:v31];

    if (v5)
    {
      if (qword_1003D3FE8 != -1)
      {
        sub_1002CA96C();
      }

      v32 = qword_1003D3FC8;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [(ValidateCacheTask *)self logKey];
        v34 = [v19 requestBundleID];
        v35 = [(ValidateCacheTask *)self includeFinishedConsumables];
        v36 = @"NO";
        *v101 = 138543874;
        v102 = v33;
        v103 = 2114;
        if (v35)
        {
          v36 = @"YES";
        }

        v104 = v34;
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
      v38 = [(ValidateCacheTask *)self logKey];
      v39 = [v19 requestBundleID];
      v40 = [(ValidateCacheTask *)self includeFinishedConsumables];
      v41 = @"NO";
      *v101 = 138543874;
      v102 = v38;
      v103 = 2114;
      if (v40)
      {
        v41 = @"YES";
      }

      v104 = v39;
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
        v42 = [(ValidateCacheTask *)self logKey];
        v43 = [v19 requestBundleID];
        *v101 = 138543618;
        v102 = v42;
        v103 = 2114;
        v104 = v43;
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
      v48 = [(ValidateCacheTask *)self logKey];
      v49 = [v19 requestBundleID];
      *v101 = 138543618;
      v102 = v48;
      v103 = 2114;
      v104 = v49;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%{public}@] Forcing transaction sync for %{public}@ because there is no history", v101, 0x16u);
    }

LABEL_55:

    *(&self->super._finished + 2) = 1;
    *(&self->_logKey + 2) = 0;
    goto LABEL_79;
  }

  if (v96[5])
  {
    v21 = [v19 currentAccountToken];
    v22 = v21;
    v23 = v96[5];
    if (!v21)
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
          v51 = [(ValidateCacheTask *)self logKey];
          v52 = [v19 requestBundleID];
          *v101 = 138543618;
          v102 = v51;
          v103 = 2114;
          v104 = v52;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing all transactions %{public}@ because there is no account", v101, 0x16u);
        }

        v53 = [(ValidateCacheTask *)self store];
        v54 = [v19 requestBundleID];
        [v53 clearTransactionsForBundleID:v54];
      }

      goto LABEL_78;
    }

    if (([v21 isEqualToString:v23] & 1) == 0)
    {
      v55 = [(ValidateCacheTask *)self store];
      v56 = [v19 requestBundleID];
      [v55 clearTransactionsForBundleID:v56];

      if (v5)
      {
        if (qword_1003D3FE8 != -1)
        {
          sub_1002CA96C();
        }

        v57 = qword_1003D3FC8;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v58 = [(ValidateCacheTask *)self logKey];
          v59 = [v19 requestBundleID];
          *v101 = 138543618;
          v102 = v58;
          v103 = 2114;
          v104 = v59;
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
          v64 = [(ValidateCacheTask *)self logKey];
          v65 = [v19 requestBundleID];
          *v101 = 138543618;
          v102 = v64;
          v103 = 2114;
          v104 = v65;
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
        v74 = [(ValidateCacheTask *)self logKey];
        v75 = [v19 requestBundleID];
        *v101 = 138543874;
        v102 = v74;
        v103 = 2114;
        v104 = v75;
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
        v66 = [(ValidateCacheTask *)self logKey];
        v67 = [v19 requestBundleID];
        *v101 = 138543618;
        v102 = v66;
        v103 = 2114;
        v104 = v67;
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
        v77 = [(ValidateCacheTask *)self logKey];
        v72 = [v19 requestBundleID];
        *v101 = 138543618;
        v102 = v77;
        v103 = 2114;
        v104 = v72;
        v76 = v72;
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
        v78 = [(ValidateCacheTask *)self logKey];
        v73 = [v19 requestBundleID];
        *v101 = 138543618;
        v102 = v78;
        v103 = 2114;
        v104 = v73;
        v76 = v73;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "[%{public}@] Forcing transaction sync for %{public}@ because transaction history has a recently expired subscription", v101, 0x16u);
      }
    }

    *(&self->super._finished + 2) = 1;
    *(&self->_logKey + 2) = 3;
    goto LABEL_23;
  }

  v44 = [(ValidateCacheTask *)self store];
  v45 = [v19 requestBundleID];
  [v44 clearTransactionsForBundleID:v45];

  if (v5)
  {
    if (qword_1003D3FE8 != -1)
    {
      sub_1002CA96C();
    }

    v32 = qword_1003D3FC8;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [(ValidateCacheTask *)self logKey];
      v47 = [v19 requestBundleID];
      *v101 = 138543618;
      v102 = v46;
      v103 = 2114;
      v104 = v47;
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
    v61 = [(ValidateCacheTask *)self logKey];
    v62 = [v19 requestBundleID];
    *v101 = 138543618;
    v102 = v61;
    v103 = 2114;
    v104 = v62;
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