@interface MacSettingsSceneDelegate
- (_TtC7Journal24MacSettingsSceneDelegate)init;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeVisible:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation MacSettingsSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC7Journal24MacSettingsSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC7Journal24MacSettingsSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100455358(v8, v10);
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_1000065A8(0, &qword_100AE9080);
  sub_10000A908(&qword_100AE4690, &qword_100AE9080);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_100455748(v6);
}

- (_TtC7Journal24MacSettingsSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7Journal24MacSettingsSceneDelegate_window) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7Journal24MacSettingsSceneDelegate____lazy_storage___tabBarController) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7Journal24MacSettingsSceneDelegate____lazy_storage___accessManager) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for MacSettingsSceneDelegate();
  return [(MacSettingsSceneDelegate *)&v3 init];
}

- (void)sceneDidBecomeVisible:(id)a3
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v4 + 8))(v6, v3);
}

@end