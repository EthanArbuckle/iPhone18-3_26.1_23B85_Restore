@interface JobManagerListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (JobManagerListener)init;
- (void)_handleLegacyNotifications:(id)notifications;
- (void)cancelJobsWithIDs:(id)ds completionBlock:(id)block;
- (void)finishJobsWithIDs:(id)ds replyBlock:(id)block;
- (void)getJobsUsingReplyBlock:(id)block;
- (void)getJobsWithIDs:(id)ds usingReplyBlock:(id)block;
- (void)pauseJobsWithIDs:(id)ds completionBlock:(id)block;
- (void)registerJobManagerWithOptions:(id)options replyBlock:(id)block;
- (void)resumeJobsWithIDs:(id)ds completionBlock:(id)block;
@end

@implementation JobManagerListener

- (JobManagerListener)init
{
  v12.receiver = self;
  v12.super_class = JobManagerListener;
  v2 = [(JobManagerListener *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.JobManagerListener", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = +[NSMapTable weakToStrongObjectsMapTable];
    clients = v2->_clients;
    v2->_clients = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    progress = v2->_progress;
    v2->_progress = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"_handleLegacyNotifications:" name:@"LegacyNotifications" object:0];
  }

  return v2;
}

- (void)cancelJobsWithIDs:(id)ds completionBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  v8 = +[NSXPCConnection currentConnection];
  v9 = +[BagService appstoredService];
  dispatchQueue = self->_dispatchQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100314640;
  v14[3] = &unk_10051C2C8;
  v14[4] = self;
  v15 = v8;
  v16 = dsCopy;
  v17 = blockCopy;
  v11 = blockCopy;
  v12 = dsCopy;
  v13 = v8;
  [v9 bagOnQueue:dispatchQueue completionHandler:v14];
}

- (void)finishJobsWithIDs:(id)ds replyBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  v8 = +[NSXPCConnection currentConnection];
  v9 = +[BagService appstoredService];
  dispatchQueue = self->_dispatchQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100314A2C;
  v14[3] = &unk_10051C2C8;
  v14[4] = self;
  v15 = v8;
  v16 = dsCopy;
  v17 = blockCopy;
  v11 = blockCopy;
  v12 = dsCopy;
  v13 = v8;
  [v9 bagOnQueue:dispatchQueue completionHandler:v14];
}

- (void)getJobsUsingReplyBlock:(id)block
{
  blockCopy = block;
  v5 = +[NSXPCConnection currentConnection];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100314CE0;
  block[3] = &unk_10051C078;
  block[4] = self;
  v10 = v5;
  v11 = blockCopy;
  v7 = blockCopy;
  v8 = v5;
  dispatch_async(dispatchQueue, block);
}

- (void)getJobsWithIDs:(id)ds usingReplyBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  v8 = +[NSXPCConnection currentConnection];
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100314F2C;
  v13[3] = &unk_10051C7A8;
  v13[4] = self;
  v14 = v8;
  v15 = dsCopy;
  v16 = blockCopy;
  v10 = blockCopy;
  v11 = dsCopy;
  v12 = v8;
  dispatch_async(dispatchQueue, v13);
}

- (void)pauseJobsWithIDs:(id)ds completionBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  v8 = +[NSXPCConnection currentConnection];
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100315244;
  v13[3] = &unk_10051C7A8;
  v13[4] = self;
  v14 = v8;
  v15 = dsCopy;
  v16 = blockCopy;
  v10 = blockCopy;
  v11 = dsCopy;
  v12 = v8;
  dispatch_async(dispatchQueue, v13);
}

- (void)registerJobManagerWithOptions:(id)options replyBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  v8 = +[NSXPCConnection currentConnection];
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003154C0;
  v13[3] = &unk_10051C7A8;
  v13[4] = self;
  v14 = v8;
  v15 = optionsCopy;
  v16 = blockCopy;
  v10 = blockCopy;
  v11 = optionsCopy;
  v12 = v8;
  dispatch_async(dispatchQueue, v13);
}

- (void)resumeJobsWithIDs:(id)ds completionBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  v8 = +[NSXPCConnection currentConnection];
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003157D4;
  v13[3] = &unk_10051C7A8;
  v13[4] = self;
  v14 = v8;
  v15 = dsCopy;
  v16 = blockCopy;
  v10 = blockCopy;
  v11 = dsCopy;
  v12 = v8;
  dispatch_async(dispatchQueue, v13);
}

