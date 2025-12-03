@interface ParmesanMiniClockDigitalTimeView
- (_TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView)initWithCoder:(id)coder;
- (_TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ParmesanMiniClockDigitalTimeView

- (_TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_overrideDate;
  v5 = sub_23BFF8D90();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_state) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_tritiumProgress) = 0;
  result = sub_23BFFAB00();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(ParmesanMiniClockDigitalTimeView *)&v4 layoutSubviews];
  sub_23BFF1110();
  v3 = *&v2[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_digitalTimeView];
  [v2 bounds];
  [v3 setFrame_];
}

- (_TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end