@interface AppDelegate
- (_TtC13GameOverlayUI11AppDelegate)init;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
@end

@implementation AppDelegate

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_10009564C(v8, v9, v10);

  return v12;
}

- (_TtC13GameOverlayUI11AppDelegate)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(AppDelegate *)&v3 init];
}

@end