@interface ACDKeychainCleanupActivity
+ (ACDKeychainCleanupActivity)sharedActivity;
- (ACDKeychainCleanupActivity)init;
- (BOOL)_removeExpiredCredentials;
- (void)_activityQueue_checkIn;
- (void)_activityQueue_configureXPCActivityWithCriteria:(id)criteria;
- (void)_activityQueue_queueCredentialItemWithAccount:(id)account serviceName:(id)name;
- (void)_activityQueue_registerXPCActivityWithCriteria:(id)criteria;
- (void)_activityQueue_removeCredentialItem:(id)item withCompletionHandler:(id)handler;
- (void)_activityQueue_removeExpiredCredentials;
- (void)_activityQueue_unregisterActivity;
- (void)checkInIfNecessary;
- (void)queueNonPersistentCredentialRemoval:(id)removal;
@end

@implementation ACDKeychainCleanupActivity

+ (ACDKeychainCleanupActivity)sharedActivity
{
  if (sharedActivity_onceToken != -1)
  {
    +[ACDKeychainCleanupActivity sharedActivity];
  }

  v3 = sharedActivity_sharedCleanupActivity;

  return v3;
}

uint64_t __44__ACDKeychainCleanupActivity_sharedActivity__block_invoke()
{
  sharedActivity_sharedCleanupActivity = objc_alloc_init(ACDKeychainCleanupActivity);

  return MEMORY[0x2821F96F8]();
}

- (ACDKeychainCleanupActivity)init
{
  v9.receiver = self;
  v9.super_class = ACDKeychainCleanupActivity;
  v2 = [(ACDKeychainCleanupActivity *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CB8F48]);
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.accounts.cleanup.activity", v5);
    activityQueue = v2->_activityQueue;
    v2->_activityQueue = v6;
  }

  return v2;
}

- (void)checkInIfNecessary
{
  activityQueue = self->_activityQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ACDKeychainCleanupActivity_checkInIfNecessary__block_invoke;
  block[3] = &unk_27848BF78;
  block[4] = self;
  dispatch_async(activityQueue, block);
}

void __48__ACDKeychainCleanupActivity_checkInIfNecessary__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) allCredentialItems];
  v3 = [MEMORY[0x277CB8F98] sharedInstance];
  v4 = [v3 dataSeparatedPersonasUIDs];

  if ([v2 count])
  {
    [*(a1 + 32) _activityQueue_checkIn];
  }

  else
  {
    v5 = [v4 count];
    v6 = _ACLogSystem();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_221D2F000, v6, OS_LOG_TYPE_DEFAULT, "Making sure we don't have to do cleanup for an enterprise or guest account.", buf, 2u);
      }

      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v16 = v4;
      obj = v4;
      v8 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v20 + 1) + 8 * i);
            v13 = MEMORY[0x277CB8F98];
            v18[0] = MEMORY[0x277D85DD0];
            v18[1] = 3221225472;
            v18[2] = __48__ACDKeychainCleanupActivity_checkInIfNecessary__block_invoke_5;
            v18[3] = &unk_27848BFF0;
            v18[4] = *(a1 + 32);
            v19 = v6;
            [v13 performWithinPersona:v12 withBlock:v18];
          }

          v9 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v9);
      }

      if ([v6 count])
      {
        [*(a1 + 32) _activityQueue_checkIn];
      }

      else
      {
        v14 = _ACLogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_221D2F000, v14, OS_LOG_TYPE_DEFAULT, "No enterprise nor guest credentials items queued for deletion, will not start cleanup activity.", buf, 2u);
        }
      }

      v4 = v16;
    }

    else if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_221D2F000, v6, OS_LOG_TYPE_DEFAULT, "No credentials items queued for deletion, will not start cleanup activity.", buf, 2u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __48__ACDKeychainCleanupActivity_checkInIfNecessary__block_invoke_5(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allCredentialItems];
  if ([v2 count])
  {
    [*(a1 + 40) addObjectsFromArray:v2];
  }
}

