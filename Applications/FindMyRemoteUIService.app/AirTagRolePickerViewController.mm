@interface AirTagRolePickerViewController
- (_TtC21FindMyRemoteUIService30AirTagRolePickerViewController)initWithContentView:(id)view;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
@end

@implementation AirTagRolePickerViewController

- (_TtC21FindMyRemoteUIService30AirTagRolePickerViewController)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v5 = *&self->PRXPickerContentViewController_opaque[OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagRolePickerViewController_viewModel];
  v6 = sub_100006DB8();
  v7 = *(v6 + 24);
  v8 = type metadata accessor for AirTagRolePickerViewModel();
  selfCopy = self;
  v10 = v7(v8, v6);

  v11 = *(v10 + 16);

  return v11;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  v7 = *&self->PRXPickerContentViewController_opaque[OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagRolePickerViewController_viewModel];
  v8 = sub_100006DB8();
  v9 = *(v8 + 24);
  v10 = type metadata accessor for AirTagRolePickerViewModel();
  selfCopy = self;
  result = v9(v10, v8);
  if (row < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(result + 2) <= row)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v13 = result + 16 * row;
  v14 = *(v13 + 4);
  v15 = *(v13 + 5);

  v16 = String._bridgeToObjectiveC()();

  return v16;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  v7 = *&self->PRXPickerContentViewController_opaque[OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagRolePickerViewController_viewModel];
  v8 = sub_100006DB8();
  v9 = *(v8 + 48);
  v10 = type metadata accessor for AirTagRolePickerViewModel();
  selfCopy = self;
  v9(row, v10, v8);
}

@end