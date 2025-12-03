@interface BridgeSleepScoreLevelListController
- (_TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController)initWithCoder:(id)coder;
- (_TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (id)subtitleValue:(id)value;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
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

  selfCopy = self;
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
    selfCopy = self;

    sub_1159C();

    (*(v4 + 8))(v7, v3);
  }

  else
  {
    selfCopy2 = self;
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

  selfCopy = self;
  sub_E974();

  v4.super.isa = sub_1176C().super.isa;

  return v4.super.isa;
}

- (id)subtitleValue:(id)value
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = PSValueKey;
  valueCopy = value;
  selfCopy = self;
  result = [valueCopy propertyForKey:v5];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
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
  viewCopy = view;
  selfCopy = self;
  sub_F2B0(viewCopy, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
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
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_10CEC(cellCopy);

  (*(v9 + 8))(v12, v8);
}

- (_TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    v6 = sub_116EC();
    name = v7;
  }

  else
  {
    v6 = 0;
  }

  bundleCopy = bundle;
  v9 = sub_FC6C(v6, name, bundle);

  return v9;
}

- (_TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController)initWithCoder:(id)coder
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_FDEC(coder);

  return v4;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = sub_116EC();
    v12 = v11;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    changeCopy = change;
    selfCopy = self;
    if (change)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  sub_1186C();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_10AC4(&qword_1D510, type metadata accessor for NSKeyValueChangeKey);
  v15 = sub_1167C();

LABEL_8:
  sub_FF4C(v10, v12, v18, v15, context);

  sub_104BC(v18);
}

@end