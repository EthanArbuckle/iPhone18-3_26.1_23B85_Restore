@interface XPCServiceConnection
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation XPCServiceConnection

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  sub_10003CE38(selfCopy, connectionCopy);

  return 1;
}

@end