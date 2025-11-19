@interface RoutePickerSceneDelegate
- (_TtC20MediaRemoteUIService24RoutePickerSceneDelegate)init;
- (void)remoteAlertScene:(id)a3 handleButtonActions:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)setWindow:(id)a3;
- (void)updateMediaControlsWithConfiguration:(id)a3;
@end

@implementation RoutePickerSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100003F40(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000042E0();
}

- (void)sceneDidBecomeActive:(id)a3
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

- (void)remoteAlertScene:(id)a3 handleButtonActions:(id)a4
{
  sub_100004568(0, &qword_10001AB90, SBUIRemoteAlertButtonAction_ptr);
  sub_100003CCC();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_100002D44(v7, v6);
}

- (void)updateMediaControlsWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000030AC(v4);
}

@end