@interface LiveActivitySceneDelegate
- (_TtC7Journal25LiveActivitySceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setWindow:(id)window;
@end

@implementation LiveActivitySceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC7Journal25LiveActivitySceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC7Journal25LiveActivitySceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1003D528C(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  sharedApplication = [objc_opt_self() sharedApplication];
  delegate = [sharedApplication delegate];

  if (delegate)
  {
    type metadata accessor for AppDelegate();
    if (swift_dynamicCastClass())
    {
      sub_1004AD324();
    }

    swift_unknownObjectRelease();
  }
}

- (_TtC7Journal25LiveActivitySceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7Journal25LiveActivitySceneDelegate_window) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7Journal25LiveActivitySceneDelegate_systemApertureElementProvider) = 0;
  v3 = OBJC_IVAR____TtC7Journal25LiveActivitySceneDelegate_logger;
  if (qword_100AD0268 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_10000617C(v4, qword_100B301D8);
  (*(*(v4 - 8) + 16))(self + v3, v5, v4);
  v7.receiver = self;
  v7.super_class = type metadata accessor for LiveActivitySceneDelegate();
  return [(LiveActivitySceneDelegate *)&v7 init];
}

@end