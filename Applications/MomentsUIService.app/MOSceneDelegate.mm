@interface MOSceneDelegate
- (_TtC16MomentsUIService15MOSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation MOSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  MOSceneDelegate.scene(_:willConnectTo:options:)(sceneCopy, sessionCopy, optionsCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  MOSceneDelegate.sceneDidDisconnect(_:)(disconnectCopy);
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