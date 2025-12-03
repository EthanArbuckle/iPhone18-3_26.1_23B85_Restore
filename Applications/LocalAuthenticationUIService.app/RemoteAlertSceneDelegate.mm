@interface RemoteAlertSceneDelegate
- (UIWindow)window;
- (_TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate)init;
- (void)remoteAlertScene:(id)scene handleButtonActions:(id)actions;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setWindow:(id)window;
@end

@implementation RemoteAlertSceneDelegate

- (UIWindow)window
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_window;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setWindow:(id)window
{
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_window;
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
  RemoteAlertSceneDelegate.scene(_:willConnectTo:options:)(sceneCopy, sessionCopy, optionsCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  v4 = *((swift_isaMask & self->super.super.isa) + 0xB0);
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
      v10 = closure #1 in RemoteAlertSceneDelegate.sceneDidBecomeActive(_:)(v9);
      v11 = [objc_allocWithZone(LACUIScenePresentationRequest) initWithUserInterfaceRequest:v10];

      (*((swift_isaMask & v7->super.super.isa) + 0x50))(v11);
      selfCopy = activeCopy;
      v7 = v11;
    }

    activeCopy = selfCopy;
    selfCopy = v7;
  }
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  RemoteAlertSceneDelegate.sceneDidDisconnect(_:)(disconnectCopy);
}

- (_TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_presenter) = 0;
  v2 = (&self->super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_sceneController);
  *v2 = 0;
  v2[1] = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_window) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return [(RemoteAlertSceneDelegate *)&v4 init];
}

- (void)remoteAlertScene:(id)scene handleButtonActions:(id)actions
{
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for SBUIRemoteAlertButtonAction, SBUIRemoteAlertButtonAction_ptr);
  lazy protocol witness table accessor for type UIOpenURLContext and conformance NSObject(&lazy protocol witness table cache variable for type SBUIRemoteAlertButtonAction and conformance NSObject, &lazy cache variable for type metadata for SBUIRemoteAlertButtonAction, SBUIRemoteAlertButtonAction_ptr);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  specialized RemoteAlertSceneDelegate.remoteAlertScene(_:handle:)(v6);
}

@end