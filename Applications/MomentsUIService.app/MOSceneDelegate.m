@interface MOSceneDelegate
- (_TtC16MomentsUIService15MOSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation MOSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  MOSceneDelegate.scene(_:willConnectTo:options:)(v8, v9, v10);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  MOSceneDelegate.sceneDidDisconnect(_:)(v4);
}

- (_TtC16MomentsUIService15MOSceneDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC16MomentsUIService15MOSceneDelegate_window) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC16MomentsUIService15MOSceneDelegate_presentationWindow) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(MOSceneDelegate *)&v5 init];
}

@end