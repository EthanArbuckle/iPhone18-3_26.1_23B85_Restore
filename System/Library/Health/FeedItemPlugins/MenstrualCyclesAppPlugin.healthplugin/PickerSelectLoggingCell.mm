@interface PickerSelectLoggingCell
- (_TtC24MenstrualCyclesAppPlugin23PickerSelectLoggingCell)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPlugin23PickerSelectLoggingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation PickerSelectLoggingCell

- (_TtC24MenstrualCyclesAppPlugin23PickerSelectLoggingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return sub_29E242E70(v4, v5);
}

- (_TtC24MenstrualCyclesAppPlugin23PickerSelectLoggingCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23PickerSelectLoggingCell_picker;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x29EDC7BC0]) init];
  v5 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23PickerSelectLoggingCell_configuration;
  *(v5 + 12) = 0;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

@end