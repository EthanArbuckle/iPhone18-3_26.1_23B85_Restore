@interface LoadInAppReceiptsTask
- (LoadInAppReceiptsTask)initWithLocalRevision:(id)revision reason:(int64_t)reason includeFinishedConsumables:(BOOL)consumables client:(id)client;
- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)_runRequestWithAccount:(id)account revision:(id)revision;
- (void)main;
- (void)processResult:(id)result error:(id)error forAccount:(id)account;
@end

@implementation LoadInAppReceiptsTask

- (LoadInAppReceiptsTask)initWithLocalRevision:(id)revision reason:(int64_t)reason includeFinishedConsumables:(BOOL)consumables client:(id)client
{
  revisionCopy = revision;
  clientCopy = client;
  v18.receiver = self;
  v18.super_class = LoadInAppReceiptsTask;
  v13 = [(Task *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong((v13 + 50), client);
    v14[43] = 0;
    v14[42] = consumables;
    objc_storeStrong((v14 + 58), revision);
    v15 = +[NSUUID lib_shortLogKey];
    v16 = *(v14 + 66);
    *(v14 + 66) = v15;

    *(v14 + 74) = reason;
  }

  return v14;
}

- (void)main
{
  client = [(LoadInAppReceiptsTask *)self client];
  objc_clientType = [client objc_clientType];

  if (objc_clientType == 3)
  {
    localRevision = [(LoadInAppReceiptsTask *)self localRevision];
    [(LoadInAppReceiptsTask *)self _runRequestWithAccount:0 revision:localRevision];
  }

  else
  {
    client2 = [(LoadInAppReceiptsTask *)self client];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100005C2C;
    v7[3] = &unk_10037F890;
    v7[4] = self;
    [_TtC9storekitd19objc_AccountManager accountWithClient:client2 completionHandler:v7];
  }
}

- (void)_runRequestWithAccount:(id)account revision:(id)revision
{
  accountCopy = account;
  revisionCopy = revision;
  client = [(LoadInAppReceiptsTask *)self client];
  v8 = [client bag];

  client2 = [(LoadInAppReceiptsTask *)self client];
  urlSession = [client2 urlSession];

  [urlSession setDelegate:self];
  client3 = [(LoadInAppReceiptsTask *)self client];
  urlRequestEncoder = [client3 urlRequestEncoder];

  [urlRequestEncoder setRequestEncoding:3];
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
  client4 = [(LoadInAppReceiptsTask *)self client];
  if ([client4 storeItemID])
  {
  }

  else
  {
    client5 = [(LoadInAppReceiptsTask *)self client];
    [client5 requestBundleID];
    v23 = urlRequestEncoder;
    v24 = urlSession;
    v25 = v8;
    v26 = v19;
    v28 = v27 = accountCopy;
    v59 = [v28 caseInsensitiveCompare:@"com.apple.freeform"];

    accountCopy = v27;
    v19 = v26;
    v8 = v25;
    urlSession = v24;
    urlRequestEncoder = v23;

    if (!v59)
    {
      storeItemID = 0x18013B54BLL;
      goto LABEL_14;
    }
  }

  client6 = [(LoadInAppReceiptsTask *)self client];
  storeItemID = [client6 storeItemID];

LABEL_14:
  v60 = accountCopy;
  ams_DSID = [accountCopy ams_DSID];
  stringValue = [ams_DSID stringValue];
  [v20 setObject:stringValue forKeyedSubscript:@"dsid"];

  v33 = [NSString stringWithFormat:@"%lld", storeItemID];
  [v20 setObject:v33 forKeyedSubscript:@"appAdamId"];

  client7 = [(LoadInAppReceiptsTask *)self client];
  requestBundleID = [client7 requestBundleID];
  [v20 setObject:requestBundleID forKeyedSubscript:@"bundleId"];

  client8 = [(LoadInAppReceiptsTask *)self client];
  deviceVendorID = [client8 deviceVendorID];
  uUIDString = [deviceVendorID UUIDString];
  lowercaseString = [uUIDString lowercaseString];
  [v20 setObject:lowercaseString forKeyedSubscript:@"deviceVerification"];

  v40 = +[AMSDevice deviceGUID];
  [v20 setObject:v40 forKeyedSubscript:@"guid"];

  v41 = sub_100028E70([(LoadInAppReceiptsTask *)self reason]);
  [v20 setObject:v41 forKeyedSubscript:@"reason"];

  [v20 setObject:revisionCopy forKeyedSubscript:@"revision"];
  v42 = +[_TtC9storekitd6BagKey transactionReceiptsMaxCount];
  v43 = [v8 integerForKey:v42];

  v44 = [v43 valueWithError:0];
  stringValue2 = [v44 stringValue];
  [v20 setObject:stringValue2 forKeyedSubscript:@"limit"];

  if (qword_1003D39F8 != -1)
  {
    sub_1002C7344();
  }

  v46 = qword_1003D39D8;
  if (os_log_type_enabled(qword_1003D39D8, OS_LOG_TYPE_DEFAULT))
  {
    v47 = v46;
    logKey = [(LoadInAppReceiptsTask *)self logKey];
    v49 = objc_opt_class();
    v55 = v49;
    v56 = urlSession;
    [(LoadInAppReceiptsTask *)self localRevision];
    v50 = v43;
    v51 = v8;
    v53 = v52 = v19;
    *buf = 138543874;
    v68 = logKey;
    v69 = 2114;
    v70 = v49;
    v71 = 2114;
    v72 = v53;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@]: Starting receipt request from revision %{public}@", buf, 0x20u);

    v19 = v52;
    v8 = v51;
    v43 = v50;

    urlSession = v56;
  }

  v54 = [urlRequestEncoder requestWithMethod:4 URL:v19 headers:&off_1003A12F0 parameters:v20];
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_1000064AC;
  v63[3] = &unk_10037F8E0;
  v63[4] = self;
  accountCopy = v60;
  v64 = v60;
  v65 = urlSession;
  [v54 resultWithCompletion:v63];

  v14 = v19;
  v15 = 0;
  v13 = v58;
LABEL_19:
}

