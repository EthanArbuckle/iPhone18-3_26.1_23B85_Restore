@interface IMBTimeslotView
- (_TtC8Business15IMBTimeslotView)initWithCoder:(id)coder;
- (_TtC8Business15IMBTimeslotView)initWithFrame:(CGRect)frame;
- (void)timeViewTappedWithGestureRecognizer:(id)recognizer;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation IMBTimeslotView

- (_TtC8Business15IMBTimeslotView)initWithCoder:(id)coder
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10007A954();
}

- (void)timeViewTappedWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_10007AA2C();
}

- (_TtC8Business15IMBTimeslotView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end