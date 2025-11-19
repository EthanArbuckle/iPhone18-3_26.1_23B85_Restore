@interface AEXPCProxy
- (id)initWithOrigin:(void *)a3 interface:;
- (id)makeConnection;
- (void)connection;
- (void)connectionDidInterrupt;
- (void)connectionDidInvalidate;
- (void)dealloc;
- (void)remoteObjectProxyWithErrorHandler:(void *)a1;
- (void)synchronousRemoteObjectProxyWithErrorHandler:(void *)a1;
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
    v3 = [v2 makeConnection];

    v4 = val[5];
    [v3 setRemoteObjectInterface:v4];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __28__AEXPCProxy_makeConnection__block_invoke;
    v8[3] = &unk_278BB6CF0;
    objc_copyWeak(&v9, &location);
    [v3 setInterruptionHandler:v8];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __28__AEXPCProxy_makeConnection__block_invoke_2;
    v6[3] = &unk_278BB6CF0;
    objc_copyWeak(&v7, &location);
    [v3 setInvalidationHandler:v6];
    [v3 resume];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    v3 = 0;
  }

  return v3;
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

- (id)initWithOrigin:(void *)a3 interface:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = AEXPCProxy;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 4, a2);
      objc_storeStrong(a1 + 5, a3);
    }
  }

  return a1;
}

- (void)remoteObjectProxyWithErrorHandler:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [(AEXPCProxy *)v2 connection];
    v2 = [v4 remoteObjectProxyWithErrorHandler:v3];
  }

  return v2;
}

- (void)connection
{
  if (val)
  {
    v2 = val;
    v3 = val[1];
    if (!v3)
    {
      v4 = [(AEXPCProxy *)val makeConnection];
      v5 = v2[1];
      v2[1] = v4;

      v3 = v2[1];
    }

    val = v3;
    v1 = vars8;
  }

  return val;
}

- (void)synchronousRemoteObjectProxyWithErrorHandler:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [(AEXPCProxy *)v2 connection];
    v2 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v3];
  }

  return v2;
}

- (void)connectionDidInterrupt
{
  if (a1)
  {
    v1 = [a1 interruptionHandler];
    if (v1)
    {
      v2 = v1;
      v1[2]();
      v1 = v2;
    }
  }
}

- (void)connectionDidInvalidate
{
  if (a1)
  {
    v3 = [a1 invalidationHandler];
    [a1 setInvalidationHandler:0];
    v2 = v3;
    if (v3)
    {
      (*(v3 + 16))(v3);
      v2 = v3;
    }
  }
}

@end