@interface AAContactsProvider
- (AAContactsProvider)init;
- (id)_localContactsForCustodianshipOwners:(id)a3;
- (id)filterTrustedContactsWithValidStateForDisplay:(id)a3;
- (void)fetchCustodiansAndBeneficiaries:(id)a3;
- (void)fetchCustodianshipsAndBenefactors:(id)a3;
- (void)fetchMyBenefactors:(id)a3;
- (void)fetchMyBeneficiaries:(id)a3;
- (void)fetchMyCachedCustodians:(id)a3;
- (void)fetchMyCustodians:(id)a3;
- (void)fetchMyCustodianshipOwners:(id)a3;
- (void)fetchMyHealthyCustodians:(id)a3;
- (void)fetchMyWalrusEligibleCustodians:(id)a3;
- (void)fetchSuggestedBeneficiaries:(id)a3;
- (void)fetchSuggestedCustodians:(id)a3;
- (void)fetchSuggestedCustodiansForUpsellWithTelemetryFlowID:(id)a3 completion:(id)a4;
- (void)fetchWalrusEligibleCustodiansForExpansionCohortsWithCompletion:(id)a3;
@end

@implementation AAContactsProvider

- (AAContactsProvider)init
{
  v6.receiver = self;
  v6.super_class = AAContactsProvider;
  v2 = [(AAContactsProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(AAContactsManager);
    contactsManager = v2->_contactsManager;
    v2->_contactsManager = v3;
  }

  return v2;
}

- (void)fetchCustodiansAndBeneficiaries:(id)a3
{
  v4 = a3;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__3;
  v26[4] = __Block_byref_object_dispose__3;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__3;
  v24[4] = __Block_byref_object_dispose__3;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__3;
  v22[4] = __Block_byref_object_dispose__3;
  v23 = [MEMORY[0x1E695DF70] array];
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __54__AAContactsProvider_fetchCustodiansAndBeneficiaries___block_invoke;
  v19[3] = &unk_1E7C9B940;
  v21 = v26;
  v6 = v5;
  v20 = v6;
  [(AAContactsProvider *)self fetchMyCustodians:v19];
  v7 = objc_alloc_init(AAInheritanceContactsViewModel);
  dispatch_group_enter(v6);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__AAContactsProvider_fetchCustodiansAndBeneficiaries___block_invoke_2;
  v16[3] = &unk_1E7C9B940;
  v18 = v24;
  v8 = v6;
  v17 = v8;
  [(AAInheritanceContactsViewModel *)v7 fetchBeneficiaries:v16];
  v9 = dispatch_get_global_queue(2, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__AAContactsProvider_fetchCustodiansAndBeneficiaries___block_invoke_3;
  v11[3] = &unk_1E7C9B9B8;
  v14 = v24;
  v15 = v22;
  v12 = v4;
  v13 = v26;
  v10 = v4;
  dispatch_group_notify(v8, v9, v11);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);

  _Block_object_dispose(v26, 8);
}

void __54__AAContactsProvider_fetchCustodiansAndBeneficiaries___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __54__AAContactsProvider_fetchCustodiansAndBeneficiaries___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __54__AAContactsProvider_fetchCustodiansAndBeneficiaries___block_invoke_3(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__AAContactsProvider_fetchCustodiansAndBeneficiaries___block_invoke_4;
  v7[3] = &unk_1E7C9B968;
  v8 = *(a1 + 48);
  [v2 enumerateObjectsUsingBlock:v7];
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__AAContactsProvider_fetchCustodiansAndBeneficiaries___block_invoke_5;
  v6[3] = &unk_1E7C9B990;
  v6[4] = *(a1 + 56);
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = *(a1 + 32);
  v5 = [*(*(*(a1 + 56) + 8) + 40) copy];
  (*(v4 + 16))(v4, v5);
}

void __54__AAContactsProvider_fetchCustodiansAndBeneficiaries___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v5 = a2;
  if ([v3 containsObject:v5])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  [v5 setContactType:v4];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
}

