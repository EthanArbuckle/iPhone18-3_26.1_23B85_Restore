@interface _LAKeyStore
- (_LAKeyStore)init;
- (void)decryptData:(id)a3 publicKeyHash:(id)a4 context:(id)a5 completion:(id)a6;
- (void)encryptData:(id)a3 publicKeyHash:(id)a4 completion:(id)a5;
- (void)fetchGenericPasswordWithIdentifier:(id)a3 domain:(id)a4 completion:(id)a5;
- (void)fetchGenericPasswordsWithDomain:(id)a3 completion:(id)a4;
- (void)fetchItemsWithDomain:(id)a3 completion:(id)a4;
- (void)fetchKeyWithIdentifier:(id)a3 domain:(id)a4 completion:(id)a5;
- (void)fetchKeyWithPublicKeyHash:(id)a3 completion:(id)a4;
- (void)fetchKeysWithDomain:(id)a3 completion:(id)a4;
- (void)removeGenericPasswordsWithDomain:(id)a3 completion:(id)a4;
- (void)removeItemsWithCompletion:(id)a3;
- (void)removeItemsWithDomain:(id)a3 completion:(id)a4;
- (void)removeKeysWithDomain:(id)a3 completion:(id)a4;
- (void)storeGenericPassword:(id)a3 identifier:(id)a4 domain:(id)a5 protectedBy:(id)a6 completion:(id)a7;
- (void)storeKeyWithIdentifier:(id)a3 domain:(id)a4 protectedBy:(id)a5 completion:(id)a6;
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

- (void)storeKeyWithIdentifier:(id)a3 domain:(id)a4 protectedBy:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68___LAKeyStore_storeKeyWithIdentifier_domain_protectedBy_completion___block_invoke;
  v18[3] = &unk_1E77CB698;
  objc_copyWeak(&v24, &location);
  v14 = v13;
  v23 = v14;
  v15 = v10;
  v19 = v15;
  v16 = v11;
  v20 = v16;
  v17 = v12;
  v21 = v17;
  v22 = self;
  [(_LAKeyStore *)self fetchKeyWithIdentifier:v15 domain:v16 completion:v18];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)fetchKeysWithDomain:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v8 fetchQueryForKeysWithDomain:v6];

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
    v7[2](v7, 0, v12);
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

    (v7[2])(v7, v14);
  }

  _Block_object_dispose(&v19, 8);
}

- (void)fetchKeyWithIdentifier:(id)a3 domain:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  v12 = [v11 fetchQueryForKeyWithIdentifier:v10 domain:v9];

  backend = self->_backend;
  v19 = 0;
  v14 = [(LAKeyStoreBackend *)backend fetchItemWithQuery:v12 error:&v19];
  v15 = v19;
  if (v15)
  {
    v16 = v15;
    v17 = [LAAuthorizationError resourceNotFoundWithUnderylingError:v15];
    v8[2](v8, 0, v17);
  }

  else
  {
    v18 = 0;
    v17 = [_LAKeyStoreKey buildWithDictionary:v14 error:&v18];
    v16 = v18;
    (v8)[2](v8, v17, v16);
  }
}

- (void)fetchKeyWithPublicKeyHash:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [v8 fetchQueryForKeyWithPublicKeyHash:v7];

  backend = self->_backend;
  v16 = 0;
  v11 = [(LAKeyStoreBackend *)backend fetchItemWithQuery:v9 error:&v16];
  v12 = v16;
  if (v12)
  {
    v13 = v12;
    v14 = [LAAuthorizationError resourceNotFoundWithUnderylingError:v12];
    v6[2](v6, 0, v14);
  }

  else
  {
    v15 = 0;
    v14 = [_LAKeyStoreKey buildWithDictionary:v11 error:&v15];
    v13 = v15;
    (v6)[2](v6, v14, v13);
  }
}

- (void)removeKeysWithDomain:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [v8 removeQueryForKeysWithDomain:v7];

  backend = self->_backend;
  v12 = 0;
  [(LAKeyStoreBackend *)backend removeItemsWithQuery:v9 error:&v12];
  v11 = v12;
  v6[2](v6, v11);
}

