@interface BouncyFromRectAnimation
- (_TtC8AppStore23BouncyFromRectAnimation)init;
- (void)animateTransition:(id)transition;
@end

@implementation BouncyFromRectAnimation

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10017AEAC(transition);
  if (*(&selfCopy->super.super.isa + OBJC_IVAR____TtC8AppStore23BouncyFromRectAnimation_shouldAnimateTabBar) == 1)
  {
    sub_10017ACF4(transition);
  }

  swift_unknownObjectRelease();
}

- (_TtC8AppStore23BouncyFromRectAnimation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end