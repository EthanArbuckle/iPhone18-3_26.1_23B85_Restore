@interface SettingsApplicationDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (_TtC11SettingsApp27SettingsApplicationDelegate)init;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation SettingsApplicationDelegate

- (_TtC11SettingsApp27SettingsApplicationDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC11SettingsApp27SettingsApplicationDelegate_observationTokens) = &_swiftEmptyArrayStorage;
  ObservationRegistrar.init()();
  v4.receiver = self;
  v4.super_class = type metadata accessor for SettingsApplicationDelegate();
  return [(SettingsApplicationDelegate *)&v4 init];
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_1000779E4();
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v8 = sub_100008A30();

  return v8 & 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  role = [sessionCopy role];
  v7 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:role];

  type metadata accessor for SettingsAppSceneDelegate();
  [v7 setDelegateClass:swift_getObjCClassFromMetadata()];

  return v7;
}

@end