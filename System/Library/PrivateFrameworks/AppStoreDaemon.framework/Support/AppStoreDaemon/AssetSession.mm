@interface AssetSession
- (AssetSession)init;
- (void)URLSession:(id)session _willRetryBackgroundDataTask:(id)task withError:(id)error;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task _alternatePathAvailable:(int)available;
- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
@end

@implementation AssetSession

- (AssetSession)init
{
  v11.receiver = self;
  v11.super_class = AssetSession;
  v2 = [(AssetSession *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.AssetSession", v3);
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

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  taskCopy = task;
  dataCopy = data;
  v8 = sub_10020F4B4(AssetTaskInfo, taskCopy);
  v9 = ASDLogHandleForCategory();
  v10 = v9;
  if (v8)
  {
    v11 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v33 = objc_getProperty(v8, v14, 56, 1);
        v34 = [taskCopy countOfBytesReceived] + *(v8 + 112);
        v35 = [taskCopy countOfBytesExpectedToReceive] + *(v8 + 112);
        *buf = 138412802;
        v41 = v33;
        v42 = 2048;
        v43 = v34;
        v44 = 2048;
        v45 = v35;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[%@] %{iec-bytes}lld/%{iec-bytes}lld", buf, 0x20u);
      }
    }

    v15 = objc_getProperty(v8, v12, 80, 1);
    [v15 setCompletedUnitCount:{objc_msgSend(dataCopy, "length") + objc_msgSend(v15, "completedUnitCount")}];

    v16 = *(v8 + 160);
    *(v8 + 160) = CFAbsoluteTimeGetCurrent();
    if (v16 > 0.0)
    {
      v17 = [dataCopy length] / (*(v8 + 160) - v16);
      v18 = fmin(*(v8 + 152), v17);
      *(v8 + 144) = fmax(*(v8 + 144), v17);
      *(v8 + 152) = v18;
    }

    WeakRetained = objc_loadWeakRetained((v8 + 88));
    progress = [WeakRetained progress];

    if (progress)
    {
      (progress)[2](progress, 1, [taskCopy countOfBytesReceived] + *(v8 + 112), objc_msgSend(taskCopy, "countOfBytesExpectedToReceive") + *(v8 + 112));
    }

    v21 = dispatch_semaphore_create(0);
    Property = objc_getProperty(v8, v22, 96, 1);
    v25 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v24, 72, 1);
    }

    v26 = Property;

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100372660;
    v36[3] = &unk_100525248;
    v27 = taskCopy;
    v37 = v27;
    v28 = v8;
    v38 = v28;
    v29 = v21;
    v39 = v29;
    [v26 consumeData:dataCopy withCompletionHandler:v36];
    v30 = dispatch_time(0, 300000000000);
    if (dispatch_semaphore_wait(v29, v30))
    {
      v31 = ASDErrorWithDescription();
      objc_setProperty_atomic(v28, v32, v31, 40);

      [v27 cancel];
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v41 = taskCopy;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Untracked task: %{public}@ canceling after receiving data", buf, 0xCu);
    }

    [taskCopy cancel];
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  v12 = sub_100271518(responseCopy);
  v13 = sub_10020F4B4(AssetTaskInfo, taskCopy);
  v14 = ASDLogHandleForCategory();
  v15 = v14;
  if (v13)
  {
    v16 = *(v13 + 128);
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v18 = objc_getProperty(v13, v17, 56, 1);
      *buf = 138543618;
      v99 = v18;
      v100 = 2050;
      v101 = v12;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v16, "Download/Transfer", " uuid=%{public, signpost.description:attribute}@  status=%{public, signpost.description:attribute}ld ", buf, 0x16u);
    }

    v19 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_getProperty(v13, v20, 56, 1);
      *buf = 138412546;
      v99 = v21;
      v100 = 2114;
      v101 = responseCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%@] Received response: %{public}@", buf, 0x16u);
    }

    v23 = objc_getProperty(v13, v22, 56, 1);
    v24 = +[KeepAlive keepAliveWithFormat:](KeepAlive, "keepAliveWithFormat:", @"com.apple.appstored.AssetTask:%@-%lu", v23, [taskCopy taskIdentifier]);
    objc_setProperty_atomic(v13, v25, v24, 48);

    v26 = sub_100284B18(responseCopy);
    v27 = v26;
    if (v26 && [v26 length])
    {
      v28 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v30 = objc_getProperty(v13, v29, 56, 1);
        *buf = 138412802;
        v99 = v30;
        v100 = 2114;
        v101 = taskCopy;
        v102 = 2114;
        v103 = v27;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%@] Task: %{public}@ CDNUUID: %{public}@", buf, 0x20u);
      }
    }

    _incompleteTaskMetrics = [taskCopy _incompleteTaskMetrics];
    objc_setProperty_atomic(v13, v32, _incompleteTaskMetrics, 64);

    if (v12 > 399)
    {
      v48 = ASDLogHandleForCategory();
      v49 = v48;
      v50 = *(v13 + 128);
      v51 = v50 - 1;
      switch(v12)
      {
        case 416:
          if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
          {
            v64 = objc_getProperty(v13, v63, 56, 1);
            *buf = 138543618;
            v99 = v64;
            v100 = 2050;
            v101 = 416;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v49, OS_SIGNPOST_EVENT, v50, "RequestRange", " uuid=%{public, signpost.description:attribute}@  status=%{public, signpost.description:attribute}ld ", buf, 0x16u);
          }

          if ((*(v13 + 9) & 1) != 0 || (v66 = objc_getProperty(v13, v65, 56, 1), [v66 description], v67 = objc_claimAutoreleasedReturnValue(), v68 = objc_msgSend(v67, "hasPrefix:", @"SYS"), v67, v66, !v68))
          {
            v77 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              v88 = objc_getProperty(v13, v78, 56, 1);
              *buf = 138412802;
              v99 = v88;
              v100 = 2114;
              v101 = taskCopy;
              v102 = 2048;
              v103 = 416;
              _os_log_error_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "[%@] Truncate and restart task: %{public}@ after receiving status code: %ld", buf, 0x20u);
            }

            Property = objc_getProperty(v13, v79, 96, 1);
            v82 = Property;
            if (Property)
            {
              Property = objc_getProperty(Property, v81, 72, 1);
            }

            v83 = Property;

            v89[0] = _NSConcreteStackBlock;
            v89[1] = 3221225472;
            v89[2] = sub_100373EC8;
            v89[3] = &unk_1005252C0;
            v89[4] = self;
            v90 = v13;
            v91 = taskCopy;
            v92 = handlerCopy;
            [v83 truncateWithCompletionHandler:v89];

            goto LABEL_63;
          }

          *(v13 + 9) = 1;
          *(v13 + 16) = 1;
          break;
        case 408:
          if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
          {
            v60 = objc_getProperty(v13, v59, 56, 1);
            *buf = 138543618;
            v99 = v60;
            v100 = 2050;
            v101 = 408;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v49, OS_SIGNPOST_EVENT, v50, "RequestTimeout", " uuid=%{public, signpost.description:attribute}@  status=%{public, signpost.description:attribute}ld ", buf, 0x16u);
          }

          v61 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v85 = objc_getProperty(v13, v62, 56, 1);
            *buf = 138412802;
            v99 = v85;
            v100 = 2114;
            v101 = taskCopy;
            v102 = 2048;
            v103 = 408;
            _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "[%@] Restarting task: %{public}@ after receiving status code: %ld", buf, 0x20u);
          }

          *(v13 + 16) = 1;
          break;
        case 403:
          if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
          {
            v53 = objc_getProperty(v13, v52, 56, 1);
            *buf = 138543618;
            v99 = v53;
            v100 = 2050;
            v101 = 403;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v49, OS_SIGNPOST_EVENT, v50, "RequestExpired", " uuid=%{public, signpost.description:attribute}@  status=%{public, signpost.description:attribute}ld ", buf, 0x16u);
          }

          v54 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            v86 = objc_getProperty(v13, v55, 56, 1);
            *buf = 138412802;
            v99 = v86;
            v100 = 2114;
            v101 = taskCopy;
            v102 = 2048;
            v103 = 403;
            _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "[%@] Canceling task: %{public}@ after receiving status code: %ld", buf, 0x20u);
          }

          v56 = ASDErrorWithDescription();
          objc_setProperty_atomic(v13, v57, v56, 40);

          break;
        default:
          if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
          {
            v70 = objc_getProperty(v13, v69, 56, 1);
            *buf = 138543618;
            v99 = v70;
            v100 = 2050;
            v101 = v12;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v49, OS_SIGNPOST_EVENT, v50, "RequestStatus", " uuid=%{public, signpost.description:attribute}@  status=%{public, signpost.description:attribute}ld ", buf, 0x16u);
          }

          v71 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            v87 = objc_getProperty(v13, v72, 56, 1);
            *buf = 138412802;
            v99 = v87;
            v100 = 2114;
            v101 = taskCopy;
            v102 = 2048;
            v103 = v12;
            _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "[%@] Canceling task: %{public}@ after receiving invalid status code: %ld", buf, 0x20u);
          }

          v73 = [NSError errorWithDomain:@"AssetErrorDomain" code:v12 + 1000 userInfo:0];
          v74 = objc_claimAutoreleasedReturnValue();
          v75 = ASDErrorWithUnderlyingErrorAndDescription();
          objc_setProperty_atomic(v13, v76, v75, 40);

          (*(handlerCopy + 2))(handlerCopy, 0);
          goto LABEL_63;
      }

      (*(handlerCopy + 2))(handlerCopy, 0);
    }

    else
    {
      currentRequest = [taskCopy currentRequest];
      v34 = sub_10030BB94(currentRequest);

      if (!v34 || v12 == 206)
      {
        WeakRetained = objc_loadWeakRetained((v13 + 88));
        progress = [WeakRetained progress];

        if (progress)
        {
          (*(progress + 2))(progress, 0, *(v13 + 112), [taskCopy countOfBytesExpectedToReceive] + *(v13 + 112));
        }

        (*(handlerCopy + 2))(handlerCopy, 1);
      }

      else
      {
        v35 = ASDLogHandleForCategory();
        v36 = v35;
        v37 = *(v13 + 128);
        if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
        {
          v39 = objc_getProperty(v13, v38, 56, 1);
          *buf = 138543618;
          v99 = v39;
          v100 = 2050;
          v101 = v12;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_EVENT, v37, "ConsumerReset", " uuid=%{public, signpost.description:attribute}@  status=%{public, signpost.description:attribute}ld ", buf, 0x16u);
        }

        v40 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v84 = objc_getProperty(v13, v41, 56, 1);
          *buf = 138412802;
          v99 = v84;
          v100 = 2114;
          v101 = taskCopy;
          v102 = 2048;
          v103 = v12;
          _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "[%@] Resetting data consumer for task: %{public}@ after receiving status code: %ld", buf, 0x20u);
        }

        v43 = objc_getProperty(v13, v42, 96, 1);
        v45 = v43;
        if (v43)
        {
          v43 = objc_getProperty(v43, v44, 72, 1);
        }

        v46 = v43;

        v93[0] = _NSConcreteStackBlock;
        v93[1] = 3221225472;
        v93[2] = sub_100373688;
        v93[3] = &unk_100525298;
        v93[4] = self;
        v94 = v46;
        v95 = v13;
        v96 = taskCopy;
        v97 = handlerCopy;
        progress = v46;
        [progress truncateWithCompletionHandler:v93];
      }
    }

