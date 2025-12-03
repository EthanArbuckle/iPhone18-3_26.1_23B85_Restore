@interface SceneDelegate
- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)setWindow:(id)window;
- (void)tabBarController:(id)controller didSelectViewController:(id)viewController;
- (void)windowScene:(id)scene didUpdateCoordinateSpace:(id)space interfaceOrientation:(int64_t)orientation traitCollection:(id)collection;
@end

@implementation SceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10021EAF0(sceneCopy, optionsCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_10021FB6C();
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_10021FE08();
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100220024();
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_10000A2CC(0, &qword_1003B8CC8);
  sub_1000819A8(&unk_1003B8CD0, &qword_1003B8CC8);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_10022026C(v6);
}

- (void)windowScene:(id)scene didUpdateCoordinateSpace:(id)space interfaceOrientation:(int64_t)orientation traitCollection:(id)collection
{
  sceneCopy = scene;
  swift_unknownObjectRetain();
  collectionCopy = collection;
  selfCopy = self;
  sub_10022043C(sceneCopy);

  swift_unknownObjectRelease();
}

- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_100219D24(controllerCopy, viewControllerCopy);

  return 1;
}

- (void)tabBarController:(id)controller didSelectViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_100220500(controllerCopy);
}

- (void)sceneDidDisconnect:
{
  if (qword_1003A9200 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000078E8(v0, qword_1003D2710);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Scene did disconnect", v3, 2u);
  }

  sub_10000A2CC(0, &qword_1003BB780);
  v4 = sub_10000B55C();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_interruptionController);
    v6 = v4;

    if (v5)
    {
      *(v5 + 24) = 0;
      swift_unknownObjectWeakAssign();
    }
  }
}

@end