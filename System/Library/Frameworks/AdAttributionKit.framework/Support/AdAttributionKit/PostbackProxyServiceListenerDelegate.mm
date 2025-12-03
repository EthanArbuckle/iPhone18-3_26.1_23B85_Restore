@interface PostbackProxyServiceListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC20AttributionKitDaemon36PostbackProxyServiceListenerDelegate)init;
@end

@implementation PostbackProxyServiceListenerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10017E4B8(connectionCopy);

  return v9 & 1;
}

- (_TtC20AttributionKitDaemon36PostbackProxyServiceListenerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end