LABEL_63:

    goto LABEL_64;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v99 = taskCopy;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Untracked task: %{public}@ canceling after receiving response", buf, 0xCu);
  }

  (*(handlerCopy + 2))(handlerCopy, 0);
LABEL_64:
}

- (void)URLSession:(id)session _willRetryBackgroundDataTask:(id)task withError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v8 = sub_10020F4B4(AssetTaskInfo, taskCopy);
  v9 = v8;
  if (v8)
  {
    v10 = *(v8 + 9);
    v11 = ASDLogHandleForCategory();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (v12)
      {
        v28 = objc_getProperty(v9, v13, 56, 1);
        v30 = 138412802;
        v31 = v28;
        v32 = 2114;
        v33 = taskCopy;
        v34 = 2114;
        v35 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%@] Retry scheduled for task: %{public}@ error: %{public}@", &v30, 0x20u);
      }

      v14 = ASDLogHandleForCategory();
      v15 = v14;
      v16 = *(v9 + 128);
      if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        v18 = objc_getProperty(v9, v17, 56, 1);
        v19 = sub_100342C9C(errorCopy);
        v30 = 138543618;
        v31 = v18;
        v32 = 2114;
        v33 = v19;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, v16, "WillRetry", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", &v30, 0x16u);
      }
    }

    else
    {
      if (v12)
      {
        v29 = objc_getProperty(v9, v13, 56, 1);
        v30 = 138412802;
        v31 = v29;
        v32 = 2114;
        v33 = taskCopy;
        v34 = 2114;
        v35 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%@] Canceling task: %{public}@ after cache request failed with error: %{public}@", &v30, 0x20u);
      }

      v21 = ASDLogHandleForCategory();
      v22 = v21;
      v23 = *(v9 + 128);
      if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        v25 = objc_getProperty(v9, v24, 56, 1);
        v26 = sub_100342C9C(errorCopy);
        v30 = 138543618;
        v31 = v25;
        v32 = 2114;
        v33 = v26;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_EVENT, v23, "CacheFail", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", &v30, 0x16u);
      }

      *(v9 + 16) = 1;
      *(v9 + 9) = 1;
      v15 = objc_getProperty(v9, v27, 136, 1);
      [v15 cancel];
    }
  }

  else
  {
    v20 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v30 = 138543362;
      v31 = taskCopy;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Untracked task: %{public}@ canceling after will retry", &v30, 0xCu);
    }

    [taskCopy cancel];
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v9 = sub_10020F4B4(AssetTaskInfo, taskCopy);
  v10 = ASDLogHandleForCategory();
  v11 = v10;
  if (v9)
  {
    v12 = *(v9 + 128);
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v12, "Download/Transfer", "", buf, 2u);
    }

    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_getProperty(v9, v14, 56, 1);
      *buf = 138412546;
      *&buf[4] = v15;
      *&buf[12] = 2114;
      *&buf[14] = taskCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Completed task: %{public}@", buf, 0x16u);
    }

    if (!errorCopy || *(v9 + 16))
    {
      goto LABEL_24;
    }

    v17 = taskCopy;
    userInfo = [errorCopy userInfo];
    v19 = [userInfo objectForKeyedSubscript:NSURLErrorBackgroundTaskCancelledReasonKey];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v19 integerValue] == 2)
    {
      v21 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v132 = objc_getProperty(v9, v22, 56, 1);
        *buf = 138412546;
        *&buf[4] = v132;
        *&buf[12] = 2114;
        *&buf[14] = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[%@] Restarting request after task cancelled due to insufficient system resources: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (*(v9 + 9))
      {
LABEL_21:
        v25 = objc_getProperty(v9, v20, 40, 1);

        if (!v25)
        {
          v26 = ASDErrorWithSafeUserInfo();
          objc_setProperty_atomic(v9, v27, v26, 40);
        }

        sub_1003754E0(self, 3, v9);

        taskCopy = v17;
LABEL_24:
        v28 = objc_getProperty(v9, v16, 40, 1);
        v29 = v9;
        v30 = v28;
        if (self)
        {
          v31 = sub_1003BBF50();
          isHRNMode = [v31 isHRNMode];

          if ((isHRNMode & 1) == 0)
          {
            v33 = [AMSMetricsLoadURLContext alloc];
            v35 = objc_getProperty(v29, v34, 136, 1);
            v37 = objc_getProperty(v29, v36, 64, 1);
            selfCopy = self;
            v39 = [v33 initWithTask:v35 metrics:v37];

            v40 = +[BagService appstoredService];
            amsBag = [v40 amsBag];
            [v39 setBag:amsBag];

            [v39 setError:v30];
            WeakRetained = objc_loadWeakRetained(v29 + 15);
            [v39 setSession:WeakRetained];

            v43 = +[BagService appstoredService];
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_100376F54;
            v151 = &unk_10051B458;
            v152 = v29;
            v153 = v39;
            v44 = v39;
            self = selfCopy;
            v45 = v44;
            [v43 recentBagWithCompletionHandler:buf];
          }
        }

        Property = objc_getProperty(v29, v46, 96, 1);
        v49 = Property;
        if (Property)
        {
          Property = objc_getProperty(Property, v48, 72, 1);
        }

        v11 = Property;

        if (errorCopy && *(v9 + 16) != 2)
        {
          sub_1003754E0(self, 4, v29);
          v140[0] = _NSConcreteStackBlock;
          v140[1] = 3221225472;
          v140[2] = sub_100375B40;
          v140[3] = &unk_10051B230;
          v140[4] = self;
          v89 = &v141;
          v141 = v29;
          [v11 suspendWithCompletionHandler:v140];
        }

        else
        {
          v137 = v11;
          sub_1003754E0(self, 2, v29);
          v50 = v29;
          v138 = errorCopy;
          v51 = errorCopy;
          v53 = v51;
          if (self)
          {
            v54 = objc_getProperty(v50, v52, 96, 1);
            v55 = v54;
            v139 = v50;
            if (v54 && v54[4])
            {
              v56 = v29;
              v57 = objc_opt_new();
              v58 = [NSNumber numberWithInteger:v55[4]];
              [v57 setObject:v58 forKeyedSubscript:@"downloadSource"];

              v59 = [NSNumber numberWithInteger:vcvtpd_s64_f64(v55[13] / 1000.0)];
              [v57 setObject:v59 forKeyedSubscript:@"expectedContentLength"];

              v60 = [NSNumber numberWithInteger:vcvtpd_s64_f64(v50[3] / 1000.0)];
              [v57 setObject:v60 forKeyedSubscript:@"receivedContentLength"];

              v61 = [NSNumber numberWithInteger:vcvtpd_s64_f64(v50[14] / 1000.0)];
              [v57 setObject:v61 forKeyedSubscript:@"resumptionOffset"];

              v62 = [NSNumber numberWithInteger:vcvtpd_s64_f64(v55[23] / 1000.0)];
              [v57 setObject:v62 forKeyedSubscript:@"contentRange"];

              v63 = [NSNumber numberWithBool:v50[1] & 1];
              [v57 setObject:v63 forKeyedSubscript:@"cacheServerLocated"];

              v64 = [NSNumber numberWithBool:*(v50 + 9) & 1];
              [v57 setObject:v64 forKeyedSubscript:@"cacheServerIgnored"];

              if (v138)
              {
                v65 = &__kCFBooleanFalse;
              }

              else
              {
                v65 = &__kCFBooleanTrue;
              }

              [v57 setObject:v65 forKeyedSubscript:@"success"];
              if (v138)
              {
                v66 = sub_1003429BC(v53);
                [v57 setObject:v66 forKeyedSubscript:@"error"];
              }

              sub_1003F25C4(Analytics, v57, 31);

              v29 = v56;
            }

            v67 = v50;
            v69 = objc_getProperty(v67, v68, 64, 1);
            transactionMetrics = [v69 transactionMetrics];

            v136 = v29;
            if (transactionMetrics)
            {
              v148 = 0u;
              v149 = 0u;
              v146 = 0u;
              v147 = 0u;
              v72 = objc_getProperty(v67, v71, 64, 1);
              transactionMetrics2 = [v72 transactionMetrics];

              v74 = [transactionMetrics2 countByEnumeratingWithState:&v146 objects:buf count:16];
              if (v74)
              {
                v75 = v74;
                selfCopy2 = self;
                v135 = taskCopy;
                v76 = 0;
                v77 = *v147;
                v78 = 0.0;
                v79 = 0.0;
                do
                {
                  for (i = 0; i != v75; i = i + 1)
                  {
                    if (*v147 != v77)
                    {
                      objc_enumerationMutation(transactionMetrics2);
                    }

                    v81 = *(*(&v146 + 1) + 8 * i);
                    responseStartDate = [v81 responseStartDate];
                    responseEndDate = [v81 responseEndDate];
                    v84 = responseEndDate;
                    if (responseStartDate)
                    {
                      v85 = responseEndDate == 0;
                    }

                    else
                    {
                      v85 = 1;
                    }

                    if (!v85 && [responseStartDate compare:responseEndDate] == -1)
                    {
                      [v84 timeIntervalSinceDate:responseStartDate];
                      v79 = v79 + v86;
                      v78 = v78 + [v81 countOfResponseBodyBytesReceived] / v86;
                      ++v76;
                    }
                  }

                  v75 = [transactionMetrics2 countByEnumeratingWithState:&v146 objects:buf count:16];
                }

                while (v75);

                taskCopy = v135;
                if (v76 < 1)
                {
                  v88 = 0.0;
                }

                else
                {
                  v88 = v78 / v76;
                }

                self = selfCopy2;
              }

              else
              {

                v79 = 0.0;
                v88 = 0.0;
              }

              v29 = v136;
              v11 = v137;
              v91 = objc_getProperty(v67, v87, 56, 1);
              [_TtC9appstored8QALogger linearDownloadWithLogKey:v91 totalDuration:v79 throughputAvg:v88 throughputMin:v67[19] throughputMax:v67[18]];

              v90 = v88 * 8.0;
            }

            else
            {
              v90 = 0.0;
              v79 = 0.0;
              v11 = v137;
            }

            v50 = v139;
            if (os_variant_has_internal_content())
            {
              v92 = sub_100200A94();

              if (v92)
              {
                v93 = objc_opt_new();
                v95 = objc_getProperty(v67, v94, 96, 1);
                v97 = v95;
                if (v95)
                {
                  v95 = objc_getProperty(v95, v96, 40, 1);
                }

                v98 = v95;
                [v93 setObject:v98 forKeyedSubscript:@"linearBundleID"];

                v100 = objc_getProperty(v67, v99, 96, 1);
                v101 = v100;
                if (v100)
                {
                  v102 = v100[16];
                }

                else
                {
                  v102 = 0;
                }

                v103 = [NSNumber numberWithInteger:v102];
                [v93 setObject:v103 forKeyedSubscript:@"linearDownloadHashAlgorithm"];

                v105 = objc_getProperty(v67, v104, 96, 1);
                v106 = v105;
                if (v105)
                {
                  v107 = v105[4] >> 20;
                }

                else
                {
                  v107 = 0;
                }

                v108 = [NSNumber numberWithLong:v107];
                [v93 setObject:v108 forKeyedSubscript:@"linearDownloadPieceLength"];

                v110 = objc_getProperty(v67, v109, 96, 1);
                v111 = v110;
                if (v110)
                {
                  v112 = v110[5];
                }

                else
                {
                  v112 = 0;
                }

                v113 = [NSNumber numberWithUnsignedInt:v112];
                [v93 setObject:v113 forKeyedSubscript:@"linearDownloadPieceCount"];

                [v93 setObject:&__kCFBooleanTrue forKeyedSubscript:@"downloadIsLinear"];
                v114 = [NSString stringWithFormat:@"%.2f", *&v79];
                [v93 setObject:v114 forKeyedSubscript:@"linearDownloadDuration"];

                v115 = [NSNumber numberWithUnsignedLongLong:vcvtad_u64_f64(v90 / 1000000.0)];
                [v93 setObject:v115 forKeyedSubscript:@"linearDownloadAverageThroughput"];

                v116 = [NSNumber numberWithUnsignedLongLong:vcvtad_u64_f64(v67[18] * 8.0 / 1000000.0)];
                [v93 setObject:v116 forKeyedSubscript:@"linearDownloadMaximumThroughput"];

                v117 = [NSNumber numberWithUnsignedLongLong:vcvtad_u64_f64(v67[19] * 8.0 / 1000000.0)];
                [v93 setObject:v117 forKeyedSubscript:@"linearDownloadMinimumThroughput"];

                if (*(v9 + 16) == 3)
                {
                  v118 = @"Canceled";
                }

                else
                {
                  v118 = @"Completed";
                }

                [v93 setObject:v118 forKeyedSubscript:@"result"];
                v119 = sub_100200A94();
                v144[0] = _NSConcreteStackBlock;
                v144[1] = 3221225472;
                v144[2] = sub_10037956C;
                v144[3] = &unk_10051B398;
                v145 = v93;
                v120 = v93;
                sub_100200CAC(v119, 1002, v144);

                v29 = v136;
                v11 = v137;
                v50 = v139;
              }
            }
          }

          else
          {

            v133 = v50;
          }

          v142[0] = _NSConcreteStackBlock;
          v142[1] = 3221225472;
          v142[2] = sub_100375574;
          v142[3] = &unk_10051B230;
          v142[4] = self;
          v89 = &v143;
          v143 = v50;
          [v11 finishWithCompletionHandler:v142];
          errorCopy = v138;
        }

        sessions = self->_sessions;
        v123 = objc_getProperty(v29, v122, 32, 1);
        v124 = [(NSMutableDictionary *)sessions objectForKeyedSubscript:v123];
        v125 = sub_10036AAC0(v124);

        v126 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
        {
          v128 = objc_getProperty(v29, v127, 56, 1);
          v130 = objc_getProperty(v29, v129, 32, 1);
          *buf = 138412802;
          *&buf[4] = v128;
          *&buf[12] = 2114;
          *&buf[14] = v130;
          *&buf[22] = 2048;
          v151 = v125;
          _os_log_debug_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEBUG, "[%@] Ended active task in session: %{public}@, now %llu active tasks.", buf, 0x20u);
        }

        goto LABEL_80;
      }

      v23 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v131 = objc_getProperty(v9, v24, 56, 1);
        *buf = 138412546;
        *&buf[4] = v131;
        *&buf[12] = 2114;
        *&buf[14] = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%@] Encountered failure while using local cache, restarting using original request: %{public}@", buf, 0x16u);
      }

      *(v9 + 9) = 1;
    }

    *(v9 + 16) = 1;
    goto LABEL_21;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    *&buf[4] = taskCopy;
    *&buf[12] = 2114;
    *&buf[14] = errorCopy;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Untracked task: %{public}@ completed with error: %{public}@", buf, 0x16u);
  }

