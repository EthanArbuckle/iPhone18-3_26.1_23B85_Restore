@interface ACDAuthenticationPluginManager
+ (id)_sanitizeError:(id)error;
- (ACDAuthenticationPluginManager)initWithAuthenticationPluginLoader:(id)loader;
- (BOOL)_renewalRequestIsWithinLimitsForAccount:(id)account accountStore:(id)store;
- (BOOL)isPushSupportedForAccount:(id)account;
- (id)_authCapableParentAccountForAccount:(id)account;
- (id)_authenticationTypeForAccount:(id)account;
- (id)_descriptionForRenewalResult:(int64_t)result;
- (id)_unsanitizeOptionsDictionary:(id)dictionary;
- (unint64_t)renewalCredentialTimeout;
- (void)_handleDiscoveryCompletionResult:(id)result forAccount:(id)account discoveryID:(id)d accountStore:(id)store shouldSave:(BOOL)save error:(id)error;
- (void)_handleRenewalCompletionResult:(int64_t)result forAccount:(id)account renewalID:(id)d accountStore:(id)store error:(id)error;
- (void)_handleVerificationCompletionForAccount:(id)account verifiedAccount:(id)verifiedAccount error:(id)error store:(id)store shouldSave:(BOOL)save;
- (void)credentialForAccount:(id)account client:(id)client store:(id)store handler:(id)handler;
- (void)discoverPropertiesForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion;
- (void)renewCredentialsForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion;
- (void)setRenewalRateLimiter:(id)limiter;
- (void)verifyCredentialsForAccount:(id)account accountStore:(id)store options:(id)options handler:(id)handler;
@end

@implementation ACDAuthenticationPluginManager

- (ACDAuthenticationPluginManager)initWithAuthenticationPluginLoader:(id)loader
{
  loaderCopy = loader;
  v28.receiver = self;
  v28.super_class = ACDAuthenticationPluginManager;
  v6 = [(ACDAuthenticationPluginManager *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authPluginLoader, loader);
    v8 = objc_alloc_init(ACDQueueDictionary);
    verificationHandlerQueues = v7->_verificationHandlerQueues;
    v7->_verificationHandlerQueues = v8;

    v10 = objc_alloc_init(ACDQueueDictionary);
    renewalHandlerQueues = v7->_renewalHandlerQueues;
    v7->_renewalHandlerQueues = v10;

    v12 = objc_alloc_init(ACDQueueDictionary);
    discoveryHandlerQueues = v7->_discoveryHandlerQueues;
    v7->_discoveryHandlerQueues = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    keysForRateExceededBugSent = v7->_keysForRateExceededBugSent;
    v7->_keysForRateExceededBugSent = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("AuthenticationPluginQueue", v16);
    authenticationPluginQueue = v7->_authenticationPluginQueue;
    v7->_authenticationPluginQueue = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    authenticationPluginsByType = v7->_authenticationPluginsByType;
    v7->_authenticationPluginsByType = v19;

    v21 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    verificationHandlersLock = v7->_verificationHandlersLock;
    v7->_verificationHandlersLock = v21;

    v23 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    renewalHandlersLock = v7->_renewalHandlersLock;
    v7->_renewalHandlersLock = v23;

    v25 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    discoveryHandlersLock = v7->_discoveryHandlersLock;
    v7->_discoveryHandlersLock = v25;
  }

  return v7;
}

- (BOOL)isPushSupportedForAccount:(id)account
{
  v16 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v5 = _ACDLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager isPushSupportedForAccount:];
  }

  v6 = [(ACDAuthenticationPluginManager *)self _authenticationTypeForAccount:accountCopy];
  v7 = _ACDLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager isPushSupportedForAccount:];
  }

  v8 = [(ACDAuthenticationPluginLoader *)self->_authPluginLoader pluginForAuthenticationType:v6];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 isPushSupportedForAccount:accountCopy];
  }

  else
  {
    v10 = _ACDLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = accountCopy;
      _os_log_impl(&dword_221D2F000, v10, OS_LOG_TYPE_DEFAULT, "The plugin for account %@ does not implement isPushSupportedForAccount:", &v14, 0xCu);
    }

    v9 = 0;
  }

  v11 = _ACDLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager isPushSupportedForAccount:v9];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)credentialForAccount:(id)account client:(id)client store:(id)store handler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  clientCopy = client;
  storeCopy = store;
  handlerCopy = handler;
  v14 = _ACDLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager credentialForAccount:client:store:handler:];
  }

  v15 = [(ACDAuthenticationPluginManager *)self _authenticationTypeForAccount:accountCopy];
  v16 = _ACDLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager credentialForAccount:client:store:handler:];
  }

  v17 = [(ACDAuthenticationPluginLoader *)self->_authPluginLoader pluginForAuthenticationType:v15];
  if (!v17)
  {
    v20 = _ACDLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [ACDAuthenticationPluginManager credentialForAccount:accountCopy client:? store:? handler:?];
    }

    v21 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CB8DC0];
    v23 = -101;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v18 = [v17 credentialForAccount:accountCopy client:clientCopy];
    v19 = 0;
    goto LABEL_17;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v28 = 0;
      v18 = [v17 credentialForAccount:accountCopy client:clientCopy store:storeCopy error:&v28];
      v24 = v28;
      goto LABEL_16;
    }

    v27 = _ACDLogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = accountCopy;
      _os_log_impl(&dword_221D2F000, v27, OS_LOG_TYPE_DEFAULT, "The plugin for account %@ does not implement credentialForAccount", buf, 0xCu);
    }

    v21 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CB8DC0];
    v23 = -102;
LABEL_11:
    v19 = [v21 errorWithDomain:v22 code:v23 userInfo:0];
    v18 = 0;
    goto LABEL_17;
  }

  v29 = 0;
  v18 = [v17 credentialForAccount:accountCopy client:clientCopy error:&v29];
  v24 = v29;
LABEL_16:
  v19 = v24;
LABEL_17:
  v25 = _ACDLogSystem();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v31 = v18;
    v32 = 2112;
    v33 = accountCopy;
    v34 = 2112;
    v35 = clientCopy;
    _os_log_debug_impl(&dword_221D2F000, v25, OS_LOG_TYPE_DEBUG, "Returning credential %@ for account %@ to %@.", buf, 0x20u);
  }

  handlerCopy[2](handlerCopy, v18, v19);
  v26 = *MEMORY[0x277D85DE8];
}

