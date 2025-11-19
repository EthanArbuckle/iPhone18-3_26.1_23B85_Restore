@interface StopwatchLockscreenController
- (_TtC10ClockAngel29StopwatchLockscreenController)initWithCoder:(id)a3;
- (_TtC10ClockAngel29StopwatchLockscreenController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_childViewControllersForAlwaysOnTimelines;
@end

@implementation StopwatchLockscreenController

- (id)_childViewControllersForAlwaysOnTimelines
{
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  result = swift_allocObject();
  *(result + 1) = xmmword_1000D70D0;
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC10ClockAngel29StopwatchLockscreenController_customTrailingView);
  if (v4)
  {
    *(result + 4) = v4;
    v5 = v4;
    sub_1000032D4(&unk_1001190A0, &qword_1000D7150);
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

    return v6.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtC10ClockAngel29StopwatchLockscreenController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC10ClockAngel29StopwatchLockscreenController_customTrailingView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for StopwatchLockscreenController();
  v4 = a3;
  v5 = [(SecureStopwatchController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC10ClockAngel29StopwatchLockscreenController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC10ClockAngel29StopwatchLockscreenController_customTrailingView) = 0;
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC10ClockAngel29StopwatchLockscreenController_customTrailingView) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for StopwatchLockscreenController();
  v9 = [(SecureStopwatchController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

@end