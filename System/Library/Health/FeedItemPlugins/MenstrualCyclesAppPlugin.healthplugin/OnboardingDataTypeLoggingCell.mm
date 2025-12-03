@interface OnboardingDataTypeLoggingCell
- (_TtC24MenstrualCyclesAppPlugin29OnboardingDataTypeLoggingCell)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPlugin29OnboardingDataTypeLoggingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation OnboardingDataTypeLoggingCell

- (_TtC24MenstrualCyclesAppPlugin29OnboardingDataTypeLoggingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v6 = sub_29E2C33A4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for OnboardingDataTypeLoggingCell();
  v7 = [(DataTypeLoggingCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC24MenstrualCyclesAppPlugin29OnboardingDataTypeLoggingCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for OnboardingDataTypeLoggingCell();
  coderCopy = coder;
  v5 = [(DataTypeLoggingCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end