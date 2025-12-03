@interface NSXPCActorSystem.ArgumentListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation NSXPCActorSystem.ArgumentListenerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1AC6EBB9C(listenerCopy, connectionCopy);

  return v9 & 1;
}

@end