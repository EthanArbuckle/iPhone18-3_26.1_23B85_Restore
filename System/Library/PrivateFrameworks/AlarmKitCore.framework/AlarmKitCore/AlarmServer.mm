@interface AlarmServer
- (_TtC12AlarmKitCore11AlarmServer)init;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation AlarmServer

- (_TtC12AlarmKitCore11AlarmServer)init
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
  sub_22D70CC8C(connectionCopy);

  swift_unknownObjectRelease();
}

@end