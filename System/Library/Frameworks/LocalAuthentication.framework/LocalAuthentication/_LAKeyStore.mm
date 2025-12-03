@interface _LAKeyStore
- (_LAKeyStore)init;
- (void)decryptData:(id)data publicKeyHash:(id)hash context:(id)context completion:(id)completion;
- (void)encryptData:(id)data publicKeyHash:(id)hash completion:(id)completion;
- (void)fetchGenericPasswordWithIdentifier:(id)identifier domain:(id)domain completion:(id)completion;
- (void)fetchGenericPasswordsWithDomain:(id)domain completion:(id)completion;
- (void)fetchItemsWithDomain:(id)domain completion:(id)completion;
- (void)fetchKeyWithIdentifier:(id)identifier domain:(id)domain completion:(id)completion;
- (void)fetchKeyWithPublicKeyHash:(id)hash completion:(id)completion;
- (void)fetchKeysWithDomain:(id)domain completion:(id)completion;
- (void)removeGenericPasswordsWithDomain:(id)domain completion:(id)completion;
- (void)removeItemsWithCompletion:(id)completion;
- (void)removeItemsWithDomain:(id)domain completion:(id)completion;
- (void)removeKeysWithDomain:(id)domain completion:(id)completion;
- (void)storeGenericPassword:(id)password identifier:(id)identifier domain:(id)domain protectedBy:(id)by completion:(id)completion;
- (void)storeKeyWithIdentifier:(id)identifier domain:(id)domain protectedBy:(id)by completion:(id)completion;
@end

@implementation _LAKeyStore

- (_LAKeyStore)init
{
  v8.receiver = self;
  v8.super_class = _LAKeyStore;
  v2 = [(_LAKeyStore *)&v8 init];
  if (v2)
  {
    v3 = +[LAKeyStoreBackendBuilder buildBackend];
    backend = v2->_backend;
    v2->_backend = v3;

    v5 = objc_alloc_init(LAKeyStoreSecretCoder);
    coder = v2->_coder;
    v2->_coder = v5;
  }

  return v2;
}

