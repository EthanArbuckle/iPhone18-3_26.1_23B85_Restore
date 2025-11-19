@interface AppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)respondsToSelector:(SEL)a3;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)_performMainMenuShortcutKeyCommand:(id)a3;
- (void)application:(id)a3 handleEventsForBackgroundURLSession:(id)a4 completionHandler:(id)a5;
- (void)buildMenuWithBuilder:(id)a3;
- (void)delete:(id)a3;
- (void)validateCommand:(id)a3;
@end

@implementation AppDelegate

- (BOOL)respondsToSelector:(SEL)a3
{
  swift_getObjectType();
  v5 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI11AppDelegate_fallbackDelegate);
  v6 = self;
  if (v5)
  {
    LOBYTE(v5) = [v5 respondsToSelector_];
  }

  v7 = [swift_getObjCClassFromMetadata() instancesRespondToSelector_];

  return (v7 | v5) & 1;
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v4 = a4;
  if (a4)
  {
    type metadata accessor for UIApplicationLaunchOptionsKey(0);
    lazy protocol witness table accessor for type SceneBridge and conformance SceneBridge(&lazy protocol witness table cache variable for type UIApplicationLaunchOptionsKey and conformance UIApplicationLaunchOptionsKey, type metadata accessor for UIApplicationLaunchOptionsKey);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v8 = self;
  v11.value._rawValue = v4;
  v9 = AppDelegate.application(_:didFinishLaunchingWithOptions:)(v7, v11);

  return v9;
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = specialized AppDelegate.application(_:configurationForConnecting:options:)(v9);

  return v12;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI11AppDelegate_fallbackDelegate);
  if (v3)
  {
    v5[3] = swift_getObjectType();
    v5[0] = v3;
    swift_unknownObjectRetain();
    v3 = _bridgeAnythingToObjectiveC<A>(_:)();
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return v3;
}

- (void)buildMenuWithBuilder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  AppDelegate.buildMenu(with:)(a3);
  swift_unknownObjectRelease();
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  AppDelegate.validate(_:)(v4);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = AppDelegate.canPerformAction(_:withSender:)(a3, v10);

  outlined destroy of RootEnvironmentModifier?(v10, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  return v8 & 1;
}

- (void)_performMainMenuShortcutKeyCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  AppDelegate._performMainMenuShortcutKeyCommand(_:)(v4);
}

- (void)delete:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI11AppDelegate_mainMenuController);
  if (v6)
  {
    v7 = v6;
    UIKitMainMenuController.delete(_:)();

    outlined destroy of RootEnvironmentModifier?(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  }

  else
  {
    outlined destroy of RootEnvironmentModifier?(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  }
}

- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  v13._countAndFlagsBits = v7;
  v13._object = v9;
  LOBYTE(self) = AppDelegate.application(_:runTest:options:)(v11, v13, v10);

  return self & 1;
}

- (void)application:(id)a3 handleEventsForBackgroundURLSession:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = a3;
  v13 = self;
  AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:)(v12, v8, v10, partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v11);
}

@end