- (void)verifyCredentialsForAccount:(id)account accountStore:(id)store options:(id)options handler:(id)handler
{
  v63 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  storeCopy = store;
  aBlock = handler;
  v11 = [(ACDAuthenticationPluginManager *)self _unsanitizeOptionsDictionary:options];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CB90B0]];
  bOOLValue = [v12 BOOLValue];

  v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277CB9050]];
  bOOLValue2 = [v13 BOOLValue];

  v15 = _ACDLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v40 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    client = [storeCopy client];
    *buf = 138412802;
    v58 = accountCopy;
    v59 = 2112;
    v60 = v40;
    v61 = 2112;
    v62 = client;
    _os_log_debug_impl(&dword_221D2F000, v15, OS_LOG_TYPE_DEBUG, "verifyCredentialsForAccount %@ (should save? %@) was called for client %@...", buf, 0x20u);
  }

  if (bOOLValue2)
  {
    accountType = [accountCopy accountType];
    identifier = [accountType identifier];
  }

  else
  {
    identifier = [(ACDAuthenticationPluginManager *)self _authenticationTypeForAccount:accountCopy];
  }

  v18 = _ACDLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager verifyCredentialsForAccount:accountStore:options:handler:];
  }

  v19 = [(ACDAuthenticationPluginLoader *)self->_authPluginLoader pluginForAuthenticationType:identifier];
  if (v19)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (bOOLValue2)
    {
      v21 = accountCopy;
    }

    else
    {
      v21 = [(ACDAuthenticationPluginManager *)selfCopy _authCapableParentAccountForAccount:accountCopy];
    }

    v29 = v21;
    [(NSLock *)selfCopy->_verificationHandlersLock lock];
    verificationHandlerQueues = selfCopy->_verificationHandlerQueues;
    identifier2 = [v29 identifier];
    v32 = [(ACDQueueDictionary *)verificationHandlerQueues isQueueEmptyForKey:identifier2];
    if ((v32 & 1) == 0)
    {
      v33 = [v11 objectForKeyedSubscript:*MEMORY[0x277CB9048]];
      bOOLValue3 = [v33 BOOLValue];

      if (bOOLValue3)
      {
        v32 = 1;
        goto LABEL_19;
      }

      identifier2 = _ACDLogSystem();
      if (os_log_type_enabled(identifier2, OS_LOG_TYPE_DEBUG))
      {
        [ACDAuthenticationPluginManager verifyCredentialsForAccount:accountStore:options:handler:];
      }
    }

LABEL_19:
    v35 = selfCopy->_verificationHandlerQueues;
    v36 = _Block_copy(aBlock);
    identifier3 = [v29 identifier];
    [(ACDQueueDictionary *)v35 addObject:v36 toQueueForKey:identifier3];

    [(NSLock *)selfCopy->_verificationHandlersLock unlock];
    if (v32)
    {
      authenticationPluginQueue = selfCopy->_authenticationPluginQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __91__ACDAuthenticationPluginManager_verifyCredentialsForAccount_accountStore_options_handler___block_invoke;
      block[3] = &unk_27848C950;
      v47 = accountCopy;
      v48 = v29;
      v53 = a2;
      v49 = v19;
      v50 = selfCopy;
      v51 = storeCopy;
      v54 = bOOLValue;
      v52 = v11;
      dispatch_async(authenticationPluginQueue, block);
    }

    objc_sync_exit(selfCopy);
    goto LABEL_22;
  }

  v22 = _ACDLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [ACDAuthenticationPluginManager verifyCredentialsForAccount:accountCopy accountStore:? options:? handler:?];
  }

  v23 = MEMORY[0x277CCACA8];
  accountType2 = [accountCopy accountType];
  identifier4 = [accountType2 identifier];
  selfCopy = [v23 stringWithFormat:@"No auth plugin to verify credentials for accounts of type %@", identifier4];

  v26 = MEMORY[0x277CCA9B8];
  v55 = *MEMORY[0x277CCA450];
  v56 = selfCopy;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  v28 = [v26 errorWithDomain:*MEMORY[0x277CB8DC0] code:4 userInfo:v27];
  (*(aBlock + 2))(aBlock, 0, v28);

LABEL_22:
  v39 = *MEMORY[0x277D85DE8];
}

void __91__ACDAuthenticationPluginManager_verifyCredentialsForAccount_accountStore_options_handler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CB8F98];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__ACDAuthenticationPluginManager_verifyCredentialsForAccount_accountStore_options_handler___block_invoke_2;
  v9[3] = &unk_27848C950;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v14 = *(a1 + 80);
  v8 = *(a1 + 56);
  v6 = *(&v8 + 1);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v10 = v7;
  v11 = v8;
  v15 = *(a1 + 88);
  v12 = *(a1 + 72);
  v13 = *(a1 + 32);
  [v2 performWithinPersonaForAccount:v3 withBlock:v9];
}

void __91__ACDAuthenticationPluginManager_verifyCredentialsForAccount_accountStore_options_handler___block_invoke_2(uint64_t a1)
{
  v2 = _ACDLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __91__ACDAuthenticationPluginManager_verifyCredentialsForAccount_accountStore_options_handler___block_invoke_2_cold_1(a1);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__ACDAuthenticationPluginManager_verifyCredentialsForAccount_accountStore_options_handler___block_invoke_18;
  aBlock[3] = &unk_27848C928;
  v3 = *(a1 + 40);
  v26 = *(a1 + 80);
  *&v4 = v3;
  *(&v4 + 1) = *(a1 + 48);
  v22 = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v24 = v22;
  v25 = v7;
  v27 = *(a1 + 88);
  v8 = _Block_copy(aBlock);
  v9 = *(a1 + 40);
  v10 = objc_opt_respondsToSelector();
  v11 = *(a1 + 40);
  if (v10)
  {
    v12 = [*(a1 + 32) copy];
    [v11 verifyCredentialsForAccount:v12 accountStore:*(a1 + 56) options:*(a1 + 64) completion:v8];
  }

  else
  {
    v13 = *(a1 + 40);
    v14 = objc_opt_respondsToSelector();
    v15 = *(a1 + 40);
    if (v14)
    {
      v12 = [*(a1 + 32) copy];
      [v15 verifyCredentialsForAccount:v12 accountStore:*(a1 + 56) completion:v8];
    }

    else
    {
      v16 = *(a1 + 40);
      if (objc_opt_respondsToSelector())
      {
        v17 = *(a1 + 40);
        v12 = [*(a1 + 32) copy];
        v18 = [*(a1 + 56) client];
        [v17 verifyCredentialsForAccount:v12 client:v18 withHandler:v8];
      }

      else
      {
        v19 = _ACDLogSystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          __91__ACDAuthenticationPluginManager_verifyCredentialsForAccount_accountStore_options_handler___block_invoke_2_cold_2(a1);
        }

        v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:-102 userInfo:0];
        v20 = *(a1 + 48);
        v21 = [*(a1 + 32) copy];
        [v20 _handleVerificationCompletionForAccount:v21 verifiedAccount:0 error:v12 store:*(a1 + 56) shouldSave:0];
      }
    }
  }
}

