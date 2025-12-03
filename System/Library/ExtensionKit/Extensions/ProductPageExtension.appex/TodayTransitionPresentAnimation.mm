@interface TodayTransitionPresentAnimation
- (_TtC20ProductPageExtension31TodayTransitionPresentAnimation)init;
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
@end

@implementation TodayTransitionPresentAnimation

- (double)transitionDuration:(id)duration
{
  if (!duration)
  {
    return 0.0;
  }

  containerView = [swift_unknownObjectRetain_n() containerView];
  traitCollection = [containerView traitCollection];

  LOBYTE(containerView) = sub_1007706EC();
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
  sub_1000730D8(0);
  if (*(&selfCopy->super.super.isa + OBJC_IVAR____TtC20ProductPageExtension31TodayTransitionPresentAnimation_shouldUseReducedMotionTransition) == 1)
  {
    sub_10056CA7C(transition);
  }

  else
  {
    sub_10056C530(transition);
  }

  swift_unknownObjectRelease();
}

- (_TtC20ProductPageExtension31TodayTransitionPresentAnimation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end