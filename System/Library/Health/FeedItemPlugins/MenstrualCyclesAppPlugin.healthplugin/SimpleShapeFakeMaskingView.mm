@interface SimpleShapeFakeMaskingView
- (_TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setCroppingLayer:(id)layer;
@end

@implementation SimpleShapeFakeMaskingView

- (void)setCroppingLayer:(id)layer
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_croppingLayer);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_croppingLayer) = layer;
  layerCopy = layer;
}

- (_TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_backgroundLayerColor) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_29E0354D8();
}

@end