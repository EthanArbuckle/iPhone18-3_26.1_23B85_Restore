@interface AppPromotionDetailPageCloseAnimation
- (_TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation)init;
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
@end

@implementation AppPromotionDetailPageCloseAnimation

- (double)transitionDuration:(id)duration
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

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1002CBF20(transition);
  swift_unknownObjectRelease();
}

- (_TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end