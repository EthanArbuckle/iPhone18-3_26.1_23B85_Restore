@interface DatePickerTableViewCell
- (_TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)datePickerChangedWithPicker:(id)a3;
- (void)prepareForReuse;
@end

@implementation DatePickerTableViewCell

- (_TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    v4 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return sub_29DEF91FC(v4, v5);
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(DatePickerTableViewCell *)&v6 prepareForReuse];
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker;
  [*&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker] removeFromSuperview];
  v4 = [objc_allocWithZone(MEMORY[0x29EDC7A48]) init];
  v5 = *&v2[v3];
  *&v2[v3] = v4;

  sub_29DEF8AA0();
}

- (_TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker;
  *(&self->super.super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x29EDC7A48]) init];
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_delegate) = 0;
  swift_unknownObjectWeakInit();
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_selectedItemUniqueIdentifier);
  *v6 = 0;
  v6[1] = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)datePickerChangedWithPicker:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29DEF9304();
}

@end