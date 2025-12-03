@interface VSSubscriptionServiceConnection
- (VSSubscriptionServiceConnection)init;
- (id)serviceWithErrorHandler:(id)handler;
- (void)dealloc;
@end

@implementation VSSubscriptionServiceConnection

- (VSSubscriptionServiceConnection)init
{
  v8.receiver = self;
  v8.super_class = VSSubscriptionServiceConnection;
  v2 = [(VSSubscriptionServiceConnection *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.VideoSubscriberAccount.videosubscriptionsd" options:4096];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = v2->_connection;
    v6 = VSSubscriptionServiceInterface();
    [(NSXPCConnection *)v5 setRemoteObjectInterface:v6];

    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = VSSubscriptionServiceConnection;
  [(VSSubscriptionServiceConnection *)&v3 dealloc];
}

- (id)serviceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(VSSubscriptionServiceConnection *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

@end