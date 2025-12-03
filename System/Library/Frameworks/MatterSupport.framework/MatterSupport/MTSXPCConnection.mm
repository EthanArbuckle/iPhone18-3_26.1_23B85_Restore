@interface MTSXPCConnection
- (HMFProcessInfo)processInfo;
- (MTSXPCConnection)initWithXPCConnection:(id)connection;
- (NSXPCInterface)exportedInterface;
- (NSXPCInterface)remoteObjectInterface;
- (id)attributeDescriptions;
- (id)exportedObject;
- (id)interruptionHandler;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)valueForEntitlement:(id)entitlement;
- (int)processIdentifier;
- (void)activate;
- (void)invalidate;
- (void)resume;
- (void)setExportedInterface:(id)interface;
- (void)setExportedObject:(id)object;
- (void)setInterruptionHandler:(id)handler;
- (void)setInvalidationHandler:(id)handler;
- (void)setRemoteObjectInterface:(id)interface;
@end

@implementation MTSXPCConnection

- (id)attributeDescriptions
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[MTSXPCConnection processIdentifier](self, "processIdentifier")}];
  v5 = [v3 initWithName:@"Process ID" value:v4];
  v13[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  processInfo = [(MTSXPCConnection *)self processInfo];
  name = [processInfo name];
  v9 = [v6 initWithName:@"Process Name" value:name];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)invalidate
{
  xpcConnection = [(MTSXPCConnection *)self xpcConnection];
  [xpcConnection invalidate];
}

- (void)resume
{
  xpcConnection = [(MTSXPCConnection *)self xpcConnection];
  [xpcConnection resume];
}

- (void)activate
{
  xpcConnection = [(MTSXPCConnection *)self xpcConnection];
  [xpcConnection activate];
}

- (id)valueForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  xpcConnection = [(MTSXPCConnection *)self xpcConnection];
  v6 = [xpcConnection valueForEntitlement:entitlementCopy];

  return v6;
}

- (void)setInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(MTSXPCConnection *)self xpcConnection];
  [xpcConnection setInvalidationHandler:handlerCopy];
}

- (void)setInterruptionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(MTSXPCConnection *)self xpcConnection];
  [xpcConnection setInterruptionHandler:handlerCopy];
}

- (id)interruptionHandler
{
  xpcConnection = [(MTSXPCConnection *)self xpcConnection];
  interruptionHandler = [xpcConnection interruptionHandler];

  return interruptionHandler;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(MTSXPCConnection *)self xpcConnection];
  v6 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(MTSXPCConnection *)self xpcConnection];
  v6 = [xpcConnection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)remoteObjectProxy
{
  xpcConnection = [(MTSXPCConnection *)self xpcConnection];
  remoteObjectProxy = [xpcConnection remoteObjectProxy];

  return remoteObjectProxy;
}

- (void)setRemoteObjectInterface:(id)interface
{
  interfaceCopy = interface;
  xpcConnection = [(MTSXPCConnection *)self xpcConnection];
  [xpcConnection setRemoteObjectInterface:interfaceCopy];
}

- (NSXPCInterface)remoteObjectInterface
{
  xpcConnection = [(MTSXPCConnection *)self xpcConnection];
  remoteObjectInterface = [xpcConnection remoteObjectInterface];

  return remoteObjectInterface;
}

- (void)setExportedInterface:(id)interface
{
  interfaceCopy = interface;
  xpcConnection = [(MTSXPCConnection *)self xpcConnection];
  [xpcConnection setExportedInterface:interfaceCopy];
}

- (NSXPCInterface)exportedInterface
{
  xpcConnection = [(MTSXPCConnection *)self xpcConnection];
  exportedInterface = [xpcConnection exportedInterface];

  return exportedInterface;
}

- (void)setExportedObject:(id)object
{
  objectCopy = object;
  xpcConnection = [(MTSXPCConnection *)self xpcConnection];
  [xpcConnection setExportedObject:objectCopy];
}

- (id)exportedObject
{
  xpcConnection = [(MTSXPCConnection *)self xpcConnection];
  exportedObject = [xpcConnection exportedObject];

  return exportedObject;
}

- (int)processIdentifier
{
  xpcConnection = [(MTSXPCConnection *)self xpcConnection];
  processIdentifier = [xpcConnection processIdentifier];

  return processIdentifier;
}

- (HMFProcessInfo)processInfo
{
  v3 = objc_alloc(MEMORY[0x277D0F8E0]);
  xpcConnection = [(MTSXPCConnection *)self xpcConnection];
  v5 = [v3 initWithXPCConnection:xpcConnection];

  return v5;
}

- (MTSXPCConnection)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  if (connectionCopy)
  {
    v6 = connectionCopy;
    v12.receiver = self;
    v12.super_class = MTSXPCConnection;
    v7 = [(MTSXPCConnection *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_xpcConnection, connection);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    [(MTSDeviceSetupExtensionMessenger *)v10 .cxx_destruct];
  }

  return result;
}

@end