- (void)_handleLegacyNotifications:(id)notifications
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [notifications object];
  v4 = [obj countByEnumeratingWithState:&v23 objects:v41 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"identifier"];
        v10 = [v8 objectForKeyedSubscript:@"kind"];
        if ([v10 isEqualToString:@"import"])
        {
          v40 = v9;
          v11 = [NSArray arrayWithObjects:&v40 count:1];
          v12 = v11;
          if (self)
          {
            dispatchQueue = self->_dispatchQueue;
            block = _NSConcreteStackBlock;
            v28 = 3221225472;
            v29 = sub_100317730;
            v30 = &unk_10051B570;
            selfCopy3 = self;
            v32 = v11;
            dispatch_async(dispatchQueue, &block);
          }
        }

        else if ([v10 isEqualToString:@"state"])
        {
          v12 = [v8 objectForKeyedSubscript:@"phase"];
          v38 = v9;
          v39 = v12;
          v14 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          v15 = v14;
          if (self)
          {
            v16 = self->_dispatchQueue;
            block = _NSConcreteStackBlock;
            v28 = 3221225472;
            v29 = sub_100317D6C;
            v30 = &unk_10051B570;
            selfCopy3 = self;
            v32 = v14;
            dispatch_async(v16, &block);
          }
        }

        else if ([v10 isEqualToString:@"finish"])
        {
          v17 = [v8 objectForKeyedSubscript:@"phase"];
          v36 = v9;
          v37 = &off_100547F50;
          v18 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          sub_100315D74(self, v18);

          v19 = v9;
          v12 = v17;
          if (self)
          {
            v20 = self->_dispatchQueue;
            block = _NSConcreteStackBlock;
            v28 = 3221225472;
            v29 = sub_100317830;
            v30 = &unk_10051AEE8;
            selfCopy3 = self;
            v32 = v19;
            v33 = v12;
            dispatch_async(v20, &block);
          }
        }

        else
        {
          if (![v10 isEqualToString:@"progress"])
          {
            goto LABEL_21;
          }

          v12 = [v8 objectForKeyedSubscript:@"fraction"];
          v34 = v9;
          v35 = v12;
          v21 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
          sub_100315D74(self, v21);
        }

LABEL_21:
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v41 count:16];
    }

    while (v5);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  if (sub_1002280AC(self, connectionCopy, @"com.apple.appstored.jobmanager"))
  {
    goto LABEL_5;
  }

  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 1024;
    *&buf[14] = processIdentifier;
    v8 = *&buf[4];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%@]: Treating %i as legacy client", buf, 0x12u);
  }

  if (sub_1002280AC(self, connectionCopy, @"com.apple.itunesstored.private"))
  {
LABEL_5:
    v9 = connectionCopy;
    v10 = v9;
    if (self)
    {
      processIdentifier2 = [v9 processIdentifier];
      v12 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        *buf = 138543618;
        *&buf[4] = v13;
        *&buf[12] = 1024;
        *&buf[14] = processIdentifier2;
        v14 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}@]: Got connection from pid: %i", buf, 0x12u);
      }

      v15 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ASDJobManager];
      [v10 setExportedInterface:v15];
      [v10 setExportedObject:self];
      v16 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ASDJobManagerClient];
      [v10 setRemoteObjectInterface:v16];
      objc_initWeak(&location, self);
      objc_initWeak(&from, v10);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1003174D4;
      v25[3] = &unk_10051B858;
      objc_copyWeak(&v26, &location);
      v27 = processIdentifier2;
      [v10 setInterruptionHandler:v25];
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1003175BC;
      v31 = &unk_10051B880;
      objc_copyWeak(&v32, &location);
      objc_copyWeak(&v33, &from);
      v34 = processIdentifier2;
      [v10 setInvalidationHandler:buf];
      [v10 resume];
      objc_destroyWeak(&v33);
      objc_destroyWeak(&v32);
      objc_destroyWeak(&v26);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    dispatchQueue = self->_dispatchQueue;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100316668;
    v22[3] = &unk_10051B570;
    v23 = v10;
    selfCopy = self;
    dispatch_async(dispatchQueue, v22);

    v18 = 1;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      *buf = 138412546;
      *&buf[4] = v20;
      *&buf[12] = 1024;
      *&buf[14] = processIdentifier;
      v21 = v20;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[%@]: Connection denied for pid: %i for non entitled client", buf, 0x12u);
    }

    v18 = 0;
  }

  return v18;
}

@end