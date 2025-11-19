@interface AdAttributionKitDeveloperSettingsRoot
- (_TtC33AdAttributionKitDeveloperSettings37AdAttributionKitDeveloperSettingsRoot)initWithCoder:(id)a3;
- (_TtC33AdAttributionKitDeveloperSettings37AdAttributionKitDeveloperSettingsRoot)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation AdAttributionKitDeveloperSettingsRoot

- (void)viewDidLoad
{
  v2 = self;
  sub_20384();
}

- (_TtC33AdAttributionKitDeveloperSettings37AdAttributionKitDeveloperSettingsRoot)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_246B8();
    v8 = a4;
    a3 = sub_246A8();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(AdAttributionKitDeveloperSettingsRoot *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC33AdAttributionKitDeveloperSettings37AdAttributionKitDeveloperSettingsRoot)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(AdAttributionKitDeveloperSettingsRoot *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end