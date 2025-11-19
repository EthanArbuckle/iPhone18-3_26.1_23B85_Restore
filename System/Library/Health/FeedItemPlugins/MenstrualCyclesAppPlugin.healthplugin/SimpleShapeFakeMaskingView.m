@interface SimpleShapeFakeMaskingView
- (_TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setCroppingLayer:(id)a3;
@end

@implementation SimpleShapeFakeMaskingView

- (void)setCroppingLayer:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_croppingLayer);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_croppingLayer) = a3;
  v3 = a3;
}

- (_TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_backgroundLayerColor) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_29E0354D8();
}

@end