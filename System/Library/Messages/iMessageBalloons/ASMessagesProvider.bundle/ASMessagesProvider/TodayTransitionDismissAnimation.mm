@interface TodayTransitionDismissAnimation
- (_TtC18ASMessagesProvider31TodayTransitionDismissAnimation)init;
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
  if (*(&selfCopy->super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider31TodayTransitionDismissAnimation_shouldUseReducedMotionTransition) == 1)
  {
    sub_53CC7C(transition);
  }

  else
  {
    sub_53C73C(transition);
  }

  swift_unknownObjectRelease();
}

- (_TtC18ASMessagesProvider31TodayTransitionDismissAnimation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end