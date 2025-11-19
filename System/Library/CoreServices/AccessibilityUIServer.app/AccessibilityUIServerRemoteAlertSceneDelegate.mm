@interface AccessibilityUIServerRemoteAlertSceneDelegate
- (_TtC21AccessibilityUIServer45AccessibilityUIServerRemoteAlertSceneDelegate)init;
- (void)remoteAlertScene:(id)a3 handleButtonActions:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation AccessibilityUIServerRemoteAlertSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1000067E8(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000069A0(v4);
}

- (void)remoteAlertScene:(id)a3 handleButtonActions:(id)a4
{
  sub_100006538();
  sub_100006584();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  scene = a3;
  v6 = sub_1000062BC(v5);

  if (v6)
  {
    if (([v6 events] & 0x10) != 0)
    {
      type metadata accessor for AXUniversalDisplayManager();
      v7 = static AXUniversalDisplayManager.shared.getter();
      AXUniversalDisplayManager.remoteSceneDidHandleHomeGesture(scene:)(scene);
    }
  }
}

- (_TtC21AccessibilityUIServer45AccessibilityUIServerRemoteAlertSceneDelegate)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(AccessibilityUIServerRemoteAlertSceneDelegate *)&v3 init];
}

@end