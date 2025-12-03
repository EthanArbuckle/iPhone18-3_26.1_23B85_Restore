@interface AULabeledMeterView
- (void)layoutSublayersOfLayer:(id)layer;
- (void)tintColorDidChange;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation AULabeledMeterView

- (void)willMoveToSuperview:(id)superview
{
  superviewCopy = superview;
  selfCopy = self;
  sub_2371503F8(superview);
}

- (void)tintColorDidChange
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_fillLayer);
  v4 = objc_opt_self();
  selfCopy = self;
  tintColor = [v4 tintColor];
  colorWithAlphaComponent_ = [tintColor colorWithAlphaComponent_];

  cGColor = [colorWithAlphaComponent_ CGColor];
  [v3 setBackgroundColor_];
}

- (void)layoutSublayersOfLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
  sub_2371527D0(layerCopy);
}

@end