- (void)queueNonPersistentCredentialRemoval:(id)removal
{
  removalCopy = removal;
  v5 = MEMORY[0x277CB8F38];
  accountType = [removalCopy accountType];
  identifier = [accountType identifier];
  credentialType = [removalCopy credentialType];
  v9 = [v5 nonPersistentKeysForAccountTypeIdentifier:identifier credentialType:credentialType];

  if ([v9 count])
  {
    activityQueue = self->_activityQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__ACDKeychainCleanupActivity_queueNonPersistentCredentialRemoval___block_invoke;
    block[3] = &unk_27848C0B8;
    v12 = v9;
    selfCopy = self;
    v14 = removalCopy;
    dispatch_async(activityQueue, block);
  }
}

uint64_t __66__ACDKeychainCleanupActivity_queueNonPersistentCredentialRemoval___block_invoke(id *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = a1[5];
        v9 = [a1[6] copy];
        [v8 _activityQueue_queueCredentialItemWithAccount:v9 serviceName:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  result = [a1[5] _activityQueue_checkIn];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_activityQueue_checkIn
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(xdict, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_int64(xdict, *MEMORY[0x277D86288], *MEMORY[0x277D862C0]);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86360], 1);
  [(ACDKeychainCleanupActivity *)self _activityQueue_configureXPCActivityWithCriteria:xdict];
}

- (void)_activityQueue_queueCredentialItemWithAccount:(id)account serviceName:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  nameCopy = name;
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:300.0];
  v9 = [(ACAccountStore *)self->_accountStore credentialItemForAccount:accountCopy serviceName:nameCopy];
  if (v9)
  {
    v10 = v9;
    [v9 setExpirationDate:v8];
    v11 = _ACLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_221D2F000, v11, OS_LOG_TYPE_DEFAULT, "Extending credential item: %@ expiration date: %@", &v16, 0x16u);
    }

    [(ACAccountStore *)self->_accountStore saveCredentialItem:v10 withCompletionHandler:&__block_literal_global_10_0];
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277CB8F60]);
    identifier = [accountCopy identifier];
    v10 = [v12 initWithAccountIdentifier:identifier serviceName:nameCopy];

    [v10 setExpirationDate:v8];
    [v10 setPersistent:0];
    v14 = _ACLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_221D2F000, v14, OS_LOG_TYPE_DEFAULT, "Creating credential item: %@ expiration date: %@", &v16, 0x16u);
    }

    [(ACAccountStore *)self->_accountStore insertCredentialItem:v10 withCompletionHandler:&__block_literal_global_10_0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __88__ACDKeychainCleanupActivity__activityQueue_queueCredentialItemWithAccount_serviceName___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = _ACLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __88__ACDKeychainCleanupActivity__activityQueue_queueCredentialItemWithAccount_serviceName___block_invoke_cold_1(v3, v4);
    }
  }
}

- (void)_activityQueue_configureXPCActivityWithCriteria:(id)criteria
{
  v13 = *MEMORY[0x277D85DE8];
  criteriaCopy = criteria;
  xpcActivity = self->_xpcActivity;
  if (xpcActivity)
  {
    v6 = xpc_activity_copy_criteria(xpcActivity);
    v7 = v6;
    if (v6 && xpc_equal(v6, criteriaCopy))
    {
      v8 = _ACLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_221D2F000, v8, OS_LOG_TYPE_DEFAULT, "XPC criteria not changed, ignoring criteria.", &v11, 2u);
      }
    }

    else
    {
      v9 = _ACLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = criteriaCopy;
        _os_log_impl(&dword_221D2F000, v9, OS_LOG_TYPE_DEFAULT, "Configuring keychain cleanup activity: %@", &v11, 0xCu);
      }

      xpc_activity_set_criteria(self->_xpcActivity, criteriaCopy);
    }
  }

  else
  {
    [(ACDKeychainCleanupActivity *)self _activityQueue_registerXPCActivityWithCriteria:criteriaCopy];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_activityQueue_registerXPCActivityWithCriteria:(id)criteria
{
  criteriaCopy = criteria;
  v5 = _ACLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221D2F000, v5, OS_LOG_TYPE_DEFAULT, "Starting up XPC activity...", buf, 2u);
  }

  v6 = *MEMORY[0x277D86238];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__ACDKeychainCleanupActivity__activityQueue_registerXPCActivityWithCriteria___block_invoke;
  v8[3] = &unk_27848D1B8;
  v8[4] = self;
  v9 = criteriaCopy;
  v7 = criteriaCopy;
  xpc_activity_register("com.apple.accounts.cleanup", v6, v8);
}

