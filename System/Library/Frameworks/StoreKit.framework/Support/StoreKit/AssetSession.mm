@interface AssetSession
+ (id)defaultSession;
+ (void)obliterateBackgroundSessionsAndHandleEventStream;
- (AssetSession)init;
- (AssetSession)initWithConfiguration:(id)a3;
- (id)_findSessionUsingTaskInfo:(id)a3 withProperties:(id)a4;
- (id)assetPromiseWithRequest:(id)a3;
- (void)URLSession:(id)a3 _willRetryBackgroundDataTask:(id)a4 withError:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 _willSendRequestForEstablishedConnection:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)_completeNetworkActivityWithReason:(int)a3 usingTaskInfo:(id)a4;
- (void)_finishPromiseUsingTaskInfo:(id)a3;
- (void)_prepareDataConsumerUsingTaskInfo:(id)a3;
- (void)_prepareRequestUsingTaskInfo:(id)a3;
- (void)_reportMetricsForTaskInfo:(id)a3 withCompletionError:(id)a4;
- (void)_retryTaskUsingTaskInfo:(id)a3;
- (void)_startNetworkActivityUsingTaskInfo:(id)a3 withTask:(id)a4;
- (void)_startTaskUsingTaskInfo:(id)a3 withRequest:(id)a4;
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