void __91__ACDAuthenticationPluginManager_verifyCredentialsForAccount_accountStore_options_handler___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2 == 0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 64);
  v8 = a3;
  v9 = a2;
  _ACCOUNTS_IS_VALIDATING_PLUGIN_RESPONSE(v5, v8, v6, v7);
  v12 = [v9 accountByCleaningThirdPartyTransformations];

  v10 = [ACDAuthenticationPluginManager _sanitizeError:v8];

  v11 = [v10 ac_secureCodingError];

  [*(a1 + 40) _handleVerificationCompletionForAccount:*(a1 + 48) verifiedAccount:v12 error:v11 store:*(a1 + 56) shouldSave:*(a1 + 72)];
}

- (void)_handleVerificationCompletionForAccount:(id)account verifiedAccount:(id)verifiedAccount error:(id)error store:(id)store shouldSave:(BOOL)save
{
  saveCopy = save;
  v47 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  verifiedAccountCopy = verifiedAccount;
  errorCopy = error;
  storeCopy = store;
  v16 = _ACDLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v42 = accountCopy;
    v43 = 2112;
    v44 = verifiedAccountCopy;
    v45 = 2112;
    v46 = errorCopy;
    _os_log_debug_impl(&dword_221D2F000, v16, OS_LOG_TYPE_DEBUG, "ACDAuthenticationPluginManager _handleVerificationCompletion: plugin reports being done for account %@. Verified account is %@ and error is %@", buf, 0x20u);
  }

  if (verifiedAccountCopy)
  {
    [verifiedAccountCopy setAuthenticated:1];
    v17 = _ACDLogSystem();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
    if (saveCopy)
    {
      if (v18)
      {
        [ACDAuthenticationPluginManager _handleVerificationCompletionForAccount:verifiedAccount:error:store:shouldSave:];
      }

      v39 = 0;
      v19 = [storeCopy saveVerifiedAccount:verifiedAccountCopy error:&v39];
      v20 = v39;
      v21 = _ACDLogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v34 = [MEMORY[0x277CCABB0] numberWithBool:v19];
        *buf = 138412802;
        v42 = verifiedAccountCopy;
        v43 = 2112;
        v44 = v34;
        v45 = 2112;
        v46 = v20;
        _os_log_debug_impl(&dword_221D2F000, v21, OS_LOG_TYPE_DEBUG, "ACDAuthenticationPluginManager _handleVerificationCompletion: saving verified account %@ completed with result %@ and error %@", buf, 0x20u);
      }

      client = [storeCopy client];
      v23 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

      if (v23)
      {
        [verifiedAccountCopy setCredential:0];
      }
    }

    else
    {
      if (v18)
      {
        [ACDAuthenticationPluginManager _handleVerificationCompletionForAccount:verifiedAccount:error:store:shouldSave:];
      }

      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v24 = _ACDLogSystem();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager _handleVerificationCompletionForAccount:verifiedAccount:error:store:shouldSave:];
  }

  [(NSLock *)self->_verificationHandlersLock lock];
  verificationHandlerQueues = self->_verificationHandlerQueues;
  identifier = [accountCopy identifier];
  v27 = [(ACDQueueDictionary *)verificationHandlerQueues dequeueAllObjectsInQueueForKey:identifier];

  [(NSLock *)self->_verificationHandlersLock unlock];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = v27;
  v29 = [v28 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v36;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(v28);
        }

        (*(*(*(&v35 + 1) + 8 * i) + 16))(*(*(&v35 + 1) + 8 * i));
      }

      v30 = [v28 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v30);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (unint64_t)renewalCredentialTimeout
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults persistentDomainForName:@"com.apple.accounts"];
  v4 = [v3 objectForKeyedSubscript:@"renewalCredentialTimeout"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
    if ((unsignedIntegerValue - 1) >= 0xE0F)
    {
      v6 = 3600;
    }

    else
    {
      v6 = unsignedIntegerValue;
    }
  }

  else
  {
    v6 = 3600;
  }

  return v6;
}

