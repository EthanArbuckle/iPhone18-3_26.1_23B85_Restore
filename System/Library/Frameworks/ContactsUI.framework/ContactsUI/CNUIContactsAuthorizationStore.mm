@interface CNUIContactsAuthorizationStore
- (CNUIContactsAuthorizationStore)init;
- (CNUIContactsAuthorizationStore)initWithBundleIdentifier:(id)identifier;
- (id)contactsAuthorizationModel;
- (id)contactsAuthorizationModelByLoadingIconsOfRemoteItemsInModel:(id)model;
- (id)recordForBundleIdentifier:(id)identifier;
- (id)records;
- (id)saveContactsAuthorizationModel:(id)model;
@end

@implementation CNUIContactsAuthorizationStore

- (id)saveContactsAuthorizationModel:(id)model
{
  modelCopy = model;
  v5 = MEMORY[0x1E6996720];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__CNUIContactsAuthorizationStore_saveContactsAuthorizationModel___block_invoke;
  v9[3] = &unk_1E74E1C18;
  v10 = modelCopy;
  selfCopy = self;
  v6 = modelCopy;
  v7 = [v5 lazyFutureWithBlock:v9];

  return v7;
}

uint64_t __65__CNUIContactsAuthorizationStore_saveContactsAuthorizationModel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) changedItems];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__CNUIContactsAuthorizationStore_saveContactsAuthorizationModel___block_invoke_2;
  v4[3] = &unk_1E74E1BF0;
  v4[4] = *(a1 + 40);
  [v2 _cn_each:v4];

  return MEMORY[0x1E695E118];
}

void __65__CNUIContactsAuthorizationStore_saveContactsAuthorizationModel___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 bundleIdentifier];
  v8 = [v3 recordForBundleIdentifier:v5];

  v6 = [v4 authorization];
  [v8 setAuthorizationStatus:v6];
  v7 = [*(a1 + 32) tccSettings];
  [v7 saveAuthorizationRecord:v8];
}

- (id)contactsAuthorizationModelByLoadingIconsOfRemoteItemsInModel:(id)model
{
  modelCopy = model;
  v5 = MEMORY[0x1E6996720];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __95__CNUIContactsAuthorizationStore_contactsAuthorizationModelByLoadingIconsOfRemoteItemsInModel___block_invoke;
  v9[3] = &unk_1E74E1BC8;
  v10 = modelCopy;
  selfCopy = self;
  v6 = modelCopy;
  v7 = [v5 lazyFutureWithBlock:v9];

  return v7;
}

CNUICoreContactsAuthorizationModel *__95__CNUIContactsAuthorizationStore_contactsAuthorizationModelByLoadingIconsOfRemoteItemsInModel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteItems];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __95__CNUIContactsAuthorizationStore_contactsAuthorizationModelByLoadingIconsOfRemoteItemsInModel___block_invoke_2;
  v6[3] = &unk_1E74E1BA0;
  v6[4] = *(a1 + 40);
  v3 = [v2 _cn_map:v6];

  v4 = [[CNUICoreContactsAuthorizationModel alloc] initWithItems:v3];

  return v4;
}

id __95__CNUIContactsAuthorizationStore_contactsAuthorizationModelByLoadingIconsOfRemoteItemsInModel___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 iconFetcher];
  v5 = [v3 bundleIdentifier];
  v6 = [v4 iconOfApplictionWithBundleIdentifier:v5];
  v7 = [v3 itemBySettingIcon:v6];

  return v7;
}

- (id)recordForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  tccSettings = [(CNUIContactsAuthorizationStore *)self tccSettings];
  v6 = [tccSettings authorizationRecordForBundleIdentifier:identifierCopy];

  return v6;
}

- (id)records
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6996568];
  bundleIdentifier = [(CNUIContactsAuthorizationStore *)self bundleIdentifier];
  LOBYTE(v3) = (*(v3 + 16))(v3, bundleIdentifier);

  if (v3)
  {
    tccSettings = [(CNUIContactsAuthorizationStore *)self tccSettings];
    authorizationRecords = [tccSettings authorizationRecords];
LABEL_5:
    v8 = authorizationRecords;
    goto LABEL_6;
  }

  bundleIdentifier2 = [(CNUIContactsAuthorizationStore *)self bundleIdentifier];
  tccSettings = [(CNUIContactsAuthorizationStore *)self recordForBundleIdentifier:bundleIdentifier2];

  if (tccSettings)
  {
    v10[0] = tccSettings;
    authorizationRecords = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    goto LABEL_5;
  }

  v8 = MEMORY[0x1E695E0F0];
LABEL_6:

  return v8;
}

- (id)contactsAuthorizationModel
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__CNUIContactsAuthorizationStore_contactsAuthorizationModel__block_invoke;
  v4[3] = &unk_1E74E1B78;
  v4[4] = self;
  v2 = [MEMORY[0x1E6996720] lazyFutureWithBlock:v4];

  return v2;
}

CNUICoreContactsAuthorizationModel *__60__CNUIContactsAuthorizationStore_contactsAuthorizationModel__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) records];
  v2 = [v1 _cn_map:&__block_literal_global_2032];

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = [[CNUICoreContactsAuthorizationModel alloc] initWithItems:v3];

  return v4;
}

- (CNUIContactsAuthorizationStore)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = CNUIContactsAuthorizationStore;
  v6 = [(CNUIContactsAuthorizationStore *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
    v8 = objc_alloc_init(CNUICoreRemoteApplicationIconLoader);
    iconFetcher = v7->_iconFetcher;
    v7->_iconFetcher = v8;

    defaultTCC = [MEMORY[0x1E6996850] defaultTCC];
    tccSettings = v7->_tccSettings;
    v7->_tccSettings = defaultTCC;

    v12 = v7;
  }

  return v7;
}

- (CNUIContactsAuthorizationStore)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

@end