- (void)storeGenericPassword:(id)a3 identifier:(id)a4 domain:(id)a5 protectedBy:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  objc_initWeak(&location, self);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __77___LAKeyStore_storeGenericPassword_identifier_domain_protectedBy_completion___block_invoke;
  v21[3] = &unk_1E77CB6E8;
  objc_copyWeak(&v26, &location);
  v17 = v16;
  v25 = v17;
  v18 = v13;
  v22 = v18;
  v19 = v14;
  v23 = v19;
  v20 = v15;
  v24 = v20;
  [(_LAKeyStore *)self encryptData:v12 publicKeyHash:v20 completion:v21];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

- (void)fetchGenericPasswordsWithDomain:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v8 fetchQueryForGenericPasswordsWithDomain:v6];

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
    v7[2](v7, 0, v12);
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

    (v7[2])(v7, v14);
  }

  _Block_object_dispose(&v19, 8);
}

- (void)fetchGenericPasswordWithIdentifier:(id)a3 domain:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  v12 = [v11 fetchQueryForGenericPasswordWithIdentifier:v10 domain:v9];

  backend = self->_backend;
  v19 = 0;
  v14 = [(LAKeyStoreBackend *)backend fetchItemWithQuery:v12 error:&v19];
  v15 = v19;
  if (v15)
  {
    v16 = v15;
    v17 = [LAAuthorizationError resourceNotFoundWithUnderylingError:v15];
    v8[2](v8, 0, v17);
  }

  else
  {
    v18 = 0;
    v17 = [_LAKeyStoreGenericPassword buildWithDictionary:v14 error:&v18];
    v16 = v18;
    [v17 setCryptor:self];
    (v8)[2](v8, v17, v16);
  }
}

- (void)removeGenericPasswordsWithDomain:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [v8 removeQueryForGenericPasswordsWithDomain:v7];

  backend = self->_backend;
  v12 = 0;
  [(LAKeyStoreBackend *)backend removeItemsWithQuery:v9 error:&v12];
  v11 = v12;
  v6[2](v6, v11);
}

- (void)fetchItemsWithDomain:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695E0F0] mutableCopy];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47___LAKeyStore_fetchItemsWithDomain_completion___block_invoke;
  v12[3] = &unk_1E77CB760;
  v9 = v7;
  v15 = v9;
  v10 = v8;
  v13 = v10;
  objc_copyWeak(&v16, &location);
  v11 = v6;
  v14 = v11;
  [(_LAKeyStore *)self fetchGenericPasswordsWithDomain:v11 completion:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)removeItemsWithDomain:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695E0F0] mutableCopy];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48___LAKeyStore_removeItemsWithDomain_completion___block_invoke;
  v12[3] = &unk_1E77CB7B0;
  v9 = v8;
  v13 = v9;
  objc_copyWeak(&v16, &location);
  v10 = v6;
  v14 = v10;
  v11 = v7;
  v15 = v11;
  [(_LAKeyStore *)self removeGenericPasswordsWithDomain:v10 completion:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)removeItemsWithCompletion:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695E0F0] mutableCopy];
  v6 = objc_alloc_init(LAKeyStoreBackendQueryBuilder);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [(LAKeyStoreBackendQueryBuilder *)v6 removeQueryForKeys];
  v24[0] = v7;
  v8 = [(LAKeyStoreBackendQueryBuilder *)v6 removeQueryForGenericPasswords];
  v24[1] = v8;
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
    v4[2](v4, v17);
  }

  else
  {
    v4[2](v4, 0);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)encryptData:(id)a3 publicKeyHash:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52___LAKeyStore_encryptData_publicKeyHash_completion___block_invoke;
  v13[3] = &unk_1E77CB828;
  objc_copyWeak(&v16, &location);
  v11 = v10;
  v15 = v11;
  v12 = v8;
  v14 = v12;
  [(_LAKeyStore *)self fetchKeyWithPublicKeyHash:v9 completion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)decryptData:(id)a3 publicKeyHash:(id)a4 context:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60___LAKeyStore_decryptData_publicKeyHash_context_completion___block_invoke;
  v17[3] = &unk_1E77CB878;
  objc_copyWeak(&v21, &location);
  v14 = v13;
  v20 = v14;
  v15 = v10;
  v18 = v15;
  v16 = v12;
  v19 = v16;
  [(_LAKeyStore *)self fetchKeyWithPublicKeyHash:v11 completion:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

@end