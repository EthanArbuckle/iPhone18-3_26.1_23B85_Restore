@interface FadeNavigationTransition
- (_TtC7Journal24FadeNavigationTransition)init;
- (id)interruptibleAnimatorForTransition:(id)transition;
- (void)animateTransition:(id)transition;
@end

@implementation FadeNavigationTransition

- (id)interruptibleAnimatorForTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_1007CF278(transition);
  swift_unknownObjectRelease();

  return v6;
}

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  [sub_1007CF278(transition) startAnimation];
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