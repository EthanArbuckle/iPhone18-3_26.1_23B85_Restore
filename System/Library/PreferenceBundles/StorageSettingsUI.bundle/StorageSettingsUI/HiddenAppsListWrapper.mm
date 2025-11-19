@interface HiddenAppsListWrapper
- (_TtC17StorageSettingsUI21HiddenAppsListWrapper)initWithCoder:(id)a3;
- (_TtC17StorageSettingsUI21HiddenAppsListWrapper)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation HiddenAppsListWrapper

- (void)viewDidLoad
{
  v2 = self;
  sub_3F93C();
}

- (_TtC17StorageSettingsUI21HiddenAppsListWrapper)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_81928();
    v6 = a4;
    v7 = sub_818E8();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for HiddenAppsListWrapper();
  v9 = [(HiddenAppsListWrapper *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC17StorageSettingsUI21HiddenAppsListWrapper)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for HiddenAppsListWrapper();
  v4 = a3;
  v5 = [(HiddenAppsListWrapper *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end