@interface AppDelegate
- (_TtC16AccessorySetupUI11AppDelegate)init;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
@end

@implementation AppDelegate

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = a4;
  v6 = [v5 role];
  v7 = objc_allocWithZone(UISceneConfiguration);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithName:v8 sessionRole:v6];

  return v9;
}

- (_TtC16AccessorySetupUI11AppDelegate)init
{
  v3 = OBJC_IVAR____TtC16AccessorySetupUI11AppDelegate_sessionManager;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v4 = qword_1000814E8;
  *(&self->super.super.isa + v3) = qword_1000814E8;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AppDelegate();
  v5 = v4;
  return [(AppDelegate *)&v7 init];
}

@end