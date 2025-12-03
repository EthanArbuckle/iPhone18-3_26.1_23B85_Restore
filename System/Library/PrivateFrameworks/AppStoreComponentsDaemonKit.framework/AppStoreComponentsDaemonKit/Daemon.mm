@interface Daemon
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation Daemon

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_2226A08B0(connectionCopy);

  return v9;
}

@end