- (void)renewCredentialsForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion
{
  v111 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  val = store;
  aBlock = completion;
  v75 = [(ACDAuthenticationPluginManager *)self _unsanitizeOptionsDictionary:options];
  mEMORY[0x277CB8F78] = [MEMORY[0x277CB8F78] sharedInstance];
  v11 = [mEMORY[0x277CB8F78] valueForManagedDefault:*MEMORY[0x277CB8F08]];
  bOOLValue = [v11 BOOLValue];

  v13 = [v75 objectForKey:*MEMORY[0x277CB90A0]];
  bOOLValue2 = [v13 BOOLValue];

  v14 = [v75 objectForKey:*MEMORY[0x277CB9098]];
  bOOLValue3 = [v14 BOOLValue];

  v16 = [v75 objectForKeyedSubscript:*MEMORY[0x277CB9050]];
  bOOLValue4 = [v16 BOOLValue];

  v70 = [v75 objectForKey:*MEMORY[0x277CB9088]];
  v18 = _ACDLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    client = [val client];
    v20 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue2];
    v21 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue3];
    *buf = 138413314;
    v102 = accountCopy;
    v103 = 2114;
    v104 = client;
    v105 = 2112;
    v106 = v70;
    v107 = 2114;
    v108 = v20;
    v109 = 2114;
    v110 = v21;
    _os_log_impl(&dword_221D2F000, v18, OS_LOG_TYPE_DEFAULT, "renewCredentialsForAccount %@ was called by client %{public}@ with reason %@ shouldForce %{public}@ shouldAvoidUI %{public}@", buf, 0x34u);
  }

  if (bOOLValue4)
  {
    accountType = [accountCopy accountType];
    identifier = [accountType identifier];
  }

  else
  {
    identifier = [(ACDAuthenticationPluginManager *)self _authenticationTypeForAccount:accountCopy];
  }

  v23 = _ACDLogSystem();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager renewCredentialsForAccount:accountStore:options:completion:];
  }

  if (bOOLValue)
  {
    v24 = _ACDLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [ACDAuthenticationPluginManager renewCredentialsForAccount:accountStore:options:completion:];
    }

    aBlock[2](aBlock, 1, 0);
  }

  else
  {
    v25 = [(ACDAuthenticationPluginLoader *)self->_authPluginLoader pluginForAuthenticationType:identifier];
    if (v25)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v76 = selfCopy;
      if (bOOLValue4)
      {
        v67 = accountCopy;
      }

      else
      {
        v67 = [(ACDAuthenticationPluginManager *)selfCopy _authCapableParentAccountForAccount:accountCopy];
      }

      if (objc_opt_respondsToSelector())
      {
        v35 = [v25 renewalIDsForAccount:v67 accountStore:val options:v75];
      }

      else if (objc_opt_respondsToSelector())
      {
        v36 = [v25 renewalIDForAccount:v67];
        v37 = v36;
        if (v36)
        {
          v98 = v36;
          v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
        }

        else
        {
          v35 = 0;
        }
      }

      else
      {
        v35 = 0;
      }

      if (![v35 count])
      {
        identifier2 = [v67 identifier];
        v97 = identifier2;
        v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v97 count:1];

        v35 = v39;
      }

      v40 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v35, "count")}];
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      obj = v35;
      v41 = [obj countByEnumeratingWithState:&v91 objects:v96 count:16];
      if (v41)
      {
        v42 = *v92;
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v92 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v44 = *(*(&v91 + 1) + 8 * i);
            v45 = MEMORY[0x277CCACA8];
            v46 = objc_opt_class();
            v47 = NSStringFromClass(v46);
            v48 = [v45 stringWithFormat:@"%@.%@", v47, v44];

            [v40 addObject:v48];
          }

          v41 = [obj countByEnumeratingWithState:&v91 objects:v96 count:16];
        }

        while (v41);
      }

      [(NSLock *)v76->_renewalHandlersLock lock];
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v49 = v40;
      v50 = [v49 countByEnumeratingWithState:&v87 objects:v95 count:16];
      if (v50)
      {
        v51 = *v88;
        v52 = *MEMORY[0x277CB9048];
LABEL_38:
        v53 = 0;
        while (1)
        {
          if (*v88 != v51)
          {
            objc_enumerationMutation(v49);
          }

          v54 = *(*(&v87 + 1) + 8 * v53);
          if (![(ACDQueueDictionary *)v76->_renewalHandlerQueues isQueueEmptyForKey:v54])
          {
            v55 = [v75 objectForKeyedSubscript:v52];
            bOOLValue5 = [v55 BOOLValue];

            if ((bOOLValue5 & 1) == 0)
            {
              break;
            }
          }

          if (v50 == ++v53)
          {
            v50 = [v49 countByEnumeratingWithState:&v87 objects:v95 count:16];
            if (v50)
            {
              goto LABEL_38;
            }

            goto LABEL_45;
          }
        }

        v57 = v54;

        if (!v57)
        {
          goto LABEL_50;
        }

        v58 = _ACDLogSystem();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v102 = accountCopy;
          v103 = 2112;
          v104 = v57;
          _os_log_impl(&dword_221D2F000, v58, OS_LOG_TYPE_DEFAULT, "It appears we are already renewing credentials for account %@ with renewal ID %@. We will enqueue the current request's completion handler and call it when done.", buf, 0x16u);
        }

        renewalHandlerQueues = v76->_renewalHandlerQueues;
        v60 = _Block_copy(aBlock);
        [(ACDQueueDictionary *)renewalHandlerQueues addObject:v60 toQueueForKey:v57];
        v61 = 0;
        v62 = 0;
      }

      else
      {
LABEL_45:

LABEL_50:
        if ((bOOLValue2 & 1) != 0 || [(ACDAuthenticationPluginManager *)v76 _renewalRequestIsWithinLimitsForAccount:accountCopy accountStore:val])
        {
          v63 = _ACDLogSystem();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v102 = accountCopy;
            v103 = 2112;
            v104 = 0;
            _os_log_impl(&dword_221D2F000, v63, OS_LOG_TYPE_DEFAULT, "Allow new renewal for account %@ with renewal ID %@.", buf, 0x16u);
          }

          v57 = [v49 objectAtIndexedSubscript:0];
          v64 = v76->_renewalHandlerQueues;
          v60 = _Block_copy(aBlock);
          [(ACDQueueDictionary *)v64 addObject:v60 toQueueForKey:v57];
          v62 = 0;
          v61 = 1;
        }

        else
        {
          v60 = _ACDLogSystem();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v102 = accountCopy;
            v103 = 2112;
            v104 = 0;
            _os_log_impl(&dword_221D2F000, v60, OS_LOG_TYPE_DEFAULT, "Limit renewal for account %@ with renewal ID %@.", buf, 0x16u);
          }

          v61 = 0;
          v57 = 0;
          v62 = 1;
        }
      }

      [(NSLock *)v76->_renewalHandlersLock unlock];
      if (v62)
      {
        aBlock[2](aBlock, 1, 0);
      }

      else if (v61)
      {
        objc_initWeak(buf, val);
        authenticationPluginQueue = v76->_authenticationPluginQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke;
        block[3] = &unk_27848C9C8;
        v79 = accountCopy;
        v80 = v76;
        v81 = v25;
        v86[1] = a2;
        objc_copyWeak(v86, buf);
        v82 = v67;
        v83 = v57;
        v84 = v75;
        v85 = v70;
        dispatch_async(authenticationPluginQueue, block);

        objc_destroyWeak(v86);
        objc_destroyWeak(buf);
      }

      v31 = v76;
      objc_sync_exit(v76);
    }

    else
    {
      v27 = _ACDLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [ACDAuthenticationPluginManager renewCredentialsForAccount:accountCopy accountStore:? options:? completion:?];
      }

      v28 = MEMORY[0x277CCACA8];
      accountType2 = [accountCopy accountType];
      identifier3 = [accountType2 identifier];
      v31 = [v28 stringWithFormat:@"No auth plugin to renew credentials for accounts of type %@", identifier3];

      v32 = MEMORY[0x277CCA9B8];
      v99 = *MEMORY[0x277CCA450];
      v100 = v31;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      v34 = [v32 errorWithDomain:*MEMORY[0x277CB8DC0] code:4 userInfo:v33];
      (aBlock)[2](aBlock, 2, v34);
    }
  }

  v66 = *MEMORY[0x277D85DE8];
}

void __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CB8F98];
  v3 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_2;
  v9[3] = &unk_27848C9C8;
  v4 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  v7 = v6;
  v8 = *(a1 + 96);
  v12 = v7;
  v17[1] = v8;
  objc_copyWeak(v17, (a1 + 88));
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  [v2 performWithinPersonaForAccount:v4 withBlock:v9];

  objc_destroyWeak(v17);
}

void __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_2(uint64_t a1)
{
  v2 = _ACDLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_2_cold_1(a1);
  }

  v3 = [*(a1 + 40) renewalCredentialTimeout];
  v4 = [MEMORY[0x277CB8FB0] expirerWithTimeout:v3];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_49;
  v29[3] = &unk_27848C978;
  v5 = v4;
  v30 = v5;
  v31 = *(a1 + 48);
  v32 = v3;
  [v5 scheduleExpiration:v29];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_63;
  v22 = &unk_27848C9A0;
  v6 = *(a1 + 48);
  v7 = *(a1 + 96);
  v23 = v6;
  v28[1] = v7;
  v8 = v5;
  v24 = v8;
  objc_copyWeak(v28, (a1 + 88));
  v25 = *(a1 + 40);
  v26 = *(a1 + 56);
  v27 = *(a1 + 64);
  v9 = _Block_copy(&v19);
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    v11 = *(a1 + 48);
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 48) renewCredentialsForAccount:*(a1 + 56) accountStore:WeakRetained options:*(a1 + 72) completion:{v9, v19, v20, v21, v22, v23, v24, v25, v26}];
      goto LABEL_19;
    }

    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 48) renewCredentialsForAccount:*(a1 + 56) accountStore:WeakRetained reason:*(a1 + 80) completion:{v9, v19, v20, v21, v22, v23, v24, v25, v26}];
      goto LABEL_19;
    }

    v12 = _ACDLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_2_cold_2(a1);
    }

    v13 = -102;
  }

  else
  {
    v12 = _ACDLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_2_cold_3();
    }

    v13 = 10002;
  }

  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:v13 userInfo:{0, v19, v20, v21, v22, v23, v24, v25, v26}];
  [v8 cancelTimer];
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = WeakRetained;
  v18 = *(a1 + 64);
  if (!WeakRetained)
  {
    v17 = [MEMORY[0x277CB8F48] defaultStore];
  }

  [v16 _handleRenewalCompletionResult:2 forAccount:v15 renewalID:v18 accountStore:v17 error:v14];
  if (!WeakRetained)
  {
  }

