@interface AssetSession
+ (id)defaultSession;
+ (void)obliterateBackgroundSessionsAndHandleEventStream;
- (AssetSession)init;
- (AssetSession)initWithConfiguration:(id)configuration;
- (id)_findSessionUsingTaskInfo:(id)info withProperties:(id)properties;
- (id)assetPromiseWithRequest:(id)request;
- (void)URLSession:(id)session _willRetryBackgroundDataTask:(id)task withError:(id)error;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)_completeNetworkActivityWithReason:(int)reason usingTaskInfo:(id)info;
- (void)_finishPromiseUsingTaskInfo:(id)info;
- (void)_prepareDataConsumerUsingTaskInfo:(id)info;
- (void)_prepareRequestUsingTaskInfo:(id)info;
- (void)_reportMetricsForTaskInfo:(id)info withCompletionError:(id)error;
- (void)_retryTaskUsingTaskInfo:(id)info;
- (void)_startNetworkActivityUsingTaskInfo:(id)info withTask:(id)task;
- (void)_startTaskUsingTaskInfo:(id)info withRequest:(id)request;
@end

@implementation AssetSession

+ (id)defaultSession
{
  if (qword_1003D4388 != -1)
  {
    sub_1002CE39C();
  }

  v3 = qword_1003D4390;

  return v3;
}

- (AssetSession)init
{
  v11.receiver = self;
  v11.super_class = AssetSession;
  v2 = [(AssetSession *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.storekit.AssetSession", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = objc_alloc_init(NSOperationQueue);
    delegateQueue = v2->_delegateQueue;
    v2->_delegateQueue = v6;

    [(NSOperationQueue *)v2->_delegateQueue setUnderlyingQueue:v2->_dispatchQueue];
    v8 = objc_alloc_init(NSMutableDictionary);
    sessions = v2->_sessions;
    v2->_sessions = v8;
  }

  return v2;
}

- (AssetSession)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [(AssetSession *)self init];
  if (v5)
  {
    v6 = [NSURLSession sessionWithConfiguration:configurationCopy delegate:v5 delegateQueue:v5->_delegateQueue];
    session = v5->_session;
    v5->_session = v6;
  }

  return v5;
}

+ (void)obliterateBackgroundSessionsAndHandleEventStream
{
  v2 = kNSURLSessionLaunchOnDemandNotificationName;
  v3 = dispatch_get_global_queue(17, 0);
  xpc_set_event_stream_handler(v2, v3, &stru_100382140);

  [NSURLSession _obliterateAllBackgroundSessionsWithCompletionHandler:&stru_100382160];
}

