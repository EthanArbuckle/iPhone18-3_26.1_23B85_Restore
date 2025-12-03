@interface CNDowntimeWhitelist
+ (BOOL)isWhitelistedContact:(id)contact;
+ (id)keyDescriptor;
+ (id)os_log;
- (BOOL)isHandleStringWhitelisted:(id)whitelisted error:(id *)error;
- (CNDowntimeWhitelist)init;
- (CNDowntimeWhitelist)initWithContactStore:(id)store;
- (CNDowntimeWhitelist)initWithContactStore:(id)store accountStore:(id)accountStore notificationCenter:(id)center;
- (CNDowntimeWhitelist)initWithContactStore:(id)store notificationCenter:(id)center;
- (id)allWhitelistedContacts:(id *)contacts;
- (id)allWhitelistedHandleStrings:(id *)strings;
- (id)requestForContactsInPermittedContainers;
- (id)requestForContactsInPermittedContainersWithHandles:(id)handles;
- (id)requestForNonUnifiedContacts;
- (id)whitelistedHandleStringsFromHandleStrings:(id)strings error:(id *)error;
- (void)beginObservingChangeNotifications;
- (void)dealloc;
@end

@implementation CNDowntimeWhitelist

- (void)beginObservingChangeNotifications
{
  v3 = self->_notificationCenter;
  notificationCenter = self->_notificationCenter;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__CNDowntimeWhitelist_beginObservingChangeNotifications__block_invoke;
  v8[3] = &unk_1E7417A70;
  v9 = v3;
  v5 = v3;
  v6 = [(NSNotificationCenter *)notificationCenter addObserverForName:@"CNContactStoreDidChangeNotification" object:0 queue:0 usingBlock:v8];
  contactStoreDidChangeNotificationToken = self->_contactStoreDidChangeNotificationToken;
  self->_contactStoreDidChangeNotificationToken = v6;
}

+ (id)os_log
{
  if (os_log_cn_once_token_0_27 != -1)
  {
    +[CNDowntimeWhitelist os_log];
  }

  v3 = os_log_cn_once_object_0_27;

  return v3;
}

uint64_t __29__CNDowntimeWhitelist_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "whitelist");
  v1 = os_log_cn_once_object_0_27;
  os_log_cn_once_object_0_27 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNDowntimeWhitelist)init
{
  v3 = objc_alloc_init(CNContactStore);
  v4 = [(CNDowntimeWhitelist *)self initWithContactStore:v3];

  return v4;
}

- (CNDowntimeWhitelist)initWithContactStore:(id)store
{
  v4 = MEMORY[0x1E696AD88];
  storeCopy = store;
  defaultCenter = [v4 defaultCenter];
  v7 = [(CNDowntimeWhitelist *)self initWithContactStore:storeCopy notificationCenter:defaultCenter];

  return v7;
}

- (CNDowntimeWhitelist)initWithContactStore:(id)store notificationCenter:(id)center
{
  v6 = MEMORY[0x1E6959A48];
  centerCopy = center;
  storeCopy = store;
  defaultStore = [v6 defaultStore];
  v10 = [(CNDowntimeWhitelist *)self initWithContactStore:storeCopy accountStore:defaultStore notificationCenter:centerCopy];

  return v10;
}

- (CNDowntimeWhitelist)initWithContactStore:(id)store accountStore:(id)accountStore notificationCenter:(id)center
{
  storeCopy = store;
  accountStoreCopy = accountStore;
  centerCopy = center;
  v18.receiver = self;
  v18.super_class = CNDowntimeWhitelist;
  v12 = [(CNDowntimeWhitelist *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contactStore, store);
    objc_storeStrong(&v13->_notificationCenter, center);
    v14 = [[CNDowntimeWhitelistContainerFetcher alloc] initWithContactStore:storeCopy accountStore:accountStoreCopy notificationCenter:centerCopy];
    containerFetcher = v13->_containerFetcher;
    v13->_containerFetcher = v14;

    [(CNDowntimeWhitelist *)v13 beginObservingChangeNotifications];
    v16 = v13;
  }

  return v13;
}

