@interface RemoteSignInTask
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)initializeClientToViewServiceConnection;
@end

@implementation RemoteSignInTask

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RemoteSignInTask.listener(_:shouldAcceptNewConnection:)(v8, v7);

  return 1;
}

- (void)initializeClientToViewServiceConnection
{
  v2 = self;
  RemoteSignInTask.initializeClientToViewServiceConnection()();
}

@end