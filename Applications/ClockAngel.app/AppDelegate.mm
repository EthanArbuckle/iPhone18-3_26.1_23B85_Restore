@interface AppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (_TtC10ClockAngel11AppDelegate)init;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
@end

@implementation AppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  [v4 logInfo:v5];

  return 1;
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

- (_TtC10ClockAngel11AppDelegate)init
{
  v3 = OBJC_IVAR____TtC10ClockAngel11AppDelegate_connectionHandler;
  if (qword_100113638 != -1)
  {
    swift_once();
  }

  v4 = qword_10011F510;
  *(&self->super.super.isa + v3) = qword_10011F510;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AppDelegate();
  v5 = v4;
  return [(AppDelegate *)&v7 init];
}

@end