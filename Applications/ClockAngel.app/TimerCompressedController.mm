@interface TimerCompressedController
- (_TtC10ClockAngel25TimerCompressedController)init;
- (_TtC10ClockAngel25TimerCompressedController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation TimerCompressedController

- (_TtC10ClockAngel25TimerCompressedController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_10005CC08(v5, v7, a4);
}

- (_TtC10ClockAngel25TimerCompressedController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end