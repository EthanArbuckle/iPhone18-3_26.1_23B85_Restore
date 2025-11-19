@interface AULabeledMeterView
- (void)layoutSublayersOfLayer:(id)a3;
- (void)tintColorDidChange;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation AULabeledMeterView

- (void)willMoveToSuperview:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2371503F8(a3);
}

- (void)tintColorDidChange
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_fillLayer);
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 tintColor];
  v7 = [v6 colorWithAlphaComponent_];

  v8 = [v7 CGColor];
  [v3 setBackgroundColor_];
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2371527D0(v4);
}

@end