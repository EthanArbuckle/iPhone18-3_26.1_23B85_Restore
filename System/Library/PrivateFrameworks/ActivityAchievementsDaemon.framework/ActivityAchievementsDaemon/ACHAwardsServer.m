@interface ACHAwardsServer
- (ACHAwardsServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)_transactionContextForReadingProtectedDataWithIdentifier:(id)a3;
- (id)_transactionContextForWritingProtectedDataWithIdentifier:(id)a3;
- (void)protectedDataAvailableWithCompletion:(id)a3;
- (void)remote_addEarnedInstances:(id)a3 completion:(id)a4;
- (void)remote_addEarnedInstances:(id)a3 removingEarnedInstances:(id)a4 completion:(id)a5;
- (void)remote_addOrUpdateTemplates:(id)a3 completion:(id)a4;
- (void)remote_addTemplates:(id)a3 completion:(id)a4;
- (void)remote_addTemplates:(id)a3 removingTemplates:(id)a4 completion:(id)a5;
- (void)remote_countOfEarnedInstancesForTemplateUniqueName:(id)a3 completion:(id)a4;
- (void)remote_countOfEarnedInstancesForUniqueNames:(id)a3 completion:(id)a4;
- (void)remote_fetchAllEarnedInstancesWithCompletion:(id)a3;
- (void)remote_fetchAllTemplatesWithCompletion:(id)a3;
- (void)remote_fetchEarnedInstancesForAnniversaryDateComponentsString:(id)a3 templateUniqueNames:(id)a4 completion:(id)a5;
- (void)remote_fetchEarnedInstancesForDateComponentStringsArray:(id)a3 completion:(id)a4;
- (void)remote_fetchEarnedInstancesForEarnedDateComponentsString:(id)a3 completion:(id)a4;
- (void)remote_fetchEarnedInstancesForTemplateUniqueName:(id)a3 completion:(id)a4;
- (void)remote_fetchMostRecentEarnedInstanceForTemplateUniqueName:(id)a3 completion:(id)a4;
- (void)remote_fetchMostRecentEarnedInstancesForTemplateUniqueNames:(id)a3 completion:(id)a4;
- (void)remote_removeAllEarnedInstancesWithCompletion:(id)a3;
- (void)remote_removeAllTemplatesWithCompletion:(id)a3;
- (void)remote_removeEarnedInstances:(id)a3 completion:(id)a4;
- (void)remote_removeEarnedInstancesForTemplateUniqueName:(id)a3 completion:(id)a4;
- (void)remote_removeTemplates:(id)a3 completion:(id)a4;
@end

@implementation ACHAwardsServer

- (ACHAwardsServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v12.receiver = self;
  v12.super_class = ACHAwardsServer;
  v6 = [(HDStandardTaskServer *)&v12 initWithUUID:a3 configuration:a4 client:a5 delegate:a6];
  if (v6)
  {
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    gregorianCalendar = v6->_gregorianCalendar;
    v6->_gregorianCalendar = v9;
  }

  return v6;
}

- (void)protectedDataAvailableWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ACHAwardsServer *)self queue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(ACHAwardsServer *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__ACHAwardsServer_protectedDataAvailableWithCompletion___block_invoke;
  v8[3] = &unk_278491258;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

void __56__ACHAwardsServer_protectedDataAvailableWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) profile];
  v2 = [v3 database];
  (*(v1 + 16))(v1, [v2 isProtectedDataAvailable]);
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

- (id)_transactionContextForReadingProtectedDataWithIdentifier:(id)a3
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
      [(ACHAwardsServer *)v4 _transactionContextForReadingProtectedDataWithIdentifier:v9, v10];
    }
  }

  v11 = ACHDatabaseContextWithAccessibilityAssertion(v8);
  [v11 setRequiresWrite:0];
  [v11 setRequiresProtectedData:1];

  return v11;
}

- (void)remote_addTemplates:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACHAwardsServer *)self queue];
  dispatch_assert_queue_not_V2(v8);

  v9 = [(ACHAwardsServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ACHAwardsServer_remote_addTemplates_completion___block_invoke;
  block[3] = &unk_278491428;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_sync(v9, block);
}

void __50__ACHAwardsServer_remote_addTemplates_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _transactionContextForWritingProtectedDataWithIdentifier:@"AddTemplates"];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) client];
  v5 = [v4 profile];
  v7 = 0;
  [ACHTemplateEntity insertTemplates:v3 provenance:0 useLegacySyncIdentity:0 profile:v5 databaseContext:v2 error:&v7];
  v6 = v7;

  (*(*(a1 + 48) + 16))();
}

