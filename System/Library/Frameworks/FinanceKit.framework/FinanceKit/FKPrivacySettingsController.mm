@interface FKPrivacySettingsController
- (FKPrivacySettingsController)initWithBundleIdentifier:(id)identifier;
@end

@implementation FKPrivacySettingsController

- (FKPrivacySettingsController)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(FKPrivacySettingsController *)self init];
  if (v5)
  {
    v6 = [[_TtC10FinanceKit36BankConnectPrivacySettingsController alloc] initWithBundleID:identifierCopy];
    wrappedController = v5->_wrappedController;
    v5->_wrappedController = v6;
  }

  return v5;
}

@end