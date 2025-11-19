@interface VolumeLimitSettingsRoot
- (_TtC19VolumeLimitSettings23VolumeLimitSettingsRoot)initWithCoder:(id)a3;
- (_TtC19VolumeLimitSettings23VolumeLimitSettingsRoot)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation VolumeLimitSettingsRoot

- (void)viewDidLoad
{
  v2 = self;
  sub_632C();
}

- (_TtC19VolumeLimitSettings23VolumeLimitSettingsRoot)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_A304();
    v8 = a4;
    a3 = sub_A2F4();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(VolumeLimitSettingsRoot *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC19VolumeLimitSettings23VolumeLimitSettingsRoot)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(VolumeLimitSettingsRoot *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end