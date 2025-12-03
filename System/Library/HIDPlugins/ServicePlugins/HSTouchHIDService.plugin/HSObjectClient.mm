@interface HSObjectClient
+ (id)clientWithAddress:(id)address port:(unsigned __int16)port config:(const HSObjectClientConfig *)config;
- (HSObjectClient)initWithSocket:(FileDescriptor *)socket config:(const HSObjectClientConfig *)config;
- (id).cxx_construct;
- (uint64_t)initWithSocket:config:;
- (void)_handleConnectionClosed:(shared_ptr<HSMapper>)closed;
- (void)dealloc;
- (void)initWithSocket:config:;
@end

@implementation HSObjectClient

- (HSObjectClient)initWithSocket:(FileDescriptor *)socket config:(const HSObjectClientConfig *)config
{
  if (socket->_fd < 0)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HSRemoteObject.mm" lineNumber:629 description:{@"Invalid parameter not satisfying: %@", @"socket"}];
  }

  if (!config->handlerQueue)
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"HSRemoteObject.mm" lineNumber:630 description:{@"Invalid parameter not satisfying: %@", @"config.handlerQueue"}];
  }

  v17.receiver = self;
  v17.super_class = HSObjectClient;
  v8 = [(HSObjectClient *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_config.handlerQueue, config->handlerQueue);
    v9->_config.async = config->async;
    v10 = objc_retainBlock(config->connectionClosed);
    connectionClosed = v9->_config.connectionClosed;
    v9->_config.connectionClosed = v10;

    objc_initWeak(&location, v9);
    v18 = 0;
    async = v9->_config.async;
    objc_copyWeak(&to, &location);
    v22 = 0;
    v20 = off_10A280;
    objc_moveWeak(&v21, &to);
    v22 = &v20;
    objc_destroyWeak(&to);
    HSMapper::New(socket, v9->_config.handlerQueue);
  }

  return 0;
}

- (void)dealloc
{
  v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    [(HSObjectClient *)v3 dealloc:v4];
  }

  [(HSObjectClient *)self _close];
  v11.receiver = self;
  v11.super_class = HSObjectClient;
  [(HSObjectClient *)&v11 dealloc];
}

- (void)_handleConnectionClosed:(shared_ptr<HSMapper>)closed
{
  connectionClosed = self->_config.connectionClosed;
  if (connectionClosed)
  {
    connectionClosed[2]();
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 16) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  return self;
}

- (void)initWithSocket:config:
{
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  WeakRetained = objc_loadWeakRetained((self + 8));
  v5 = WeakRetained;
  v6 = v3;
  v7 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [WeakRetained _handleConnectionClosed:&v6];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

- (uint64_t)initWithSocket:config:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)initWithSocket:config:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

+ (id)clientWithAddress:(id)address port:(unsigned __int16)port config:(const HSObjectClientConfig *)config
{
  portCopy = port;
  addressCopy = address;
  if (addressCopy)
  {
    if (portCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"HSRemoteObject+Additions.mm" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"addr"}];

    if (portCopy)
    {
      goto LABEL_3;
    }
  }

  v15 = +[NSAssertionHandler currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"HSRemoteObject+Additions.mm" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"port > 0"}];

LABEL_3:
  HSUtil::CreateClientSocket([addressCopy UTF8String], portCopy, v16);
  if (v17 < 0)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRemoteObject+Additions.mm", v18);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      +[HSObjectClient(Additions) clientWithAddress:port:config:];
    }

    v11 = 0;
  }

  else
  {
    v10 = [[HSObjectClient alloc] initWithSocket:v16 config:config];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRemoteObject+Additions.mm", v18);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        +[HSObjectClient(Additions) clientWithAddress:port:config:];
      }
    }
  }

  HSUtil::FileDescriptor::~FileDescriptor(v16);

  return v11;
}

@end