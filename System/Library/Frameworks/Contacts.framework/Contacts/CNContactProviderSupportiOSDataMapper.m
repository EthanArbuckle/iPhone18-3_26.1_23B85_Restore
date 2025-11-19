@interface CNContactProviderSupportiOSDataMapper
+ (id)os_log;
- (BOOL)executeSaveRequest:(id)a3 error:(id *)a4;
- (BOOL)executeSaveRequest:(id)a3 response:(id *)a4 authorizationContext:(id)a5 error:(id *)a6;
- (BOOL)fetchContactsForFetchRequest:(id)a3 error:(id *)a4 batchHandler:(id)a5;
- (BOOL)fetchEncodedContactsForFetchRequest:(id)a3 error:(id *)a4 cancelationToken:(id)a5 batchHandler:(id)a6;
- (CNContactProviderSupportiOSDataMapper)initWithConfiguration:(id)a3 addressBook:(id)a4;
- (id)accountsMatchingPredicate:(id)a3 error:(id *)a4;
- (id)authorizedKeysForContactKeys:(id)a3 error:(id *)a4;
- (id)contactCountForFetchRequest:(id)a3 error:(id *)a4;
- (id)contactObservableForFetchRequest:(id)a3;
- (id)containersMatchingPredicate:(id)a3 error:(id *)a4;
- (id)currentHistoryAnchor;
- (id)defaultContainerIdentifier;
- (id)defaultContainerIdentifierImpl;
- (id)encodedContactsCursorForFetchRequest:(id)a3 cursorCleanupBlock:(id)a4 error:(id *)a5;
- (id)groupsMatchingPredicate:(id)a3 error:(id *)a4;
- (id)meContactIdentifiers:(id *)a3;
- (id)policyForContainerWithIdentifier:(id)a3 error:(id *)a4;
- (id)policyWithDescription:(id)a3 error:(id *)a4;
- (id)serverSearchContainersMatchingPredicate:(id)a3 error:(id *)a4;
- (id)subgroupsOfGroupWithIdentifier:(id)a3 error:(id *)a4;
- (void)updateManagedConfiguration;
@end

@implementation CNContactProviderSupportiOSDataMapper

+ (id)os_log
{
  objc_opt_self();
  if (os_log_cn_once_token_0_24 != -1)
  {
    +[CNContactProviderSupportiOSDataMapper os_log];
  }

  v0 = os_log_cn_once_object_0_24;

  return v0;
}

uint64_t __47__CNContactProviderSupportiOSDataMapper_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.provider", "CNContactProviderSupportiOSDataMapper");
  v1 = os_log_cn_once_object_0_24;
  os_log_cn_once_object_0_24 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNContactProviderSupportiOSDataMapper)initWithConfiguration:(id)a3 addressBook:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = CNContactProviderSupportiOSDataMapper;
  v8 = [(CNContactProviderSupportiOSDataMapper *)&v17 init];
  if (v8)
  {
    v9 = [[CNiOSAddressBookDataMapper alloc] initWithConfiguration:v6 addressBook:v7];
    dataMapper = v8->_dataMapper;
    v8->_dataMapper = v9;

    v11 = [v6 contactProviderManager];
    contactProviderManager = v8->_contactProviderManager;
    v8->_contactProviderManager = v11;

    v13 = [v6 managedConfiguration];
    managedConfiguration = v8->_managedConfiguration;
    v8->_managedConfiguration = v13;

    v15 = v8;
  }

  return v8;
}

- (id)defaultContainerIdentifier
{
  objc_opt_class();
  v2 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1954A0000, v2, OS_LOG_TYPE_INFO, "Overriding defaultContainerIdentifier, returning provider container identifier", buf, 2u);
  }

  v3 = cn_objectResultWithObjectLock();

  return v3;
}

id __67__CNContactProviderSupportiOSDataMapper_defaultContainerIdentifier__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (!v3)
  {
    v5 = [(CNContactProviderSupportiOSDataMapper *)v2 defaultContainerIdentifierImpl];
    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    *(v6 + 32) = v5;

    v3 = *(*(a1 + 32) + 32);
  }

  return v3;
}

- (id)authorizedKeysForContactKeys:(id)a3 error:(id *)a4
{
  objc_opt_class();
  v4 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CNContactProviderSupportiOSDataMapper authorizedKeysForContactKeys:error:];
  }

  return MEMORY[0x1E695E0F0];
}

