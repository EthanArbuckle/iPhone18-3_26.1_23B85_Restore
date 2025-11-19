@interface NewFactorTypeTableViewCell
- (_TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation NewFactorTypeTableViewCell

- (_TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_29E02FCFC(a3, a4, v6);
}

- (_TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell_titleLabel;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell_isChecked) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

@end