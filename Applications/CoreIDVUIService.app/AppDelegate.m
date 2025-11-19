@interface AppDelegate
- (_TtC16CoreIDVUIService11AppDelegate)init;
@end

@implementation AppDelegate

- (_TtC16CoreIDVUIService11AppDelegate)init
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Logger.init(subsystem:category:)();
  setDefaultLogger(_:)();
  (*(v5 + 8))(v8, v4);
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(AppDelegate *)&v11 init];

  return v9;
}

@end