@interface RemoteAlertSceneDelegate
- (UIWindow)window;
- (_TtC10CoreAuthUI24RemoteAlertSceneDelegate)init;
- (void)remoteAlertScene:(id)a3 handleButtonActions:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation RemoteAlertSceneDelegate

- (UIWindow)window
{
  v3 = OBJC_IVAR____TtC10CoreAuthUI24RemoteAlertSceneDelegate_window;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setWindow:(id)a3
{
  v5 = OBJC_IVAR____TtC10CoreAuthUI24RemoteAlertSceneDelegate_window;
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
  sub_10002D740(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = *((swift_isaMask & self->super.super.isa) + 0x58);
  v5 = a3;
  v11 = self;
  v6 = v4();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 windowScene];

    if (v8)
    {
      sub_10002B4A4(0, &qword_1000AE888, UIScene_ptr);
      v9 = v5;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        (*((swift_isaMask & v11->super.super.isa) + 0x60))(0);
      }
    }
  }
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = *((swift_isaMask & self->super.super.isa) + 0x70);
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
      v10 = sub_10002D314(v9);
      v11 = [objc_allocWithZone(LACUIScenePresentationRequest) initWithUserInterfaceRequest:v10];

      (*((swift_isaMask & v7->super.super.isa) + 0x50))(v11);
      v12 = v5;
      v7 = v11;
    }

    v5 = v12;
    v12 = v7;
  }
}

- (void)remoteAlertScene:(id)a3 handleButtonActions:(id)a4
{
  sub_10002B4A4(0, &qword_1000AE918, SBUIRemoteAlertButtonAction_ptr);
  sub_10002DB60();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
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