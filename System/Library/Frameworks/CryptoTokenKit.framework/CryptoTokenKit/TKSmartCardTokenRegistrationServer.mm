@interface TKSmartCardTokenRegistrationServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (TKSmartCardTokenRegistrationServer)initWithSmartCardTokenRegistry:(id)registry listener:(id)listener;
- (void)dealloc;
@end

@implementation TKSmartCardTokenRegistrationServer

- (TKSmartCardTokenRegistrationServer)initWithSmartCardTokenRegistry:(id)registry listener:(id)listener
{
  registryCopy = registry;
  listenerCopy = listener;
  v12.receiver = self;
  v12.super_class = TKSmartCardTokenRegistrationServer;
  v9 = [(TKSmartCardTokenRegistrationServer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_smartCardTokenRegistrationRegistry, registry);
    objc_storeStrong(&v10->_listener, listener);
    [(NSXPCListener *)v10->_listener setDelegate:v10];
  }

  return v10;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = TKSmartCardTokenRegistrationServer;
  [(TKSmartCardTokenRegistrationServer *)&v3 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [TKXPCInterface interfaceForXPCProtocol:&OBJC_PROTOCOL___TKSmartCardTokenRegistrationXPC];
  [connectionCopy setExportedInterface:v6];

  v7 = [[TKSmartCardTokenRegistrationXPCHost alloc] initWithSmartCardTokenRegistrationRegistry:self->_smartCardTokenRegistrationRegistry];
  [connectionCopy setExportedObject:v7];

  [connectionCopy resume];
  return 1;
}

@end