@interface SceneDelegate
- (_TtC16HealthENLauncher13SceneDelegate)init;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation SceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC16HealthENLauncher13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC16HealthENLauncher13SceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100016968(sceneCopy, optionsCopy);
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  activityCopy = activity;
  selfCopy = self;
  sub_10000C698(activityCopy);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_1000177C4(0, &qword_100025AA8, UIOpenURLContext_ptr);
  sub_100017764(&qword_100025AB0, &qword_100025AA8, UIOpenURLContext_ptr);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_100016CB4(v6);
}

- (_TtC16HealthENLauncher13SceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC16HealthENLauncher13SceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v3 init];
}

@end