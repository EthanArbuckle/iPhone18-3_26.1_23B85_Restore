@interface AdAttributionKitDeveloperSettingsRoot
- (_TtC33AdAttributionKitDeveloperSettings37AdAttributionKitDeveloperSettingsRoot)initWithCoder:(id)coder;
- (_TtC33AdAttributionKitDeveloperSettings37AdAttributionKitDeveloperSettingsRoot)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation AdAttributionKitDeveloperSettingsRoot

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20384();
}

- (_TtC33AdAttributionKitDeveloperSettings37AdAttributionKitDeveloperSettingsRoot)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_246B8();
    bundleCopy = bundle;
    name = sub_246A8();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(AdAttributionKitDeveloperSettingsRoot *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC33AdAttributionKitDeveloperSettings37AdAttributionKitDeveloperSettingsRoot)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(AdAttributionKitDeveloperSettingsRoot *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end