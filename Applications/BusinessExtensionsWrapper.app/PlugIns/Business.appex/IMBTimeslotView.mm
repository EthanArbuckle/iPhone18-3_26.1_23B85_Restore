@interface IMBTimeslotView
- (_TtC8Business15IMBTimeslotView)initWithCoder:(id)a3;
- (_TtC8Business15IMBTimeslotView)initWithFrame:(CGRect)a3;
- (void)timeViewTappedWithGestureRecognizer:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation IMBTimeslotView

- (_TtC8Business15IMBTimeslotView)initWithCoder:(id)a3
{
  *&self->timeslot[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeSelectionDelegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business15IMBTimeslotView_widthLayoutConstraint) = 0;
  v4 = OBJC_IVAR____TtC8Business15IMBTimeslotView_timeLabel;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UILabel) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected) = 0;
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10007A954();
}

- (void)timeViewTappedWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10007AA2C();
}

- (_TtC8Business15IMBTimeslotView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end