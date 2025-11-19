@interface LoadInAppReceiptsTask
- (LoadInAppReceiptsTask)initWithLocalRevision:(id)a3 reason:(int64_t)a4 includeFinishedConsumables:(BOOL)a5 client:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6;
- (void)_runRequestWithAccount:(id)a3 revision:(id)a4;
- (void)main;
- (void)processResult:(id)a3 error:(id)a4 forAccount:(id)a5;
@end

@implementation LoadInAppReceiptsTask

- (LoadInAppReceiptsTask)initWithLocalRevision:(id)a3 reason:(int64_t)a4 includeFinishedConsumables:(BOOL)a5 client:(id)a6
{
  v11 = a3;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = LoadInAppReceiptsTask;
  v13 = [(Task *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong((v13 + 50), a6);
    v14[43] = 0;
    v14[42] = a5;
    objc_storeStrong((v14 + 58), a3);
    v15 = +[NSUUID lib_shortLogKey];
    v16 = *(v14 + 66);
    *(v14 + 66) = v15;

    *(v14 + 74) = a4;
  }

  return v14;
}

- (void)main
{
  v3 = [(LoadInAppReceiptsTask *)self client];
  v4 = [v3 objc_clientType];

  if (v4 == 3)
  {
    v6 = [(LoadInAppReceiptsTask *)self localRevision];
    [(LoadInAppReceiptsTask *)self _runRequestWithAccount:0 revision:v6];
  }

  else
  {
    v5 = [(LoadInAppReceiptsTask *)self client];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100005C2C;
    v7[3] = &unk_10037F890;
    v7[4] = self;
    [_TtC9storekitd19objc_AccountManager accountWithClient:v5 completionHandler:v7];
  }
}

- (void)_runRequestWithAccount:(id)a3 revision:(id)a4
{
  v6 = a3;
  v62 = a4;
  v7 = [(LoadInAppReceiptsTask *)self client];
  v8 = [v7 bag];

  v9 = [(LoadInAppReceiptsTask *)self client];
  v10 = [v9 urlSession];

  [v10 setDelegate:self];
  v11 = [(LoadInAppReceiptsTask *)self client];
  v12 = [v11 urlRequestEncoder];

  [v12 setRequestEncoding:3];
  if ([(LoadInAppReceiptsTask *)self includeFinishedConsumables])
  {
    +[_TtC9storekitd6BagKey transactionReceiptsURLv2];
  }

  else
  {
    +[_TtC9storekitd6BagKey transactionReceiptsURL];
  }
  v13 = ;
  [v8 URLForKey:v13];
  v61 = v66 = 0;
  v14 = [v61 valueWithError:&v66];
  v15 = v66;
  if (v15)
  {
    if (qword_1003D39F8 != -1)
    {
      sub_1002C7344();
    }

    if (os_log_type_enabled(qword_1003D39D8, OS_LOG_TYPE_ERROR))
    {
      sub_1002C736C();
    }

    [(AsyncTask *)self completeWithError:v15];
    goto LABEL_19;
  }

  v58 = v13;
  v16 = objc_opt_new();
  v17 = +[AMSDevice deviceGUID];
  [v16 setObject:v17 forKeyedSubscript:?];

  v18 = sub_100028E70([(LoadInAppReceiptsTask *)self reason]);
  [v16 setObject:v18 forKeyedSubscript:?];

  v57 = v16;
  v19 = [v14 lib_URLByAppendingQueryDictionary:v16];

  v20 = objc_alloc_init(NSMutableDictionary);
  v21 = [(LoadInAppReceiptsTask *)self client];
  if ([v21 storeItemID])
  {
  }

  else
  {
    v22 = [(LoadInAppReceiptsTask *)self client];
    [v22 requestBundleID];
    v23 = v12;
    v24 = v10;
    v25 = v8;
    v26 = v19;
    v28 = v27 = v6;
    v59 = [v28 caseInsensitiveCompare:@"com.apple.freeform"];

    v6 = v27;
    v19 = v26;
    v8 = v25;
    v10 = v24;
    v12 = v23;

    if (!v59)
    {
      v30 = 0x18013B54BLL;
      goto LABEL_14;
    }
  }

  v29 = [(LoadInAppReceiptsTask *)self client];
  v30 = [v29 storeItemID];

LABEL_14:
  v60 = v6;
  v31 = [v6 ams_DSID];
  v32 = [v31 stringValue];
  [v20 setObject:v32 forKeyedSubscript:@"dsid"];

  v33 = [NSString stringWithFormat:@"%lld", v30];
  [v20 setObject:v33 forKeyedSubscript:@"appAdamId"];

  v34 = [(LoadInAppReceiptsTask *)self client];
  v35 = [v34 requestBundleID];
  [v20 setObject:v35 forKeyedSubscript:@"bundleId"];

  v36 = [(LoadInAppReceiptsTask *)self client];
  v37 = [v36 deviceVendorID];
  v38 = [v37 UUIDString];
  v39 = [v38 lowercaseString];
  [v20 setObject:v39 forKeyedSubscript:@"deviceVerification"];

  v40 = +[AMSDevice deviceGUID];
  [v20 setObject:v40 forKeyedSubscript:@"guid"];

  v41 = sub_100028E70([(LoadInAppReceiptsTask *)self reason]);
  [v20 setObject:v41 forKeyedSubscript:@"reason"];

  [v20 setObject:v62 forKeyedSubscript:@"revision"];
  v42 = +[_TtC9storekitd6BagKey transactionReceiptsMaxCount];
  v43 = [v8 integerForKey:v42];

  v44 = [v43 valueWithError:0];
  v45 = [v44 stringValue];
  [v20 setObject:v45 forKeyedSubscript:@"limit"];

  if (qword_1003D39F8 != -1)
  {
    sub_1002C7344();
  }

  v46 = qword_1003D39D8;
  if (os_log_type_enabled(qword_1003D39D8, OS_LOG_TYPE_DEFAULT))
  {
    v47 = v46;
    v48 = [(LoadInAppReceiptsTask *)self logKey];
    v49 = objc_opt_class();
    v55 = v49;
    v56 = v10;
    [(LoadInAppReceiptsTask *)self localRevision];
    v50 = v43;
    v51 = v8;
    v53 = v52 = v19;
    *buf = 138543874;
    v68 = v48;
    v69 = 2114;
    v70 = v49;
    v71 = 2114;
    v72 = v53;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@]: Starting receipt request from revision %{public}@", buf, 0x20u);

    v19 = v52;
    v8 = v51;
    v43 = v50;

    v10 = v56;
  }

  v54 = [v12 requestWithMethod:4 URL:v19 headers:&off_1003A12F0 parameters:v20];
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_1000064AC;
  v63[3] = &unk_10037F8E0;
  v63[4] = self;
  v6 = v60;
  v64 = v60;
  v65 = v10;
  [v54 resultWithCompletion:v63];

  v14 = v19;
  v15 = 0;
  v13 = v58;
LABEL_19:
}

