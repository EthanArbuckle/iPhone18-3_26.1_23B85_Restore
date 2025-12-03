@interface CNContactProviderSupportiOSDataMapper
+ (id)os_log;
- (BOOL)executeSaveRequest:(id)request error:(id *)error;
- (BOOL)executeSaveRequest:(id)request response:(id *)response authorizationContext:(id)context error:(id *)error;
- (BOOL)fetchContactsForFetchRequest:(id)request error:(id *)error batchHandler:(id)handler;
- (BOOL)fetchEncodedContactsForFetchRequest:(id)request error:(id *)error cancelationToken:(id)token batchHandler:(id)handler;
- (CNContactProviderSupportiOSDataMapper)initWithConfiguration:(id)configuration addressBook:(id)book;
- (id)accountsMatchingPredicate:(id)predicate error:(id *)error;
- (id)authorizedKeysForContactKeys:(id)keys error:(id *)error;
- (id)contactCountForFetchRequest:(id)request error:(id *)error;
- (id)contactObservableForFetchRequest:(id)request;
- (id)containersMatchingPredicate:(id)predicate error:(id *)error;
- (id)currentHistoryAnchor;
- (id)defaultContainerIdentifier;
- (id)defaultContainerIdentifierImpl;
- (id)encodedContactsCursorForFetchRequest:(id)request cursorCleanupBlock:(id)block error:(id *)error;
- (id)groupsMatchingPredicate:(id)predicate error:(id *)error;
- (id)meContactIdentifiers:(id *)identifiers;
- (id)policyForContainerWithIdentifier:(id)identifier error:(id *)error;
- (id)policyWithDescription:(id)description error:(id *)error;
- (id)serverSearchContainersMatchingPredicate:(id)predicate error:(id *)error;
- (id)subgroupsOfGroupWithIdentifier:(id)identifier error:(id *)error;
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

- (CNContactProviderSupportiOSDataMapper)initWithConfiguration:(id)configuration addressBook:(id)book
{
  configurationCopy = configuration;
  bookCopy = book;
  v17.receiver = self;
  v17.super_class = CNContactProviderSupportiOSDataMapper;
  v8 = [(CNContactProviderSupportiOSDataMapper *)&v17 init];
  if (v8)
  {
    v9 = [[CNiOSAddressBookDataMapper alloc] initWithConfiguration:configurationCopy addressBook:bookCopy];
    dataMapper = v8->_dataMapper;
    v8->_dataMapper = v9;

    contactProviderManager = [configurationCopy contactProviderManager];
    contactProviderManager = v8->_contactProviderManager;
    v8->_contactProviderManager = contactProviderManager;

    managedConfiguration = [configurationCopy managedConfiguration];
    managedConfiguration = v8->_managedConfiguration;
    v8->_managedConfiguration = managedConfiguration;

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

- (id)authorizedKeysForContactKeys:(id)keys error:(id *)error
{
  objc_opt_class();
  v4 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CNContactProviderSupportiOSDataMapper authorizedKeysForContactKeys:error:];
  }

  return MEMORY[0x1E695E0F0];
}

- (id)accountsMatchingPredicate:(id)predicate error:(id *)error
{
  objc_opt_class();
  v4 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CNContactProviderSupportiOSDataMapper accountsMatchingPredicate:error:];
  }

  return MEMORY[0x1E695E0F0];
}

- (id)serverSearchContainersMatchingPredicate:(id)predicate error:(id *)error
{
  objc_opt_class();
  v4 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CNContactProviderSupportiOSDataMapper serverSearchContainersMatchingPredicate:error:];
  }

  return MEMORY[0x1E695E0F0];
}

- (id)subgroupsOfGroupWithIdentifier:(id)identifier error:(id *)error
{
  objc_opt_class();
  v4 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CNContactProviderSupportiOSDataMapper subgroupsOfGroupWithIdentifier:error:];
  }

  return MEMORY[0x1E695E0F0];
}

- (id)contactCountForFetchRequest:(id)request error:(id *)error
{
  objc_opt_class();
  v4 = +[CNContactProviderSupportiOSDataMapper os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CNContactProviderSupportiOSDataMapper contactCountForFetchRequest:error:];
  }

  return &unk_1F0987300;
}

- (id)meContactIdentifiers:(id *)identifiers
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
  if (self)
  {
    providerContainer = [*(self + 16) providerContainer];
    v4 = providerContainer;
    if (providerContainer)
    {
      identifier = [providerContainer identifier];
    }

    else
    {
      identifier = @"Extension not enabled";
    }

    [*(self + 24) setProviderContainerIdentifier:identifier];
  }
}

- (id)contactObservableForFetchRequest:(id)request
{
  requestCopy = request;
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

  v8 = [(CNiOSAddressBookDataMapper *)dataMapper contactObservableForFetchRequest:requestCopy];

  return v8;
}

- (id)containersMatchingPredicate:(id)predicate error:(id *)error
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
  providerContainer = [(CNContactProviderSupportManager *)v8 providerContainer];

  if (providerContainer)
  {
    v13[0] = providerContainer;
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
  if (self)
  {
    providerContainer = [*(self + 16) providerContainer];
    identifier = [providerContainer identifier];
  }

  else
  {
    identifier = 0;
  }

  return identifier;
}

- (BOOL)executeSaveRequest:(id)request error:(id *)error
{
  OUTLINED_FUNCTION_6_4(self, a2, request);
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

- (BOOL)executeSaveRequest:(id)request response:(id *)response authorizationContext:(id)context error:(id *)error
{
  contextCopy = context;
  requestCopy = request;
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

  v15 = [(CNiOSAddressBookDataMapper *)dataMapper executeSaveRequest:requestCopy response:response authorizationContext:contextCopy error:error];

  return v15;
}

- (id)groupsMatchingPredicate:(id)predicate error:(id *)error
{
  OUTLINED_FUNCTION_6_4(self, a2, predicate);
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

- (id)policyForContainerWithIdentifier:(id)identifier error:(id *)error
{
  OUTLINED_FUNCTION_6_4(self, a2, identifier);
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

- (id)policyWithDescription:(id)description error:(id *)error
{
  OUTLINED_FUNCTION_6_4(self, a2, description);
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

- (id)encodedContactsCursorForFetchRequest:(id)request cursorCleanupBlock:(id)block error:(id *)error
{
  blockCopy = block;
  requestCopy = request;
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

  v13 = [(CNiOSAddressBookDataMapper *)dataMapper encodedContactsCursorForFetchRequest:requestCopy cursorCleanupBlock:blockCopy error:error];

  return v13;
}

- (BOOL)fetchContactsForFetchRequest:(id)request error:(id *)error batchHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
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

  v13 = [(CNiOSAddressBookDataMapper *)dataMapper fetchContactsForFetchRequest:requestCopy error:error batchHandler:handlerCopy];

  return v13;
}

- (BOOL)fetchEncodedContactsForFetchRequest:(id)request error:(id *)error cancelationToken:(id)token batchHandler:(id)handler
{
  handlerCopy = handler;
  tokenCopy = token;
  requestCopy = request;
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

  v16 = [(CNiOSAddressBookDataMapper *)dataMapper fetchEncodedContactsForFetchRequest:requestCopy error:error cancelationToken:tokenCopy batchHandler:handlerCopy];

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

  currentHistoryAnchor = [(CNiOSAddressBookDataMapper *)dataMapper currentHistoryAnchor];

  return currentHistoryAnchor;
}

@end