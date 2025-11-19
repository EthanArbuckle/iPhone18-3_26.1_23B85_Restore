@interface IMBTimeslotsContainerView
- (NSArray)timeslotViews;
- (_TtC8Business25IMBTimeslotsContainerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setTimeslotViews:(id)a3;
@end

@implementation IMBTimeslotsContainerView

- (NSArray)timeslotViews
{
  v3 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViews;
  swift_beginAccess();
  if (*(self + v3))
  {
    type metadata accessor for IMBTimeslotView();

    v4.super.isa = sub_1000AC18C().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setTimeslotViews:(id)a3
{
  v3 = a3;
  if (a3)
  {
    type metadata accessor for IMBTimeslotView();
    v3 = sub_1000AC19C();
  }

  v5 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViews;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v3;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100070C60();
}

- (_TtC8Business25IMBTimeslotsContainerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end