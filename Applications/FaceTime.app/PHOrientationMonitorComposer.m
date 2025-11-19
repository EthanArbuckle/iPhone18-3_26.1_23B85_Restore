@interface PHOrientationMonitorComposer
- (PHOrientationMonitorComposer)init;
- (id)compose;
@end

@implementation PHOrientationMonitorComposer

- (PHOrientationMonitorComposer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for OrientationMonitorComposer();
  return [(PHOrientationMonitorComposer *)&v3 init];
}

- (id)compose
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_100124008 != -1)
  {
    swift_once();
  }

  v2 = qword_1001250D0;
  v3 = type metadata accessor for PHOrientationMonitor_OBJC();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC8FaceTime25PHOrientationMonitor_OBJC_wrapped] = v2;
  v7.receiver = v4;
  v7.super_class = v3;

  v5 = [(PHOrientationMonitorComposer *)&v7 init];

  return v5;
}

@end