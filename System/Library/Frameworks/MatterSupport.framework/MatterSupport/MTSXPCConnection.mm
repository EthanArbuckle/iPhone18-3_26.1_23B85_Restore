@interface MTSXPCConnection
- (HMFProcessInfo)processInfo;
- (MTSXPCConnection)initWithXPCConnection:(id)a3;
- (NSXPCInterface)exportedInterface;
- (NSXPCInterface)remoteObjectInterface;
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
- (void)setRemoteObjectInterface:(id)a3;
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
  v7 = [(MTSXPCConnection *)self processInfo];
  v8 = [v7 name];
  v9 = [v6 initWithName:@"Process Name" value:v8];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)invalidate
{
  v2 = [(MTSXPCConnection *)self xpcConnection];
  [v2 invalidate];
}

- (void)resume
{
  v2 = [(MTSXPCConnection *)self xpcConnection];
  [v2 resume];
}

- (void)activate
{
  v2 = [(MTSXPCConnection *)self xpcConnection];
  [v2 activate];
}

- (id)valueForEntitlement:(id)a3
{
  v4 = a3;
  v5 = [(MTSXPCConnection *)self xpcConnection];
  v6 = [v5 valueForEntitlement:v4];

  return v6;
}

- (void)setInvalidationHandler:(id)a3
{
  v4 = a3;
  v5 = [(MTSXPCConnection *)self xpcConnection];
  [v5 setInvalidationHandler:v4];
}

- (void)setInterruptionHandler:(id)a3
{
  v4 = a3;
  v5 = [(MTSXPCConnection *)self xpcConnection];
  [v5 setInterruptionHandler:v4];
}

- (id)interruptionHandler
{
  v2 = [(MTSXPCConnection *)self xpcConnection];
  v3 = [v2 interruptionHandler];

  return v3;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(MTSXPCConnection *)self xpcConnection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(MTSXPCConnection *)self xpcConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)remoteObjectProxy
{
  v2 = [(MTSXPCConnection *)self xpcConnection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (void)setRemoteObjectInterface:(id)a3
{
  v4 = a3;
  v5 = [(MTSXPCConnection *)self xpcConnection];
  [v5 setRemoteObjectInterface:v4];
}

- (NSXPCInterface)remoteObjectInterface
{
  v2 = [(MTSXPCConnection *)self xpcConnection];
  v3 = [v2 remoteObjectInterface];

  return v3;
}

- (void)setExportedInterface:(id)a3
{
  v4 = a3;
  v5 = [(MTSXPCConnection *)self xpcConnection];
  [v5 setExportedInterface:v4];
}

- (NSXPCInterface)exportedInterface
{
  v2 = [(MTSXPCConnection *)self xpcConnection];
  v3 = [v2 exportedInterface];

  return v3;
}

- (void)setExportedObject:(id)a3
{
  v4 = a3;
  v5 = [(MTSXPCConnection *)self xpcConnection];
  [v5 setExportedObject:v4];
}

- (id)exportedObject
{
  v2 = [(MTSXPCConnection *)self xpcConnection];
  v3 = [v2 exportedObject];

  return v3;
}

- (int)processIdentifier
{
  v2 = [(MTSXPCConnection *)self xpcConnection];
  v3 = [v2 processIdentifier];

  return v3;
}

- (HMFProcessInfo)processInfo
{
  v3 = objc_alloc(MEMORY[0x277D0F8E0]);
  v4 = [(MTSXPCConnection *)self xpcConnection];
  v5 = [v3 initWithXPCConnection:v4];

  return v5;
}

- (MTSXPCConnection)initWithXPCConnection:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v12.receiver = self;
    v12.super_class = MTSXPCConnection;
    v7 = [(MTSXPCConnection *)&v12 init];
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
    [(MTSDeviceSetupExtensionMessenger *)v10 .cxx_destruct];
  }

  return result;
}

@end