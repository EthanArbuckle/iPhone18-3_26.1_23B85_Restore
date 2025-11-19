@interface DigitalTimeView
- (BOOL)isHidden;
- (_TtC20NTKWarlockFaceBundle15DigitalTimeView)initWithCoder:(id)a3;
- (_TtC20NTKWarlockFaceBundle15DigitalTimeView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setHidden:(BOOL)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)timeFormatterTextDidChange:(id)a3;
@end

@implementation DigitalTimeView

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DigitalTimeView();
  return [(DigitalTimeView *)&v3 isHidden];
}

- (void)setHidden:(BOOL)a3
{
  v4 = self;
  sub_2A47C(a3);
}

- (_TtC20NTKWarlockFaceBundle15DigitalTimeView)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_fontTracking;
  *v3 = 0;
  v3[8] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_tritiumProgress) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_isFrozen) = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeLabelHostingController);
  *v4 = 0;
  v4[1] = 0;
  v5 = self + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 6) = 0;
  result = sub_37A30();
  __break(1u);
  return result;
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v6 = sub_815C(qword_59170);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  if (a3)
  {
    sub_36CA0();
    v12 = sub_36CB0();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v12 = sub_36CB0();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  v13 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter);
  sub_2B9E4(v11, v8);
  sub_36CB0();
  v14 = *(v12 - 8);
  v15 = (*(v14 + 48))(v8, 1, v12);
  v16 = self;
  isa = 0;
  if (v15 != 1)
  {
    isa = sub_36C90().super.isa;
    (*(v14 + 8))(v8, v12);
  }

  [v13 setOverrideDate:isa];

  sub_2BA54(v11);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_2B328();
}

- (_TtC20NTKWarlockFaceBundle15DigitalTimeView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)timeFormatterTextDidChange:(id)a3
{
  v3 = self;
  sub_2A938(v4);
  sub_815C(&qword_59CD8);
  sub_37280();
  sub_16B38(v4);
  sub_22C2C(*(&v3->super.super.super.isa + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter));
}

@end