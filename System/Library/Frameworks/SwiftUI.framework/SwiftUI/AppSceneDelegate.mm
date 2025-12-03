@interface AppSceneDelegate
- (BOOL)respondsToSelector:(SEL)selector;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)stateRestorationActivityForScene:(id)scene;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)setWindow:(id)window;
@end

@implementation AppSceneDelegate

- (BOOL)respondsToSelector:(SEL)selector
{
  selfCopy = self;
  LOBYTE(selector) = AppSceneDelegate.responds(to:)(selector);

  return selector & 1;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  AppSceneDelegate.scene(_:willConnectTo:options:)(sceneCopy, sessionCopy, optionsCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  AppSceneDelegate.sceneWillEnterForeground(_:)(foregroundCopy);
}

- (id)stateRestorationActivityForScene:(id)scene
{
  sceneCopy = scene;
  selfCopy = self;
  v6 = specialized AppSceneDelegate.stateRestorationActivity(for:)();

  return v6;
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  AppSceneDelegate.sceneDidBecomeActive(_:)(activeCopy);
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  AppSceneDelegate.sceneWillResignActive(_:)(activeCopy);
}

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  AppSceneDelegate.sceneDidDisconnect(_:)(disconnectCopy);
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  selfCopy = self;
  AppSceneDelegate.scene(_:continue:)(sceneCopy, activityCopy);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIOpenURLContext);
  lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type UIOpenURLContext and conformance NSObject, &lazy cache variable for type metadata for UIOpenURLContext);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  AppSceneDelegate.scene(_:openURLContexts:)(sceneCopy, v6);
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  AppSceneDelegate.sceneDidEnterBackground(_:)(backgroundCopy);
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  selfCopy = self;
  AppSceneDelegate.forwardingTarget(for:)(v12);

  v4 = v13;
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end