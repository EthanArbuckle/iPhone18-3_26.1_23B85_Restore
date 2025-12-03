@interface VolumeLimitSettingsRoot
- (_TtC19VolumeLimitSettings23VolumeLimitSettingsRoot)initWithCoder:(id)coder;
- (_TtC19VolumeLimitSettings23VolumeLimitSettingsRoot)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation VolumeLimitSettingsRoot

- (void)viewDidLoad
{
  selfCopy = self;
  sub_632C();
}

- (_TtC19VolumeLimitSettings23VolumeLimitSettingsRoot)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_A304();
    bundleCopy = bundle;
    name = sub_A2F4();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(VolumeLimitSettingsRoot *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC19VolumeLimitSettings23VolumeLimitSettingsRoot)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(VolumeLimitSettingsRoot *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end