@interface CNDowntimeWhitelist
+ (BOOL)isWhitelistedContact:(id)a3;
+ (id)keyDescriptor;
+ (id)os_log;
- (BOOL)isHandleStringWhitelisted:(id)a3 error:(id *)a4;
- (CNDowntimeWhitelist)init;
- (CNDowntimeWhitelist)initWithContactStore:(id)a3;
- (CNDowntimeWhitelist)initWithContactStore:(id)a3 accountStore:(id)a4 notificationCenter:(id)a5;
- (CNDowntimeWhitelist)initWithContactStore:(id)a3 notificationCenter:(id)a4;
- (id)allWhitelistedContacts:(id *)a3;
- (id)allWhitelistedHandleStrings:(id *)a3;
- (id)requestForContactsInPermittedContainers;
- (id)requestForContactsInPermittedContainersWithHandles:(id)a3;
- (id)requestForNonUnifiedContacts;
- (id)whitelistedHandleStringsFromHandleStrings:(id)a3 error:(id *)a4;
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

- (CNDowntimeWhitelist)initWithContactStore:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v6 = [v4 defaultCenter];
  v7 = [(CNDowntimeWhitelist *)self initWithContactStore:v5 notificationCenter:v6];

  return v7;
}

- (CNDowntimeWhitelist)initWithContactStore:(id)a3 notificationCenter:(id)a4
{
  v6 = MEMORY[0x1E6959A48];
  v7 = a4;
  v8 = a3;
  v9 = [v6 defaultStore];
  v10 = [(CNDowntimeWhitelist *)self initWithContactStore:v8 accountStore:v9 notificationCenter:v7];

  return v10;
}

- (CNDowntimeWhitelist)initWithContactStore:(id)a3 accountStore:(id)a4 notificationCenter:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = CNDowntimeWhitelist;
  v12 = [(CNDowntimeWhitelist *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contactStore, a3);
    objc_storeStrong(&v13->_notificationCenter, a5);
    v14 = [[CNDowntimeWhitelistContainerFetcher alloc] initWithContactStore:v9 accountStore:v10 notificationCenter:v11];
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

- (id)whitelistedHandleStringsFromHandleStrings:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CNDowntimeWhitelist *)self contactStore];
  v8 = [(CNDowntimeWhitelist *)self requestForContactsInPermittedContainersWithHandles:v6];
  v22 = 0;
  v9 = [v7 executeFetchRequest:v8 error:&v22];
  v10 = v22;

  if (v9)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __71__CNDowntimeWhitelist_whitelistedHandleStringsFromHandleStrings_error___block_invoke;
    v19[3] = &unk_1E7417A98;
    v20 = v9;
    v21 = self;
    v11 = [v6 _cn_filter:v19];
    v12 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v11 count];
      v14 = [v6 count];
      *buf = 134218240;
      v24 = v13;
      v25 = 2048;
      v26 = v14;
      _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_INFO, "%lu of %lu handles were whitelisted", buf, 0x16u);
    }

    v15 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [CNDowntimeWhitelist whitelistedHandleStringsFromHandleStrings:error:];
    }
  }

  else
  {
    v16 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CNDowntimeWhitelist whitelistedHandleStringsFromHandleStrings:error:];
    }

    if (a4)
    {
      v17 = v10;
      v11 = 0;
      *a4 = v10;
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

- (BOOL)isHandleStringWhitelisted:(id)a3 error:(id *)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
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
    v22[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v9 = [(CNDowntimeWhitelist *)self requestForContactsInPermittedContainersWithHandles:v8];

    v10 = [(CNDowntimeWhitelist *)self contactStore];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __55__CNDowntimeWhitelist_isHandleStringWhitelisted_error___block_invoke;
    v16[3] = &unk_1E7417AC0;
    v16[4] = self;
    v16[5] = &v18;
    v17 = 0;
    v11 = [v10 enumerateContactsWithFetchRequest:v9 error:&v17 usingBlock:v16];
    v12 = v17;

    if ((v11 & 1) == 0)
    {
      if (a4)
      {
        v13 = v12;
        *a4 = v12;
      }

      v14 = [objc_opt_class() os_log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
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

- (id)allWhitelistedHandleStrings:(id *)a3
{
  v3 = [(CNDowntimeWhitelist *)self allWhitelistedContacts:a3];
  v4 = [v3 _cn_flatMap:&__block_literal_global_32_3];

  return v4;
}

- (id)allWhitelistedContacts:(id *)a3
{
  v5 = [(CNDowntimeWhitelist *)self contactStore];
  v6 = [(CNDowntimeWhitelist *)self requestForContactsInPermittedContainers];
  v15 = 0;
  v7 = [v5 executeFetchRequest:v6 error:&v15];
  v8 = v15;

  if (v7)
  {
    v9 = [v7 value];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __46__CNDowntimeWhitelist_allWhitelistedContacts___block_invoke;
    v14[3] = &unk_1E74124D8;
    v14[4] = self;
    v10 = [v9 _cn_filter:v14];
  }

  else
  {
    v11 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CNDowntimeWhitelist allWhitelistedContacts:];
    }

    if (a3)
    {
      v12 = v8;
      v10 = 0;
      *a3 = v8;
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

- (id)requestForContactsInPermittedContainersWithHandles:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNDowntimeWhitelist *)self containerFetcher];
  v6 = [v5 downtimeWhitelistContainer];
  v7 = [v6 identifier];
  v8 = v7;
  v9 = &stru_1F094DAB0;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [(CNDowntimeWhitelist *)self requestForNonUnifiedContacts];
  v15[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v13 = [CNContact predicateForContactsMatchingHandleStrings:v4 inContainersWithIdentifiers:v12];

  [v11 setPredicate:v13];

  return v11;
}

- (id)requestForContactsInPermittedContainers
{
  v3 = [(CNDowntimeWhitelist *)self containerFetcher];
  v4 = [v3 downtimeWhitelistContainer];
  v5 = [v4 identifier];
  v6 = v5;
  v7 = &stru_1F094DAB0;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [(CNDowntimeWhitelist *)self requestForNonUnifiedContacts];
  v10 = [CNContact predicateForContactsInContainerWithIdentifier:v8];

  [v9 setPredicate:v10];

  return v9;
}

- (id)requestForNonUnifiedContacts
{
  v2 = [CNContactFetchRequest alloc];
  v3 = [objc_opt_class() keyDescriptor];
  v4 = [(CNContactFetchRequest *)v2 initWithKeysToFetch:v3];

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

+ (BOOL)isWhitelistedContact:(id)a3
{
  v3 = [a3 downtimeWhitelist];
  v4 = [v3 isEqualToString:*MEMORY[0x1E6996480]];

  return v4;
}

- (void)whitelistedHandleStringsFromHandleStrings:error:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1954A0000, v0, OS_LOG_TYPE_DEBUG, "Whitelisted handles: %{public}@", v1, 0xCu);
}

@end