@interface SceneDelegate
- (_TtC7AppleTV13SceneDelegate)init;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
@end

@implementation SceneDelegate

- (_TtC7AppleTV13SceneDelegate)init
{
  Logger.init(subsystem:category:)();
  v3 = OBJC_IVAR____TtC7AppleTV13SceneDelegate_appDelegate;
  sharedApplication = [objc_opt_self() sharedApplication];
  delegate = [sharedApplication delegate];

  *(&self->super.isa + v3) = delegate;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v7 init];
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100002554(sceneCopy, optionsCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_100003F24(foregroundCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100003FB4(activeCopy);
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_10000D000(activeCopy);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_10000300C(0, &qword_1000232C0, UIOpenURLContext_ptr);
  sub_100003054(&qword_1000232C8, &qword_1000232C0, UIOpenURLContext_ptr);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = *((swift_isaMask & self->super.isa) + 0xA0);
  selfCopy = self;
  v6(v5);
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  selfCopy = self;
  sub_10000EA94(activityCopy);
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_10000D28C(backgroundCopy);
}

@end