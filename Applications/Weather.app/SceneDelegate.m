@interface SceneDelegate
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)traitActiveAppearanceDidChangeWithScene:(id)a3 previousTraitCollection:(id)a4;
- (void)windowScene:(id)a3 didUpdateEffectiveGeometry:(id)a4;
- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
@end

@implementation SceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1000A6290(v8, v11, v10);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000BEB58(v5, "Scene will enter foreground", &dispatch thunk of SceneStateManagerType.willEnterForeground());
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003BFB70(v4);
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003BFEC4();
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1003BFF80(v8, v7);
}

- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v12 = self;
  v11.super.isa = v10;
  sub_1003C0120(v9, v11, v12, v8);
  _Block_release(v8);
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000BEB58(v5, "Scene did enter background", &dispatch thunk of SceneStateManagerType.didEnterBackground());
}

- (void)traitActiveAppearanceDidChangeWithScene:(id)a3 previousTraitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1003BF84C(v6);
}

- (void)windowScene:(id)a3 didUpdateEffectiveGeometry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1003C033C(v6, v7);
}

@end