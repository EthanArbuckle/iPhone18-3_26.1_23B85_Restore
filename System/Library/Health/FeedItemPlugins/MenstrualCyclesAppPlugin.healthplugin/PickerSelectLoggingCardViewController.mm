@interface PickerSelectLoggingCardViewController
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PickerSelectLoggingCardViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29E1B6D80();
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  viewCopy = view;
  selfCopy = self;
  sub_29E1B6FA8(viewCopy);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  viewCopy = view;
  selfCopy = self;
  sub_29E1B7684(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v7 = sub_29E2BCFB4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  cellCopy = cell;
  selfCopy = self;
  [cellCopy _setShouldHaveFullLengthBottomSeparator_];
  v13 = sub_29E1B6D04();
  v14 = *&v13[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23PickerSelectLoggingCell_picker];

  if (*(&selfCopy->super.super.super._responderFlags + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController_pickedIndex))
  {
    __break(1u);
  }

  else
  {
    [v14 selectRow:*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController_pickedIndex) inComponent:0 animated:0];

    (*(v8 + 8))(v10, v7);
  }
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    selfCopy = self;
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

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  sub_29E1B7CA0(row);
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

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  sub_29E1B7F10(row);
}

@end