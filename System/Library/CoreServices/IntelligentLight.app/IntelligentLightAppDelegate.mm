@interface IntelligentLightAppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (_TtC16IntelligentLight27IntelligentLightAppDelegate)init;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (void)application:(id)a3 didDiscardSceneSessions:(id)a4;
@end

@implementation IntelligentLightAppDelegate

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_100001810(v9);

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

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v5 = objc_allocWithZone(type metadata accessor for ModuleManager());
  v6 = self;
  v7 = [v5 init];
  v8 = *(&v6->super.super.isa + OBJC_IVAR____TtC16IntelligentLight27IntelligentLightAppDelegate_moduleManager);
  *(&v6->super.super.isa + OBJC_IVAR____TtC16IntelligentLight27IntelligentLightAppDelegate_moduleManager) = v7;

  return 1;
}

- (void)application:(id)a3 didDiscardSceneSessions:(id)a4
{
  sub_100008880();
  sub_1000088CC();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_100008924(v6);
}

@end