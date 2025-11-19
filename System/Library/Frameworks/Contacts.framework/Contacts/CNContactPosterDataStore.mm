@interface CNContactPosterDataStore
+ (BOOL)currentProcessLacksPosterAPIAccess;
+ (BOOL)currentProcessLacksPosterAPIAccess_impl;
+ (BOOL)shouldUseDirectAccess;
+ (OS_os_log)log;
+ (id)implForAccessStrategy:(unint64_t)a3;
+ (id)inMemoryStore;
+ (id)inProcessStore;
+ (id)xpcStore;
+ (void)currentProcessLacksPosterAPIAccess_impl;
+ (void)warnAboutLackOfPosterAPIAccess;
- (BOOL)executeCreateRequest:(id)a3 error:(id *)a4;
- (BOOL)executeDeleteRequest:(id)a3 error:(id *)a4;
- (BOOL)executeUpdateRequest:(id)a3 error:(id *)a4;
- (CNContactPosterDataStore)init;
- (CNContactPosterDataStore)initWithAccessStrategy:(unint64_t)a3;
- (CNContactPosterDataStore)initWithImpl:(id)a3;
- (CNContactPosterDataStore)initWithStoreManager:(id)a3;
- (id)executeFetchRequest:(id)a3 error:(id *)a4;
- (int64_t)countForFetchRequest:(id)a3 error:(id *)a4;
@end

@implementation CNContactPosterDataStore

- (CNContactPosterDataStore)init
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:22];

  if (v5)
  {
    if ([objc_opt_class() shouldUseDirectAccess])
    {
      v6 = self;
      v7 = 1;
    }

    else if ([objc_opt_class() currentProcessLacksPosterAPIAccess])
    {
      [objc_opt_class() warnAboutLackOfPosterAPIAccess];
      v6 = self;
      v7 = 4;
    }

    else
    {
      v6 = self;
      v7 = 0;
    }
  }

  else
  {
    v8 = +[CNContactPosterDataStore log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CNContactPosterDataStore init];
    }

    v6 = self;
    v7 = 3;
  }

  v9 = [(CNContactPosterDataStore *)v6 initWithAccessStrategy:v7];

  return v9;
}

+ (BOOL)shouldUseDirectAccess
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 environment];
  v4 = [v3 objectForKeyedSubscript:@"CONTACT_POSTER_API_DIRECT_ACCESS"];
  v5 = ([v4 _cn_caseInsensitiveIsEqual:@"YES"] & 1) != 0 || (objc_msgSend(v4, "_cn_caseInsensitiveIsEqual:", @"Y") & 1) != 0 || (objc_msgSend(v4, "_cn_caseInsensitiveIsEqual:", @"TRUE") & 1) != 0 || (objc_msgSend(v4, "_cn_caseInsensitiveIsEqual:", @"T") & 1) != 0 || objc_msgSend(v4, "integerValue") != 0;

  return v5;
}

+ (BOOL)currentProcessLacksPosterAPIAccess
{
  v3 = +[CNTCC sharedInstance];
  v4 = [v3 accessPreflight];

  if (v4 == 2)
  {

    return [a1 currentProcessLacksPosterAPIAccess_impl];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__CNContactPosterDataStore_currentProcessLacksPosterAPIAccess__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (currentProcessLacksPosterAPIAccess_cn_once_token_2 != -1)
    {
      dispatch_once(&currentProcessLacksPosterAPIAccess_cn_once_token_2, block);
    }

    return [currentProcessLacksPosterAPIAccess_cn_once_object_2 BOOLValue];
  }
}

uint64_t __62__CNContactPosterDataStore_currentProcessLacksPosterAPIAccess__block_invoke(uint64_t a1)
{
  currentProcessLacksPosterAPIAccess_cn_once_object_2 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "currentProcessLacksPosterAPIAccess_impl")}];

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)currentProcessLacksPosterAPIAccess_impl
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 environment];
  v4 = [v3 objectForKeyedSubscript:@"CN_UNIT_TESTING"];
  if ([v4 _cn_caseInsensitiveIsEqual:@"YES"] & 1) != 0 || (objc_msgSend(v4, "_cn_caseInsensitiveIsEqual:", @"Y") & 1) != 0 || (objc_msgSend(v4, "_cn_caseInsensitiveIsEqual:", @"TRUE") & 1) != 0 || (objc_msgSend(v4, "_cn_caseInsensitiveIsEqual:", @"T"))
  {

LABEL_6:
    return 0;
  }

  v6 = [v4 integerValue];

  if (v6)
  {
    return 0;
  }

  getpid();
  v7 = sandbox_check();
  if (v7 == -1)
  {
    v2 = +[CNContactPosterDataStore log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      +[(CNContactPosterDataStore *)v2];
    }

    goto LABEL_6;
  }

  return v7 != 0;
}

+ (OS_os_log)log
{
  if (log_cn_once_token_0_4 != -1)
  {
    +[CNContactPosterDataStore log];
  }

  v3 = log_cn_once_object_0_4;

  return v3;
}

