@interface SettingsCloudController
- (_TtC17DeviceEnrollments23SettingsCloudController)initWithCoder:(id)coder;
- (_TtC17DeviceEnrollments23SettingsCloudController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation SettingsCloudController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_5440();
}

- (_TtC17DeviceEnrollments23SettingsCloudController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_12170();
    bundleCopy = bundle;
    v7 = sub_12140();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for SettingsCloudController();
  v9 = [(SettingsCloudController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC17DeviceEnrollments23SettingsCloudController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SettingsCloudController();
  coderCopy = coder;
  v5 = [(SettingsCloudController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end