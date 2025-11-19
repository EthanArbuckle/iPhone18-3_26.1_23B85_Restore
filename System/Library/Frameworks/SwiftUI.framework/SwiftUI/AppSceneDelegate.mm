@interface AppSceneDelegate
- (BOOL)respondsToSelector:(SEL)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)stateRestorationActivityForScene:(id)a3;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation AppSceneDelegate

- (BOOL)respondsToSelector:(SEL)a3
{
  v4 = self;
  LOBYTE(a3) = AppSceneDelegate.responds(to:)(a3);

  return a3 & 1;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  AppSceneDelegate.scene(_:willConnectTo:options:)(v8, v9, v10);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  AppSceneDelegate.sceneWillEnterForeground(_:)(v4);
}

- (id)stateRestorationActivityForScene:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = specialized AppSceneDelegate.stateRestorationActivity(for:)();

  return v6;
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  AppSceneDelegate.sceneDidBecomeActive(_:)(v4);
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  AppSceneDelegate.sceneWillResignActive(_:)(v4);
}

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  AppSceneDelegate.sceneDidDisconnect(_:)(v4);
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  AppSceneDelegate.scene(_:continue:)(v6, v7);
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIOpenURLContext);
  lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type UIOpenURLContext and conformance NSObject, &lazy cache variable for type metadata for UIOpenURLContext);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  AppSceneDelegate.scene(_:openURLContexts:)(v7, v6);
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  AppSceneDelegate.sceneDidEnterBackground(_:)(v4);
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v3 = self;
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