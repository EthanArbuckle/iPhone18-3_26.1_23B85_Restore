@interface StateCaptureServer
- (_TtC12AlarmKitCore18StateCaptureServer)init;
- (id)stateFor:(id)a3 error:(id *)a4;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
@end

@implementation StateCaptureServer

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  sub_22D700430(v8);

  swift_unknownObjectRelease();
}

- (_TtC12AlarmKitCore18StateCaptureServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)stateFor:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v5 = sub_22D72E490();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = self;
  sub_22D6FFD00(v5, v7);

  v9 = sub_22D72E480();

  return v9;
}

@end