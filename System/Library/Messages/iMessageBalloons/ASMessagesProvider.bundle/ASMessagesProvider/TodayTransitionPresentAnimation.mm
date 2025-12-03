@interface TodayTransitionPresentAnimation
- (_TtC18ASMessagesProvider31TodayTransitionPresentAnimation)init;
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

  LOBYTE(containerView) = sub_7699D0();
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
  sub_B584C(0);
  if (*(&selfCopy->super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider31TodayTransitionPresentAnimation_shouldUseReducedMotionTransition) == 1)
  {
    sub_4D61F8(transition);
  }

  else
  {
    sub_4D5CAC(transition);
  }

  swift_unknownObjectRelease();
}

- (_TtC18ASMessagesProvider31TodayTransitionPresentAnimation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end