- (void)storeKeyWithIdentifier:(id)identifier domain:(id)domain protectedBy:(id)by completion:(id)completion
{
  identifierCopy = identifier;
  domainCopy = domain;
  byCopy = by;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68___LAKeyStore_storeKeyWithIdentifier_domain_protectedBy_completion___block_invoke;
  v18[3] = &unk_1E77CB698;
  objc_copyWeak(&v24, &location);
  v14 = completionCopy;
  v23 = v14;
  v15 = identifierCopy;
  v19 = v15;
  v16 = domainCopy;
  v20 = v16;
  v17 = byCopy;
  v21 = v17;
  selfCopy = self;
  [(_LAKeyStore *)self fetchKeyWithIdentifier:v15 domain:v16 completion:v18];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)fetchKeysWithDomain:(id)domain completion:(id)completion
{
  domainCopy = domain;
  completionCopy = completion;
  v8 = objc_opt_new();
  v9 = [v8 fetchQueryForKeysWithDomain:domainCopy];

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  backend = self->_backend;
  obj = 0;
  v11 = [(LAKeyStoreBackend *)backend fetchItemsWithQuery:v9 error:&obj];
  objc_storeStrong(&v24, obj);
  if (v20[5])
  {
    v12 = [LAAuthorizationError resourceNotFoundWithUnderylingError:?];
    completionCopy[2](completionCopy, 0, v12);
  }

  else
  {
    v13 = [MEMORY[0x1E695E0F0] mutableCopy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __46___LAKeyStore_fetchKeysWithDomain_completion___block_invoke;
    v15[3] = &unk_1E77CB6C0;
    v17 = &v19;
    v12 = v13;
    v16 = v12;
    [v11 enumerateObjectsUsingBlock:v15];
    if (v20[5])
    {
      v14 = 0;
    }

    else
    {
      v14 = v12;
    }

    (completionCopy[2])(completionCopy, v14);
  }

  _Block_object_dispose(&v19, 8);
}

- (void)fetchKeyWithIdentifier:(id)identifier domain:(id)domain completion:(id)completion
{
  completionCopy = completion;
  domainCopy = domain;
  identifierCopy = identifier;
  v11 = objc_opt_new();
  v12 = [v11 fetchQueryForKeyWithIdentifier:identifierCopy domain:domainCopy];

  backend = self->_backend;
  v19 = 0;
  v14 = [(LAKeyStoreBackend *)backend fetchItemWithQuery:v12 error:&v19];
  v15 = v19;
  if (v15)
  {
    v16 = v15;
    v17 = [LAAuthorizationError resourceNotFoundWithUnderylingError:v15];
    completionCopy[2](completionCopy, 0, v17);
  }

  else
  {
    v18 = 0;
    v17 = [_LAKeyStoreKey buildWithDictionary:v14 error:&v18];
    v16 = v18;
    (completionCopy)[2](completionCopy, v17, v16);
  }
}

- (void)fetchKeyWithPublicKeyHash:(id)hash completion:(id)completion
{
  completionCopy = completion;
  hashCopy = hash;
  v8 = objc_opt_new();
  v9 = [v8 fetchQueryForKeyWithPublicKeyHash:hashCopy];

  backend = self->_backend;
  v16 = 0;
  v11 = [(LAKeyStoreBackend *)backend fetchItemWithQuery:v9 error:&v16];
  v12 = v16;
  if (v12)
  {
    v13 = v12;
    v14 = [LAAuthorizationError resourceNotFoundWithUnderylingError:v12];
    completionCopy[2](completionCopy, 0, v14);
  }

  else
  {
    v15 = 0;
    v14 = [_LAKeyStoreKey buildWithDictionary:v11 error:&v15];
    v13 = v15;
    (completionCopy)[2](completionCopy, v14, v13);
  }
}

- (void)removeKeysWithDomain:(id)domain completion:(id)completion
{
  completionCopy = completion;
  domainCopy = domain;
  v8 = objc_opt_new();
  v9 = [v8 removeQueryForKeysWithDomain:domainCopy];

  backend = self->_backend;
  v12 = 0;
  [(LAKeyStoreBackend *)backend removeItemsWithQuery:v9 error:&v12];
  v11 = v12;
  completionCopy[2](completionCopy, v11);
}

- (void)storeGenericPassword:(id)password identifier:(id)identifier domain:(id)domain protectedBy:(id)by completion:(id)completion
{
  passwordCopy = password;
  identifierCopy = identifier;
  domainCopy = domain;
  byCopy = by;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __77___LAKeyStore_storeGenericPassword_identifier_domain_protectedBy_completion___block_invoke;
  v21[3] = &unk_1E77CB6E8;
  objc_copyWeak(&v26, &location);
  v17 = completionCopy;
  v25 = v17;
  v18 = identifierCopy;
  v22 = v18;
  v19 = domainCopy;
  v23 = v19;
  v20 = byCopy;
  v24 = v20;
  [(_LAKeyStore *)self encryptData:passwordCopy publicKeyHash:v20 completion:v21];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

- (void)fetchGenericPasswordsWithDomain:(id)domain completion:(id)completion
{
  domainCopy = domain;
  completionCopy = completion;
  v8 = objc_opt_new();
  v9 = [v8 fetchQueryForGenericPasswordsWithDomain:domainCopy];

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  backend = self->_backend;
  obj = 0;
  v11 = [(LAKeyStoreBackend *)backend fetchItemsWithQuery:v9 error:&obj];
  objc_storeStrong(&v24, obj);
  if (v20[5])
  {
    v12 = [LAAuthorizationError resourceNotFoundWithUnderylingError:?];
    completionCopy[2](completionCopy, 0, v12);
  }

  else
  {
    v13 = [MEMORY[0x1E695E0F0] mutableCopy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58___LAKeyStore_fetchGenericPasswordsWithDomain_completion___block_invoke;
    v15[3] = &unk_1E77CB710;
    v17 = &v19;
    v15[4] = self;
    v12 = v13;
    v16 = v12;
    [v11 enumerateObjectsUsingBlock:v15];
    if (v20[5])
    {
      v14 = 0;
    }

    else
    {
      v14 = v12;
    }

    (completionCopy[2])(completionCopy, v14);
  }

  _Block_object_dispose(&v19, 8);
}

- (void)fetchGenericPasswordWithIdentifier:(id)identifier domain:(id)domain completion:(id)completion
{
  completionCopy = completion;
  domainCopy = domain;
  identifierCopy = identifier;
  v11 = objc_opt_new();
  v12 = [v11 fetchQueryForGenericPasswordWithIdentifier:identifierCopy domain:domainCopy];

  backend = self->_backend;
  v19 = 0;
  v14 = [(LAKeyStoreBackend *)backend fetchItemWithQuery:v12 error:&v19];
  v15 = v19;
  if (v15)
  {
    v16 = v15;
    v17 = [LAAuthorizationError resourceNotFoundWithUnderylingError:v15];
    completionCopy[2](completionCopy, 0, v17);
  }

  else
  {
    v18 = 0;
    v17 = [_LAKeyStoreGenericPassword buildWithDictionary:v14 error:&v18];
    v16 = v18;
    [v17 setCryptor:self];
    (completionCopy)[2](completionCopy, v17, v16);
  }
}

- (void)removeGenericPasswordsWithDomain:(id)domain completion:(id)completion
{
  completionCopy = completion;
  domainCopy = domain;
  v8 = objc_opt_new();
  v9 = [v8 removeQueryForGenericPasswordsWithDomain:domainCopy];

  backend = self->_backend;
  v12 = 0;
  [(LAKeyStoreBackend *)backend removeItemsWithQuery:v9 error:&v12];
  v11 = v12;
  completionCopy[2](completionCopy, v11);
}

- (void)fetchItemsWithDomain:(id)domain completion:(id)completion
{
  domainCopy = domain;
  completionCopy = completion;
  v8 = [MEMORY[0x1E695E0F0] mutableCopy];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47___LAKeyStore_fetchItemsWithDomain_completion___block_invoke;
  v12[3] = &unk_1E77CB760;
  v9 = completionCopy;
  v15 = v9;
  v10 = v8;
  v13 = v10;
  objc_copyWeak(&v16, &location);
  v11 = domainCopy;
  v14 = v11;
  [(_LAKeyStore *)self fetchGenericPasswordsWithDomain:v11 completion:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)removeItemsWithDomain:(id)domain completion:(id)completion
{
  domainCopy = domain;
  completionCopy = completion;
  v8 = [MEMORY[0x1E695E0F0] mutableCopy];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48___LAKeyStore_removeItemsWithDomain_completion___block_invoke;
  v12[3] = &unk_1E77CB7B0;
  v9 = v8;
  v13 = v9;
  objc_copyWeak(&v16, &location);
  v10 = domainCopy;
  v14 = v10;
  v11 = completionCopy;
  v15 = v11;
  [(_LAKeyStore *)self removeGenericPasswordsWithDomain:v10 completion:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)removeItemsWithCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = [MEMORY[0x1E695E0F0] mutableCopy];
  v6 = objc_alloc_init(LAKeyStoreBackendQueryBuilder);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  removeQueryForKeys = [(LAKeyStoreBackendQueryBuilder *)v6 removeQueryForKeys];
  v24[0] = removeQueryForKeys;
  removeQueryForGenericPasswords = [(LAKeyStoreBackendQueryBuilder *)v6 removeQueryForGenericPasswords];
  v24[1] = removeQueryForGenericPasswords;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];

  v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        backend = self->_backend;
        v19 = 0;
        [(LAKeyStoreBackend *)backend removeItemsWithQuery:v14 error:&v19];
        v16 = v19;
        if (v16)
        {
          [v5 addObject:v16];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v11);
  }

  if ([v5 count])
  {
    v17 = [MEMORY[0x1E696EE88] errorWithCode:-1008 withUnderlyingErrors:v5];
    completionCopy[2](completionCopy, v17);
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)encryptData:(id)data publicKeyHash:(id)hash completion:(id)completion
{
  dataCopy = data;
  hashCopy = hash;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52___LAKeyStore_encryptData_publicKeyHash_completion___block_invoke;
  v13[3] = &unk_1E77CB828;
  objc_copyWeak(&v16, &location);
  v11 = completionCopy;
  v15 = v11;
  v12 = dataCopy;
  v14 = v12;
  [(_LAKeyStore *)self fetchKeyWithPublicKeyHash:hashCopy completion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)decryptData:(id)data publicKeyHash:(id)hash context:(id)context completion:(id)completion
{
  dataCopy = data;
  hashCopy = hash;
  contextCopy = context;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60___LAKeyStore_decryptData_publicKeyHash_context_completion___block_invoke;
  v17[3] = &unk_1E77CB878;
  objc_copyWeak(&v21, &location);
  v14 = completionCopy;
  v20 = v14;
  v15 = dataCopy;
  v18 = v15;
  v16 = contextCopy;
  v19 = v16;
  [(_LAKeyStore *)self fetchKeyWithPublicKeyHash:hashCopy completion:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

@end