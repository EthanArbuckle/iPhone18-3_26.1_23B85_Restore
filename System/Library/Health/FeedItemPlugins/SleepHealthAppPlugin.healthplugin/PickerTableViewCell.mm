@interface PickerTableViewCell
- (_TtC20SleepHealthAppPlugin19PickerTableViewCell)initWithCoder:(id)a3;
- (_TtC20SleepHealthAppPlugin19PickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)numberOfComponentsInPickerView:(id)a3;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
@end

@implementation PickerTableViewCell

- (_TtC20SleepHealthAppPlugin19PickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    v5 = sub_29E7541D8();
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = sub_29E73FF40(v5, v6);

  return v7;
}

- (_TtC20SleepHealthAppPlugin19PickerTableViewCell)initWithCoder:(id)a3
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = OBJC_IVAR____TtC20SleepHealthAppPlugin19PickerTableViewCell_picker;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x29EDC7BC0]) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin19PickerTableViewCell_pickerData) = MEMORY[0x29EDCA190];
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC20SleepHealthAppPlugin19PickerTableViewCell_delegate) = 0;
  swift_unknownObjectWeakInit();
  result = sub_29E754E48();
  __break(1u);
  return result;
}

- (int64_t)numberOfComponentsInPickerView:(id)a3
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin19PickerTableViewCell_pickerData))[2];

  return v5;
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E740024(a4);
  if (v6)
  {
    v7 = sub_29E754198();
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = self + OBJC_IVAR____TtC20SleepHealthAppPlugin19PickerTableViewCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    swift_getObjectType();
    v8 = *(v7 + 8);
    v9 = self;
    v8();

    sub_29E751758();
  }

  else
  {
  }
}

@end