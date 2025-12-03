@interface SceneWindowObserver
- (_TtC16SharingUIService19SceneWindowObserver)init;
- (_TtC16SharingUIService19SceneWindowObserver)initWithScene:(id)scene;
- (id)_settingsDiffActionsForScene:(id)scene;
- (void)_setScene:(id)scene;
@end

@implementation SceneWindowObserver

- (void)_setScene:(id)scene
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16SharingUIService19SceneWindowObserver__scene);
  *(&self->super.isa + OBJC_IVAR____TtC16SharingUIService19SceneWindowObserver__scene) = scene;
  sceneCopy = scene;
}

- (_TtC16SharingUIService19SceneWindowObserver)initWithScene:(id)scene
{
  *(&self->super.isa + OBJC_IVAR____TtC16SharingUIService19SceneWindowObserver__scene) = scene;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SceneWindowObserver();
  sceneCopy = scene;
  return [(SceneWindowObserver *)&v6 init];
}

- (id)_settingsDiffActionsForScene:(id)scene
{
  sub_1000025C4(&qword_100046C88, qword_10002DD20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10002D6A0;
  *(v3 + 32) = [objc_allocWithZone(type metadata accessor for SceneSettingsDiffAction()) init];
  sub_1000025C4(&unk_100047B30, &qword_10002E318);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (_TtC16SharingUIService19SceneWindowObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end