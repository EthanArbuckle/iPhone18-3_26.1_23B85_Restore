@interface PickerSelectLoggingCardViewController
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation PickerSelectLoggingCardViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_29E1B6D80();
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v10 = a3;
  v11 = self;
  sub_29E1B6FA8(v10);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v10 = a3;
  v11 = self;
  sub_29E1B7684(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = sub_29E2BCFB4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v11 = a4;
  v12 = self;
  [v11 _setShouldHaveFullLengthBottomSeparator_];
  v13 = sub_29E1B6D04();
  v14 = *&v13[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23PickerSelectLoggingCell_picker];

  if (*(&v12->super.super.super._responderFlags + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController_pickedIndex))
  {
    __break(1u);
  }

  else
  {
    [v14 selectRow:*(&v12->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController_pickedIndex) inComponent:0 animated:0];

    (*(v8 + 8))(v10, v7);
  }
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = self;
    v7 = sub_29E20A410();
    swift_unknownObjectRelease();

    v8 = *(v7 + 16);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v7 = a3;
  v8 = self;
  sub_29E1B7CA0(a4);
  v10 = v9;

  if (v10)
  {
    v11 = sub_29E2C33A4();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v7 = a3;
  v8 = self;
  sub_29E1B7F10(a4);
}

@end