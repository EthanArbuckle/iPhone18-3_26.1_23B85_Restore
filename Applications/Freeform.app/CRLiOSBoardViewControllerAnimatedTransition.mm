@interface CRLiOSBoardViewControllerAnimatedTransition
- (double)transitionDuration:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation CRLiOSBoardViewControllerAnimatedTransition

- (void)animateTransition:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100848900(a3);
  swift_unknownObjectRelease();
}

- (double)transitionDuration:(id)a3
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_animationGroup);
  v4 = self;
  sub_10078935C(v3);
  v6 = v5;

  return v6;
}

@end