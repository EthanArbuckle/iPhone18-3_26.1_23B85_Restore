@interface DeveloperModeServiceListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC20AttributionKitDaemon36DeveloperModeServiceListenerDelegate)init;
@end

@implementation DeveloperModeServiceListenerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10009DD18(connectionCopy);

  return v9 & 1;
}

- (_TtC20AttributionKitDaemon36DeveloperModeServiceListenerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end