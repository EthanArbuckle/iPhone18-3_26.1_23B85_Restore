@interface AppStoreSettingsController
- (_TtC19MobileStoreSettings26AppStoreSettingsController)initWithCoder:(id)coder;
- (_TtC19MobileStoreSettings26AppStoreSettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation AppStoreSettingsController

- (_TtC19MobileStoreSettings26AppStoreSettingsController)initWithNibName:(id)name bundle:(id)bundle
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

- (_TtC19MobileStoreSettings26AppStoreSettingsController)initWithCoder:(id)coder
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

  selfCopy = self;
  sub_2E0FC();
}

@end