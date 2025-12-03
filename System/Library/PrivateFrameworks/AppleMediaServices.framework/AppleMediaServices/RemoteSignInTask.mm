@interface RemoteSignInTask
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)initializeClientToViewServiceConnection;
@end

@implementation RemoteSignInTask

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  RemoteSignInTask.listener(_:shouldAcceptNewConnection:)(selfCopy, connectionCopy);

  return 1;
}

- (void)initializeClientToViewServiceConnection
{
  selfCopy = self;
  RemoteSignInTask.initializeClientToViewServiceConnection()();
}

@end