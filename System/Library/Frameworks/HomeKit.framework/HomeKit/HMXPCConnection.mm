@interface HMXPCConnection
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (HMFProcessInfo)processInfo;
- (HMXPCConnection)initWithXPCConnection:(id)connection;
- (NSXPCInterface)exportedInterface;
- (NSXPCInterface)remoteObjectInterface;
- (OS_dispatch_queue)queue;
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
- (void)setQueue:(id)queue;
- (void)setRemoteObjectInterface:(id)interface;
@end

@implementation HMXPCConnection

- (id)attributeDescriptions
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[HMXPCConnection processIdentifier](self, "processIdentifier")}];
  v5 = [v3 initWithName:@"Process ID" value:v4];
  v13[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  processInfo = [(HMXPCConnection *)self processInfo];
  name = [processInfo name];
  v9 = [v6 initWithName:@"Process Name" value:name];
  v13[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)invalidate
{
  xpcConnection = [(HMXPCConnection *)self xpcConnection];
  [xpcConnection invalidate];
}

- (void)resume
{
  xpcConnection = [(HMXPCConnection *)self xpcConnection];
  [xpcConnection resume];
}

- (void)activate
{
  xpcConnection = [(HMXPCConnection *)self xpcConnection];
  [xpcConnection activate];
}

- (id)valueForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  xpcConnection = [(HMXPCConnection *)self xpcConnection];
  v6 = [xpcConnection valueForEntitlement:entitlementCopy];

  return v6;
}

- (void)setInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(HMXPCConnection *)self xpcConnection];
  [xpcConnection setInvalidationHandler:handlerCopy];
}

- (void)setInterruptionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(HMXPCConnection *)self xpcConnection];
  [xpcConnection setInterruptionHandler:handlerCopy];
}

- (id)interruptionHandler
{
  xpcConnection = [(HMXPCConnection *)self xpcConnection];
  interruptionHandler = [xpcConnection interruptionHandler];

  return interruptionHandler;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(HMXPCConnection *)self xpcConnection];
  v6 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(HMXPCConnection *)self xpcConnection];
  v6 = [xpcConnection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)remoteObjectProxy
{
  xpcConnection = [(HMXPCConnection *)self xpcConnection];
  remoteObjectProxy = [xpcConnection remoteObjectProxy];

  return remoteObjectProxy;
}

- (void)setRemoteObjectInterface:(id)interface
{
  interfaceCopy = interface;
  xpcConnection = [(HMXPCConnection *)self xpcConnection];
  [xpcConnection setRemoteObjectInterface:interfaceCopy];
}

- (NSXPCInterface)remoteObjectInterface
{
  xpcConnection = [(HMXPCConnection *)self xpcConnection];
  remoteObjectInterface = [xpcConnection remoteObjectInterface];

  return remoteObjectInterface;
}

- (void)setExportedInterface:(id)interface
{
  interfaceCopy = interface;
  xpcConnection = [(HMXPCConnection *)self xpcConnection];
  [xpcConnection setExportedInterface:interfaceCopy];
}

- (NSXPCInterface)exportedInterface
{
  xpcConnection = [(HMXPCConnection *)self xpcConnection];
  exportedInterface = [xpcConnection exportedInterface];

  return exportedInterface;
}

- (void)setExportedObject:(id)object
{
  objectCopy = object;
  xpcConnection = [(HMXPCConnection *)self xpcConnection];
  [xpcConnection setExportedObject:objectCopy];
}

- (id)exportedObject
{
  xpcConnection = [(HMXPCConnection *)self xpcConnection];
  exportedObject = [xpcConnection exportedObject];

  return exportedObject;
}

- (void)setQueue:(id)queue
{
  queueCopy = queue;
  os_unfair_lock_lock_with_options();
  xpcConnection = [(HMXPCConnection *)self xpcConnection];
  [xpcConnection _setQueue:queueCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (OS_dispatch_queue)queue
{
  os_unfair_lock_lock_with_options();
  xpcConnection = [(HMXPCConnection *)self xpcConnection];
  _queue = [xpcConnection _queue];

  os_unfair_lock_unlock(&self->_lock);

  return _queue;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  xpcConnection = [(HMXPCConnection *)self xpcConnection];
  if (xpcConnection)
  {
    v6 = xpcConnection;
    [xpcConnection auditToken];
    xpcConnection = v6;
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

- (int)processIdentifier
{
  xpcConnection = [(HMXPCConnection *)self xpcConnection];
  processIdentifier = [xpcConnection processIdentifier];

  return processIdentifier;
}

- (HMFProcessInfo)processInfo
{
  v3 = objc_alloc(MEMORY[0x1E69A2A50]);
  xpcConnection = [(HMXPCConnection *)self xpcConnection];
  v5 = [v3 initWithXPCConnection:xpcConnection];

  return v5;
}

- (HMXPCConnection)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  if (connectionCopy)
  {
    v6 = connectionCopy;
    v12.receiver = self;
    v12.super_class = HMXPCConnection;
    v7 = [(HMXPCConnection *)&v12 init];
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
    [(HMMultiuserSettingsMessenger *)v10 .cxx_destruct];
  }

  return result;
}

@end