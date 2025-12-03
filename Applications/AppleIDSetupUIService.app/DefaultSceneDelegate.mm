@interface DefaultSceneDelegate
- (_TtC21AppleIDSetupUIService20DefaultSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation DefaultSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC21AppleIDSetupUIService20DefaultSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC21AppleIDSetupUIService20DefaultSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10000E9BC(sceneCopy);
}

- (_TtC21AppleIDSetupUIService20DefaultSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC21AppleIDSetupUIService20DefaultSceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DefaultSceneDelegate();
  return [(DefaultSceneDelegate *)&v3 init];
}

@end