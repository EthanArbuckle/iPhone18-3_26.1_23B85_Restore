@interface ServiceListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC28ManagedAppDistributionDaemon23ServiceListenerDelegate)init;
@end

@implementation ServiceListenerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10031E72C(connectionCopy);

  return v9 & 1;
}

- (_TtC28ManagedAppDistributionDaemon23ServiceListenerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end