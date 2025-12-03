@interface TodayTransitionDismissAnimation
- (_TtC8AppStore31TodayTransitionDismissAnimation)init;
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

  LOBYTE(containerView) = UITraitCollection.isSizeClassCompact.getter();
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
  sub_1005F3D78(0);
  if (*(&selfCopy->super.super.isa + OBJC_IVAR____TtC8AppStore31TodayTransitionDismissAnimation_shouldUseReducedMotionTransition) == 1)
  {
    sub_1005AF4B4(transition);
  }

  else
  {
    sub_1005AEF74(transition);
  }

  swift_unknownObjectRelease();
}

- (_TtC8AppStore31TodayTransitionDismissAnimation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end