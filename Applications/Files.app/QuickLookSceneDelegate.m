@interface QuickLookSceneDelegate
- (_TtC5Files22QuickLookSceneDelegate)init;
- (id)stateRestorationActivityForScene:(id)a3;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation QuickLookSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100063AE4(v8, v9, v10);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100066138(v4);
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100068434(v7);
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
  sub_100068DF0();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  sub_100068630();
}

- (id)stateRestorationActivityForScene:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100067980();

  return v6;
}

- (_TtC5Files22QuickLookSceneDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_viewController) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_documentManager) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_currentQuickLookPreviewItemObserver) = 0;
  v3 = OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_currentQuickLookURL;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  *(&self->super.isa + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_isSharedScene) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for QuickLookSceneDelegate();
  return [(QuickLookSceneDelegate *)&v6 init];
}

@end