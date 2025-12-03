@interface OSADiagnosticMonitorServer
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (OSADiagnosticMonitorServer)init;
- (void)didWriteLog:(id)log filePath:(id)path;
- (void)failedToWriteLog:(id)log error:(id)error;
- (void)willWriteLog:(id)log details:(id)details;
@end

@implementation OSADiagnosticMonitorServer

+ (id)sharedInstance
{
  if (qword_10002A420 != -1)
  {
    sub_1000158E0();
  }

  v3 = qword_10002A418;

  return v3;
}

- (OSADiagnosticMonitorServer)init
{
  v11.receiver = self;
  v11.super_class = OSADiagnosticMonitorServer;
  v2 = [(OSADiagnosticMonitorServer *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.osanalystics.diagnosticmonitorserver", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[NSMutableSet set];
    clients = v2->_clients;
    v2->_clients = v5;

    v7 = [NSXPCListener alloc];
    v8 = [v7 initWithMachServiceName:kOSADiagnosticMonitorMachService];
    listener = v2->_listener;
    v2->_listener = v8;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (void)willWriteLog:(id)log details:(id)details
{
  logCopy = log;
  detailsCopy = details;
  v8 = DiagnosticMonitorLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = logCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received log event: %@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BAE4;
  block[3] = &unk_100025098;
  block[4] = self;
  v13 = logCopy;
  v14 = detailsCopy;
  v10 = detailsCopy;
  v11 = logCopy;
  dispatch_async(queue, block);
}

- (void)didWriteLog:(id)log filePath:(id)path
{
  logCopy = log;
  pathCopy = path;
  v8 = DiagnosticMonitorLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = logCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Log write succeeded: %@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BD38;
  block[3] = &unk_100025098;
  block[4] = self;
  v13 = logCopy;
  v14 = pathCopy;
  v10 = pathCopy;
  v11 = logCopy;
  dispatch_async(queue, block);
}

- (void)failedToWriteLog:(id)log error:(id)error
{
  logCopy = log;
  errorCopy = error;
  v8 = DiagnosticMonitorLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = logCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Log write failed: %@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BF8C;
  block[3] = &unk_100025098;
  block[4] = self;
  v13 = logCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = logCopy;
  dispatch_async(queue, block);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.osanalytics.canusediagnosticmonitor"];
  bOOLValue = [v6 BOOLValue];

  v8 = DiagnosticMonitorLog();
  v9 = v8;
  if (bOOLValue)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100015994(connectionCopy);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1000158F4(connectionCopy, v9);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C1B4;
  block[3] = &unk_1000250C0;
  block[4] = self;
  v14 = connectionCopy;
  v15 = bOOLValue;
  v11 = connectionCopy;
  dispatch_async(queue, block);

  return 1;
}

@end