void __54__AAContactsProvider_fetchCustodiansAndBeneficiaries___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(*(*(a1 + 32) + 8) + 40) containsObject:?] & 1) == 0)
  {
    [v3 setContactType:4];
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

- (void)fetchCustodianshipsAndBenefactors:(id)a3
{
  v4 = a3;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__3;
  v26[4] = __Block_byref_object_dispose__3;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__3;
  v24[4] = __Block_byref_object_dispose__3;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__3;
  v22[4] = __Block_byref_object_dispose__3;
  v23 = [MEMORY[0x1E695DF70] array];
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __56__AAContactsProvider_fetchCustodianshipsAndBenefactors___block_invoke;
  v19[3] = &unk_1E7C9B940;
  v21 = v26;
  v6 = v5;
  v20 = v6;
  [(AAContactsProvider *)self fetchMyCustodianshipOwners:v19];
  v7 = objc_alloc_init(AAInheritanceContactsViewModel);
  dispatch_group_enter(v6);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__AAContactsProvider_fetchCustodianshipsAndBenefactors___block_invoke_2;
  v16[3] = &unk_1E7C9B940;
  v18 = v24;
  v8 = v6;
  v17 = v8;
  [(AAInheritanceContactsViewModel *)v7 fetchBenefactors:v16];
  v9 = dispatch_get_global_queue(2, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__AAContactsProvider_fetchCustodianshipsAndBenefactors___block_invoke_3;
  v11[3] = &unk_1E7C9B9B8;
  v14 = v24;
  v15 = v22;
  v12 = v4;
  v13 = v26;
  v10 = v4;
  dispatch_group_notify(v8, v9, v11);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);

  _Block_object_dispose(v26, 8);
}

void __56__AAContactsProvider_fetchCustodianshipsAndBenefactors___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __56__AAContactsProvider_fetchCustodianshipsAndBenefactors___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __56__AAContactsProvider_fetchCustodianshipsAndBenefactors___block_invoke_3(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__AAContactsProvider_fetchCustodianshipsAndBenefactors___block_invoke_4;
  v7[3] = &unk_1E7C9B968;
  v8 = *(a1 + 48);
  [v2 enumerateObjectsUsingBlock:v7];
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__AAContactsProvider_fetchCustodianshipsAndBenefactors___block_invoke_5;
  v6[3] = &unk_1E7C9B990;
  v6[4] = *(a1 + 56);
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = *(a1 + 32);
  v5 = [*(*(*(a1 + 56) + 8) + 40) copy];
  (*(v4 + 16))(v4, v5);
}

void __56__AAContactsProvider_fetchCustodianshipsAndBenefactors___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v5 = a2;
  if ([v3 containsObject:v5])
  {
    v4 = 10;
  }

  else
  {
    v4 = 2;
  }

  [v5 setContactType:v4];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
}

void __56__AAContactsProvider_fetchCustodianshipsAndBenefactors___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(*(*(a1 + 32) + 8) + 40) containsObject:?] & 1) == 0)
  {
    [v3 setContactType:8];
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

- (void)fetchSuggestedCustodians:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AACustodianController);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__AAContactsProvider_fetchSuggestedCustodians___block_invoke;
  v6[3] = &unk_1E7C9B290;
  v7 = v3;
  v5 = v3;
  [(AACustodianController *)v4 fetchSuggestedCustodiansWithCompletion:v6];
}

void __47__AAContactsProvider_fetchSuggestedCustodians___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 count];
  (*(*(a1 + 32) + 16))();
}

- (void)fetchSuggestedCustodiansForUpsellWithTelemetryFlowID:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(AACustodianController);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__AAContactsProvider_fetchSuggestedCustodiansForUpsellWithTelemetryFlowID_completion___block_invoke;
  v10[3] = &unk_1E7C9B9E0;
  v11 = v7;
  v12 = v5;
  v8 = v7;
  v9 = v5;
  [(AACustodianController *)v8 fetchSuggestedCustodiansForUpsellWithTelemetryFlowID:v6 completion:v10];
}

void __86__AAContactsProvider_fetchSuggestedCustodiansForUpsellWithTelemetryFlowID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __86__AAContactsProvider_fetchSuggestedCustodiansForUpsellWithTelemetryFlowID_completion___block_invoke_cold_1(v6, v7);
    }
  }

  [v5 count];
  (*(*(a1 + 40) + 16))();
}