- (void)processResult:(id)a3 error:(id)a4 forAccount:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    if (qword_1003D39F8 != -1)
    {
      sub_1002C725C();
    }

    v11 = qword_1003D39D8;
    if (os_log_type_enabled(qword_1003D39D8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(LoadInAppReceiptsTask *)self logKey];
      *buf = 138543618;
      v50 = v13;
      v51 = 2114;
      v52 = objc_opt_class();
      v14 = v52;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@]: Finished receipt request", buf, 0x16u);
    }

    v15 = [v8 object];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (qword_1003D39F8 != -1)
      {
        sub_1002C7344();
      }

      if (os_log_type_enabled(qword_1003D39D8, OS_LOG_TYPE_ERROR))
      {
        sub_1002C74AC();
      }

      v9 = ASDErrorWithTitleAndMessage();
      goto LABEL_51;
    }

    v16 = v15;
    v17 = [v16 objectForKeyedSubscript:@"signedTransactions"];
    v18 = [v16 objectForKeyedSubscript:@"revision"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (qword_1003D39F8 != -1)
      {
        sub_1002C7344();
      }

      if (os_log_type_enabled(qword_1003D39D8, OS_LOG_TYPE_ERROR))
      {
        sub_1002C754C();
      }

      v9 = ASDErrorWithTitleAndMessage();
      [(AsyncTask *)self completeWithError:v9];
      goto LABEL_50;
    }

    v46 = v17;
    v19 = v18;
    v20 = [v16 objectForKeyedSubscript:@"unfinishedTxnIds"];
    objc_opt_class();
    v48 = v20;
    if (objc_opt_isKindOfClass())
    {
      if (qword_1003D39F8 != -1)
      {
        sub_1002C7344();
      }

      v18 = v19;
      v21 = qword_1003D39D8;
      v17 = v46;
      if (os_log_type_enabled(qword_1003D39D8, OS_LOG_TYPE_DEFAULT))
      {
        loga = v21;
        v43 = [(LoadInAppReceiptsTask *)self logKey];
        v22 = objc_opt_class();
        v36 = v22;
        v23 = [v48 count];
        *buf = 138543874;
        v50 = v43;
        v51 = 2114;
        v52 = v22;
        v53 = 2048;
        v54 = v23;
        _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@]: Setting %lu unfinished transactions", buf, 0x20u);
      }

      v24 = [NSSet setWithArray:v48];
    }

    else
    {
      if (qword_1003D39F8 != -1)
      {
        sub_1002C7344();
      }

      v18 = v19;
      v25 = qword_1003D39D8;
      v17 = v46;
      if (os_log_type_enabled(qword_1003D39D8, OS_LOG_TYPE_DEFAULT))
      {
        v44 = v25;
        v26 = [(LoadInAppReceiptsTask *)self logKey];
        v27 = objc_opt_class();
        *buf = 138543618;
        v50 = v26;
        v51 = 2114;
        v52 = v27;
        logb = v27;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@]: Receipt response does not have unfinished transactions.", buf, 0x16u);
      }

      v24 = 0;
    }

    v45 = v24;
    log = (*(*(&self->_reason + 2) + 16))();
    *(&self->super._finished + 2) = *(&self->super._finished + 2);
    v28 = [v16 objectForKeyedSubscript:@"hasMore"];
    objc_opt_class();
    v47 = v28;
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v28 BOOLValue])
    {
      v29 = sub_100005D68();
      v30 = v29;
      if (log)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [(LoadInAppReceiptsTask *)self logKey];
          logc = [(LoadInAppReceiptsTask *)self client];
          v32 = [logc requestBundleID];
          *buf = 138543874;
          v50 = v31;
          v51 = 2114;
          v52 = v18;
          v53 = 2114;
          v54 = v32;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updated receipts to revision %{public}@. Syncing more receipts for %{public}@", buf, 0x20u);
        }

        [(LoadInAppReceiptsTask *)self _runRequestWithAccount:v10 revision:v18];
        goto LABEL_49;
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1002C75EC(self);
      }
    }

    else
    {
      if (qword_1003D39F8 != -1)
      {
        sub_1002C7344();
      }

      v33 = qword_1003D39D8;
      if (!os_log_type_enabled(qword_1003D39D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      logd = v33;
      v37 = [(LoadInAppReceiptsTask *)self logKey];
      v34 = [(LoadInAppReceiptsTask *)self client];
      v35 = [v34 requestBundleID];
      *buf = 138543874;
      v50 = v37;
      v51 = 2114;
      v52 = v18;
      v53 = 2114;
      v54 = v35;
      v30 = logd;
      _os_log_impl(&_mh_execute_header, logd, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updated receipts to revision %{public}@ for %{public}@", buf, 0x20u);
    }

LABEL_48:
    [(AsyncTask *)self completeWithSuccess];
LABEL_49:

    v9 = 0;
LABEL_50:

LABEL_51:
    goto LABEL_52;
  }

  if (qword_1003D39F8 != -1)
  {
    sub_1002C725C();
  }

  if (os_log_type_enabled(qword_1003D39D8, OS_LOG_TYPE_ERROR))
  {
    sub_1002C740C();
  }

  [(AsyncTask *)self completeWithError:v9];
LABEL_52:
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = [v8 options];
  v11 = [v10 authenticationType];

  if (v11 == 1)
  {
    if (qword_1003D39F8 != -1)
    {
      sub_1002C725C();
    }

    v12 = qword_1003D39D8;
    if (os_log_type_enabled(qword_1003D39D8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [(LoadInAppReceiptsTask *)self logKey];
      v15 = [(LoadInAppReceiptsTask *)self client];
      v16 = [v15 requestBundleID];
      v26 = 138543618;
      v27 = v14;
      v28 = 2114;
      v29 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Handling silent authentication request", &v26, 0x16u);
    }

    v17 = [_TtC9storekitd13DialogContext alloc];
    v18 = [(LoadInAppReceiptsTask *)self client];
    v19 = [v18 callerBundleID];
    v20 = [(LoadInAppReceiptsTask *)self client];
    v21 = [v20 callerBundleURL];
    v22 = [(LoadInAppReceiptsTask *)self client];
    v23 = [v22 processInfo];
    v24 = [(DialogContext *)v17 initWithBundleID:v19 bundleURL:v21 processInfo:v23 dialogObserver:0];

    v25 = [(LoadInAppReceiptsTask *)self logKey];
    [_TtC9storekitd19objc_AccountManager authenticateWithRequest:v8 dialogContext:v24 logKey:v25 completionHandler:v9];
  }
}

@end