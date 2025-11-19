@interface FolderSceneDelegate
- (_TtC21DockFolderViewService19FolderSceneDelegate)init;
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
- (void)handleActionForFloatingDockRemoteContentScene:(id)a3 withActionContext:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setWindow:(id)a3;
- (void)updateContentForFloatingDockRemoteContentScene:(id)a3 withContext:(id)a4 withAnimationSettings:(id)a5;
@end

@implementation FolderSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100072B9C(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000731B8(v4);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000733EC(v4);
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100073620(v4);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100073854(v4);
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100073A88(v4);
}

- (_TtC21DockFolderViewService19FolderSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for FolderSceneDelegate();
  return [(FolderSceneDelegate *)&v3 init];
}

- (void)updateContentForFloatingDockRemoteContentScene:(id)a3 withContext:(id)a4 withAnimationSettings:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100068F60(v8, v9, v10);
}

- (void)handleActionForFloatingDockRemoteContentScene:(id)a3 withActionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10006C370(v6, v7);
}

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  sub_10001A2A8(0, &qword_1000BCE40, BSAction_ptr);
  sub_100072660();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

@end