void __56__CNDowntimeWhitelist_beginObservingChangeNotifications__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6996818] mainThreadScheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__CNDowntimeWhitelist_beginObservingChangeNotifications__block_invoke_2;
  v4[3] = &unk_1E7412A88;
  v5 = *(a1 + 32);
  v3 = [v2 afterDelay:v4 performBlock:0.0];
}

- (void)dealloc
{
  [(NSNotificationCenter *)self->_notificationCenter removeObserver:self->_contactStoreDidChangeNotificationToken];
  v3.receiver = self;
  v3.super_class = CNDowntimeWhitelist;
  [(CNDowntimeWhitelist *)&v3 dealloc];
}

- (id)whitelistedHandleStringsFromHandleStrings:(id)strings error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  contactStore = [(CNDowntimeWhitelist *)self contactStore];
  v8 = [(CNDowntimeWhitelist *)self requestForContactsInPermittedContainersWithHandles:stringsCopy];
  v22 = 0;
  v9 = [contactStore executeFetchRequest:v8 error:&v22];
  v10 = v22;

  if (v9)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __71__CNDowntimeWhitelist_whitelistedHandleStringsFromHandleStrings_error___block_invoke;
    v19[3] = &unk_1E7417A98;
    v20 = v9;
    selfCopy = self;
    v11 = [stringsCopy _cn_filter:v19];
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_INFO))
    {
      v13 = [v11 count];
      v14 = [stringsCopy count];
      *buf = 134218240;
      v24 = v13;
      v25 = 2048;
      v26 = v14;
      _os_log_impl(&dword_1954A0000, os_log, OS_LOG_TYPE_INFO, "%lu of %lu handles were whitelisted", buf, 0x16u);
    }

    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_DEBUG))
    {
      [CNDowntimeWhitelist whitelistedHandleStringsFromHandleStrings:error:];
    }
  }

  else
  {
    os_log3 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log3, OS_LOG_TYPE_ERROR))
    {
      [CNDowntimeWhitelist whitelistedHandleStringsFromHandleStrings:error:];
    }

    if (error)
    {
      v17 = v10;
      v11 = 0;
      *error = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

uint64_t __71__CNDowntimeWhitelist_whitelistedHandleStringsFromHandleStrings_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 value];
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = [objc_opt_class() anyContactIsWhitelisted:v5];
  return v6;
}

- (BOOL)isHandleStringWhitelisted:(id)whitelisted error:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  whitelistedCopy = whitelisted;
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v7 = 0;
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v22[0] = whitelistedCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v9 = [(CNDowntimeWhitelist *)self requestForContactsInPermittedContainersWithHandles:v8];

    contactStore = [(CNDowntimeWhitelist *)self contactStore];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __55__CNDowntimeWhitelist_isHandleStringWhitelisted_error___block_invoke;
    v16[3] = &unk_1E7417AC0;
    v16[4] = self;
    v16[5] = &v18;
    v17 = 0;
    v11 = [contactStore enumerateContactsWithFetchRequest:v9 error:&v17 usingBlock:v16];
    v12 = v17;

    if ((v11 & 1) == 0)
    {
      if (error)
      {
        v13 = v12;
        *error = v12;
      }

      os_log = [objc_opt_class() os_log];
      if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
      {
        [CNDowntimeWhitelist whitelistedHandleStringsFromHandleStrings:error:];
      }
    }

    v7 = *(v19 + 24);

    _Block_object_dispose(&v18, 8);
  }

  return v7 & 1;
}

void __55__CNDowntimeWhitelist_isHandleStringWhitelisted_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([objc_opt_class() isWhitelistedContact:v5])
  {
    v6 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1954A0000, v6, OS_LOG_TYPE_INFO, "Whitelisted %@", &v7, 0xCu);
    }

    *a3 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (id)allWhitelistedHandleStrings:(id *)strings
{
  v3 = [(CNDowntimeWhitelist *)self allWhitelistedContacts:strings];
  v4 = [v3 _cn_flatMap:&__block_literal_global_32_3];

  return v4;
}

