@interface AppDelegate
- (_TtC16AccessorySetupUI11AppDelegate)init;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation AppDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  role = [sessionCopy role];
  v7 = objc_allocWithZone(UISceneConfiguration);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithName:v8 sessionRole:role];

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