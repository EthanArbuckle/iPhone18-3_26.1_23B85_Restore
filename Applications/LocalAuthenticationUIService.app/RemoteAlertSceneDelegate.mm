@interface RemoteAlertSceneDelegate
- (UIWindow)window;
- (_TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate)init;
- (void)remoteAlertScene:(id)a3 handleButtonActions:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation RemoteAlertSceneDelegate

- (UIWindow)window
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_window;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setWindow:(id)a3
{
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  RemoteAlertSceneDelegate.scene(_:willConnectTo:options:)(v8, v9, v10);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = *((swift_isaMask & self->super.super.isa) + 0xB0);
  v5 = a3;
  v12 = self;
  v6 = v4();
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v5 = v5;
      v10 = closure #1 in RemoteAlertSceneDelegate.sceneDidBecomeActive(_:)(v9);
      v11 = [objc_allocWithZone(LACUIScenePresentationRequest) initWithUserInterfaceRequest:v10];

      (*((swift_isaMask & v7->super.super.isa) + 0x50))(v11);
      v12 = v5;
      v7 = v11;
    }

    v5 = v12;
    v12 = v7;
  }
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  RemoteAlertSceneDelegate.sceneDidDisconnect(_:)(v4);
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

- (void)remoteAlertScene:(id)a3 handleButtonActions:(id)a4
{
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for SBUIRemoteAlertButtonAction, SBUIRemoteAlertButtonAction_ptr);
  lazy protocol witness table accessor for type UIOpenURLContext and conformance NSObject(&lazy protocol witness table cache variable for type SBUIRemoteAlertButtonAction and conformance NSObject, &lazy cache variable for type metadata for SBUIRemoteAlertButtonAction, SBUIRemoteAlertButtonAction_ptr);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  specialized RemoteAlertSceneDelegate.remoteAlertScene(_:handle:)(v6);
}

@end