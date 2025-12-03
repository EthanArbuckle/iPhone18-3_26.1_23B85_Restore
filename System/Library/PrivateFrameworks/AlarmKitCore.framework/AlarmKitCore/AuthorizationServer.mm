@interface AuthorizationServer
- (_TtC12AlarmKitCore19AuthorizationServer)init;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation AuthorizationServer

- (_TtC12AlarmKitCore19AuthorizationServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22D712E5C(connectionCopy);

  swift_unknownObjectRelease();
}

@end