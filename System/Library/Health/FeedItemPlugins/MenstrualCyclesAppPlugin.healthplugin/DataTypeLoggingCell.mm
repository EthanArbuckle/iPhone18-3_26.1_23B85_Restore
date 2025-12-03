@interface DataTypeLoggingCell
- (_TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation DataTypeLoggingCell

- (_TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_29E02E330(v4, v5);
}

- (_TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_configuration;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_accessoryImage) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_tintAccessoryColor) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_isChecked) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_editableDaySummarySection) = 7;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

@end