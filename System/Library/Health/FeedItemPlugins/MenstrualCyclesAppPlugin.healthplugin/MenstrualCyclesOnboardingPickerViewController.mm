@interface MenstrualCyclesOnboardingPickerViewController
- (_TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)cancelButtonTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation MenstrualCyclesOnboardingPickerViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_29E1C7B48();
}

- (void)cancelButtonTapped:(id)a3
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = a3;
  v8 = self;

  v7 = sub_29DE9ABAC(a3, sub_29E1C8D54, v5);

  [(MenstrualCyclesOnboardingPickerViewController *)v8 presentViewController:v7 animated:1 completion:0];
}

- (_TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
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

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v7 = a3;
  v8 = self;
  sub_29E1C8C84(a4);
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