- (AssetSession)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(AssetSession *)self init];
  if (v5)
  {
    v6 = [NSURLSession sessionWithConfiguration:v4 delegate:v5 delegateQueue:v5->_delegateQueue];
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

- (id)assetPromiseWithRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 copyRequestProperties];
  }

  else
  {
    v5 = objc_alloc_init(AssetRequestProperties);
  }

  v6 = v5;
  v7 = objc_alloc_init(AssetTaskInfo);
  [(AssetTaskInfo *)v7 setRequest:v4];
  [(AssetTaskInfo *)v7 setProperties:v6];
  v8 = [(AssetRequestProperties *)v6 requestUUID];
  -[AssetTaskInfo setSignpostId:](v7, "setSignpostId:", [v8 lib_signpostId]);
  v9 = [(AssetRequestProperties *)v6 logKey];

  if (v9)
  {
    v10 = [(AssetRequestProperties *)v6 logKey];
    v11 = [v8 lib_logUUID];
    v12 = [NSString stringWithFormat:@"%@/%@", v10, v11];
    [(AssetTaskInfo *)v7 setLogKey:v12];
  }

  else
  {
    v10 = [v8 lib_logUUID];
    [(AssetTaskInfo *)v7 setLogKey:v10];
  }

  v13 = [NSProgress progressWithTotalUnitCount:[(AssetRequestProperties *)v6 expectedContentLength]];
  [(AssetTaskInfo *)v7 setProgress:v13];

  v14 = [AssetPromise alloc];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100050298;
  v19[3] = &unk_1003821B0;
  v20 = v7;
  v21 = v4;
  v22 = self;
  v15 = v4;
  v16 = v7;
  v17 = [(AssetPromise *)v14 initWithRequestID:v8 promiseBlock:v19];
  [(AssetTaskInfo *)v16 setPromise:v17];

  return v17;
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = [AssetTaskInfo taskInfoForTask:v6];
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
        sub_1002CE3C4(v9, v8, v6);
      }
    }

    v10 = [v8 progress];
    [v10 setCompletedUnitCount:{objc_msgSend(v7, "length") + objc_msgSend(v10, "completedUnitCount")}];

    v11 = [v8 promise];
    v12 = [v11 progress];

    if (v12)
    {
      (v12)[2](v12, 1, [v6 countOfBytesReceived] + objc_msgSend(v8, "requestOffset"), objc_msgSend(v6, "countOfBytesExpectedToReceive") + objc_msgSend(v8, "requestOffset"));
    }

    v13 = dispatch_semaphore_create(0);
    v14 = [v8 properties];
    v15 = [v14 dataConsumer];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000509D8;
    v21[3] = &unk_1003821D8;
    v16 = v6;
    v22 = v16;
    v17 = v8;
    v23 = v17;
    v18 = v13;
    v24 = v18;
    [v15 consumeData:v7 withCompletionHandler:v21];
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

    [v6 cancel];
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v10 asset_statusCode];
  v13 = [AssetTaskInfo taskInfoForTask:v9];
  if (v13)
  {
    v66 = self;
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v14 = off_1003CB810;
    v15 = [v13 signpostId];
    if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = v15;
      if (os_signpost_enabled(v14))
      {
        v17 = [v13 logKey];
        *buf = 138543618;
        v77 = v17;
        v78 = 2050;
        v79 = v12;
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
      v20 = [v13 logKey];
      *buf = 138543618;
      v77 = v20;
      v78 = 2114;
      v79 = v10;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received response: %{public}@", buf, 0x16u);
    }

    v21 = [v13 logKey];
    v22 = +[KeepAlive keepAliveWithFormat:](KeepAlive, "keepAliveWithFormat:", @"com.apple.storekit.AssetTask:%@-%lu", v21, [v9 taskIdentifier]);
    [v13 setKeepAlive:v22];

    v23 = [v10 asset_cdnUUID];
    v24 = v23;
    if (v23 && [v23 length])
    {
      if (qword_1003D43E0 != -1)
      {
        sub_1002CE52C();
      }

      v25 = off_1003CB810;
      if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        v27 = [v13 logKey];
        *buf = 138543874;
        v77 = v27;
        v78 = 2114;
        v79 = v9;
        v80 = 2114;
        v81 = v24;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Task: %{public}@ CDNUUID: %{public}@", buf, 0x20u);
      }
    }

    if (v12 > 399)
    {
      switch(v12)
      {
        case 416:
          if (qword_1003D43E0 != -1)
          {
            sub_1002CE52C();
          }

          v48 = off_1003CB810;
          v49 = [v13 signpostId];
          if ((v49 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v50 = v49;
            if (os_signpost_enabled(v48))
            {
              v51 = [v13 logKey];
              *buf = 138543618;
              v77 = v51;
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

          v52 = [v13 properties];
          v53 = [v52 dataConsumer];

          v67[0] = _NSConcreteStackBlock;
          v67[1] = 3221225472;
          v67[2] = sub_100052168;
          v67[3] = &unk_100380070;
          v67[4] = v66;
          v68 = v13;
          v69 = v9;
          v70 = v11;
          [v53 truncateWithCompletionHandler:v67];

          goto LABEL_83;
        case 408:
          if (qword_1003D43E0 != -1)
          {
            sub_1002CE52C();
          }

          v44 = off_1003CB810;
          v45 = [v13 signpostId];
          if ((v45 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v46 = v45;
            if (os_signpost_enabled(v44))
            {
              v47 = [v13 logKey];
              *buf = 138543618;
              v77 = v47;
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
          v39 = [v13 signpostId];
          if ((v39 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v40 = v39;
            if (os_signpost_enabled(v38))
            {
              v41 = [v13 logKey];
              *buf = 138543618;
              v77 = v41;
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
          v55 = [v13 signpostId];
          if ((v55 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v56 = v55;
            if (os_signpost_enabled(v54))
            {
              v57 = [v13 logKey];
              *buf = 138543618;
              v77 = v57;
              v78 = 2050;
              v79 = v12;
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
            v65 = [v13 logKey];
            *buf = 138543874;
            v77 = v65;
            v78 = 2114;
            v79 = v9;
            v80 = 2048;
            v81 = v12;
            _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "[%{public}@] Canceling task: %{public}@ after receiving invalid status code: %ld", buf, 0x20u);
          }

          v59 = [NSError errorWithDomain:@"AssetErrorDomain" code:v12 + 1000 userInfo:0];
          v60 = objc_claimAutoreleasedReturnValue();
          v61 = ASDErrorWithUnderlyingErrorAndDescription();
          [v13 setError:v61];

          (*(v11 + 2))(v11, 0);
          goto LABEL_83;
      }

      (*(v11 + 2))(v11, 0);
    }

    else
    {
      v28 = [v9 currentRequest];
      v29 = [v28 asset_rangeOffset];

      if (!v29 || v12 == 206)
      {
        v43 = [v13 promise];
        v37 = [v43 progress];

        if (v37)
        {
          v37[2](v37, 0, [v13 requestOffset], objc_msgSend(v9, "countOfBytesExpectedToReceive") + objc_msgSend(v13, "requestOffset"));
        }

        (*(v11 + 2))(v11, 1);
      }

      else
      {
        if (qword_1003D43E0 != -1)
        {
          sub_1002CE52C();
        }

        v30 = off_1003CB810;
        v31 = [v13 signpostId];
        if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v32 = v31;
          if (os_signpost_enabled(v30))
          {
            v33 = [v13 logKey];
            *buf = 138543618;
            v77 = v33;
            v78 = 2050;
            v79 = v12;
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
          v63 = [v13 logKey];
          *buf = 138543874;
          v77 = v63;
          v78 = 2114;
          v79 = v9;
          v80 = 2048;
          v81 = v12;
          _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "[%{public}@] Resetting data consumer for task: %{public}@ after receiving status code: %ld", buf, 0x20u);
        }

        v35 = [v13 properties];
        v36 = [v35 dataConsumer];

        v71[0] = _NSConcreteStackBlock;
        v71[1] = 3221225472;
        v71[2] = sub_100051928;
        v71[3] = &unk_10037FF58;
        v71[4] = v66;
        v72 = v36;
        v73 = v13;
        v74 = v9;
        v75 = v11;
        v37 = v36;
        [v37 truncateWithCompletionHandler:v71];
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

  (*(v11 + 2))(v11, 0);
LABEL_84:
}

- (void)URLSession:(id)a3 _willRetryBackgroundDataTask:(id)a4 withError:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = [AssetTaskInfo taskInfoForTask:v6];
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
        v23 = [v9 logKey];
        v26 = 138543874;
        v27 = v23;
        v28 = 2114;
        v29 = v6;
        v30 = 2114;
        v31 = v7;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%{public}@] Retry scheduled for task: %{public}@ error: %{public}@", &v26, 0x20u);
      }

      if (qword_1003D43E0 != -1)
      {
        sub_1002CE52C();
      }

      v11 = off_1003CB810;
      v12 = [v9 signpostId];
      if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = v12;
        if (os_signpost_enabled(v11))
        {
          v14 = [v9 logKey];
          v15 = [v7 lib_shortDescription];
          v26 = 138543618;
          v27 = v14;
          v28 = 2114;
          v29 = v15;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, v13, "WillRetry", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", &v26, 0x16u);
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
        v25 = [v9 logKey];
        v26 = 138543874;
        v27 = v25;
        v28 = 2114;
        v29 = v6;
        v30 = 2114;
        v31 = v7;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%{public}@] Canceling task: %{public}@ after cache request failed with error: %{public}@", &v26, 0x20u);
      }

      if (qword_1003D43E0 != -1)
      {
        sub_1002CE52C();
      }

      v17 = off_1003CB810;
      v18 = [v9 signpostId];
      if ((v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v19 = v18;
        if (os_signpost_enabled(v17))
        {
          v20 = [v9 logKey];
          v21 = [v7 lib_shortDescription];
          v26 = 138543618;
          v27 = v20;
          v28 = 2114;
          v29 = v21;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, v19, "CacheFail", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", &v26, 0x16u);
        }
      }

      [v9 setAction:1];
      [v9 setIgnoreAssetCache:1];
      v11 = [v9 task];
      [v11 cancel];
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

    [v6 cancel];
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [AssetTaskInfo taskInfoForTask:v7];
  if (v9)
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v10 = off_1003CB810;
    v11 = [v9 signpostId];
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
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
      v15 = [v9 logKey];
      *buf = 138543618;
      v27 = v15;
      v28 = 2114;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completed task: %{public}@", buf, 0x16u);
    }

    v16 = [v9 action];
    if (v8 && !v16)
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

      v17 = [v9 error];

      if (!v17)
      {
        [v9 setError:v8];
      }

      [(AssetSession *)self _completeNetworkActivityWithReason:3 usingTaskInfo:v9];
    }

    v18 = [v9 error];
    [(AssetSession *)self _reportMetricsForTaskInfo:v9 withCompletionError:v18];

    v19 = [v9 properties];
    v20 = [v19 dataConsumer];

    if (v8 && [v9 action] != 2)
    {
      [(AssetSession *)self _completeNetworkActivityWithReason:4 usingTaskInfo:v9];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100052D58;
      v22[3] = &unk_100380188;
      v22[4] = self;
      v21 = &v23;
      v23 = v9;
      [v20 suspendWithCompletionHandler:v22];
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
      [v20 finishWithCompletionHandler:v24];
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

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = [AssetTaskInfo taskInfoForTask:v6];
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
      v11 = [v8 logKey];
      *buf = 138543874;
      v33 = v11;
      v34 = 2114;
      v35 = *&v6;
      v36 = 2114;
      v37 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] Collected metrics for task: %{public}@ metrics: %{public}@", buf, 0x20u);
    }

    v26 = v6;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = [v7 transactionMetrics];
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v27 + 1) + 8 * v16);
          v18 = [v17 lib_responseInterval];
          if (v18)
          {
            if (qword_1003D43E0 != -1)
            {
              sub_1002CE52C();
            }

            v19 = off_1003CB810;
            if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
            {
              v20 = v19;
              v21 = [v8 logKey];
              v22 = [v17 countOfResponseBodyBytesReceived];
              [v18 duration];
              *buf = 138543618;
              v33 = v21;
              v34 = 2048;
              v35 = v22 / v23;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Response body bytes received speed: %.0f", buf, 0x16u);
            }
          }

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v14);
    }

    v7 = v25;
    [v8 setMetrics:v25];
    v6 = v26;
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
      v33 = v6;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Untracked task: %{public}@ did finish collecting metrics", buf, 0xCu);
    }
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [AssetTaskInfo taskInfoForTask:v8];
  if (v11)
  {
    v12 = [v9 protectionSpace];
    v13 = [v12 authenticationMethod];
    if ([v13 isEqualToString:NSURLAuthenticationMethodClientCertificate])
    {
      if (qword_1003D43E0 != -1)
      {
        sub_1002CE3B0();
      }

      v14 = off_1003CB810;
      if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        v16 = [v11 logKey];
        *buf = 138543362;
        v40 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Using client certificate for authentication challenge", buf, 0xCu);
      }

      v10[2](v10, 1, 0);
    }

    else if ([v13 isEqualToString:NSURLAuthenticationMethodServerTrust])
    {
      error = 0;
      if (SecTrustEvaluateWithError([v12 serverTrust], &error))
      {
        if (qword_1003D43E0 != -1)
        {
          sub_1002CE52C();
        }

        v17 = off_1003CB810;
        if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          v19 = [v11 logKey];
          *buf = 138543362;
          v40 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Using server trust for authentication challenge", buf, 0xCu);
        }

        v20 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [v12 serverTrust]);
        (v10)[2](v10, 0, v20);
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

        v10[2](v10, 2, 0);
      }

      if (error)
      {
        CFRelease(error);
      }
    }

    else
    {
      v21 = [v11 properties];
      v22 = [v21 allowsAuthentication];

      if (v22)
      {
        if (qword_1003D43E0 != -1)
        {
          sub_1002CE3B0();
        }

        v23 = off_1003CB810;
        if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
          v25 = [v11 logKey];
          *buf = 138543362;
          v40 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Prompting user for authentication challenge", buf, 0xCu);
        }

        v26 = [[AuthenticationChallenge alloc] initWithAuthenticationChallenge:v9];
        v27 = [AuthenticationChallengeDialogRequest dialogForAuthenticationChallenge:v26];
        v28 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v27];
        v29 = [v28 present];
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_100053774;
        v34[3] = &unk_1003822C8;
        v35 = v11;
        v36 = v26;
        v37 = v10;
        v30 = v26;
        [v29 addFinishBlock:v34];
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
          v33 = [v11 logKey];
          *buf = 138543362;
          v40 = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Prompting for authentication is not permitted", buf, 0xCu);
        }

        v10[2](v10, 2, 0);
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

    v10[2](v10, 2, 0);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 _willSendRequestForEstablishedConnection:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [AssetTaskInfo taskInfoForTask:v8];
  if (v11)
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v12 = off_1003CB810;
    v13 = [v11 signpostId];
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        v15 = [v11 logKey];
        v21 = 138543362;
        v22 = v15;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, v14, "TaskConnecting", " uuid=%{public, signpost.description:attribute}@ ", &v21, 0xCu);
      }
    }

    if (qword_1003D43E0 != -1)
    {
      sub_1002CE52C();
    }

    v16 = off_1003CB810;
    v17 = os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT);
    v18 = v9;
    if (v17)
    {
      v19 = v16;
      v20 = [v11 logKey];
      v21 = 138543618;
      v22 = v20;
      v23 = 2114;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Task: %{public}@ will send request", &v21, 0x16u);

      v18 = v9;
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

  (v10)[2](v10, v18);
}