- (id)accountsMatchingPredicate:(id)a3 error:(id *)a4
{
  objc_opt_class();
  v4 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CNContactProviderSupportiOSDataMapper accountsMatchingPredicate:error:];
  }

  return MEMORY[0x1E695E0F0];
}

- (id)serverSearchContainersMatchingPredicate:(id)a3 error:(id *)a4
{
  objc_opt_class();
  v4 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CNContactProviderSupportiOSDataMapper serverSearchContainersMatchingPredicate:error:];
  }

  return MEMORY[0x1E695E0F0];
}

- (id)subgroupsOfGroupWithIdentifier:(id)a3 error:(id *)a4
{
  objc_opt_class();
  v4 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CNContactProviderSupportiOSDataMapper subgroupsOfGroupWithIdentifier:error:];
  }

  return MEMORY[0x1E695E0F0];
}

- (id)contactCountForFetchRequest:(id)a3 error:(id *)a4
{
  objc_opt_class();
  v4 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CNContactProviderSupportiOSDataMapper contactCountForFetchRequest:error:];
  }

  return &unk_1F0987300;
}

- (id)meContactIdentifiers:(id *)a3
{
  objc_opt_class();
  v3 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [CNContactProviderSupportiOSDataMapper meContactIdentifiers:];
  }

  return MEMORY[0x1E695E0F0];
}

- (void)updateManagedConfiguration
{
  if (a1)
  {
    v2 = [*(a1 + 16) providerContainer];
    v4 = v2;
    if (v2)
    {
      v3 = [v2 identifier];
    }

    else
    {
      v3 = @"Extension not enabled";
    }

    [*(a1 + 24) setProviderContainerIdentifier:v3];
  }
}

- (id)contactObservableForFetchRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    OUTLINED_FUNCTION_3_7(&dword_1954A0000, v5, v6, "Calling contactObservableForFetchRequest:", v10);
  }

  [(CNContactProviderSupportiOSDataMapper *)self updateManagedConfiguration];
  if (self)
  {
    dataMapper = self->_dataMapper;
  }

  else
  {
    dataMapper = 0;
  }

  v8 = [(CNiOSAddressBookDataMapper *)dataMapper contactObservableForFetchRequest:v4];

  return v8;
}

- (id)containersMatchingPredicate:(id)a3 error:(id *)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v5 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    OUTLINED_FUNCTION_3_7(&dword_1954A0000, v5, v6, "Overriding containersMatchingPredicate:error:, returning provider container", v12);
  }

  if (self)
  {
    contactProviderManager = self->_contactProviderManager;
  }

  else
  {
    contactProviderManager = 0;
  }

  v8 = contactProviderManager;
  v9 = [(CNContactProviderSupportManager *)v8 providerContainer];

  if (v9)
  {
    v13[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (id)defaultContainerIdentifierImpl
{
  if (a1)
  {
    v1 = [*(a1 + 16) providerContainer];
    v2 = [v1 identifier];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)executeSaveRequest:(id)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_6_4(self, a2, a3);
  OUTLINED_FUNCTION_7_3();
  v6 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (OUTLINED_FUNCTION_5_4(v6))
  {
    OUTLINED_FUNCTION_0_14(&dword_1954A0000, v7, v8, "Calling executeSaveRequest:error:", v9, v10, v11, v12, 0);
  }

  OUTLINED_FUNCTION_4_5();
  v14 = [v13 executeSaveRequest:? error:?];

  return v14;
}

- (BOOL)executeSaveRequest:(id)a3 response:(id *)a4 authorizationContext:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  objc_opt_class();
  v12 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *v17 = 0;
    OUTLINED_FUNCTION_3_7(&dword_1954A0000, v12, v13, "Calling executeSaveRequest:response:context:error:", v17);
  }

  if (self)
  {
    dataMapper = self->_dataMapper;
  }

  else
  {
    dataMapper = 0;
  }

  v15 = [(CNiOSAddressBookDataMapper *)dataMapper executeSaveRequest:v11 response:a4 authorizationContext:v10 error:a6];

  return v15;
}

