@interface BridgeSleepScoreLevelListController
- (_TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController)initWithCoder:(id)a3;
- (_TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (id)subtitleValue:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation BridgeSleepScoreLevelListController

- (void)viewDidLoad
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_E140();
}

- (void)dealloc
{
  v3 = sub_1157C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&self->PSListController_opaque[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_sleepHealthNotificationSettingsProvider])
  {
    (*(v4 + 104))(v7, enum case for SleepHealthNotificationSettingsProvider.ObservableKey.sleepScoreNotificationLevels(_:), v3);
    v8 = self;

    sub_1159C();

    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v9 = self;
  }

  v10 = type metadata accessor for BridgeSleepScoreLevelListController();
  v11.receiver = self;
  v11.super_class = v10;
  [(BridgeSleepScoreLevelListController *)&v11 dealloc];
}

- (id)specifiers
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_E974();

  v4.super.isa = sub_1176C().super.isa;

  return v4.super.isa;
}

- (id)subtitleValue:(id)a3
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = PSValueKey;
  v6 = a3;
  v7 = self;
  result = [v6 propertyForKey:v5];
  if (result)
  {
    sub_1186C();
    swift_unknownObjectRelease();
    sub_112D4(&v10, &v11);
    swift_dynamicCast();

    v9 = sub_116BC();

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_1148C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1146C();
  v11 = a3;
  v12 = self;
  sub_F2B0(v11, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = sub_1148C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1146C();
  v13 = a3;
  v14 = a4;
  v15 = self;
  sub_10CEC(v14);

  (*(v9 + 8))(v12, v8);
}

- (_TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v6 = sub_116EC();
    a3 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = a4;
  v9 = sub_FC6C(v6, a3, a4);

  return v9;
}

- (_TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController)initWithCoder:(id)a3
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_FDEC(a3);

  return v4;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v10 = sub_116EC();
    v12 = v11;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    v16 = a5;
    v17 = self;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = self;
  sub_1186C();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_10AC4(&qword_1D510, type metadata accessor for NSKeyValueChangeKey);
  v15 = sub_1167C();

LABEL_8:
  sub_FF4C(v10, v12, v18, v15, a6);

  sub_104BC(v18);
}

@end