- (void)remote_addOrUpdateTemplates:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACHAwardsServer *)self queue];
  dispatch_assert_queue_not_V2(v8);

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  v9 = [(ACHAwardsServer *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__ACHAwardsServer_remote_addOrUpdateTemplates_completion___block_invoke;
  v11[3] = &unk_278491498;
  v11[4] = self;
  v13 = &v21;
  v14 = &v15;
  v10 = v6;
  v12 = v10;
  dispatch_sync(v9, v11);

  v7[2](v7, *(v22 + 24), v16[5]);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
}

void __58__ACHAwardsServer_remote_addOrUpdateTemplates_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _transactionContextForWritingProtectedDataWithIdentifier:@"AddOrUpdateTemplates"];
  v3 = [*(a1 + 32) profile];
  v4 = [v3 database];
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__ACHAwardsServer_remote_addOrUpdateTemplates_completion___block_invoke_2;
  v9[3] = &unk_278491450;
  v6 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v6;
  v11 = v2;
  v7 = v2;
  v8 = [v4 performTransactionWithContext:v7 error:&obj block:v9 inaccessibilityHandler:&__block_literal_global_8];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v8;
}

BOOL __58__ACHAwardsServer_remote_addOrUpdateTemplates_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) profile];
  v6 = [ACHTemplateEntity allTemplatesWithProfile:v5 error:a3];

  if (*a3)
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v30 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v36;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v35 + 1) + 8 * i);
          v15 = [v14 uniqueName];
          [v8 setObject:v14 forKeyedSubscript:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v11);
    }

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v17 = *(a1 + 40);
    v18 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v32;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v31 + 1) + 8 * j) uniqueName];
          v23 = [v8 objectForKeyedSubscript:v22];

          if (v23)
          {
            [v16 addObject:v23];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v19);
    }

    if ([v16 count] && (objc_msgSend(*(a1 + 32), "profile"), v24 = objc_claimAutoreleasedReturnValue(), v25 = +[ACHTemplateEntity removeTemplates:profile:error:](ACHTemplateEntity, "removeTemplates:profile:error:", v16, v24, a3), v24, !v25))
    {
      v7 = 0;
    }

    else
    {
      v26 = *(a1 + 40);
      v27 = [*(a1 + 32) profile];
      v7 = [ACHTemplateEntity insertTemplates:v26 provenance:0 useLegacySyncIdentity:0 profile:v27 databaseContext:*(a1 + 48) error:a3];
    }

    v6 = v30;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __58__ACHAwardsServer_remote_addOrUpdateTemplates_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  if (v4)
  {
    if (a3)
    {
      v5 = v4;
      *a3 = v4;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return 0;
}

- (void)remote_addTemplates:(id)a3 removingTemplates:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ACHAwardsServer *)self queue];
  dispatch_assert_queue_not_V2(v11);

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  v12 = [(ACHAwardsServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__ACHAwardsServer_remote_addTemplates_removingTemplates_completion___block_invoke;
  block[3] = &unk_278491508;
  block[4] = self;
  v18 = &v26;
  v19 = &v20;
  v13 = v9;
  v16 = v13;
  v14 = v8;
  v17 = v14;
  dispatch_sync(v12, block);

  v10[2](v10, *(v27 + 24), v21[5]);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
}

void __68__ACHAwardsServer_remote_addTemplates_removingTemplates_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _transactionContextForWritingProtectedDataWithIdentifier:@"TemplateUpdate"];
  v3 = [*(a1 + 32) profile];
  v4 = [v3 database];
  v5 = *(*(a1 + 64) + 8);
  v21 = *(v5 + 40);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__ACHAwardsServer_remote_addTemplates_removingTemplates_completion___block_invoke_2;
  v16[3] = &unk_278490FC0;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v17 = v6;
  v18 = v7;
  v19 = *(a1 + 48);
  v20 = v2;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__ACHAwardsServer_remote_addTemplates_removingTemplates_completion___block_invoke_314;
  v12[3] = &unk_2784914E0;
  v13 = *(a1 + 48);
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v10 = v2;
  v11 = [v4 performTransactionWithContext:v10 error:&v21 block:v16 inaccessibilityHandler:v12];
  objc_storeStrong((v5 + 40), v21);
  *(*(*(a1 + 56) + 8) + 24) = v11;
}