- (id)assetPromiseWithRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    copyRequestProperties = [requestCopy copyRequestProperties];
  }

  else
  {
    copyRequestProperties = objc_alloc_init(AssetRequestProperties);
  }

  v6 = copyRequestProperties;
  v7 = objc_alloc_init(AssetTaskInfo);
  [(AssetTaskInfo *)v7 setRequest:requestCopy];
  [(AssetTaskInfo *)v7 setProperties:v6];
  requestUUID = [(AssetRequestProperties *)v6 requestUUID];
  -[AssetTaskInfo setSignpostId:](v7, "setSignpostId:", [requestUUID lib_signpostId]);
  logKey = [(AssetRequestProperties *)v6 logKey];

  if (logKey)
  {
    logKey2 = [(AssetRequestProperties *)v6 logKey];
    lib_logUUID = [requestUUID lib_logUUID];
    v12 = [NSString stringWithFormat:@"%@/%@", logKey2, lib_logUUID];
    [(AssetTaskInfo *)v7 setLogKey:v12];
  }

  else
  {
    logKey2 = [requestUUID lib_logUUID];
    [(AssetTaskInfo *)v7 setLogKey:logKey2];
  }

  v13 = [NSProgress progressWithTotalUnitCount:[(AssetRequestProperties *)v6 expectedContentLength]];
  [(AssetTaskInfo *)v7 setProgress:v13];

  v14 = [AssetPromise alloc];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100050298;
  v19[3] = &unk_1003821B0;
  v20 = v7;
  v21 = requestCopy;
  selfCopy = self;
  v15 = requestCopy;
  v16 = v7;
  v17 = [(AssetPromise *)v14 initWithRequestID:requestUUID promiseBlock:v19];
  [(AssetTaskInfo *)v16 setPromise:v17];

  return v17;
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  taskCopy = task;
  dataCopy = data;
  v8 = [AssetTaskInfo taskInfoForTask:taskCopy];
  if (v8)
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEBUG))
    {
      if (qword_1003D43E0 != -1)
      {
        sub_1002CE3B0();
      }

      v9 = off_1003CB810;
      if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEBUG))
      {
        sub_1002CE3C4(v9, v8, taskCopy);
      }
    }

    progress = [v8 progress];
    [progress setCompletedUnitCount:{objc_msgSend(dataCopy, "length") + objc_msgSend(progress, "completedUnitCount")}];

    promise = [v8 promise];
    progress2 = [promise progress];

    if (progress2)
    {
      (progress2)[2](progress2, 1, [taskCopy countOfBytesReceived] + objc_msgSend(v8, "requestOffset"), objc_msgSend(taskCopy, "countOfBytesExpectedToReceive") + objc_msgSend(v8, "requestOffset"));
    }

    v13 = dispatch_semaphore_create(0);
    properties = [v8 properties];
    dataConsumer = [properties dataConsumer];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000509D8;
    v21[3] = &unk_1003821D8;
    v16 = taskCopy;
    v22 = v16;
    v17 = v8;
    v23 = v17;
    v18 = v13;
    v24 = v18;
    [dataConsumer consumeData:dataCopy withCompletionHandler:v21];
    v19 = dispatch_time(0, 300000000000);
    if (dispatch_semaphore_wait(v18, v19))
    {
      v20 = ASDErrorWithDescription();
      [v17 setError:v20];

      [v16 cancel];
    }
  }

  else
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
    {
      sub_1002CE4C4();
    }

    [taskCopy cancel];
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  asset_statusCode = [responseCopy asset_statusCode];
  v13 = [AssetTaskInfo taskInfoForTask:taskCopy];
  if (v13)
  {
    selfCopy = self;
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v14 = off_1003CB810;
    signpostId = [v13 signpostId];
    if ((signpostId - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = signpostId;
      if (os_signpost_enabled(v14))
      {
        logKey = [v13 logKey];
        *buf = 138543618;
        v77 = logKey;
        v78 = 2050;
        v79 = asset_statusCode;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "Download/Transfer", " uuid=%{public, signpost.description:attribute}@  status=%{public, signpost.description:attribute}ld ", buf, 0x16u);
      }
    }

    if (qword_1003D43E0 != -1)
    {
      sub_1002CE52C();
    }

    v18 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      logKey2 = [v13 logKey];
      *buf = 138543618;
      v77 = logKey2;
      v78 = 2114;
      v79 = responseCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received response: %{public}@", buf, 0x16u);
    }

    logKey3 = [v13 logKey];
    v22 = +[KeepAlive keepAliveWithFormat:](KeepAlive, "keepAliveWithFormat:", @"com.apple.storekit.AssetTask:%@-%lu", logKey3, [taskCopy taskIdentifier]);
    [v13 setKeepAlive:v22];

    asset_cdnUUID = [responseCopy asset_cdnUUID];
    v24 = asset_cdnUUID;
    if (asset_cdnUUID && [asset_cdnUUID length])
    {
      if (qword_1003D43E0 != -1)
      {
        sub_1002CE52C();
      }

      v25 = off_1003CB810;
      if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        logKey4 = [v13 logKey];
        *buf = 138543874;
        v77 = logKey4;
        v78 = 2114;
        v79 = taskCopy;
        v80 = 2114;
        v81 = v24;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Task: %{public}@ CDNUUID: %{public}@", buf, 0x20u);
      }
    }

    if (asset_statusCode > 399)
    {
      switch(asset_statusCode)
      {
        case 416:
          if (qword_1003D43E0 != -1)
          {
            sub_1002CE52C();
          }

          v48 = off_1003CB810;
          signpostId2 = [v13 signpostId];
          if ((signpostId2 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v50 = signpostId2;
            if (os_signpost_enabled(v48))
            {
              logKey5 = [v13 logKey];
              *buf = 138543618;
              v77 = logKey5;
              v78 = 2050;
              v79 = 416;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_EVENT, v50, "RequestRange", " uuid=%{public, signpost.description:attribute}@  status=%{public, signpost.description:attribute}ld ", buf, 0x16u);
            }
          }

          if (qword_1003D43E0 != -1)
          {
            sub_1002CE52C();
          }

          if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
          {
            sub_1002CE554();
          }

          properties = [v13 properties];
          dataConsumer = [properties dataConsumer];

          v67[0] = _NSConcreteStackBlock;
          v67[1] = 3221225472;
          v67[2] = sub_100052168;
          v67[3] = &unk_100380070;
          v67[4] = selfCopy;
          v68 = v13;
          v69 = taskCopy;
          v70 = handlerCopy;
          [dataConsumer truncateWithCompletionHandler:v67];

          goto LABEL_83;
        case 408:
          if (qword_1003D43E0 != -1)
          {
            sub_1002CE52C();
          }

          v44 = off_1003CB810;
          signpostId3 = [v13 signpostId];
          if ((signpostId3 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v46 = signpostId3;
            if (os_signpost_enabled(v44))
            {
              logKey6 = [v13 logKey];
              *buf = 138543618;
              v77 = logKey6;
              v78 = 2050;
              v79 = 408;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_EVENT, v46, "RequestTimeout", " uuid=%{public, signpost.description:attribute}@  status=%{public, signpost.description:attribute}ld ", buf, 0x16u);
            }
          }

          if (qword_1003D43E0 != -1)
          {
            sub_1002CE52C();
          }

          if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
          {
            sub_1002CE604();
          }

          [v13 setAction:1];
          break;
        case 403:
          if (qword_1003D43E0 != -1)
          {
            sub_1002CE52C();
          }

          v38 = off_1003CB810;
          signpostId4 = [v13 signpostId];
          if ((signpostId4 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v40 = signpostId4;
            if (os_signpost_enabled(v38))
            {
              logKey7 = [v13 logKey];
              *buf = 138543618;
              v77 = logKey7;
              v78 = 2050;
              v79 = 403;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_EVENT, v40, "RequestExpired", " uuid=%{public, signpost.description:attribute}@  status=%{public, signpost.description:attribute}ld ", buf, 0x16u);
            }
          }

          if (qword_1003D43E0 != -1)
          {
            sub_1002CE52C();
          }

          if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
          {
            sub_1002CE6B4();
          }

          v42 = ASDErrorWithDescription();
          [v13 setError:v42];

          break;
        default:
          if (qword_1003D43E0 != -1)
          {
            sub_1002CE52C();
          }

          v54 = off_1003CB810;
          signpostId5 = [v13 signpostId];
          if ((signpostId5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v56 = signpostId5;
            if (os_signpost_enabled(v54))
            {
              logKey8 = [v13 logKey];
              *buf = 138543618;
              v77 = logKey8;
              v78 = 2050;
              v79 = asset_statusCode;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v54, OS_SIGNPOST_EVENT, v56, "RequestStatus", " uuid=%{public, signpost.description:attribute}@  status=%{public, signpost.description:attribute}ld ", buf, 0x16u);
            }
          }

          if (qword_1003D43E0 != -1)
          {
            sub_1002CE52C();
          }

          v58 = off_1003CB810;
          if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
          {
            v64 = v58;
            logKey9 = [v13 logKey];
            *buf = 138543874;
            v77 = logKey9;
            v78 = 2114;
            v79 = taskCopy;
            v80 = 2048;
            v81 = asset_statusCode;
            _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "[%{public}@] Canceling task: %{public}@ after receiving invalid status code: %ld", buf, 0x20u);
          }

          v59 = [NSError errorWithDomain:@"AssetErrorDomain" code:asset_statusCode + 1000 userInfo:0];
          v60 = objc_claimAutoreleasedReturnValue();
          v61 = ASDErrorWithUnderlyingErrorAndDescription();
          [v13 setError:v61];

          (*(handlerCopy + 2))(handlerCopy, 0);
          goto LABEL_83;
      }

      (*(handlerCopy + 2))(handlerCopy, 0);
    }

    else
    {
      currentRequest = [taskCopy currentRequest];
      asset_rangeOffset = [currentRequest asset_rangeOffset];

      if (!asset_rangeOffset || asset_statusCode == 206)
      {
        promise = [v13 promise];
        progress = [promise progress];

        if (progress)
        {
          progress[2](progress, 0, [v13 requestOffset], objc_msgSend(taskCopy, "countOfBytesExpectedToReceive") + objc_msgSend(v13, "requestOffset"));
        }

        (*(handlerCopy + 2))(handlerCopy, 1);
      }

      else
      {
        if (qword_1003D43E0 != -1)
        {
          sub_1002CE52C();
        }

        v30 = off_1003CB810;
        signpostId6 = [v13 signpostId];
        if ((signpostId6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v32 = signpostId6;
          if (os_signpost_enabled(v30))
          {
            logKey10 = [v13 logKey];
            *buf = 138543618;
            v77 = logKey10;
            v78 = 2050;
            v79 = asset_statusCode;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_EVENT, v32, "ConsumerReset", " uuid=%{public, signpost.description:attribute}@  status=%{public, signpost.description:attribute}ld ", buf, 0x16u);
          }
        }

        if (qword_1003D43E0 != -1)
        {
          sub_1002CE52C();
        }

        v34 = off_1003CB810;
        if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
        {
          v62 = v34;
          logKey11 = [v13 logKey];
          *buf = 138543874;
          v77 = logKey11;
          v78 = 2114;
          v79 = taskCopy;
          v80 = 2048;
          v81 = asset_statusCode;
          _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "[%{public}@] Resetting data consumer for task: %{public}@ after receiving status code: %ld", buf, 0x20u);
        }

        properties2 = [v13 properties];
        dataConsumer2 = [properties2 dataConsumer];

        v71[0] = _NSConcreteStackBlock;
        v71[1] = 3221225472;
        v71[2] = sub_100051928;
        v71[3] = &unk_10037FF58;
        v71[4] = selfCopy;
        v72 = dataConsumer2;
        v73 = v13;
        v74 = taskCopy;
        v75 = handlerCopy;
        progress = dataConsumer2;
        [progress truncateWithCompletionHandler:v71];
      }
    }

