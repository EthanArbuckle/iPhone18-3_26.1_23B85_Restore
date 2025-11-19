@interface SceneDelegate
- (UIWindow)window;
- (_TtC16SharingUIService13SceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation SceneDelegate

- (UIWindow)window
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1000182F4(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100017038(v4);
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