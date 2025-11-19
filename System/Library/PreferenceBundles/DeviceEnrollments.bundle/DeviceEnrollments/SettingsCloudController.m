@interface SettingsCloudController
- (_TtC17DeviceEnrollments23SettingsCloudController)initWithCoder:(id)a3;
- (_TtC17DeviceEnrollments23SettingsCloudController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation SettingsCloudController

- (void)viewDidLoad
{
  v2 = self;
  sub_5440();
}

- (_TtC17DeviceEnrollments23SettingsCloudController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_12170();
    v6 = a4;
    v7 = sub_12140();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for SettingsCloudController();
  v9 = [(SettingsCloudController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC17DeviceEnrollments23SettingsCloudController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SettingsCloudController();
  v4 = a3;
  v5 = [(SettingsCloudController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end