void __77__ACDKeychainCleanupActivity__activityQueue_registerXPCActivityWithCriteria___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  v5 = _ACLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLong:state];
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_221D2F000, v5, OS_LOG_TYPE_DEFAULT, "XPC Activity block invoked with state %@...", buf, 0xCu);
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 24);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__ACDKeychainCleanupActivity__activityQueue_registerXPCActivityWithCriteria___block_invoke_13;
  v12[3] = &unk_27848BE10;
  v12[4] = v8;
  v13 = v3;
  v15 = state;
  v14 = v7;
  v10 = v3;
  dispatch_async(v9, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __77__ACDKeychainCleanupActivity__activityQueue_registerXPCActivityWithCriteria___block_invoke_13(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  if (*(a1 + 56) == 2)
  {
    v2 = *(a1 + 32);

    [v2 _activityQueue_removeExpiredCredentials];
  }

  else if (*(a1 + 48))
  {
    v3 = _ACLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_221D2F000, v3, OS_LOG_TYPE_DEFAULT, "Setting cleanup activity criteria...", v4, 2u);
    }

    xpc_activity_set_criteria(*(*(a1 + 32) + 16), *(a1 + 48));
  }
}

- (void)_activityQueue_removeExpiredCredentials
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = _os_activity_create(&dword_221D2F000, "accounts/keychain-cleanup-activity", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = _ACLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221D2F000, v4, OS_LOG_TYPE_DEFAULT, "Running cleanup activity credential removal...", buf, 2u);
  }

  *buf = 0;
  v23 = buf;
  v24 = 0x2020000000;
  _removeExpiredCredentials = [(ACDKeychainCleanupActivity *)self _removeExpiredCredentials];
  mEMORY[0x277CB8F98] = [MEMORY[0x277CB8F98] sharedInstance];
  dataSeparatedPersonasUIDs = [mEMORY[0x277CB8F98] dataSeparatedPersonasUIDs];

  if ([dataSeparatedPersonasUIDs count])
  {
    v7 = _ACLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [dataSeparatedPersonasUIDs count];
      *v28 = 134217984;
      v29 = v8;
      _os_log_impl(&dword_221D2F000, v7, OS_LOG_TYPE_DEFAULT, "We have %ld enterprise or guest persona(s). Running cleanup within those personas as well.", v28, 0xCu);
    }

    v15 = dataSeparatedPersonasUIDs;
    v16 = v3;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = dataSeparatedPersonasUIDs;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v27 count:16];
    if (v10)
    {
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __69__ACDKeychainCleanupActivity__activityQueue_removeExpiredCredentials__block_invoke;
          v17[3] = &unk_27848C308;
          v17[4] = self;
          v17[5] = buf;
          [MEMORY[0x277CB8F98] performWithinPersona:v13 withBlock:{v17, v15, v16}];
          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v18 objects:v27 count:16];
      }

      while (v10);
    }

    dataSeparatedPersonasUIDs = v15;
    v3 = v16;
  }

  if (v23[24] == 1)
  {
    [(ACDKeychainCleanupActivity *)self _activityQueue_unregisterActivity];
  }

  _Block_object_dispose(buf, 8);
  os_activity_scope_leave(&state);

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __69__ACDKeychainCleanupActivity__activityQueue_removeExpiredCredentials__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24) == 1)
  {
    result = [*(a1 + 32) _removeExpiredCredentials];
    v1 = *(*(a1 + 40) + 8);
  }

  else
  {
    result = 0;
  }

  *(v1 + 24) = result;
  return result;
}

