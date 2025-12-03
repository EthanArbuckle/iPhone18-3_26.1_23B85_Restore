@interface ACPersonaManager
+ (ACPersonaManager)sharedInstance;
+ (BOOL)performWithinPersona:(id)persona withBlock:(id)block;
+ (void)_changePersonaContextUsingPersonaID:(id)d withCompletion:(id)completion;
+ (void)performWithinPersonaForAccount:(id)account withBlock:(id)block;
+ (void)performWithinPersonaForAccountIdentifier:(id)identifier withBlock:(id)block;
- (ACPersonaManager)init;
- (NSArray)dataSeparatedPersonasUIDs;
- (NSSet)guestPersonasUIDs;
- (NSString)enterprisePersonaUID;
- (NSString)personalPersonaUID;
- (id)_cacheURL;
- (id)store;
- (void)_lockedLoadCache;
- (void)_lockedSaveCurrentCache;
- (void)_lockedUpdatePersonasUIDsIfNeeded;
- (void)init;
- (void)updatePersonasUIDs;
@end

@implementation ACPersonaManager

+ (ACPersonaManager)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[ACPersonaManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __34__ACPersonaManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(ACPersonaManager);

  return MEMORY[0x1EEE66BB8]();
}

- (ACPersonaManager)init
{
  v6.receiver = self;
  v6.super_class = ACPersonaManager;
  v2 = [(ACPersonaManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_personaStorageLock._os_unfair_lock_opaque = 0;
    v4 = _ACPLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [ACPersonaManager init];
    }

    [(ACPersonaManager *)v3 _lockedLoadCache];
    [(ACPersonaManager *)v3 _lockedUpdatePersonasUIDsIfNeeded];
  }

  return v3;
}

- (void)updatePersonasUIDs
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v5 = __38__ACPersonaManager_updatePersonasUIDs__block_invoke;
  v6 = &unk_1E7975AD8;
  selfCopy = self;
  v3 = v4;
  os_unfair_lock_lock(&self->_personaStorageLock);
  v5(v3);
  os_unfair_lock_unlock(&self->_personaStorageLock);
}

- (void)_lockedUpdatePersonasUIDsIfNeeded
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_1(&dword_1AC3CD000, v0, v1, "personaAttributes: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (id)_cacheURL
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [defaultManager URLsForDirectory:5 inDomains:1];
  firstObject = [v3 firstObject];

  v5 = [firstObject URLByAppendingPathComponent:@"Accounts" isDirectory:1];
  v6 = [v5 URLByAppendingPathComponent:@"persona.cache" isDirectory:0];

  return v6;
}

- (void)_lockedSaveCurrentCache
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1(&dword_1AC3CD000, v0, v1, "There was an error generating the plist data %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_lockedLoadCache
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1(&dword_1AC3CD000, v0, v1, "@Unable to load cache, %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (NSString)enterprisePersonaUID
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__ACPersonaManager_enterprisePersonaUID__block_invoke;
  v4[3] = &unk_1E7975428;
  v4[4] = self;
  v2 = ac_unfair_lock_perform_with_result_1(&self->_personaStorageLock, v4);

  return v2;
}

id __40__ACPersonaManager_enterprisePersonaUID__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _lockedUpdatePersonasUIDsIfNeeded];
  v2 = *(*(a1 + 32) + 24);

  return v2;
}

- (NSString)personalPersonaUID
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__ACPersonaManager_personalPersonaUID__block_invoke;
  v4[3] = &unk_1E7975428;
  v4[4] = self;
  v2 = ac_unfair_lock_perform_with_result_1(&self->_personaStorageLock, v4);

  return v2;
}

id __38__ACPersonaManager_personalPersonaUID__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _lockedUpdatePersonasUIDsIfNeeded];
  v2 = *(*(a1 + 32) + 32);

  return v2;
}

- (NSSet)guestPersonasUIDs
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__ACPersonaManager_guestPersonasUIDs__block_invoke;
  v4[3] = &unk_1E7975428;
  v4[4] = self;
  v2 = ac_unfair_lock_perform_with_result_1(&self->_personaStorageLock, v4);

  return v2;
}

id __37__ACPersonaManager_guestPersonasUIDs__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _lockedUpdatePersonasUIDsIfNeeded];
  v2 = *(*(a1 + 32) + 40);

  return v2;
}

