@interface SubmissionController
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SubmissionController)init;
- (void)handleOptInChange;
- (void)overrideSubmissionServiceMountPath:(id)path withReply:(id)reply;
- (void)submitWithOptions:(id)options resultsCallback:(id)callback;
@end

@implementation SubmissionController

- (SubmissionController)init
{
  v15.receiver = self;
  v15.super_class = SubmissionController;
  v2 = [(SubmissionController *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.OTACrashCopier.requestQueue", 0);
    requestQueue = v2->_requestQueue;
    v2->_requestQueue = v3;

    v5 = objc_alloc_init(OSASubmissionPolicy);
    policy = v2->_policy;
    v2->_policy = v5;

    v7 = objc_alloc_init(ConnectionInfo);
    connectionInfo = v2->_connectionInfo;
    v2->_connectionInfo = v7;

    v9 = objc_alloc_init(OSAHttpSubmitter);
    submitter = v2->_submitter;
    v2->_submitter = v9;

    v11 = objc_opt_new();
    one_shot_events = v2->_one_shot_events;
    v2->_one_shot_events = v11;

    v13 = +[NSDate date];
    [(NSMutableDictionary *)v2->_one_shot_events setObject:v13 forKeyedSubscript:@"launch"];
  }

  return v2;
}

- (void)handleOptInChange
{
  v3 = +[OSASystemConfiguration sharedInstance];
  optInApple = [v3 optInApple];

  v5 = +[NSDate date];
  one_shot_events = self->_one_shot_events;
  if (optInApple)
  {
    [(NSMutableDictionary *)one_shot_events setObject:v5 forKeyedSubscript:@"opt-in"];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Submission preference opt-in; retiring existing logs.", buf, 2u);
    }
  }

  else
  {
    [(NSMutableDictionary *)one_shot_events setObject:v5 forKeyedSubscript:@"opt-out"];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Submission preference opt-out; cancelling pending submissions and retiring logs", buf, 2u);
    }

    [(OSASubmitter *)self->_submitter abort];
  }

  v7 = +[OSASystemConfiguration sharedInstance];
  logDomain = [v7 logDomain];

  if (os_log_type_enabled(logDomain, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[OSASystemConfiguration sharedInstance];
    optInApple2 = [v9 optInApple];
    v11 = @"OUT";
    if (optInApple2)
    {
      v11 = @"IN";
    }

    *buf = 138412290;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, logDomain, OS_LOG_TYPE_DEFAULT, "OptInChange (%@); purging logs", buf, 0xCu);
  }

  [OSALog createRetiredDirectoriesForUser:0];
  v12 = [OSASubmitter submissionPathsWithHomeDirectory:0 withProxies:1];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [OSALog purgeLogs:*(*(&v17 + 1) + 8 * v16) withReason:"opt-changed" includeRetired:0 deleteOnRetire:0 usingPredicate:&stru_100008308];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___OSASubmissionServices];
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  [connectionCopy _setQueue:&_dispatch_main_q];
  [connectionCopy resume];

  return 1;
}

- (void)submitWithOptions:(id)options resultsCallback:(id)callback
{
  optionsCopy = options;
  callbackCopy = callback;
  v8 = [optionsCopy objectForKeyedSubscript:@"checkEntitlement"];
  if (([v8 BOOLValue] & 1) == 0)
  {

    goto LABEL_7;
  }

  v9 = +[NSXPCConnection currentConnection];
  v10 = [v9 valueForEntitlement:@"com.apple.private.osanalytics.SubmitLogs.allow"];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
LABEL_7:
    requestQueue = self->_requestQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001CBC;
    block[3] = &unk_100008380;
    v14 = optionsCopy;
    selfCopy = self;
    v16 = callbackCopy;
    dispatch_async(requestQueue, block);

    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100002498();
    if (!callbackCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if (callbackCopy)
  {
LABEL_5:
    (*(callbackCopy + 2))(callbackCopy, &off_1000086A0);
  }

LABEL_8:
}

- (void)overrideSubmissionServiceMountPath:(id)path withReply:(id)reply
{
  pathCopy = path;
  replyCopy = reply;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = +[NSXPCConnection currentConnection];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 valueForEntitlement:@"com.apple.private.osanalytics.MountPathOverride.allow"];
    bOOLValue = [v10 BOOLValue];

    if (bOOLValue)
    {
      if (pathCopy)
      {
        requestQueue = self->_requestQueue;
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100002370;
        v14[3] = &unk_1000083A8;
        v16 = &v17;
        v15 = pathCopy;
        dispatch_sync(requestQueue, v14);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10000252C();
      }
    }

    else
    {
      v13 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000024E0(buf, [v9 processIdentifier]);
      }
    }
  }

  replyCopy[2](replyCopy, *(v18 + 24));

  _Block_object_dispose(&v17, 8);
}

@end