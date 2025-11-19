@interface SleepAppDelegate
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (_TtC20SleepHealthAppPlugin16SleepAppDelegate)init;
@end

@implementation SleepAppDelegate

- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (!a4)
  {
    v9 = 0;
    if (!a5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = sub_29E7541D8();
  a4 = v10;
  if (a5)
  {
LABEL_5:
    a5 = sub_29E754078();
  }

LABEL_6:
  v11 = a3;
  v12 = self;
  v13 = sub_29E6BB770(a3, v9, a4, a5);

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