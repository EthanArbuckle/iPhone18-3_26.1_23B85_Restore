@interface FKPrivacySettingsController
- (FKPrivacySettingsController)initWithBundleIdentifier:(id)a3;
@end

@implementation FKPrivacySettingsController

- (FKPrivacySettingsController)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(FKPrivacySettingsController *)self init];
  if (v5)
  {
    v6 = [[_TtC10FinanceKit36BankConnectPrivacySettingsController alloc] initWithBundleID:v4];
    wrappedController = v5->_wrappedController;
    v5->_wrappedController = v6;
  }

  return v5;
}

@end