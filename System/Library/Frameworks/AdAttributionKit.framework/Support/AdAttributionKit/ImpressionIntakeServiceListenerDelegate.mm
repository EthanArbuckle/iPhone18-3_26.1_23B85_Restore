@interface ImpressionIntakeServiceListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC20AttributionKitDaemon39ImpressionIntakeServiceListenerDelegate)init;
@end

@implementation ImpressionIntakeServiceListenerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10015E6C8(connectionCopy);

  return v9 & 1;
}

- (_TtC20AttributionKitDaemon39ImpressionIntakeServiceListenerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end