- (void)processResult:(id)result error:(id)error forAccount:(id)account
{
  resultCopy = result;
  errorCopy = error;
  accountCopy = account;
  if (!errorCopy)
  {
    if (qword_1003D39F8 != -1)
    {
      sub_1002C725C();
    }

    v11 = qword_1003D39D8;
    if (os_log_type_enabled(qword_1003D39D8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      logKey = [(LoadInAppReceiptsTask *)self logKey];
      *buf = 138543618;
      v50 = logKey;
      v51 = 2114;
      v52 = objc_opt_class();
      v14 = v52;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@]: Finished receipt request", buf, 0x16u);
    }

    object = [resultCopy object];
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

      errorCopy = ASDErrorWithTitleAndMessage();
      goto LABEL_51;
    }

    v16 = object;
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

      errorCopy = ASDErrorWithTitleAndMessage();
      [(AsyncTask *)self completeWithError:errorCopy];
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
        logKey2 = [(LoadInAppReceiptsTask *)self logKey];
        v22 = objc_opt_class();
        v36 = v22;
        v23 = [v48 count];
        *buf = 138543874;
        v50 = logKey2;
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
        logKey3 = [(LoadInAppReceiptsTask *)self logKey];
        v27 = objc_opt_class();
        *buf = 138543618;
        v50 = logKey3;
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
          logKey4 = [(LoadInAppReceiptsTask *)self logKey];
          logc = [(LoadInAppReceiptsTask *)self client];
          requestBundleID = [logc requestBundleID];
          *buf = 138543874;
          v50 = logKey4;
          v51 = 2114;
          v52 = v18;
          v53 = 2114;
          v54 = requestBundleID;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updated receipts to revision %{public}@. Syncing more receipts for %{public}@", buf, 0x20u);
        }

        [(LoadInAppReceiptsTask *)self _runRequestWithAccount:accountCopy revision:v18];
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
      logKey5 = [(LoadInAppReceiptsTask *)self logKey];
      client = [(LoadInAppReceiptsTask *)self client];
      requestBundleID2 = [client requestBundleID];
      *buf = 138543874;
      v50 = logKey5;
      v51 = 2114;
      v52 = v18;
      v53 = 2114;
      v54 = requestBundleID2;
      v30 = logd;
      _os_log_impl(&_mh_execute_header, logd, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updated receipts to revision %{public}@ for %{public}@", buf, 0x20u);
    }

LABEL_48:
    [(AsyncTask *)self completeWithSuccess];
LABEL_49:

    errorCopy = 0;
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

  [(AsyncTask *)self completeWithError:errorCopy];
LABEL_52:
}

- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  options = [requestCopy options];
  authenticationType = [options authenticationType];

  if (authenticationType == 1)
  {
    if (qword_1003D39F8 != -1)
    {
      sub_1002C725C();
    }

    v12 = qword_1003D39D8;
    if (os_log_type_enabled(qword_1003D39D8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      logKey = [(LoadInAppReceiptsTask *)self logKey];
      client = [(LoadInAppReceiptsTask *)self client];
      requestBundleID = [client requestBundleID];
      v26 = 138543618;
      v27 = logKey;
      v28 = 2114;
      v29 = requestBundleID;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Handling silent authentication request", &v26, 0x16u);
    }

    v17 = [_TtC9storekitd13DialogContext alloc];
    client2 = [(LoadInAppReceiptsTask *)self client];
    callerBundleID = [client2 callerBundleID];
    client3 = [(LoadInAppReceiptsTask *)self client];
    callerBundleURL = [client3 callerBundleURL];
    client4 = [(LoadInAppReceiptsTask *)self client];
    processInfo = [client4 processInfo];
    v24 = [(DialogContext *)v17 initWithBundleID:callerBundleID bundleURL:callerBundleURL processInfo:processInfo dialogObserver:0];

    logKey2 = [(LoadInAppReceiptsTask *)self logKey];
    [_TtC9storekitd19objc_AccountManager authenticateWithRequest:requestCopy dialogContext:v24 logKey:logKey2 completionHandler:completionCopy];
  }
}

@end