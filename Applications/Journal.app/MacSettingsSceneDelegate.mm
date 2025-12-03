@interface MacSettingsSceneDelegate
- (_TtC7Journal24MacSettingsSceneDelegate)init;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeVisible:(id)visible;
- (void)setWindow:(id)window;
@end

@implementation MacSettingsSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC7Journal24MacSettingsSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC7Journal24MacSettingsSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100455358(sceneCopy, optionsCopy);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_1000065A8(0, &qword_100AE9080);
  sub_10000A908(&qword_100AE4690, &qword_100AE9080);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
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

- (void)sceneDidBecomeVisible:(id)visible
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v4 + 8))(v6, v3);
}

@end