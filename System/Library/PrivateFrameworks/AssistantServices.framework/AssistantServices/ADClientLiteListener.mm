@interface ADClientLiteListener
- (ADClientLiteListener)init;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)_decrementAndTestExecutionCount;
- (void)_doDelayedClientWorkIfAny:(id)a3;
- (void)_incrementAndTestExecutionCount;
- (void)doClientWork:(id)a3 withTimeoutBlock:(id)a4;
- (void)doDelayedClientWorkIfAny;
@end

@implementation ADClientLiteListener

- (void)_decrementAndTestExecutionCount
{
  v2 = self->_executionCount - 1;
  self->_executionCount = v2;
  if (v2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315138;
      v5 = "[ADClientLiteListener _decrementAndTestExecutionCount]";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Unexpected execution count. File radar.", &v4, 0xCu);
    }
  }
}

- (void)_incrementAndTestExecutionCount
{
  executionCount = self->_executionCount;
  self->_executionCount = executionCount + 1;
  if (executionCount >= 1)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315138;
      v5 = "[ADClientLiteListener _incrementAndTestExecutionCount]";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Unexpected execution count. File radar.", &v4, 0xCu);
    }
  }
}

- (void)_doDelayedClientWorkIfAny:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001778E0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(a3, block);
}

- (void)doDelayedClientWorkIfAny
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[ADClientLiteListener doDelayedClientWorkIfAny]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v4, 0xCu);
  }

  [(ADClientLiteListener *)self _doDelayedClientWorkIfAny:self->_queue];
}

- (void)doClientWork:(id)a3 withTimeoutBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[ADClientLiteListener doClientWork:withTimeoutBlock:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100177C44;
  block[3] = &unk_10051C510;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  v12 = queue;
  dispatch_async(v12, block);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = AFClientLiteEntitlement;
  HasEntitlement = AFConnectionHasEntitlement();
  if (HasEntitlement)
  {
    v8 = AFClientLiteClientObjectInterface();
    [v5 setRemoteObjectInterface:v8];

    v9 = AFClientLiteRemoteObjectInterface();
    [v5 setExportedInterface:v9];

    v10 = [[ADClientLite alloc] initWithListener:self connection:v5];
    [v5 setExportedObject:v10];

    [v5 resume];
  }

  else
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v13 = v11;
      v14 = 136315650;
      v15 = "[ADClientLiteListener listener:shouldAcceptNewConnection:]";
      v16 = 1026;
      v17 = [v5 processIdentifier];
      v18 = 2112;
      v19 = v6;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Client with pid %{public}d does not have entitlement %@", &v14, 0x1Cu);
    }
  }

  return HasEntitlement;
}

- (ADClientLiteListener)init
{
  v12.receiver = self;
  v12.super_class = ADClientLiteListener;
  v2 = [(ADClientLiteListener *)&v12 init];
  if (v2)
  {
    v3 = [NSXPCListener alloc];
    v4 = [v3 initWithMachServiceName:AFClientLiteServiceName];
    listener = v2->_listener;
    v2->_listener = v4;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(0, v6);

    queue = v2->_queue;
    v2->_queue = v7;

    v9 = objc_alloc_init(AFQueue);
    workItemQueue = v2->_workItemQueue;
    v2->_workItemQueue = v9;

    v2->_executionCount = 0;
  }

  return v2;
}

@end