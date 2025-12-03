@interface XPCServiceProvider
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation XPCServiceProvider

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100002458(selfCopy, connectionCopy);

  return v9 & 1;
}

@end