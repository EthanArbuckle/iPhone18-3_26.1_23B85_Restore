@interface SettingsViewController
- (_TtC31NanoHealthBalanceBridgeSettings22SettingsViewController)initWithCoder:(id)a3;
- (_TtC31NanoHealthBalanceBridgeSettings22SettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)notificationsEnabledWithSpecifier:(id)a3;
- (id)specifiers;
- (void)launchHealthAppOnboardingWithSpecifier:(id)a3;
- (void)setWithNotificationsEnabled:(id)a3 specifier:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SettingsViewController

- (_TtC31NanoHealthBalanceBridgeSettings22SettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_51C8();
  sub_51B8();
  sub_51A8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_5128();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_159C(a4, v7, a4);

  return v8;
}

- (_TtC31NanoHealthBalanceBridgeSettings22SettingsViewController)initWithCoder:(id)a3
{
  sub_51C8();
  sub_51B8();
  sub_51A8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = OBJC_IVAR____TtC31NanoHealthBalanceBridgeSettings22SettingsViewController_settings;
  sub_5048();
  [objc_allocWithZone(HKHealthStore) init];
  *&self->BPSListController_opaque[v4] = sub_4FE8();
  result = sub_5268();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  sub_51C8();
  sub_51B8();
  sub_51A8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  sub_1A84(v3);
}

- (id)notificationsEnabledWithSpecifier:(id)a3
{
  sub_51C8();
  sub_51B8();
  sub_51A8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *&self->BPSListController_opaque[OBJC_IVAR____TtC31NanoHealthBalanceBridgeSettings22SettingsViewController_settings];
  v5 = self;
  v6 = [objc_allocWithZone(NSNumber) initWithBool:sub_5028() & 1];

  return v6;
}

- (void)setWithNotificationsEnabled:(id)a3 specifier:(id)a4
{
  sub_51C8();
  sub_51B8();
  sub_51A8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *&self->BPSListController_opaque[OBJC_IVAR____TtC31NanoHealthBalanceBridgeSettings22SettingsViewController_settings];
  v8 = a3;
  v7 = self;
  [v8 BOOLValue];
  sub_5038();
}

- (void)launchHealthAppOnboardingWithSpecifier:(id)a3
{
  sub_51C8();
  sub_51B8();
  sub_51A8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_443C();
}

- (id)specifiers
{
  sub_51C8();
  sub_51B8();
  sub_51A8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v4 = __chkstk_darwin(isCurrentExecutor);
  __chkstk_darwin(v4);
  sub_355C();
  v5 = self;
  sub_4F78();
  sub_29E0(v9);
  isa = sub_5178().super.isa;

  [(SettingsViewController *)v5 setSpecifiers:isa];

  sub_29E0(v9);

  v7.super.isa = sub_5178().super.isa;

  return v7.super.isa;
}

@end