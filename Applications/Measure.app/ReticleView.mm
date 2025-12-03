@interface ReticleView
- (void)setAnimator:(id)animator;
- (void)setState:(int64_t)state;
- (void)updateForCurrentOrientation;
@end

@implementation ReticleView

- (void)setState:(int64_t)state
{
  selfCopy = self;
  sub_10017B508(state);
}

- (void)setAnimator:(id)animator
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure11ReticleView_animator);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure11ReticleView_animator) = animator;
  animatorCopy = animator;
}

- (void)updateForCurrentOrientation
{
  v3 = objc_opt_self();
  selfCopy = self;
  currentDevice = [v3 currentDevice];
  orientation = [currentDevice orientation];

  sub_10017B6E0(orientation);
}

@end