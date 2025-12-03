@interface DriverKitSettingsViewController
- (_TtC17DriverKitSettings31DriverKitSettingsViewController)initWithCoder:(id)coder;
- (_TtC17DriverKitSettings31DriverKitSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation DriverKitSettingsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_3AA8();
}

- (_TtC17DriverKitSettings31DriverKitSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_4F40();
    *&self->PSViewController_opaque[OBJC_IVAR____TtC17DriverKitSettings31DriverKitSettingsViewController____lazy_storage___hostingController] = 0;
    bundleCopy = bundle;
    name = sub_4F30();
  }

  else
  {
    *&self->PSViewController_opaque[OBJC_IVAR____TtC17DriverKitSettings31DriverKitSettingsViewController____lazy_storage___hostingController] = 0;
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(DriverKitSettingsViewController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC17DriverKitSettings31DriverKitSettingsViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *&self->PSViewController_opaque[OBJC_IVAR____TtC17DriverKitSettings31DriverKitSettingsViewController____lazy_storage___hostingController] = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(DriverKitSettingsViewController *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end