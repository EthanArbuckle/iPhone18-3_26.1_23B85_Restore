@interface LAEndpointProviderDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (LAEndpointProviderDelegate)init;
@end

@implementation LAEndpointProviderDelegate

- (LAEndpointProviderDelegate)init
{
  v6.receiver = self;
  v6.super_class = LAEndpointProviderDelegate;
  v2 = [(LAEndpointProviderDelegate *)&v6 init];
  if (v2)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.CoreAuthentication.daemon.EndpointProvider"];
    clientListener = v2->_clientListener;
    v2->_clientListener = v3;

    [(NSXPCListener *)v2->_clientListener setDelegate:v2];
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [LAEndpointProviderServer handleConnection:connectionCopy];
  if (v5)
  {
    [connectionCopy resume];
  }

  return v5;
}

@end