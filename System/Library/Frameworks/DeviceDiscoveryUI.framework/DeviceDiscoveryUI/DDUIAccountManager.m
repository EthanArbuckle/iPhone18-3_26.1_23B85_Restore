@interface DDUIAccountManager
@end

@implementation DDUIAccountManager

void __58___DDUIAccountManager_altDsidForiCloudAccount_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) iCloudToAltDSIDDictionary];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  (*(*(a1 + 48) + 16))();
}

void __65___DDUIAccountManager_nameComponentsForiCloudAccount_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) iCloudToNameComponentsDictionary];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  (*(*(a1 + 48) + 16))();
}

void __68___DDUIAccountManager__updateMemberDataForiCloudAccount_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [v3 altDSID];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = [WeakRetained iCloudToAltDSIDDictionary];
    [v6 setObject:v4 forKeyedSubscript:*(a1 + 32)];

    v11 = objc_alloc_init(MEMORY[0x277CCAC00]);
    v7 = [v3 firstName];
    [v11 setGivenName:v7];

    v8 = [v3 lastName];

    [v11 setFamilyName:v8];
    v9 = objc_loadWeakRetained((a1 + 48));
    v10 = [v9 iCloudToNameComponentsDictionary];
    [v10 setObject:v11 forKeyedSubscript:*(a1 + 32)];

    (*(*(a1 + 40) + 16))();
  }
}

void __69___DDUIAccountManager__findMemberForiCloudAccount_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create(*MEMORY[0x277D04790], "core");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __69___DDUIAccountManager__findMemberForiCloudAccount_completionHandler___block_invoke_cold_1(v6, v7);
    }

    [*(a1 + 32) setEnabled:0];
    (*(*(a1 + 48) + 16))();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v5 members];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) appleID];
        v14 = [v13 isEqualToString:*(a1 + 40)];

        if (v14)
        {
          (*(*(a1 + 48) + 16))();

          goto LABEL_15;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  (*(*(a1 + 48) + 16))();
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
}

void __69___DDUIAccountManager__findMemberForiCloudAccount_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_238060000, a2, OS_LOG_TYPE_ERROR, "There was an error fetching from the family circle %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end