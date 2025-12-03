@interface SceneDelegate
- (_TtC20PeopleMessageService13SceneDelegate)init;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation SceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20PeopleMessageService13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC20PeopleMessageService13SceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10000978C(sceneCopy, optionsCopy);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_100007AA8();
  sub_1000096E4(&qword_10001D430, sub_100007AA8);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_100008384(v6);
}

- (_TtC20PeopleMessageService13SceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC20PeopleMessageService13SceneDelegate_window) = 0;
  v3 = OBJC_IVAR____TtC20PeopleMessageService13SceneDelegate_rootViewController;
  type metadata accessor for RootContainerViewController();
  *(&self->super.super.isa + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(&self->super.super.isa + OBJC_IVAR____TtC20PeopleMessageService13SceneDelegate_messageComposer) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC20PeopleMessageService13SceneDelegate_backgroundTaskID) = UIBackgroundTaskInvalid;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v5 init];
}

@end