@interface LaunchAngelServiceDelegate
- (_TtC26AppDistributionLaunchAngel26LaunchAngelServiceDelegate)init;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation LaunchAngelServiceDelegate

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000440B0(connectionCopy);

  swift_unknownObjectRelease();
}

- (_TtC26AppDistributionLaunchAngel26LaunchAngelServiceDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end