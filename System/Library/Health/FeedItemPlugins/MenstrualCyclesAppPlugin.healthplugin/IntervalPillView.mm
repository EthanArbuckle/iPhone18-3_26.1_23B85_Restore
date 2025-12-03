@interface IntervalPillView
- (_TtC24MenstrualCyclesAppPlugin16IntervalPillView)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPlugin16IntervalPillView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation IntervalPillView

- (_TtC24MenstrualCyclesAppPlugin16IntervalPillView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16IntervalPillView_maxDays) = 60;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16IntervalPillView____lazy_storage___dateComponentLabel) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for IntervalPillView(0);
  v2 = v6.receiver;
  [(IntervalPillView *)&v6 layoutSubviews];
  [v2 frame];
  CGRectGetHeight(v7);
  HKUIFloorToScreenScale();
  v4 = v3;
  layer = [v2 layer];
  [layer setCornerRadius_];
}

- (_TtC24MenstrualCyclesAppPlugin16IntervalPillView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end