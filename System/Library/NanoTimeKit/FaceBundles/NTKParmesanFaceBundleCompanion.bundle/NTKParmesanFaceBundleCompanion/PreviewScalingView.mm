@interface PreviewScalingView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView)initWithCoder:(id)coder;
- (_TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PreviewScalingView

- (_TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView_contentView) = 0;
  v7 = self + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView_targetSize;
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = self + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView_targetCornerRadius;
  *v8 = 0;
  v8[8] = 1;
  v12.receiver = self;
  v12.super_class = type metadata accessor for PreviewScalingView();
  height = [(PreviewScalingView *)&v12 initWithFrame:x, y, width, height];
  layer = [(PreviewScalingView *)height layer];
  [layer setMasksToBounds_];

  return height;
}

- (_TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView_contentView) = 0;
  v3 = self + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView_targetSize;
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = self + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView_targetCornerRadius;
  *v4 = 0;
  v4[8] = 1;
  result = sub_23BFFAB00();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = (self + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView_targetSize);
  if (*(&self->super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView_targetSize))
  {
    height = fits.height;
    width = fits.width;
    v8.receiver = self;
    v8.super_class = type metadata accessor for PreviewScalingView();
    [(PreviewScalingView *)&v8 sizeThatFits:width, height];
  }

  else
  {
    v6 = *v3;
    v7 = v3[1];
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_23BFEC49C();
}

@end