- (NSArray)dataSeparatedPersonasUIDs
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__ACPersonaManager_dataSeparatedPersonasUIDs__block_invoke;
  v4[3] = &unk_1E7975428;
  v4[4] = self;
  v2 = ac_unfair_lock_perform_with_result_1(&self->_personaStorageLock, v4);

  return v2;
}

id __45__ACPersonaManager_dataSeparatedPersonasUIDs__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _lockedUpdatePersonasUIDsIfNeeded];
  v2 = *(*(a1 + 32) + 48);

  return v2;
}

- (id)store
{
  store = self->_store;
  if (!store)
  {
    v4 = objc_alloc_init(ACAccountStore);
    v5 = self->_store;
    self->_store = v4;

    store = self->_store;
  }

  return store;
}

+ (void)performWithinPersonaForAccountIdentifier:(id)identifier withBlock:(id)block
{
  blockCopy = block;
  identifierCopy = identifier;
  v7 = +[ACPersonaManager sharedInstance];
  store = [v7 store];
  v9 = [store accountWithIdentifier:identifierCopy];

  [ACPersonaManager performWithinPersonaForAccount:v9 withBlock:blockCopy];
}

+ (void)performWithinPersonaForAccount:(id)account withBlock:(id)block
{
  accountCopy = account;
  if (!accountCopy)
  {
    v10 = MEMORY[0x1E69DF060];
    blockCopy = block;
    sharedManager = [v10 sharedManager];
    currentPersona = [sharedManager currentPersona];
    userPersonaNickName = [currentPersona userPersonaNickName];

    v13 = _ACPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[ACPersonaManager performWithinPersonaForAccount:withBlock:];
    }

    blockCopy[2](blockCopy);
    goto LABEL_8;
  }

  blockCopy2 = block;
  userPersonaNickName = [accountCopy personaIdentifier];
  v8 = [objc_opt_class() performWithinPersona:userPersonaNickName withBlock:blockCopy2];

  if ((v8 & 1) == 0)
  {
    blockCopy = _ACPLogSystem();
    if (os_log_type_enabled(blockCopy, OS_LOG_TYPE_FAULT))
    {
      [ACPersonaManager performWithinPersonaForAccount:accountCopy withBlock:blockCopy];
    }

LABEL_8:
  }
}

+ (BOOL)performWithinPersona:(id)persona withBlock:(id)block
{
  personaCopy = persona;
  blockCopy = block;
  mEMORY[0x1E69DF060] = [MEMORY[0x1E69DF060] sharedManager];
  currentPersona = [mEMORY[0x1E69DF060] currentPersona];

  if (personaCopy)
  {
    userPersonaUniqueString = [currentPersona userPersonaUniqueString];
    v10 = [userPersonaUniqueString isEqualToString:personaCopy];

    if (v10)
    {
      personalPersonaUID = 0;
    }

    else
    {
      v15 = _ACPLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [ACPersonaManager performWithinPersona:currentPersona withBlock:?];
      }

      personalPersonaUID = personaCopy;
    }
  }

  else if (([currentPersona isEnterprisePersona] & 1) != 0 || objc_msgSend(currentPersona, "isGuestPersona"))
  {
    v12 = +[ACPersonaManager sharedInstance];
    personalPersonaUID = [v12 personalPersonaUID];

    v13 = _ACPLogSystem();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (personalPersonaUID)
    {
      if (v14)
      {
        +[ACPersonaManager performWithinPersona:withBlock:];
      }
    }

    else
    {
      if (v14)
      {
        +[ACPersonaManager performWithinPersona:withBlock:];
      }

      personalPersonaUID = 0;
    }

    v10 = 0;
  }

  else
  {
    personalPersonaUID = 0;
    v10 = 1;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__ACPersonaManager_performWithinPersona_withBlock___block_invoke;
  v18[3] = &unk_1E7976E98;
  v19 = blockCopy;
  v16 = blockCopy;
  [ACPersonaManager _changePersonaContextUsingPersonaID:personalPersonaUID withCompletion:v18];

  return v10;
}

void __51__ACPersonaManager_performWithinPersona_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E69DF060] sharedManager];
    v5 = [v4 currentPersona];

    v6 = _ACPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __51__ACPersonaManager_performWithinPersona_withBlock___block_invoke_cold_1(v5);
    }

    (*(*(a1 + 32) + 16))();
    v7 = [MEMORY[0x1E69DF060] sharedManager];
    v8 = [v7 currentPersona];

    v9 = [v8 restorePersonaWithSavedPersonaContext:v3];
    v10 = _ACPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __51__ACPersonaManager_performWithinPersona_withBlock___block_invoke_cold_2();
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

