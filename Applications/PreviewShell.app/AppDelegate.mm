@interface AppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (_TtC12PreviewShell11AppDelegate)init;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
@end

@implementation AppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  if (qword_10006E5C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for PreviewShellService();
  sub_1000374B8();
  PreviewShellServiceProtocol.activateServers()();
  return 1;
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_100037238(v9);

  return v12;
}

- (_TtC12PreviewShell11AppDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppDelegate();
  return [(AppDelegate *)&v3 init];
}

@end