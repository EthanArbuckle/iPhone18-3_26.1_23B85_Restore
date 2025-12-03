@interface BankConnectPrivacySettingsController
- (_TtC10FinanceKit36BankConnectPrivacySettingsController)init;
- (_TtC10FinanceKit36BankConnectPrivacySettingsController)initWithBundleID:(id)d;
- (unint64_t)authorizationType;
@end

@implementation BankConnectPrivacySettingsController

- (_TtC10FinanceKit36BankConnectPrivacySettingsController)initWithBundleID:(id)d
{
  v4 = sub_1B7800868();
  v6 = v5;
  v7 = OBJC_IVAR____TtC10FinanceKit36BankConnectPrivacySettingsController_authorizationManager;
  type metadata accessor for AppAuthorizationStateManager();
  v8 = swift_allocObject();
  v13 = &type metadata for FinancialDataTCC;
  v14 = &protocol witness table for FinancialDataTCC;
  *(v8 + 2) = sub_1B7202FB0(MEMORY[0x1E69E7CC0]);
  sub_1B71E4C44(&v12, v8 + 24);
  *(&self->super.isa + v7) = v8;
  v9 = (self + OBJC_IVAR____TtC10FinanceKit36BankConnectPrivacySettingsController_bundleID);
  *v9 = v4;
  v9[1] = v6;
  v11.receiver = self;
  v11.super_class = type metadata accessor for BankConnectPrivacySettingsController();
  return [(BankConnectPrivacySettingsController *)&v11 init];
}

- (unint64_t)authorizationType
{
  v2 = *&self->bundleID[OBJC_IVAR____TtC10FinanceKit36BankConnectPrivacySettingsController_bundleID];
  v6[0] = *(&self->super.isa + OBJC_IVAR____TtC10FinanceKit36BankConnectPrivacySettingsController_bundleID);
  v6[1] = v2;
  selfCopy = self;

  v4 = AppAuthorizationStateManager.authorizationType(bundleID:)(v6);

  return v4;
}

- (_TtC10FinanceKit36BankConnectPrivacySettingsController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end