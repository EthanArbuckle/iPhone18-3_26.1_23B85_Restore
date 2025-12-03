@interface TodayTransitionDismissAnimation
- (_TtC20ProductPageExtension31TodayTransitionDismissAnimation)init;
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
  if (*(&selfCopy->super.super.isa + OBJC_IVAR____TtC20ProductPageExtension31TodayTransitionDismissAnimation_shouldUseReducedMotionTransition) == 1)
  {
    sub_100725178(transition);
  }

  else
  {
    sub_100724C38(transition);
  }

  swift_unknownObjectRelease();
}

- (_TtC20ProductPageExtension31TodayTransitionDismissAnimation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end