LABEL_83:

    goto LABEL_84;
  }

  if (qword_1003D43E0 != -1)
  {
    sub_1002CE3B0();
  }

  if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
  {
    sub_1002CE764();
  }

  (*(handlerCopy + 2))(handlerCopy, 0);
LABEL_84:
}

- (void)URLSession:(id)session _willRetryBackgroundDataTask:(id)task withError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v8 = [AssetTaskInfo taskInfoForTask:taskCopy];
  v9 = v8;
  if (v8)
  {
    if ([v8 ignoreAssetCache])
    {
      if (qword_1003D43E0 != -1)
      {
        sub_1002CE3B0();
      }

      v10 = off_1003CB810;
      if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
      {
        v22 = v10;
        logKey = [v9 logKey];
        v26 = 138543874;
        v27 = logKey;
        v28 = 2114;
        v29 = taskCopy;
        v30 = 2114;
        v31 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%{public}@] Retry scheduled for task: %{public}@ error: %{public}@", &v26, 0x20u);
      }

      if (qword_1003D43E0 != -1)
      {
        sub_1002CE52C();
      }

      task = off_1003CB810;
      signpostId = [v9 signpostId];
      if ((signpostId - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = signpostId;
        if (os_signpost_enabled(task))
        {
          logKey2 = [v9 logKey];
          lib_shortDescription = [errorCopy lib_shortDescription];
          v26 = 138543618;
          v27 = logKey2;
          v28 = 2114;
          v29 = lib_shortDescription;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, task, OS_SIGNPOST_EVENT, v13, "WillRetry", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", &v26, 0x16u);
        }
      }
    }

    else
    {
      if (qword_1003D43E0 != -1)
      {
        sub_1002CE3B0();
      }

      v16 = off_1003CB810;
      if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
      {
        v24 = v16;
        logKey3 = [v9 logKey];
        v26 = 138543874;
        v27 = logKey3;
        v28 = 2114;
        v29 = taskCopy;
        v30 = 2114;
        v31 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%{public}@] Canceling task: %{public}@ after cache request failed with error: %{public}@", &v26, 0x20u);
      }

      if (qword_1003D43E0 != -1)
      {
        sub_1002CE52C();
      }

      v17 = off_1003CB810;
      signpostId2 = [v9 signpostId];
      if ((signpostId2 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v19 = signpostId2;
        if (os_signpost_enabled(v17))
        {
          logKey4 = [v9 logKey];
          lib_shortDescription2 = [errorCopy lib_shortDescription];
          v26 = 138543618;
          v27 = logKey4;
          v28 = 2114;
          v29 = lib_shortDescription2;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, v19, "CacheFail", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", &v26, 0x16u);
        }
      }

      [v9 setAction:1];
      [v9 setIgnoreAssetCache:1];
      task = [v9 task];
      [task cancel];
    }
  }

  else
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
    {
      sub_1002CE888();
    }

    [taskCopy cancel];
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v9 = [AssetTaskInfo taskInfoForTask:taskCopy];
  if (v9)
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v10 = off_1003CB810;
    signpostId = [v9 signpostId];
    if ((signpostId - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = signpostId;
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v12, "Download/Transfer", "", buf, 2u);
      }
    }

    if (qword_1003D43E0 != -1)
    {
      sub_1002CE52C();
    }

    v13 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      logKey = [v9 logKey];
      *buf = 138543618;
      v27 = logKey;
      v28 = 2114;
      v29 = taskCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completed task: %{public}@", buf, 0x16u);
    }

    action = [v9 action];
    if (errorCopy && !action)
    {
      if (([v9 ignoreAssetCache] & 1) == 0)
      {
        if (qword_1003D43E0 != -1)
        {
          sub_1002CE52C();
        }

        if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
        {
          sub_1002CE8F0();
        }

        [v9 setIgnoreAssetCache:1];
        [v9 setAction:1];
      }

      error = [v9 error];

      if (!error)
      {
        [v9 setError:errorCopy];
      }

      [(AssetSession *)self _completeNetworkActivityWithReason:3 usingTaskInfo:v9];
    }

    error2 = [v9 error];
    [(AssetSession *)self _reportMetricsForTaskInfo:v9 withCompletionError:error2];

    properties = [v9 properties];
    dataConsumer = [properties dataConsumer];

    if (errorCopy && [v9 action] != 2)
    {
      [(AssetSession *)self _completeNetworkActivityWithReason:4 usingTaskInfo:v9];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100052D58;
      v22[3] = &unk_100380188;
      v22[4] = self;
      v21 = &v23;
      v23 = v9;
      [dataConsumer suspendWithCompletionHandler:v22];
    }

    else
    {
      [(AssetSession *)self _completeNetworkActivityWithReason:2 usingTaskInfo:v9];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100052BF8;
      v24[3] = &unk_100380188;
      v24[4] = self;
      v21 = &v25;
      v25 = v9;
      [dataConsumer finishWithCompletionHandler:v24];
    }
  }

  else
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
    {
      sub_1002CE990();
    }
  }
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  taskCopy = task;
  metricsCopy = metrics;
  v8 = [AssetTaskInfo taskInfoForTask:taskCopy];
  if (v8)
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v9 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      logKey = [v8 logKey];
      *buf = 138543874;
      v33 = logKey;
      v34 = 2114;
      v35 = *&taskCopy;
      v36 = 2114;
      v37 = metricsCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] Collected metrics for task: %{public}@ metrics: %{public}@", buf, 0x20u);
    }

    v26 = taskCopy;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    transactionMetrics = [metricsCopy transactionMetrics];
    v13 = [transactionMetrics countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        v16 = 0;
        do
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(transactionMetrics);
          }

          v17 = *(*(&v27 + 1) + 8 * v16);
          lib_responseInterval = [v17 lib_responseInterval];
          if (lib_responseInterval)
          {
            if (qword_1003D43E0 != -1)
            {
              sub_1002CE52C();
            }

            v19 = off_1003CB810;
            if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
            {
              v20 = v19;
              logKey2 = [v8 logKey];
              countOfResponseBodyBytesReceived = [v17 countOfResponseBodyBytesReceived];
              [lib_responseInterval duration];
              *buf = 138543618;
              v33 = logKey2;
              v34 = 2048;
              v35 = countOfResponseBodyBytesReceived / v23;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Response body bytes received speed: %.0f", buf, 0x16u);
            }
          }

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [transactionMetrics countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v14);
    }

    metricsCopy = v25;
    [v8 setMetrics:v25];
    taskCopy = v26;
  }

  else
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v24 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v33 = taskCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Untracked task: %{public}@ did finish collecting metrics", buf, 0xCu);
    }
  }
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  taskCopy = task;
  challengeCopy = challenge;
  handlerCopy = handler;
  v11 = [AssetTaskInfo taskInfoForTask:taskCopy];
  if (v11)
  {
    protectionSpace = [challengeCopy protectionSpace];
    authenticationMethod = [protectionSpace authenticationMethod];
    if ([authenticationMethod isEqualToString:NSURLAuthenticationMethodClientCertificate])
    {
      if (qword_1003D43E0 != -1)
      {
        sub_1002CE3B0();
      }

      v14 = off_1003CB810;
      if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        logKey = [v11 logKey];
        *buf = 138543362;
        v40 = logKey;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Using client certificate for authentication challenge", buf, 0xCu);
      }

      handlerCopy[2](handlerCopy, 1, 0);
    }

    else if ([authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust])
    {
      error = 0;
      if (SecTrustEvaluateWithError([protectionSpace serverTrust], &error))
      {
        if (qword_1003D43E0 != -1)
        {
          sub_1002CE52C();
        }

        v17 = off_1003CB810;
        if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          logKey2 = [v11 logKey];
          *buf = 138543362;
          v40 = logKey2;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Using server trust for authentication challenge", buf, 0xCu);
        }

        v20 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [protectionSpace serverTrust]);
        (handlerCopy)[2](handlerCopy, 0, v20);
      }

      else
      {
        if (qword_1003D43E0 != -1)
        {
          sub_1002CE52C();
        }

        if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
        {
          sub_1002CEB4C();
        }

        handlerCopy[2](handlerCopy, 2, 0);
      }

      if (error)
      {
        CFRelease(error);
      }
    }

    else
    {
      properties = [v11 properties];
      allowsAuthentication = [properties allowsAuthentication];

      if (allowsAuthentication)
      {
        if (qword_1003D43E0 != -1)
        {
          sub_1002CE3B0();
        }

        v23 = off_1003CB810;
        if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
          logKey3 = [v11 logKey];
          *buf = 138543362;
          v40 = logKey3;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Prompting user for authentication challenge", buf, 0xCu);
        }

        v26 = [[AuthenticationChallenge alloc] initWithAuthenticationChallenge:challengeCopy];
        v27 = [AuthenticationChallengeDialogRequest dialogForAuthenticationChallenge:v26];
        v28 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v27];
        present = [v28 present];
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_100053774;
        v34[3] = &unk_1003822C8;
        v35 = v11;
        v36 = v26;
        v37 = handlerCopy;
        v30 = v26;
        [present addFinishBlock:v34];
      }

      else
      {
        if (qword_1003D43E0 != -1)
        {
          sub_1002CE3B0();
        }

        v31 = off_1003CB810;
        if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
        {
          v32 = v31;
          logKey4 = [v11 logKey];
          *buf = 138543362;
          v40 = logKey4;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Prompting for authentication is not permitted", buf, 0xCu);
        }

        handlerCopy[2](handlerCopy, 2, 0);
      }
    }
  }

  else
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
    {
      sub_1002CEBEC();
    }

    handlerCopy[2](handlerCopy, 2, 0);
  }
}

- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler
{
  taskCopy = task;
  connectionCopy = connection;
  handlerCopy = handler;
  v11 = [AssetTaskInfo taskInfoForTask:taskCopy];
  if (v11)
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v12 = off_1003CB810;
    signpostId = [v11 signpostId];
    if ((signpostId - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = signpostId;
      if (os_signpost_enabled(v12))
      {
        logKey = [v11 logKey];
        v21 = 138543362;
        v22 = logKey;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, v14, "TaskConnecting", " uuid=%{public, signpost.description:attribute}@ ", &v21, 0xCu);
      }
    }

    if (qword_1003D43E0 != -1)
    {
      sub_1002CE52C();
    }

    v16 = off_1003CB810;
    v17 = os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT);
    v18 = connectionCopy;
    if (v17)
    {
      v19 = v16;
      logKey2 = [v11 logKey];
      v21 = 138543618;
      v22 = logKey2;
      v23 = 2114;
      v24 = taskCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Task: %{public}@ will send request", &v21, 0x16u);

      v18 = connectionCopy;
    }
  }

  else
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
    {
      sub_1002CECE4();
    }

    v18 = 0;
  }

  (handlerCopy)[2](handlerCopy, v18);
}

- (void)_completeNetworkActivityWithReason:(int)reason usingTaskInfo:(id)info
{
  infoCopy = info;
  networkActivity = [infoCopy networkActivity];
  if (networkActivity)
  {
    nw_activity_complete_with_reason();
    [infoCopy setNetworkActivity:0];
  }
}

