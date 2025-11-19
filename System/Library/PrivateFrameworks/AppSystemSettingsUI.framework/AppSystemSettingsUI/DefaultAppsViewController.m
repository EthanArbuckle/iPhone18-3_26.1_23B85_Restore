@interface DefaultAppsViewController
- (_TtC19AppSystemSettingsUI25DefaultAppsViewController)initWithCoder:(id)a3;
- (_TtC19AppSystemSettingsUI25DefaultAppsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setSpecifier:(id)a3;
- (void)viewDidLoad;
@end

@implementation DefaultAppsViewController

- (void)viewDidLoad
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_21BB09E64();
}

- (void)setSpecifier:(id)a3
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_21BB0A3AC(v5);
}

- (_TtC19AppSystemSettingsUI25DefaultAppsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_21BB22FCC();
    v8 = a4;
    a3 = sub_21BB22FAC();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(DefaultAppsViewController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC19AppSystemSettingsUI25DefaultAppsViewController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(DefaultAppsViewController *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end