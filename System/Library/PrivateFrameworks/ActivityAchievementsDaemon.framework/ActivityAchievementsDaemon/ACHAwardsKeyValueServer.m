@interface ACHAwardsKeyValueServer
- (ACHAwardsKeyValueServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)_domainForName:(id)a3;
- (id)_transactionContextForWritingProtectedDataWithIdentifier:(id)a3;
- (void)remote_dataForKey:(id)a3 domain:(id)a4 completion:(id)a5;
- (void)remote_protectedDataAvailableWithCompletion:(id)a3;
- (void)remote_removeValuesForKeys:(id)a3 domain:(id)a4 completion:(id)a5;
- (void)remote_removeValuesForKeysInDomains:(id)a3 completion:(id)a4;
- (void)remote_setData:(id)a3 forKey:(id)a4 domain:(id)a5 completion:(id)a6;
- (void)remote_setLegacyValuesWithDictionary:(id)a3 completion:(id)a4;
- (void)remote_setValue:(id)a3 forKey:(id)a4 domain:(id)a5 completion:(id)a6;
- (void)remote_setValuesWithDictionary:(id)a3 domain:(id)a4 completion:(id)a5;
- (void)remote_setValuesWithDomainDictionary:(id)a3 completion:(id)a4;
- (void)remote_valueForKey:(id)a3 domain:(id)a4 completion:(id)a5;
- (void)remote_valuesForKeys:(id)a3 domain:(id)a4 completion:(id)a5;
@end

@implementation ACHAwardsKeyValueServer

- (ACHAwardsKeyValueServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a5;
  v20.receiver = self;
  v20.super_class = ACHAwardsKeyValueServer;
  v11 = [(HDStandardTaskServer *)&v20 initWithUUID:a3 configuration:a4 client:v10 delegate:a6];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    domainsByName = v11->_domainsByName;
    v11->_domainsByName = v12;

    v11->_domainLock._os_unfair_lock_opaque = 0;
    v14 = objc_alloc(MEMORY[0x277D10718]);
    v15 = *MEMORY[0x277D10460];
    v16 = [v10 profile];
    v17 = [v14 initWithCategory:106 domainName:v15 profile:v16];
    legacyDomain = v11->_legacyDomain;
    v11->_legacyDomain = v17;
  }

  return v11;
}

- (id)_transactionContextForWritingProtectedDataWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self client];
  v6 = [v5 profile];
  v7 = [v6 database];
  v13 = 0;
  v8 = [ACHDatabaseAssertion assertionWithDatabase:v7 identifier:v4 error:&v13];

  v9 = v13;
  if (v9)
  {
    v10 = ACHLogXPC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ACHAwardsServer *)v9 _transactionContextForWritingProtectedDataWithIdentifier:v10];
    }
  }

  v11 = ACHDatabaseContextWithAccessibilityAssertion(v8);
  [v11 setRequiresWrite:1];
  [v11 setRequiresProtectedData:1];

  return v11;
}

- (id)_domainForName:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_domainLock);
  v5 = [(ACHAwardsKeyValueServer *)self domainsByName];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = objc_alloc(MEMORY[0x277D10718]);
    v8 = [(HDStandardTaskServer *)self profile];
    v6 = [v7 initWithCategory:107 domainName:v4 profile:v8];

    v9 = [(ACHAwardsKeyValueServer *)self domainsByName];
    [v9 setObject:v6 forKeyedSubscript:v4];
  }

  os_unfair_lock_unlock(&self->_domainLock);

  return v6;
}

- (void)remote_protectedDataAvailableWithCompletion:(id)a3
{
  v5 = a3;
  v7 = [(HDStandardTaskServer *)self profile];
  v6 = [v7 database];
  (*(a3 + 2))(v5, [v6 isProtectedDataAvailable]);
}

- (void)remote_removeValuesForKeys:(id)a3 domain:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(ACHAwardsKeyValueServer *)self _domainForName:a4];
  v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v9];

  v14 = 0;
  v12 = [v10 removeValuesForKeys:v11 error:&v14];
  v13 = v14;

  v8[2](v8, v12, v13);
}

