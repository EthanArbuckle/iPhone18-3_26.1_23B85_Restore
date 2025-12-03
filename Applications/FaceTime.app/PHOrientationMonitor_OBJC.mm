@interface PHOrientationMonitor_OBJC
- (BOOL)orientationEventsEnabled;
- (_TtC8FaceTime25PHOrientationMonitor_OBJC)init;
- (int64_t)makeInterfaceOrientationFrom:(int64_t)from whenFailing:(int64_t)failing;
- (void)setOrientationEventsEnabled:(BOOL)enabled;
@end

@implementation PHOrientationMonitor_OBJC

- (void)setOrientationEventsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [*(&self->super.isa + OBJC_IVAR____TtC8FaceTime25PHOrientationMonitor_OBJC_wrapped) setOrientationEventsEnabled:enabledCopy];
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

  orientationEventsEnabled = [*(&self->super.isa + OBJC_IVAR____TtC8FaceTime25PHOrientationMonitor_OBJC_wrapped) orientationEventsEnabled];

  return orientationEventsEnabled;
}

- (int64_t)makeInterfaceOrientationFrom:(int64_t)from whenFailing:(int64_t)failing
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (sub_100084F1C(from) && from <= 4 && (from - 1) < 4)
  {
    return from;
  }

  return failing;
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