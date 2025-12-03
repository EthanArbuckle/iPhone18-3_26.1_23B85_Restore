@interface DigitalTimeView
- (BOOL)isHidden;
- (_TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView)initWithCoder:(id)coder;
- (_TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setHidden:(BOOL)hidden;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)timeFormatterTextDidChange:(id)change;
@end

@implementation DigitalTimeView

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DigitalTimeView();
  return [(DigitalTimeView *)&v3 isHidden];
}

- (void)setHidden:(BOOL)hidden
{
  selfCopy = self;
  sub_23BFA88F8(hidden);
}

- (_TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_fontTracking;
  *v3 = 0;
  v3[8] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_tritiumProgress) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_isFrozen) = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeLabelHostingController);
  *v4 = 0;
  v4[1] = 0;
  v5 = self + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView____lazy_storage___timeLabelView;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 6) = 0;
  result = sub_23BFFAB00();
  __break(1u);
  return result;
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v6 = sub_23BF4A264(&qword_27E1E0B80);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  if (date)
  {
    sub_23BFF8D80();
    v12 = sub_23BFF8D90();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v12 = sub_23BFF8D90();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  v13 = *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeFormatter);
  sub_23BF7D960(v11, v9);
  sub_23BFF8D90();
  v14 = *(v12 - 8);
  v15 = (*(v14 + 48))(v9, 1, v12);
  selfCopy = self;
  v17 = 0;
  if (v15 != 1)
  {
    v17 = sub_23BFF8D60();
    (*(v14 + 8))(v9, v12);
  }

  [v13 setOverrideDate_];

  sub_23BF88F64(v11);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_23BFA9790();
}

- (_TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)timeFormatterTextDidChange:(id)change
{
  selfCopy = self;
  sub_23BFA8DB4(v4);
  sub_23BF4A264(&qword_27E1E1F50);
  sub_23BFF9EE0();
  sub_23BF9C60C(v4);
  sub_23BFB43B4(*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeFormatter));
}

@end