uint64_t __31__CNContactPosterDataStore_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "posters");
  v1 = log_cn_once_object_0_4;
  log_cn_once_object_0_4 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)inProcessStore
{
  v2 = [[a1 alloc] initWithAccessStrategy:1];

  return v2;
}

+ (id)xpcStore
{
  v2 = [[a1 alloc] initWithAccessStrategy:0];

  return v2;
}

+ (id)inMemoryStore
{
  v2 = [[a1 alloc] initWithAccessStrategy:2];

  return v2;
}

+ (void)warnAboutLackOfPosterAPIAccess
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (CNContactPosterDataStore)initWithAccessStrategy:(unint64_t)a3
{
  v4 = [objc_opt_class() implForAccessStrategy:a3];
  v5 = [(CNContactPosterDataStore *)self initWithImpl:v4];

  return v5;
}

- (CNContactPosterDataStore)initWithStoreManager:(id)a3
{
  v4 = a3;
  v5 = [[CNContactPosterDataDirectAccess alloc] initWithStoreManager:v4];

  v6 = [(CNContactPosterDataStore *)self initWithImpl:v5];
  return v6;
}

+ (id)implForAccessStrategy:(unint64_t)a3
{
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v3 = CNContactPosterDataDirectAccess;
      goto LABEL_13;
    }

    if (a3 == 2)
    {
      v4 = [CNContactPosterDataDirectAccess alloc];
      v5 = +[CNContactPosterDataPersistentStoreManager inMemoryStoreManager];
      v6 = [(CNContactPosterDataDirectAccess *)v4 initWithStoreManager:v5];

      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (a3 == 3)
  {
    v3 = CNContactPosterDataNoAccess;
    goto LABEL_13;
  }

  if (a3 == 4)
  {
    v3 = CNContactPosterDataFailAccess;
    goto LABEL_13;
  }

  if (a3 != 5)
  {
LABEL_12:
    v3 = CNContactPosterDataXPCAccess;
    goto LABEL_13;
  }

  v3 = CNContactPosterDataInitiallyUnknownAccess;
LABEL_13:
  v6 = objc_alloc_init(v3);
LABEL_14:

  return v6;
}

- (CNContactPosterDataStore)initWithImpl:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNContactPosterDataStore;
  v6 = [(CNContactPosterDataStore *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, a3);
    v8 = v7;
  }

  return v7;
}

- (id)executeFetchRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CNContactPosterDataStore executeFetchRequest:error:];
  }

  impl = self->_impl;
  v16 = 0;
  v9 = [(CNContactPosterDataStore *)impl executeFetchRequest:v6 error:&v16];
  v10 = v16;
  v11 = +[CNContactPosterDataStore log];
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CNContactPosterDataStore executeFetchRequest:v9 error:v12];
    }

    v13 = v9;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CNContactPosterDataStore executeFetchRequest:error:];
    }

    if (a4)
    {
      v14 = v10;
      *a4 = v10;
    }
  }

  return v9;
}

- (int64_t)countForFetchRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CNContactPosterDataStore countForFetchRequest:error:];
  }

  impl = self->_impl;
  v11 = 0;
  v8 = [(CNContactPosterDataStore *)impl countForFetchRequest:v5 error:&v11]!= 0;
  v9 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CNContactPosterDataStore countForFetchRequest:error:];
  }

  return v8;
}

- (BOOL)executeCreateRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CNContactPosterDataStore executeCreateRequest:error:];
  }

  impl = self->_impl;
  v10 = 0;
  [(CNContactPosterDataStore *)impl executeCreateRequest:v5 error:&v10];
  v8 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CNContactPosterDataStore executeCreateRequest:error:];
  }

  return 1;
}

- (BOOL)executeUpdateRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CNContactPosterDataStore executeCreateRequest:error:];
  }

  impl = self->_impl;
  v10 = 0;
  [(CNContactPosterDataStore *)impl executeUpdateRequest:v5 error:&v10];
  v8 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CNContactPosterDataStore executeCreateRequest:error:];
  }

  return 1;
}

- (BOOL)executeDeleteRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CNContactPosterDataStore executeCreateRequest:error:];
  }

  impl = self->_impl;
  v10 = 0;
  [(CNContactPosterDataStore *)impl executeDeleteRequest:v5 error:&v10];
  v8 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CNContactPosterDataStore executeCreateRequest:error:];
  }

  return 1;
}

+ (void)currentProcessLacksPosterAPIAccess_impl
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6996708] errorWithErrno];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1954A0000, a1, OS_LOG_TYPE_ERROR, "Error checking sandbox status, will assume current process is correctly sandboxed: %@", v3, 0xCu);
}

- (void)executeFetchRequest:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)executeFetchRequest:(void *)a1 error:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1954A0000, a2, OS_LOG_TYPE_DEBUG, "Did fetch %lu items", v3, 0xCu);
}

- (void)executeFetchRequest:error:.cold.3()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1954A0000, v0, OS_LOG_TYPE_ERROR, "Error fetching items: %@", v1, 0xCu);
}

- (void)countForFetchRequest:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)countForFetchRequest:error:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)executeCreateRequest:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)executeCreateRequest:error:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end