- (id)_findSessionUsingTaskInfo:(id)info withProperties:(id)properties
{
  infoCopy = info;
  propertiesCopy = properties;
  v8 = [NSURLSessionConfiguration asset_configurationIdentifierUsingProperties:propertiesCopy];
  [infoCopy setConfigurationID:v8];
  v9 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v8];
  maximumWatchCellularTransferSize = [v9 maximumWatchCellularTransferSize];
  if (maximumWatchCellularTransferSize)
  {
    v11 = maximumWatchCellularTransferSize;
    maximumWatchCellularTransferSize2 = [v9 maximumWatchCellularTransferSize];
    unsignedLongLongValue = [maximumWatchCellularTransferSize2 unsignedLongLongValue];
    expectedContentLength = [propertiesCopy expectedContentLength];

    if (unsignedLongLongValue < expectedContentLength)
    {
      if (qword_1003D43E0 != -1)
      {
        sub_1002CE3B0();
      }

      v15 = off_1003CB810;
      if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        logKey = [infoCopy logKey];
        maximumWatchCellularTransferSize3 = [v9 maximumWatchCellularTransferSize];
        *buf = 138543874;
        v39 = logKey;
        v40 = 2048;
        unsignedLongLongValue2 = [maximumWatchCellularTransferSize3 unsignedLongLongValue];
        v42 = 2048;
        expectedContentLength2 = [propertiesCopy expectedContentLength];
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Creating new session because download exceeds maximum watch cellular transfer size for existing session (Max: %lld, Download: %lld)", buf, 0x20u);
      }

      goto LABEL_15;
    }
  }

  if (!v9)
  {
LABEL_15:
    discretionaryType = [propertiesCopy discretionaryType];
    if (discretionaryType)
    {
      [NSURLSessionConfiguration asset_backgroundSessionConfigurationUsingProperties:propertiesCopy];
    }

    else
    {
      [NSURLSessionConfiguration asset_ephemeralSessionConfigurationUsingProperties:propertiesCopy];
    }
    identifier3 = ;
    v28 = [NSURLSession sessionWithConfiguration:identifier3 delegate:self delegateQueue:self->_delegateQueue];
    maximumWatchCellularTransferSize4 = [propertiesCopy maximumWatchCellularTransferSize];
    v9 = [CachedURLSession cachedSession:v28 maximumWatchCellularTransferSize:maximumWatchCellularTransferSize4];
    [(NSMutableDictionary *)self->_sessions setObject:v9 forKeyedSubscript:v8];

    if (qword_1003D43E0 != -1)
    {
      sub_1002CE52C();
    }

    v31 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      logKey2 = [infoCopy logKey];
      if (discretionaryType)
      {
        v34 = "background";
      }

      else
      {
        v34 = "ephemeral";
      }

      identifier = [identifier3 identifier];
      *buf = 138544130;
      v39 = logKey2;
      v40 = 2080;
      unsignedLongLongValue2 = v34;
      v42 = 2114;
      expectedContentLength2 = identifier;
      v44 = 2114;
      v45 = v8;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Created new %s session with identifier: %{public}@ (%{public}@)", buf, 0x2Au);
    }

    goto LABEL_25;
  }

  if (qword_1003D43E0 != -1)
  {
    sub_1002CE3B0();
  }

  v19 = off_1003CB810;
  if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    logKey3 = [infoCopy logKey];
    session = [v9 session];
    configuration = [session configuration];
    identifier2 = [configuration identifier];
    *buf = 138543874;
    v39 = logKey3;
    v40 = 2114;
    unsignedLongLongValue2 = identifier2;
    v42 = 2114;
    expectedContentLength2 = v8;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Reusing existing session with identifier: %{public}@ (%{public}@)", buf, 0x20u);
  }

  session2 = [v9 session];
  configuration2 = [session2 configuration];
  identifier3 = [configuration2 identifier];

  if (identifier3)
  {
    v28 = [identifier3 stringByAppendingFormat:@" (%@)", v8];
    [infoCopy setConfigurationID:v28];
LABEL_25:
  }

  session3 = [v9 session];

  return session3;
}

