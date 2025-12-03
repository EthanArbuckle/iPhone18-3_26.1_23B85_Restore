@interface SceneDelegate
- (_TtC24AuthenticationServicesUI13SceneDelegate)init;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation SceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000056D0(sceneCopy, optionsCopy);
}

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  sub_100006420(0, &qword_100011600, BSAction_ptr);
  sub_100005680(&qword_100011608, &qword_100011600, BSAction_ptr);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  iSceneCopy = iScene;
  contextCopy = context;
  selfCopy = self;
  sub_100005964(v10, iSceneCopy);

  v15.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_100006420(0, &qword_1000115E8, UIOpenURLContext_ptr);
  sub_100005680(&qword_1000115F0, &qword_1000115E8, UIOpenURLContext_ptr);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000050F0(v5);
}

- (_TtC24AuthenticationServicesUI13SceneDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC24AuthenticationServicesUI13SceneDelegate_windows) = &_swiftEmptyArrayStorage;
  *(&self->super.isa + OBJC_IVAR____TtC24AuthenticationServicesUI13SceneDelegate_rootViewController) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v3 init];
}

@end