@interface TodayTransitionDismissAnimation
- (_TtC8AppStore31TodayTransitionDismissAnimation)init;
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

  LOBYTE(v3) = UITraitCollection.isSizeClassCompact.getter();
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
  sub_1005F3D78(0);
  if (*(&v5->super.super.isa + OBJC_IVAR____TtC8AppStore31TodayTransitionDismissAnimation_shouldUseReducedMotionTransition) == 1)
  {
    sub_1005AF4B4(a3);
  }

  else
  {
    sub_1005AEF74(a3);
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