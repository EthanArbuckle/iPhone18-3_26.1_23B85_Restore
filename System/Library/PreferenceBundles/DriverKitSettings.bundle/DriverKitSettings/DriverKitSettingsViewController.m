@interface DriverKitSettingsViewController
- (_TtC17DriverKitSettings31DriverKitSettingsViewController)initWithCoder:(id)a3;
- (_TtC17DriverKitSettings31DriverKitSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation DriverKitSettingsViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_3AA8();
}

- (_TtC17DriverKitSettings31DriverKitSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_4F40();
    *&self->PSViewController_opaque[OBJC_IVAR____TtC17DriverKitSettings31DriverKitSettingsViewController____lazy_storage___hostingController] = 0;
    v8 = a4;
    a3 = sub_4F30();
  }

  else
  {
    *&self->PSViewController_opaque[OBJC_IVAR____TtC17DriverKitSettings31DriverKitSettingsViewController____lazy_storage___hostingController] = 0;
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(DriverKitSettingsViewController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC17DriverKitSettings31DriverKitSettingsViewController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *&self->PSViewController_opaque[OBJC_IVAR____TtC17DriverKitSettings31DriverKitSettingsViewController____lazy_storage___hostingController] = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(DriverKitSettingsViewController *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end