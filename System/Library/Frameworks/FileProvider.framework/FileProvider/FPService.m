@interface FPService
- (FPService)initWithEndpoint:(id)a3 interface:(id)a4 lifetimeExtender:(id)a5 providerDomainID:(id)a6;
- (FPService)initWithProxy:(id)a3 interface:(id)a4 lifetimeExtender:(id)a5 providerDomainID:(id)a6;
- (id)remoteObjectProxy;
- (id)synchronousRemoteObjectProxy;
- (void)dealloc;
- (void)invalidate;
@end

@implementation FPService

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  [(FPDLifetimeServicing *)obj->_extender stopExtendingLifetime];
  extender = obj->_extender;
  obj->_extender = 0;

  [(NSXPCConnection *)obj->_connection invalidate];
  objc_sync_exit(obj);
}

- (void)dealloc
{
  [(FPService *)self invalidate];
  v3.receiver = self;
  v3.super_class = FPService;
  [(FPService *)&v3 dealloc];
}

- (id)remoteObjectProxy
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __30__FPService_remoteObjectProxy__block_invoke;
  aBlock[3] = &unk_1E793B1B0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [FPXPCAutomaticErrorProxy alloc];
  connection = self->_connection;
  if (!connection)
  {
    connection = self->_proxy;
  }

  v6 = [(NSXPCInterface *)self->_interface protocol];
  v7 = [(NSXPCInterface *)self->_interface protocol];
  v8 = NSStringFromProtocol(v7);
  v9 = [(FPXPCAutomaticErrorProxy *)v4 initWithConnection:connection protocol:v6 orError:0 name:v8 requestPid:getpid() requestWillBegin:v3];

  return v9;
}

id __30__FPService_remoteObjectProxy__block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __30__FPService_remoteObjectProxy__block_invoke_2;
  aBlock[3] = &unk_1E793B188;
  aBlock[4] = *(a1 + 32);
  v1 = _Block_copy(aBlock);

  return v1;
}

- (FPService)initWithProxy:(id)a3 interface:(id)a4 lifetimeExtender:(id)a5 providerDomainID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = FPService;
  v13 = [(FPService *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_extender, a5);
    objc_storeStrong(&v14->_proxy, a3);
    objc_storeStrong(&v14->_interface, a4);
  }

  return v14;
}

- (FPService)initWithEndpoint:(id)a3 interface:(id)a4 lifetimeExtender:(id)a5 providerDomainID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27.receiver = self;
  v27.super_class = FPService;
  v14 = [(FPService *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_extender, a5);
    v16 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v10];
    connection = v15->_connection;
    v15->_connection = v16;

    [(NSXPCConnection *)v15->_connection setRemoteObjectInterface:v11];
    v18 = v15->_connection;
    v19 = [[FPXPCSanitizer alloc] initWithProviderDomainIdentifier:v13];
    [(NSXPCConnection *)v18 fp_annotateWithXPCSanitizer:v19];

    objc_storeStrong(&v15->_interface, a4);
    objc_initWeak(&location, v15);
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __74__FPService_initWithEndpoint_interface_lifetimeExtender_providerDomainID___block_invoke;
    v24 = &unk_1E7939010;
    objc_copyWeak(&v25, &location);
    [(NSXPCConnection *)v15->_connection setInterruptionHandler:&v21];
    [(NSXPCConnection *)v15->_connection resume:v21];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __74__FPService_initWithEndpoint_interface_lifetimeExtender_providerDomainID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

- (id)synchronousRemoteObjectProxy
{
  v2 = [(FPService *)self remoteObjectProxy];
  v3 = [v2 synchronousRemoteObjectProxy];

  return v3;
}

@end