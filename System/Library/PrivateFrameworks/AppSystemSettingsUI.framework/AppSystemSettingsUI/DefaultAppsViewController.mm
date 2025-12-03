@interface DefaultAppsViewController
- (_TtC19AppSystemSettingsUI25DefaultAppsViewController)initWithCoder:(id)coder;
- (_TtC19AppSystemSettingsUI25DefaultAppsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setSpecifier:(id)specifier;
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

  selfCopy = self;
  sub_21BB09E64();
}

- (void)setSpecifier:(id)specifier
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  specifierCopy = specifier;
  selfCopy = self;
  sub_21BB0A3AC(specifierCopy);
}

- (_TtC19AppSystemSettingsUI25DefaultAppsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    sub_21BB22FCC();
    bundleCopy = bundle;
    name = sub_21BB22FAC();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(DefaultAppsViewController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC19AppSystemSettingsUI25DefaultAppsViewController)initWithCoder:(id)coder
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
  coderCopy = coder;
  v7 = [(DefaultAppsViewController *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end