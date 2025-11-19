@interface TodayCardArcadeLockupOverlayView
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)_continuousCornerRadius;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)layoutSubviews;
@end

@implementation TodayCardArcadeLockupOverlayView

- (double)_continuousCornerRadius
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  [(TodayCardArcadeLockupOverlayView *)&v3 _continuousCornerRadius];
  return result;
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(TodayCardArcadeLockupOverlayView *)&v6 _setContinuousCornerRadius:a3];
  [*&v4[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_backgroundEffectView] _setCornerRadius:1 continuous:12 maskedCorners:{a3, v6.receiver, v6.super_class}];
  v5 = [*&v4[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView] layer];
  [v5 setMaskedCorners:12];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView) sizeThatFits:{a3.width, a3.height}];
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1006A857C();
}

@end