BOOL __68__ACHAwardsServer_remote_addTemplates_removingTemplates_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ([*(a1 + 32) count] && (v5 = *(a1 + 32), objc_msgSend(*(a1 + 40), "profile"), v6 = objc_claimAutoreleasedReturnValue(), v7 = +[ACHTemplateEntity removeTemplates:profile:error:](ACHTemplateEntity, "removeTemplates:profile:error:", v5, v6, a3), v6, !v7))
  {
    v12 = ACHLogTemplates();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __68__ACHAwardsServer_remote_addTemplates_removingTemplates_completion___block_invoke_2_cold_1(a3, v12);
    }

    return 0;
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = [*(a1 + 40) profile];
    v10 = [ACHTemplateEntity insertTemplates:v8 provenance:0 useLegacySyncIdentity:0 profile:v9 databaseContext:*(a1 + 56) error:a3];

    return v10;
  }
}

uint64_t __68__ACHAwardsServer_remote_addTemplates_removingTemplates_completion___block_invoke_314(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1[4] hk_map:&__block_literal_global_318_0];
  v6 = [a1[5] hk_map:&__block_literal_global_321];
  v7 = [v6 arrayByAddingObjectsFromArray:v5];
  v8 = [a1[6] profile];
  v9 = [v8 database];
  v10 = [v9 addJournalEntries:v7 error:a3];

  return v10;
}

ACHTemplateJournalEntry *__68__ACHAwardsServer_remote_addTemplates_removingTemplates_completion___block_invoke_2_315(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ACHTemplateJournalEntry alloc] initWithTemplate:v2 provenance:0 useLegacySyncIdentity:0 action:0];

  return v3;
}

ACHTemplateJournalEntry *__68__ACHAwardsServer_remote_addTemplates_removingTemplates_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ACHTemplateJournalEntry alloc] initWithTemplate:v2 provenance:0 useLegacySyncIdentity:0 action:1];

  return v3;
}

- (void)remote_fetchAllTemplatesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ACHAwardsServer *)self queue];
  dispatch_assert_queue_not_V2(v5);

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = 0;
  v6 = [(ACHAwardsServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ACHAwardsServer_remote_fetchAllTemplatesWithCompletion___block_invoke;
  block[3] = &unk_278491530;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v8;
  dispatch_sync(v6, block);

  v4[2](v4, v15[5], v9[5]);
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

void __58__ACHAwardsServer_remote_fetchAllTemplatesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [ACHTemplateEntity allTemplatesWithProfile:v2 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)remote_removeAllTemplatesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ACHAwardsServer *)self queue];
  dispatch_assert_queue_not_V2(v5);

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = 0;
  v6 = [(ACHAwardsServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ACHAwardsServer_remote_removeAllTemplatesWithCompletion___block_invoke;
  block[3] = &unk_278491558;
  block[4] = self;
  block[5] = &v8;
  block[6] = &v14;
  dispatch_sync(v6, block);

  v4[2](v4, *(v15 + 24), v9[5]);
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

void __59__ACHAwardsServer_remote_removeAllTemplatesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [ACHTemplateEntity allTemplatesWithProfile:v2 error:&obj];
  objc_storeStrong((v3 + 40), obj);

  if (*(*(*(a1 + 40) + 8) + 40) || v4 && ![v4 count])
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    v5 = [*(a1 + 32) profile];
    v6 = *(*(a1 + 40) + 8);
    v8 = *(v6 + 40);
    v7 = [ACHTemplateEntity removeTemplates:v4 profile:v5 error:&v8];
    objc_storeStrong((v6 + 40), v8);
    *(*(*(a1 + 48) + 8) + 24) = v7;
  }
}

- (void)remote_removeTemplates:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACHAwardsServer *)self queue];
  dispatch_assert_queue_not_V2(v8);

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6;
  v20 = __Block_byref_object_dispose__6;
  v21 = 0;
  v9 = [(ACHAwardsServer *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__ACHAwardsServer_remote_removeTemplates_completion___block_invoke;
  v11[3] = &unk_2784910B0;
  v14 = &v22;
  v10 = v6;
  v12 = v10;
  v13 = self;
  v15 = &v16;
  dispatch_sync(v9, v11);

  v7[2](v7, *(v23 + 24), v17[5]);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
}

void __53__ACHAwardsServer_remote_removeTemplates_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) profile];
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [ACHTemplateEntity removeTemplates:v2 profile:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v5;
}

