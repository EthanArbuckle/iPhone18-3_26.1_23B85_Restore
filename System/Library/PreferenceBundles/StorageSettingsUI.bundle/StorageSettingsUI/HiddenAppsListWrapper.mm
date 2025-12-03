@interface HiddenAppsListWrapper
- (_TtC17StorageSettingsUI21HiddenAppsListWrapper)initWithCoder:(id)coder;
- (_TtC17StorageSettingsUI21HiddenAppsListWrapper)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation HiddenAppsListWrapper

- (void)viewDidLoad
{
  selfCopy = self;
  sub_3F93C();
}

- (_TtC17StorageSettingsUI21HiddenAppsListWrapper)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_81928();
    bundleCopy = bundle;
    v7 = sub_818E8();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for HiddenAppsListWrapper();
  v9 = [(HiddenAppsListWrapper *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC17StorageSettingsUI21HiddenAppsListWrapper)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for HiddenAppsListWrapper();
  coderCopy = coder;
  v5 = [(HiddenAppsListWrapper *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end