@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)respondsToSelector:(SEL)selector;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)_performMainMenuShortcutKeyCommand:(id)command;
- (void)application:(id)application handleEventsForBackgroundURLSession:(id)session completionHandler:(id)handler;
- (void)buildMenuWithBuilder:(id)builder;
- (void)delete:(id)delete;
- (void)validateCommand:(id)command;
@end

@implementation AppDelegate

- (BOOL)respondsToSelector:(SEL)selector
{
  swift_getObjectType();
  v5 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI11AppDelegate_fallbackDelegate);
  selfCopy = self;
  if (v5)
  {
    LOBYTE(v5) = [v5 respondsToSelector_];
  }

  instancesRespondToSelector_ = [swift_getObjCClassFromMetadata() instancesRespondToSelector_];

  return (instancesRespondToSelector_ | v5) & 1;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  if (options)
  {
    type metadata accessor for UIApplicationLaunchOptionsKey(0);
    lazy protocol witness table accessor for type SceneBridge and conformance SceneBridge(&lazy protocol witness table cache variable for type UIApplicationLaunchOptionsKey and conformance UIApplicationLaunchOptionsKey, type metadata accessor for UIApplicationLaunchOptionsKey);
    optionsCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v11.value._rawValue = optionsCopy;
  v9 = AppDelegate.application(_:didFinishLaunchingWithOptions:)(applicationCopy, v11);

  return v9;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = specialized AppDelegate.application(_:configurationForConnecting:options:)(sessionCopy);

  return v12;
}

- (id)forwardingTargetForSelector:(SEL)selector
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

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  AppDelegate.buildMenu(with:)(builder);
  swift_unknownObjectRelease();
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  AppDelegate.validate(_:)(commandCopy);
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = AppDelegate.canPerformAction(_:withSender:)(action, v10);

  outlined destroy of RootEnvironmentModifier?(v10, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  return v8 & 1;
}

- (void)_performMainMenuShortcutKeyCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  AppDelegate._performMainMenuShortcutKeyCommand(_:)(commandCopy);
}

- (void)delete:(id)delete
{
  if (delete)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
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

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  applicationCopy = application;
  selfCopy = self;
  v13._countAndFlagsBits = v7;
  v13._object = v9;
  LOBYTE(self) = AppDelegate.application(_:runTest:options:)(applicationCopy, v13, v10);

  return self & 1;
}

- (void)application:(id)application handleEventsForBackgroundURLSession:(id)session completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  applicationCopy = application;
  selfCopy = self;
  AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:)(applicationCopy, v8, v10, partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v11);
}

@end