- (void)_completeNetworkActivityWithReason:(int)a3 usingTaskInfo:(id)a4
{
  v5 = a4;
  v4 = [v5 networkActivity];
  if (v4)
  {
    nw_activity_complete_with_reason();
    [v5 setNetworkActivity:0];
  }
}

- (id)_findSessionUsingTaskInfo:(id)a3 withProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSURLSessionConfiguration asset_configurationIdentifierUsingProperties:v7];
  [v6 setConfigurationID:v8];
  v9 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v8];
  v10 = [v9 maximumWatchCellularTransferSize];
  if (v10)
  {
    v11 = v10;
    v12 = [v9 maximumWatchCellularTransferSize];
    v13 = [v12 unsignedLongLongValue];
    v14 = [v7 expectedContentLength];

    if (v13 < v14)
    {
      if (qword_1003D43E0 != -1)
      {
        sub_1002CE3B0();
      }

      v15 = off_1003CB810;
      if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = [v6 logKey];
        v18 = [v9 maximumWatchCellularTransferSize];
        *buf = 138543874;
        v39 = v17;
        v40 = 2048;
        v41 = [v18 unsignedLongLongValue];
        v42 = 2048;
        v43 = [v7 expectedContentLength];
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Creating new session because download exceeds maximum watch cellular transfer size for existing session (Max: %lld, Download: %lld)", buf, 0x20u);
      }

      goto LABEL_15;
    }
  }

  if (!v9)
  {
LABEL_15:
    v29 = [v7 discretionaryType];
    if (v29)
    {
      [NSURLSessionConfiguration asset_backgroundSessionConfigurationUsingProperties:v7];
    }

    else
    {
      [NSURLSessionConfiguration asset_ephemeralSessionConfigurationUsingProperties:v7];
    }
    v27 = ;
    v28 = [NSURLSession sessionWithConfiguration:v27 delegate:self delegateQueue:self->_delegateQueue];
    v30 = [v7 maximumWatchCellularTransferSize];
    v9 = [CachedURLSession cachedSession:v28 maximumWatchCellularTransferSize:v30];
    [(NSMutableDictionary *)self->_sessions setObject:v9 forKeyedSubscript:v8];

    if (qword_1003D43E0 != -1)
    {
      sub_1002CE52C();
    }

    v31 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      v33 = [v6 logKey];
      if (v29)
      {
        v34 = "background";
      }

      else
      {
        v34 = "ephemeral";
      }

      v35 = [v27 identifier];
      *buf = 138544130;
      v39 = v33;
      v40 = 2080;
      v41 = v34;
      v42 = 2114;
      v43 = v35;
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
    v21 = [v6 logKey];
    v22 = [v9 session];
    v23 = [v22 configuration];
    v24 = [v23 identifier];
    *buf = 138543874;
    v39 = v21;
    v40 = 2114;
    v41 = v24;
    v42 = 2114;
    v43 = v8;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Reusing existing session with identifier: %{public}@ (%{public}@)", buf, 0x20u);
  }

  v25 = [v9 session];
  v26 = [v25 configuration];
  v27 = [v26 identifier];

  if (v27)
  {
    v28 = [v27 stringByAppendingFormat:@" (%@)", v8];
    [v6 setConfigurationID:v28];
LABEL_25:
  }

  v36 = [v9 session];

  return v36;
}

