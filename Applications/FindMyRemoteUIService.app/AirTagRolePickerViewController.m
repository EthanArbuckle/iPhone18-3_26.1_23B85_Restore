@interface AirTagRolePickerViewController
- (_TtC21FindMyRemoteUIService30AirTagRolePickerViewController)initWithContentView:(id)a3;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
@end

@implementation AirTagRolePickerViewController

- (_TtC21FindMyRemoteUIService30AirTagRolePickerViewController)initWithContentView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v5 = *&self->PRXPickerContentViewController_opaque[OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagRolePickerViewController_viewModel];
  v6 = sub_100006DB8();
  v7 = *(v6 + 24);
  v8 = type metadata accessor for AirTagRolePickerViewModel();
  v9 = self;
  v10 = v7(v8, v6);

  v11 = *(v10 + 16);

  return v11;
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v7 = *&self->PRXPickerContentViewController_opaque[OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagRolePickerViewController_viewModel];
  v8 = sub_100006DB8();
  v9 = *(v8 + 24);
  v10 = type metadata accessor for AirTagRolePickerViewModel();
  v11 = self;
  result = v9(v10, v8);
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(result + 2) <= a4)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v13 = result + 16 * a4;
  v14 = *(v13 + 4);
  v15 = *(v13 + 5);

  v16 = String._bridgeToObjectiveC()();

  return v16;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v7 = *&self->PRXPickerContentViewController_opaque[OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagRolePickerViewController_viewModel];
  v8 = sub_100006DB8();
  v9 = *(v8 + 48);
  v10 = type metadata accessor for AirTagRolePickerViewModel();
  v11 = self;
  v9(a4, v10, v8);
}

@end