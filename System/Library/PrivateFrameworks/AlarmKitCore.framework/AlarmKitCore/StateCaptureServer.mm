@interface StateCaptureServer
- (_TtC12AlarmKitCore18StateCaptureServer)init;
- (id)stateFor:(id)for error:(id *)error;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation StateCaptureServer

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22D700430(connectionCopy);

  swift_unknownObjectRelease();
}

- (_TtC12AlarmKitCore18StateCaptureServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)stateFor:(id)for error:(id *)error
{
  if (for)
  {
    v5 = sub_22D72E490();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  selfCopy = self;
  sub_22D6FFD00(v5, v7);

  v9 = sub_22D72E480();

  return v9;
}

@end