- (void)fetchMyCachedCustodians:(id)a3
{
  v4 = a3;
  v5 = [[AATrustedContactFetchRequest alloc] initWithContactType:0 cachePolicy:0];
  [(AATrustedContactFetchRequest *)v5 setShouldLookUpContactInAddressBook:1];
  [(AATrustedContactFetchRequest *)v5 includeContactsWithStatus:1];
  [(AATrustedContactFetchRequest *)v5 includeContactsWithStatus:2];
  v6 = objc_alloc_init(AACustodianController);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__AAContactsProvider_fetchMyCachedCustodians___block_invoke;
  v8[3] = &unk_1E7C9BA08;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(AACustodianController *)v6 fetchTrustedContactsWithRequest:v5 completion:v8];
}

void __46__AAContactsProvider_fetchMyCachedCustodians___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) filterTrustedContactsWithValidStateForDisplay:a2];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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
        v11 = [v10 localContactRepresentation];

        if (v11)
        {
          v12 = [v10 localContactRepresentation];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 40) + 16))();
  v13 = *MEMORY[0x1E69E9840];
}

- (void)fetchMyCustodians:(id)a3
{
  v4 = a3;
  v5 = [[AATrustedContactFetchRequest alloc] initWithContactType:0 cachePolicy:1];
  [(AATrustedContactFetchRequest *)v5 setShouldLookUpContactInAddressBook:1];
  [(AATrustedContactFetchRequest *)v5 includeContactsWithStatus:1];
  [(AATrustedContactFetchRequest *)v5 includeContactsWithStatus:2];
  v6 = objc_alloc_init(AACustodianController);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__AAContactsProvider_fetchMyCustodians___block_invoke;
  v8[3] = &unk_1E7C9BA08;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(AACustodianController *)v6 fetchTrustedContactsWithRequest:v5 completion:v8];
}

void __40__AAContactsProvider_fetchMyCustodians___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) filterTrustedContactsWithValidStateForDisplay:a2];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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
        v11 = [v10 localContactRepresentation];

        if (v11)
        {
          v12 = [v10 localContactRepresentation];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 40) + 16))();
  v13 = *MEMORY[0x1E69E9840];
}

- (id)filterTrustedContactsWithValidStateForDisplay:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 status] == 1 || objc_msgSend(v10, "status") == 2 || objc_msgSend(v10, "status") == 3)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)fetchMyHealthyCustodians:(id)a3
{
  v3 = a3;
  v4 = [[AATrustedContactFetchRequest alloc] initWithContactType:0 cachePolicy:1];
  [(AATrustedContactFetchRequest *)v4 setShouldLookUpContactInAddressBook:1];
  [(AATrustedContactFetchRequest *)v4 includeContactsWithStatus:2];
  v5 = objc_alloc_init(AACustodianController);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__AAContactsProvider_fetchMyHealthyCustodians___block_invoke;
  v7[3] = &unk_1E7C9B290;
  v8 = v3;
  v6 = v3;
  [(AACustodianController *)v5 fetchTrustedContactsWithRequest:v4 completion:v7];
}

void __47__AAContactsProvider_fetchMyHealthyCustodians___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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
        v11 = [v10 localContactRepresentation];

        if (v11)
        {
          v12 = [v10 localContactRepresentation];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 32) + 16))();
  v13 = *MEMORY[0x1E69E9840];
}

- (void)fetchMyWalrusEligibleCustodians:(id)a3
{
  v3 = a3;
  v4 = [[AATrustedContactFetchRequest alloc] initWithContactType:0 cachePolicy:1];
  [(AATrustedContactFetchRequest *)v4 setShouldLookUpContactInAddressBook:1];
  [(AATrustedContactFetchRequest *)v4 includeContactsWithStatus:2];
  v5 = objc_alloc_init(AACustodianController);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__AAContactsProvider_fetchMyWalrusEligibleCustodians___block_invoke;
  v7[3] = &unk_1E7C9B290;
  v8 = v3;
  v6 = v3;
  [(AACustodianController *)v5 fetchTrustedContactsWithRequest:v4 completion:v7];
}

