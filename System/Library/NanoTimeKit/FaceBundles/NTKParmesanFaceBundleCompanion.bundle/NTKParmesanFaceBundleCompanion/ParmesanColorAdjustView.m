@interface ParmesanColorAdjustView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (_TtC30NTKParmesanFaceBundleCompanion23ParmesanColorAdjustView)initWithCoder:(id)a3;
- (_TtC30NTKParmesanFaceBundleCompanion23ParmesanColorAdjustView)initWithFrame:(CGRect)a3;
@end

@implementation ParmesanColorAdjustView

- (_TtC30NTKParmesanFaceBundleCompanion23ParmesanColorAdjustView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanColorAdjustView_colorBrightnessAmount) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanColorAdjustView_colorContrastAmount) = 0x3FF0000000000000;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ParmesanColorAdjustView();
  v7 = [(ParmesanColorAdjustView *)&v9 initWithFrame:x, y, width, height];
  sub_23BFEF52C();

  return v7;
}

- (_TtC30NTKParmesanFaceBundleCompanion23ParmesanColorAdjustView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanColorAdjustView_colorBrightnessAmount) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanColorAdjustView_colorContrastAmount) = 0x3FF0000000000000;
  result = sub_23BFFAB00();
  __break(1u);
  return result;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if (a3)
  {
    v4 = sub_23BFFA300();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8 = sub_23BFEF86C(v4, v6);

  return v8 & 1;
}

@end