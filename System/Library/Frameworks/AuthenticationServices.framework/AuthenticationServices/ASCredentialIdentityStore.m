@interface ASCredentialIdentityStore
+ (ASCredentialIdentityStore)sharedStore;
- (id)_initCredentialIdentityStore;
- (void)getCredentialIdentitiesForService:(id)a3 credentialIdentityTypes:(unint64_t)a4 completionHandler:(id)a5;
- (void)getCredentialIdentityStoreStateWithCompletion:(void *)completion;
- (void)removeAllCredentialIdentitiesWithCompletion:(void *)completion;
- (void)removeCredentialIdentityEntries:(NSArray *)credentialIdentities completion:(void *)completion;
- (void)replaceCredentialIdentityEntries:(NSArray *)newCredentialIdentities completion:(void *)completion;
- (void)saveCredentialIdentityEntries:(NSArray *)credentialIdentities completion:(void *)completion;
@end

@implementation ASCredentialIdentityStore

+ (ASCredentialIdentityStore)sharedStore
{
  if (sharedStore_onceToken != -1)
  {
    +[ASCredentialIdentityStore sharedStore];
  }

  v3 = sharedStore_store;

  return v3;
}

uint64_t __40__ASCredentialIdentityStore_sharedStore__block_invoke()
{
  sharedStore_store = [[ASCredentialIdentityStore alloc] _initCredentialIdentityStore];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_initCredentialIdentityStore
{
  v7.receiver = self;
  v7.super_class = ASCredentialIdentityStore;
  v2 = [(ASCredentialIdentityStore *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69C8DD8]);
    helperProxy = v2->_helperProxy;
    v2->_helperProxy = v3;

    v5 = v2;
  }

  return v2;
}

- (void)getCredentialIdentityStoreStateWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = v4;
  if (v4)
  {
    helperProxy = self->_helperProxy;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __75__ASCredentialIdentityStore_getCredentialIdentityStoreStateWithCompletion___block_invoke;
    v7[3] = &unk_1E7AF8AD8;
    v8 = v4;
    [(SFCredentialProviderExtensionHelperProxy *)helperProxy getCredentialProviderExtensionStateWithCompletion:v7];
  }
}

void __75__ASCredentialIdentityStore_getCredentialIdentityStoreStateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [ASCredentialIdentityStoreState alloc];
  v5 = [v3 isEnabled];
  v6 = [v3 supportsIncrementalUpdates];

  v7 = [(ASCredentialIdentityStoreState *)v4 initWithEnabledState:v5 supportsIncrementalUpdates:v6];
  (*(v2 + 16))(v2, v7);
}

- (void)saveCredentialIdentityEntries:(NSArray *)credentialIdentities completion:(void *)completion
{
  v6 = completion;
  helperProxy = self->_helperProxy;
  v8 = safariCredentialIdentitiesFromCredentialIdentities(credentialIdentities);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__ASCredentialIdentityStore_saveCredentialIdentityEntries_completion___block_invoke;
  v10[3] = &unk_1E7AF8848;
  v11 = v6;
  v9 = v6;
  [(SFCredentialProviderExtensionHelperProxy *)helperProxy saveCredentialIdentities:v8 completion:v10];
}

void __70__ASCredentialIdentityStore_saveCredentialIdentityEntries_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (v5 || (a2 & 1) != 0)
    {
      v11 = credentialIdentityStoreErrorFromSFExternalCredentialIdentityStoreError(v5);
      (*(v7 + 16))(v7, a2, v11);
    }

    else
    {
      v8 = WBS_LOG_CHANNEL_PREFIXAuthorization();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        __70__ASCredentialIdentityStore_saveCredentialIdentityEntries_completion___block_invoke_cold_1();
      }

      v9 = *(a1 + 32);
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASCredentialIdentityStoreErrorDomain" code:0 userInfo:0];
      (*(v9 + 16))(v9, 0, v10);
    }
  }
}

- (void)removeCredentialIdentityEntries:(NSArray *)credentialIdentities completion:(void *)completion
{
  v6 = completion;
  helperProxy = self->_helperProxy;
  v8 = safariCredentialIdentitiesFromCredentialIdentities(credentialIdentities);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__ASCredentialIdentityStore_removeCredentialIdentityEntries_completion___block_invoke;
  v10[3] = &unk_1E7AF8848;
  v11 = v6;
  v9 = v6;
  [(SFCredentialProviderExtensionHelperProxy *)helperProxy removeCredentialIdentities:v8 completion:v10];
}

