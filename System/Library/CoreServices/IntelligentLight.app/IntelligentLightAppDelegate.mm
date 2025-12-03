@interface IntelligentLightAppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (_TtC16IntelligentLight27IntelligentLightAppDelegate)init;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (void)application:(id)application didDiscardSceneSessions:(id)sessions;
@end

@implementation IntelligentLightAppDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = sub_100001810(sessionCopy);

  return v12;
}

- (_TtC16IntelligentLight27IntelligentLightAppDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC16IntelligentLight27IntelligentLightAppDelegate_moduleManager) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC16IntelligentLight27IntelligentLightAppDelegate_context) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC16IntelligentLight27IntelligentLightAppDelegate_metalLayer) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for IntelligentLightAppDelegate();
  return [(IntelligentLightAppDelegate *)&v3 init];
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v5 = objc_allocWithZone(type metadata accessor for ModuleManager());
  selfCopy = self;
  v7 = [v5 init];
  v8 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC16IntelligentLight27IntelligentLightAppDelegate_moduleManager);
  *(&selfCopy->super.super.isa + OBJC_IVAR____TtC16IntelligentLight27IntelligentLightAppDelegate_moduleManager) = v7;

  return 1;
}

- (void)application:(id)application didDiscardSceneSessions:(id)sessions
{
  sub_100008880();
  sub_1000088CC();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  applicationCopy = application;
  selfCopy = self;
  sub_100008924(v6);
}

@end