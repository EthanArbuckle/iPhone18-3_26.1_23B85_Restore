@interface WindowSceneResolver.View
- (_TtCV11MusicCoreUI19WindowSceneResolver4View)initWithCoder:(id)coder;
- (_TtCV11MusicCoreUI19WindowSceneResolver4View)initWithFrame:(CGRect)frame;
- (void)willMoveToWindow:(id)window;
@end

@implementation WindowSceneResolver.View

- (_TtCV11MusicCoreUI19WindowSceneResolver4View)initWithCoder:(id)coder
{
  result = sub_1004BD624();
  __break(1u);
  return result;
}

- (void)willMoveToWindow:(id)window
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  windowCopy = window;
  v5 = v7.receiver;
  [(WindowSceneResolver.View *)&v7 willMoveToWindow:windowCopy];
  windowScene = [windowCopy windowScene];
  sub_100003ABC(&qword_10060BBD8);
  sub_1004BA5A4();
}

- (_TtCV11MusicCoreUI19WindowSceneResolver4View)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end