@interface BridgeSettingsViewController
- (_TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController)initWithCoder:(id)coder;
- (_TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)sleepScoreNotificationsString:(id)string;
- (id)specifiers;
- (id)watchChargeReminder:(id)reminder;
- (void)_didTapSetUpNotificationsInHealth:(id)health;
- (void)_didTapSleepApneaFooter;
- (void)dealloc;
- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)passcodeSettingsLinkTapped;
- (void)viewWillAppear:(BOOL)appear;
- (void)wristDetectionSettingManagerDidObserveWristDetectChange:(id)change;
@end

@implementation BridgeSettingsViewController

- (_TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
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
    sub_116EC();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_41C4(bundle, v7, bundle);

  return v8;
}

- (_TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController)initWithCoder:(id)coder
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&self->PSListController_opaque[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFeatureStatus] = 0;
  v4 = &self->PSListController_opaque[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFooterURL];
  *v4 = 0;
  *(v4 + 1) = 0;
  result = sub_118DC();
  __break(1u);
  return result;
}

- (void)dealloc
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_117BC();
  sub_117AC();

  swift_task_deinitOnExecutor();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_4E04(appearCopy);
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
  sub_52A0();

  v4.super.isa = sub_1176C().super.isa;

  return v4.super.isa;
}

- (id)watchChargeReminder:(id)reminder
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  v5 = sub_5714();
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v5, "chargingReminders")}];
  }

  else
  {
    v7 = [objc_allocWithZone(NSNumber) initWithBool:0];
  }

  return v7;
}

- (id)sleepScoreNotificationsString:(id)string
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  stringCopy = string;
  selfCopy = self;
  sub_CA48();

  v7 = sub_116BC();

  return v7;
}

- (void)_didTapSetUpNotificationsInHealth:(id)health
{
  v4 = sub_113FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  v10 = HKSPSleepURL();
  if (v10)
  {
    v11 = v10;
    sub_113DC();

    sub_903C();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }
}

- (void)_didTapSleepApneaFooter
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_9BF0();
}

- (void)passcodeSettingsLinkTapped
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_CED0();
}

- (void)wristDetectionSettingManagerDidObserveWristDetectChange:(id)change
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  changeCopy = change;
  selfCopy = self;
  sub_D10C("[%{public}s] wrist detect settings did change");
}

- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  statusCopy = status;
  selfCopy = self;
  sub_D2D4(statusCopy);

  swift_unknownObjectRelease();
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = sub_116EC();
    v12 = v11;
    if (object)
    {
LABEL_3:
      swift_unknownObjectRetain();
      changeCopy = change;
      selfCopy = self;
      sub_1186C();
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
    if (object)
    {
      goto LABEL_3;
    }
  }

  memset(v18, 0, sizeof(v18));
  changeCopy2 = change;
  selfCopy2 = self;
LABEL_6:
  if (change)
  {
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_D954(&qword_1D510, type metadata accessor for NSKeyValueChangeKey);
    v17 = sub_1167C();
  }

  else
  {
    v17 = 0;
  }

  sub_A6C8(v10, v12, v18, v17, context);

  sub_D594(v18, &unk_1D6C0, &type metadata for Any[8], &type metadata accessor for Optional, sub_D518);
}

@end