LABEL_80:
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  taskCopy = task;
  metricsCopy = metrics;
  v8 = sub_10020F4B4(AssetTaskInfo, taskCopy);
  v9 = ASDLogHandleForCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      v12 = objc_getProperty(v8, v11, 56, 1);
      *buf = 138412802;
      v34 = v12;
      v35 = 2114;
      v36 = taskCopy;
      v37 = 2114;
      v38 = metricsCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%@] Collected metrics for task: %{public}@ metrics: %{public}@", buf, 0x20u);
    }

    v27 = taskCopy;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    newValue = metricsCopy;
    transactionMetrics = [metricsCopy transactionMetrics];
    v14 = [transactionMetrics countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(transactionMetrics);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          v19 = sub_10033DE9C(v18);
          if (v19)
          {
            v20 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v22 = objc_getProperty(v8, v21, 56, 1);
              v23 = (8 * [v18 countOfResponseBodyBytesReceived]);
              [v19 duration];
              *buf = 138412546;
              v34 = v22;
              v35 = 2048;
              v36 = (v23 / v24);
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%@] Response body received speed: %{bitrate}llu", buf, 0x16u);
            }
          }
        }

        v15 = [transactionMetrics countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v15);
    }

    metricsCopy = newValue;
    objc_setProperty_atomic(v8, v25, newValue, 64);
    taskCopy = v27;
  }

  else
  {
    if (v10)
    {
      *buf = 138543362;
      v34 = taskCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Untracked task: %{public}@ did finish collecting metrics", buf, 0xCu);
    }
  }
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  taskCopy = task;
  challengeCopy = challenge;
  handlerCopy = handler;
  v11 = sub_10020F4B4(AssetTaskInfo, taskCopy);
  if (v11)
  {
    protectionSpace = [challengeCopy protectionSpace];
    authenticationMethod = [protectionSpace authenticationMethod];
    if ([authenticationMethod isEqualToString:NSURLAuthenticationMethodClientCertificate])
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_getProperty(v11, v15, 56, 1);
        *buf = 138412290;
        v45 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] Using client certificate for authentication challenge", buf, 0xCu);
      }

      handlerCopy[2](handlerCopy, 1, 0);
    }

    else if ([authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust])
    {
      error = 0;
      v19 = SecTrustEvaluateWithError([protectionSpace serverTrust], &error);
      v20 = ASDLogHandleForCategory();
      v21 = v20;
      if (v19)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v23 = objc_getProperty(v11, v22, 56, 1);
          *buf = 138412290;
          v45 = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%@] Using server trust for authentication challenge", buf, 0xCu);
        }

        v24 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [protectionSpace serverTrust]);
        (handlerCopy)[2](handlerCopy, 0, v24);
      }

      else
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v38 = objc_getProperty(v11, v36, 56, 1);
          *buf = 138412546;
          v45 = v38;
          v46 = 2114;
          v47 = error;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[%@] Failing server trust for authentication challenge: %{public}@", buf, 0x16u);
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
      v25 = objc_getProperty(v11, v18, 96, 1);
      if (v25)
      {
        v26 = v25[8];
      }

      else
      {
        v26 = 0;
      }

      v27 = ASDLogHandleForCategory();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      if (v26)
      {
        if (v28)
        {
          v30 = objc_getProperty(v11, v29, 56, 1);
          *buf = 138412290;
          v45 = v30;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%@] Prompting user for authentication challenge", buf, 0xCu);
        }

        v31 = sub_10033A47C([AuthenticationChallenge alloc], challengeCopy);
        v32 = sub_10029F2B8(AuthenticationChallengeDialogRequest, v31);
        v33 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v32];
        present = [v33 present];
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_1003767D0;
        v39[3] = &unk_10051D618;
        v40 = v11;
        v41 = v31;
        v42 = handlerCopy;
        v35 = v31;
        [present addFinishBlock:v39];
      }

      else
      {
        if (v28)
        {
          v37 = objc_getProperty(v11, v29, 56, 1);
          *buf = 138412290;
          v45 = v37;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%@] Prompting for authentication is not permitted", buf, 0xCu);
        }

        handlerCopy[2](handlerCopy, 2, 0);
      }
    }
  }

  else
  {
    v17 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v45 = taskCopy;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Untracked task: %{public}@ canceling after challenge", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, 2, 0);
  }
}

