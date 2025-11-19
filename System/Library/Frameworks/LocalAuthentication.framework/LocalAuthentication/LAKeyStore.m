@interface LAKeyStore
@end

@implementation LAKeyStore

void __68___LAKeyStore_storeKeyWithIdentifier_domain_protectedBy_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    if (a2)
    {
      v5 = *(a1 + 64);
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Key with identifier '%@' is already present", *(a1 + 32)];
      v7 = [LAAuthorizationError genericErrorWithMessage:v6];
      (*(v5 + 16))(v5, 0, v7);
    }

    else
    {
      v8 = objc_opt_new();
      v9 = [v8 createQueryForKeyWithIdentifier:*(a1 + 32) domain:*(a1 + 40) acl:*(a1 + 48)];

      v10 = WeakRetained[1];
      v12 = 0;
      [v10 createKeyWithQuery:v9 error:&v12];
      v11 = v12;
      if (v11)
      {
        (*(*(a1 + 64) + 16))();
      }

      else
      {
        [*(a1 + 56) fetchKeyWithIdentifier:*(a1 + 32) domain:*(a1 + 40) completion:*(a1 + 64)];
      }
    }
  }
}

void __46___LAKeyStore_fetchKeysWithDomain_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = [_LAKeyStoreKey buildWithDictionary:a2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }

  else
  {
    [*(a1 + 32) addObject:v7];
  }
}

void __77___LAKeyStore_storeGenericPassword_identifier_domain_protectedBy_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (v6)
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v8 = objc_opt_new();
      v9 = [v8 createQueryForGenericPasswordWithIdentifier:*(a1 + 32) domain:*(a1 + 40) data:v5 protectedBy:*(a1 + 48)];

      v10 = WeakRetained[1];
      v12 = 0;
      [v10 createGenericPasswordWithQuery:v9 error:&v12];
      v11 = v12;
      if (v11)
      {
        (*(*(a1 + 56) + 16))();
      }

      else
      {
        [WeakRetained fetchGenericPasswordWithIdentifier:*(a1 + 32) domain:*(a1 + 40) completion:*(a1 + 56)];
      }
    }
  }
}

void __58___LAKeyStore_fetchGenericPasswordsWithDomain_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = [_LAKeyStoreGenericPassword buildWithDictionary:a2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    *a4 = 1;
  }

  else
  {
    [v7 setCryptor:*(a1 + 32)];
    [*(a1 + 40) addObject:v7];
  }
}

void __47___LAKeyStore_fetchItemsWithDomain_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 48) + 16);

    v5();
  }

  else
  {
    [*(a1 + 32) addObjectsFromArray:a2];
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __47___LAKeyStore_fetchItemsWithDomain_completion___block_invoke_2;
      v8[3] = &unk_1E77CB738;
      v7 = *(a1 + 40);
      v10 = *(a1 + 48);
      v9 = *(a1 + 32);
      [WeakRetained fetchKeysWithDomain:v7 completion:v8];
    }
  }
}

uint64_t __47___LAKeyStore_fetchItemsWithDomain_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
  }

  else
  {
    [*(a1 + 32) addObjectsFromArray:a2];
    v6 = *(a1 + 32);
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void __48___LAKeyStore_removeItemsWithDomain_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48___LAKeyStore_removeItemsWithDomain_completion___block_invoke_2;
    v6[3] = &unk_1E77CB788;
    v5 = *(a1 + 40);
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    [WeakRetained removeKeysWithDomain:v5 completion:v6];
  }
}

void __48___LAKeyStore_removeItemsWithDomain_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  v3 = *(a1 + 40);
  if ([*(a1 + 32) count])
  {
    v4 = [MEMORY[0x1E696EE88] errorWithCode:-1008 withUnderlyingErrors:*(a1 + 32)];
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    (*(v3 + 16))(v3, 0);
  }
}

void __52___LAKeyStore_encryptData_publicKeyHash_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v9 = *(WeakRetained + 2);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __52___LAKeyStore_encryptData_publicKeyHash_completion___block_invoke_2;
      v11[3] = &unk_1E77CB800;
      v10 = *(a1 + 32);
      v13 = *(a1 + 40);
      v12 = v5;
      [v9 wrapData:v10 completion:v11];
    }
  }
}

void __52___LAKeyStore_encryptData_publicKeyHash_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *MEMORY[0x1E697B140];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52___LAKeyStore_encryptData_publicKeyHash_completion___block_invoke_3;
    v9[3] = &unk_1E77CB7D8;
    v10 = v5;
    v12 = *(a1 + 40);
    v11 = *(a1 + 32);
    [v7 encryptData:v10 secKeyAlgorithm:v8 completion:v9];
  }
}

void __52___LAKeyStore_encryptData_publicKeyHash_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) isEqualToData:v6])
  {
    __52___LAKeyStore_encryptData_publicKeyHash_completion___block_invoke_3_cold_1();
  }

  (*(*(a1 + 48) + 16))();
}

void __60___LAKeyStore_decryptData_publicKeyHash_context_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v6)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = *MEMORY[0x1E697B140];
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __60___LAKeyStore_decryptData_publicKeyHash_context_completion___block_invoke_2;
      v11[3] = &unk_1E77CB850;
      objc_copyWeak(&v14, (a1 + 56));
      v13 = *(a1 + 48);
      v12 = v5;
      [v12 decryptData:v9 secKeyAlgorithm:v8 context:v10 completion:v11];

      objc_destroyWeak(&v14);
    }
  }
}

void __60___LAKeyStore_decryptData_publicKeyHash_context_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      [WeakRetained[2] unwrapData:v8 completion:*(a1 + 40)];
    }
  }
}

@end