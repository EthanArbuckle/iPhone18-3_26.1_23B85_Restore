@interface AppPromotionDetailPageCloseAnimation
- (_TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation)init;
- (double)transitionDuration:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation AppPromotionDetailPageCloseAnimation

- (double)transitionDuration:(id)a3
{
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    return 0.3;
  }

  v4 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:180.0 damping:22.0 initialVelocity:{0.0, 0.0}];
  v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v4 timingParameters:0.0];

  [v5 duration];
  v7 = v6;

  return v7;
}

- (void)animateTransition:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_29BB7C(a3);
  swift_unknownObjectRelease();
}

- (_TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end