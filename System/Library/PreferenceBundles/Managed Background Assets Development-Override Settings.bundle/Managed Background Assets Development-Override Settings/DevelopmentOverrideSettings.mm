@interface DevelopmentOverrideSettings
- (_TtC27DevelopmentOverrideSettings27DevelopmentOverrideSettings)initWithCoder:(id)coder;
- (_TtC27DevelopmentOverrideSettings27DevelopmentOverrideSettings)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation DevelopmentOverrideSettings

- (void)viewDidLoad
{
  sub_3088();
  sub_3078();
  sub_3068();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_1270();
}

- (_TtC27DevelopmentOverrideSettings27DevelopmentOverrideSettings)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  sub_3088();
  sub_3078();
  sub_3068();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    sub_3038();
    bundleCopy = bundle;
    name = sub_3028();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(DevelopmentOverrideSettings *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC27DevelopmentOverrideSettings27DevelopmentOverrideSettings)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  sub_3088();
  sub_3078();
  sub_3068();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(DevelopmentOverrideSettings *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end