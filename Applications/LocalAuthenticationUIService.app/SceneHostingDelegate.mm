@interface SceneHostingDelegate
- (UIWindow)window;
- (_TtC28LocalAuthenticationUIService20SceneHostingDelegate)init;
- (void)handleAction:(id)action completion:(id)completion;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setWindow:(id)window;
@end

@implementation SceneHostingDelegate

- (UIWindow)window
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_window;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setWindow:(id)window
{
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_window;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  SceneHostingDelegate.scene(_:willConnectTo:options:)(sceneCopy, sessionCopy, optionsCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  SceneHostingDelegate.sceneDidDisconnect(_:)(disconnectCopy);
}

- (_TtC28LocalAuthenticationUIService20SceneHostingDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_window) = 0;
  v2 = (&self->super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneController);
  *v2 = 0;
  v2[1] = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneIdentifier) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_requestId) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for SceneHostingDelegate();
  return [(SceneHostingDelegate *)&v4 init];
}

- (void)handleAction:(id)action completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  actionCopy = action;
  selfCopy = self;
  specialized SceneHostingDelegate.handle(_:completion:)(actionCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end