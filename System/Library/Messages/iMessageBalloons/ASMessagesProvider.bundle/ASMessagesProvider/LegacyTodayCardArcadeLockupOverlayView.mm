@interface LegacyTodayCardArcadeLockupOverlayView
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)_continuousCornerRadius;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)layoutSubviews;
@end

@implementation LegacyTodayCardArcadeLockupOverlayView

- (double)_continuousCornerRadius
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  [(LegacyTodayCardArcadeLockupOverlayView *)&v3 _continuousCornerRadius];
  return result;
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(LegacyTodayCardArcadeLockupOverlayView *)&v6 _setContinuousCornerRadius:radius];
  [*&v4[OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView] _setCornerRadius:1 continuous:12 maskedCorners:{radius, v6.receiver, v6.super_class}];
  layer = [*&v4[OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView] layer];
  [layer setMaskedCorners:12];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView) sizeThatFits:{fits.width, fits.height}];
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1F6FA8();
}

@end