- (id)allWhitelistedContacts:(id *)contacts
{
  contactStore = [(CNDowntimeWhitelist *)self contactStore];
  requestForContactsInPermittedContainers = [(CNDowntimeWhitelist *)self requestForContactsInPermittedContainers];
  v15 = 0;
  v7 = [contactStore executeFetchRequest:requestForContactsInPermittedContainers error:&v15];
  v8 = v15;

  if (v7)
  {
    value = [v7 value];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __46__CNDowntimeWhitelist_allWhitelistedContacts___block_invoke;
    v14[3] = &unk_1E74124D8;
    v14[4] = self;
    v10 = [value _cn_filter:v14];
  }

  else
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [CNDowntimeWhitelist allWhitelistedContacts:];
    }

    if (contacts)
    {
      v12 = v8;
      v10 = 0;
      *contacts = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

uint64_t __46__CNDowntimeWhitelist_allWhitelistedContacts___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() isWhitelistedContact:v2];

  return v3;
}

- (id)requestForContactsInPermittedContainersWithHandles:(id)handles
{
  v15[1] = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  containerFetcher = [(CNDowntimeWhitelist *)self containerFetcher];
  downtimeWhitelistContainer = [containerFetcher downtimeWhitelistContainer];
  identifier = [downtimeWhitelistContainer identifier];
  v8 = identifier;
  v9 = &stru_1F094DAB0;
  if (identifier)
  {
    v9 = identifier;
  }

  v10 = v9;

  requestForNonUnifiedContacts = [(CNDowntimeWhitelist *)self requestForNonUnifiedContacts];
  v15[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v13 = [CNContact predicateForContactsMatchingHandleStrings:handlesCopy inContainersWithIdentifiers:v12];

  [requestForNonUnifiedContacts setPredicate:v13];

  return requestForNonUnifiedContacts;
}

- (id)requestForContactsInPermittedContainers
{
  containerFetcher = [(CNDowntimeWhitelist *)self containerFetcher];
  downtimeWhitelistContainer = [containerFetcher downtimeWhitelistContainer];
  identifier = [downtimeWhitelistContainer identifier];
  v6 = identifier;
  v7 = &stru_1F094DAB0;
  if (identifier)
  {
    v7 = identifier;
  }

  v8 = v7;

  requestForNonUnifiedContacts = [(CNDowntimeWhitelist *)self requestForNonUnifiedContacts];
  v10 = [CNContact predicateForContactsInContainerWithIdentifier:v8];

  [requestForNonUnifiedContacts setPredicate:v10];

  return requestForNonUnifiedContacts;
}

- (id)requestForNonUnifiedContacts
{
  v2 = [CNContactFetchRequest alloc];
  keyDescriptor = [objc_opt_class() keyDescriptor];
  v4 = [(CNContactFetchRequest *)v2 initWithKeysToFetch:keyDescriptor];

  [(CNContactFetchRequest *)v4 setUnifyResults:0];

  return v4;
}

+ (id)keyDescriptor
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = @"identifier";
  v7[1] = @"downtimeWhitelist";
  v7[2] = @"emailAddresses";
  v7[3] = @"phoneNumbers";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v3 = [CNContact descriptorWithKeyDescriptors:v2 description:@"CNDowntimeWhitelist keyDescriptor"];
  v6 = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];

  return v4;
}

+ (BOOL)isWhitelistedContact:(id)contact
{
  downtimeWhitelist = [contact downtimeWhitelist];
  v4 = [downtimeWhitelist isEqualToString:*MEMORY[0x1E6996480]];

  return v4;
}

- (void)whitelistedHandleStringsFromHandleStrings:error:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1954A0000, v0, OS_LOG_TYPE_DEBUG, "Whitelisted handles: %{public}@", v1, 0xCu);
}

@end