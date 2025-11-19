@interface TestingSceneDelegate
- (_TtC7SwiftUI20TestingSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation TestingSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI20TestingSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI20TestingSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  specialized TestingSceneDelegate.scene(_:willConnectTo:options:)(v8);
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