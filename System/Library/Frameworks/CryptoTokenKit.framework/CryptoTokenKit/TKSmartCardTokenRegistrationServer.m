@interface TKSmartCardTokenRegistrationServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (TKSmartCardTokenRegistrationServer)initWithSmartCardTokenRegistry:(id)a3 listener:(id)a4;
- (void)dealloc;
@end

@implementation TKSmartCardTokenRegistrationServer

- (TKSmartCardTokenRegistrationServer)initWithSmartCardTokenRegistry:(id)a3 listener:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TKSmartCardTokenRegistrationServer;
  v9 = [(TKSmartCardTokenRegistrationServer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_smartCardTokenRegistrationRegistry, a3);
    objc_storeStrong(&v10->_listener, a4);
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [TKXPCInterface interfaceForXPCProtocol:&OBJC_PROTOCOL___TKSmartCardTokenRegistrationXPC];
  [v5 setExportedInterface:v6];

  v7 = [[TKSmartCardTokenRegistrationXPCHost alloc] initWithSmartCardTokenRegistrationRegistry:self->_smartCardTokenRegistrationRegistry];
  [v5 setExportedObject:v7];

  [v5 resume];
  return 1;
}

@end