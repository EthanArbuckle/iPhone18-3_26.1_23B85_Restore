@interface BouncyFromRectAnimation
- (_TtC22SubscribePageExtension23BouncyFromRectAnimation)init;
- (void)animateTransition:(id)transition;
@end

@implementation BouncyFromRectAnimation

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1006DFC20(transition);
  if (*(&selfCopy->super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension23BouncyFromRectAnimation_shouldAnimateTabBar) == 1)
  {
    sub_1006DFA68(transition);
  }

  swift_unknownObjectRelease();
}

- (_TtC22SubscribePageExtension23BouncyFromRectAnimation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end