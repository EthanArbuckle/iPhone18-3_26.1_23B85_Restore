@interface TodayTransitionDismissAnimation
- (_TtC22SubscribePageExtension31TodayTransitionDismissAnimation)init;
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
@end

@implementation TodayTransitionDismissAnimation

- (double)transitionDuration:(id)duration
{
  if (!duration)
  {
    return 0.0;
  }

  containerView = [swift_unknownObjectRetain_n() containerView];
  traitCollection = [containerView traitCollection];

  LOBYTE(containerView) = sub_1007537D4();
  swift_unknownObjectRelease_n();
  result = 0.61;
  if (containerView)
  {
    return 0.62;
  }

  return result;
}

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100524128(0);
  if (*(&selfCopy->super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension31TodayTransitionDismissAnimation_shouldUseReducedMotionTransition) == 1)
  {
    sub_10054D31C(transition);
  }

  else
  {
    sub_10054CDDC(transition);
  }

  swift_unknownObjectRelease();
}

- (_TtC22SubscribePageExtension31TodayTransitionDismissAnimation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end