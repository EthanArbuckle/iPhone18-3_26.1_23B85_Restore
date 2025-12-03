@interface RCSMessagingViewController
- (_TtC19AppSystemSettingsUI26RCSMessagingViewController)initWithCoder:(id)coder;
- (_TtC19AppSystemSettingsUI26RCSMessagingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setSpecifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation RCSMessagingViewController

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
  sub_21BB141C8();
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
  sub_21BB145F0(specifierCopy);
}

- (_TtC19AppSystemSettingsUI26RCSMessagingViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v10 = [(RCSMessagingViewController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC19AppSystemSettingsUI26RCSMessagingViewController)initWithCoder:(id)coder
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
  v7 = [(RCSMessagingViewController *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end