@interface TimerCompressedController
- (_TtC10ClockAngel25TimerCompressedController)init;
- (_TtC10ClockAngel25TimerCompressedController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation TimerCompressedController

- (_TtC10ClockAngel25TimerCompressedController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10005CC08(v5, v7, bundle);
}

- (_TtC10ClockAngel25TimerCompressedController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end