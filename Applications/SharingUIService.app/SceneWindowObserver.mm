@interface SceneWindowObserver
- (_TtC16SharingUIService19SceneWindowObserver)init;
- (_TtC16SharingUIService19SceneWindowObserver)initWithScene:(id)a3;
- (id)_settingsDiffActionsForScene:(id)a3;
- (void)_setScene:(id)a3;
@end

@implementation SceneWindowObserver

- (void)_setScene:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16SharingUIService19SceneWindowObserver__scene);
  *(&self->super.isa + OBJC_IVAR____TtC16SharingUIService19SceneWindowObserver__scene) = a3;
  v3 = a3;
}

- (_TtC16SharingUIService19SceneWindowObserver)initWithScene:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC16SharingUIService19SceneWindowObserver__scene) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SceneWindowObserver();
  v4 = a3;
  return [(SceneWindowObserver *)&v6 init];
}

- (id)_settingsDiffActionsForScene:(id)a3
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