- (void)remote_removeValuesForKeysInDomains:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACHAwardsKeyValueServer *)self _transactionContextForWritingProtectedDataWithIdentifier:@"RemoveValues"];
  v9 = [(HDStandardTaskServer *)self profile];
  v10 = [v9 database];
  v16 = self;
  v17 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__ACHAwardsKeyValueServer_remote_removeValuesForKeysInDomains_completion___block_invoke;
  v14[3] = &unk_2784920A0;
  v15 = v6;
  v11 = v6;
  v12 = [v10 performTransactionWithContext:v8 error:&v17 block:v14 inaccessibilityHandler:0];
  v13 = v17;

  v7[2](v7, v12, v13);
}

uint64_t __74__ACHAwardsKeyValueServer_remote_removeValuesForKeysInDomains_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [*(a1 + 32) allKeys];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    LOBYTE(v9) = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [*(a1 + 32) objectForKeyedSubscript:v11];
        v13 = [*(a1 + 40) _domainForName:v11];
        if (v9)
        {
          v14 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v12];
          v9 = [v13 removeValuesForKeys:v14 error:a3];
        }

        else
        {
          v9 = 0;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)remote_setLegacyValuesWithDictionary:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACHAwardsKeyValueServer *)self _transactionContextForWritingProtectedDataWithIdentifier:@"SetLegacyValues"];
  v9 = [(HDStandardTaskServer *)self profile];
  v10 = [v9 database];
  v15 = v6;
  v16 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__ACHAwardsKeyValueServer_remote_setLegacyValuesWithDictionary_completion___block_invoke;
  v14[3] = &unk_2784920A0;
  v14[4] = self;
  v11 = v6;
  v12 = [v10 performTransactionWithContext:v8 error:&v16 block:v14 inaccessibilityHandler:0];
  v13 = v16;

  v7[2](v7, v12, v13);
}

uint64_t __75__ACHAwardsKeyValueServer_remote_setLegacyValuesWithDictionary_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) legacyDomain];
  v6 = [v5 setValuesWithDictionary:*(a1 + 40) error:a3];

  return v6;
}

- (void)remote_setValue:(id)a3 forKey:(id)a4 domain:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(ACHAwardsKeyValueServer *)self _domainForName:a5];
  v16 = 0;
  v14 = [v13 setNumber:v12 forKey:v11 error:&v16];

  v15 = v16;
  v10[2](v10, v14, v15);
}

- (void)remote_setValuesWithDictionary:(id)a3 domain:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(ACHAwardsKeyValueServer *)self _transactionContextForWritingProtectedDataWithIdentifier:@"SetValues"];
  v12 = [(ACHAwardsKeyValueServer *)self _domainForName:v10];

  v13 = [(HDStandardTaskServer *)self profile];
  v14 = [v13 database];
  v21 = v8;
  v22 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __76__ACHAwardsKeyValueServer_remote_setValuesWithDictionary_domain_completion___block_invoke;
  v19[3] = &unk_2784920A0;
  v20 = v12;
  v15 = v8;
  v16 = v12;
  v17 = [v14 performTransactionWithContext:v11 error:&v22 block:v19 inaccessibilityHandler:0];
  v18 = v22;

  v9[2](v9, v17, v18);
}

- (void)remote_setValuesWithDomainDictionary:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACHAwardsKeyValueServer *)self _transactionContextForWritingProtectedDataWithIdentifier:@"SetValuesWithDomainDict"];
  v9 = [(HDStandardTaskServer *)self profile];
  v10 = [v9 database];
  v16 = self;
  v17 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__ACHAwardsKeyValueServer_remote_setValuesWithDomainDictionary_completion___block_invoke;
  v14[3] = &unk_2784920A0;
  v15 = v6;
  v11 = v6;
  v12 = [v10 performTransactionWithContext:v8 error:&v17 block:v14 inaccessibilityHandler:0];
  v13 = v17;

  v7[2](v7, v12, v13);
}