- (void)_finishPromiseUsingTaskInfo:(id)info
{
  infoCopy = info;
  if (qword_1003D43E0 != -1)
  {
    sub_1002CE3B0();
  }

  v4 = off_1003CB810;
  signpostId = [infoCopy signpostId];
  if ((signpostId - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = signpostId;
    if (os_signpost_enabled(v4))
    {
      LOWORD(v20) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v6, "Download", "", &v20, 2u);
    }
  }

  [infoCopy setKeepAlive:0];
  if (qword_1003D43E0 != -1)
  {
    sub_1002CE52C();
  }

  v7 = off_1003CB810;
  if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    logKey = [infoCopy logKey];
    v20 = 138543362;
    v21 = logKey;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finishing asset promise", &v20, 0xCu);
  }

  promise = [infoCopy promise];
  if ([promise isFinished])
  {
    if (([promise isCancelled] & 1) == 0)
    {
      if (qword_1003D43E0 != -1)
      {
        sub_1002CE52C();
      }

      v11 = off_1003CB810;
      if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_FAULT))
      {
        sub_1002CED4C(v11);
      }
    }
  }

  else
  {
    v12 = objc_alloc_init(AssetResult);
    -[AssetResult setBytesReceived:](v12, "setBytesReceived:", [infoCopy bytesReceived]);
    properties = [infoCopy properties];
    dataConsumer = [properties dataConsumer];
    [(AssetResult *)v12 setDataConsumer:dataConsumer];

    error = [infoCopy error];
    [(AssetResult *)v12 setError:error];

    metrics = [infoCopy metrics];
    [(AssetResult *)v12 setMetrics:metrics];

    [promise finishWithResult:v12];
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE52C();
    }

    v17 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      logKey2 = [infoCopy logKey];
      v20 = 138543362;
      v21 = logKey2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished asset promise", &v20, 0xCu);
    }
  }

  [AssetTaskInfo removeTaskInfo:infoCopy];
}

- (void)_reportMetricsForTaskInfo:(id)info withCompletionError:(id)error
{
  infoCopy = info;
  errorCopy = error;
  v7 = [AMSMetricsLoadURLContext alloc];
  task = [infoCopy task];
  metrics = [infoCopy metrics];
  v10 = [v7 initWithTask:task metrics:metrics];

  v11 = +[_TtC9storekitd3Bag defaultBag];
  [v10 setBag:v11];

  [v10 setError:errorCopy];
  session = [infoCopy session];
  [v10 setSession:session];

  v13 = [AMSMetricsLoadURLEvent shouldCollectMetricsPromiseForContext:v10];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100054674;
  v16[3] = &unk_100382318;
  v17 = infoCopy;
  v18 = v10;
  v14 = v10;
  v15 = infoCopy;
  [v13 resultWithCompletion:v16];
}

- (void)_retryTaskUsingTaskInfo:(id)info
{
  infoCopy = info;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (qword_1003D43E0 != -1)
  {
    sub_1002CE3B0();
  }

  v5 = off_1003CB810;
  signpostId = [infoCopy signpostId];
  if ((signpostId - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = signpostId;
    if (os_signpost_enabled(v5))
    {
      logKey = [infoCopy logKey];
      *buf = 138543362;
      v18 = logKey;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, v7, "Retry", " uuid=%{public, signpost.description:attribute}@ ", buf, 0xCu);
    }
  }

  if (qword_1003D43E0 != -1)
  {
    sub_1002CE52C();
  }

  v9 = off_1003CB810;
  if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    logKey2 = [infoCopy logKey];
    *buf = 138543362;
    v18 = logKey2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Retrying request", buf, 0xCu);
  }

  [infoCopy setAction:0];
  [infoCopy setError:0];
  [infoCopy setKeepAlive:0];
  properties = [infoCopy properties];
  dataConsumer = [properties dataConsumer];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100054BD4;
  v15[3] = &unk_100380188;
  v15[4] = self;
  v16 = infoCopy;
  v14 = infoCopy;
  [dataConsumer resetWithCompletionHandler:v15];
}

