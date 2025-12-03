@interface ProximityCardSceneDelegate
- (_TtC13MediaRemoteUI26ProximityCardSceneDelegate)init;
- (void)proxCardFlowDidDismiss;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setWindow:(id)window;
@end

@implementation ProximityCardSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI26ProximityCardSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI26ProximityCardSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100017E24(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI26ProximityCardSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI26ProximityCardSceneDelegate_window) = 0;
  selfCopy = self;

  v5 = *(&selfCopy->super.isa + OBJC_IVAR____TtC13MediaRemoteUI26ProximityCardSceneDelegate_navigationController);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC13MediaRemoteUI26ProximityCardSceneDelegate_navigationController) = 0;
}

- (void)proxCardFlowDidDismiss
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI26ProximityCardSceneDelegate_window);
  if (v2)
  {
    selfCopy = self;
    windowScene = [v2 windowScene];
    if (windowScene)
    {
      v7 = windowScene;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        [v5 invalidate];
      }

      v6 = v7;
    }

    else
    {
      v6 = selfCopy;
    }
  }
}

- (_TtC13MediaRemoteUI26ProximityCardSceneDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI26ProximityCardSceneDelegate_window) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI26ProximityCardSceneDelegate_navigationController) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ProximityCardSceneDelegate();
  return [(ProximityCardSceneDelegate *)&v3 init];
}

@end