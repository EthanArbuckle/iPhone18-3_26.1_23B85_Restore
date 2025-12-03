@interface InteractiveTimelineLegendLabel
- (_TtC24MenstrualCyclesAppPlugin30InteractiveTimelineLegendLabel)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPlugin30InteractiveTimelineLegendLabel)initWithFrame:(CGRect)frame;
@end

@implementation InteractiveTimelineLegendLabel

- (_TtC24MenstrualCyclesAppPlugin30InteractiveTimelineLegendLabel)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin30InteractiveTimelineLegendLabel_textLabel;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin30InteractiveTimelineLegendLabel_spacerLabel;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin30InteractiveTimelineLegendLabel_cycleDay;
  v7 = type metadata accessor for CycleDay();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin30InteractiveTimelineLegendLabel)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end