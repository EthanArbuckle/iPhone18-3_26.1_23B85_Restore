@interface HSObjectServer
+ (HSObjectServer)serverWithAddress:(id)a3 port:(unsigned __int16)a4 config:(const HSObjectServerConfig *)a5;
- (BOOL)addClient:(FileDescriptor *)a3 config:(const HSObjectServerAddClientConfig *)a4;
- (HSObjectServer)initWithConfig:(const HSObjectServerConfig *)a3;
- (id).cxx_construct;
- (uint64_t)addClient:config:;
- (void)_close;
- (void)_handleConnectionClosed:(shared_ptr<HSMapper>)a3;
- (void)addClient:config:;
- (void)dealloc;
@end

@implementation HSObjectServer

- (HSObjectServer)initWithConfig:(const HSObjectServerConfig *)a3
{
  WeakRetained = objc_loadWeakRetained(&a3->var0);

  if (!WeakRetained)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HSRemoteObject.mm" lineNumber:547 description:{@"Invalid parameter not satisfying: %@", @"config.rootObject"}];
  }

  if (!a3->var1)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HSRemoteObject.mm" lineNumber:548 description:{@"Invalid parameter not satisfying: %@", @"config.handlerQueue"}];
  }

  v17.receiver = self;
  v17.super_class = HSObjectServer;
  v7 = [(HSObjectServer *)&v17 init];
  if (v7)
  {
    v8 = objc_loadWeakRetained(&a3->var0);
    objc_storeWeak(v7 + 12, v8);

    objc_storeStrong(v7 + 13, a3->var1);
    v9 = objc_retainBlock(a3->var2);
    v10 = *(v7 + 14);
    *(v7 + 14) = v9;

    v11 = objc_retainBlock(a3->var3);
    v12 = *(v7 + 15);
    *(v7 + 15) = v11;

    v13 = v7;
  }

  return v7;
}

- (void)dealloc
{
  v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    [(HSObjectServer *)v3 dealloc:v4];
  }

  [(HSObjectServer *)self _close];
  v11.receiver = self;
  v11.super_class = HSObjectServer;
  [(HSObjectServer *)&v11 dealloc];
}

- (BOOL)addClient:(FileDescriptor *)a3 config:(const HSObjectServerAddClientConfig *)a4
{
  v7 = *(self + 14);
  if (v7)
  {
    (*(v7 + 16))(v7, a2);
  }

  objc_initWeak(&location, self);
  objc_copyWeak(&to, self + 12);
  var0 = a4->var0;
  objc_copyWeak(&from, &location);
  v15 = 0;
  v13 = off_10A1F0;
  objc_moveWeak(&v14, &from);
  v15 = &v13;
  objc_destroyWeak(&from);
  HSMapper::New(a3, *(self + 13));
}

- (void)_close
{
  std::mutex::lock((self + 8));
  v3 = (self + 80);
  v4 = *(self + 10);
  v11 = *(self + 9);
  v12 = v4;
  if (*(self + 11))
  {
    v4[2] = &v12;
    *(self + 9) = v3;
    *v3 = 0;
    *(self + 11) = 0;
  }

  else
  {
    v11 = &v12;
  }

  std::mutex::unlock((self + 8));
  v5 = v11;
  if (v11 != &v12)
  {
    do
    {
      v6 = v5[4];
      v7 = v5[5];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      HSUtil::Connection::_close(*(v6 + 16), 2, 1);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != &v12);
  }

  std::__tree<std::shared_ptr<HSMapper>>::destroy(&v11, v12);
}

- (void)_handleConnectionClosed:(shared_ptr<HSMapper>)a3
{
  ptr = a3.__ptr_;
  std::mutex::lock((self + 8));
  std::__tree<std::shared_ptr<HSMapper>>::__erase_unique<std::shared_ptr<HSMapper>>(self + 9, ptr);
  std::mutex::unlock((self + 8));
  v5 = *(self + 15);
  if (v5)
  {
    v6 = *(v5 + 16);

    v6();
  }
}

- (id).cxx_construct
{
  *(self + 1) = 850045863;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 11) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  *(self + 9) = self + 80;
  return self;
}

- (void)addClient:config:
{
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 8));
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

- (uint64_t)addClient:config:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)addClient:config:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

+ (HSObjectServer)serverWithAddress:(id)a3 port:(unsigned __int16)a4 config:(const HSObjectServerConfig *)a5
{
  v6 = a4;
  v9 = a3;
  if (v9)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"HSRemoteObject+Additions.mm" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"addr"}];

    if (v6)
    {
      goto LABEL_3;
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  [v13 handleFailureInMethod:a2 object:a1 file:@"HSRemoteObject+Additions.mm" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"port > 0"}];

LABEL_3:
  HSUtil::CreateServerSocket([v9 UTF8String], v6, v14);
  if (v15 < 0)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRemoteObject+Additions.mm", v16);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      +[HSObjectServer(Additions) serverWithAddress:port:config:];
    }

    v10 = 0;
  }

  else
  {
    v10 = [[HSObjectServerListener alloc] initWithSocket:v14 config:a5];
  }

  HSUtil::FileDescriptor::~FileDescriptor(v14);

  return v10;
}

@end