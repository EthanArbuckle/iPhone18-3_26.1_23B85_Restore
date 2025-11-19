@interface AppDelegate
- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4;
- (_TtC21DockFolderViewService11AppDelegate)init;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
@end

@implementation AppDelegate

- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4
{
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10008C0B0(&qword_1000BBA40, type metadata accessor for LaunchOptionsKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  v8 = sub_10008B77C();

  return v8 & 1;
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_10008BD70(v9);

  return v12;
}

- (_TtC21DockFolderViewService11AppDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC21DockFolderViewService11AppDelegate_sourceObserver) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppDelegate();
  return [(AppDelegate *)&v3 init];
}

@end