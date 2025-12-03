@interface WalletPrivacySettingsController
- (_TtC21WalletPrivacySettings31WalletPrivacySettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (void)appProtectionCoordinatorDidGainAccess:(id)access;
- (void)applicationDidBecomeActive;
- (void)applicationWillResignActive;
- (void)dealloc;
- (void)didEnterBackground;
- (void)loadView;
- (void)viewWillLayoutSubviews;
- (void)willEnterForeground;
@end

@implementation WalletPrivacySettingsController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *&self->PSListController_opaque[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_appProtectionCoordinator];
  selfCopy = self;
  [v4 unregisterObserver:selfCopy];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(WalletPrivacySettingsController *)&v6 dealloc];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(WalletPrivacySettingsController *)&v3 loadView];
  sub_2C98();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1DFC();
}

- (id)specifiers
{
  selfCopy = self;
  v3 = sub_203C();

  if (v3)
  {
    v4.super.isa = sub_58E4().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (_TtC21WalletPrivacySettings31WalletPrivacySettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)appProtectionCoordinatorDidGainAccess:(id)access
{
  selfCopy = self;
  sub_33E8(1u);
}

- (void)didEnterBackground
{
  selfCopy = self;
  sub_3B04();
}

- (void)willEnterForeground
{
  selfCopy = self;
  sub_2C98();
}

- (void)applicationWillResignActive
{
  self->PSListController_opaque[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_isApplicationActive] = 0;
  if (self->PSListController_opaque[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_isApplicationInAppSwitcher] == 1)
  {
    selfCopy = self;
    sub_3B04();
  }
}

- (void)applicationDidBecomeActive
{
  self->PSListController_opaque[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_isApplicationActive] = 1;
  if ((self->PSListController_opaque[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_isApplicationInAppSwitcher] & 1) == 0)
  {
    selfCopy = self;
    sub_2C98();
  }
}

@end