- (void)remote_addEarnedInstances:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACHAwardsServer *)self queue];
  dispatch_assert_queue_not_V2(v8);

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  v9 = [(ACHAwardsServer *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__ACHAwardsServer_remote_addEarnedInstances_completion___block_invoke;
  v11[3] = &unk_278491580;
  v11[4] = self;
  v10 = v6;
  v12 = v10;
  v13 = &v15;
  v14 = &v21;
  dispatch_sync(v9, v11);

  v7[2](v7, *(v22 + 24), v16[5]);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
}

void __56__ACHAwardsServer_remote_addEarnedInstances_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _transactionContextForWritingProtectedDataWithIdentifier:@"AddEarnedInstances"];
  v3 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 40)];
  v4 = [*(a1 + 32) profile];
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [ACHEarnedInstanceEntity insertEarnedInstances:v3 provenance:0 useLegacySyncIdentity:0 profile:v4 databaseContext:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);

  v7 = 0;
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [v6 count] != 0;
  }

  *(*(*(a1 + 56) + 8) + 24) = v7;
}

- (void)remote_removeEarnedInstances:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACHAwardsServer *)self queue];
  dispatch_assert_queue_not_V2(v8);

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6;
  v20 = __Block_byref_object_dispose__6;
  v21 = 0;
  v9 = [(ACHAwardsServer *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__ACHAwardsServer_remote_removeEarnedInstances_completion___block_invoke;
  v11[3] = &unk_2784910B0;
  v14 = &v22;
  v10 = v6;
  v12 = v10;
  v13 = self;
  v15 = &v16;
  dispatch_sync(v9, v11);

  v7[2](v7, *(v23 + 24), v17[5]);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
}

void __59__ACHAwardsServer_remote_removeEarnedInstances_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) profile];
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [ACHEarnedInstanceEntity removeEarnedInstances:v2 profile:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v5;
}

- (void)remote_addEarnedInstances:(id)a3 removingEarnedInstances:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ACHAwardsServer *)self queue];
  dispatch_assert_queue_not_V2(v11);

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__6;
  v30 = __Block_byref_object_dispose__6;
  v31 = MEMORY[0x277CBEBF8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  v12 = [(ACHAwardsServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__ACHAwardsServer_remote_addEarnedInstances_removingEarnedInstances_completion___block_invoke;
  block[3] = &unk_2784915F0;
  block[4] = self;
  v18 = &v20;
  v13 = v9;
  v16 = v13;
  v14 = v8;
  v17 = v14;
  v19 = &v26;
  dispatch_sync(v12, block);

  v10[2](v10, v27[5], v21[5]);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
}

void __80__ACHAwardsServer_remote_addEarnedInstances_removingEarnedInstances_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _transactionContextForWritingProtectedDataWithIdentifier:@"AddEarnedInstancesAndRemove"];
  v3 = [*(a1 + 32) profile];
  v4 = [v3 database];
  v5 = *(*(a1 + 56) + 8);
  v21 = *(v5 + 40);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__ACHAwardsServer_remote_addEarnedInstances_removingEarnedInstances_completion___block_invoke_2;
  v15[3] = &unk_2784915A8;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v16 = v6;
  v17 = v7;
  v18 = *(a1 + 48);
  v19 = v2;
  v20 = *(a1 + 64);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__ACHAwardsServer_remote_addEarnedInstances_removingEarnedInstances_completion___block_invoke_3;
  v11[3] = &unk_2784914E0;
  v12 = *(a1 + 48);
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v13 = v8;
  v14 = v9;
  v10 = v2;
  [v4 performTransactionWithContext:v10 error:&v21 block:v15 inaccessibilityHandler:v11];
  objc_storeStrong((v5 + 40), v21);
}

BOOL __80__ACHAwardsServer_remote_addEarnedInstances_removingEarnedInstances_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (![*(a1 + 32) count] || (v5 = *(a1 + 32), objc_msgSend(*(a1 + 40), "profile"), v6 = objc_claimAutoreleasedReturnValue(), v7 = +[ACHEarnedInstanceEntity removeEarnedInstances:profile:error:](ACHEarnedInstanceEntity, "removeEarnedInstances:profile:error:", v5, v6, a3), v6, v7))
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:*(a1 + 48)];
    v9 = [*(a1 + 40) profile];
    v10 = [ACHEarnedInstanceEntity insertEarnedInstances:v8 provenance:0 useLegacySyncIdentity:0 profile:v9 databaseContext:*(a1 + 56) error:a3];

    v7 = v10 != 0;
    if (v10)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v10);
    }
  }

  return v7;
}

