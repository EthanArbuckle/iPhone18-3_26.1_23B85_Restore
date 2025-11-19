@interface AppStoreSettingsController
- (_TtC19MobileStoreSettings26AppStoreSettingsController)initWithCoder:(id)a3;
- (_TtC19MobileStoreSettings26AppStoreSettingsController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation AppStoreSettingsController

- (_TtC19MobileStoreSettings26AppStoreSettingsController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for AppStoreSettingsController();
  v5 = [(AppStoreSettingsController *)&v7 initWithNibName:0 bundle:0];

  return v5;
}

- (_TtC19MobileStoreSettings26AppStoreSettingsController)initWithCoder:(id)a3
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_3AAD8();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_2E0FC();
}

@end