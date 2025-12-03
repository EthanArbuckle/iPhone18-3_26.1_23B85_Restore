@interface SceneDelegate
- (UIWindow)window;
- (_TtC16SharingUIService13SceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation SceneDelegate

- (UIWindow)window
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000182F4(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_100017038(disconnectCopy);
}

- (_TtC16SharingUIService13SceneDelegate)init
{
  v3 = OBJC_IVAR____TtC16SharingUIService13SceneDelegate_sceneComponentKey;
  sub_1000182A8();
  *(self + v3) = NSString.init(stringLiteral:)();
  *(self + OBJC_IVAR____TtC16SharingUIService13SceneDelegate_sceneSession + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v5.receiver = self;
  v5.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v5 init];
}

@end