void __54__AAContactsProvider_fetchMyWalrusEligibleCustodians___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if ([v12 status] == 2)
          {
            if ([v12 isAcceptedAndShared])
            {
              if ([v12 isIdMSConfirmed])
              {
                if ([v12 preflightStatus])
                {
                  v13 = [v12 localContactRepresentation];

                  if (v13)
                  {
                    v14 = [v12 localContactRepresentation];
                    [v6 addObject:v14];
                  }
                }
              }
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    (*(*(a1 + 32) + 16))();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)fetchWalrusEligibleCustodiansForExpansionCohortsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [[AATrustedContactFetchRequest alloc] initWithContactType:0 cachePolicy:1];
  [(AATrustedContactFetchRequest *)v4 setShouldLookUpContactInAddressBook:1];
  [(AATrustedContactFetchRequest *)v4 includeContactsWithStatus:1];
  [(AATrustedContactFetchRequest *)v4 includeContactsWithStatus:2];
  v5 = objc_alloc_init(AACustodianController);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__AAContactsProvider_fetchWalrusEligibleCustodiansForExpansionCohortsWithCompletion___block_invoke;
  v7[3] = &unk_1E7C9B290;
  v8 = v3;
  v6 = v3;
  [(AACustodianController *)v5 fetchTrustedContactsWithRequest:v4 completion:v7];
}

void __85__AAContactsProvider_fetchWalrusEligibleCustodiansForExpansionCohortsWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if ([v12 status] == 2 && objc_msgSend(v12, "isAcceptedAndShared") && objc_msgSend(v12, "isIdMSConfirmed") && objc_msgSend(v12, "preflightStatus") || objc_msgSend(v12, "status") == 1)
          {
            v13 = [v12 localContactRepresentation];

            if (v13)
            {
              v14 = [v12 localContactRepresentation];
              [v6 addObject:v14];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    (*(*(a1 + 32) + 16))();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)fetchMyCustodianshipOwners:(id)a3
{
  v3 = a3;
  v4 = [[AATrustedContactFetchRequest alloc] initWithContactType:1 cachePolicy:0];
  [(AATrustedContactFetchRequest *)v4 setShouldLookUpContactInAddressBook:1];
  [(AATrustedContactFetchRequest *)v4 includeContactsWithStatus:2];
  v5 = objc_alloc_init(AACustodianController);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__AAContactsProvider_fetchMyCustodianshipOwners___block_invoke;
  v7[3] = &unk_1E7C9B290;
  v8 = v3;
  v6 = v3;
  [(AACustodianController *)v5 fetchTrustedContactsWithRequest:v4 completion:v7];
}

void __49__AAContactsProvider_fetchMyCustodianshipOwners___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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
        v11 = [v10 localContactRepresentation];

        if (v11)
        {
          v12 = [v10 localContactRepresentation];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 32) + 16))();
  v13 = *MEMORY[0x1E69E9840];
}

- (void)fetchSuggestedBeneficiaries:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AAInheritanceContactsViewModel);
  [(AAInheritanceContactsViewModel *)v4 fetchSuggestedBeneficiaries:v3];
}

- (void)fetchMyBeneficiaries:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AAInheritanceContactsViewModel);
  [(AAInheritanceContactsViewModel *)v4 fetchBeneficiaries:v3];
}

- (void)fetchMyBenefactors:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AAInheritanceContactsViewModel);
  [(AAInheritanceContactsViewModel *)v4 fetchBenefactors:v3];
}

- (id)_localContactsForCustodianshipOwners:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        contactsManager = self->_contactsManager;
        v12 = [v10 ownerHandle];
        v13 = [(AAContactsManager *)contactsManager contactForHandle:v12];

        v14 = [AALocalContactInfo alloc];
        v15 = [v10 ownerHandle];
        v16 = [(AALocalContactInfo *)v14 initWithHandle:v15 contact:v13];

        v17 = [v10 custodianID];
        [(AALocalContactInfo *)v16 setCustodianID:v17];

        -[AALocalContactInfo setTrustedContactStatus:](v16, "setTrustedContactStatus:", [v10 status]);
        [(AALocalContactInfo *)v16 setContactType:2];
        [v5 addObject:v16];
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v18 = [v5 copy];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

void __86__AAContactsProvider_fetchSuggestedCustodiansForUpsellWithTelemetryFlowID_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "Error fetching suggested custodians for upsell: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end