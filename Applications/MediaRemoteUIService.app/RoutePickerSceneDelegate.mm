@interface RoutePickerSceneDelegate
- (_TtC20MediaRemoteUIService24RoutePickerSceneDelegate)init;
- (void)remoteAlertScene:(id)scene handleButtonActions:(id)actions;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setWindow:(id)window;
- (void)updateMediaControlsWithConfiguration:(id)configuration;
@end

@implementation RoutePickerSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100003F40(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_1000042E0();
}

- (void)sceneDidBecomeActive:(id)active
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_routePickerViewController);
  if (v3)
  {
    [v3 transitionToVisible:1 animated:1];
  }
}

- (_TtC20MediaRemoteUIService24RoutePickerSceneDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_window) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_routePickerViewController) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_hostProxy) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_connection) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for RoutePickerSceneDelegate();
  return [(RoutePickerSceneDelegate *)&v3 init];
}

- (void)remoteAlertScene:(id)scene handleButtonActions:(id)actions
{
  sub_100004568(0, &qword_10001AB90, SBUIRemoteAlertButtonAction_ptr);
  sub_100003CCC();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_100002D44(sceneCopy, v6);
}

- (void)updateMediaControlsWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_1000030AC(configurationCopy);
}

@end