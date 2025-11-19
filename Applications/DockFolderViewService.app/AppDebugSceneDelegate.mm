@interface AppDebugSceneDelegate
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)handleIconTapWithSender:(id)a3;
- (void)handleTap;
- (void)observedFolderUpdatedIcon:(id)a3;
- (void)panGesture:(id)a3;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setWindow:(id)a3;
- (void)sliderValueChanged:(id)a3;
@end

@implementation AppDebugSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1000607BC(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100053C88(v4);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100061428(v4);
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10006165C(v4);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100061890(v4);
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100061AC4(v4);
}

- (void)handleTap
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_headerContainerView);
  v3 = self;
  [v2 frame];
  sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
}

- (void)handleIconTapWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100056844(v4);
}

- (void)panGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100057D4C(v4);
}

- (void)sliderValueChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000580E4(v4);
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  sub_10001A2A8(0, &qword_1000BCA48, UIContextMenuConfiguration_ptr);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = self;
  v7 = a3;
  v8 = self;
  v9 = sub_100052CCC(0, 0, 0, sub_100060060, v6);

  return v9;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v5 = self;
  sub_10005AE40();
}

- (void)observedFolderUpdatedIcon:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_10005D744(v8);

  (*(v5 + 8))(v8, v4);
}

@end