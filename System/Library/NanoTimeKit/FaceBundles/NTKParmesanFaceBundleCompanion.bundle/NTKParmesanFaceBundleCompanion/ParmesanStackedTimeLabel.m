@interface ParmesanStackedTimeLabel
- (_TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation ParmesanStackedTimeLabel

- (_TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel_timeRect;
  *v3 = 0;
  *(v3 + 1) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v3 + 1) = _Q0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel_currentFontAttributes) = MEMORY[0x277D84F98];
  result = sub_23BFFAB00();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_23BFF2670();
}

@end