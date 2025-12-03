@interface QuickLookSceneDelegate
- (_TtC5Files22QuickLookSceneDelegate)init;
- (id)stateRestorationActivityForScene:(id)scene;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setWindow:(id)window;
@end

@implementation QuickLookSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC5Files22QuickLookSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100063AE4(sceneCopy, sessionCopy, optionsCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_100066138(disconnectCopy);
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  selfCopy = self;
  sub_100068434(activityCopy);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
  sub_100068DF0();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_100068630();
}

- (id)stateRestorationActivityForScene:(id)scene
{
  sceneCopy = scene;
  selfCopy = self;
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