@interface AppDebugSceneDelegate
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)handleIconTapWithSender:(id)sender;
- (void)handleTap;
- (void)observedFolderUpdatedIcon:(id)icon;
- (void)panGesture:(id)gesture;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)setWindow:(id)window;
- (void)sliderValueChanged:(id)changed;
@end

@implementation AppDebugSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000607BC(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_100053C88(disconnectCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100061428(activeCopy);
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_10006165C(activeCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_100061890(foregroundCopy);
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_100061AC4(backgroundCopy);
}

- (void)handleTap
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_headerContainerView);
  selfCopy = self;
  [v2 frame];
  sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
}

- (void)handleIconTapWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_100056844(senderCopy);
}

- (void)panGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_100057D4C(gestureCopy);
}

- (void)sliderValueChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1000580E4(changedCopy);
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  sub_10001A2A8(0, &qword_1000BCA48, UIContextMenuConfiguration_ptr);
  v6 = swift_allocObject();
  *(v6 + 16) = interaction;
  *(v6 + 24) = self;
  interactionCopy = interaction;
  selfCopy = self;
  v9 = sub_100052CCC(0, 0, 0, sub_100060060, v6);

  return v9;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  selfCopy = self;
  sub_10005AE40();
}

- (void)observedFolderUpdatedIcon:(id)icon
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10005D744(v8);

  (*(v5 + 8))(v8, v4);
}

@end