LABEL_19:
  objc_destroyWeak(v28);
}

void __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_49(uint64_t a1)
{
  [*(a1 + 32) cancelTimer];
  v2 = _ACDLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_49_cold_1(a1);
  }

  if (ACIsInternal())
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Slow Credential Renewal: %@", *(a1 + 40)];
    [ACDPluginAnalyticsSender openTapToRadarWithAlertTitle:@"Slow Credential Renewal" alertDescription:@"Accounts is tracking issues with slow or stuck credential renewals TTRTitle:please help us out by filing a radar via Tap-To-Radar" TTRDescription:v3, @"I was informed of a slow or hung authentication plugin, please investigate."];
  }
}

void __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_63(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a2 == 2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 80);
  v8 = a3;
  _ACCOUNTS_IS_VALIDATING_PLUGIN_RESPONSE(v5, v8, v6, v7);
  [*(a1 + 40) cancelTimer];
  v9 = [ACDAuthenticationPluginManager _sanitizeError:v8];

  v15 = [v9 ac_secureCodingError];

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v12 = *(a1 + 48);
  v11 = *(a1 + 56);
  v13 = *(a1 + 64);
  if (WeakRetained)
  {
    [v12 _handleRenewalCompletionResult:a2 forAccount:v11 renewalID:v13 accountStore:WeakRetained error:v15];
  }

  else
  {
    v14 = [MEMORY[0x277CB8F48] defaultStore];
    [v12 _handleRenewalCompletionResult:a2 forAccount:v11 renewalID:v13 accountStore:v14 error:v15];
  }
}

- (BOOL)_renewalRequestIsWithinLimitsForAccount:(id)account accountStore:(id)store
{
  v48 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  storeCopy = store;
  identifier = [accountCopy identifier];
  v9 = [storeCopy accountWithIdentifier:identifier];

  lastCredentialRenewalRejectionDate = [v9 lastCredentialRenewalRejectionDate];
  if (lastCredentialRenewalRejectionDate && ([MEMORY[0x277CBEAA8] date], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "timeIntervalSinceDate:", lastCredentialRenewalRejectionDate), v13 = v12, v11, v13 < 86400.0))
  {
    v14 = _ACDLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = accountCopy;
      _os_log_impl(&dword_221D2F000, v14, OS_LOG_TYPE_DEFAULT, "The user has declined an identical request to renew credentials for %@ within the past 24 hours. Suppressing the password prompt and failing immediately.", buf, 0xCu);
    }

    v15 = 0;
  }

  else
  {
    v16 = MEMORY[0x277CCACA8];
    client = [storeCopy client];
    bundleID = [client bundleID];
    identifier2 = [accountCopy identifier];
    v20 = DMIsMigrationNeeded();
    v21 = @"NO";
    if (v20)
    {
      v21 = @"YES";
    }

    v14 = [v16 stringWithFormat:@"%@.%@.%@", bundleID, identifier2, v21];

    renewalRateLimiter = [(ACDAuthenticationPluginLoader *)self->_authPluginLoader renewalRateLimiter];
    v15 = [renewalRateLimiter reservePerformActionForKey:v14];

    if ((v15 & 1) == 0)
    {
      v23 = _ACDLogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        accountType = [accountCopy accountType];
        identifier3 = [accountType identifier];
        v30 = MEMORY[0x277CCABB0];
        renewalRateLimiter2 = [(ACDAuthenticationPluginLoader *)self->_authPluginLoader renewalRateLimiter];
        v31 = [v30 numberWithUnsignedInteger:{objc_msgSend(renewalRateLimiter2, "maximum")}];
        v32 = MEMORY[0x277CCABB0];
        renewalRateLimiter3 = [(ACDAuthenticationPluginLoader *)self->_authPluginLoader renewalRateLimiter];
        [renewalRateLimiter3 timeInterval];
        v34 = [v32 numberWithDouble:v33 / 60.0];
        *buf = 138544130;
        v41 = v14;
        v42 = 2114;
        v43 = identifier3;
        v44 = 2114;
        v45 = v31;
        v46 = 2114;
        v47 = v34;
        _os_log_error_impl(&dword_221D2F000, v23, OS_LOG_TYPE_ERROR, "%{public}@ (%{public}@) exceeded %{public}@ renewals per %{public}@ minutes -- rejecting", buf, 0x2Au);
      }

      if (([(NSMutableSet *)self->_keysForRateExceededBugSent containsObject:v14]& 1) == 0)
      {
        [accountCopy accountType];
        v24 = v38 = self;
        identifier4 = [v24 identifier];
        client2 = [storeCopy client];
        bundleID2 = [client2 bundleID];
        [ACDAutoBugCapture triggerAutoBugCaptureWithType:0x28353A2D8 subType:0x28353A318 subtypeContext:identifier4 detectedProcess:bundleID2];

        [(NSMutableSet *)v38->_keysForRateExceededBugSent addObject:v14];
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)_handleRenewalCompletionResult:(int64_t)result forAccount:(id)account renewalID:(id)d accountStore:(id)store error:(id)error
{
  v46 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  dCopy = d;
  storeCopy = store;
  errorCopy = error;
  v16 = _ACDLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v33 = [(ACDAuthenticationPluginManager *)self _descriptionForRenewalResult:result];
    *buf = 138412802;
    v41 = accountCopy;
    v42 = 2112;
    v43 = v33;
    v44 = 2112;
    v45 = errorCopy;
    _os_log_debug_impl(&dword_221D2F000, v16, OS_LOG_TYPE_DEBUG, "ACDAuthenticationPluginManager _handleRenewalCompletion: plugin reports being done for account %@ with result %@ and error %@", buf, 0x20u);
  }

  v17 = errorCopy;
  v18 = v17;
  if (result || v17)
  {
    v19 = v17;
    if (result != 1)
    {
      goto LABEL_16;
    }

    date = [MEMORY[0x277CBEAA8] date];
    [accountCopy setLastCredentialRenewalRejectionDate:date];
  }

  else
  {
    [accountCopy setAuthenticated:1];
  }

  v21 = _ACDLogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager _handleRenewalCompletionResult:forAccount:renewalID:accountStore:error:];
  }

  v38 = 0;
  v22 = [storeCopy saveVerifiedAccount:accountCopy error:&v38];
  v23 = v38;
  v19 = v18;
  if ((v22 & 1) == 0)
  {
    v24 = _ACDLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [ACDAuthenticationPluginManager _handleRenewalCompletionResult:forAccount:renewalID:accountStore:error:];
    }

    v19 = v18;
    if (!v18)
    {
      v19 = v23;
    }
  }

