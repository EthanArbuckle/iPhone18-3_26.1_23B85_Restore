@interface ParmesanColorAdjustView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (_TtC30NTKParmesanFaceBundleCompanion23ParmesanColorAdjustView)initWithCoder:(id)coder;
- (_TtC30NTKParmesanFaceBundleCompanion23ParmesanColorAdjustView)initWithFrame:(CGRect)frame;
@end

@implementation ParmesanColorAdjustView

- (_TtC30NTKParmesanFaceBundleCompanion23ParmesanColorAdjustView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanColorAdjustView_colorBrightnessAmount) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanColorAdjustView_colorContrastAmount) = 0x3FF0000000000000;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ParmesanColorAdjustView();
  height = [(ParmesanColorAdjustView *)&v9 initWithFrame:x, y, width, height];
  sub_23BFEF52C();

  return height;
}

- (_TtC30NTKParmesanFaceBundleCompanion23ParmesanColorAdjustView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanColorAdjustView_colorBrightnessAmount) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanColorAdjustView_colorContrastAmount) = 0x3FF0000000000000;
  result = sub_23BFFAB00();
  __break(1u);
  return result;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if (key)
  {
    v4 = sub_23BFFA300();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_23BFEF86C(v4, v6);

  return v8 & 1;
}

@end