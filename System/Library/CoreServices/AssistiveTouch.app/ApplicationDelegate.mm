@interface ApplicationDelegate
+ (NSString)debugFeatureName;
+ (NSString)featureEnabledStatusDidChangeNotification;
+ (OS_os_log)loggingFacility;
- (_TtC15assistivetouchd19ApplicationDelegate)init;
- (void)didFinishLaunching;
- (void)stop;
@end

@implementation ApplicationDelegate

- (_TtC15assistivetouchd19ApplicationDelegate)init
{
  v3 = OBJC_IVAR____TtC15assistivetouchd19ApplicationDelegate_runtimeManager;
  *&self->AXUIDaemonApplicationDelegate_opaque[v3] = [objc_allocWithZone(HNDRuntimeManager) init];
  *&self->AXUIDaemonApplicationDelegate_opaque[OBJC_IVAR____TtC15assistivetouchd19ApplicationDelegate_sceneAttemptCount] = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ApplicationDelegate();
  v4 = [(ApplicationDelegate *)&v6 init];
  [*&v4->AXUIDaemonApplicationDelegate_opaque[OBJC_IVAR____TtC15assistivetouchd19ApplicationDelegate_runtimeManager] setDelegate:v4];
  return v4;
}

+ (OS_os_log)loggingFacility
{
  result = ASTLogCommon();
  if (result)
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

+ (NSString)debugFeatureName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)featureEnabledStatusDidChangeNotification
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)didFinishLaunching
{
  v3 = OBJC_IVAR____TtC15assistivetouchd19ApplicationDelegate_runtimeManager;
  v4 = *&self->AXUIDaemonApplicationDelegate_opaque[OBJC_IVAR____TtC15assistivetouchd19ApplicationDelegate_runtimeManager];
  v5 = self;
  [v4 setupRuntime];
  [*&self->AXUIDaemonApplicationDelegate_opaque[v3] initializeSystemSettings];
  [*&self->AXUIDaemonApplicationDelegate_opaque[v3] startRuntime];
  sub_100126018();
  [swift_getObjCClassFromMetadata() usesScenes];
}

- (void)stop
{
  v2 = self;
  sub_1001262D0();
}

@end