- (void)_finishPromiseUsingTaskInfo:(id)a3
{
  v3 = a3;
  if (qword_1003D43E0 != -1)
  {
    sub_1002CE3B0();
  }

  v4 = off_1003CB810;
  v5 = [v3 signpostId];
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      LOWORD(v20) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v6, "Download", "", &v20, 2u);
    }
  }

  [v3 setKeepAlive:0];
  if (qword_1003D43E0 != -1)
  {
    sub_1002CE52C();
  }

  v7 = off_1003CB810;
  if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v3 logKey];
    v20 = 138543362;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finishing asset promise", &v20, 0xCu);
  }

  v10 = [v3 promise];
  if ([v10 isFinished])
  {
    if (([v10 isCancelled] & 1) == 0)
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
    -[AssetResult setBytesReceived:](v12, "setBytesReceived:", [v3 bytesReceived]);
    v13 = [v3 properties];
    v14 = [v13 dataConsumer];
    [(AssetResult *)v12 setDataConsumer:v14];

    v15 = [v3 error];
    [(AssetResult *)v12 setError:v15];

    v16 = [v3 metrics];
    [(AssetResult *)v12 setMetrics:v16];

    [v10 finishWithResult:v12];
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE52C();
    }

    v17 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [v3 logKey];
      v20 = 138543362;
      v21 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished asset promise", &v20, 0xCu);
    }
  }

  [AssetTaskInfo removeTaskInfo:v3];
}

