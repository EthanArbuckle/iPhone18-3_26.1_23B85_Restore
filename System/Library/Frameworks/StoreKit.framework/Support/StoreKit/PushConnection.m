@interface PushConnection
+ (id)_newConnectionForEnvironment:(id)a3 dispatchQueue:(id)a4;
- (NSString)description;
- (PushConnection)initWithEnvironment:(id)a3;
- (PushConnection)initWithEnvironment:(id)a3 queue:(id)a4;
- (PushConnectionDelegate)delegate;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
@end

@implementation PushConnection

- (PushConnection)initWithEnvironment:(id)a3
{
  v4 = a3;
  v5 = dispatch_queue_create("com.apple.storekit.PushConnection", 0);
  v6 = [(PushConnection *)self initWithEnvironment:v4 queue:v5];

  return v6;
}

- (PushConnection)initWithEnvironment:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = PushConnection;
  v9 = [(PushConnection *)&v19 init];
  if (v9)
  {
    v10 = objc_opt_new();
    historyLock = v9->_historyLock;
    v9->_historyLock = v10;

    v12 = +[NSUUID lib_shortLogKey];
    logKey = v9->_logKey;
    v9->_logKey = v12;

    objc_storeStrong(&v9->_dispatchQueue, a4);
    objc_storeStrong(&v9->_environment, a3);
    v14 = objc_alloc_init(TaskQueue);
    taskQueue = v9->_taskQueue;
    v9->_taskQueue = v14;

    [(TaskQueue *)v9->_taskQueue setName:@"com.apple.storekit.PushConnectionTaskQueue"];
    v16 = [PushConnection _newConnectionForEnvironment:v7 dispatchQueue:v8];
    connection = v9->_connection;
    v9->_connection = v16;

    [(APSConnection *)v9->_connection setDelegate:v9];
    [(APSConnection *)v9->_connection setEnabledTopics:&off_1003A1588 ignoredTopics:&__NSArray0__struct];
  }

  return v9;
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  dispatchQueue = self->_dispatchQueue;
  v8 = a4;
  dispatch_assert_queue_V2(dispatchQueue);
  v9 = [[PushMessage alloc] initWithMessage:v8];

  if (qword_1003D4230 != -1)
  {
    sub_1002CD874();
  }

  v10 = qword_1003D4208;
  if (os_log_type_enabled(qword_1003D4208, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v22 = v6;
    v23 = 2114;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Connection: %{public}@ received incoming message: %{public}@", buf, 0x16u);
  }

  historyLock = self->_historyLock;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10004A9AC;
  v18 = &unk_10037F868;
  v19 = self;
  v12 = v9;
  v20 = v12;
  sub_10004D3C0(historyLock, &v15);
  if ([(PushMessage *)v12 actionType:v15]== -1)
  {
    if (qword_1003D4230 != -1)
    {
      sub_1002CD888();
    }

    v14 = qword_1003D4208;
    if (os_log_type_enabled(qword_1003D4208, OS_LOG_TYPE_ERROR))
    {
      sub_1002CD8B0(v12, v14);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pushConnection:self didRecieveMessage:v12];
  }
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (qword_1003D4230 != -1)
  {
    sub_1002CD874();
  }

  v6 = qword_1003D4208;
  if (os_log_type_enabled(qword_1003D4208, OS_LOG_TYPE_INFO))
  {
    logKey = self->_logKey;
    v8 = v6;
    v9 = [v5 lib_digestMD5];
    environment = self->_environment;
    v11 = 138543874;
    v12 = logKey;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = environment;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] Received new public token: %{public}@ for environment: %{public}@", &v11, 0x20u);
  }
}

- (NSString)description
{
  environment = self->_environment;
  v3 = [(APSConnection *)self->_connection publicToken];
  v4 = [v3 lib_shortDigestMD5];
  v5 = [NSString stringWithFormat:@"%@/%@", environment, v4];

  return v5;
}

+ (id)_newConnectionForEnvironment:(id)a3 dispatchQueue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[APSConnection alloc] initWithEnvironmentName:v6 namedDelegatePort:@"com.apple.aps.storekitservice" queue:v5];

  return v7;
}

- (PushConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end