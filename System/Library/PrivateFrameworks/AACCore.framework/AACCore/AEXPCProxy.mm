@interface AEXPCProxy
- (id)initWithOrigin:(void *)origin interface:;
- (id)makeConnection;
- (void)connection;
- (void)connectionDidInterrupt;
- (void)connectionDidInvalidate;
- (void)dealloc;
- (void)remoteObjectProxyWithErrorHandler:(void *)handler;
- (void)synchronousRemoteObjectProxyWithErrorHandler:(void *)handler;
@end

@implementation AEXPCProxy

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = AEXPCProxy;
  [(AEXPCProxy *)&v3 dealloc];
}

- (id)makeConnection
{
  if (val)
  {
    objc_initWeak(&location, val);
    v2 = val[4];
    makeConnection = [v2 makeConnection];

    v4 = val[5];
    [makeConnection setRemoteObjectInterface:v4];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __28__AEXPCProxy_makeConnection__block_invoke;
    v8[3] = &unk_278BB6CF0;
    objc_copyWeak(&v9, &location);
    [makeConnection setInterruptionHandler:v8];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __28__AEXPCProxy_makeConnection__block_invoke_2;
    v6[3] = &unk_278BB6CF0;
    objc_copyWeak(&v7, &location);
    [makeConnection setInvalidationHandler:v6];
    [makeConnection resume];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    makeConnection = 0;
  }

  return makeConnection;
}

void __28__AEXPCProxy_makeConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AEXPCProxy *)WeakRetained connectionDidInterrupt];
}

void __28__AEXPCProxy_makeConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AEXPCProxy *)WeakRetained connectionDidInvalidate];
}

- (id)initWithOrigin:(void *)origin interface:
{
  v6 = a2;
  originCopy = origin;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = AEXPCProxy;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 4, a2);
      objc_storeStrong(self + 5, origin);
    }
  }

  return self;
}

- (void)remoteObjectProxyWithErrorHandler:(void *)handler
{
  handlerCopy = handler;
  if (handler)
  {
    v3 = a2;
    connection = [(AEXPCProxy *)handlerCopy connection];
    handlerCopy = [connection remoteObjectProxyWithErrorHandler:v3];
  }

  return handlerCopy;
}

- (void)connection
{
  if (val)
  {
    v2 = val;
    v3 = val[1];
    if (!v3)
    {
      makeConnection = [(AEXPCProxy *)val makeConnection];
      v5 = v2[1];
      v2[1] = makeConnection;

      v3 = v2[1];
    }

    val = v3;
    v1 = vars8;
  }

  return val;
}

- (void)synchronousRemoteObjectProxyWithErrorHandler:(void *)handler
{
  handlerCopy = handler;
  if (handler)
  {
    v3 = a2;
    connection = [(AEXPCProxy *)handlerCopy connection];
    handlerCopy = [connection synchronousRemoteObjectProxyWithErrorHandler:v3];
  }

  return handlerCopy;
}

- (void)connectionDidInterrupt
{
  if (self)
  {
    interruptionHandler = [self interruptionHandler];
    if (interruptionHandler)
    {
      v2 = interruptionHandler;
      interruptionHandler[2]();
      interruptionHandler = v2;
    }
  }
}

- (void)connectionDidInvalidate
{
  if (self)
  {
    invalidationHandler = [self invalidationHandler];
    [self setInvalidationHandler:0];
    v2 = invalidationHandler;
    if (invalidationHandler)
    {
      (*(invalidationHandler + 16))(invalidationHandler);
      v2 = invalidationHandler;
    }
  }
}

@end