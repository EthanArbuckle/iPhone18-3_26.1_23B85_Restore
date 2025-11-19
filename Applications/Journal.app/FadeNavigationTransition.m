@interface FadeNavigationTransition
- (_TtC7Journal24FadeNavigationTransition)init;
- (id)interruptibleAnimatorForTransition:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation FadeNavigationTransition

- (id)interruptibleAnimatorForTransition:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_1007CF278(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (void)animateTransition:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  [sub_1007CF278(a3) startAnimation];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (_TtC7Journal24FadeNavigationTransition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end