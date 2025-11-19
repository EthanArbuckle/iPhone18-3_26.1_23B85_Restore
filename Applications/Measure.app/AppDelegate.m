@interface AppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (_TtC7Measure11AppDelegate)init;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (unint64_t)application:(id)a3 supportedInterfaceOrientationsForWindow:(id)a4;
- (void)applicationWillTerminate:(id)a3;
- (void)buildMenuWithBuilder:(id)a3;
@end

@implementation AppDelegate

- (_TtC7Measure11AppDelegate)init
{
  v3 = OBJC_IVAR____TtC7Measure11AppDelegate__appState;
  KeyPath = swift_getKeyPath();
  v5 = sub_10000F974(&unk_1004A1940);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v6 = qword_1004D5058;
  v7 = *(v5 + 272);

  *(&self->super.super.isa + v3) = v7(KeyPath, v6);
  v8 = OBJC_IVAR____TtC7Measure11AppDelegate_accessibilityListener;
  *(&self->super.super.isa + v8) = [objc_allocWithZone(type metadata accessor for AccessiblityUISettingsObserver()) init];
  *(&self->super.super.isa + OBJC_IVAR____TtC7Measure11AppDelegate_randomSeed) = 1234567890;
  v10.receiver = self;
  v10.super_class = type metadata accessor for AppDelegate();
  return [(AppDelegate *)&v10 init];
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_1000250D8();
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  v8 = sub_100023EBC();

  return v8 & 1;
}

- (void)applicationWillTerminate:(id)a3
{
  v3 = qword_1004A0280;
  v8 = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v4._object = 0x80000001003FFFE0;
  v4._countAndFlagsBits = 0xD000000000000012;
  Log.default(_:isPrivate:)(v4, 0);
  v5 = *(**(&v8->super.super.isa + OBJC_IVAR____TtC7Measure11AppDelegate__appState) + 200);

  v7 = v5(v6);

  (*(*v7 + 280))(sub_10002364C, 0);
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = a4;
  v6 = [v5 role];
  v7 = objc_allocWithZone(UISceneConfiguration);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithName:v8 sessionRole:v6];

  return v9;
}

- (unint64_t)application:(id)a3 supportedInterfaceOrientationsForWindow:(id)a4
{
  sub_100018630(0, &qword_1004A1930);
  if ((static UIDevice.isIPhone()() & 1) != 0 && ![objc_opt_self() _hasHomeButton])
  {
    return 2;
  }

  else
  {
    return 30;
  }
}

- (void)buildMenuWithBuilder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1000238BC(a3);
  swift_unknownObjectRelease();
}

@end