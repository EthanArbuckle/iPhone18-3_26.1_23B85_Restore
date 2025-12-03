@interface StatisticsViewAllHeaderView
- (_TtC24MenstrualCyclesAppPlugin27StatisticsViewAllHeaderView)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPlugin27StatisticsViewAllHeaderView)initWithReuseIdentifier:(id)identifier;
@end

@implementation StatisticsViewAllHeaderView

- (_TtC24MenstrualCyclesAppPlugin27StatisticsViewAllHeaderView)initWithReuseIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_29E1AD498(v3, v4);
}

- (_TtC24MenstrualCyclesAppPlugin27StatisticsViewAllHeaderView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27StatisticsViewAllHeaderView_headerLabel;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27StatisticsViewAllHeaderView_headerSeparator;
  *(&self->super.super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x29EDC4820]) initWithFrame_];
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27StatisticsViewAllHeaderView_headerLabelText);
  *v6 = 0;
  v6[1] = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

@end