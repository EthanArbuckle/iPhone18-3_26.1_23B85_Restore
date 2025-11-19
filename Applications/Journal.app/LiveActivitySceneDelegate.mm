@interface LiveActivitySceneDelegate
- (_TtC7Journal25LiveActivitySceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation LiveActivitySceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC7Journal25LiveActivitySceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC7Journal25LiveActivitySceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1003D528C(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 delegate];

  if (v4)
  {
    type metadata accessor for AppDelegate();
    if (swift_dynamicCastClass())
    {
      sub_1004AD324();
    }

    swift_unknownObjectRelease();
  }
}

- (_TtC7Journal25LiveActivitySceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7Journal25LiveActivitySceneDelegate_window) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7Journal25LiveActivitySceneDelegate_systemApertureElementProvider) = 0;
  v3 = OBJC_IVAR____TtC7Journal25LiveActivitySceneDelegate_logger;
  if (qword_100AD0268 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_10000617C(v4, qword_100B301D8);
  (*(*(v4 - 8) + 16))(self + v3, v5, v4);
  v7.receiver = self;
  v7.super_class = type metadata accessor for LiveActivitySceneDelegate();
  return [(LiveActivitySceneDelegate *)&v7 init];
}

@end