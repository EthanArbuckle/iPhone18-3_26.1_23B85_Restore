@interface AccessibilityUIServerRemoteAlertSceneDelegate
- (_TtC21AccessibilityUIServer45AccessibilityUIServerRemoteAlertSceneDelegate)init;
- (void)remoteAlertScene:(id)scene handleButtonActions:(id)actions;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation AccessibilityUIServerRemoteAlertSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000067E8(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_1000069A0(disconnectCopy);
}

- (void)remoteAlertScene:(id)scene handleButtonActions:(id)actions
{
  sub_100006538();
  sub_100006584();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  scene = scene;
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