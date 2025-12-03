@interface SceneDelegate
- (_TtC18DKPairingUIService13SceneDelegate)init;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation SceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC18DKPairingUIService13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC18DKPairingUIService13SceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_10000F800();
  sub_10000F84C();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_10000F250(v6);
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10000F4F0(sceneCopy, optionsCopy);
}

- (_TtC18DKPairingUIService13SceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC18DKPairingUIService13SceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v3 init];
}

@end