uint64_t __75__ACHAwardsKeyValueServer_remote_setValuesWithDomainDictionary_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [*(a1 + 32) allKeys];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    LOBYTE(v9) = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [*(a1 + 32) objectForKeyedSubscript:v11];
        v13 = [*(a1 + 40) _domainForName:v11];
        v14 = v13;
        if (v9)
        {
          v9 = [v13 setValuesWithDictionary:v12 error:a3];
        }

        else
        {
          v9 = 0;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)remote_setData:(id)a3 forKey:(id)a4 domain:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(ACHAwardsKeyValueServer *)self _domainForName:a5];
  v16 = 0;
  v14 = [v13 setData:v12 forKey:v11 error:&v16];

  v15 = v16;
  v10[2](v10, v14, v15);
}

- (void)remote_valueForKey:(id)a3 domain:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__22;
  v26 = __Block_byref_object_dispose__22;
  v27 = 0;
  v11 = [(ACHAwardsKeyValueServer *)self _domainForName:v9];
  v12 = [(HDStandardTaskServer *)self profile];
  v13 = [v12 database];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__ACHAwardsKeyValueServer_remote_valueForKey_domain_completion___block_invoke;
  v17[3] = &unk_2784920C8;
  v20 = &v22;
  v21 = 0;
  v14 = v11;
  v18 = v14;
  v15 = v8;
  v19 = v15;
  [v13 performHighPriorityTransactionsWithError:&v21 block:v17];
  v16 = v21;

  v10[2](v10, v23[5], v16);
  _Block_object_dispose(&v22, 8);
}

BOOL __64__ACHAwardsKeyValueServer_remote_valueForKey_domain_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) numberForKey:*(a1 + 40) error:a2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

- (void)remote_valuesForKeys:(id)a3 domain:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ACHAwardsKeyValueServer *)self _transactionContextForWritingProtectedDataWithIdentifier:@"FetchValuesForKeys"];
  [v11 setHighPriority:1];
  [v11 setRequiresWrite:0];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__22;
  v27 = __Block_byref_object_dispose__22;
  v28 = 0;
  v12 = [(ACHAwardsKeyValueServer *)self _domainForName:v9];
  v13 = [(HDStandardTaskServer *)self profile];
  v14 = [v13 database];
  v22 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__ACHAwardsKeyValueServer_remote_valuesForKeys_domain_completion___block_invoke;
  v18[3] = &unk_278491640;
  v15 = v8;
  v19 = v15;
  v16 = v12;
  v20 = v16;
  v21 = &v23;
  [v14 performTransactionWithContext:v11 error:&v22 block:v18 inaccessibilityHandler:0];
  v17 = v22;

  v10[2](v10, v24[5], v17);
  _Block_object_dispose(&v23, 8);
}

uint64_t __66__ACHAwardsKeyValueServer_remote_valuesForKeys_domain_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [*(a1 + 40) numberForKey:v11 error:{a3, v18}];
        if (v12)
        {
          [v5 setObject:v12 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v13 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v5];
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)remote_dataForKey:(id)a3 domain:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__22;
  v26 = __Block_byref_object_dispose__22;
  v27 = 0;
  v11 = [(ACHAwardsKeyValueServer *)self _domainForName:v9];
  v12 = [(HDStandardTaskServer *)self profile];
  v13 = [v12 database];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__ACHAwardsKeyValueServer_remote_dataForKey_domain_completion___block_invoke;
  v17[3] = &unk_2784920C8;
  v20 = &v22;
  v21 = 0;
  v14 = v11;
  v18 = v14;
  v15 = v8;
  v19 = v15;
  [v13 performHighPriorityTransactionsWithError:&v21 block:v17];
  v16 = v21;

  v10[2](v10, v23[5], v16);
  _Block_object_dispose(&v22, 8);
}

BOOL __63__ACHAwardsKeyValueServer_remote_dataForKey_domain_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) dataForKey:*(a1 + 40) error:a2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

@end