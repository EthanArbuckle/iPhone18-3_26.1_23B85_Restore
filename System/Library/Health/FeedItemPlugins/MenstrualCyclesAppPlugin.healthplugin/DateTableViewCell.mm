@interface DateTableViewCell
- (_TtC24MenstrualCyclesAppPlugin17DateTableViewCell)init;
- (_TtC24MenstrualCyclesAppPlugin17DateTableViewCell)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPlugin17DateTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation DateTableViewCell

- (_TtC24MenstrualCyclesAppPlugin17DateTableViewCell)init
{
  ObjectType = swift_getObjectType();
  (*(ObjectType + 80))();
  v4 = sub_29E2C33A4();

  v5 = [(DateTableViewCell *)self initWithStyle:1 reuseIdentifier:v4];

  return v5;
}

- (_TtC24MenstrualCyclesAppPlugin17DateTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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
  v9.super_class = type metadata accessor for DateTableViewCell();
  v7 = [(DateTableViewCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  [(DateTableViewCell *)v7 setSelectionStyle:0];
  return v7;
}

- (_TtC24MenstrualCyclesAppPlugin17DateTableViewCell)initWithCoder:(id)coder
{
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

@end