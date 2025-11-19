@interface B389RolePickerViewController
- (UIPickerView)rolePickerView;
- (_TtC18SharingViewService28B389RolePickerViewController)initWithCoder:(id)a3;
- (_TtC18SharingViewService28B389RolePickerViewController)initWithMainController:(id)a3;
- (_TtC18SharingViewService28B389RolePickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)pickerView:rowHeightForComponent:;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)continuePressed:(id)a3;
- (void)dismissPressed:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation B389RolePickerViewController

- (UIPickerView)rolePickerView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1000A27B0(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for B389RolePickerViewController();
  [(B389RolePickerViewController *)&v4 viewDidDisappear:v3];
}

- (void)dismissPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000A3D20();
}

- (void)continuePressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000A3E6C();
}

- (_TtC18SharingViewService28B389RolePickerViewController)initWithMainController:(id)a3
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC18SharingViewService28B389RolePickerViewController_rolesLoaded) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for B389RolePickerViewController();
  return [(SVSBaseViewController *)&v6 initWithMainController:a3];
}

- (_TtC18SharingViewService28B389RolePickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectWeakInit();
    *(self + OBJC_IVAR____TtC18SharingViewService28B389RolePickerViewController_rolesLoaded) = 0;
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    swift_unknownObjectWeakInit();
    *(self + OBJC_IVAR____TtC18SharingViewService28B389RolePickerViewController_rolesLoaded) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for B389RolePickerViewController();
  v9 = [(B389RolePickerViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC18SharingViewService28B389RolePickerViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC18SharingViewService28B389RolePickerViewController_rolesLoaded) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for B389RolePickerViewController();
  v5 = a3;
  v6 = [(B389RolePickerViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1000A3FD0();

  return v7;
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v7 = a3;
  v8 = self;
  sub_1000A4094(a4);
  v10 = v9;

  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (double)pickerView:rowHeightForComponent:
{
  v0 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v0 pointSize];
  v2 = v1 + 11.0;

  return v2;
}

@end