@interface InteractiveTimelineDateIndicator
- (_TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator)initWithFrame:(CGRect)frame;
- (void)respondToTraitChanges;
- (void)significantTimeChange;
@end

@implementation InteractiveTimelineDateIndicator

- (_TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_alwaysFormatForCurrentYear) = 0;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_dateLabel;
  sub_29DE9408C(0, &qword_2A1820010);
  *(&self->super.super.super.isa + v4) = sub_29E230AF4();
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_cachedStartOfCurrentYear;
  v6 = sub_29E2BCBB4();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_previousYearsFormatter) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_currentYearFormatter) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)significantTimeChange
{
  selfCopy = self;
  sub_29E231050();
}

- (void)respondToTraitChanges
{
  selfCopy = self;
  sub_29E2308AC();
  sub_29E23059C();
}

- (_TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end