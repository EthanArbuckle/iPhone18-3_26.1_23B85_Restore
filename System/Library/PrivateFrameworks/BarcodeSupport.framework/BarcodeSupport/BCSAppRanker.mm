@interface BCSAppRanker
+ (id)bundleIdentifierOfLastUsedAppForURL:(id)l;
+ (id)orderApps:(id)apps forLastUsedApp:(id)app;
+ (void)setLastUsedApp:(id)app forURL:(id)l;
@end

@implementation BCSAppRanker

+ (id)orderApps:(id)apps forLastUsedApp:(id)app
{
  appsCopy = apps;
  appCopy = app;
  if ([appsCopy count] <= 1 || !appCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSAppRanker: Found last used app for scanned URL", buf, 2u);
  }

  firstObject = [appsCopy firstObject];
  bundleIdentifier = [firstObject bundleIdentifier];
  v9 = [appCopy isEqualToString:bundleIdentifier];

  if (!v9)
  {
    *buf = 0;
    v20 = buf;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy_;
    v23 = __Block_byref_object_dispose_;
    v24 = 0;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __41__BCSAppRanker_orderApps_forLastUsedApp___block_invoke;
    v16 = &unk_278CFEC20;
    v17 = appCopy;
    v18 = buf;
    v12 = [appsCopy indexOfObjectPassingTest:&v13];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = appsCopy;
    }

    else
    {
      v10 = [appsCopy mutableCopy];
      [v10 removeObjectAtIndex:v12];
      [v10 insertObject:*(v20 + 5) atIndex:0];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
LABEL_6:
    v10 = appsCopy;
  }

  return v10;
}

uint64_t __41__BCSAppRanker_orderApps_forLastUsedApp___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = [v7 bundleIdentifier];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }

  return v10;
}

+ (void)setLastUsedApp:(id)app forURL:(id)l
{
  appCopy = app;
  lCopy = l;
  host = [lCopy host];
  if ([lCopy _bcs_isUPIURL])
  {
    scheme = [lCopy scheme];

    v8 = @"schemesToLastUsedApps";
    host = scheme;
  }

  else
  {
    v8 = @"hostsToLastUsedApps";
  }

  if ([host length])
  {
    bcs_barcodeSupportDefaults = [MEMORY[0x277CBEBD0] bcs_barcodeSupportDefaults];
    v10 = [bcs_barcodeSupportDefaults valueForKey:v8];
    v11 = [v10 objectForKeyedSubscript:host];
    if (v11 != appCopy && ([v11 isEqualToString:appCopy] & 1) == 0)
    {
      if (v10)
      {
        dictionary = [v10 mutableCopy];
      }

      else
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
      }

      v13 = dictionary;
      if (appCopy)
      {
        [dictionary setObject:appCopy forKeyedSubscript:host];
      }

      else
      {
        [dictionary removeObjectForKey:host];
      }

      [bcs_barcodeSupportDefaults setObject:v13 forKey:v8];
      [bcs_barcodeSupportDefaults synchronize];
    }
  }
}

+ (id)bundleIdentifierOfLastUsedAppForURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  if ([lCopy _bcs_isUPIURL])
  {
    scheme = [lCopy scheme];

    v6 = @"schemesToLastUsedApps";
    host = scheme;
  }

  else
  {
    v6 = @"hostsToLastUsedApps";
  }

  bcs_barcodeSupportDefaults = [MEMORY[0x277CBEBD0] bcs_barcodeSupportDefaults];
  v8 = [bcs_barcodeSupportDefaults valueForKey:v6];

  if (v8 && [host length])
  {
    v9 = [v8 objectForKeyedSubscript:host];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end