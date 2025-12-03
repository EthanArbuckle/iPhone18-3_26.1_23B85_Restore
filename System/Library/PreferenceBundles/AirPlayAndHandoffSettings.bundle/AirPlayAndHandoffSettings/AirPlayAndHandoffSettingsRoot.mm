@interface AirPlayAndHandoffSettingsRoot
- (_TtC25AirPlayAndHandoffSettings29AirPlayAndHandoffSettingsRoot)initWithCoder:(id)coder;
- (_TtC25AirPlayAndHandoffSettings29AirPlayAndHandoffSettingsRoot)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation AirPlayAndHandoffSettingsRoot

- (void)viewDidLoad
{
  selfCopy = self;
  sub_EBA4();
}

- (_TtC25AirPlayAndHandoffSettings29AirPlayAndHandoffSettingsRoot)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_F7CC();
    bundleCopy = bundle;
    name = sub_F7BC();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(AirPlayAndHandoffSettingsRoot *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC25AirPlayAndHandoffSettings29AirPlayAndHandoffSettingsRoot)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(AirPlayAndHandoffSettingsRoot *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end