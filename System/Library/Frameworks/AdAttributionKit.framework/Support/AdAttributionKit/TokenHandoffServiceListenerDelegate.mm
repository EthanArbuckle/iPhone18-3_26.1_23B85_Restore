@interface TokenHandoffServiceListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC20AttributionKitDaemon35TokenHandoffServiceListenerDelegate)init;
@end

@implementation TokenHandoffServiceListenerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10007C188(connectionCopy);

  return v9 & 1;
}

- (_TtC20AttributionKitDaemon35TokenHandoffServiceListenerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end