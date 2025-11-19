@interface PHOrientationMonitor_OBJC
- (BOOL)orientationEventsEnabled;
- (_TtC8FaceTime25PHOrientationMonitor_OBJC)init;
- (int64_t)makeInterfaceOrientationFrom:(int64_t)a3 whenFailing:(int64_t)a4;
- (void)setOrientationEventsEnabled:(BOOL)a3;
@end

@implementation PHOrientationMonitor_OBJC

- (void)setOrientationEventsEnabled:(BOOL)a3
{
  v3 = a3;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [*(&self->super.isa + OBJC_IVAR____TtC8FaceTime25PHOrientationMonitor_OBJC_wrapped) setOrientationEventsEnabled:v3];
}

- (BOOL)orientationEventsEnabled
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = [*(&self->super.isa + OBJC_IVAR____TtC8FaceTime25PHOrientationMonitor_OBJC_wrapped) orientationEventsEnabled];

  return v3;
}

- (int64_t)makeInterfaceOrientationFrom:(int64_t)a3 whenFailing:(int64_t)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (sub_100084F1C(a3) && a3 <= 4 && (a3 - 1) < 4)
  {
    return a3;
  }

  return a4;
}

- (_TtC8FaceTime25PHOrientationMonitor_OBJC)init
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end