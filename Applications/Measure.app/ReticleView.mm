@interface ReticleView
- (void)setAnimator:(id)a3;
- (void)setState:(int64_t)a3;
- (void)updateForCurrentOrientation;
@end

@implementation ReticleView

- (void)setState:(int64_t)a3
{
  v4 = self;
  sub_10017B508(a3);
}

- (void)setAnimator:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure11ReticleView_animator);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure11ReticleView_animator) = a3;
  v3 = a3;
}

- (void)updateForCurrentOrientation
{
  v3 = objc_opt_self();
  v6 = self;
  v4 = [v3 currentDevice];
  v5 = [v4 orientation];

  sub_10017B6E0(v5);
}

@end