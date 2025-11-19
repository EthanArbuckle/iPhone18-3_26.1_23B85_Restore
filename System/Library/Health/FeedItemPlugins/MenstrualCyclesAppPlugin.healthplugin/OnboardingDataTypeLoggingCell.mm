@interface OnboardingDataTypeLoggingCell
- (_TtC24MenstrualCyclesAppPlugin29OnboardingDataTypeLoggingCell)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin29OnboardingDataTypeLoggingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation OnboardingDataTypeLoggingCell

- (_TtC24MenstrualCyclesAppPlugin29OnboardingDataTypeLoggingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
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
  v7 = [(DataTypeLoggingCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (_TtC24MenstrualCyclesAppPlugin29OnboardingDataTypeLoggingCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for OnboardingDataTypeLoggingCell();
  v4 = a3;
  v5 = [(DataTypeLoggingCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end