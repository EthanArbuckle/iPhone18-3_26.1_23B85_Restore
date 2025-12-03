@interface ADDiagnosticsManager
- (ADDiagnosticsManager)initWithQueue:(id)queue;
- (void)updateLatencyDiagnosticConfiguration:(id)configuration completion:(id)completion;
@end

@implementation ADDiagnosticsManager

- (void)updateLatencyDiagnosticConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v7 = dispatch_group_create();
  v8 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  selfCopy = self;
  v9 = [NSURLSession sessionWithConfiguration:v8 delegate:self delegateQueue:0];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v26 = configurationCopy;
  obj = [configurationCopy diagnosticActions];
  v10 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = [v14 uri];
        v16 = [NSMutableURLRequest requestWithURL:v15];
        verb = [v14 verb];
        [v16 setHTTPMethod:verb];
        v18 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v39 = "[ADDiagnosticsManager updateLatencyDiagnosticConfiguration:completion:]";
          v40 = 2112;
          v41 = v16;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Dispatching diagnostic request: %@", buf, 0x16u);
        }

        dispatch_group_enter(v7);
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100147F64;
        v31[3] = &unk_100512FA0;
        v32 = v16;
        v33 = v7;
        v19 = v16;
        v20 = [v9 dataTaskWithRequest:v19 completionHandler:v31];
        [v20 resume];
      }

      v11 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v11);
  }

  queue = selfCopy->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001480D0;
  block[3] = &unk_10051E038;
  v29 = v9;
  v30 = completionCopy;
  v22 = v9;
  v23 = completionCopy;
  dispatch_group_notify(v7, queue, block);
}

- (ADDiagnosticsManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = ADDiagnosticsManager;
  v6 = [(ADDiagnosticsManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

@end