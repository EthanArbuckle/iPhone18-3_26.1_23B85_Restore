@interface SceneDelegate
- (_TtC28LocalAuthenticationUIService13SceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation SceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  SceneDelegate.scene(_:willConnectTo:options:)(sceneCopy, sessionCopy, optionsCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  SceneDelegate.sceneDidDisconnect(_:)(disconnectCopy);
}

- (_TtC28LocalAuthenticationUIService13SceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService13SceneDelegate_presenter) = 0;
  v2 = (&self->super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService13SceneDelegate_sceneController);
  *v2 = 0;
  v2[1] = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService13SceneDelegate_window) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v4 init];
}

@end