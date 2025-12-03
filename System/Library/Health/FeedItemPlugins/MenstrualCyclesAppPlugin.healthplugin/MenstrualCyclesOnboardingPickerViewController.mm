@interface MenstrualCyclesOnboardingPickerViewController
- (_TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)cancelButtonTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation MenstrualCyclesOnboardingPickerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29E1C7B48();
}

- (void)cancelButtonTapped:(id)tapped
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  tappedCopy = tapped;
  selfCopy = self;

  v7 = sub_29DE9ABAC(tapped, sub_29E1C8D54, v5);

  [(MenstrualCyclesOnboardingPickerViewController *)selfCopy presentViewController:v7 animated:1 completion:0];
}

- (_TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  if (*(self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_pickerType + 16))
  {
    return 0;
  }

  v4 = *(self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_pickerType);
  v5 = *(self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_pickerType + 8);
  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  self = v7 + 1;
  if (__OFADD__(v7, 1))
  {
LABEL_7:
    __break(1u);
  }

  return self;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  sub_29E1C8C84(row);
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

@end