LABEL_16:
  v25 = _ACDLogSystem();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager _handleRenewalCompletionResult:forAccount:renewalID:accountStore:error:];
  }

  [(NSLock *)self->_renewalHandlersLock lock];
  v26 = [(ACDQueueDictionary *)self->_renewalHandlerQueues dequeueAllObjectsInQueueForKey:dCopy];
  [(NSLock *)self->_renewalHandlersLock unlock];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = v26;
  v28 = [v27 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v35;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v35 != v30)
        {
          objc_enumerationMutation(v27);
        }

        (*(*(*(&v34 + 1) + 8 * i) + 16))(*(*(&v34 + 1) + 8 * i));
      }

      v29 = [v27 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v29);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)discoverPropertiesForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion
{
  v61[1] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  storeCopy = store;
  aBlock = completion;
  optionsCopy = options;
  v12 = _ACDLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager discoverPropertiesForAccount:accountCopy accountStore:storeCopy options:? completion:?];
  }

  v13 = [(ACDAuthenticationPluginManager *)self _unsanitizeOptionsDictionary:optionsCopy];

  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CB9050]];
  bOOLValue = [v14 BOOLValue];

  v16 = *MEMORY[0x277CB9078];
  v17 = [v13 objectForKeyedSubscript:*MEMORY[0x277CB9078]];
  if (v17)
  {
    objectID = [v13 objectForKeyedSubscript:v16];
    bOOLValue2 = [objectID BOOLValue];
  }

  else
  {
    objectID = [accountCopy objectID];
    bOOLValue2 = objectID != 0;
  }

  if (bOOLValue)
  {
    accountType = [accountCopy accountType];
    identifier = [accountType identifier];
  }

  else
  {
    identifier = [(ACDAuthenticationPluginManager *)self _authenticationTypeForAccount:accountCopy];
  }

  v21 = _ACDLogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager discoverPropertiesForAccount:accountStore:options:completion:];
  }

  v22 = [(ACDAuthenticationPluginLoader *)self->_authPluginLoader pluginForAuthenticationType:identifier];
  if (v22)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (bOOLValue)
    {
      v24 = accountCopy;
    }

    else
    {
      v24 = [(ACDAuthenticationPluginManager *)selfCopy _authCapableParentAccountForAccount:accountCopy];
    }

    v32 = v24;
    v33 = MEMORY[0x277CCACA8];
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    identifier2 = [v32 identifier];
    v37 = [v33 stringWithFormat:@"%@.%@", v35, identifier2];

    [(NSLock *)selfCopy->_discoveryHandlersLock lock];
    if (-[ACDQueueDictionary isQueueEmptyForKey:](selfCopy->_discoveryHandlerQueues, "isQueueEmptyForKey:", v37) || ([v13 objectForKeyedSubscript:*MEMORY[0x277CB9048]], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "BOOLValue"), v38, (v39 & 1) != 0))
    {
      v40 = 1;
    }

    else
    {
      v41 = _ACDLogSystem();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        [ACDAuthenticationPluginManager discoverPropertiesForAccount:accountStore:options:completion:];
      }

      v40 = 0;
    }

    discoveryHandlerQueues = selfCopy->_discoveryHandlerQueues;
    v43 = _Block_copy(aBlock);
    [(ACDQueueDictionary *)discoveryHandlerQueues addObject:v43 toQueueForKey:v37];

    [(NSLock *)selfCopy->_discoveryHandlersLock unlock];
    if (v40)
    {
      authenticationPluginQueue = selfCopy->_authenticationPluginQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __95__ACDAuthenticationPluginManager_discoverPropertiesForAccount_accountStore_options_completion___block_invoke;
      block[3] = &unk_27848CA18;
      v51 = accountCopy;
      v52 = v32;
      v58 = a2;
      v53 = v22;
      v54 = selfCopy;
      v55 = v37;
      v56 = storeCopy;
      v59 = bOOLValue2;
      v57 = v13;
      dispatch_async(authenticationPluginQueue, block);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v25 = _ACDLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [ACDAuthenticationPluginManager discoverPropertiesForAccount:accountCopy accountStore:? options:? completion:?];
    }

    v26 = MEMORY[0x277CCACA8];
    accountType2 = [accountCopy accountType];
    identifier3 = [accountType2 identifier];
    selfCopy = [v26 stringWithFormat:@"No auth plugin to discover properties for accounts of type %@", identifier3];

    v29 = MEMORY[0x277CCA9B8];
    v60 = *MEMORY[0x277CCA450];
    v61[0] = selfCopy;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:&v60 count:1];
    v31 = [v29 errorWithDomain:*MEMORY[0x277CB8DC0] code:4 userInfo:v30];
    (*(aBlock + 2))(aBlock, 0, v31);
  }

  v45 = *MEMORY[0x277D85DE8];
}

void __95__ACDAuthenticationPluginManager_discoverPropertiesForAccount_accountStore_options_completion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CB8F98];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __95__ACDAuthenticationPluginManager_discoverPropertiesForAccount_accountStore_options_completion___block_invoke_2;
  v9[3] = &unk_27848C950;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v14 = *(a1 + 88);
  v8 = *(a1 + 56);
  v6 = *(&v8 + 1);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v10 = v7;
  v11 = v8;
  v12 = *(a1 + 72);
  v15 = *(a1 + 96);
  v13 = *(a1 + 80);
  [v2 performWithinPersonaForAccount:v3 withBlock:v9];
}

void __95__ACDAuthenticationPluginManager_discoverPropertiesForAccount_accountStore_options_completion___block_invoke_2(uint64_t a1)
{
  v2 = _ACDLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __95__ACDAuthenticationPluginManager_discoverPropertiesForAccount_accountStore_options_completion___block_invoke_2_cold_1(a1);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__ACDAuthenticationPluginManager_discoverPropertiesForAccount_accountStore_options_completion___block_invoke_84;
  aBlock[3] = &unk_27848C9F0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v18 = *(a1 + 80);
  *&v5 = v3;
  *(&v5 + 1) = *(a1 + 48);
  v13 = v5;
  v6 = v4;
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v15 = v13;
  v16 = v8;
  v17 = *(a1 + 64);
  v19 = *(a1 + 88);
  v9 = _Block_copy(aBlock);
  v10 = *(a1 + 40);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) discoverPropertiesForAccount:*(a1 + 32) accountStore:*(a1 + 64) options:*(a1 + 72) completion:v9];
  }

  else
  {
    v11 = _ACDLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __95__ACDAuthenticationPluginManager_discoverPropertiesForAccount_accountStore_options_completion___block_invoke_2_cold_2((a1 + 32));
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:-102 userInfo:0];
    [*(a1 + 48) _handleDiscoveryCompletionResult:0 forAccount:*(a1 + 32) discoveryID:*(a1 + 56) accountStore:*(a1 + 64) shouldSave:*(a1 + 88) error:v12];
  }
}

