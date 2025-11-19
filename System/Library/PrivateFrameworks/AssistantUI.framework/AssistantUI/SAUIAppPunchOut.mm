@interface SAUIAppPunchOut
@end

@implementation SAUIAppPunchOut

void __72__SAUIAppPunchOut_AssistantUIAdditions__afui_populateStoreServicesData___block_invoke(uint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEE408];
  v3 = [MEMORY[0x277CEE510] bagKeySet];
  v4 = [MEMORY[0x277CEE510] bagSubProfile];
  v5 = [MEMORY[0x277CEE510] bagSubProfileVersion];
  [v2 registerBagKeySet:v3 forProfile:v4 profileVersion:v5];

  v6 = MEMORY[0x277CEE3F8];
  v7 = [MEMORY[0x277CEE510] bagSubProfile];
  v8 = [MEMORY[0x277CEE510] bagSubProfileVersion];
  v9 = [v6 bagForProfile:v7 profileVersion:v8];

  v10 = objc_alloc(MEMORY[0x277CEE510]);
  v11 = [v10 initWithBag:v9 caller:*(a1 + 32) keyProfile:*MEMORY[0x277CEE1E8]];
  v18[0] = *(a1 + 32);
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v13 = [v11 performLookupWithBundleIdentifiers:v12 itemIdentifiers:0];

  objc_initWeak(&location, *(a1 + 40));
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__SAUIAppPunchOut_AssistantUIAdditions__afui_populateStoreServicesData___block_invoke_2;
  v14[3] = &unk_278CD6580;
  objc_copyWeak(&v16, &location);
  v15 = *(a1 + 48);
  [v13 addFinishBlock:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __72__SAUIAppPunchOut_AssistantUIAdditions__afui_populateStoreServicesData___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = [v5 allItems];
    v9 = [v8 firstObject];

    if (v6)
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        __72__SAUIAppPunchOut_AssistantUIAdditions__afui_populateStoreServicesData___block_invoke_2_cold_1();
      }
    }

    else
    {
      if (v9)
      {
        v12 = [WeakRetained appDisplayName];

        if (!v12)
        {
          v13 = [v9 displayName];
          [WeakRetained setAppDisplayName:v13];
        }

        v14 = [WeakRetained appStoreUri];

        if (!v14)
        {
          v15 = [v9 productPageURL];
          [WeakRetained setAppStoreUri:v15];
        }

        v16 = [WeakRetained dictionary];
        [v16 setObject:v9 forKey:@"AFUIStoreServicesData"];

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __72__SAUIAppPunchOut_AssistantUIAdditions__afui_populateStoreServicesData___block_invoke_68;
        block[3] = &unk_278CD5690;
        v18 = *(a1 + 32);
        dispatch_async(MEMORY[0x277D85CD0], block);

        goto LABEL_17;
      }

      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        __72__SAUIAppPunchOut_AssistantUIAdditions__afui_populateStoreServicesData___block_invoke_2_cold_2();
      }
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(v10 + 16))(v10, 0);
    }

LABEL_17:

    goto LABEL_18;
  }

  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __72__SAUIAppPunchOut_AssistantUIAdditions__afui_populateStoreServicesData___block_invoke_2_cold_3();
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, 0);
  }

LABEL_18:
}

uint64_t __72__SAUIAppPunchOut_AssistantUIAdditions__afui_populateStoreServicesData___block_invoke_68(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void __82__SAUIAppPunchOut_AssistantUIAdditions__afui_getInstallAppPunchoutWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v5 = [*(a1 + 32) _afui_installAppPunchout];
    (*(v2 + 16))(v2, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    v3(v4, 0);
  }
}

@end