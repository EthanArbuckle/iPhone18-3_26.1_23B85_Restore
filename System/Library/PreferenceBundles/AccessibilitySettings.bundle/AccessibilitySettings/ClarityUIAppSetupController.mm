@interface ClarityUIAppSetupController
- (ClarityUIAppSetupController)initWithTitle:(id)title detailText:(id)text icon:(id)icon controller:(id)controller identifier:(id)identifier;
- (ClarityUIAppSetupController)initWithTitle:(id)title detailText:(id)text icon:(id)icon dataSource:(id)source;
- (ClarityUIAppSetupControllerDelegate)delegate;
- (NSString)bundleIdentifier;
- (void)cancelButtonTapped:(id)tapped;
- (void)nextButtonTapped:(id)tapped;
@end

@implementation ClarityUIAppSetupController

- (ClarityUIAppSetupController)initWithTitle:(id)title detailText:(id)text icon:(id)icon dataSource:(id)source
{
  sourceCopy = source;
  iconCopy = icon;
  textCopy = text;
  titleCopy = title;
  v15 = [[ClarityUISettingsListController alloc] initWithDataSource:sourceCopy];
  v19.receiver = self;
  v19.super_class = ClarityUIAppSetupController;
  v16 = [(ClarityUIOnboardingSettingsWrapperController *)&v19 initWithTitle:titleCopy detailText:textCopy icon:iconCopy controller:v15];

  if (v16)
  {
    objc_storeStrong(&v16->_dataSource, source);
    identifier = v16->_identifier;
    v16->_identifier = 0;
  }

  return v16;
}

- (ClarityUIAppSetupController)initWithTitle:(id)title detailText:(id)text icon:(id)icon controller:(id)controller identifier:(id)identifier
{
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = ClarityUIAppSetupController;
  v14 = [(ClarityUIOnboardingSettingsWrapperController *)&v17 initWithTitle:title detailText:text icon:icon controller:controller];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, identifier);
  }

  return v15;
}

- (NSString)bundleIdentifier
{
  if (self->_dataSource)
  {
    bundleIdentifier = [(ClarityUISettingsDataSource *)self->_dataSource bundleIdentifier];
  }

  else
  {
    bundleIdentifier = self->_identifier;
  }

  return bundleIdentifier;
}

- (void)nextButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained nextButtonTappedForAppSetupController:self];
}

- (void)cancelButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cancelButtonTappedForAppSetupController:self];
}

- (ClarityUIAppSetupControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end