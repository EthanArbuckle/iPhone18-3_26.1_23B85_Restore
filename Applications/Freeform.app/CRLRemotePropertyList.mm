@interface CRLRemotePropertyList
- (CRLRemotePropertyList)init;
- (CRLRemotePropertyList)initWithRemoteURL:(id)l localURL:(id)rL;
- (double)timeIntervalUntilNextUpdate;
- (id)URLForKey:(id)key;
- (id)URLRequest;
- (id)arrayForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)objectForKey:(id)key;
- (id)stringForKey:(id)key;
- (void)checkForUpdateWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)processDidResume:(id)resume;
- (void)processPropertyList:(id)list;
- (void)processResponse:(id)response data:(id)data error:(id)error;
- (void)processWillSuspend:(id)suspend;
- (void)startUpdateTimer;
- (void)updateIfNeededWithCompletionHandler:(id)handler;
@end

@implementation CRLRemotePropertyList

- (void)startUpdateTimer
{
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_checkQueue);
  updateTimer = self->_updateTimer;
  self->_updateTimer = v3;

  [(CRLRemotePropertyList *)self timeIntervalUntilNextUpdate];
  dispatch_source_set_timer(self->_updateTimer, (v5 * 1000000000.0), 0x4E94914F0000uLL, 0x34630B8A000uLL);
  objc_initWeak(&location, self);
  v6 = self->_updateTimer;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100580934;
  v7[3] = &unk_10183AF10;
  objc_copyWeak(&v8, &location);
  dispatch_source_set_event_handler(v6, v7);
  dispatch_resume(self->_updateTimer);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (double)timeIntervalUntilNextUpdate
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 stringByAppendingString:@"NextUpdate"];
  v6 = [v2 objectForKey:v5];

  v7 = 0.0;
  if (v6)
  {
    v8 = objc_opt_class();
    v9 = sub_100013F00(v8, v6);

    if (v9)
    {
      v10 = +[NSDate date];
      [v6 timeIntervalSinceDate:v10];
      v12 = v11;

      v7 = fmax(v12, 0.0);
    }
  }

  return v7;
}

- (CRLRemotePropertyList)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018702B8);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLRemotePropertyList init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLRemoteDefaults.m";
    v18 = 1024;
    v19 = 41;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018702D8);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v13 = v2;
    v14 = 2114;
    v15 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v7 = [NSString stringWithUTF8String:"[CRLRemotePropertyList init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLRemoteDefaults.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:41 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLRemotePropertyList init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (CRLRemotePropertyList)initWithRemoteURL:(id)l localURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v30.receiver = self;
  v30.super_class = CRLRemotePropertyList;
  v8 = [(CRLRemotePropertyList *)&v30 init];
  if (v8)
  {
    v9 = [lCopy copy];
    remoteURL = v8->_remoteURL;
    v8->_remoteURL = v9;

    v11 = [rLCopy copy];
    localURL = v8->_localURL;
    v8->_localURL = v11;

    if (rLCopy)
    {
      if (([rLCopy isFileURL] & 1) == 0)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101396110();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101396138();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013961C0();
        }

        v13 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v13);
        }

        v14 = [NSString stringWithUTF8String:"[CRLRemotePropertyList initWithRemoteURL:localURL:]"];
        v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLRemoteDefaults.m"];
        [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:52 isFatal:0 description:"Local URL should be a file URL."];
      }

      v16 = [[NSDictionary alloc] initWithContentsOfURL:rLCopy];
      propertyList = v8->_propertyList;
      v8->_propertyList = v16;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v19 stringByAppendingString:@".Access"];

    v21 = dispatch_queue_create([v20 UTF8String], 0);
    accessQueue = v8->_accessQueue;
    v8->_accessQueue = v21;

    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [v24 stringByAppendingString:@".Check"];

    v26 = dispatch_queue_create([v25 UTF8String], 0);
    checkQueue = v8->_checkQueue;
    v8->_checkQueue = v26;

    [(CRLRemotePropertyList *)v8 startUpdateTimer];
    v28 = +[NSNotificationCenter defaultCenter];
    [v28 addObserver:v8 selector:"processWillSuspend:" name:UIApplicationWillResignActiveNotification object:0];
    [v28 addObserver:v8 selector:"processDidResume:" name:UIApplicationDidBecomeActiveNotification object:0];
  }

  return v8;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  updateTimer = self->_updateTimer;
  if (updateTimer)
  {
    dispatch_source_cancel(updateTimer);
  }

  v5.receiver = self;
  v5.super_class = CRLRemotePropertyList;
  [(CRLRemotePropertyList *)&v5 dealloc];
}

- (void)processWillSuspend:(id)suspend
{
  updateTimer = self->_updateTimer;
  if (updateTimer)
  {
    dispatch_source_cancel(updateTimer);
    v5 = self->_updateTimer;
    self->_updateTimer = 0;
  }
}