uint64_t __80__ACHAwardsServer_remote_addEarnedInstances_removingEarnedInstances_completion___block_invoke_3(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1[4] hk_map:&__block_literal_global_332_0];
  v6 = [a1[5] hk_map:&__block_literal_global_335];
  v7 = [v6 arrayByAddingObjectsFromArray:v5];
  v8 = [a1[6] profile];
  v9 = [v8 database];
  v10 = [v9 addJournalEntries:v7 error:a3];

  return v10;
}

ACHEarnedInstanceJournalEntry *__80__ACHAwardsServer_remote_addEarnedInstances_removingEarnedInstances_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ACHEarnedInstanceJournalEntry alloc] initWithEarnedInstance:v2 provenance:0 useLegacySyncIdentity:0 action:0];

  return v3;
}

ACHEarnedInstanceJournalEntry *__80__ACHAwardsServer_remote_addEarnedInstances_removingEarnedInstances_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ACHEarnedInstanceJournalEntry alloc] initWithEarnedInstance:v2 provenance:0 useLegacySyncIdentity:0 action:1];

  return v3;
}

- (void)remote_removeEarnedInstancesForTemplateUniqueName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACHAwardsServer *)self queue];
  dispatch_assert_queue_not_V2(v8);

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6;
  v20 = __Block_byref_object_dispose__6;
  v21 = 0;
  v9 = [(ACHAwardsServer *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__ACHAwardsServer_remote_removeEarnedInstancesForTemplateUniqueName_completion___block_invoke;
  v11[3] = &unk_2784910B0;
  v14 = &v22;
  v10 = v6;
  v12 = v10;
  v13 = self;
  v15 = &v16;
  dispatch_sync(v9, v11);

  v7[2](v7, *(v23 + 24), v17[5]);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
}

void __80__ACHAwardsServer_remote_removeEarnedInstancesForTemplateUniqueName_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) profile];
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [ACHEarnedInstanceEntity removeEarnedInstancesForTemplateUniqueName:v2 profile:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v5;
}

- (void)remote_removeAllEarnedInstancesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ACHAwardsServer *)self queue];
  dispatch_assert_queue_not_V2(v5);

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = 0;
  v6 = [(ACHAwardsServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ACHAwardsServer_remote_removeAllEarnedInstancesWithCompletion___block_invoke;
  block[3] = &unk_278491530;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v8;
  dispatch_sync(v6, block);

  v4[2](v4, *(v15 + 24), v9[5]);
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

void __65__ACHAwardsServer_remote_removeAllEarnedInstancesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [ACHEarnedInstanceEntity removeAllEarnedInstancesWithProfile:v2 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v4;
}

- (void)remote_fetchAllEarnedInstancesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ACHAwardsServer *)self queue];
  dispatch_assert_queue_not_V2(v5);

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = 0;
  v6 = [(ACHAwardsServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ACHAwardsServer_remote_fetchAllEarnedInstancesWithCompletion___block_invoke;
  block[3] = &unk_278491530;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v8;
  dispatch_sync(v6, block);

  v4[2](v4, v15[5], v9[5]);
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

void __64__ACHAwardsServer_remote_fetchAllEarnedInstancesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [ACHEarnedInstanceEntity allEarnedInstancesWithProfile:v2 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)remote_fetchEarnedInstancesForTemplateUniqueName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACHAwardsServer *)self queue];
  dispatch_assert_queue_not_V2(v8);

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__6;
  v26 = __Block_byref_object_dispose__6;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6;
  v20 = __Block_byref_object_dispose__6;
  v21 = 0;
  v9 = [(ACHAwardsServer *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__ACHAwardsServer_remote_fetchEarnedInstancesForTemplateUniqueName_completion___block_invoke;
  v11[3] = &unk_2784910B0;
  v14 = &v22;
  v10 = v6;
  v12 = v10;
  v13 = self;
  v15 = &v16;
  dispatch_sync(v9, v11);

  v7[2](v7, v23[5], v17[5]);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
}

void __79__ACHAwardsServer_remote_fetchEarnedInstancesForTemplateUniqueName_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) profile];
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [ACHEarnedInstanceEntity earnedInstancesForTemplateUniqueName:v2 profile:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)remote_fetchMostRecentEarnedInstanceForTemplateUniqueName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACHAwardsServer *)self queue];
  dispatch_assert_queue_not_V2(v8);

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__6;
  v25 = __Block_byref_object_dispose__6;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  v9 = [(ACHAwardsServer *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__ACHAwardsServer_remote_fetchMostRecentEarnedInstanceForTemplateUniqueName_completion___block_invoke;
  v11[3] = &unk_278491498;
  v11[4] = self;
  v13 = &v15;
  v14 = &v21;
  v10 = v6;
  v12 = v10;
  dispatch_sync(v9, v11);

  v7[2](v7, v22[5], v16[5]);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
}

void __88__ACHAwardsServer_remote_fetchMostRecentEarnedInstanceForTemplateUniqueName_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _transactionContextForReadingProtectedDataWithIdentifier:@"Fetch Most Recent Instnace"];
  v3 = [*(a1 + 32) profile];
  v4 = [v3 database];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__ACHAwardsServer_remote_fetchMostRecentEarnedInstanceForTemplateUniqueName_completion___block_invoke_2;
  v9[3] = &unk_278491618;
  v12 = *(a1 + 56);
  obj = v6;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v10 = v7;
  v11 = v8;
  [v4 performTransactionWithContext:v2 error:&obj block:v9 inaccessibilityHandler:0];
  objc_storeStrong((v5 + 40), obj);
}

