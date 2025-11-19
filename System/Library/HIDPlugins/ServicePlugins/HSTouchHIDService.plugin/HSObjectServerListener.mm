@interface HSObjectServerListener
- (HSObjectServerListener)initWithSocket:(FileDescriptor *)a3 config:(const HSObjectServerConfig *)a4;
@end

@implementation HSObjectServerListener

- (HSObjectServerListener)initWithSocket:(FileDescriptor *)a3 config:(const HSObjectServerConfig *)a4
{
  if (a3->_fd < 0)
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"HSRemoteObject+Additions.mm" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"socket"}];
  }

  v21.receiver = self;
  v21.super_class = HSObjectServerListener;
  v7 = [(HSObjectServer *)&v21 initWithConfig:a4];
  if (v7)
  {
    v8 = dispatch_queue_create("HSObjectServerListener queue", 0);
    queue = v7->_queue;
    v7->_queue = v8;

    objc_initWeak(&location, v7);
    v10 = [HSSocketListener alloc];
    v11 = v7->_queue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __48__HSObjectServerListener_initWithSocket_config___block_invoke;
    v18[3] = &unk_10A318;
    objc_copyWeak(&v19, &location);
    v12 = [(HSSocketListener *)v10 initWithSocket:a3 queue:v11 clientHandler:v18];
    listener = v7->_listener;
    v7->_listener = v12;

    if (v7->_listener)
    {
      v14 = v7;
    }

    else
    {
      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRemoteObject+Additions.mm", v22);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [HSObjectServerListener initWithSocket:config:];
      }

      v14 = 0;
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __48__HSObjectServerListener_initWithSocket_config___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = 0;
  [WeakRetained addClient:a2 config:&v4];
}

- (void)initWithSocket:config:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end