- (void)processDidResume:(id)resume
{
  if (!self->_updateTimer)
  {
    [(CRLRemotePropertyList *)self startUpdateTimer];
  }
}

- (void)updateIfNeededWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  checkQueue = self->_checkQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100580A70;
  v7[3] = &unk_10183FC10;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(checkQueue, v7);
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100580BB8;
  v16 = sub_100580BC8;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100580BD0;
  block[3] = &unk_10183DE60;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v6 = [(CRLRemotePropertyList *)self objectForKey:keyCopy];

  v7 = sub_100014370(v5, v6);

  return v7;
}

- (id)URLForKey:(id)key
{
  v3 = [(CRLRemotePropertyList *)self objectForKey:key];
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, v3);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    v7 = objc_opt_class();
    v8 = sub_100014370(v7, v3);
    if (v8)
    {
      v5 = [NSURL URLWithString:v8];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v6 = [(CRLRemotePropertyList *)self objectForKey:keyCopy];

  v7 = sub_100014370(v5, v6);

  return v7;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v6 = [(CRLRemotePropertyList *)self objectForKey:keyCopy];

  v7 = sub_100014370(v5, v6);

  return v7;
}

- (void)checkForUpdateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  uRLRequest = [(CRLRemotePropertyList *)self URLRequest];
  dispatch_suspend(self->_checkQueue);
  +[UIApplication sharedApplication];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100580F9C;
  v14 = &unk_101870340;
  v16 = v15 = self;
  v17 = handlerCopy;
  v18 = [v16 beginBackgroundTaskWithExpirationHandler:0];
  v6 = handlerCopy;
  v7 = v16;
  v8 = objc_retainBlock(&v11);
  v9 = [NSURLSession sharedSession:v11];
  v10 = [v9 dataTaskWithRequest:uRLRequest completionHandler:v8];

  [v10 resume];
}

- (id)URLRequest
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 stringByAppendingString:@"DownloadURL"];
  v7 = [v3 stringForKey:v6];

  if (![v7 length] || (+[NSURL URLWithString:](NSURL, "URLWithString:", v7), (v8 = objc_claimAutoreleasedReturnValue()) == 0) || (v9 = v8, -[CRLRemotePropertyList validateUserDefaultsDownloadURL:](self, "validateUserDefaultsDownloadURL:", v8), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v10 = self->_remoteURL;
  }

  v11 = [[NSMutableURLRequest alloc] initWithURL:v10];
  [v11 setTimeoutInterval:20.0];
  [v11 setCachePolicy:1];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v13 stringByAppendingString:@"ETag"];
  v15 = [v3 stringForKey:v14];

  if ([v15 length])
  {
    [v11 setValue:v15 forHTTPHeaderField:@"If-None-Match"];
  }

  return v11;
}

- (void)processResponse:(id)response data:(id)data error:(id)error
{
  responseCopy = response;
  dataCopy = data;
  errorCopy = error;
  statusCode = [responseCopy statusCode];
  v12 = statusCode;
  if (statusCode == 304 || statusCode == 200)
  {
    v13 = +[NSUserDefaults standardUserDefaults];
    v14 = [NSDate dateWithTimeIntervalSinceNow:86400.0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v16 stringByAppendingString:@"NextUpdate"];
    [v13 setObject:v14 forKey:v17];

    if (v12 == 200 && [dataCopy length])
    {
      v26 = 0;
      v18 = [(CRLRemotePropertyList *)self deserializePropertyListData:dataCopy error:&v26];
      v19 = v26;

      if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [(CRLRemotePropertyList *)self processPropertyList:v18];
        allHeaderFields = [responseCopy allHeaderFields];
        v21 = [allHeaderFields objectForKey:@"Etag"];

        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = [v23 stringByAppendingString:@"ETag"];
        [v13 setObject:v21 forKey:v24];

        self->_didUpdateAtLeastOnce = 1;
      }

      else
      {
        if (qword_101AD5A08 != -1)
        {
          sub_1013961E8();
        }

        v25 = off_1019EDA60;
        if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
        {
          sub_101396210(v25, v19);
        }
      }
    }

    else
    {
      v19 = errorCopy;
    }

    errorCopy = v19;
  }
}

- (void)processPropertyList:(id)list
{
  listCopy = list;
  v5 = listCopy;
  localURL = self->_localURL;
  if (localURL && ([listCopy writeToURL:localURL atomically:0] & 1) == 0)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_101396300();
    }

    v7 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_101396314(&self->_localURL, v7);
    }
  }

  accessQueue = self->_accessQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100581600;
  v10[3] = &unk_10183AE28;
  v10[4] = self;
  v11 = v5;
  v9 = v5;
  dispatch_async(accessQueue, v10);
}

@end