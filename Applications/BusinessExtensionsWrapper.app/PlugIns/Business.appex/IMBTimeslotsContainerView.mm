@interface IMBTimeslotsContainerView
- (NSArray)timeslotViews;
- (_TtC8Business25IMBTimeslotsContainerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setTimeslotViews:(id)views;
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

- (void)setTimeslotViews:(id)views
{
  viewsCopy = views;
  if (views)
  {
    type metadata accessor for IMBTimeslotView();
    viewsCopy = sub_1000AC19C();
  }

  v5 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViews;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = viewsCopy;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100070C60();
}

- (_TtC8Business25IMBTimeslotsContainerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end