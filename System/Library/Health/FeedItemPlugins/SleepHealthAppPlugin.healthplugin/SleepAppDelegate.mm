@interface SleepAppDelegate
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (_TtC20SleepHealthAppPlugin16SleepAppDelegate)init;
@end

@implementation SleepAppDelegate

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (!test)
  {
    v9 = 0;
    if (!options)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = sub_29E7541D8();
  test = v10;
  if (options)
  {
LABEL_5:
    options = sub_29E754078();
  }

LABEL_6:
  applicationCopy = application;
  selfCopy = self;
  v13 = sub_29E6BB770(application, v9, test, options);

  return v13 & 1;
}

- (_TtC20SleepHealthAppPlugin16SleepAppDelegate)init
{
  ObjectType = swift_getObjectType();
  v4 = self + OBJC_IVAR____TtC20SleepHealthAppPlugin16SleepAppDelegate_lazySleepStore;
  *v4 = 0;
  *(v4 + 1) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(SleepAppDelegate *)&v6 init];
}

@end