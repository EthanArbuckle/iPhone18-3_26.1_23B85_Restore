@interface SettingsApplicationDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (_TtC11SettingsApp27SettingsApplicationDelegate)init;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
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

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_1000779E4();
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  v8 = sub_100008A30();

  return v8 & 1;
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = a4;
  v6 = [v5 role];
  v7 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v6];

  type metadata accessor for SettingsAppSceneDelegate();
  [v7 setDelegateClass:swift_getObjCClassFromMetadata()];

  return v7;
}

@end