@interface WindowSceneResolver.View
- (_TtCV11MusicCoreUI19WindowSceneResolver4View)initWithCoder:(id)a3;
- (_TtCV11MusicCoreUI19WindowSceneResolver4View)initWithFrame:(CGRect)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation WindowSceneResolver.View

- (_TtCV11MusicCoreUI19WindowSceneResolver4View)initWithCoder:(id)a3
{
  result = sub_1004BD624();
  __break(1u);
  return result;
}

- (void)willMoveToWindow:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(WindowSceneResolver.View *)&v7 willMoveToWindow:v4];
  v6 = [v4 windowScene];
  sub_100003ABC(&qword_10060BBD8);
  sub_1004BA5A4();
}

- (_TtCV11MusicCoreUI19WindowSceneResolver4View)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end