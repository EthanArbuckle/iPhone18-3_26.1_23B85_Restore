@interface AirTagRolePickerViewController
- (_TtC18SharingViewService30AirTagRolePickerViewController)initWithContentView:(id)view;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)viewDidLoad;
@end

@implementation AirTagRolePickerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10008D29C();
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  v7 = sub_10008D9B8();

  return v7;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  sub_10008DA70(row);
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

- (_TtC18SharingViewService30AirTagRolePickerViewController)initWithContentView:(id)view
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(AirTagRolePickerViewController *)&v7 initWithContentView:view];
}

@end