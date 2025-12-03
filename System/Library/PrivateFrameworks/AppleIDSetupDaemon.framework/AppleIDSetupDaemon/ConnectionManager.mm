@interface ConnectionManager
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC18AppleIDSetupDaemon17ConnectionManager)init;
@end

@implementation ConnectionManager

- (_TtC18AppleIDSetupDaemon17ConnectionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_2408C3810(connectionCopy);

  return v9 & 1;
}

@end