BOOL __88__ACHAwardsServer_remote_fetchMostRecentEarnedInstanceForTemplateUniqueName_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) profile];
  v7 = [ACHEarnedInstanceEntity mostRecentEarnedInstanceForTemplateUniqueName:v5 profile:v6 error:a3];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return *a3 == 0;
}

- (void)remote_fetchMostRecentEarnedInstancesForTemplateUniqueNames:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACHAwardsServer *)self queue];
  dispatch_assert_queue_not_V2(v8);

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__6;
  v25 = __Block_byref_object_dispose__6;
  v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  v9 = [(ACHAwardsServer *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__ACHAwardsServer_remote_fetchMostRecentEarnedInstancesForTemplateUniqueNames_completion___block_invoke;
  v11[3] = &unk_278491668;
  v11[4] = self;
  v13 = &v15;
  v10 = v6;
  v12 = v10;
  v14 = &v21;
  dispatch_sync(v9, v11);

  v7[2](v7, v22[5], v16[5]);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
}

void __90__ACHAwardsServer_remote_fetchMostRecentEarnedInstancesForTemplateUniqueNames_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v3 = [*(a1 + 32) _transactionContextForReadingProtectedDataWithIdentifier:@"Fetch Most Recent Instnace"];
  v4 = [*(a1 + 32) profile];
  v5 = [v4 database];
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__ACHAwardsServer_remote_fetchMostRecentEarnedInstancesForTemplateUniqueNames_completion___block_invoke_2;
  v8[3] = &unk_278491640;
  v9 = *(a1 + 40);
  v10 = v2;
  v11 = *(a1 + 56);
  v7 = v2;
  [v5 performTransactionWithContext:v3 error:&obj block:v8 inaccessibilityHandler:0];
  objc_storeStrong((v6 + 40), obj);
}

BOOL __90__ACHAwardsServer_remote_fetchMostRecentEarnedInstancesForTemplateUniqueNames_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [ACHEarnedInstanceEntity mostRecentEarnedInstanceForTemplateUniqueName:v10 profile:*(a1 + 40) error:a3, v14];
        if (v11)
        {
          [*(*(*(a1 + 48) + 8) + 40) setObject:v11 forKeyedSubscript:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  result = *a3 == 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)remote_fetchEarnedInstancesForDateComponentStringsArray:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACHAwardsServer *)self queue];
  dispatch_assert_queue_not_V2(v8);

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__6;
  v25 = __Block_byref_object_dispose__6;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  v9 = [(ACHAwardsServer *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__ACHAwardsServer_remote_fetchEarnedInstancesForDateComponentStringsArray_completion___block_invoke;
  v11[3] = &unk_278491498;
  v11[4] = self;
  v13 = &v15;
  v14 = &v21;
  v10 = v6;
  v12 = v10;
  dispatch_sync(v9, v11);

  v7[2](v7, v22[5], v16[5]);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
}

void __86__ACHAwardsServer_remote_fetchEarnedInstancesForDateComponentStringsArray_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _transactionContextForReadingProtectedDataWithIdentifier:@"Fetch Earned Instance for date components interval"];
  v3 = [*(a1 + 32) profile];
  v4 = [v3 database];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__ACHAwardsServer_remote_fetchEarnedInstancesForDateComponentStringsArray_completion___block_invoke_2;
  v9[3] = &unk_278491618;
  v12 = *(a1 + 56);
  obj = v6;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v10 = v7;
  v11 = v8;
  [v4 performTransactionWithContext:v2 error:&obj block:v9 inaccessibilityHandler:0];
  objc_storeStrong((v5 + 40), obj);
}

