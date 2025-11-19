@interface _DDUIAccountManager
- (_DDUIAccountManager)init;
- (void)_findMemberForiCloudAccount:(id)a3 completionHandler:(id)a4;
- (void)_updateMemberDataForiCloudAccount:(id)a3 completion:(id)a4;
- (void)altDsidForiCloudAccount:(id)a3 completion:(id)a4;
- (void)nameComponentsForiCloudAccount:(id)a3 completion:(id)a4;
@end

@implementation _DDUIAccountManager

- (_DDUIAccountManager)init
{
  v8.receiver = self;
  v8.super_class = _DDUIAccountManager;
  v2 = [(_DDUIAccountManager *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    iCloudToAltDSIDDictionary = v2->_iCloudToAltDSIDDictionary;
    v2->_iCloudToAltDSIDDictionary = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    iCloudToNameComponentsDictionary = v2->_iCloudToNameComponentsDictionary;
    v2->_iCloudToNameComponentsDictionary = v5;

    v2->_enabled = 1;
  }

  return v2;
}

- (void)altDsidForiCloudAccount:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277D04790];
  v9 = os_log_create(*MEMORY[0x277D04790], "core");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_238060000, v9, OS_LOG_TYPE_DEFAULT, "Fetching altDSID for account %@", buf, 0xCu);
  }

  if ([v6 length])
  {
    v10 = [(_DDUIAccountManager *)self iCloudToAltDSIDDictionary];
    v11 = [v10 objectForKeyedSubscript:v6];

    if (v11)
    {
      v12 = os_log_create(v8, "core");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&dword_238060000, v12, OS_LOG_TYPE_DEFAULT, "Found cached altDSID %@", buf, 0xCu);
      }

      v7[2](v7, v11, 1);
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __58___DDUIAccountManager_altDsidForiCloudAccount_completion___block_invoke;
      v14[3] = &unk_278A48290;
      v14[4] = self;
      v15 = v6;
      v16 = v7;
      [(_DDUIAccountManager *)self _updateMemberDataForiCloudAccount:v15 completion:v14];
    }
  }

  else
  {
    v7[2](v7, 0, 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)nameComponentsForiCloudAccount:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277D04790];
  v9 = os_log_create(*MEMORY[0x277D04790], "core");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_238060000, v9, OS_LOG_TYPE_DEFAULT, "Fetching name components for account %@", buf, 0xCu);
  }

  if (v6)
  {
    v10 = [(_DDUIAccountManager *)self iCloudToNameComponentsDictionary];
    v11 = [v10 objectForKeyedSubscript:v6];

    if (v11)
    {
      v12 = os_log_create(v8, "core");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&dword_238060000, v12, OS_LOG_TYPE_DEFAULT, "Found cached components %@", buf, 0xCu);
      }

      v7[2](v7, v11, 1);
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __65___DDUIAccountManager_nameComponentsForiCloudAccount_completion___block_invoke;
      v14[3] = &unk_278A48290;
      v14[4] = self;
      v15 = v6;
      v16 = v7;
      [(_DDUIAccountManager *)self _updateMemberDataForiCloudAccount:v15 completion:v14];
    }
  }

  else
  {
    v7[2](v7, 0, 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateMemberDataForiCloudAccount:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277D04790];
  v9 = os_log_create(*MEMORY[0x277D04790], "core");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_238060000, v9, OS_LOG_TYPE_DEFAULT, "Fetching account details for %@", buf, 0xCu);
  }

  if ([(_DDUIAccountManager *)self enabled])
  {
    objc_initWeak(buf, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68___DDUIAccountManager__updateMemberDataForiCloudAccount_completion___block_invoke;
    v12[3] = &unk_278A482B8;
    objc_copyWeak(&v15, buf);
    v13 = v6;
    v14 = v7;
    [(_DDUIAccountManager *)self _findMemberForiCloudAccount:v13 completionHandler:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = os_log_create(v8, "core");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238060000, v10, OS_LOG_TYPE_DEFAULT, "_NWUIAccountManager is disabled, early returning...", buf, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_findMemberForiCloudAccount:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277D08280]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69___DDUIAccountManager__findMemberForiCloudAccount_completionHandler___block_invoke;
  v11[3] = &unk_278A482E0;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [v8 startRequestWithCompletionHandler:v11];
}

@end