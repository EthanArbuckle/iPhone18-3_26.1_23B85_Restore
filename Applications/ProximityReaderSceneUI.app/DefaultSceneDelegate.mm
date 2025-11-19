@interface DefaultSceneDelegate
- (UIWindow)window;
- (_TtC22ProximityReaderSceneUI20DefaultSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation DefaultSceneDelegate

- (UIWindow)window
{
  v3 = OBJC_IVAR____TtC22ProximityReaderSceneUI20DefaultSceneDelegate_window;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setWindow:(id)a3
{
  v5 = OBJC_IVAR____TtC22ProximityReaderSceneUI20DefaultSceneDelegate_window;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100011BC0(v8, v9);
}

- (_TtC22ProximityReaderSceneUI20DefaultSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC22ProximityReaderSceneUI20DefaultSceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DefaultSceneDelegate();
  return [(DefaultSceneDelegate *)&v3 init];
}

@end