@interface FPService
- (FPService)initWithEndpoint:(id)endpoint interface:(id)interface lifetimeExtender:(id)extender providerDomainID:(id)d;
- (FPService)initWithProxy:(id)proxy interface:(id)interface lifetimeExtender:(id)extender providerDomainID:(id)d;
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

  protocol = [(NSXPCInterface *)self->_interface protocol];
  protocol2 = [(NSXPCInterface *)self->_interface protocol];
  v8 = NSStringFromProtocol(protocol2);
  v9 = [(FPXPCAutomaticErrorProxy *)v4 initWithConnection:connection protocol:protocol orError:0 name:v8 requestPid:getpid() requestWillBegin:v3];

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

- (FPService)initWithProxy:(id)proxy interface:(id)interface lifetimeExtender:(id)extender providerDomainID:(id)d
{
  proxyCopy = proxy;
  interfaceCopy = interface;
  extenderCopy = extender;
  v16.receiver = self;
  v16.super_class = FPService;
  v13 = [(FPService *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_extender, extender);
    objc_storeStrong(&v14->_proxy, proxy);
    objc_storeStrong(&v14->_interface, interface);
  }

  return v14;
}

- (FPService)initWithEndpoint:(id)endpoint interface:(id)interface lifetimeExtender:(id)extender providerDomainID:(id)d
{
  endpointCopy = endpoint;
  interfaceCopy = interface;
  extenderCopy = extender;
  dCopy = d;
  v27.receiver = self;
  v27.super_class = FPService;
  v14 = [(FPService *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_extender, extender);
    v16 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:endpointCopy];
    connection = v15->_connection;
    v15->_connection = v16;

    [(NSXPCConnection *)v15->_connection setRemoteObjectInterface:interfaceCopy];
    v18 = v15->_connection;
    v19 = [[FPXPCSanitizer alloc] initWithProviderDomainIdentifier:dCopy];
    [(NSXPCConnection *)v18 fp_annotateWithXPCSanitizer:v19];

    objc_storeStrong(&v15->_interface, interface);
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
  remoteObjectProxy = [(FPService *)self remoteObjectProxy];
  synchronousRemoteObjectProxy = [remoteObjectProxy synchronousRemoteObjectProxy];

  return synchronousRemoteObjectProxy;
}

@end