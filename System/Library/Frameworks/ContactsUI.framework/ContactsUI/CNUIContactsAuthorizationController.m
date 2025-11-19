@interface CNUIContactsAuthorizationController
+ (NSString)authorizationPaneContactsAppLabel;
+ (NSString)authorizationPaneFooterLabel;
+ (NSString)authorizationPaneHeaderLabel;
- (BOOL)foundAppsWithContactsAccessInfo;
- (CNUIContactsAuthorizationController)init;
- (CNUIContactsAuthorizationController)initWithBundleIdentifier:(id)a3;
- (CNUICoreContactsAuthorizationModel)model;
- (NSArray)bundleIdentifiersOfAppsWithContactsAccessInfo;
- (id)authorizationLevelOfAppWithBundleIdentifier:(id)a3;
- (id)createModel;
- (id)iconOfAppWithBundleIdentifier:(id)a3;
- (id)nameOfAppWithBundleIdentifier:(id)a3;
- (void)lazilyLoadIconsForRemoteItems;
- (void)saveModel;
- (void)setAuthorizationLevel:(id)a3 ofAppWithBundleIdentifier:(id)a4;
@end

@implementation CNUIContactsAuthorizationController

- (void)setAuthorizationLevel:(id)a3 ofAppWithBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = [a3 unsignedIntegerValue];
  v8 = [(CNUIContactsAuthorizationController *)self model];
  v9 = [v8 itemWithMatchingBundleIdentifier:v6];

  [v9 setAuthorization:v7];

  [(CNUIContactsAuthorizationController *)self saveModel];
}

- (id)iconOfAppWithBundleIdentifier:(id)a3
{
  v4 = MEMORY[0x1E69DCAB8];
  v5 = a3;
  v6 = [(CNUIContactsAuthorizationController *)self model];
  v7 = [v6 itemWithMatchingBundleIdentifier:v5];

  v8 = [v7 icon];
  v9 = [v4 imageWithData:v8];

  return v9;
}

- (id)nameOfAppWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CNUIContactsAuthorizationController *)self model];
  v6 = [v5 itemWithMatchingBundleIdentifier:v4];

  v7 = [v6 name];

  return v7;
}

- (id)authorizationLevelOfAppWithBundleIdentifier:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [(CNUIContactsAuthorizationController *)self model];
  v7 = [v6 itemWithMatchingBundleIdentifier:v5];

  v8 = [v4 numberWithInteger:{objc_msgSend(v7, "authorization")}];

  return v8;
}

- (NSArray)bundleIdentifiersOfAppsWithContactsAccessInfo
{
  v2 = [(CNUIContactsAuthorizationController *)self model];
  v3 = [v2 bundleIdentifiers];

  return v3;
}

- (BOOL)foundAppsWithContactsAccessInfo
{
  v2 = [(CNUIContactsAuthorizationController *)self model];
  v3 = [v2 isEmpty];

  return v3 ^ 1;
}

- (void)saveModel
{
  v3 = [(CNUIContactsAuthorizationController *)self store];
  v4 = [(CNUIContactsAuthorizationController *)self model];
  v6 = [v3 saveContactsAuthorizationModel:v4];

  v5 = [v6 result:0];
}

- (void)lazilyLoadIconsForRemoteItems
{
  v3 = [(CNUIContactsAuthorizationController *)self store];
  v4 = [(CNUIContactsAuthorizationController *)self model];
  v5 = [v3 contactsAuthorizationModelByLoadingIconsOfRemoteItemsInModel:v4];

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
  v2 = [(CNUIContactsAuthorizationController *)self store];
  v3 = [v2 contactsAuthorizationModel];
  v4 = [v3 result:0];

  return v4;
}

- (CNUICoreContactsAuthorizationModel)model
{
  model = self->_model;
  if (!model)
  {
    v4 = [(CNUIContactsAuthorizationController *)self createModel];
    v5 = self->_model;
    self->_model = v4;

    model = self->_model;
  }

  return model;
}

- (CNUIContactsAuthorizationController)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNUIContactsAuthorizationController;
  v5 = [(CNUIContactsAuthorizationController *)&v10 init];
  if (v5)
  {
    v6 = [[CNUIContactsAuthorizationStore alloc] initWithBundleIdentifier:v4];
    store = v5->_store;
    v5->_store = v6;

    v8 = v5;
  }

  return v5;
}

- (CNUIContactsAuthorizationController)init
{
  v2 = self;
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