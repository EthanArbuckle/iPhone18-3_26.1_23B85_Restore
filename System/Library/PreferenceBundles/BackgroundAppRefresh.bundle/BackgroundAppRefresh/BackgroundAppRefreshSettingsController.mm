@interface BackgroundAppRefreshSettingsController
- (_TtC20BackgroundAppRefresh38BackgroundAppRefreshSettingsController)initWithCoder:(id)coder;
- (_TtC20BackgroundAppRefresh38BackgroundAppRefreshSettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation BackgroundAppRefreshSettingsController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_42DC();
}

- (_TtC20BackgroundAppRefresh38BackgroundAppRefreshSettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_12EEC();
    name = v8;
  }

  v9 = OBJC_IVAR____TtC20BackgroundAppRefresh38BackgroundAppRefreshSettingsController_backgroundAppRefreshSettingsListState;
  refreshed = type metadata accessor for BackgroundAppRefreshSettingsListState();
  v11 = *(refreshed + 48);
  v12 = *(refreshed + 52);
  swift_allocObject();
  bundleCopy = bundle;
  *&self->PSViewController_opaque[v9] = sub_AB2C();
  if (name)
  {
    v14 = sub_12EBC();
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = self;
  v17.super_class = ObjectType;
  v15 = [(BackgroundAppRefreshSettingsController *)&v17 initWithNibName:v14 bundle:bundleCopy];

  return v15;
}

- (_TtC20BackgroundAppRefresh38BackgroundAppRefreshSettingsController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC20BackgroundAppRefresh38BackgroundAppRefreshSettingsController_backgroundAppRefreshSettingsListState;
  refreshed = type metadata accessor for BackgroundAppRefreshSettingsListState();
  v8 = *(refreshed + 48);
  v9 = *(refreshed + 52);
  swift_allocObject();
  coderCopy = coder;
  *&self->PSViewController_opaque[v6] = sub_AB2C();
  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = [(BackgroundAppRefreshSettingsController *)&v13 initWithCoder:coderCopy];

  if (v11)
  {
  }

  return v11;
}

@end