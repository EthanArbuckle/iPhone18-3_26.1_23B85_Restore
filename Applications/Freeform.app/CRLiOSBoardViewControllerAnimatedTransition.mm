@interface CRLiOSBoardViewControllerAnimatedTransition
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
@end

@implementation CRLiOSBoardViewControllerAnimatedTransition

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100848900(transition);
  swift_unknownObjectRelease();
}

- (double)transitionDuration:(id)duration
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_animationGroup);
  selfCopy = self;
  sub_10078935C(v3);
  v6 = v5;

  return v6;
}

@end