@interface TodayTransitionDismissAnimation
- (_TtC22SubscribePageExtension31TodayTransitionDismissAnimation)init;
- (double)transitionDuration:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation TodayTransitionDismissAnimation

- (double)transitionDuration:(id)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v3 = [swift_unknownObjectRetain_n() containerView];
  v4 = [v3 traitCollection];

  LOBYTE(v3) = sub_1007537D4();
  swift_unknownObjectRelease_n();
  result = 0.61;
  if (v3)
  {
    return 0.62;
  }

  return result;
}

- (void)animateTransition:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100524128(0);
  if (*(&v5->super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension31TodayTransitionDismissAnimation_shouldUseReducedMotionTransition) == 1)
  {
    sub_10054D31C(a3);
  }

  else
  {
    sub_10054CDDC(a3);
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