- (BOOL)_removeExpiredCredentials
{
  v26 = *MEMORY[0x277D85DE8];
  allCredentialItems = [(ACAccountStore *)self->_accountStore allCredentialItems];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  if ([allCredentialItems count])
  {
    v4 = dispatch_semaphore_create(0);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__ACDKeychainCleanupActivity__removeExpiredCredentials__block_invoke;
    aBlock[3] = &unk_27848D1E0;
    v20 = &v21;
    v5 = v4;
    v19 = v5;
    v6 = _Block_copy(aBlock);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = allCredentialItems;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v25 count:16];
    if (v8)
    {
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [(ACDKeychainCleanupActivity *)self _activityQueue_removeCredentialItem:*(*(&v14 + 1) + 8 * v10) withCompletionHandler:v6, v14];
          dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v14 objects:v25 count:16];
      }

      while (v8);
    }
  }

  v11 = *(v22 + 24);
  _Block_object_dispose(&v21, 8);

  v12 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

void __55__ACDKeychainCleanupActivity__removeExpiredCredentials__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 domain];
  if ([v5 isEqualToString:*MEMORY[0x277CB8DC0]])
  {
    v6 = [v4 code];

    if (v6 == 23)
    {
      v7 = _ACLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_221D2F000, v7, OS_LOG_TYPE_DEFAULT, "Credential item not yet expired, will remove later", v8, 2u);
      }

LABEL_9:

      *(*(*(a1 + 40) + 8) + 24) = 0;
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (v4)
  {
    v7 = _ACLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__ACDKeychainCleanupActivity__removeExpiredCredentials__block_invoke_cold_1(v4, v7);
    }

    goto LABEL_9;
  }

LABEL_10:
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_activityQueue_removeCredentialItem:(id)item withCompletionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  handlerCopy = handler;
  v8 = _ACLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = itemCopy;
    _os_log_impl(&dword_221D2F000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to remove credential item (and keychain item) for %@", buf, 0xCu);
  }

  if (![itemCopy isExpired])
  {
    v14 = MEMORY[0x277CCACA8];
    expirationDate = [itemCopy expirationDate];
    v11 = [v14 stringWithFormat:@"The credential item %@ is set to expire in the future, at %@", itemCopy, expirationDate];

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CB8DC0];
    v21 = *MEMORY[0x277CCA450];
    v22 = v11;
    serviceName = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v13 = [v16 errorWithDomain:v17 code:23 userInfo:serviceName];
    goto LABEL_7;
  }

  accountStore = self->_accountStore;
  accountIdentifier = [itemCopy accountIdentifier];
  v11 = [(ACAccountStore *)accountStore accountWithIdentifier:accountIdentifier];

  if (v11)
  {
    serviceName = [itemCopy serviceName];
    v20 = 0;
    [ACDKeychainManager removeCredentialForAccount:v11 key:serviceName error:&v20];
    v13 = v20;
LABEL_7:
    v18 = v13;

    goto LABEL_8;
  }

  v18 = 0;
LABEL_8:

  if (v18)
  {
    handlerCopy[2](handlerCopy, 0, v18);
  }

  else
  {
    [(ACAccountStore *)self->_accountStore removeCredentialItem:itemCopy withCompletionHandler:handlerCopy];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_activityQueue_unregisterActivity
{
  v3 = _ACLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_221D2F000, v3, OS_LOG_TYPE_DEFAULT, "Stopping keychain cleanup activity...", v5, 2u);
  }

  xpc_activity_unregister("com.apple.accounts.cleanup");
  xpcActivity = self->_xpcActivity;
  self->_xpcActivity = 0;
}

void __88__ACDKeychainCleanupActivity__activityQueue_queueCredentialItemWithAccount_serviceName___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_221D2F000, a2, OS_LOG_TYPE_ERROR, "Failed to save credential item: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __55__ACDKeychainCleanupActivity__removeExpiredCredentials__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_221D2F000, a2, OS_LOG_TYPE_ERROR, "Failed to remove credential item: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end