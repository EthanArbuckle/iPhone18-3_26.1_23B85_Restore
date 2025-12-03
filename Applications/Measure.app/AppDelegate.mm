@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (_TtC7Measure11AppDelegate)init;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window;
- (void)applicationWillTerminate:(id)terminate;
- (void)buildMenuWithBuilder:(id)builder;
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

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_1000250D8();
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v8 = sub_100023EBC();

  return v8 & 1;
}

- (void)applicationWillTerminate:(id)terminate
{
  v3 = qword_1004A0280;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v4._object = 0x80000001003FFFE0;
  v4._countAndFlagsBits = 0xD000000000000012;
  Log.default(_:isPrivate:)(v4, 0);
  v5 = *(**(&selfCopy->super.super.isa + OBJC_IVAR____TtC7Measure11AppDelegate__appState) + 200);

  v7 = v5(v6);

  (*(*v7 + 280))(sub_10002364C, 0);
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  role = [sessionCopy role];
  v7 = objc_allocWithZone(UISceneConfiguration);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithName:v8 sessionRole:role];

  return v9;
}

- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window
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

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000238BC(builder);
  swift_unknownObjectRelease();
}

@end