- (void)_prepareDataConsumerUsingTaskInfo:(id)info
{
  infoCopy = info;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([infoCopy action] == 3)
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v5 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
    {
      sub_1002CF050(v5);
    }

    [(AssetSession *)self _finishPromiseUsingTaskInfo:infoCopy];
  }

  else
  {
    properties = [infoCopy properties];
    dataConsumer = [properties dataConsumer];

    if (dataConsumer)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100055000;
      v16[3] = &unk_100382340;
      v16[4] = self;
      v17 = infoCopy;
      [dataConsumer prepareWithCompletionHandler:v16];
    }

    else
    {
      v8 = ASDErrorWithDescription();
      [infoCopy setError:v8];

      if (qword_1003D43E0 != -1)
      {
        sub_1002CE3B0();
      }

      v9 = off_1003CB810;
      signpostId = [infoCopy signpostId];
      if ((signpostId - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v11 = signpostId;
        if (os_signpost_enabled(v9))
        {
          logKey = [infoCopy logKey];
          error = [infoCopy error];
          lib_shortDescription = [error lib_shortDescription];
          *buf = 138543618;
          v19 = logKey;
          v20 = 2114;
          v21 = lib_shortDescription;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, v11, "ConsumerError", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", buf, 0x16u);
        }
      }

      if (qword_1003D43E0 != -1)
      {
        sub_1002CE52C();
      }

      v15 = off_1003CB810;
      if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
      {
        sub_1002CEFC0(v15);
      }

      [(AssetSession *)self _finishPromiseUsingTaskInfo:infoCopy];
    }
  }
}

- (void)_prepareRequestUsingTaskInfo:(id)info
{
  infoCopy = info;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([infoCopy action] == 3)
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v5 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
    {
      sub_1002CF050(v5);
    }

    [(AssetSession *)self _finishPromiseUsingTaskInfo:infoCopy];
  }

  else
  {
    properties = [infoCopy properties];
    if (([infoCopy ignoreAssetCache] & 1) != 0 || !objc_msgSend(properties, "locateAssetCache"))
    {
      [infoCopy setIgnoreAssetCache:1];
      request = [infoCopy request];
      [(AssetSession *)self _startTaskUsingTaskInfo:infoCopy withRequest:request];
    }

    else
    {
      request2 = [infoCopy request];
      v8 = [request2 URL];
      v10 = infoCopy;
      ACSLocateCachingServer();
    }
  }
}

- (void)_startNetworkActivityUsingTaskInfo:(id)info withTask:(id)task
{
  infoCopy = info;
  taskCopy = task;
  properties = [infoCopy properties];
  requestReason = [properties requestReason];

  if (requestReason <= 9 && (((1 << requestReason) & 0x35E) != 0 || requestReason == 5 || requestReason == 7))
  {
    v9 = nw_activity_create();
    if (v9)
    {
      if (qword_1003D43E0 != -1)
      {
        sub_1002CE3B0();
      }

      v10 = off_1003CB810;
      if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_INFO))
      {
        v11 = v10;
        logKey = [infoCopy logKey];
        v14 = 138543618;
        v15 = logKey;
        v16 = 2114;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] Activating network activity: %{public}@", &v14, 0x16u);
      }

      nw_activity_activate();
      [taskCopy set_nw_activity:v9];
      [infoCopy setNetworkActivity:v9];
    }
  }

  else if (requestReason)
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
    {
      sub_1002CF2B0();
    }
  }

  else
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v13 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
    {
      sub_1002CF220(v13);
    }
  }
}

