@interface CNUIContactsAuthorizationController
+ (NSString)authorizationPaneContactsAppLabel;
+ (NSString)authorizationPaneFooterLabel;
+ (NSString)authorizationPaneHeaderLabel;
- (BOOL)foundAppsWithContactsAccessInfo;
- (CNUIContactsAuthorizationController)init;
- (CNUIContactsAuthorizationController)initWithBundleIdentifier:(id)identifier;
- (CNUICoreContactsAuthorizationModel)model;
- (NSArray)bundleIdentifiersOfAppsWithContactsAccessInfo;
- (id)authorizationLevelOfAppWithBundleIdentifier:(id)identifier;
- (id)createModel;
- (id)iconOfAppWithBundleIdentifier:(id)identifier;
- (id)nameOfAppWithBundleIdentifier:(id)identifier;
- (void)lazilyLoadIconsForRemoteItems;
- (void)saveModel;
- (void)setAuthorizationLevel:(id)level ofAppWithBundleIdentifier:(id)identifier;
@end

@implementation CNUIContactsAuthorizationController

- (void)setAuthorizationLevel:(id)level ofAppWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  unsignedIntegerValue = [level unsignedIntegerValue];
  model = [(CNUIContactsAuthorizationController *)self model];
  v9 = [model itemWithMatchingBundleIdentifier:identifierCopy];

  [v9 setAuthorization:unsignedIntegerValue];

  [(CNUIContactsAuthorizationController *)self saveModel];
}

- (id)iconOfAppWithBundleIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E69DCAB8];
  identifierCopy = identifier;
  model = [(CNUIContactsAuthorizationController *)self model];
  v7 = [model itemWithMatchingBundleIdentifier:identifierCopy];

  icon = [v7 icon];
  v9 = [v4 imageWithData:icon];

  return v9;
}

- (id)nameOfAppWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  model = [(CNUIContactsAuthorizationController *)self model];
  v6 = [model itemWithMatchingBundleIdentifier:identifierCopy];

  name = [v6 name];

  return name;
}

- (id)authorizationLevelOfAppWithBundleIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E696AD98];
  identifierCopy = identifier;
  model = [(CNUIContactsAuthorizationController *)self model];
  v7 = [model itemWithMatchingBundleIdentifier:identifierCopy];

  v8 = [v4 numberWithInteger:{objc_msgSend(v7, "authorization")}];

  return v8;
}

- (NSArray)bundleIdentifiersOfAppsWithContactsAccessInfo
{
  model = [(CNUIContactsAuthorizationController *)self model];
  bundleIdentifiers = [model bundleIdentifiers];

  return bundleIdentifiers;
}

- (BOOL)foundAppsWithContactsAccessInfo
{
  model = [(CNUIContactsAuthorizationController *)self model];
  isEmpty = [model isEmpty];

  return isEmpty ^ 1;
}

- (void)saveModel
{
  store = [(CNUIContactsAuthorizationController *)self store];
  model = [(CNUIContactsAuthorizationController *)self model];
  v6 = [store saveContactsAuthorizationModel:model];

  v5 = [v6 result:0];
}

- (void)lazilyLoadIconsForRemoteItems
{
  store = [(CNUIContactsAuthorizationController *)self store];
  model = [(CNUIContactsAuthorizationController *)self model];
  v5 = [store contactsAuthorizationModelByLoadingIconsOfRemoteItemsInModel:model];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__CNUIContactsAuthorizationController_lazilyLoadIconsForRemoteItems__block_invoke;
  v6[3] = &unk_1E74E52F0;
  v6[4] = self;
  [v5 addSuccessBlock:v6];
}

void __68__CNUIContactsAuthorizationController_lazilyLoadIconsForRemoteItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 model];
  v6 = [v5 modelByCopyingIconsOfRemoteItemsFromModel:v4];
  [*(a1 + 32) setModel:v6];

  v9 = [*(a1 + 32) delegate];
  v7 = *(a1 + 32);
  v8 = [v4 bundleIdentifiers];

  [v9 controller:v7 didRefreshInfoForAppsWithBundleIdentifiers:v8];
}

- (id)createModel
{
  store = [(CNUIContactsAuthorizationController *)self store];
  contactsAuthorizationModel = [store contactsAuthorizationModel];
  v4 = [contactsAuthorizationModel result:0];

  return v4;
}

- (CNUICoreContactsAuthorizationModel)model
{
  model = self->_model;
  if (!model)
  {
    createModel = [(CNUIContactsAuthorizationController *)self createModel];
    v5 = self->_model;
    self->_model = createModel;

    model = self->_model;
  }

  return model;
}

- (CNUIContactsAuthorizationController)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = CNUIContactsAuthorizationController;
  v5 = [(CNUIContactsAuthorizationController *)&v10 init];
  if (v5)
  {
    v6 = [[CNUIContactsAuthorizationStore alloc] initWithBundleIdentifier:identifierCopy];
    store = v5->_store;
    v5->_store = v6;

    v8 = v5;
  }

  return v5;
}

- (CNUIContactsAuthorizationController)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

+ (NSString)authorizationPaneContactsAppLabel
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"CONTACTS" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

+ (NSString)authorizationPaneHeaderLabel
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"CONTACTS_AUTH_HEADER" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

+ (NSString)authorizationPaneFooterLabel
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"CONTACTS_FOOTER" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

@end