@interface PassKitWrapperXPCServiceUIDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation PassKitWrapperXPCServiceUIDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100001E64(connectionCopy);

  return v9 & 1;
}

@end