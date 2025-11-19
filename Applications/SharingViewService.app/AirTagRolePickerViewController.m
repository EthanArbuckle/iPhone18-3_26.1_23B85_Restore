@interface AirTagRolePickerViewController
- (_TtC18SharingViewService30AirTagRolePickerViewController)initWithContentView:(id)a3;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation AirTagRolePickerViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10008D29C();
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_10008D9B8();

  return v7;
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v7 = a3;
  v8 = self;
  sub_10008DA70(a4);
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

- (_TtC18SharingViewService30AirTagRolePickerViewController)initWithContentView:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(AirTagRolePickerViewController *)&v7 initWithContentView:a3];
}

@end