- (void)_startTaskUsingTaskInfo:(id)info withRequest:(id)request
{
  infoCopy = info;
  requestCopy = request;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([infoCopy action] == 3)
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v8 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
    {
      sub_1002CF050(v8);
    }

    [(AssetSession *)self _finishPromiseUsingTaskInfo:infoCopy];
  }

  else
  {
    properties = [infoCopy properties];
    v59 = [[NSMutableURLRequest alloc] _initWithCFURLRequest:{objc_msgSend(requestCopy, "_CFURLRequest")}];
    hTTPUserAgent = [v59 HTTPUserAgent];

    if (!hTTPUserAgent)
    {
      v10 = +[AMSProcessInfo currentProcess];
      v11 = [AMSUserAgent userAgentForProcessInfo:v10];
      [v59 setHTTPUserAgent:v11];
    }

    if ([infoCopy requestOffset])
    {
      [v59 asset_setRangeOffset:{objc_msgSend(infoCopy, "requestOffset")}];
    }

    v12 = sub_100004020([properties requestReason]);
    if (v12)
    {
      [v59 setValue:v12 forHTTPHeaderField:@"Apple-Download-Type"];
    }

    if (self->_session)
    {
      [infoCopy setSession:?];
    }

    session = [infoCopy session];

    if (!session)
    {
      v14 = [(AssetSession *)self _findSessionUsingTaskInfo:infoCopy withProperties:properties];
      [infoCopy setSession:v14];
    }

    session2 = [infoCopy session];

    if (session2)
    {
      session3 = [infoCopy session];
      v17 = [session3 dataTaskWithRequest:v59];

      if (v17)
      {
        [(AssetSession *)self _startNetworkActivityUsingTaskInfo:infoCopy withTask:v17];
        if (qword_1003D43E0 != -1)
        {
          sub_1002CE3B0();
        }

        v18 = off_1003CB810;
        signpostId = [infoCopy signpostId];
        if ((signpostId - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v20 = signpostId;
          if (os_signpost_enabled(v18))
          {
            logKey = [infoCopy logKey];
            v22 = [requestCopy URL];
            *buf = 138543618;
            v66 = logKey;
            v67 = 2114;
            v68 = v22;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_EVENT, v20, "TaskCreated", " uuid=%{public, signpost.description:attribute}@  request=%{public, signpost.description:attribute}@ ", buf, 0x16u);
          }
        }

        if (qword_1003D43E0 != -1)
        {
          sub_1002CE52C();
        }

        v23 = off_1003CB810;
        if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
          logKey2 = [infoCopy logKey];
          configurationID = [infoCopy configurationID];
          v27 = [requestCopy URL];
          *buf = 138544130;
          v66 = logKey2;
          v67 = 2114;
          v68 = v17;
          v69 = 2114;
          v70 = configurationID;
          v71 = 2114;
          v72 = v27;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Created task: %{public}@ in session: %{public}@ for URL: %{public}@ ", buf, 0x2Au);
        }

        [AssetTaskInfo recordTaskInfo:infoCopy forTask:v17];
        taskPriority = [properties taskPriority];

        if (taskPriority)
        {
          taskPriority2 = [properties taskPriority];
          [v17 set_priority:{objc_msgSend(taskPriority2, "longLongValue")}];
        }

        else
        {
          if (qword_1003D43E0 != -1)
          {
            sub_1002CE52C();
          }

          v42 = off_1003CB810;
          if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
          {
            sub_1002CF35C(v42);
          }

          LODWORD(v43) = 1137180672;
          [v17 setPriority:v43];
        }

        bytesPerSecondLimit = [properties bytesPerSecondLimit];

        if (bytesPerSecondLimit)
        {
          bytesPerSecondLimit2 = [properties bytesPerSecondLimit];
          [v17 set_bytesPerSecondLimit:{objc_msgSend(bytesPerSecondLimit2, "longLongValue")}];
        }

        loadingPriority = [properties loadingPriority];

        if (loadingPriority)
        {
          loadingPriority2 = [properties loadingPriority];
          [loadingPriority2 doubleValue];
          [v17 set_loadingPriority:?];
        }

        qosClass = [properties qosClass];
        if (!qosClass)
        {
          if (qword_1003D43E0 != -1)
          {
            sub_1002CE52C();
          }

          v49 = off_1003CB810;
          if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
          {
            sub_1002CF3EC(v49);
          }

          qosClass = 17;
        }

        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_100056208;
        v61[3] = &unk_1003822A0;
        v50 = infoCopy;
        v62 = v50;
        v63 = requestCopy;
        v64 = v17;
        v51 = objc_retainBlock(v61);
        properties2 = [v50 properties];
        externalID = [properties2 externalID];

        if (externalID)
        {
          v54 = +[VoucherStore sharedInstance];
          properties3 = [v50 properties];
          [properties3 externalID];
          v56 = requestCopy;
          v58 = v57 = v12;
          [v54 usingVoucherForExternalID:v58 applyQOSClass:qosClass executeBlock:v51];

          v12 = v57;
          requestCopy = v56;
        }

        else
        {
          v54 = dispatch_get_global_queue(qosClass, 0);
          dispatch_async(v54, v51);
        }
      }

      else
      {
        if (qword_1003D43E0 != -1)
        {
          sub_1002CE3B0();
        }

        v36 = off_1003CB810;
        signpostId2 = [infoCopy signpostId];
        if ((signpostId2 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v38 = signpostId2;
          if (os_signpost_enabled(v36))
          {
            logKey3 = [infoCopy logKey];
            v40 = [requestCopy URL];
            *buf = 138543618;
            v66 = logKey3;
            v67 = 2114;
            v68 = v40;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_EVENT, v38, "TaskError", " uuid=%{public, signpost.description:attribute}@  request=%{public, signpost.description:attribute}@ ", buf, 0x16u);
          }
        }

        if (qword_1003D43E0 != -1)
        {
          sub_1002CE52C();
        }

        if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
        {
          sub_1002CF47C();
        }

        v41 = [NSError errorWithDomain:@"AssetErrorDomain" code:5 userInfo:0];
        [infoCopy setError:v41];

        [(AssetSession *)self _finishPromiseUsingTaskInfo:infoCopy];
      }
    }

    else
    {
      if (qword_1003D43E0 != -1)
      {
        sub_1002CE3B0();
      }

      v30 = off_1003CB810;
      signpostId3 = [infoCopy signpostId];
      if ((signpostId3 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v32 = signpostId3;
        if (os_signpost_enabled(v30))
        {
          logKey4 = [infoCopy logKey];
          v34 = [requestCopy URL];
          *buf = 138543618;
          v66 = logKey4;
          v67 = 2114;
          v68 = v34;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_EVENT, v32, "SessionError", " uuid=%{public, signpost.description:attribute}@  request=%{public, signpost.description:attribute}@ ", buf, 0x16u);
        }
      }

      if (qword_1003D43E0 != -1)
      {
        sub_1002CE52C();
      }

      if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
      {
        sub_1002CF52C();
      }

      v35 = [NSError errorWithDomain:@"AssetErrorDomain" code:4 userInfo:0];
      [infoCopy setError:v35];

      [(AssetSession *)self _finishPromiseUsingTaskInfo:infoCopy];
    }
  }
}

@end