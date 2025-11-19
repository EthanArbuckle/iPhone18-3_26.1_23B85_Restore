@interface NTKParmesanMiniClockView
- (CLKUITimeViewConfiguration)configuration;
- (NSDate)overrideDate;
- (NTKParmesanMiniClockView)initWithCoder:(id)a3;
- (NTKParmesanMiniClockView)initWithDevice:(id)a3 clockTimer:(id)a4;
- (NTKParmesanMiniClockView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)paddingInsets;
- (unint64_t)state;
- (void)layoutSubviews;
- (void)setConfiguration:(id)a3;
- (void)setOverrideDate:(id)a3;
- (void)setPaddingInsets:(UIEdgeInsets)a3;
- (void)setState:(unint64_t)a3;
@end

@implementation NTKParmesanMiniClockView

- (NTKParmesanMiniClockView)initWithDevice:(id)a3 clockTimer:(id)a4
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___NTKParmesanMiniClockView_digitalTimeView) = 0;
  v6 = a3;
  v7 = a4;
  sub_23BFA3B2C(v6, v16);
  v8 = self + OBJC_IVAR___NTKParmesanMiniClockView_layoutConstants;
  v9 = v16[7];
  *(v8 + 6) = v16[6];
  *(v8 + 7) = v9;
  *(v8 + 16) = v17;
  v10 = v16[3];
  *(v8 + 2) = v16[2];
  *(v8 + 3) = v10;
  v11 = v16[5];
  *(v8 + 4) = v16[4];
  *(v8 + 5) = v11;
  v12 = v16[1];
  *v8 = v16[0];
  *(v8 + 1) = v12;
  v15.receiver = self;
  v15.super_class = type metadata accessor for ParmesanMiniClockView();
  v13 = [(CLKUITimeView *)&v15 initWithDevice:v6 clockTimer:v7];

  return v13;
}

- (NTKParmesanMiniClockView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___NTKParmesanMiniClockView_digitalTimeView) = 0;
  result = sub_23BFFAB00();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ParmesanMiniClockView();
  v2 = v5.receiver;
  [(NTKParmesanMiniClockView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR___NTKParmesanMiniClockView_digitalTimeView];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame_];
  }
}

- (CLKUITimeViewConfiguration)configuration
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ParmesanMiniClockView();
  v2 = [(CLKUITimeView *)&v4 configuration];

  return v2;
}

- (void)setConfiguration:(id)a3
{
  v5 = type metadata accessor for ParmesanMiniClockView();
  v10.receiver = self;
  v10.super_class = v5;
  v6 = a3;
  v7 = self;
  v8 = [(CLKUITimeView *)&v10 configuration];
  v9.receiver = v7;
  v9.super_class = v5;
  [(CLKUITimeView *)&v9 setConfiguration:v6];
  sub_23BF8903C();
}

- (NSDate)overrideDate
{
  v3 = sub_23BF4A264(&qword_27E1E0B80);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ParmesanMiniClockView();
  v20.receiver = self;
  v20.super_class = v9;
  v10 = self;
  v11 = [(CLKUITimeView *)&v20 overrideDate];
  if (v11)
  {
    v12 = v11;
    sub_23BFF8D80();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = sub_23BFF8D90();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v6, v13, 1, v14);
  sub_23BF88FCC(v6, v8);
  v16 = (*(v15 + 48))(v8, 1, v14);
  v17 = 0;
  if (v16 != 1)
  {
    v18 = sub_23BFF8D60();
    (*(v15 + 8))(v8, v14);
    v17 = v18;
  }

  return v17;
}

- (void)setOverrideDate:(id)a3
{
  v5 = sub_23BF4A264(&qword_27E1E0B80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  if (a3)
  {
    sub_23BFF8D80();
    v8 = sub_23BFF8D90();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_23BFF8D90();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = self;
  sub_23BF885B0(v7);
}

- (UIEdgeInsets)paddingInsets
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ParmesanMiniClockView();
  [(CLKUITimeView *)&v6 paddingInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setPaddingInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v15.receiver = self;
  v15.super_class = type metadata accessor for ParmesanMiniClockView();
  v7 = v15.receiver;
  [(CLKUITimeView *)&v15 setPaddingInsets:top, left, bottom, right];
  v8 = *&v7[OBJC_IVAR___NTKParmesanMiniClockView_digitalTimeView];
  if (v8)
  {
    v9 = v8;
    [v7 paddingInsets];
    v10 = &v9[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_paddingInsets];
    *v10 = v11;
    *(v10 + 1) = v12;
    *(v10 + 2) = v13;
    *(v10 + 3) = v14;
    sub_23BFF1110();

    v7 = v9;
  }
}

- (unint64_t)state
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ParmesanMiniClockView();
  return [(CLKUITimeView *)&v3 state];
}

- (void)setState:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ParmesanMiniClockView();
  v4 = v7.receiver;
  [(CLKUITimeView *)&v7 setState:a3];
  v5 = *&v4[OBJC_IVAR___NTKParmesanMiniClockView_digitalTimeView];
  if (v5)
  {
    v6 = v5;
    sub_23BFF07E4([v4 state]);
  }
}

- (NTKParmesanMiniClockView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end