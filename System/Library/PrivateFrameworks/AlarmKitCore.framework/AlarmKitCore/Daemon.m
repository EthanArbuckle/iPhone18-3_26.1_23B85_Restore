@interface Daemon
- (NSDate)nextEventDate;
- (_TtC12AlarmKitCore6Daemon)init;
- (_TtP12AlarmKitCore14DaemonDelegate_)delegate;
- (void)start;
@end

@implementation Daemon

- (_TtP12AlarmKitCore14DaemonDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSDate)nextEventDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = *(self + OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmManager);
  if (v7)
  {
    v8 = *(v7 + 216);
    v9 = self;

    sub_22D72E600();

    v10 = sub_22D72D730();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v6, 1, v10);
    v13 = 0;
    if (v12 != 1)
    {
      v14 = sub_22D72D6B0();
      (*(v11 + 8))(v6, v10);
      v13 = v14;
    }
  }

  else
  {
    v15 = sub_22D72D730();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    v13 = 0;
  }

  return v13;
}

- (void)start
{
  v2 = self;
  sub_22D71ED88();
}

- (_TtC12AlarmKitCore6Daemon)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end