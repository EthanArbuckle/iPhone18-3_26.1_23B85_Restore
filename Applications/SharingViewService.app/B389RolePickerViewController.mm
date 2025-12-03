@interface B389RolePickerViewController
- (UIPickerView)rolePickerView;
- (_TtC18SharingViewService28B389RolePickerViewController)initWithCoder:(id)coder;
- (_TtC18SharingViewService28B389RolePickerViewController)initWithMainController:(id)controller;
- (_TtC18SharingViewService28B389RolePickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)pickerView:rowHeightForComponent:;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)continuePressed:(id)pressed;
- (void)dismissPressed:(id)pressed;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation B389RolePickerViewController

- (UIPickerView)rolePickerView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000A27B0(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v4.receiver = self;
  v4.super_class = type metadata accessor for B389RolePickerViewController();
  [(B389RolePickerViewController *)&v4 viewDidDisappear:disappearCopy];
}

- (void)dismissPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_1000A3D20();
}

- (void)continuePressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_1000A3E6C();
}

- (_TtC18SharingViewService28B389RolePickerViewController)initWithMainController:(id)controller
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC18SharingViewService28B389RolePickerViewController_rolesLoaded) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for B389RolePickerViewController();
  return [(SVSBaseViewController *)&v6 initWithMainController:controller];
}

- (_TtC18SharingViewService28B389RolePickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectWeakInit();
    *(self + OBJC_IVAR____TtC18SharingViewService28B389RolePickerViewController_rolesLoaded) = 0;
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    swift_unknownObjectWeakInit();
    *(self + OBJC_IVAR____TtC18SharingViewService28B389RolePickerViewController_rolesLoaded) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for B389RolePickerViewController();
  v9 = [(B389RolePickerViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC18SharingViewService28B389RolePickerViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC18SharingViewService28B389RolePickerViewController_rolesLoaded) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for B389RolePickerViewController();
  coderCopy = coder;
  v6 = [(B389RolePickerViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  v7 = sub_1000A3FD0();

  return v7;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  sub_1000A4094(row);
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