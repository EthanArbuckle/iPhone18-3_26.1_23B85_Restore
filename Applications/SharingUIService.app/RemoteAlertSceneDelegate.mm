@interface RemoteAlertSceneDelegate
- (_TtC16SharingUIService24RemoteAlertSceneDelegate)init;
- (void)remoteAlertScene:(id)scene handleButtonActions:(id)actions;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)setWindow:(id)window;
@end

@implementation RemoteAlertSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC16SharingUIService24RemoteAlertSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC16SharingUIService24RemoteAlertSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100015910(sceneCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100016448();
}

- (_TtC16SharingUIService24RemoteAlertSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC16SharingUIService24RemoteAlertSceneDelegate_window) = 0;
  v3 = OBJC_IVAR____TtC16SharingUIService24RemoteAlertSceneDelegate_presentationRequest;
  v4 = type metadata accessor for SFRemoteAlertPresentationRequest();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return [(RemoteAlertSceneDelegate *)&v6 init];
}

- (void)remoteAlertScene:(id)scene handleButtonActions:(id)actions
{
  sub_10001586C();
  sub_1000158B8();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_100016850(sceneCopy, v6);
}

@end