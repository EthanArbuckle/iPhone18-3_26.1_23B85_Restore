@interface DigitalTimeView
- (BOOL)isHidden;
- (_TtC20NTKWarlockFaceBundle15DigitalTimeView)initWithCoder:(id)coder;
- (_TtC20NTKWarlockFaceBundle15DigitalTimeView)initWithFrame:(CGRect)frame;
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
  sub_2A47C(hidden);
}

- (_TtC20NTKWarlockFaceBundle15DigitalTimeView)initWithCoder:(id)coder
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

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v6 = sub_815C(qword_59170);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  if (date)
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
  selfCopy = self;
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
  selfCopy = self;
  sub_2B328();
}

- (_TtC20NTKWarlockFaceBundle15DigitalTimeView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)timeFormatterTextDidChange:(id)change
{
  selfCopy = self;
  sub_2A938(v4);
  sub_815C(&qword_59CD8);
  sub_37280();
  sub_16B38(v4);
  sub_22C2C(*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter));
}

@end