- (id)groupsMatchingPredicate:(id)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_6_4(self, a2, a3);
  OUTLINED_FUNCTION_7_3();
  v7 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (OUTLINED_FUNCTION_5_4(v7))
  {
    OUTLINED_FUNCTION_0_14(&dword_1954A0000, v8, v9, "Calling groupsMatchingPredicate:error:", v10, v11, v12, v13, 0);
  }

  [(CNContactProviderSupportiOSDataMapper *)v5 updateManagedConfiguration];
  OUTLINED_FUNCTION_4_5();
  v15 = [v14 groupsMatchingPredicate:? error:?];

  return v15;
}

- (id)policyForContainerWithIdentifier:(id)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_6_4(self, a2, a3);
  OUTLINED_FUNCTION_7_3();
  v6 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (OUTLINED_FUNCTION_5_4(v6))
  {
    OUTLINED_FUNCTION_0_14(&dword_1954A0000, v7, v8, "Calling policyForContainerWithIdentifier:error:", v9, v10, v11, v12, 0);
  }

  OUTLINED_FUNCTION_4_5();
  v14 = [v13 policyForContainerWithIdentifier:? error:?];

  return v14;
}

- (id)policyWithDescription:(id)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_6_4(self, a2, a3);
  OUTLINED_FUNCTION_7_3();
  v6 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (OUTLINED_FUNCTION_5_4(v6))
  {
    OUTLINED_FUNCTION_0_14(&dword_1954A0000, v7, v8, "Calling policyWithDescription:error:", v9, v10, v11, v12, 0);
  }

  OUTLINED_FUNCTION_4_5();
  v14 = [v13 policyWithDescription:? error:?];

  return v14;
}

- (id)encodedContactsCursorForFetchRequest:(id)a3 cursorCleanupBlock:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  objc_opt_class();
  v10 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    OUTLINED_FUNCTION_3_7(&dword_1954A0000, v10, v11, "Calling encodedContactsCursorForFetchRequest:cursorCleanupBlock:error:", v15);
  }

  [(CNContactProviderSupportiOSDataMapper *)self updateManagedConfiguration];
  if (self)
  {
    dataMapper = self->_dataMapper;
  }

  else
  {
    dataMapper = 0;
  }

  v13 = [(CNiOSAddressBookDataMapper *)dataMapper encodedContactsCursorForFetchRequest:v9 cursorCleanupBlock:v8 error:a5];

  return v13;
}

- (BOOL)fetchContactsForFetchRequest:(id)a3 error:(id *)a4 batchHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  objc_opt_class();
  v10 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    OUTLINED_FUNCTION_3_7(&dword_1954A0000, v10, v11, "Calling encodedContactsCursorForFetchRequest:error:batchHandler:", v15);
  }

  [(CNContactProviderSupportiOSDataMapper *)self updateManagedConfiguration];
  if (self)
  {
    dataMapper = self->_dataMapper;
  }

  else
  {
    dataMapper = 0;
  }

  v13 = [(CNiOSAddressBookDataMapper *)dataMapper fetchContactsForFetchRequest:v9 error:a4 batchHandler:v8];

  return v13;
}

- (BOOL)fetchEncodedContactsForFetchRequest:(id)a3 error:(id *)a4 cancelationToken:(id)a5 batchHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  [(CNContactProviderSupportiOSDataMapper *)self updateManagedConfiguration];
  objc_opt_class();
  v13 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *v18 = 0;
    OUTLINED_FUNCTION_3_7(&dword_1954A0000, v13, v14, "Calling encodedContactsCursorForFetchRequest:error:cancelationToken:batchHandler:", v18);
  }

  if (self)
  {
    dataMapper = self->_dataMapper;
  }

  else
  {
    dataMapper = 0;
  }

  v16 = [(CNiOSAddressBookDataMapper *)dataMapper fetchEncodedContactsForFetchRequest:v12 error:a4 cancelationToken:v11 batchHandler:v10];

  return v16;
}

- (id)currentHistoryAnchor
{
  objc_opt_class();
  v3 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    OUTLINED_FUNCTION_3_7(&dword_1954A0000, v3, v4, "Calling currentHistoryAnchor", v8);
  }

  if (self)
  {
    dataMapper = self->_dataMapper;
  }

  else
  {
    dataMapper = 0;
  }

  v6 = [(CNiOSAddressBookDataMapper *)dataMapper currentHistoryAnchor];

  return v6;
}

@end