BOOL __86__ACHAwardsServer_remote_fetchEarnedInstancesForDateComponentStringsArray_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) profile];
  v7 = [ACHEarnedInstanceEntity earnedInstancesForDateComponentStringsArray:v5 profile:v6 error:a3];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return *a3 == 0;
}

- (void)remote_fetchEarnedInstancesForAnniversaryDateComponentsString:(id)a3 templateUniqueNames:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ACHAwardsServer *)self queue];
  dispatch_assert_queue_not_V2(v11);

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__6;
  v30 = __Block_byref_object_dispose__6;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  v12 = [(ACHAwardsServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__ACHAwardsServer_remote_fetchEarnedInstancesForAnniversaryDateComponentsString_templateUniqueNames_completion___block_invoke;
  block[3] = &unk_278491508;
  block[4] = self;
  v18 = &v20;
  v19 = &v26;
  v13 = v8;
  v16 = v13;
  v14 = v9;
  v17 = v14;
  dispatch_sync(v12, block);

  v10[2](v10, v27[5], v21[5]);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
}

void __112__ACHAwardsServer_remote_fetchEarnedInstancesForAnniversaryDateComponentsString_templateUniqueNames_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _transactionContextForReadingProtectedDataWithIdentifier:@"Fetch Earned Instance for anniversary date components for template name"];
  v3 = [*(a1 + 32) profile];
  v4 = [v3 database];
  v5 = *(*(a1 + 56) + 8);
  v13 = *(v5 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __112__ACHAwardsServer_remote_fetchEarnedInstancesForAnniversaryDateComponentsString_templateUniqueNames_completion___block_invoke_2;
  v8[3] = &unk_278491690;
  v12 = *(a1 + 64);
  v9 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  [v4 performTransactionWithContext:v2 error:&v13 block:v8 inaccessibilityHandler:0];
  objc_storeStrong((v5 + 40), v13);
}

BOOL __112__ACHAwardsServer_remote_fetchEarnedInstancesForAnniversaryDateComponentsString_templateUniqueNames_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) profile];
  v8 = [ACHEarnedInstanceEntity earnedInstancesForAnniversaryDateComponentsString:v5 templateUniqueNames:v6 profile:v7 error:a3];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return *a3 == 0;
}

- (void)remote_fetchEarnedInstancesForEarnedDateComponentsString:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACHAwardsServer *)self queue];
  dispatch_assert_queue_not_V2(v8);

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__6;
  v28 = __Block_byref_object_dispose__6;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__6;
  v22 = __Block_byref_object_dispose__6;
  v23 = 0;
  v9 = [(ACHAwardsServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__ACHAwardsServer_remote_fetchEarnedInstancesForEarnedDateComponentsString_completion___block_invoke;
  block[3] = &unk_2784916B8;
  v10 = v6;
  v13 = v10;
  v11 = v7;
  v14 = self;
  v15 = v11;
  v16 = &v18;
  v17 = &v24;
  dispatch_sync(v9, block);

  (*(v11 + 2))(v11, v25[5], v19[5]);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
}

void __87__ACHAwardsServer_remote_fetchEarnedInstancesForEarnedDateComponentsString_completion___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = ACHYearMonthDayDateComponentsFromString();
  if (v3)
  {
    v4 = [*(a1 + 40) _transactionContextForReadingProtectedDataWithIdentifier:@"Fetch Most Recent Instnace"];
    v5 = [*(a1 + 40) profile];
    v6 = [v5 database];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __87__ACHAwardsServer_remote_fetchEarnedInstancesForEarnedDateComponentsString_completion___block_invoke_2;
    v15[3] = &unk_278491618;
    v18 = *(a1 + 64);
    obj = v8;
    v9 = v3;
    v10 = *(a1 + 40);
    v16 = v9;
    v17 = v10;
    [v6 performTransactionWithContext:v4 error:&obj block:v15 inaccessibilityHandler:0];
    objc_storeStrong((v7 + 40), obj);

    v11 = v16;
  }

  else
  {
    v12 = *(a1 + 48);
    v13 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"Unable to parse date components";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v11 = [v13 errorWithDomain:@"com.apple.ActivityAchievements" code:133 userInfo:v4];
    (*(v12 + 16))(v12, MEMORY[0x277CBEBF8], v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

BOOL __87__ACHAwardsServer_remote_fetchEarnedInstancesForEarnedDateComponentsString_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) profile];
  v7 = [ACHEarnedInstanceEntity earnedInstancesForDateComponents:v5 profile:v6 error:a3];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return *a3 == 0;
}

