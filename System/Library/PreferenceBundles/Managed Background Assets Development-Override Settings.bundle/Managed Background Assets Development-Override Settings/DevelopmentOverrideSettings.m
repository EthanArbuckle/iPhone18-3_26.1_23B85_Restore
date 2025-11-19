@interface DevelopmentOverrideSettings
- (_TtC27DevelopmentOverrideSettings27DevelopmentOverrideSettings)initWithCoder:(id)a3;
- (_TtC27DevelopmentOverrideSettings27DevelopmentOverrideSettings)initWithNibName:(id)a3 bundle:(id)a4;
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

  v3 = self;
  sub_1270();
}

- (_TtC27DevelopmentOverrideSettings27DevelopmentOverrideSettings)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  sub_3088();
  sub_3078();
  sub_3068();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_3038();
    v8 = a4;
    a3 = sub_3028();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(DevelopmentOverrideSettings *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC27DevelopmentOverrideSettings27DevelopmentOverrideSettings)initWithCoder:(id)a3
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
  v6 = a3;
  v7 = [(DevelopmentOverrideSettings *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end