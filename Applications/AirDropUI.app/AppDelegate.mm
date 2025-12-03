@interface AppDelegate
- (_TtC9AirDropUI11AppDelegate)init;
- (void)application:(id)application didDiscardSceneSessions:(id)sessions;
- (void)applicationDidFinishLaunching:(id)launching;
- (void)willEnterForeground;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(id)launching
{
  launchingCopy = launching;
  selfCopy = self;
  sub_1000C9E80(launchingCopy);
}

- (void)willEnterForeground
{
  v2 = *(**NameDropIdentity.shared.unsafeMutableAddressor() + 128);

  v2(v3);
}

- (void)application:(id)application didDiscardSceneSessions:(id)sessions
{
  sub_1000CA418();
  sub_1000CA464();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  applicationCopy = application;
  selfCopy = self;
  sub_1000CA4BC(v6);
}

- (_TtC9AirDropUI11AppDelegate)init
{
  v3 = OBJC_IVAR____TtC9AirDropUI11AppDelegate_sessionsController;
  if (qword_100172150 != -1)
  {
    swift_once();
  }

  v4 = qword_10017F1E0;
  *(&self->super.isa + v3) = qword_10017F1E0;
  v5 = OBJC_IVAR____TtC9AirDropUI11AppDelegate_proximityHandoffUIServer;
  v6 = qword_100172170;
  v7 = v4;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_10017F230;
  *(&self->super.isa + v5) = qword_10017F230;
  v11.receiver = self;
  v11.super_class = type metadata accessor for AppDelegate();
  v9 = v8;
  return [(AppDelegate *)&v11 init];
}

@end