void __72__ASCredentialIdentityStore_removeCredentialIdentityEntries_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (v5 || (a2 & 1) != 0)
    {
      v11 = credentialIdentityStoreErrorFromSFExternalCredentialIdentityStoreError(v5);
      (*(v7 + 16))(v7, a2, v11);
    }

    else
    {
      v8 = WBS_LOG_CHANNEL_PREFIXAuthorization();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        __70__ASCredentialIdentityStore_saveCredentialIdentityEntries_completion___block_invoke_cold_1();
      }

      v9 = *(a1 + 32);
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASCredentialIdentityStoreErrorDomain" code:0 userInfo:0];
      (*(v9 + 16))(v9, 0, v10);
    }
  }
}

- (void)removeAllCredentialIdentitiesWithCompletion:(void *)completion
{
  v4 = completion;
  helperProxy = self->_helperProxy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__ASCredentialIdentityStore_removeAllCredentialIdentitiesWithCompletion___block_invoke;
  v7[3] = &unk_1E7AF8848;
  v8 = v4;
  v6 = v4;
  [(SFCredentialProviderExtensionHelperProxy *)helperProxy removeAllCredentialIdentitiesWithCompletion:v7];
}

void __73__ASCredentialIdentityStore_removeAllCredentialIdentitiesWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (v5 || (a2 & 1) != 0)
    {
      v11 = credentialIdentityStoreErrorFromSFExternalCredentialIdentityStoreError(v5);
      (*(v7 + 16))(v7, a2, v11);
    }

    else
    {
      v8 = WBS_LOG_CHANNEL_PREFIXAuthorization();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        __70__ASCredentialIdentityStore_saveCredentialIdentityEntries_completion___block_invoke_cold_1();
      }

      v9 = *(a1 + 32);
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASCredentialIdentityStoreErrorDomain" code:0 userInfo:0];
      (*(v9 + 16))(v9, 0, v10);
    }
  }
}

- (void)replaceCredentialIdentityEntries:(NSArray *)newCredentialIdentities completion:(void *)completion
{
  v6 = completion;
  helperProxy = self->_helperProxy;
  v8 = safariCredentialIdentitiesFromCredentialIdentities(newCredentialIdentities);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__ASCredentialIdentityStore_replaceCredentialIdentityEntries_completion___block_invoke;
  v10[3] = &unk_1E7AF8848;
  v11 = v6;
  v9 = v6;
  [(SFCredentialProviderExtensionHelperProxy *)helperProxy replaceCredentialIdentitiesWithIdentities:v8 completion:v10];
}

void __73__ASCredentialIdentityStore_replaceCredentialIdentityEntries_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (v5 || (a2 & 1) != 0)
    {
      v11 = credentialIdentityStoreErrorFromSFExternalCredentialIdentityStoreError(v5);
      (*(v7 + 16))(v7, a2, v11);
    }

    else
    {
      v8 = WBS_LOG_CHANNEL_PREFIXAuthorization();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        __70__ASCredentialIdentityStore_saveCredentialIdentityEntries_completion___block_invoke_cold_1();
      }

      v9 = *(a1 + 32);
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASCredentialIdentityStoreErrorDomain" code:0 userInfo:0];
      (*(v9 + 16))(v9, 0, v10);
    }
  }
}

- (void)getCredentialIdentitiesForService:(id)a3 credentialIdentityTypes:(unint64_t)a4 completionHandler:(id)a5
{
  v13 = a3;
  v8 = a5;
  if (v13)
  {
    v9 = [v13 type] == 1;
  }

  else
  {
    v9 = 0;
  }

  if (a4)
  {
    v10 = a4 & 7;
  }

  else
  {
    v10 = 7;
  }

  helperProxy = self->_helperProxy;
  v12 = [v13 identifier];
  [(SFCredentialProviderExtensionHelperProxy *)helperProxy fetchCredentialIdentitiesForService:v12 serviceIdentifierType:v9 credentialIdentityTypes:v10 completion:v8];
}

@end