- (void)_reportMetricsForTaskInfo:(id)a3 withCompletionError:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [AMSMetricsLoadURLContext alloc];
  v8 = [v5 task];
  v9 = [v5 metrics];
  v10 = [v7 initWithTask:v8 metrics:v9];

  v11 = +[_TtC9storekitd3Bag defaultBag];
  [v10 setBag:v11];

  [v10 setError:v6];
  v12 = [v5 session];
  [v10 setSession:v12];

  v13 = [AMSMetricsLoadURLEvent shouldCollectMetricsPromiseForContext:v10];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100054674;
  v16[3] = &unk_100382318;
  v17 = v5;
  v18 = v10;
  v14 = v10;
  v15 = v5;
  [v13 resultWithCompletion:v16];
}

- (void)_retryTaskUsingTaskInfo:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (qword_1003D43E0 != -1)
  {
    sub_1002CE3B0();
  }

  v5 = off_1003CB810;
  v6 = [v4 signpostId];
  if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      v8 = [v4 logKey];
      *buf = 138543362;
      v18 = v8;
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
    v11 = [v4 logKey];
    *buf = 138543362;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Retrying request", buf, 0xCu);
  }

  [v4 setAction:0];
  [v4 setError:0];
  [v4 setKeepAlive:0];
  v12 = [v4 properties];
  v13 = [v12 dataConsumer];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100054BD4;
  v15[3] = &unk_100380188;
  v15[4] = self;
  v16 = v4;
  v14 = v4;
  [v13 resetWithCompletionHandler:v15];
}

