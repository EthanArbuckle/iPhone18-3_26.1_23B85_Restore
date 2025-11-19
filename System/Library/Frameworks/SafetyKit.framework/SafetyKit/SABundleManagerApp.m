@interface SABundleManagerApp
- (SABundleManagerApp)initWithBundleId:(id)a3 deviceType:(int64_t)a4;
- (id)getLocalizedName;
- (void)getLocalizedName;
- (void)getLocalizedNameForPairedDeviceWithCompletion:(id)a3;
@end

@implementation SABundleManagerApp

- (SABundleManagerApp)initWithBundleId:(id)a3 deviceType:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SABundleManagerApp;
  v7 = [(SABundleManagerApp *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SABundleManagerApp *)v7 setBundleId:v6];
    [(SABundleManagerApp *)v8 setDeviceType:a4];
  }

  return v8;
}

- (id)getLocalizedName
{
  v3 = [(SABundleManagerApp *)self bundleId];

  if (v3)
  {
    v4 = MEMORY[0x277CCA8D8];
    v5 = [(SABundleManagerApp *)self bundleId];
    v6 = [v4 bundleWithIdentifier:v5];

    if (!v6)
    {
      v7 = sa_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(SABundleManagerApp *)v7 getLocalizedName];
      }
    }

    v3 = [v6 objectForInfoDictionaryKey:@"CFBundleName"];
  }

  return v3;
}

- (void)getLocalizedNameForPairedDeviceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SABundleManagerApp *)self name];

  if (!v5)
  {
    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__SABundleManagerApp_getLocalizedNameForPairedDeviceWithCompletion___block_invoke;
    v16[3] = &unk_278B67D68;
    objc_copyWeak(&v18, &location);
    v17 = v4;
    v7 = MEMORY[0x23EE91E30](v16);
    v8 = [(SABundleManagerApp *)self bundleId];

    if (v8)
    {
      v9 = [(SABundleManagerApp *)self deviceType];
      if (!v9)
      {
        v11 = [(SABundleManagerApp *)self bundleId];
        v12 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __68__SABundleManagerApp_getLocalizedNameForPairedDeviceWithCompletion___block_invoke_2;
        v13[3] = &unk_278B67D90;
        v10 = v11;
        v14 = v10;
        v15 = v7;
        [v12 fetchWatchAppBundleIDForCompanionAppBundleID:v10 completion:v13];

        goto LABEL_9;
      }

      if (v9 == 1)
      {
        v10 = [(SABundleManagerApp *)self bundleId];
        [SABundleManager getRemoteApplicationNameWithBundleId:v10 withCompletion:v7];
LABEL_9:
      }
    }

    else
    {
      v7[2](v7, 0);
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    goto LABEL_11;
  }

  v6 = [(SABundleManagerApp *)self name];
  (*(v4 + 2))(v4, v6);

LABEL_11:
}

void __68__SABundleManagerApp_getLocalizedNameForPairedDeviceWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setName:v4];

  (*(*(a1 + 32) + 16))();
}

void __68__SABundleManagerApp_getLocalizedNameForPairedDeviceWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sa_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __68__SABundleManagerApp_getLocalizedNameForPairedDeviceWithCompletion___block_invoke_2_cold_1(a1);
    }
  }

  if (v5)
  {
    [SABundleManager getRemoteApplicationNameWithBundleId:v5 withCompletion:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)getLocalizedName
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = 0;
  _os_log_error_impl(&dword_23AA4D000, log, OS_LOG_TYPE_ERROR, "Unable to get Bundle for app with previous authorization: %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __68__SABundleManagerApp_getLocalizedNameForPairedDeviceWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

@end