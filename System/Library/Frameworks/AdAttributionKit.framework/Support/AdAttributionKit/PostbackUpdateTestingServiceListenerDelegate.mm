@interface PostbackUpdateTestingServiceListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC20AttributionKitDaemon44PostbackUpdateTestingServiceListenerDelegate)init;
@end

@implementation PostbackUpdateTestingServiceListenerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1000E60A4(connectionCopy);

  return v9 & 1;
}

- (_TtC20AttributionKitDaemon44PostbackUpdateTestingServiceListenerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end