- (void)_prepareDataConsumerUsingTaskInfo:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([v4 action] == 3)
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

    [(AssetSession *)self _finishPromiseUsingTaskInfo:v4];
  }

  else
  {
    v6 = [v4 properties];
    v7 = [v6 dataConsumer];

    if (v7)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100055000;
      v16[3] = &unk_100382340;
      v16[4] = self;
      v17 = v4;
      [v7 prepareWithCompletionHandler:v16];
    }

    else
    {
      v8 = ASDErrorWithDescription();
      [v4 setError:v8];

      if (qword_1003D43E0 != -1)
      {
        sub_1002CE3B0();
      }

      v9 = off_1003CB810;
      v10 = [v4 signpostId];
      if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v11 = v10;
        if (os_signpost_enabled(v9))
        {
          v12 = [v4 logKey];
          v13 = [v4 error];
          v14 = [v13 lib_shortDescription];
          *buf = 138543618;
          v19 = v12;
          v20 = 2114;
          v21 = v14;
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

      [(AssetSession *)self _finishPromiseUsingTaskInfo:v4];
    }
  }
}

- (void)_prepareRequestUsingTaskInfo:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([v4 action] == 3)
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

    [(AssetSession *)self _finishPromiseUsingTaskInfo:v4];
  }

  else
  {
    v6 = [v4 properties];
    if (([v4 ignoreAssetCache] & 1) != 0 || !objc_msgSend(v6, "locateAssetCache"))
    {
      [v4 setIgnoreAssetCache:1];
      v9 = [v4 request];
      [(AssetSession *)self _startTaskUsingTaskInfo:v4 withRequest:v9];
    }

    else
    {
      v7 = [v4 request];
      v8 = [v7 URL];
      v10 = v4;
      ACSLocateCachingServer();
    }
  }
}

- (void)_startNetworkActivityUsingTaskInfo:(id)a3 withTask:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 properties];
  v8 = [v7 requestReason];

  if (v8 <= 9 && (((1 << v8) & 0x35E) != 0 || v8 == 5 || v8 == 7))
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
        v12 = [v5 logKey];
        v14 = 138543618;
        v15 = v12;
        v16 = 2114;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] Activating network activity: %{public}@", &v14, 0x16u);
      }

      nw_activity_activate();
      [v6 set_nw_activity:v9];
      [v5 setNetworkActivity:v9];
    }
  }

  else if (v8)
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

