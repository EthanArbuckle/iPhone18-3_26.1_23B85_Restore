@interface DefaultSceneDelegate
- (_TtC10ClockAngel20DefaultSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation DefaultSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC10ClockAngel20DefaultSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC10ClockAngel20DefaultSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1000C058C(v8, v9);
}

- (_TtC10ClockAngel20DefaultSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC10ClockAngel20DefaultSceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DefaultSceneDelegate();
  return [(DefaultSceneDelegate *)&v3 init];
}

@end