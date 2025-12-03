@interface WarlockMiniClockView
- (CLKUITimeViewConfiguration)configuration;
- (NSDate)overrideDate;
- (_TtC20NTKWarlockFaceBundle20WarlockMiniClockView)initWithCoder:(id)coder;
- (_TtC20NTKWarlockFaceBundle20WarlockMiniClockView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setConfiguration:(id)configuration;
- (void)setOverrideDate:(id)date;
- (void)timeFormatterTextDidChange:(id)change;
@end

@implementation WarlockMiniClockView

- (_TtC20NTKWarlockFaceBundle20WarlockMiniClockView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *&self->CLKUITimeView_opaque[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView_digitalTimeView] = 0;
  v8 = &self->CLKUITimeView_opaque[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView____lazy_storage___metrics];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 5) = 0u;
  *(v8 + 12) = 0;
  v9 = &self->CLKUITimeView_opaque[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView_timeRect];
  *v9 = sub_16CD4();
  *(v9 + 1) = v10;
  *(v9 + 2) = v11;
  *(v9 + 3) = v12;
  *&self->CLKUITimeView_opaque[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView____lazy_storage___fontLoader] = 0;
  v14.receiver = self;
  v14.super_class = type metadata accessor for WarlockMiniClockView();
  return [(WarlockMiniClockView *)&v14 initWithFrame:x, y, width, height];
}

- (_TtC20NTKWarlockFaceBundle20WarlockMiniClockView)initWithCoder:(id)coder
{
  *&self->CLKUITimeView_opaque[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView_digitalTimeView] = 0;
  v4 = &self->CLKUITimeView_opaque[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView____lazy_storage___metrics];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 12) = 0;
  v5 = &self->CLKUITimeView_opaque[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView_timeRect];
  *v5 = sub_16CD4();
  *(v5 + 1) = v6;
  *(v5 + 2) = v7;
  *(v5 + 3) = v8;
  *&self->CLKUITimeView_opaque[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView____lazy_storage___fontLoader] = 0;
  result = sub_37A30();
  __break(1u);
  return result;
}

- (void)dealloc
{
  v3 = *&self->CLKUITimeView_opaque[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView_digitalTimeView];
  if (v3)
  {
    [*(v3 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter) removeObserver:self];
  }

  else
  {
    selfCopy = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for WarlockMiniClockView();
  [(WarlockMiniClockView *)&v5 dealloc];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for WarlockMiniClockView();
  v2 = v5.receiver;
  [(WarlockMiniClockView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView_digitalTimeView];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame:?];
  }
}

- (CLKUITimeViewConfiguration)configuration
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for WarlockMiniClockView();
  configuration = [(WarlockMiniClockView *)&v4 configuration];

  return configuration;
}

- (void)setConfiguration:(id)configuration
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for WarlockMiniClockView();
  configurationCopy = configuration;
  v5 = v6.receiver;
  [(WarlockMiniClockView *)&v6 setConfiguration:configurationCopy];
  sub_15FA8();
}

- (NSDate)overrideDate
{
  v3 = sub_815C(qword_59170);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v9 = type metadata accessor for WarlockMiniClockView();
  v20.receiver = self;
  v20.super_class = v9;
  selfCopy = self;
  overrideDate = [(WarlockMiniClockView *)&v20 overrideDate];
  if (overrideDate)
  {
    v12 = overrideDate;
    sub_36CA0();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = sub_36CB0();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v6, v13, 1, v14);
  sub_16C64(v6, v8);
  v16 = (*(v15 + 48))(v8, 1, v14);
  v17 = 0;
  if (v16 != 1)
  {
    isa = sub_36C90().super.isa;
    (*(v15 + 8))(v8, v14);
    v17 = isa;
  }

  return v17;
}

- (void)setOverrideDate:(id)date
{
  v5 = sub_815C(qword_59170);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  if (date)
  {
    sub_36CA0();
    v11 = sub_36CB0();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v11 = sub_36CB0();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  sub_16B9C(v10, v8, qword_59170);
  sub_36CB0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v8, 1, v11);
  selfCopy = self;
  isa = 0;
  if (v13 != 1)
  {
    isa = sub_36C90().super.isa;
    (*(v12 + 8))(v8, v11);
  }

  v16 = type metadata accessor for WarlockMiniClockView();
  v17.receiver = selfCopy;
  v17.super_class = v16;
  [(WarlockMiniClockView *)&v17 setOverrideDate:isa];

  sub_16800();
  sub_16C04(v10, qword_59170);
}

- (void)timeFormatterTextDidChange:(id)change
{
  selfCopy = self;
  sub_15FA8();
}

@end