- (void)URLSession:(id)session task:(id)task _alternatePathAvailable:(int)available
{
  taskCopy = task;
  v7 = sub_10020F4B4(AssetTaskInfo, taskCopy);
  if (v7)
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = objc_getProperty(v7, v9, 56, 1);
      v26 = 138412802;
      v27 = v10;
      v28 = 2114;
      v29 = taskCopy;
      v30 = 1024;
      availableCopy = available;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%@] Task: %{public}@ has alternate path available: %u", &v26, 0x1Cu);
    }

    if (available == 3 && (v12 = objc_getProperty(v7, v11, 96, 1)) != 0 && (v13 = v12[9], v12, (v13 & 1) != 0))
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_getProperty(v7, v15, 56, 1);
        v26 = 138412546;
        v27 = v16;
        v28 = 2114;
        v29 = taskCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] Task: %{public}@ restarting to take advantage of alternate path", &v26, 0x16u);
      }

      v7[2] = 1;
      objc_setProperty_atomic(v7, v17, 0, 40);
      [taskCopy cancel];
    }

    else
    {
      v18 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v20 = available == 3;
        v21 = objc_getProperty(v7, v19, 56, 1);
        v23 = objc_getProperty(v7, v22, 96, 1);
        v24 = v23;
        if (v23)
        {
          v25 = *(v23 + 9) & 1;
        }

        else
        {
          v25 = 0;
        }

        v26 = 138413058;
        v27 = v21;
        v28 = 2114;
        v29 = taskCopy;
        v30 = 1024;
        availableCopy = v20;
        v32 = 1024;
        v33 = v25;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[%@] Task: %{public}@ has alternate path but we are ignorning it: recommended = %{BOOL}d, allow cellular = %{BOOL}d", &v26, 0x22u);
      }
    }
  }
}

- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler
{
  taskCopy = task;
  connectionCopy = connection;
  handlerCopy = handler;
  v11 = sub_10020F4B4(AssetTaskInfo, taskCopy);
  if (v11)
  {
    v12 = ASDLogHandleForCategory();
    v13 = v12;
    v14 = v11[16];
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      v16 = objc_getProperty(v11, v15, 56, 1);
      v21 = 138543362;
      v22 = v16;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, v14, "TaskConnecting", " uuid=%{public, signpost.description:attribute}@ ", &v21, 0xCu);
    }

    v17 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_getProperty(v11, v18, 56, 1);
      v21 = 138412546;
      v22 = v19;
      v23 = 2114;
      v24 = taskCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%@] Task: %{public}@ will send request", &v21, 0x16u);
    }

    v20 = connectionCopy;
  }

  else
  {
    v17 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v21 = 138543362;
      v22 = taskCopy;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Untracked task: %{public}@ canceling after established connection", &v21, 0xCu);
    }

    v20 = 0;
  }

  (handlerCopy)[2](handlerCopy, v20);
}

@end