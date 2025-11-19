@interface TodayTransitionPresentAnimation
- (_TtC20ProductPageExtension31TodayTransitionPresentAnimation)init;
- (double)transitionDuration:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation TodayTransitionPresentAnimation

- (double)transitionDuration:(id)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v3 = [swift_unknownObjectRetain_n() containerView];
  v4 = [v3 traitCollection];

  LOBYTE(v3) = sub_1007706EC();
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
  sub_1000730D8(0);
  if (*(&v5->super.super.isa + OBJC_IVAR____TtC20ProductPageExtension31TodayTransitionPresentAnimation_shouldUseReducedMotionTransition) == 1)
  {
    sub_10056CA7C(a3);
  }

  else
  {
    sub_10056C530(a3);
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