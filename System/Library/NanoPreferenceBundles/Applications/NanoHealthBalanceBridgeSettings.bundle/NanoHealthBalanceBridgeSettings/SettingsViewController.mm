@interface SettingsViewController
- (_TtC31NanoHealthBalanceBridgeSettings22SettingsViewController)initWithCoder:(id)coder;
- (_TtC31NanoHealthBalanceBridgeSettings22SettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)notificationsEnabledWithSpecifier:(id)specifier;
- (id)specifiers;
- (void)launchHealthAppOnboardingWithSpecifier:(id)specifier;
- (void)setWithNotificationsEnabled:(id)enabled specifier:(id)specifier;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SettingsViewController

- (_TtC31NanoHealthBalanceBridgeSettings22SettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_51C8();
  sub_51B8();
  sub_51A8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    sub_5128();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_159C(bundle, v7, bundle);

  return v8;
}

- (_TtC31NanoHealthBalanceBridgeSettings22SettingsViewController)initWithCoder:(id)coder
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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  sub_51C8();
  sub_51B8();
  sub_51A8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_1A84(appearCopy);
}

- (id)notificationsEnabledWithSpecifier:(id)specifier
{
  sub_51C8();
  sub_51B8();
  sub_51A8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *&self->BPSListController_opaque[OBJC_IVAR____TtC31NanoHealthBalanceBridgeSettings22SettingsViewController_settings];
  selfCopy = self;
  v6 = [objc_allocWithZone(NSNumber) initWithBool:sub_5028() & 1];

  return v6;
}

- (void)setWithNotificationsEnabled:(id)enabled specifier:(id)specifier
{
  sub_51C8();
  sub_51B8();
  sub_51A8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *&self->BPSListController_opaque[OBJC_IVAR____TtC31NanoHealthBalanceBridgeSettings22SettingsViewController_settings];
  enabledCopy = enabled;
  selfCopy = self;
  [enabledCopy BOOLValue];
  sub_5038();
}

- (void)launchHealthAppOnboardingWithSpecifier:(id)specifier
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
  selfCopy = self;
  sub_4F78();
  sub_29E0(v9);
  isa = sub_5178().super.isa;

  [(SettingsViewController *)selfCopy setSpecifiers:isa];

  sub_29E0(v9);

  v7.super.isa = sub_5178().super.isa;

  return v7.super.isa;
}

@end