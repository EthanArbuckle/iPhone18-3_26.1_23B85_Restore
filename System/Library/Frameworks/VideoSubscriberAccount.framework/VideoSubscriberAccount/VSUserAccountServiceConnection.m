@interface VSUserAccountServiceConnection
- (VSUserAccountServiceConnection)init;
- (id)serviceWithErrorHandler:(id)a3;
- (void)dealloc;
@end

@implementation VSUserAccountServiceConnection

- (VSUserAccountServiceConnection)init
{
  v8.receiver = self;
  v8.super_class = VSUserAccountServiceConnection;
  v2 = [(VSUserAccountServiceConnection *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.VideoSubscriberAccount.videosubscriptionsd" options:4096];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = v2->_connection;
    v6 = VSUserAccountServiceInterface();
    [(NSXPCConnection *)v5 setRemoteObjectInterface:v6];

    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = VSUserAccountServiceConnection;
  [(VSUserAccountServiceConnection *)&v3 dealloc];
}

- (id)serviceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(VSUserAccountServiceConnection *)self connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

@end