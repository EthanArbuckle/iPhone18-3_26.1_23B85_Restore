@interface TestingSceneDelegate
- (_TtC7SwiftUI20TestingSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation TestingSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI20TestingSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI20TestingSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  specialized TestingSceneDelegate.scene(_:willConnectTo:options:)(sceneCopy);
}

- (_TtC7SwiftUI20TestingSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI20TestingSceneDelegate_window) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI20TestingSceneDelegate_comparisonWindow) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for TestingSceneDelegate();
  return [(TestingSceneDelegate *)&v3 init];
}

@end