void __95__ACDAuthenticationPluginManager_discoverPropertiesForAccount_accountStore_options_completion___block_invoke_84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2 == 0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 72);
  v8 = a3;
  v9 = a2;
  _ACCOUNTS_IS_VALIDATING_PLUGIN_RESPONSE(v5, v8, v6, v7);
  v10 = [ACDAuthenticationPluginManager _sanitizeError:v8];

  v11 = [v10 ac_secureCodingError];

  [*(a1 + 40) _handleDiscoveryCompletionResult:v9 forAccount:*(a1 + 48) discoveryID:*(a1 + 56) accountStore:*(a1 + 64) shouldSave:*(a1 + 80) error:v11];
}

- (void)_handleDiscoveryCompletionResult:(id)result forAccount:(id)account discoveryID:(id)d accountStore:(id)store shouldSave:(BOOL)save error:(id)error
{
  saveCopy = save;
  v38 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  accountCopy = account;
  dCopy = d;
  storeCopy = store;
  errorCopy = error;
  v19 = _ACDLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [ACDAuthenticationPluginManager _handleDiscoveryCompletionResult:forAccount:discoveryID:accountStore:shouldSave:error:];
  }

  v20 = errorCopy;
  if (!errorCopy)
  {
    v20 = 0;
    if (saveCopy)
    {
      v21 = _ACDLogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [ACDAuthenticationPluginManager _handleDiscoveryCompletionResult:forAccount:discoveryID:accountStore:shouldSave:error:];
      }

      v36 = 0;
      v22 = [storeCopy saveVerifiedAccount:accountCopy error:&v36];
      v23 = v36;
      v20 = 0;
      if ((v22 & 1) == 0)
      {
        v24 = _ACDLogSystem();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [ACDAuthenticationPluginManager _handleDiscoveryCompletionResult:forAccount:discoveryID:accountStore:shouldSave:error:];
        }

        v20 = v23;
      }
    }
  }

  [(NSLock *)self->_discoveryHandlersLock lock];
  v25 = [(ACDQueueDictionary *)self->_discoveryHandlerQueues dequeueAllObjectsInQueueForKey:dCopy];
  [(NSLock *)self->_discoveryHandlersLock unlock];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v26 = v25;
  v27 = [v26 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v33;
    do
    {
      v30 = 0;
      do
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v26);
        }

        (*(*(*(&v32 + 1) + 8 * v30) + 16))(*(*(&v32 + 1) + 8 * v30));
        ++v30;
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v28);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)_authenticationTypeForAccount:(id)account
{
  accountCopy = account;
  authenticationType = [accountCopy authenticationType];
  v6 = *MEMORY[0x277CB90B8];
  if ([authenticationType isEqualToString:*MEMORY[0x277CB90B8]])
  {
    v7 = _ACDLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ACDAuthenticationPluginManager _authenticationTypeForAccount:];
    }

    accountType2 = objc_alloc_init(MEMORY[0x277CB8F48]);
    parentAccountIdentifier = [accountCopy parentAccountIdentifier];
    v10 = [accountType2 accountWithIdentifier:parentAccountIdentifier];

    authenticationType2 = [v10 authenticationType];
    if ([authenticationType2 isEqualToString:v6])
    {
      v12 = [(ACDAuthenticationPluginManager *)self _authenticationTypeForAccount:v10];
    }

    else
    {
      v16 = _ACDLogSystem();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
      if (!authenticationType2)
      {
        if (v17)
        {
          [ACDAuthenticationPluginManager _authenticationTypeForAccount:v10];
        }

        accountType = [v10 accountType];
        identifier = [accountType identifier];

        goto LABEL_15;
      }

      if (v17)
      {
        [ACDAuthenticationPluginManager _authenticationTypeForAccount:];
      }

      v12 = authenticationType2;
    }

    identifier = v12;
LABEL_15:

LABEL_19:
    goto LABEL_20;
  }

  v13 = _ACDLogSystem();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (!authenticationType)
  {
    if (v14)
    {
      [ACDAuthenticationPluginManager _authenticationTypeForAccount:accountCopy];
    }

    accountType2 = [accountCopy accountType];
    identifier = [accountType2 identifier];
    goto LABEL_19;
  }

  if (v14)
  {
    [ACDAuthenticationPluginManager _authenticationTypeForAccount:];
  }

  identifier = authenticationType;
LABEL_20:

  return identifier;
}

- (id)_authCapableParentAccountForAccount:(id)account
{
  accountCopy = account;
  authenticationType = [accountCopy authenticationType];
  v5 = *MEMORY[0x277CB90B8];
  v6 = [authenticationType isEqualToString:*MEMORY[0x277CB90B8]];

  parentAccount = accountCopy;
  if (v6)
  {
    v8 = accountCopy;
    do
    {
      parentAccount = [v8 parentAccount];

      authenticationType2 = [parentAccount authenticationType];
      v10 = [authenticationType2 isEqualToString:v5];

      v8 = parentAccount;
    }

    while ((v10 & 1) != 0);
  }

  return parentAccount;
}

- (id)_descriptionForRenewalResult:(int64_t)result
{
  if (result > 2)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_27848CA60[result];
  }
}

+ (id)_sanitizeError:(id)error
{
  v35[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = *MEMORY[0x277CCA738];
  v6 = [domain isEqualToString:*MEMORY[0x277CCA738]];

  if (v6)
  {
    userInfo = [errorCopy userInfo];
    v8 = [userInfo mutableCopy];

    userInfo2 = [errorCopy userInfo];
    v10 = *MEMORY[0x277CCA750];
    v11 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CCA750]];

    if (v11)
    {
      TypeID = SecTrustGetTypeID();
      if (TypeID == CFGetTypeID(v11))
      {
        [v8 setObject:0 forKeyedSubscript:v10];
        v13 = SecTrustSerialize();
        [v8 setObject:v13 forKeyedSubscript:@"NSURLErrorFailingURLPeerTrustErrorKey_AC_SANITIZED"];
      }
    }

    v14 = [v8 objectForKeyedSubscript:@"NSErrorPeerCertificateChainKey"];
    v15 = v14;
    if (v14)
    {
      v34 = @"c";
      v35[0] = v14;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      v17 = serializeSecCertificates();
      [v8 setObject:v17 forKeyedSubscript:@"NSErrorPeerCertificateChainKey_AC_SANITIZED"];

      [v8 setObject:0 forKeyedSubscript:@"NSErrorPeerCertificateChainKey"];
    }

    v18 = [v8 objectForKeyedSubscript:@"NSErrorClientCertificateChainKey"];
    v19 = v18;
    if (v18)
    {
      v32 = @"c";
      v33 = v18;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v21 = serializeSecCertificates();
      [v8 setObject:v21 forKeyedSubscript:@"NSErrorClientCertificateChainKey_AC_SANITIZED"];

      [v8 setObject:0 forKeyedSubscript:@"NSErrorClientCertificateChainKey"];
    }

    [v8 removeObjectForKey:*MEMORY[0x277CCA7E8]];
    userInfo3 = [errorCopy userInfo];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __49__ACDAuthenticationPluginManager__sanitizeError___block_invoke;
    v30 = &unk_27848CA40;
    v31 = v8;
    v23 = v8;
    [userInfo3 enumerateKeysAndObjectsUsingBlock:&v27];

    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:v5 code:objc_msgSend(errorCopy userInfo:{"code", v27, v28, v29, v30), v23}];
  }

  else
  {
    v24 = errorCopy;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

void __49__ACDAuthenticationPluginManager__sanitizeError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (([a3 conformsToProtocol:&unk_283547950] & 1) == 0)
  {
    v6 = _ACDLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __49__ACDAuthenticationPluginManager__sanitizeError___block_invoke_cold_1();
    }

    [*(a1 + 32) removeObjectForKey:v5];
  }
}

