@interface MusicAngel.Server.SceneDelegate
- (UIWindow)window;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation MusicAngel.Server.SceneDelegate

- (UIWindow)window
{
  v2 = sub_100011E34();

  return v2;
}

- (void)setWindow:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100011EC0(a3);
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100011ED4(v8, v11, v10);
}

@end