- (void)remote_countOfEarnedInstancesForTemplateUniqueName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACHAwardsServer *)self queue];
  dispatch_assert_queue_not_V2(v8);

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  v9 = [(ACHAwardsServer *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__ACHAwardsServer_remote_countOfEarnedInstancesForTemplateUniqueName_completion___block_invoke;
  v11[3] = &unk_278491498;
  v11[4] = self;
  v13 = &v15;
  v14 = &v21;
  v10 = v6;
  v12 = v10;
  dispatch_sync(v9, v11);

  v7[2](v7, v22[3], v16[5]);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
}

void __81__ACHAwardsServer_remote_countOfEarnedInstancesForTemplateUniqueName_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _transactionContextForReadingProtectedDataWithIdentifier:@"Fetch Most Recent Instnace"];
  v3 = [*(a1 + 32) profile];
  v4 = [v3 database];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__ACHAwardsServer_remote_countOfEarnedInstancesForTemplateUniqueName_completion___block_invoke_2;
  v9[3] = &unk_278491618;
  v12 = *(a1 + 56);
  obj = v6;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v10 = v7;
  v11 = v8;
  [v4 performTransactionWithContext:v2 error:&obj block:v9 inaccessibilityHandler:0];
  objc_storeStrong((v5 + 40), obj);
}

BOOL __81__ACHAwardsServer_remote_countOfEarnedInstancesForTemplateUniqueName_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) profile];
  *(*(*(a1 + 48) + 8) + 24) = [ACHEarnedInstanceEntity countOfEarnedInstancesForTemplateUniqueName:v5 profile:v6 error:a3];

  return *a3 == 0;
}

- (void)remote_countOfEarnedInstancesForUniqueNames:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACHAwardsServer *)self queue];
  dispatch_assert_queue_not_V2(v8);

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__6;
  v25 = __Block_byref_object_dispose__6;
  v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  v9 = [(ACHAwardsServer *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__ACHAwardsServer_remote_countOfEarnedInstancesForUniqueNames_completion___block_invoke;
  v11[3] = &unk_278491668;
  v11[4] = self;
  v13 = &v15;
  v10 = v6;
  v12 = v10;
  v14 = &v21;
  dispatch_sync(v9, v11);

  v7[2](v7, v22[5], v16[5]);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
}

void __74__ACHAwardsServer_remote_countOfEarnedInstancesForUniqueNames_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _transactionContextForReadingProtectedDataWithIdentifier:@"Fetch Most Recent Instnace"];
  v3 = [*(a1 + 32) profile];
  v4 = [v3 database];
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__ACHAwardsServer_remote_countOfEarnedInstancesForUniqueNames_completion___block_invoke_2;
  v8[3] = &unk_278491640;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  v11 = *(a1 + 56);
  [v4 performTransactionWithContext:v2 error:&obj block:v8 inaccessibilityHandler:0];
  objc_storeStrong((v5 + 40), obj);
}

BOOL __74__ACHAwardsServer_remote_countOfEarnedInstancesForUniqueNames_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = [*(a1 + 40) profile];
        v11 = [ACHEarnedInstanceEntity countOfEarnedInstancesForTemplateUniqueName:v9 profile:v10 error:a3];

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
        [*(*(*(a1 + 48) + 8) + 40) setObject:v12 forKeyedSubscript:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  result = *a3 == 0;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_transactionContextForWritingProtectedDataWithIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_221DDC000, a2, OS_LOG_TYPE_ERROR, "Unable to acquire database assertion: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_transactionContextForReadingProtectedDataWithIdentifier:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_221DDC000, log, OS_LOG_TYPE_ERROR, "Unable to acquire database assertion with identifier %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __68__ACHAwardsServer_remote_addTemplates_removingTemplates_completion___block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_221DDC000, a2, OS_LOG_TYPE_ERROR, "Error removing old template versions: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end