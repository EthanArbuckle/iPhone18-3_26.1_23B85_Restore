@interface SceneDelegate
- (_TtC20PeopleMessageService13SceneDelegate)init;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation SceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20PeopleMessageService13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC20PeopleMessageService13SceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10000978C(v8, v10);
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_100007AA8();
  sub_1000096E4(&qword_10001D430, sub_100007AA8);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
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