@interface CycleHistoryYearSectionHeader
- (_TtC24MenstrualCyclesAppPlugin29CycleHistoryYearSectionHeader)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin29CycleHistoryYearSectionHeader)initWithReuseIdentifier:(id)a3;
@end

@implementation CycleHistoryYearSectionHeader

- (_TtC24MenstrualCyclesAppPlugin29CycleHistoryYearSectionHeader)initWithReuseIdentifier:(id)a3
{
  if (a3)
  {
    v3 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_29DEB7120(v3, v4);
}

- (_TtC24MenstrualCyclesAppPlugin29CycleHistoryYearSectionHeader)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29CycleHistoryYearSectionHeader_yearLabel;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29CycleHistoryYearSectionHeader_headerSeparator;
  *(&self->super.super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x29EDC4820]) initWithFrame_];
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

@end