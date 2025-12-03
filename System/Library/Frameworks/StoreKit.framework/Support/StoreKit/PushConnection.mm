@interface PushConnection
+ (id)_newConnectionForEnvironment:(id)environment dispatchQueue:(id)queue;
- (NSString)description;
- (PushConnection)initWithEnvironment:(id)environment;
- (PushConnection)initWithEnvironment:(id)environment queue:(id)queue;
- (PushConnectionDelegate)delegate;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
@end

@implementation PushConnection

- (PushConnection)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = dispatch_queue_create("com.apple.storekit.PushConnection", 0);
  v6 = [(PushConnection *)self initWithEnvironment:environmentCopy queue:v5];

  return v6;
}

- (PushConnection)initWithEnvironment:(id)environment queue:(id)queue
{
  environmentCopy = environment;
  queueCopy = queue;
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

    objc_storeStrong(&v9->_dispatchQueue, queue);
    objc_storeStrong(&v9->_environment, environment);
    v14 = objc_alloc_init(TaskQueue);
    taskQueue = v9->_taskQueue;
    v9->_taskQueue = v14;

    [(TaskQueue *)v9->_taskQueue setName:@"com.apple.storekit.PushConnectionTaskQueue"];
    v16 = [PushConnection _newConnectionForEnvironment:environmentCopy dispatchQueue:queueCopy];
    connection = v9->_connection;
    v9->_connection = v16;

    [(APSConnection *)v9->_connection setDelegate:v9];
    [(APSConnection *)v9->_connection setEnabledTopics:&off_1003A1588 ignoredTopics:&__NSArray0__struct];
  }

  return v9;
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  dispatchQueue = self->_dispatchQueue;
  messageCopy = message;
  dispatch_assert_queue_V2(dispatchQueue);
  v9 = [[PushMessage alloc] initWithMessage:messageCopy];

  if (qword_1003D4230 != -1)
  {
    sub_1002CD874();
  }

  v10 = qword_1003D4208;
  if (os_log_type_enabled(qword_1003D4208, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v22 = connectionCopy;
    v23 = 2114;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Connection: %{public}@ received incoming message: %{public}@", buf, 0x16u);
  }

  historyLock = self->_historyLock;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10004A9AC;
  v18 = &unk_10037F868;
  selfCopy = self;
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

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  tokenCopy = token;
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
    lib_digestMD5 = [tokenCopy lib_digestMD5];
    environment = self->_environment;
    v11 = 138543874;
    v12 = logKey;
    v13 = 2114;
    v14 = lib_digestMD5;
    v15 = 2114;
    v16 = environment;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] Received new public token: %{public}@ for environment: %{public}@", &v11, 0x20u);
  }
}

- (NSString)description
{
  environment = self->_environment;
  publicToken = [(APSConnection *)self->_connection publicToken];
  lib_shortDigestMD5 = [publicToken lib_shortDigestMD5];
  v5 = [NSString stringWithFormat:@"%@/%@", environment, lib_shortDigestMD5];

  return v5;
}

+ (id)_newConnectionForEnvironment:(id)environment dispatchQueue:(id)queue
{
  queueCopy = queue;
  environmentCopy = environment;
  v7 = [[APSConnection alloc] initWithEnvironmentName:environmentCopy namedDelegatePort:@"com.apple.aps.storekitservice" queue:queueCopy];

  return v7;
}

- (PushConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end