@interface SABundleManagerApp
- (SABundleManagerApp)initWithBundleId:(id)id deviceType:(int64_t)type;
- (id)getLocalizedName;
- (void)getLocalizedName;
- (void)getLocalizedNameForPairedDeviceWithCompletion:(id)completion;
@end

@implementation SABundleManagerApp

- (SABundleManagerApp)initWithBundleId:(id)id deviceType:(int64_t)type
{
  idCopy = id;
  v10.receiver = self;
  v10.super_class = SABundleManagerApp;
  v7 = [(SABundleManagerApp *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SABundleManagerApp *)v7 setBundleId:idCopy];
    [(SABundleManagerApp *)v8 setDeviceType:type];
  }

  return v8;
}

- (id)getLocalizedName
{
  bundleId = [(SABundleManagerApp *)self bundleId];

  if (bundleId)
  {
    v4 = MEMORY[0x277CCA8D8];
    bundleId2 = [(SABundleManagerApp *)self bundleId];
    v6 = [v4 bundleWithIdentifier:bundleId2];

    if (!v6)
    {
      v7 = sa_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(SABundleManagerApp *)v7 getLocalizedName];
      }
    }

    bundleId = [v6 objectForInfoDictionaryKey:@"CFBundleName"];
  }

  return bundleId;
}

- (void)getLocalizedNameForPairedDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  name = [(SABundleManagerApp *)self name];

  if (!name)
  {
    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__SABundleManagerApp_getLocalizedNameForPairedDeviceWithCompletion___block_invoke;
    v16[3] = &unk_278B67D68;
    objc_copyWeak(&v18, &location);
    v17 = completionCopy;
    v7 = MEMORY[0x23EE91E30](v16);
    bundleId = [(SABundleManagerApp *)self bundleId];

    if (bundleId)
    {
      deviceType = [(SABundleManagerApp *)self deviceType];
      if (!deviceType)
      {
        bundleId2 = [(SABundleManagerApp *)self bundleId];
        mEMORY[0x277CEAF80] = [MEMORY[0x277CEAF80] sharedDeviceConnection];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __68__SABundleManagerApp_getLocalizedNameForPairedDeviceWithCompletion___block_invoke_2;
        v13[3] = &unk_278B67D90;
        bundleId3 = bundleId2;
        v14 = bundleId3;
        v15 = v7;
        [mEMORY[0x277CEAF80] fetchWatchAppBundleIDForCompanionAppBundleID:bundleId3 completion:v13];

        goto LABEL_9;
      }

      if (deviceType == 1)
      {
        bundleId3 = [(SABundleManagerApp *)self bundleId];
        [SABundleManager getRemoteApplicationNameWithBundleId:bundleId3 withCompletion:v7];
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

  name2 = [(SABundleManagerApp *)self name];
  (*(completionCopy + 2))(completionCopy, name2);

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