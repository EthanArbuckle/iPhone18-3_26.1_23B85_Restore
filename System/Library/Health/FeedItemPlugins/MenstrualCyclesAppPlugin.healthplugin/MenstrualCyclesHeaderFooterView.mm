@interface MenstrualCyclesHeaderFooterView
- (_TtC24MenstrualCyclesAppPlugin31MenstrualCyclesHeaderFooterView)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPlugin31MenstrualCyclesHeaderFooterView)initWithReuseIdentifier:(id)identifier;
@end

@implementation MenstrualCyclesHeaderFooterView

- (_TtC24MenstrualCyclesAppPlugin31MenstrualCyclesHeaderFooterView)initWithReuseIdentifier:(id)identifier
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

  return sub_29DFD5048(v3, v4);
}

- (_TtC24MenstrualCyclesAppPlugin31MenstrualCyclesHeaderFooterView)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31MenstrualCyclesHeaderFooterView_configuration;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31MenstrualCyclesHeaderFooterView_label;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

@end