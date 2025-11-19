@interface BackgroundAppRefreshSettingsController
- (_TtC20BackgroundAppRefresh38BackgroundAppRefreshSettingsController)initWithCoder:(id)a3;
- (_TtC20BackgroundAppRefresh38BackgroundAppRefreshSettingsController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation BackgroundAppRefreshSettingsController

- (void)viewDidLoad
{
  v2 = self;
  sub_42DC();
}

- (_TtC20BackgroundAppRefresh38BackgroundAppRefreshSettingsController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_12EEC();
    a3 = v8;
  }

  v9 = OBJC_IVAR____TtC20BackgroundAppRefresh38BackgroundAppRefreshSettingsController_backgroundAppRefreshSettingsListState;
  refreshed = type metadata accessor for BackgroundAppRefreshSettingsListState();
  v11 = *(refreshed + 48);
  v12 = *(refreshed + 52);
  swift_allocObject();
  v13 = a4;
  *&self->PSViewController_opaque[v9] = sub_AB2C();
  if (a3)
  {
    v14 = sub_12EBC();
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = self;
  v17.super_class = ObjectType;
  v15 = [(BackgroundAppRefreshSettingsController *)&v17 initWithNibName:v14 bundle:v13];

  return v15;
}

- (_TtC20BackgroundAppRefresh38BackgroundAppRefreshSettingsController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC20BackgroundAppRefresh38BackgroundAppRefreshSettingsController_backgroundAppRefreshSettingsListState;
  refreshed = type metadata accessor for BackgroundAppRefreshSettingsListState();
  v8 = *(refreshed + 48);
  v9 = *(refreshed + 52);
  swift_allocObject();
  v10 = a3;
  *&self->PSViewController_opaque[v6] = sub_AB2C();
  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = [(BackgroundAppRefreshSettingsController *)&v13 initWithCoder:v10];

  if (v11)
  {
  }

  return v11;
}

@end