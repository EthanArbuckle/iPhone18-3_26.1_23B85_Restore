@interface AppInstallationSettingsController
- (_TtC23AppInstallationSettings33AppInstallationSettingsController)initWithCoder:(id)coder;
- (_TtC23AppInstallationSettings33AppInstallationSettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation AppInstallationSettingsController

- (_TtC23AppInstallationSettings33AppInstallationSettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for AppInstallationSettingsController();
  v5 = [(AppInstallationSettingsController *)&v7 initWithNibName:0 bundle:0];

  return v5;
}

- (_TtC23AppInstallationSettings33AppInstallationSettingsController)initWithCoder:(id)coder
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_1EB28();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_1CD0();
}

@end