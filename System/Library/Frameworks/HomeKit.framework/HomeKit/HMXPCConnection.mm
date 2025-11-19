@interface HMXPCConnection
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (HMFProcessInfo)processInfo;
- (HMXPCConnection)initWithXPCConnection:(id)a3;
- (NSXPCInterface)exportedInterface;
- (NSXPCInterface)remoteObjectInterface;
- (OS_dispatch_queue)queue;
- (id)attributeDescriptions;
- (id)exportedObject;
- (id)interruptionHandler;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (id)valueForEntitlement:(id)a3;
- (int)processIdentifier;
- (void)activate;
- (void)invalidate;
- (void)resume;
- (void)setExportedInterface:(id)a3;
- (void)setExportedObject:(id)a3;
- (void)setInterruptionHandler:(id)a3;
- (void)setInvalidationHandler:(id)a3;
- (void)setQueue:(id)a3;
- (void)setRemoteObjectInterface:(id)a3;
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
  v7 = [(HMXPCConnection *)self processInfo];
  v8 = [v7 name];
  v9 = [v6 initWithName:@"Process Name" value:v8];
  v13[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)invalidate
{
  v2 = [(HMXPCConnection *)self xpcConnection];
  [v2 invalidate];
}

- (void)resume
{
  v2 = [(HMXPCConnection *)self xpcConnection];
  [v2 resume];
}

- (void)activate
{
  v2 = [(HMXPCConnection *)self xpcConnection];
  [v2 activate];
}

- (id)valueForEntitlement:(id)a3
{
  v4 = a3;
  v5 = [(HMXPCConnection *)self xpcConnection];
  v6 = [v5 valueForEntitlement:v4];

  return v6;
}

- (void)setInvalidationHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMXPCConnection *)self xpcConnection];
  [v5 setInvalidationHandler:v4];
}

- (void)setInterruptionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMXPCConnection *)self xpcConnection];
  [v5 setInterruptionHandler:v4];
}

- (id)interruptionHandler
{
  v2 = [(HMXPCConnection *)self xpcConnection];
  v3 = [v2 interruptionHandler];

  return v3;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMXPCConnection *)self xpcConnection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMXPCConnection *)self xpcConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)remoteObjectProxy
{
  v2 = [(HMXPCConnection *)self xpcConnection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (void)setRemoteObjectInterface:(id)a3
{
  v4 = a3;
  v5 = [(HMXPCConnection *)self xpcConnection];
  [v5 setRemoteObjectInterface:v4];
}

- (NSXPCInterface)remoteObjectInterface
{
  v2 = [(HMXPCConnection *)self xpcConnection];
  v3 = [v2 remoteObjectInterface];

  return v3;
}

- (void)setExportedInterface:(id)a3
{
  v4 = a3;
  v5 = [(HMXPCConnection *)self xpcConnection];
  [v5 setExportedInterface:v4];
}

- (NSXPCInterface)exportedInterface
{
  v2 = [(HMXPCConnection *)self xpcConnection];
  v3 = [v2 exportedInterface];

  return v3;
}

- (void)setExportedObject:(id)a3
{
  v4 = a3;
  v5 = [(HMXPCConnection *)self xpcConnection];
  [v5 setExportedObject:v4];
}

- (id)exportedObject
{
  v2 = [(HMXPCConnection *)self xpcConnection];
  v3 = [v2 exportedObject];

  return v3;
}

- (void)setQueue:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMXPCConnection *)self xpcConnection];
  [v4 _setQueue:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (OS_dispatch_queue)queue
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMXPCConnection *)self xpcConnection];
  v4 = [v3 _queue];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v4 = [(HMXPCConnection *)self xpcConnection];
  if (v4)
  {
    v6 = v4;
    [v4 auditToken];
    v4 = v6;
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
  v2 = [(HMXPCConnection *)self xpcConnection];
  v3 = [v2 processIdentifier];

  return v3;
}

- (HMFProcessInfo)processInfo
{
  v3 = objc_alloc(MEMORY[0x1E69A2A50]);
  v4 = [(HMXPCConnection *)self xpcConnection];
  v5 = [v3 initWithXPCConnection:v4];

  return v5;
}

- (HMXPCConnection)initWithXPCConnection:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v12.receiver = self;
    v12.super_class = HMXPCConnection;
    v7 = [(HMXPCConnection *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_xpcConnection, a3);
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