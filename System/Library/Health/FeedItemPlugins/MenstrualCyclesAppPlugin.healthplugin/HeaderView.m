@interface HeaderView
- (_TtC24MenstrualCyclesAppPluginP33_DC9BCD437CC527D7196E44AD97FF4AE010HeaderView)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPluginP33_DC9BCD437CC527D7196E44AD97FF4AE010HeaderView)initWithReuseIdentifier:(id)a3;
@end

@implementation HeaderView

- (_TtC24MenstrualCyclesAppPluginP33_DC9BCD437CC527D7196E44AD97FF4AE010HeaderView)initWithReuseIdentifier:(id)a3
{
  if (a3)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_DC9BCD437CC527D7196E44AD97FF4AE010HeaderView_label;
  *(&self->super.super.super.super.isa + v6) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  if (v5)
  {
    v7 = sub_29E2C33A4();
  }

  else
  {
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for HeaderView();
  v8 = [(HeaderView *)&v11 initWithReuseIdentifier:v7];

  v9 = v8;
  sub_29DF1E6F0();

  return v9;
}

- (_TtC24MenstrualCyclesAppPluginP33_DC9BCD437CC527D7196E44AD97FF4AE010HeaderView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_DC9BCD437CC527D7196E44AD97FF4AE010HeaderView_label;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

@end