+ (void)_changePersonaContextUsingPersonaID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v7 = completionCopy;
  if (dCopy)
  {
    v8 = _ACPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[ACPersonaManager _changePersonaContextUsingPersonaID:withCompletion:];
    }

    mEMORY[0x1E69DF060] = [MEMORY[0x1E69DF060] sharedManager];
    currentPersona = [mEMORY[0x1E69DF060] currentPersona];

    v21 = 0;
    v11 = [currentPersona copyCurrentPersonaContextWithError:&v21];
    v12 = v21;
    if (!v11)
    {
      v18 = _ACPLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[ACPersonaManager _changePersonaContextUsingPersonaID:withCompletion:];
      }

      v7[2](v7, 0);
      goto LABEL_24;
    }

    v13 = [currentPersona createPersonaContextForBackgroundProcessingWithPersonaUniqueString:dCopy];

    if (!v13)
    {
      (v7)[2](v7, v11);
LABEL_24:

      goto LABEL_25;
    }

    domain = [v13 domain];
    v15 = *MEMORY[0x1E696A798];
    if ([domain isEqualToString:*MEMORY[0x1E696A798]])
    {
      code = [v13 code];

      if (code == 1)
      {
        domain2 = _ACPLogSystem();
        if (os_log_type_enabled(domain2, OS_LOG_TYPE_ERROR))
        {
          +[ACPersonaManager _changePersonaContextUsingPersonaID:withCompletion:];
        }

        goto LABEL_20;
      }
    }

    else
    {
    }

    domain2 = [v13 domain];
    if ([domain2 isEqualToString:v15])
    {
      code2 = [v13 code];

      if (code2 != 22)
      {
LABEL_21:
        v20 = _ACPLogSystem();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          +[ACPersonaManager _changePersonaContextUsingPersonaID:withCompletion:];
        }

        v7[2](v7, 0);
        goto LABEL_24;
      }

      domain2 = _ACPLogSystem();
      if (os_log_type_enabled(domain2, OS_LOG_TYPE_ERROR))
      {
        +[ACPersonaManager _changePersonaContextUsingPersonaID:withCompletion:];
      }
    }

LABEL_20:

    goto LABEL_21;
  }

  (*(completionCopy + 2))(completionCopy, 0);
LABEL_25:
}

- (void)init
{
  v6 = *MEMORY[0x1E69E9840];
  ACIsAccountsd();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)performWithinPersonaForAccount:(void *)a1 withBlock:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a1 accountType];
  v5 = [v4 accountTypeDescription];
  v8 = 138412546;
  v9 = a1;
  OUTLINED_FUNCTION_3();
  v10 = v6;
  _os_log_fault_impl(&dword_1AC3CD000, a2, OS_LOG_TYPE_FAULT, "Operation on account (%@) of type (%@) was not properly scoped.", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)performWithinPersonaForAccount:withBlock:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1(&dword_1AC3CD000, v0, v1, "No account found for scoping operation! Performing block within %@ persona.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)performWithinPersona:(void *)a1 withBlock:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 userPersonaNickName];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)performWithinPersona:withBlock:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1(&dword_1AC3CD000, v0, v1, "We are currently running in the Enterprise or Guest persona, but shouldn't be! Will set to %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __51__ACPersonaManager_performWithinPersona_withBlock___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [a1 userPersonaNickName];
  v3 = [a1 userPersonaUniqueString];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __51__ACPersonaManager_performWithinPersona_withBlock___block_invoke_cold_2()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DF060] sharedManager];
  v1 = [v0 currentPersona];
  v2 = [v1 userPersonaNickName];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)_changePersonaContextUsingPersonaID:withCompletion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_1(&dword_1AC3CD000, v0, v1, "Changing persona to %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_changePersonaContextUsingPersonaID:withCompletion:.cold.4()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  v4 = v0;
  _os_log_error_impl(&dword_1AC3CD000, v1, OS_LOG_TYPE_ERROR, "Failed to set persona ID (%@) with error %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_changePersonaContextUsingPersonaID:withCompletion:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1(&dword_1AC3CD000, v0, v1, "Could not get current persona context with error %@. Leaving current persona intact.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end