- (id)_unsanitizeOptionsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = *MEMORY[0x277CB8FD8];
  v5 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CB8FD8]];
  if (v5)
  {
    v6 = [dictionaryCopy mutableCopy];
    v7 = unserializeSecCertificates();
    [v6 setObject:v7 forKeyedSubscript:v4];
  }

  else
  {
    v6 = dictionaryCopy;
  }

  return v6;
}

- (void)setRenewalRateLimiter:(id)limiter
{
  if (limiter)
  {
    authPluginLoader = self->_authPluginLoader;

    [(ACDAuthenticationPluginLoader *)authPluginLoader setRenewalRateLimiter:?];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CB8FA0]) initWithMaximum:60 inTimeInterval:3600.0];
    [(ACDAuthenticationPluginLoader *)self->_authPluginLoader setRenewalRateLimiter:v5];
  }
}

- (void)isPushSupportedForAccount:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "Entering isPushSupportedForAccount: for account %@...", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isPushSupportedForAccount:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "isPushSupportedForAccount: using authType: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isPushSupportedForAccount:(char)a1 .cold.3(char a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithBool:a1 & 1];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)credentialForAccount:client:store:handler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "Entering credentialForAccount:client: for account %@...", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)credentialForAccount:client:store:handler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "credentialForAccount:client using authType: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)credentialForAccount:(void *)a1 client:store:handler:.cold.3(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)verifyCredentialsForAccount:accountStore:options:handler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "verifyCredentials using authType: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)verifyCredentialsForAccount:accountStore:options:handler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "It appears we are already verifying credentials for %@. We will enqueue the current request's completion handler and call it when done.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)verifyCredentialsForAccount:(void *)a1 accountStore:options:handler:.cold.3(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_1(&dword_221D2F000, v3, v4, "No auth plugin to verify credentials for accounts of type %@, bailing!", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __91__ACDAuthenticationPluginManager_verifyCredentialsForAccount_accountStore_options_handler___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v1, v2, "Plugin started on queue, will authenticate account %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __91__ACDAuthenticationPluginManager_verifyCredentialsForAccount_accountStore_options_handler___block_invoke_2_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 72);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleVerificationCompletionForAccount:verifiedAccount:error:store:shouldSave:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "ACDAuthenticationPluginManager _handleVerificationCompletion is intentionally NOT saving the verified account %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleVerificationCompletionForAccount:verifiedAccount:error:store:shouldSave:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "ACDAuthenticationPluginManager _handleVerificationCompletion is saving the verified account %@...", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleVerificationCompletionForAccount:verifiedAccount:error:store:shouldSave:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "ACDAuthenticationPluginManager _handleVerificationCompletion is invoking all queued completion blocks for account %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)renewCredentialsForAccount:accountStore:options:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "renewCredentials using authType: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)renewCredentialsForAccount:(void *)a1 accountStore:options:completion:.cold.2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_1(&dword_221D2F000, v3, v4, "No auth plugin to renew credentials for accounts of type %@, bailing!", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v1, v2, "Plugin started on queue, will renew credentials for %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_2_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_7_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __93__ACDAuthenticationPluginManager_renewCredentialsForAccount_accountStore_options_completion___block_invoke_49_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleRenewalCompletionResult:forAccount:renewalID:accountStore:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "ACDAuthenticationPluginManager _handleRenewalCompletion is saving account %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleRenewalCompletionResult:forAccount:renewalID:accountStore:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_7_0(&dword_221D2F000, v0, v1, "ACDAuthenticationPluginManager _handleRenewalCompletion failed to save account: %@ error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_handleRenewalCompletionResult:forAccount:renewalID:accountStore:error:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "ACDAuthenticationPluginManager _handleRenewalCompletion is invoking all queued completion blocks under renewal ID %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)discoverPropertiesForAccount:(uint64_t)a1 accountStore:(void *)a2 options:completion:.cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a2 client];
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)discoverPropertiesForAccount:accountStore:options:completion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "discoverPropertiesForAccount using authType: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)discoverPropertiesForAccount:accountStore:options:completion:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "It appears we are already discovering settings for account %@. We will enqueue the current request's completion handler and call it when done.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)discoverPropertiesForAccount:(void *)a1 accountStore:options:completion:.cold.4(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_1(&dword_221D2F000, v3, v4, "No auth plugin to discover properties for accounts of type %@, bailing!", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __95__ACDAuthenticationPluginManager_discoverPropertiesForAccount_accountStore_options_completion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v1, v2, "Plugin started on queue, will discover settings for %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __95__ACDAuthenticationPluginManager_discoverPropertiesForAccount_accountStore_options_completion___block_invoke_2_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleDiscoveryCompletionResult:forAccount:discoveryID:accountStore:shouldSave:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_2();
  _os_log_debug_impl(&dword_221D2F000, v0, OS_LOG_TYPE_DEBUG, "ACDAuthenticationPluginManager _handleDiscoveryCompletion: plugin reports being done for account %@ with error %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_handleDiscoveryCompletionResult:forAccount:discoveryID:accountStore:shouldSave:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "ACDAuthenticationPluginManager _handleDiscoveryCompletion is saving account %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleDiscoveryCompletionResult:forAccount:discoveryID:accountStore:shouldSave:error:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_7_0(&dword_221D2F000, v0, v1, "ACDAuthenticationPluginManager _handleDiscoveryCompletion failed to save account: %@ error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_authenticationTypeForAccount:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "Returning account's authenticationType: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_authenticationTypeForAccount:(void *)a1 .cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_authenticationTypeForAccount:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "Account %@ depends on parent for Authentication", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_authenticationTypeForAccount:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "Returning a parent's authenticationType: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_authenticationTypeForAccount:(void *)a1 .cold.5(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __49__ACDAuthenticationPluginManager__sanitizeError___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end