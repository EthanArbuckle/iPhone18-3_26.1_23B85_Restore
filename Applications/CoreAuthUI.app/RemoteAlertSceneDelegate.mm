@interface RemoteAlertSceneDelegate
- (UIWindow)window;
- (_TtC10CoreAuthUI24RemoteAlertSceneDelegate)init;
- (void)remoteAlertScene:(id)scene handleButtonActions:(id)actions;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setWindow:(id)window;
@end

@implementation RemoteAlertSceneDelegate

- (UIWindow)window
{
  v3 = OBJC_IVAR____TtC10CoreAuthUI24RemoteAlertSceneDelegate_window;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setWindow:(id)window
{
  v5 = OBJC_IVAR____TtC10CoreAuthUI24RemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10002D740(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v4 = *((swift_isaMask & self->super.super.isa) + 0x58);
  disconnectCopy = disconnect;
  selfCopy = self;
  v6 = v4();
  if (v6)
  {
    v7 = v6;
    windowScene = [v6 windowScene];

    if (windowScene)
    {
      sub_10002B4A4(0, &qword_1000AE888, UIScene_ptr);
      v9 = disconnectCopy;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        (*((swift_isaMask & selfCopy->super.super.isa) + 0x60))(0);
      }
    }
  }
}

- (void)sceneDidBecomeActive:(id)active
{
  v4 = *((swift_isaMask & self->super.super.isa) + 0x70);
  activeCopy = active;
  selfCopy = self;
  v6 = v4();
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      activeCopy = activeCopy;
      v10 = sub_10002D314(v9);
      v11 = [objc_allocWithZone(LACUIScenePresentationRequest) initWithUserInterfaceRequest:v10];

      (*((swift_isaMask & v7->super.super.isa) + 0x50))(v11);
      selfCopy = activeCopy;
      v7 = v11;
    }

    activeCopy = selfCopy;
    selfCopy = v7;
  }
}

- (void)remoteAlertScene:(id)scene handleButtonActions:(id)actions
{
  sub_10002B4A4(0, &qword_1000AE918, SBUIRemoteAlertButtonAction_ptr);
  sub_10002DB60();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_10002D8DC(v6);
}

- (_TtC10CoreAuthUI24RemoteAlertSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC10CoreAuthUI24RemoteAlertSceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return [(RemoteAlertSceneDelegate *)&v3 init];
}

@end