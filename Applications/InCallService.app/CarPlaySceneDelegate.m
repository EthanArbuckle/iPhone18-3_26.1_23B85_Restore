@interface CarPlaySceneDelegate
- (void)sceneDidDisconnect:(void *)a3;
- (void)sceneWillEnterForeground:(id)a3;
@end

@implementation CarPlaySceneDelegate

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000288FC(v4);
}

- (void)sceneDidDisconnect:(void *)a3
{
  v4 = a3;
  v5 = a1;
  sub_1000374E8(v4);
}

@end