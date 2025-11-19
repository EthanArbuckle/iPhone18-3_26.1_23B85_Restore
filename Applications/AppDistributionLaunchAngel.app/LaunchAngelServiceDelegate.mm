@interface LaunchAngelServiceDelegate
- (_TtC26AppDistributionLaunchAngel26LaunchAngelServiceDelegate)init;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
@end

@implementation LaunchAngelServiceDelegate

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  sub_1000440B0(v8);

  swift_unknownObjectRelease();
}

- (_TtC26AppDistributionLaunchAngel26LaunchAngelServiceDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end