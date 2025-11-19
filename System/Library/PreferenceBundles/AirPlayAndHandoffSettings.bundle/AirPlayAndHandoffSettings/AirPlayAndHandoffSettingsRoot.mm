@interface AirPlayAndHandoffSettingsRoot
- (_TtC25AirPlayAndHandoffSettings29AirPlayAndHandoffSettingsRoot)initWithCoder:(id)a3;
- (_TtC25AirPlayAndHandoffSettings29AirPlayAndHandoffSettingsRoot)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation AirPlayAndHandoffSettingsRoot

- (void)viewDidLoad
{
  v2 = self;
  sub_EBA4();
}

- (_TtC25AirPlayAndHandoffSettings29AirPlayAndHandoffSettingsRoot)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_F7CC();
    v8 = a4;
    a3 = sub_F7BC();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(AirPlayAndHandoffSettingsRoot *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC25AirPlayAndHandoffSettings29AirPlayAndHandoffSettingsRoot)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(AirPlayAndHandoffSettingsRoot *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end