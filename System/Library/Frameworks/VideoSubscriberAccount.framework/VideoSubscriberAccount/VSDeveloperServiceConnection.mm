@interface VSDeveloperServiceConnection
- (VSDeveloperServiceConnection)init;
- (id)serviceWithErrorHandler:(id)a3;
- (void)dealloc;
@end

@implementation VSDeveloperServiceConnection

- (VSDeveloperServiceConnection)init
{
  v8.receiver = self;
  v8.super_class = VSDeveloperServiceConnection;
  v2 = [(VSDeveloperServiceConnection *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.VideoSubscriberAccount.DeveloperService"];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = v2->_connection;
    v6 = VSDeveloperServiceInterface();
    [(NSXPCConnection *)v5 setRemoteObjectInterface:v6];

    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = VSDeveloperServiceConnection;
  [(VSDeveloperServiceConnection *)&v3 dealloc];
}

- (id)serviceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(VSDeveloperServiceConnection *)self connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

@end