- (void)_startTaskUsingTaskInfo:(id)a3 withRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([v6 action] == 3)
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

    [(AssetSession *)self _finishPromiseUsingTaskInfo:v6];
  }

  else
  {
    v60 = [v6 properties];
    v59 = [[NSMutableURLRequest alloc] _initWithCFURLRequest:{objc_msgSend(v7, "_CFURLRequest")}];
    v9 = [v59 HTTPUserAgent];

    if (!v9)
    {
      v10 = +[AMSProcessInfo currentProcess];
      v11 = [AMSUserAgent userAgentForProcessInfo:v10];
      [v59 setHTTPUserAgent:v11];
    }

    if ([v6 requestOffset])
    {
      [v59 asset_setRangeOffset:{objc_msgSend(v6, "requestOffset")}];
    }

    v12 = sub_100004020([v60 requestReason]);
    if (v12)
    {
      [v59 setValue:v12 forHTTPHeaderField:@"Apple-Download-Type"];
    }

    if (self->_session)
    {
      [v6 setSession:?];
    }

    v13 = [v6 session];

    if (!v13)
    {
      v14 = [(AssetSession *)self _findSessionUsingTaskInfo:v6 withProperties:v60];
      [v6 setSession:v14];
    }

    v15 = [v6 session];

    if (v15)
    {
      v16 = [v6 session];
      v17 = [v16 dataTaskWithRequest:v59];

      if (v17)
      {
        [(AssetSession *)self _startNetworkActivityUsingTaskInfo:v6 withTask:v17];
        if (qword_1003D43E0 != -1)
        {
          sub_1002CE3B0();
        }

        v18 = off_1003CB810;
        v19 = [v6 signpostId];
        if ((v19 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v20 = v19;
          if (os_signpost_enabled(v18))
          {
            v21 = [v6 logKey];
            v22 = [v7 URL];
            *buf = 138543618;
            v66 = v21;
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
          v25 = [v6 logKey];
          v26 = [v6 configurationID];
          v27 = [v7 URL];
          *buf = 138544130;
          v66 = v25;
          v67 = 2114;
          v68 = v17;
          v69 = 2114;
          v70 = v26;
          v71 = 2114;
          v72 = v27;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Created task: %{public}@ in session: %{public}@ for URL: %{public}@ ", buf, 0x2Au);
        }

        [AssetTaskInfo recordTaskInfo:v6 forTask:v17];
        v28 = [v60 taskPriority];

        if (v28)
        {
          v29 = [v60 taskPriority];
          [v17 set_priority:{objc_msgSend(v29, "longLongValue")}];
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

        v44 = [v60 bytesPerSecondLimit];

        if (v44)
        {
          v45 = [v60 bytesPerSecondLimit];
          [v17 set_bytesPerSecondLimit:{objc_msgSend(v45, "longLongValue")}];
        }

        v46 = [v60 loadingPriority];

        if (v46)
        {
          v47 = [v60 loadingPriority];
          [v47 doubleValue];
          [v17 set_loadingPriority:?];
        }

        v48 = [v60 qosClass];
        if (!v48)
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

          v48 = 17;
        }

        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_100056208;
        v61[3] = &unk_1003822A0;
        v50 = v6;
        v62 = v50;
        v63 = v7;
        v64 = v17;
        v51 = objc_retainBlock(v61);
        v52 = [v50 properties];
        v53 = [v52 externalID];

        if (v53)
        {
          v54 = +[VoucherStore sharedInstance];
          v55 = [v50 properties];
          [v55 externalID];
          v56 = v7;
          v58 = v57 = v12;
          [v54 usingVoucherForExternalID:v58 applyQOSClass:v48 executeBlock:v51];

          v12 = v57;
          v7 = v56;
        }

        else
        {
          v54 = dispatch_get_global_queue(v48, 0);
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
        v37 = [v6 signpostId];
        if ((v37 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v38 = v37;
          if (os_signpost_enabled(v36))
          {
            v39 = [v6 logKey];
            v40 = [v7 URL];
            *buf = 138543618;
            v66 = v39;
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
        [v6 setError:v41];

        [(AssetSession *)self _finishPromiseUsingTaskInfo:v6];
      }
    }

    else
    {
      if (qword_1003D43E0 != -1)
      {
        sub_1002CE3B0();
      }

      v30 = off_1003CB810;
      v31 = [v6 signpostId];
      if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v32 = v31;
        if (os_signpost_enabled(v30))
        {
          v33 = [v6 logKey];
          v34 = [v7 URL];
          *buf = 138543618;
          v66 = v33;
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
      [v6 setError:v35];

      [(AssetSession *)self _finishPromiseUsingTaskInfo:v6];
    }
  }
}

@end