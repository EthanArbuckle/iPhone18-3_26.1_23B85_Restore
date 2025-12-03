@interface ClipURLSession
- (ClipURLSession)init;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
@end

@implementation ClipURLSession

- (ClipURLSession)init
{
  v3 = +[AMSProcessInfo currentProcess];
  v4 = v3;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = ClipURLSession;
    v5 = [(ClipURLSession *)&v12 init];
    self = v5;
    if (v5)
    {
      objc_storeStrong(&v5->_clientInfo, v3);
      self->_lock._os_unfair_lock_opaque = 0;
      v6 = objc_alloc_init(NSMutableDictionary);
      tasks = self->_tasks;
      self->_tasks = v6;

      v8 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
      v9 = [NSURLSession sessionWithConfiguration:v8 delegate:self delegateQueue:0];
      session = self->_session;
      self->_session = v9;
    }
  }

  return self;
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  os_unfair_lock_lock_with_options();
  tasks = self->_tasks;
  v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [taskCopy taskIdentifier]);
  v11 = [(NSMutableDictionary *)tasks objectForKeyedSubscript:v10];

  v12 = self->_tasks;
  v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [taskCopy taskIdentifier]);
  [(NSMutableDictionary *)v12 setObject:0 forKeyedSubscript:v13];

  os_unfair_lock_unlock(&self->_lock);
  if (v11)
  {
    Property = objc_getProperty(v11, v14, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v16 = Property;
  completedUnitCount = [v16 completedUnitCount];
  if (v11)
  {
    v19 = objc_getProperty(v11, v17, 32, 1);
    [v19 setTotalUnitCount:completedUnitCount];

    v21 = objc_getProperty(v11, v20, 48, 1);
  }

  else
  {
    [0 setTotalUnitCount:completedUnitCount];

    v21 = 0;
  }

  v22 = v21;
  [v22 close];

  if (errorCopy)
  {
    if (v11 && (v24 = objc_getProperty(v11, v23, 24, 1)) != 0)
    {
      v25 = v24;
      v26 = v25;
    }

    else
    {
      v26 = ASDErrorWithSafeUserInfo();
      v25 = 0;
    }

    v33 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      if (v11)
      {
        v35 = objc_getProperty(v11, v34, 56, 1);
      }

      else
      {
        v35 = 0;
      }

      v36 = v35;
      v40 = 138412802;
      v41 = v36;
      v42 = 2114;
      v43 = taskCopy;
      v44 = 2114;
      v45 = v26;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[%@] Failed task: %{public}@ error: %{public}@", &v40, 0x20u);
    }

    if (v11)
    {
      v38 = objc_getProperty(v11, v37, 40, 1);
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;
    sub_1001CEA8C(v39, v26);
  }

  else
  {
    v27 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      if (v11)
      {
        v29 = objc_getProperty(v11, v28, 56, 1);
      }

      else
      {
        v29 = 0;
      }

      v30 = v29;
      v40 = 138412546;
      v41 = v30;
      v42 = 2114;
      v43 = taskCopy;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%@] Completed task: %{public}@", &v40, 0x16u);
    }

    if (v11)
    {
      v32 = objc_getProperty(v11, v31, 40, 1);
    }

    else
    {
      v32 = 0;
    }

    v26 = v32;
    sub_1001CE9E4(v26, &__kCFBooleanTrue);
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  sessionCopy = session;
  taskCopy = task;
  dataCopy = data;
  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = dataCopy;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Received data: %{public}@", &buf, 0xCu);
  }

  os_unfair_lock_lock_with_options();
  tasks = self->_tasks;
  v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [taskCopy taskIdentifier]);
  v14 = [(NSMutableDictionary *)tasks objectForKeyedSubscript:v13];

  os_unfair_lock_unlock(&self->_lock);
  countOfBytesReceived = [taskCopy countOfBytesReceived];
  if (v14)
  {
    v17 = objc_getProperty(v14, v15, 32, 1);
    [v17 setCompletedUnitCount:countOfBytesReceived];

    Property = objc_getProperty(v14, v18, 48, 1);
  }

  else
  {
    [0 setCompletedUnitCount:countOfBytesReceived];
    Property = 0;
  }

  v20 = Property;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = sub_1003349CC;
  v33 = sub_1003349DC;
  v34 = 0;
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1003349E4;
  v27 = &unk_100523948;
  v21 = v20;
  v28 = v21;
  p_buf = &buf;
  [dataCopy enumerateByteRangesUsingBlock:&v24];
  v23 = *(*(&buf + 1) + 40);
  if (v23)
  {
    if (v14)
    {
      objc_setProperty_atomic(v14, v22, v23, 24);
    }

    [taskCopy cancel];
  }

  _Block_object_dispose(&buf, 8);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  os_unfair_lock_lock_with_options();
  tasks = self->_tasks;
  v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [taskCopy taskIdentifier]);
  v14 = [(NSMutableDictionary *)tasks objectForKeyedSubscript:v13];

  os_unfair_lock_unlock(&self->_lock);
  v15 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (v14)
    {
      Property = objc_getProperty(v14, v16, 56, 1);
    }

    else
    {
      Property = 0;
    }

    v18 = Property;
    *buf = 138412546;
    v39 = v18;
    v40 = 2114;
    v41 = responseCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@] Received response: %{public}@", buf, 0x16u);
  }

  v19 = sub_100284B18(responseCopy);
  v20 = v19;
  if (v19 && [v19 length])
  {
    v21 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      if (v14)
      {
        v23 = objc_getProperty(v14, v22, 56, 1);
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;
      *buf = 138412802;
      v39 = v24;
      v40 = 2114;
      v41 = taskCopy;
      v42 = 2114;
      v43 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%@] Task: %{public}@ CDNUUID: %{public}@", buf, 0x20u);
    }
  }

  v25 = sub_100271518(responseCopy);
  if (v25 > 0x18F)
  {
    v36 = ASDErrorHTTPStatusCodeKey;
    v33 = [NSNumber numberWithUnsignedInteger:v25];
    v37 = v33;
    v31 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];

    v35 = ASDErrorWithUserInfoAndFormat();
    if (v14)
    {
      objc_setProperty_atomic(v14, v34, v35, 24);
    }

    v32 = 0;
  }

  else
  {
    countOfBytesExpectedToReceive = [taskCopy countOfBytesExpectedToReceive];
    if (v14)
    {
      v28 = objc_getProperty(v14, v26, 32, 1);
      [v28 setTotalUnitCount:countOfBytesExpectedToReceive];

      v30 = objc_getProperty(v14, v29, 48, 1);
    }

    else
    {
      [0 setTotalUnitCount:countOfBytesExpectedToReceive];
      v30 = 0;
    }

    v31 = v30;
    [v31 expectedContentLength:{objc_msgSend(taskCopy, "countOfBytesExpectedToReceive")}];
    v32 = 1;
  }

  handlerCopy[2](handlerCopy, v32);
}

@end