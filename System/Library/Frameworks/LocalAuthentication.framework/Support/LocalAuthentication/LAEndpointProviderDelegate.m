@interface LAEndpointProviderDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [LAEndpointProviderServer handleConnection:v4];
  if (v5)
  {
    [v4 resume];
  }

  return v5;
}

@end